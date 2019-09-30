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
//#include "src/ext/pstreams-0.8.1/pstream.h"

#define CDDEBUG 1

using namespace std;
using namespace stoke;

class CompositionalDecompiler {
private:
  bool flat_binary;
  string extractedFunction;
  Cfg *cfg;
  void disassemble(string inPath);
  void decompile(string outLLVMPath);
  void displayCFG(bool view);
  // redi::ipstream *run_command(const string &cmd);
  bool run_command(const string &cmd);

  /** Tracks if an error occurred. */
  bool error_;
  /* Tracks the last error message. */
  std::string error_message_;
  /* Tracks the RIP of label defintions */
  unordered_map<string, uint64_t> labelDefnRIP;
  void computePCUpdates();

public:
  CompositionalDecompiler(string inPath, string outLLVMPath,
                          string extractedFunction, bool flat_binary = false);

  /** Clears error state */
  void clear_error() {
    error_ = false;
    error_message_ = "";
  }
  /** Sets error state */
  void set_error(const std::string &msg) {
    error_ = true;
    error_message_ = msg;
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
