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
#include <dirent.h>
#include <fstream>
#include <iostream>
#include <memory>
#include <regex>
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
#include "src/specgen/specgen.h"

using namespace std;
using namespace stoke;
using namespace cpputil;

// Forward declarations
static string tempfile(const string &temp);
static void to_dot(Cfg *cfg, const string &dot_file);
static bool to_pdf(const string &dot_file, const string &pdf_file);
static bool view_pdf(const string &pdf_file);
// static stringstream &operator<<(stringstream &ss, const redi::ipstream &ips);
vector<string> &extractFromStream(vector<string> &ss, redi::ipstream &ips);
static x64asm::R64 r_to_r64(const x64asm::R &reg);

CompositionalDecompiler::CompositionalDecompiler(
    const string &inPath, const string &outLLVMPath,
    const string &extractedFunction, const string &singleInstrDecompPath,
    bool flat_binary)
    : scriptsPath("/home/sdasgup3/Github/validating-binary-decompilation/"
                  "single_instruction_translation_validation/scripts/") {
  this->flat_binary = flat_binary;
  this->extractedFunction = extractedFunction;
  this->singleInstrDecompPath = singleInstrDecompPath;
  cfg = NULL;
  clear_error();
  if (!disassemble(inPath))
    return;
  decompile(outLLVMPath);
}

void CompositionalDecompiler::computePCUpdates() {

  Console::msg() << "Computing Label PC values ...\n";

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

  Console::msg() << "Computing Label PC values: Done.\n\n";
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

bool CompositionalDecompiler::disassemble(string inPath) {
  Console::msg() << "Disassembling " + inPath << "\n";

  Disassembler d;
  struct CallbackValue val(&cfg, extractedFunction);
  d.set_function_callback(createCFG, &val);
  d.set_flat_binary(flat_binary);
  d.disassemble(inPath);

  if (!cfg) {
    Console::error(1) << "CFG not yet created!" << endl;
    return false;
  }

  Console::msg() << "Disassembled output\n";
  Console::msg() << cfg->get_function();

  if (d.has_error()) {
    Console::error(1) << "Error: " << d.get_error() << endl;
    return false;
  }

  Console::msg() << "Disassembling Done.\n\n"
                 << "\n";
  return true;
}

void CompositionalDecompiler::modifyTemplateDefinition(
    vector<string> &local_defn, int fromIdx, int toIdx) {

  Console::msg() << "\tmodifyTemplateDefinition: From: " + to_string(fromIdx) +
                        " To: " + to_string(toIdx) + "\n";

  regex relevantInst(".*getelementptr.*");
  regex r(" " + to_string(fromIdx) + "$");

  for (auto &line : local_defn) {
    if (regex_match(line, relevantInst)) {
      auto mod_line = std::regex_replace(line, r, " " + to_string(toIdx));
      if (mod_line != line) {
        Console::msg() << "\t\tBefore...\n";
        Console::msg() << "\t\t" << line << "\n";
        Console::msg() << "\t\tAfter...\n";
        Console::msg() << "\t\t" << mod_line << "\n";
      }
    }
  }
}

// %call1 = call %struct.Memory* @routine_pushq_RBP(%struct.State* %0, i64
// %LPC1, %struct.Memory* %2)
void CompositionalDecompiler::decompileInstruction(
    x64asm::Instruction instr, x64asm::Instruction template_instr) {

  stringstream ss_local_body;
  string local_body("");
  vector<string> local_defn;

  auto templateDefnPath = findFileForOpcode(instr, singleInstrDecompPath);
  auto cmd = scriptsPath + "/specialize_template.pl   --file " +
             templateDefnPath + "/test.mod.ll";
  redi::ipstream *stream = NULL;
  run_command(cmd, true, &stream);
  extractFromStream(local_defn, *stream);

  Console::msg() << "\tExtracted Defintion: \n";
  for (auto line : local_defn) {
    Console::msg() << line << "\n";
  }

  delete stream;

  ss_local_body << "%call1 = call %struct.Memory* @routine_"
                << instr.get_opcode() << "_";

  string newFuncName("");
  string extraArgs("");

  for (size_t i = 0; i < instr.arity(); i++) {
    auto instr_t = instr.type(i);
    // auto template_instr_t = template_instr.type(i);

    if (is_gpr_type(instr_t)) {
      const R &R_OPR = instr.get_operand<R>(i);
      int index_from = getMcSemaIndices(template_instr.get_operand<R>(i));
      int index_to = getMcSemaIndices(R_OPR);

      // Modify the defintion
      modifyTemplateDefinition(local_defn, index_from, index_to);

      // Modify the call
      stringstream ss_reg_opr;
      ss_reg_opr << R_OPR;
      newFuncName += ss_reg_opr.str() + "_";
    }
  }

  // Dump the Body and the Defn
  Body << ss_local_body.str() << newFuncName
       << "(%struct.State* %0,i64  0, %struct.Memory* %2";

  if (extraArgs != "") {
    Body << extraArgs;
  }
  Body << ");\n\n";

  for (auto line : local_defn) {
    Defns << line << "\n";
  }
}

void CompositionalDecompiler::decompileFunction(
    const string &extractedFunction) {

  Console::msg() << "Decompiling Function: " + extractedFunction + "...\n";

  Body << "define %struct.Memory* @" + extractedFunction +
              "(%struct.State* noalias , i64, "
              "%struct.Memory* noalias) alwaysinline  {\n";

  // Iterate over instructions and generate calls to specialized instruction
  // semantics.
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

    auto instr = code_[code_it];
    auto opcode = instr.get_opcode();

    Console::msg() << "Decompiling instr:" << instr << "...\n";

    // Generate comment
    stringstream ss_code, ss_rip, ss_size, ss_opcode;

    ss_code << instr;
    ss_rip << rip_offset_ + *rip_offset_it;
    ss_size << *size_it;
    ss_opcode << opcode;

    Body << "\t# Code: " << ss_code.str();
    Body << "\t# RIP: " << hex << showbase << ss_rip.str();
    Body << "\t# Bytes: " << dec << ss_size.str();
    Body << "\n";

    if (opcode == LABEL_DEFN) {
      Body << "\tblock_" << hex << ss_rip.str() << ":\n";
      continue;
    }

    // Generate call to specialized instrcution semantics
    auto template_instr = get_instruction_from_string(ss_opcode.str(), false);
    Console::msg() << "\tw.r.t template instr:" << template_instr << "...\n";

    if (!sanity_check_template_instruction(instr, template_instr)) {
      Console::error(1) << "Mismatch :" << endl;
      Console::error(1) << "Orginal: " << instr;
      Console::error(1) << "Template: " << template_instr;
      Console::error(1) << endl;
      set_error("Mismatch between template and original instruction!\n");
      continue;
    }

    decompileInstruction(instr, template_instr);
  }

  Console::msg() << "Decompiling Function: " + extractedFunction + "Done.\n\n";
}

bool CompositionalDecompiler::sanity_check_template_instruction(
    x64asm::Instruction i1, x64asm::Instruction i2) {
  if ((i1.get_opcode() != i2.get_opcode()) || (i1.arity() != i2.arity()))
    return false;

  for (size_t i = 0; i < i1.arity(); i++) {
    auto instr_t = i1.type(i);
    auto template_instr_t = i2.type(i);

    if (instr_t != template_instr_t) {
      return false;
    }
  }

  return true;
}

void CompositionalDecompiler::decompile(string outLLVMPath) {

  Console::msg() << "Decompiling " + outLLVMPath + "\n";

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

  decompileFunction(extractedFunction);
  if (has_error()) {
    Console::error(1) << error_message_;
    return;
  }

  // Generatng decompilation io text
  std::ofstream fd;
  fd.open(outLLVMPath.c_str(), ios::out | ios::app);
  fd << Body.str();
  fd << "}\n";
  fd << Defns.str();
  fd.close();

  Console::msg() << "Decompiling: Done.\n\n";
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
bool CompositionalDecompiler::run_command(const string &cmd, bool ret_stream,
                                          redi::ipstream **retval) {
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

  if (!ret_stream) {
    delete stream;
  } else {
    assert(retval && "NULL VALUE PASSED");
    *retval = stream;
  }
  // return stream;
  return true;
}

int CompositionalDecompiler::getMcSemaIndices(const R &reg) {
  R64 r = r_to_r64(reg);
  switch (r) {
  case Constants::rax():
    return 1;
  case Constants::rbx():
    return 3;
  case Constants::rcx():
    return 5;
  case Constants::rdx():
    return 7;
  case Constants::rsi():
    return 9;
  case Constants::rdi():
    return 11;
  case Constants::rsp():
    return 13;
  case Constants::rbp():
    return 15;
  case Constants::r8():
    return 17;
  case Constants::r9():
    return 19;
  case Constants::r10():
    return 21;
  case Constants::r11():
    return 23;
  case Constants::r12():
    return 25;
  case Constants::r13():
    return 27;
  case Constants::r14():
    return 29;
  case Constants::r15():
    return 31;
  // case Constants::rip():
  //  return 33;
  default:
    Console::error(1) << reg << "\n";
    assert(0 && "Unknown register\n");
  }
  return -1;
}

int CompositionalDecompiler::getMcSemaIndices(const Sse &reg) { return -1; }

string CompositionalDecompiler::findFileForOpcode(
    x64asm::Instruction instr, const string &singleInstrDecompPath) {

  string potDir(singleInstrDecompPath);
  stringstream ss_opcode;
  ss_opcode << instr.get_opcode();

  Console::msg() << "Finding template file for " << ss_opcode.str() << "...\n";

  if (is_any_operand_mem_type(instr)) {
    potDir += "/memory-variants/";
  } else if (is_any_operand_imm_type(instr)) {
    potDir += "/immediate-variants/";
  } else if (is_any_operand_gpr_type(instr)) {
    potDir += "/register-variants/";
  } else {
    potDir += "/system-variants/";
  }

  Console::msg() << "\tFound Dir: " << potDir << "\n";

  DIR *dir;
  struct dirent *ent;
  if ((dir = opendir(potDir.c_str())) == NULL) {
    Console::error(1) << "Cannot open " << potDir << "\n";
    exit(1);
    return "";
  }

  /* print all the files and directories within directory */
  while ((ent = readdir(dir)) != NULL) {
    if (ent->d_name == ss_opcode.str()) {
      Console::msg() << "\tFound Path: " << potDir + ss_opcode.str() << "\n\n";
      return potDir + ss_opcode.str();
    }
  }
  closedir(dir);

  Console::error(1) << "Cannot find template file for " << ss_opcode.str()
                    << "\n";
  exit(1);
  return "";
}
/*********************************************************************
************************* General Utilities **************************
*********************************************************************/
string tempfile(const string &temp) {
  vector<char> v(temp.begin(), temp.end());
  v.push_back('\0');

  // const auto fd = mkstemp(v.data());
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

x64asm::R64 r_to_r64(const x64asm::R &reg) {
  size_t idx = reg;
  if (reg.type() == Type::RH) {
    return Constants::r64s()[idx - 4];
  }
  return Constants::r64s()[idx];
}

// stringstream &operator<<(stringstream &ss, redi::ipstream &ips) {
//  string line;
//  while (getline(ips, line)) {
//    ss << line;
//  }
//  return ss;
//}

vector<string> &extractFromStream(vector<string> &ss, redi::ipstream &ips) {
  string line;
  while (getline(ips, line)) {
    // ss << line;
    // ss << "\n";
    ss.push_back(line);
  }
  return ss;
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
