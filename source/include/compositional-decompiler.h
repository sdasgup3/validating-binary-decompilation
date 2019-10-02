//===-- signature.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality of
// compositional-decompiler
//
//===----------------------------------------------------------------------===//

#ifndef __COMPOSITIONAL_DECOMPILER_H__
#define __COMPOSITIONAL_DECOMPILER_H__

// C++ includes
#include <string>
#include <unordered_map>

// Stoke Includes
#include "src/cfg/cfg.h"
#include "src/ext/pstreams-0.8.1/pstream.h"

#define CDDEBUG 1

using namespace std;
using namespace stoke;

class CompositionalDecompiler {
private:
  bool flat_binary;
  string extractedFunction;
  string singleInstrDecompPath;
  const string scriptsPath;
  Cfg *cfg;
  bool disassemble(string inPath);
  void decompile(string outLLVMPath);
  void displayCFG(bool view);
  // redi::ipstream *run_command(const string &cmd);
  bool run_command(const string &cmd, bool ret_stream = false,
                   redi::ipstream **retval = NULL);

  /** Tracks if an error occurred. */
  bool error_;
  /* Tracks the last error message. */
  std::string error_message_;
  /* Tracks the RIP of label defintions */
  unordered_map<string, uint64_t> labelDefnRIP;
  void computePCUpdates();

  // Body of the decompiled function
  stringstream Body;

  // Specialized instruction definitions
  stringstream Defns;

  void decompileFunction(const string &extractedFunction);
  bool sanity_check_template_instruction(x64asm::Instruction i1,
                                         x64asm::Instruction i2);
  void decompileInstruction(x64asm::Instruction instr,
                            x64asm::Instruction template_instr);
  void modifyTemplateDefinition(vector<string> &local_defn, int fromIdx,
                                int toIdx);

  int getMcSemaIndices(const x64asm::R &reg);
  int getMcSemaIndices(const x64asm::Sse &reg);
  string findFileForOpcode(x64asm::Instruction instr,
                           const string &singleInstrDecompPath);

public:
  CompositionalDecompiler(const string &inPath, const string &outLLVMPath,
                          const string &extractedFunction,
                          const string &singleInstrDecompPath,
                          bool flat_binary = false);

  /** Clears error state */
  void clear_error() {
    error_ = false;
    error_message_ = "";
  }
  /** Sets error state */
  void set_error(const std::string &msg) {
    error_ = true;
    error_message_ += msg;
  }
  /** Reports if an error occurred in the last operation.  Whether an error
   * has occurred is cleared whenever disassemble() is called. */
  bool has_error() { return error_; }
  /** Returns the latest error message. */
  const std::string &get_error() const { return error_message_; }
};

struct CallbackValue {
public:
  Cfg **cfg_addr;
  string extractedFunction;
  CallbackValue(Cfg **c, string f) : cfg_addr(c), extractedFunction(f){};
};

#endif
