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
                   .usage("<path/to/file.(ll/bc)>:function to analyze in file1")
                   .description("Path to decompiled ll/bc file");

auto &Source = ValueArg<string>::create("file2")
                   .usage("<path/to/file.(ll/bc)>:function to analyze in file2")
                   .description("Path to proposed ll/bc file");

int main(int argc, char **argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (Target.value().empty() || Source.value().empty()) {
    Console::msg()
        << "Provide --file1 <ll/bc file>:func1 --file2 <ll/bc file>:func2\n";
    return 1;
  }

  // Parsing file and function names from input arguments
  std::string TargetFunc("");
  std::string TargetFile("");
  size_t it;
  if ((it = Target.value().find(':')) != string::npos) {
    TargetFunc = Target.value().substr(it + 1);
    TargetFile = Target.value().substr(0, it);
  } else {
    TargetFile = Target.value();
  }

  std::string SourceFunc("");
  std::string SourceFile("");
  if ((it = Source.value().find(':')) != string::npos) {
    SourceFunc = Source.value().substr(it + 1);
    SourceFile = Source.value().substr(0, it);
  } else {
    SourceFile = Source.value();
  }

  SMDiagnostic Err;
  LLVMContext Context;

  // Reading llvm files and extracting functions to match
  Console::msg() << "Reading LLVM: " << TargetFile << "\n";
  std::unique_ptr<Module> TMod(parseIRFile(TargetFile, Err, Context));
  if (!TMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  Console::msg() << "Reading LLVM: " << SourceFile << "\n";
  std::unique_ptr<Module> SMod(parseIRFile(SourceFile, Err, Context));
  if (!SMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  llvm::Function *F1 = nullptr, *F2 = nullptr;

  Console::msg() << "Extracting function [" << TargetFunc << "] from "
                 << TargetFile << "\n";
  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (TargetFunc == "") {
      F1 = &Func;
      break;
    }

    // if (string::npos == Func.getName().str().find(TargetFunc))
    // if (std::regex_search(Func.getName().str(), m, std::regex("sub.*_")) ==
    //    false)
    smatch m;
    string funcName(Func.getName().str());
    if (regex_search(funcName, m, std::regex("sub.*_" + TargetFunc)) == false)
      continue;

    F1 = &Func;
    break;
  }

  Console::msg() << "Extracting function [" << SourceFunc << "] from "
                 << SourceFile << "\n";
  for (auto &Func : *SMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    if (SourceFunc == "") {
      F2 = &Func;
      break;
    }

    if (string::npos == Func.getName().str().find(SourceFunc))
      continue;

    F2 = &Func;
    break;
  }

  if (!F1 || !F2) {
    Console::msg() << "Missing function name: " << TargetFunc << " or "
                   << SourceFunc << "\n";
    return 1;
  }

  // Matching the extracted functions
  Matcher M(F1, F2);

  Console::msg() << "Matcher Done...\n";
  return 0;
}
