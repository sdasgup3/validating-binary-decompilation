#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <iterator>
#include <vector>

using namespace llvm;
using llvm::Type;
using std::distance;

namespace {
struct func : public FunctionPass {
  static char ID;
  func() : FunctionPass(ID) {}
  bool runOnFunction(Function &F) override {
    bool hasFloat = false;
    bool hasVector = false;
    unsigned numInstructions = 0;

    bool funcFloat, paramFloat, instFloat, opFloat;
    bool funcVector, paramVector, instVector, opVector;
    FunctionType *ft = F.getFunctionType();

    // Get number of instructions
    for (auto &B : F)
      numInstructions += distance(B.begin(), B.end());

    // Check Function Return type
    Type *functionRet = F.getReturnType();
    funcFloat = functionRet->isPointerTy()
                    ? functionRet->getPointerElementType()->isFloatingPointTy()
                    : functionRet->isFloatingPointTy();
    funcVector = functionRet->isPointerTy()
                     ? functionRet->getPointerElementType()->isVectorTy()
                     : functionRet->isVectorTy();

    hasFloat = funcFloat;
    hasVector = funcVector;

    // Check Function Parameters
    for (size_t i = 0; i < F.getFunctionType()->getNumParams(); i++) {
      Type *param = ft->getParamType(i);
      paramFloat = param->isPointerTy()
                       ? param->getPointerElementType()->isFloatingPointTy()
                       : param->isFloatingPointTy();
      paramVector = param->isPointerTy()
                        ? param->getPointerElementType()->isVectorTy()
                        : param->isVectorTy();
      // consistent syntax with rest of checks
      // if hasFloat/hasVector true, keep true, else see if new parameter,
      // operand, or return value is a float/vector
      hasFloat = hasFloat ? true : paramFloat;
      hasVector = hasVector ? true : paramVector;
    }

    for (auto &Block : F) {
      for (llvm::BasicBlock::iterator it = Block.begin(); it != Block.end();
           it++) {
        // Check Instruction return statement
        instFloat =
            it->getType()->isPointerTy()
                ? it->getType()->getPointerElementType()->isFloatingPointTy()
                : it->getType()->isFloatingPointTy();
        instVector = it->getType()->isPointerTy()
                         ? it->getType()->getPointerElementType()->isVectorTy()
                         : it->getType()->isVectorTy();
        hasFloat = hasFloat ? true : instFloat;
        hasVector = hasVector ? true : instVector;

        // Loop through list of operands
        unsigned numops = it->getNumOperands();
        for (unsigned i = 0; i < numops; i++) {
          // Check Operand statements
          Type *operand = it->getOperand(i)->getType();
          opFloat = operand->isPointerTy()
                        ? operand->getPointerElementType()->isFloatingPointTy()
                        : operand->isFloatingPointTy();
          opVector = operand->isPointerTy()
                         ? operand->getPointerElementType()->isVectorTy()
                         : operand->isVectorTy();
          hasFloat = hasFloat ? true : opFloat;
          hasVector = hasVector ? true : opVector;
        }
      }
    }
    // Output to stdout function name, number of instructions, if the function
    // has a float operation, and if the function has a vector operation
    outs() << F.getName() << ", " << numInstructions << ", "
           << (hasFloat ? "True" : "False") << ", "
           << (hasVector ? "True" : "False") << "\n";
    return false;
  }
};
} // namespace

char func::ID = 0;
static RegisterPass<func> X("func-analyze",
                            "For each function: gets function name, "
                            "number of instructions, and determines if "
                            "valid",
                            false, false);
