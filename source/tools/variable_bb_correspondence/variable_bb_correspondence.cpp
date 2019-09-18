// Custom imports for LLVM dfg
//#include "llvm-dfg.h"
#include "signature.h"
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

#include "src/cfg/dfg.h"
#include "src/cfg/dot_writer.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/target.h"

using namespace std;
using namespace llvm;
using namespace cpputil;
using namespace stoke;

auto &DecompiledFile = ValueArg<string>::create("llvm-in")
                           .alternate("li")
                           .usage("<path/to/file.(ll/bc)>")
                           .description("Path to decmpiled ll/bc file");

auto &FunctionToAnalyze =
    ValueArg<string>::create("target-function")
        .alternate("tf")
        .usage("Function Name")
        .description("Specify the llvm function name to analyze")
        .default_val("");

auto &FunctionToFindInitState =
    ValueArg<string>::create("init-state-function")
        .alternate("isf")
        .usage("Function Name")
        .description("Specify the llvm function name to determine the initial "
                     "variable correspondence")
        .default_val("");

auto &LLVMDfgDotOut =
    ValueArg<string>::create("llvm-dfg-dot-out")
        .alternate("ldf")
        .usage("File Name")
        .description("Specify the filename used to dump the llvm DFG")
        .default_val("");

auto &X86DfgDotOut =
    ValueArg<string>::create("x86-dfg-dot-out")
        .alternate("xdf")
        .usage("File Name")
        .description("Specify the filename used to dump the x86 DFG")
        .default_val("");

auto &LLVMOptOut =
    ValueArg<string>::create("llvm-opt-out")
        .alternate("loo")
        .usage("File Name")
        .description("Specify the filename used to dump the optimized llvm")
        .default_val("");

auto &X86DfgPdfOut = ValueArg<string>::create("x86-dfg-pdf-out")
                         .alternate("out")
                         .usage("<path/to/file.pdf>")
                         .description("Path to write cfg to")
                         .default_val("./cfg.pdf");
auto &view =
    FlagArg::create("view").alternate("v").description("View cfg immediately");

auto &no_fresh_memory =
    FlagArg::create("no-fresh-memory").alternate("no-fresh-mem");

void CreateLLVMDFG(Module &Mod) {
  if (FunctionToFindInitState.value() != "" &&
      FunctionToAnalyze.value() != "") {

    Console::msg() << "LLVM init-state-function: "
                   << FunctionToFindInitState.value() << "\n";
    Console::msg() << "LLVM function-to-analyze: " << FunctionToAnalyze.value()
                   << "\n";

    // Find the initial variable correspondence w.r.t a dummy function
    auto signatureInfo =
        extractSignaturesFromModule(Mod, FunctionToFindInitState);
    // Find the initial variable correspondence w.r.t the function under
    // analysis
    map<Value *, string> initVariableCorrespondence =
        applySignaturesToModule(Mod, FunctionToAnalyze, signatureInfo);
  }

  llvm::Function *f;
  for (auto &Func : Mod) {
    if (string::npos == Func.getName().str().find(FunctionToAnalyze) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    f = &Func;
    break;
  }

  Console::msg() << "Writing LLVM-dfg...\n";
  // writeDFGToDotFile(f, LLVMDfgDotOut);

  Console::msg() << "Writing LLVM-dfg-segments..."
                 << "\n";
  // extractDFSegments(f);
}

string tempfile(const string &temp) {
  vector<char> v(temp.begin(), temp.end());
  v.push_back('\0');

  const auto fd = mkstemp(v.data());
  return string(v.begin(), v.end() - 1);
}

void to_dot(const string &dot_file) {
  ofstream ofs(dot_file);

  Dfg *target;
  Cfg *cfg;

  cfg = new Cfg(target_arg.value().get_code());

  target = new Dfg(cfg, !no_fresh_memory);

  DotWriter dw;
  dw(ofs, *target);
}

bool to_pdf(const string &dot_file, const string &pdf_file) {
  Terminal term;
  term << "cat " << dot_file << " | dot -Tpdf > " << pdf_file << " 2> /dev/null"
       << endl;
  return term.result() == 0;
}

bool view_pdf(const string &pdf_file) {
  Terminal term;
  term << "evince " << pdf_file << endl;
  return term.result() == 0;
}

static void RunO3(Module *gModule) {
  llvm::legacy::FunctionPassManager func_manager(gModule);
  llvm::legacy::PassManager module_manager;

  auto TLI =
      new llvm::TargetLibraryInfoImpl(llvm::Triple(gModule->getTargetTriple()));

  TLI->disableAllFunctions(); // `-fno-builtin`.

  llvm::PassManagerBuilder builder;
  builder.OptLevel = 3;
  builder.SizeLevel = 2;
  builder.Inliner =
      llvm::createFunctionInliningPass(std::numeric_limits<int>::max());
  builder.LibraryInfo = TLI;          // Deleted by `llvm::~PassManagerBuilder`.
  builder.DisableUnrollLoops = false; // Unroll loops!
  builder.DisableUnitAtATime = false;
  builder.SLPVectorize = false;
  builder.LoopVectorize = false;

  // TODO(pag): Not sure when these became available.
  // builder.MergeFunctions = false;  // Try to deduplicate functions.
  // builder.VerifyInput = false;
  // builder.VerifyOutput = false;

  builder.populateFunctionPassManager(func_manager);
  builder.populateModulePassManager(module_manager);
  func_manager.doInitialization();
  for (auto &func : *gModule) {
    func_manager.run(func);
  }
  func_manager.doFinalization();
  module_manager.run(*gModule);

  // Verify the transformation
  verifyModule(*gModule, &errs());

  // Output the Module content
  std::error_code EC;
  raw_fd_ostream fd(LLVMOptOut.value(), EC, sys::fs::F_RW);
  if (EC) {
    llvm::errs() << "Could not open output file " << EC.message();
    assert(0);
  }
  WriteBitcodeToFile(gModule, fd, true);
}

int main(int argc, char **argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (!DecompiledFile.value().empty()) {
    Console::msg() << "Analyzing LLVM file: " << DecompiledFile.value() << "\n";

    SMDiagnostic Err;
    LLVMContext Context;
    std::unique_ptr<Module> Mod(
        parseIRFile(DecompiledFile.value(), Err, Context));
    if (!Mod) {
      Err.print(argv[0], errs(), /*showColors=*/true);
      return 1;
    }

    RunO3(Mod.get());
    // CreateLLVMDFG(*Mod);
  }

  if (target_arg.has_been_provided()) {
    Console::msg() << "Analyzing x86 file...\n";

    auto dot_file = X86DfgDotOut.value();
    if (dot_file == "")
      dot_file = tempfile("/tmp/stoke_debug_cfg.dot.XXXXXX");

    Console::msg() << "Wrting x86 dfg: " << X86DfgDotOut.value() << endl;
    to_dot(dot_file);

    if ((X86DfgPdfOut.value() != "") &&
        !to_pdf(dot_file, X86DfgPdfOut.value())) {
      Console::error(1) << "Unable to save file!" << endl;
    } else if (view && !view_pdf(X86DfgPdfOut.value())) {
      Console::error(1) << "Unable to open file for viewing!" << endl;
    }
  }
  return 0;
}
