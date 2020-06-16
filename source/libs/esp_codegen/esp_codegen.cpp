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
    X("esp_codegen", "Generate backend code for esp accelerators");

static cl::opt<std::string>
    Target("targetspec",
           cl::desc("<hardware target input .llvm file>:function"),
           cl::value_desc("filename"));

static cl::opt<std::string> Out("outdir",
                                cl::desc("<path to dump residual .llvm files>"),
                                cl::value_desc("filename"));

void execute_shell_cmd(const string &cmd) {
  llvm::errs() << "Execute: " << cmd << "\n";
  if (system(cmd.c_str())) {
    errs() << "Failed!!";
    assert(0);
  }
}

static void processInput(const string &qFunc, const string &qFile,
                         const string &qOptFile, const string &qExtractFile,
                         const string &tFunc, const string &tFile,
                         const string &tOptFile, const string &tExtractFile) {

  // Optimize query
  const string norm_pass =
      "-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa "
      "-aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim "
      "-simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse "
      "-gvn -basicaa -aa -memdep -dse -memcpyopt ";
  string cmd = "opt -S " + norm_pass + qFile + " -o " + qOptFile;
  execute_shell_cmd(cmd);
  cmd.clear();

  // Optimize target
  cmd = "opt -S " + norm_pass + tFile + " -o " + tOptFile;
  execute_shell_cmd(cmd);
  cmd.clear();

  // Extract function from optimized query file
  cmd =
      "llvm-extract -S -func=" + qFunc + " " + qOptFile + " -o " + qExtractFile;
  execute_shell_cmd(cmd);
  cmd.clear();

  // Extract function from optimized target file
  cmd =
      "llvm-extract -S -func=" + tFunc + " " + tOptFile + " -o " + tExtractFile;
  execute_shell_cmd(cmd);
  cmd.clear();
}

static int imatch(const string &qExtractFile, const string &qFunc,
                  const string &qOutFile, const string &tExtractFile,
                  const string &tFunc, const string &tOutFile) {

  SMDiagnostic Err;
  LLVMContext Context;

  // Reading llvm files and extracting functions to match
  errs() << "Reading LLVM: " << tExtractFile << "\n";
  std::unique_ptr<Module> TMod(parseIRFile(tExtractFile, Err, Context));
  if (!TMod) {
    Err.print("imatch", errs(), /*showColors=*/true);
    return 2;
  }

  errs() << "Reading LLVM: " << qExtractFile << "\n";
  std::unique_ptr<Module> SMod(parseIRFile(qExtractFile, Err, Context));
  if (!SMod) {
    Err.print("imatch", errs(), /*showColors=*/true);
    return 2;
  }

  llvm::Function *tFuncPtr = nullptr, *qFuncPtr = nullptr;

  errs() << "Extracting function [" << tFunc << "] from " << tExtractFile
         << "\n";
  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (string::npos != Func.getName().str().find(tFunc) &&
        Func.getName().str().length() == tFunc.length()) {
      tFuncPtr = &Func;
      break;
    }
  }

  errs() << "Extracting function [" << qFunc << "] from " << qExtractFile
         << "\n";
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

  // Matching the extracted functions
  errs() << "Matching: " << qFunc << " & " << tFunc << "\n";
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

  // Write the query file
  std::error_code EC;
  raw_fd_ostream fd(qFileBC, EC, sys::fs::F_RW);
  if (EC) {
    llvm::errs() << "Could not open output file " << EC.message();
    assert(0);
    return false;
  }

  if (verifyModule(qModule, &errs())) {
    assert(0);
    return false;
  }

  WriteBitcodeToFile(&qModule, fd, true);
  fd.close();

  cmd = "llvm-dis " + qFileBC + " -o " + qFile;
  execute_shell_cmd(cmd);
  cmd.clear();

  // Write the target file
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

    auto res =
        imatch(qExtractFile, qFunc, qOutFile, tExtractFile, tFunc, tOutFile);
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

bool esp_codegen::runOnModule(Module &M) {
  // The application LLVM module
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

  // Parsing file and function name from input target spec
  std::string TargetFunc("");
  std::string TargetFile("");
  size_t it;
  if ((it = Target.find(':')) != string::npos) {
    TargetFunc = Target.substr(it + 1);
    TargetFile = Target.substr(0, it);
  } else {
    TargetFile = Target;
  }

  SMDiagnostic Err;
  LLVMContext Context;

  // Reading target llvm file and extracting target function to match
  errs() << "Extracting target function [" << TargetFunc << "] from target file"
         << TargetFile << "\n";
  llvm::Function *F1 = nullptr;
  std::unique_ptr<Module> TMod(parseIRFile(TargetFile, Err, Context));
  if (!TMod) {
    llvm::errs()
        << "Spec module is not Specified (use --targetspec file.ll:funcname";
    return false;
  }

  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (TargetFunc == "") {
      F1 = &Func;
      break;
    }

    if (string::npos != Func.getName().str().find(TargetFunc) &&
        Func.getName().str().length() == TargetFunc.length()) {
      F1 = &Func;
      break;
    }
  }

  // Iterate over the application function to be matched with the target
  // function
  // F1
  llvm::Function *F2 = nullptr;
  for (auto &Func : M) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    F2 = &Func;

    errs() << "\n\nMatching: " << F2->getName().str() << " with Target "
           << F1->getName().str() << "\n";
    if (iterativePruningMatcherDriver(M, F2->getName(), TargetFile,
                                      F1->getName(), Out)) {
      errs() << "Pass\n";
    } else {
      errs() << "Fail\n";
    }
  }

  return true;
}
