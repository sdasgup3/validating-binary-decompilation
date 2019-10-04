//===-- signature.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "compositional-decompiler.h"

// Stoke Includes
#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/command_line/value_arg.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/target.h"

using namespace std;
using namespace stoke;
using namespace cpputil;

auto &BinaryIn = ValueArg<string>::create("input")
                     .alternate("i")
                     .usage("--input <file>")
                     .description("Specify the binary filename")
                     .default_val("");

auto &LLVMOut =
    ValueArg<string>::create("output")
        .alternate("o")
        .usage("--output <file>")
        .description("Specify the filename used to dump the llvm ll")
        .default_val("");

auto &Fxn =
    ValueArg<string>::create("function")
        .usage("<string>")
        .description("only extract this function. Else the last function in "
                     "the .text section of the binary blob is extracted.")
        .default_val("");

auto &SingleInstructionDecompilationPath =
    ValueArg<string>::create("path")
        .usage("--path <directory>")
        .description("Path to single instrucion decompilation llvm sequences")
        .default_val("");

auto &workdir_arg =
    ValueArg<string>::create("workdir")
        .usage("<path/to/dir>")
        .description("The working directory")
        .default_val("/home/sdasgup3/Github/validating-binary-decompilation/"
                     "single_instruction_translation_validation/tests/mcsema/"
                     "compositional_artifacts/");

auto &view =
    FlagArg::create("view").alternate("v").description("View cfg immediately");

int main(int argc, char **argv) {
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (SingleInstructionDecompilationPath.value() == "" ||
      BinaryIn.value() == "" || LLVMOut.value() == "") {
    Console::msg() << "Usage: compositional-decompiler "
                      "--input <binary file>\n"
                      "--output <some file>.bc\n"
                      "--path <path>\n"
                      "--function <function name>\n"
                   << "Exiting...\n";
    return 1;
  }

  CompositionalDecompiler CompD(BinaryIn, LLVMOut, Fxn,
                                SingleInstructionDecompilationPath,
                                workdir_arg.value());

  return 0;
}
