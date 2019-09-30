//===-- variable_correspondence.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "compositional-decompiler.h"

// C++ includes
#include <cassert>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

// Stoke Includes
#include "src/cfg/cfg.h"
#include "src/cfg/dot_writer.h"
#include "src/disassembler/disassembler.h"
#include "src/disassembler/function_callback.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
using namespace stoke;
using namespace cpputil;

// Forward declarations
static string tempfile(const string &temp);
static void to_dot(Cfg *cfg, const string &dot_file);
static bool to_pdf(const string &dot_file, const string &pdf_file);
static bool view_pdf(const string &pdf_file);

CompositionalDecompiler::CompositionalDecompiler(string inPath,
                                                 string outLLVMPath,
                                                 string extractedFunction,
                                                 bool flat_binary) {
  this->flat_binary = flat_binary;
  this->extractedFunction = extractedFunction;
  cfg = NULL;
  clear_error();
  disassemble(inPath);
  decompile(outLLVMPath);
}

void CompositionalDecompiler::computePCUpdates() {
  x64asm::Code code_ = cfg->get_code();
  auto fxn = cfg->get_function();
  uint64_t rip_offset_ = fxn.get_rip_offset();

  size_t code_it = 0;
  size_t code_ite = code_.size();

  for (auto i = fxn.hex_offset_begin(), ie = fxn.hex_offset_end(); i != ie;
       ++i, code_it++) {
    assert(code_it < code_ite && "CompositionalDecompiler::computePCUpdates: "
                                 "Problem with code iterators");
    if (code_[code_it].is_label_defn()) {
      stringstream ss;
      ss << code_[code_it];
      assert(!labelDefnRIP.count(ss.str()) && "Duplicate label found");
      labelDefnRIP[ss.str()] = rip_offset_ + *i;
    }
  }
#ifdef CDDEBUG
  for (auto p : labelDefnRIP) {
    Console::msg() << p.first << "::" << p.second << "\n";
  }
  Console::msg() << "\n";
#endif
}

static void createCFG(const FunctionCallbackData &data, void *arg) {

  struct CallbackValue *cbv = static_cast<struct CallbackValue *>(arg);

  if (!cbv->extractedFunction.empty() &&
      data.tunit.get_name() != cbv->extractedFunction) {
    return;
  } else if (!data.parse_error) {
    // ofstream ofs(out.value() + "/" + data.tunit.get_name() + ".s");
    // ofs << data.tunit << endl;
    // cfg = new Cfg(data.tunit);
    *(cbv->cfg_addr) = new Cfg(data.tunit);
  } else {
    Console::warn() << "Could not disassemble " << data.name
                    << " (parse error)." << endl;
  }
}

void CompositionalDecompiler::disassemble(string inPath) {
  Disassembler d;

  struct CallbackValue val(&cfg, extractedFunction);
  d.set_function_callback(createCFG, &val);
  d.set_flat_binary(flat_binary);
  d.disassemble(inPath);

  if (d.has_error()) {
    Console::error(1) << "Error: " << d.get_error() << endl;
  }
}

void CompositionalDecompiler::decompile(string outLLVMPath) {
  if (!cfg) {
    Console::error(1) << "CFG not yet created!" << endl;
    return;
  }

  // Compute PC updates for each instruction
  computePCUpdates();

  // Generating the global struct definitions and intricsics declarations
  string cmd = "cp "
               "${HOME}/Github/validating-binary-decompilation/source/libs/"
               "compositional-decompiler/data/mcsema_template.txt " +
               outLLVMPath;
  if (!run_command(cmd)) {
    Console::error(1) << "Error: " << get_error() << endl;
    return;
  }

  // Iterate over instructions and generate calls to specialized instruction
  // semantics.
  stringstream body;
  stringstream defns;

  x64asm::Code code_ = cfg->get_code();
  auto fxn = cfg->get_function();
  uint64_t rip_offset_ = fxn.get_rip_offset();

  size_t code_it = 0;
  size_t code_ite = code_.size();
  auto rip_offset_it = fxn.hex_offset_begin();
  auto rip_offset_ite = fxn.hex_offset_end();
  auto size_it = fxn.hex_size_begin();
  auto size_ite = fxn.hex_size_end();

  for (; code_it < code_ite; code_it++, rip_offset_it++, size_it++) {

    assert(rip_offset_it != rip_offset_ite && size_it != size_ite &&
           "CompositionalDecompiler::decompile: Problem with iterators");

    stringstream ss_code;
    stringstream ss_rip;
    stringstream ss_size;

    ss_code << code_[code_it];
    ss_rip << rip_offset_ + *rip_offset_it;
    ss_size << *size_it;

    body << "\t# Code: " << ss_code.str();
    body << "\t# RIP: " << hex << showbase << ss_rip.str();
    body << "\t# Bytes: " << dec << ss_size.str();
    body << "\n";
  }

  // Generatng decompilation io text
  std::ofstream fd;
  fd.open(outLLVMPath.c_str(), ios::out | ios::app);
  string fileContent = "define %struct.Memory* @" + extractedFunction +
                       "(%struct.State* noalias , i64, "
                       "%struct.Memory* noalias) alwaysinline  {\n";
  fileContent += body.str();
  fileContent += "}\n";
  fileContent += defns.str();

  fd << fileContent;
  fd.close();
}

void CompositionalDecompiler::displayCFG(bool view) {
  if (!cfg) {
    Console::error(1) << "CFG not yet created!" << endl;
    return;
  }

  auto cfg_dot = tempfile("/tmp/stoke_debug_cfg.dot.XXXXXX");
  auto cfg_pdf = tempfile("/tmp/stoke_debug_cfg.pdf.XXXXXX");
  Console::msg() << "Wrting x86 cfg: " << cfg_pdf << endl;
  to_dot(cfg, cfg_dot);

  if (!to_pdf(cfg_dot, cfg_pdf)) {
    Console::error(1) << "Unable to save file!" << endl;
  } else if (view && !view_pdf(cfg_pdf)) {
    Console::error(1) << "Unable to open file for viewing!" << endl;
  }
}

// redi::ipstream *CompositionalDecompiler::run_command(const string &cmd) {
bool CompositionalDecompiler::run_command(const string &cmd) {
  Console::msg() << "Executing: " << cmd << "\n";
  auto stream = new redi::ipstream(cmd, redi::pstreams::pstdout);
  if (!stream) {
    set_error("Unknown error spawning: " + cmd);
    // return NULL;
    return false;
  }
  if (!stream->is_open()) {
    set_error("Unknown error spawning: " + cmd);
    delete stream;
    // return NULL;
    return false;
  }

  delete stream;
  // return stream;
  return true;
}

/*********************************************************************
************************* General Utilities **************************
*********************************************************************/
string tempfile(const string &temp) {
  vector<char> v(temp.begin(), temp.end());
  v.push_back('\0');

  const auto fd = mkstemp(v.data());
  return string(v.begin(), v.end() - 1);
}

void to_dot(Cfg *cfg, const string &dot_file) {
  ofstream ofs(dot_file);
  DotWriter dw;
  dw(ofs, *cfg);
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

/************ Not used code *************

  // Add nodes corresponding to instrcutons
  for (auto i = ++cfg->reachable_begin(), ie = cfg->reachable_end(); i != ie;
       ++i) {
    for (size_t j = 0, je = cfg->num_instrs(*i); j < je; ++j) {

      auto idx = cfg->get_index({*i, j});
      const auto instr = cfg->get_code()[idx];
      std::cout << j << "::" << instr << "::" << instr.get_opcode() << "\n";
    }
  }

  std::cout << cfg->get_function();








*****************************************/
