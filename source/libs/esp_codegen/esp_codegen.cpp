//===-- esp_codegen.cpp - Deconstruct the global stack into local stack
// frame ---===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements a pass that deconstruct the global stack shared by all
// the prcedures into local stack frames per procedure
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "esp_codegen"

// Custom Imports
#include "esp_codegen.h"
#include "llvm-graph-matching.h"
// LLVM imports
#include "llvm/AsmParser/Parser.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/FileSystem.h" // For sys::fs::F_RW
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/PrettyStackTrace.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/SystemUtils.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar.h"
#include <llvm/Transforms/IPO.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>
// Standard C++ imports
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <memory>
#include <regex>
#include <string>
#include <vector>

using namespace llvm;

char esp_codegen::ID = 0;
static RegisterPass<esp_codegen>
X("esp_codegen", "Generate backend code for esp accelerators", false, true);

static cl::opt<std::string>
Target("targetspec",
		cl::desc("<hardware target input .llvm file>:function"),
		cl::value_desc("filename"));

static cl::opt<std::string> Out("outdir",
		cl::desc("<path to dump residual .llvm files>"),
		cl::value_desc("filename"));

void execute_shell_cmd(const string &cmd) {
	llvm::errs() <<  cmd << "\n";
	if (system(cmd.c_str())) {
		errs() << "Failed!!";
		assert(0);
	}
}

const string norm_pass =
"-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa "
"-aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim "
"-simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse "
"-gvn -basicaa -aa -memdep -dse -memcpyopt ";

static void processInput_bkp(const string &qFunc, const string &qFile,
		const string &qOptFile, const string &qExtractFile,
		const string &tFunc, const string &tFile,
		const string &tOptFile,
		const string &tExtractFile) {

	/*
	 ** Optimize query
	 */
	const string norm_pass =
		"-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa "
		"-aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim "
		"-simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse "
		"-gvn -basicaa -aa -memdep -dse -memcpyopt ";
	string cmd = "opt -S " + norm_pass + qFile + " -o " + qOptFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Optimize target
	 */
	cmd = "opt -S " + norm_pass + tFile + " -o " + tOptFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Extract function from optimized query file
	 */
	cmd =
		"llvm-extract -S -func=" + qFunc + " " + qOptFile + " -o " + qExtractFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Extract function from optimized target file
	 */
	cmd =
		"llvm-extract -S -func=" + tFunc + " " + tOptFile + " -o " + tExtractFile;
	execute_shell_cmd(cmd);
	cmd.clear();
}

static void processInput(const string &qFunc, const string &qFile,
		const string &qOptFile, const string &qExtractFile,
		const string &tFunc, const string &tFile,
		const string &tOptFile, const string &tExtractFile) {

	string cmd("");

	/*
	 ** Extract function from optimized query file
	 */
	cmd = "llvm-extract -S -func=" + qFunc + " " + qFile + " -o " + qExtractFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Extract function from optimized target file
	 */
	cmd = "llvm-extract -S -func=" + tFunc + " " + tFile + " -o " + tExtractFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Optimize query
	 */
	cmd = "opt -S " + norm_pass + qExtractFile + " -o " + qOptFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Optimize target
	 */
	cmd = "opt -S " + norm_pass + tExtractFile + " -o " + tOptFile;
	execute_shell_cmd(cmd);
	cmd.clear();
}

static int imatch(const string &qExtractFile, const string &qFunc,
		const string &qOutFile, const string &tExtractFile,
		const string &tFunc, const string &tOutFile) {

	SMDiagnostic Err;
	LLVMContext Context;

	/*
	 ** Reading llvm files and extracting functions to match
	 */
	std::unique_ptr<Module> TMod(parseIRFile(tExtractFile, Err, Context));
	if (!TMod) {
		Err.print("imatch", errs(), /*showColors=*/true);
		return 2;
	}

	std::unique_ptr<Module> SMod(parseIRFile(qExtractFile, Err, Context));
	if (!SMod) {
		Err.print("imatch", errs(), /*showColors=*/true);
		return 2;
	}

	llvm::Function *tFuncPtr = nullptr, *qFuncPtr = nullptr;
	for (auto &Func : *TMod) {
		if (Func.isIntrinsic() || Func.isDeclaration())
			continue;

		if (string::npos != Func.getName().str().find(tFunc) &&
				Func.getName().str().length() == tFunc.length()) {
			tFuncPtr = &Func;
			break;
		}
	}

	for (auto &Func : *SMod) {
		if (Func.isIntrinsic() || Func.isDeclaration())
			continue;

		if (string::npos != Func.getName().str().find(qFunc) &&
				Func.getName().str().length() == qFunc.length()) {
			qFuncPtr = &Func;
			break;
		}
	}

	if (!tFuncPtr || !qFuncPtr) {
		errs() << "Missing function name: " << tFunc << " or " << qFunc << "\n";
		return 1;
	}

	/*
	 ** Matching
	 */
	errs() << "Matching: " << qExtractFile << "::" << qFuncPtr->getName()
		<< " Vs " << tExtractFile << "::" << tFuncPtr->getName() << "\n";
	IterativePruningMatcher M(qFuncPtr, tFuncPtr, qOutFile, tOutFile, false,
			false);

	return M.getResult();
}

static bool iterativePruningMatcherDriver(Module &qModule, const string &qFunc,
		const string &tgtFile,
		const string &tFunc,
		const string &Out) {

	unsigned int counter = 0;
	string cmd("");
	string qFile = Out + "/test.query.ll";
	string qFileBC = Out + "/test.query.bc";
	string tFile = Out + "/test.target.ll";

	/*
	 ** Dump the application module 'Module' to
	 ** file qFileBC (output/test.query.bc)
	 */
	llvm::errs() << "Dumping application module to " << qFileBC << "\n";
	std::error_code EC;
	raw_fd_ostream fd(qFileBC, EC);
	if (EC) {
		llvm::errs() << "Could not open output file " << EC.message();
		assert(0);
		return false;
	}

	if (verifyModule(qModule, &errs())) {
		assert(0);
		return false;
	}

	WriteBitcodeToFile(qModule, fd, true);
	fd.close();

	/*
	 ** Disassemble output/test.query.bc to output/test.query.ll
	 */
	cmd = "llvm-dis " + qFileBC + " -o " + qFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	/*
	 ** Copy target file tgtFile to output/test.target.ll
	 */
	cmd = "cp " + tgtFile + " " + tFile;
	execute_shell_cmd(cmd);
	cmd.clear();

	while (counter <= 5) {
		string qOutFile = Out + "/test" + to_string(counter) + ".query.ll";
		string qOptFile = Out + "/test" + to_string(counter) + ".query.opt.ll";
		string qExtractFile =
			Out + "/test" + to_string(counter) + ".query.extract.ll";
		string tOutFile = Out + "/test" + to_string(counter) + ".target.ll";
		string tOptFile = Out + "/test" + to_string(counter) + ".target.opt.ll";
		string tExtractFile =
			Out + "/test" + to_string(counter) + ".target.extract.ll";

		processInput(qFunc, qFile, qOptFile, qExtractFile, tFunc, tFile, tOptFile,
				tExtractFile);

		// auto res =
		//     imatch(qExtractFile, qFunc, qOutFile, tExtractFile, tFunc, tOutFile);

		auto res = imatch(qOptFile, qFunc, qOutFile, tOptFile, tFunc, tOutFile);

		if (res == 1) {
			return true;
		}

		if (res == 2) {
			return false;
		}

		qFile = qOutFile;
		tFile = tOutFile;

		counter++;
	}

	return false;
}

static void codeGen(const map<Function *, vector<CallInst *>> &workList,
		Module &M, const string &TargetFunc) {
	if (workList.empty())
		return;
	for (auto p : workList) {
		Function *FQ = p.first;
		auto workListOfCallInsts = p.second;
		/*
		 ** Create the LLVM function call to accelerator hook
		 */
		std::vector<Type *> Args;
		for (Function::arg_iterator i = FQ->arg_begin(), e = FQ->arg_end(); i != e;
				++i) {
			Args.push_back((&*i)->getType());
		}
		FunctionType *hookFT = FunctionType::get(FQ->getReturnType(),Args,false); 
		FunctionCallee hookFunc = M.getOrInsertFunction(TargetFunc + "_hook", hookFT);
		/*
		 ** Create a call to accelerator function and replace the function call of
		 ** the matched function with that.
		 */
		for (auto cInst : workListOfCallInsts) {
			vector<Value *> operands;
			for (size_t i = 0; i < cInst->getNumOperands() - 1; i++) {
				operands.push_back(cInst->getOperand(i));
				errs() << "DSAND " << *cInst->getOperand(i) << "\n";
			}
			CallInst *newCInst =
				CallInst::Create(hookFunc, operands, "", (Instruction *)cInst);
			if (!cInst->use_empty()) {
				cInst->replaceAllUsesWith(newCInst);
			}
			cInst->eraseFromParent();
		}
		if (verifyModule(M, &errs())) {
			assert(0 && "Verification of codegen module failed");
		}
	}
	/*
	 ** Dump the module M with codegen hooks to a file
	 */
//	string codeGenFile = Out + "/test.query.codegen.bc";
//	std::error_code EC;
//	raw_fd_ostream fd(codeGenFile, EC);
//	if (EC) {
//		llvm::errs() << "Could not open output file " << EC.message();
//		assert(0);
//	}
//	WriteBitcodeToFile(M, fd, true);
//	fd.close();
}

bool esp_codegen::runOnModule(Module &M) {
	Mod = &M;

	if (Target.empty()) {
		errs() << "Provide --targetspec <ll/bc file>:func1 query.ll\n";
		return 1;
	}

	// Out: directory to store pruned revisions of functions
	if (Out == "") {
		Out = "./output/";
	}

	string cmd = "mkdir -p " + Out;
	execute_shell_cmd(cmd);

	/*
	 ** Parsing file and function name from input target spec
	 */
	std::string TargetFunc("");
	std::string TargetFile("");
	size_t it;
	if ((it = Target.find(':')) != string::npos) {
		TargetFunc = Target.substr(it + 1);
		TargetFile = Target.substr(0, it);
	} else {
		TargetFile = Target;
	}

	if (TargetFunc.empty() || TargetFile.empty()) {
		llvm::errs() << "Specify the target file and function using --targetspec "
			"target-file.ll:target-function";
		return false;
	}

	/*
	 ** Sanity Check: If target function belongs to the target file
	 */
	SMDiagnostic Err;
	LLVMContext Context;

	errs() << "Identifying target function [" << TargetFunc
		<< "] from target file: " << TargetFile << "\n";
	llvm::Function *FT = nullptr;
	std::unique_ptr<Module> TMod(parseIRFile(TargetFile, Err, Context));
	if (!TMod) {
		llvm::errs()
			<< "Spec module is not Specified (use --targetspec file.ll:funcname";
		return false;
	}

	for (auto &Func : *TMod) {
		if (Func.isIntrinsic() || Func.isDeclaration())
			continue;

		if (string::npos != Func.getName().str().find(TargetFunc) &&
				Func.getName().str().length() == TargetFunc.length()) {
			FT = &Func;
			break;
		}
	}

	if (FT == nullptr) {
		llvm::errs() << "Target function " << TargetFunc << " missing in file "
			<< TargetFile << "\n";
		return false;
	}

	/*
	 ** Iterate over the functions in query/application module M to be matched with
	 *the target
	 ** function TargetFunc.
	 */
	llvm::Function *FQ = nullptr;
	std::map<Function *, std::vector<CallInst *>> workListOfCallInsts;
	for (auto &Func : M) {
		if (Func.isIntrinsic() || Func.isDeclaration())
			continue;

		FQ = &Func;

		errs() << "\n\nMatching: " << FQ->getName().str() << " with Target "
			<< TargetFunc << "\n";
		if (iterativePruningMatcherDriver(M, FQ->getName(), TargetFile, TargetFunc,
					Out)) {
			errs() << "Match Found\n";
			for (User *U : FQ->users()) {
				if (Instruction *I = dyn_cast<Instruction>(U)) {
					CallInst *CInstr = dyn_cast<CallInst>(I);
					if (CInstr == nullptr || !CInstr->getCalledFunction() ||
							CInstr->getCalledFunction()->getName() != FQ->getName()) {
						continue;
					}
					workListOfCallInsts[FQ].push_back(CInstr);
				}
			}
			break;
		} else {
			errs() << "Fail\n";
		}
	}

	codeGen(workListOfCallInsts, M, TargetFunc);
	return true;
}
