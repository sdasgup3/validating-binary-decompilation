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
  string scriptsPath;
  string workdir;

  // Cache for instruction defn which are already decompiled
  // set<string> ICache;
  set<string> FuncCache;
  map<string, string> DeclCache;

  Cfg *cfg;
  bool disassemble(string inPath);
  void decompile(string outLLVMPath);
  void displayCFG(bool view);
  // redi::ipstream *run_command(const string &cmd);
  //  bool run_command(const string &cmd, bool ret_stream = false,
  //                   redi::ipstream **retval = NULL);

  /** Tracks if an error occurred. */
  bool error_;
  /* Tracks the last error message. */
  std::string error_message_;
  /* Tracks the RIP of label defintions and the reverse map*/
  unordered_map<string, uint64_t> labelDefn2RIP;
  unordered_map<uint64_t, string> rip2LabelDefn;
  void computePCUpdates();

  // Body of the decompiled function
  stringstream Body;

  // Specialized instruction definitions
  stringstream Defns;

  // Declarations of called functions
  stringstream TypeDecls;
  stringstream FuncDecls;

  stringstream DataSectioGlobals;
  map<string, uint16_t> DataSectioGlobalsCache;
  void generateDataSectionGlobals();

  string decompileFunction(const string &extractedFunction);
  // bool sanity_check_template_instruction(x64asm::Instruction i1,
  //                                       x64asm::Instruction i2);
  // void decompileInstruction(x64asm::Instruction instr,
  //                          x64asm::Instruction template_instr);
  string decompileInstruction(x64asm::Instruction instr, uint64_t, uint64_t);

  // int getMcSemaIndices(const x64asm::R &reg);
  // int getMcSemaIndices(const x64asm::Sse &reg);
  // string findFileForOpcode(x64asm::Instruction instr,
  //                         const string &singleInstrDecompPath);
  vector<string> uniquifyFuncDefns(const vector<string> &local_defn);
  vector<string> collectDeclarations(const vector<string> &local_defn);
  vector<string> handleJMPDefns(const vector<string> &local_defn);
  vector<string> handleJCCDefns(const vector<string> &local_defn);
  vector<string> handleCALLDefns(const vector<string> &local_defn);
  vector<string> handleDataSectionAccessDefns(x64asm::Instruction instr,
                                              const vector<string> &local_defn);

  string handleJMPBodyCalls(x64asm::Instruction instr, uint64_t currRIP,
                            uint64_t currSize);
  string handleJCCBodyCalls(x64asm::Instruction instr, uint64_t currRIP,
                            uint64_t currSize);
  string handleCALLBodyCalls(x64asm::Instruction instr, uint64_t currRIP,
                             uint64_t currSize);
  string handleBodyCalls(x64asm::Instruction instr, uint64_t currRIP,
                         uint64_t currSize);

public:
  CompositionalDecompiler(const string &inPath, const string &outLLVMPath,
                          const string &extractedFunction,
                          const string &singleInstrDecompPath,
                          const string &workdir, bool flat_binary = false);

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
