#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DerivedTypes.h"
#include <vector>
#include <iterator>

using namespace llvm;
using std::distance;
using llvm::Type;

namespace {
    struct func : public FunctionPass {
        static char ID;
        func() : FunctionPass(ID) {}
        bool runOnFunction(Function &F) override {
	    bool isValidFunction = false;
	    unsigned numInstructions = 0;

	    bool isFuncInvalid, isParamInvalid, isRetInvalid, isOperandInvalid;
	    unsigned numops;
	    FunctionType *ft = F.getFunctionType();
		
	    // Get number of instructions
	    for(auto &B : F) numInstructions += distance(B.begin(), B.end());

	    // Check Function Return type
	    Type *functionRet = F.getReturnType();
	    isFuncInvalid = functionRet->isPointerTy() ? (functionRet->getPointerElementType()->isFloatingPointTy() || functionRet->getPointerElementType()->isVectorTy()) :
							      (functionRet->isFloatingPointTy() || functionRet->isVectorTy());
	    if(isFuncInvalid) {
		isValidFunction = false;
		goto end;
	    }
	    
	    // Check Function Parameters
	    for(int i = 0; i < F.getFunctionType()->getNumParams(); i++) {
		Type *param = ft->getParamType(i);
		isParamInvalid = param->isPointerTy() ? (param->getPointerElementType()->isVectorTy() || param->getPointerElementType()->isFloatingPointTy()) :
							(param->isVectorTy() || param->isFloatingPointTy());
		if(isParamInvalid) {
			isValidFunction = false;
			goto end;
		}
	    }

            for(auto &Block : F) {
                for(llvm::BasicBlock::iterator it = Block.begin(); it != Block.end(); it++) {
			// Check Instruction return statement
			isRetInvalid = it->getType()->isPointerTy() ? 
					   (it->getType()->getPointerElementType()->isFloatingPointTy() || it->getType()->getPointerElementType()->isVectorTy()) :
					   (it->getType()->isFloatingPointTy() || it->getType()->isVectorTy());
			if(isRetInvalid) {
				isValidFunction = false;
				goto end;
			}

			// Loop through list of operands
			unsigned numops = it->getNumOperands();
			for(unsigned i = 0; i < numops; i++) {
				// Check Operand statements
				Type *operand = it->getOperand(i)->getType();
				isOperandInvalid = operand->isPointerTy() ?
						        (operand->getPointerElementType()->isFloatingPointTy() || operand->getPointerElementType()->isVectorTy()) :
							(operand->isFloatingPointTy() || operand->isVectorTy());
				if(isOperandInvalid) {
					isValidFunction = false;
					goto end;
				}
			}
                }
            }
	    // Output to stdout function name, number of instructions, and if the function is valid (no floating point or vector operations)
	    isValidFunction = true;
	    end: outs() << F.getName() << ", " << numInstructions << ", " << (isValidFunction ? "True" : "False") << "\n";
            return false;
        }
    };
}

char func::ID = 0;
static RegisterPass<func> X("func", "For each function: gets function name, number of instructions, and determines if valid", false, false);
