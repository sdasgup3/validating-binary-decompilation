// Custom Imports
#include "smt-generator.h"

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
using namespace cpputil;
using namespace stoke;

auto &Opcode = ValueArg<string>::create("opc")
                   .usage("addq_r64_m64")
                   .description("Att instruction opcode");

auto &LSpec = ValueArg<string>::create("lspec")
                  .usage("<path/to/test-lspec.out")
                  .description("Path to llvm spec output file");

auto &XSpec = ValueArg<string>::create("xspec")
                  .usage("<path/to/test-xspec.out")
                  .description("Path to x86 spec output file");

auto &Z3Out = ValueArg<string>::create("z3out")
                  .usage("<path/to/test-z3.py")
                  .description("Path to generated z3 python file");

int main(int argc, char **argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (LSpec.value().empty() || XSpec.value().empty() || Z3Out.value().empty()) {
    Console::msg() << "Provide --lspec test-lspec.out --xspec test-xspec.out "
                      "--z3out test-z3.py --opc addq_r64_m64\n";
    return 1;
  }

  Console::msg() << "LLVM Spec file: " << LSpec.value() << "\n";
  Console::msg() << "X86 Spec file: " << XSpec.value() << "\n";
  Console::msg() << "Z3 Out file: " << Z3Out.value() << "\n";
  Console::msg() << "Opcode: " << Opcode.value() << "\n";

  SMTGenerator(LSpec.value(), XSpec.value(), Z3Out.value(), Opcode.value());
  return 0;
}
