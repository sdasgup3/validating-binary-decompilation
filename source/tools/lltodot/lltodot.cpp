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

using namespace std;
using namespace llvm;

static cl::opt<std::string>
    LLIR("llir_file",
         cl::desc("<path/to/file.(ll/bc)>:function to convert to dot"),
         cl::value_desc("Path to decompiled ll/bc file"));

static cl::opt<std::string>
    Outfile("outfile", cl::desc("<path/to/file.(dot)>: file to write dot to"),
            cl::value_desc("Path to proposed output dot file"));

static cl::opt<bool> SSAEdgeOnly(
    "use-ssa-edges",
    cl::desc("Use only the SSA edges to create the dependency graph"));

void writeHeader(raw_ostream &O, DataDepGraph *G) {
  std::string GraphName = "CFG for '" + G->F->getName().str() + "' function";
  O << "digraph \"" << DOT::EscapeString(GraphName) << "\" {\n";
  O << "\n";
}

void writeFooter(raw_ostream &O, DataDepGraph *G) { O << "}\n"; }

std::string getNodeLabel(const Value *Node) {
  enum { MaxColumns = 1024 };
  std::string Str;
  raw_string_ostream OS(Str);

  if (Node->getName().empty()) {
    Node->printAsOperand(OS, false);
    OS << ":";
  }

  OS << *Node;
  std::string OutStr = OS.str();
  if (OutStr[0] == '\n')
    OutStr.erase(OutStr.begin());

  // Process string output to make it nicer...
  unsigned ColNum = 0;
  unsigned LastSpace = 0;
  for (unsigned i = 0; i != OutStr.length(); ++i) {
    if (OutStr[i] == '\n') { // Left justify
      OutStr[i] = '\\';
      OutStr.insert(OutStr.begin() + i + 1, 'l');
      ColNum = 0;
      LastSpace = 0;
    } else if (OutStr[i] == ';') {             // Delete comments!
      unsigned Idx = OutStr.find('\n', i + 1); // Find end of line
      OutStr.erase(OutStr.begin() + i, OutStr.begin() + Idx);
      --i;
    } else if (ColNum == MaxColumns) { // Wrap lines.
      // Wrap very long names even though we can't find a space.
      if (!LastSpace)
        LastSpace = i;
      OutStr.insert(LastSpace, "\\l...");
      ColNum = i - LastSpace;
      LastSpace = 0;
      i += 3; // The loop will advance 'i' again.
    } else
      ++ColNum;
    if (OutStr[i] == ' ')
      LastSpace = i;
  }
  return OutStr;
}

void writeNodes(raw_ostream &O, DataDepGraph *G) {
  for (auto p : G->getImpl()) {
    auto *Node = p.first;
    auto adjList = p.second;
    O << "\tNode" << static_cast<const void *>(Node) << " [shape=record,";
    O << "label=\"{";
    O << DOT::EscapeString(getNodeLabel(Node));
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

void writeDFGToDotFile(DataDepGraph *G, string OutputDFG) {
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
  sys::PrintStackTraceOnErrorSignal(argv[0]);
  PrettyStackTraceProgram X(argc, argv);
  llvm_shutdown_obj Y; // Call llvm_shutdown() on exit.
  cl::ParseCommandLineOptions(argc, argv, "Basic Matcher Algorithm\n");

  if (LLIR.empty() || Outfile.empty()) {
    errs()
        << "Provide --llir_file <ll/bc file>:func1 --outfile <path/to/dot>\n";
    return 1;
  }

  // Parsing file and function names from input arguments
  std::string TargetFunc("");
  std::string TargetFile("");

  size_t it;

  if ((it = LLIR.find(':')) != string::npos) {
    TargetFunc = LLIR.substr(it + 1);
    TargetFile = LLIR.substr(0, it);
  } else {
    // TargetFile = LLIR.value();
    errs() << "Missing function name in arg. --llir_file <ll/bc file>:func1\n";
    return 1;
  }

  SMDiagnostic Err;
  LLVMContext Context;

  // Reading llvm files and extracting functions to match
  outs() << "Reading LLVM: " << TargetFile << "\n";
  std::unique_ptr<Module> TMod(parseIRFile(TargetFile, Err, Context));
  if (!TMod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  llvm::Function *F1 = nullptr;

  outs() << "Extracting function [" << TargetFunc << "] from " << TargetFile
         << "\n";

  for (auto &Func : *TMod) {
    if (Func.isIntrinsic() || Func.isDeclaration())
      continue;

    // if (TargetFunc == "") {
    //   F1 = &Func;
    //   break;
    // }

    smatch m;
    string funcName(Func.getName().str());
    if (regex_search(funcName, m,
                     std::regex("sub_[a-zA-Z0-9]+_" + TargetFunc + "$")) ==
            false &&
        (Func.getName().str().length() != TargetFunc.length() ||
         TargetFunc.compare(0, TargetFunc.length(), Func.getName().str()) != 0))
      continue;

    F1 = &Func;
    break;
  }

  if (!F1) {
    errs() << "Missing function name: " << TargetFunc << "\n";
    return 1;
  }

  DataDepGraph *G = new DataDepGraph(F1, SSAEdgeOnly);
  writeDFGToDotFile(G, Outfile);

  outs() << "Dot file generated!\n\n";
  return 0;
}
