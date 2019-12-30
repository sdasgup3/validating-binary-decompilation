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
#include <llvm/Support/GraphWriter.h>
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

//#include "llvm-dfg-dot.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/target.h"

using namespace std;
using namespace llvm;
using namespace cpputil;
using namespace stoke;

auto &LLIR = ValueArg<string>::create("llir_file")
                 .usage("<path/to/file.(ll/bc)>:function to convert to dot")
                 .description("Path to decompiled ll/bc file");

auto &Outfile = ValueArg<string>::create("outfile")
                    .usage("<path/to/file.(dot)>: file to write dot to")
                    .description("Path to proposed output dot file");

void writeHeader(raw_ostream &O, DepGraph *G) {
  std::string GraphName = "CFG for '" + G->F->getName().str() + "' function";
  O << "digraph \"" << DOT::EscapeString(GraphName) << "\" {\n";
  O << "\n";
}

void writeFooter(raw_ostream &O, DepGraph *G) { O << "}\n"; }

void writeNodes(raw_ostream &O, DepGraph *G) {
  for (auto p : G->getImpl()) {
    auto *Node = p.first;
    auto adjList = p.second;
    O << "\tNode" << static_cast<const void *>(Node) << " [shape=record,";
    O << "label=\"{";
    O << *Node;
    O << "}\"];\n";

    for (auto TargetNode : adjList) {
      O << "\tNode" << static_cast<const void *>(Node);
      O << " -> Node" << static_cast<const void *>(TargetNode);
      if (dyn_cast<StoreInst>(Node)) {
        // Store instructions can only have Memdep use edges;
        O << " [color=blue]";
      }

      O << ";\n";
    }
  }
}

void writeDFGToDotFile(DepGraph *G, string OutputDFG) {
  std::string Filename =
      OutputDFG == "" ? ("cfg." + G->F->getName() + ".dot").str() : OutputDFG;
  errs() << "Writing '" << Filename << "'...";

  std::error_code EC;
  raw_fd_ostream File(Filename, EC, sys::fs::F_Text);

  if (!EC) {
    writeHeader(File, G);
    writeNodes(File, G);
    writeFooter(File, G);

  } else {
    errs() << "  error opening file for writing!";
  }

  errs() << "\nWriting '" << Filename << "':Done\n\n";
}

int main(int argc, char **argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (LLIR.value().empty() || Outfile.value().empty()) {
    Console::msg()
        << "Provide --llir_file <ll/bc file>:func1 --outfile <path/to/dot>\n";
    return 1;
  }

  // Parsing file and function names from input arguments
  std::string TargetFunc("");
  std::string TargetFile("");

  size_t it;

  if ((it = LLIR.value().find(':')) != string::npos) {
    TargetFunc = LLIR.value().substr(it + 1);
    TargetFile = LLIR.value().substr(0, it);
  } else {
    // TargetFile = LLIR.value();
    Console::msg()
        << "Missing function name in arg. --llir_file <ll/bc file>:func1\n";
    return 1;
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

  llvm::Function *F1 = nullptr;

  Console::msg() << "Extracting function [" << TargetFunc << "] from "
                 << TargetFile << "\n";

  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    // if (TargetFunc == "") {
    //   F1 = &Func;
    //   break;
    // }

    smatch m;
    string funcName(Func.getName().str());
    if (regex_search(funcName, m, std::regex("sub_[a-zA-Z0-9]+_" + TargetFunc +
                                             "$")) == false &&
        (Func.getName().str().length() != TargetFunc.length() ||
         TargetFunc.compare(0, TargetFunc.length(), Func.getName().str()) != 0))
      continue;

    F1 = &Func;
    break;
  }

  if (!F1) {
    Console::msg() << "Missing function name: " << TargetFunc << endl;
    return 1;
  }

  DepGraph *G = new DepGraph(F1);
  writeDFGToDotFile(G, Outfile.value());

  Console::msg() << "Dot file generated!\n\n";
  return 0;
}
