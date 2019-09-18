// Custom Imports
#include "llvm-graph-matching.h"

// LLVM imports
#include "remill/BC/Compat/TargetLibraryInfo.h"
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
#include <string>
#include <vector>
// Stoke imports
#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/target.h"

using namespace std;
using namespace llvm;
using namespace cpputil;
using namespace stoke;

auto &Target = ValueArg<string>::create("file1")
                   .usage("<path/to/file.(ll/bc)>")
                   .description("Path to decompiled ll/bc file");

auto &Source = ValueArg<string>::create("file2")
                   .usage("<path/to/file.(ll/bc)>")
                   .description("Path to proposed ll/bc file");

auto &FunctionToAnalyze =
    ValueArg<string>::create("target-function")
        .alternate("tf")
        .usage("Function Name")
        .description("Specify the llvm function name to analyze")
        .default_val("");

int main(int argc, char **argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (Target.value().empty() || Source.value().empty()) {
    Console::msg() << "Provide --file1 <ll/bc file> --file2 <ll/bc file>\n";
    return 1;
  }

  SMDiagnostic Err;
  LLVMContext Context;

  Console::msg() << "Reading LLVM: " << Target.value() << "\n";
  std::unique_ptr<Module> TMod(parseIRFile(Target.value(), Err, Context));
  if (!TMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  Console::msg() << "Reading LLVM: " << Source.value() << "\n";
  std::unique_ptr<Module> SMod(parseIRFile(Source.value(), Err, Context));
  if (!SMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }


  Console::msg() << "Extracting a function from each module to compare \n";
  llvm::Function *F1 = nullptr, *F2 = nullptr;

  for (auto &Func : *TMod) {
    if(Func.isIntrinsic() || Func.isDeclaration()) continue;

    if(FunctionToAnalyze.value() == "") {
      F1 = &Func;
      break;
    } 

    if (string::npos == Func.getName().str().find(FunctionToAnalyze))
      continue;

    F1 = &Func;
    break;
  }

  for (auto &Func : *SMod) {
    if(Func.isIntrinsic() || Func.isDeclaration()) continue;

    if(FunctionToAnalyze.value() == "") {
      F2 = &Func;
      break;
    } 

    if (string::npos == Func.getName().str().find(FunctionToAnalyze))
      continue;

    F2 = &Func;
    break;
  }

  if(!F1 || !F2) {
    Console::msg() << "Missing function name: " << FunctionToAnalyze.value() << "\n";
  }

  // Matching the extracted functions
  Matcher M(*F1, *F2);

  Console::msg() << "Exiting Simple Matcher ...\n";
  return 0;
}
