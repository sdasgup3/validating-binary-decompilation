// Custom Imports
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

using namespace std;
using namespace llvm;
static cl::opt<std::string> Target("file1",
                                   cl::desc("<input .llvm file>:function"),
                                   cl::value_desc("filename"));

static cl::opt<std::string> Source("file2",
                                   cl::desc("<input .llvm file>:function"),
                                   cl::value_desc("filename"));

static cl::opt<std::string> Out1("outfile1",
                                 cl::desc("<output .llvm file>:function"),
                                 cl::value_desc("filename"));

static cl::opt<std::string> Out2("outfile2",
                                 cl::desc("<output .llvm file>:function"),
                                 cl::value_desc("filename"));

static cl::opt<std::string> Out("outdir",
                                cl::desc("<path to dump residual .llvm files>"),
                                cl::value_desc("filename"));

static cl::opt<bool> SSAEdgeOnly(
    "use-ssa-edges",
    cl::desc("Use only the SSA edges to create the dependency graph"));

static cl::opt<bool> PotentialMatchAccurancy(
    "potential-match-accuracy",
    cl::desc("Report the accuracy of inital potential match without "
             "running the dual-sim matching algo"));

int main(int argc, char **argv) {
  sys::PrintStackTraceOnErrorSignal(argv[0]);
  PrettyStackTraceProgram X(argc, argv);
  llvm_shutdown_obj Y; // Call llvm_shutdown() on exit.
  cl::ParseCommandLineOptions(argc, argv, "Basic Matcher Algorithm\n");

  if (Target.empty() || Source.empty()) {
    errs() << "Provide --file1 <ll/bc file>:func1 --file2 <ll/bc file>:func2\n";
    return 1;
  }

  // Parsing file and function names from input arguments
  std::string TargetFunc("");
  std::string TargetFile("");
  size_t it;
  if ((it = Target.find(':')) != string::npos) {
    TargetFunc = Target.substr(it + 1);
    TargetFile = Target.substr(0, it);
  } else {
    TargetFile = Target;
  }

  std::string SourceFunc("");
  std::string SourceFile("");
  if ((it = Source.find(':')) != string::npos) {
    SourceFunc = Source.substr(it + 1);
    SourceFile = Source.substr(0, it);
  } else {
    SourceFile = Source;
  }

  SMDiagnostic Err;
  LLVMContext Context;

  // Reading llvm files and extracting functions to match
  errs() << "Reading LLVM: " << TargetFile << "\n";
  std::unique_ptr<Module> TMod(parseIRFile(TargetFile, Err, Context));
  if (!TMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  errs() << "Reading LLVM: " << SourceFile << "\n";
  std::unique_ptr<Module> SMod(parseIRFile(SourceFile, Err, Context));
  if (!SMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  if (string::npos == TargetFile.find("target") &&
      string::npos == TargetFile.find("query")) {
    errs() << "Missing target/query keyword in the file names"
           << "\n";
    exit(1);
  }

  if (Out == "") {
    errs() << "Missing Output directory"
           << "\n";
    exit(1);
  }

  llvm::Function *F1 = nullptr, *F2 = nullptr;

  errs() << "Extracting function [" << TargetFunc << "] from " << TargetFile
         << "\n";
  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (TargetFunc == "") {
      F1 = &Func;
      break;
    }

    if (string::npos != Func.getName().str().find(TargetFunc)) {
      F1 = &Func;
      break;
    }

    // For McSema generated functions
    smatch m;
    string funcName(Func.getName().str());
    if (regex_search(funcName, m,
                     std::regex("sub_[a-zA-Z0-9]+_" + TargetFunc + "$")) ==
        true) {
      F1 = &Func;
      break;
    }
  }

  errs() << "Extracting function [" << SourceFunc << "] from " << SourceFile
         << "\n";
  for (auto &Func : *SMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (SourceFunc == "") {
      F2 = &Func;
      break;
    }

    if (string::npos != Func.getName().str().find(SourceFunc)) {
      F2 = &Func;
      break;
    }

    // For McSema generated functions
    smatch m;
    string funcName(Func.getName().str());
    if (regex_search(funcName, m,
                     std::regex("sub_[a-zA-Z0-9]+_" + SourceFunc + "$")) ==
        true) {
      F2 = &Func;
      break;
    }
  }

  if (!F1 || !F2) {
    errs() << "Missing function name: " << TargetFunc << " or " << SourceFunc
           << "\n";
    return 1;
  }

  // Matching the extracted functions
  errs() << "Matching: " << F1->getName().str() << " & " << F2->getName().str()
         << "\n";
  IterativePruningMatcher M(F1, F2, Out1, Out2, /*Out,*/ SSAEdgeOnly,
                            PotentialMatchAccurancy);

  errs() << "Matcher Done...\n";
  return 0;
}
