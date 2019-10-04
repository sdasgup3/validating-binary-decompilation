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
#include "src/decompiler_setup/decompiler_setup.h"
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

CompositionalDecompiler::CompositionalDecompiler(
    const string &inPath, const string &outLLVMPath,
    const string &extractedFunction, const string &singleInstrDecompPath,
    const string &workdir, bool flat_binary) {
  this->flat_binary = flat_binary;
  this->extractedFunction = extractedFunction;
  this->singleInstrDecompPath = singleInstrDecompPath;
  this->scriptsPath = "/home/sdasgup3/Github/validating-binary-decompilation/"
                      "single_instruction_translation_validation/scripts/";
  this->workdir = workdir;

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
      assert(!labelDefn2RIP.count(ss.str()) && "Duplicate label found");
      labelDefn2RIP[ss.str()] = rip_offset_ + *i;
      rip2LabelDefn[rip_offset_ + *i] = ss.str();
    }
  }
#ifdef CDDEBUG
  for (auto p : labelDefn2RIP) {
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

void CompositionalDecompiler::decompileInstruction(x64asm::Instruction instr,
                                                   uint64_t currRIP,
                                                   uint64_t currSize) {

  stringstream ss_instr;
  ss_instr << instr;

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  if (instr.is_jmp()) {
    // Generate branching code for uncond jmp instructions
    Body << "%call" << currRIP << "= call %struct.Memory* @routine_"
         << normalizedInstructionName
         << "(%struct.State* %0, i64  0, %struct.Memory* %2)" << endl
         << endl;

    auto lbl = instr.get_operand<Label>(0);
    stringstream ss_label;
    ss_label << lbl;
    Body << "\tbr label %block" << ss_label.str() << "\n\n";

  } else if (instr.is_jcc()) {
    // Generate branching code for cond jmp instructions
    auto lbl = instr.get_operand<Label>(0);
    stringstream ss_label;
    ss_label << lbl;

    if (!labelDefn2RIP.count(ss_label.str())) {
      Console::error(1) << "Label: " << ss_label.str() << endl;
      assert(false && "Missing address for label defn\n");
    }

    uint64_t falThrouAddress = currRIP + currSize;
    uint64_t falThrouOffset = currSize;
    uint64_t targetAddress = labelDefn2RIP.at(ss_label.str());
    uint64_t targetOffset = targetAddress - currRIP;

    Body << "%call" << currRIP << "= call i1 @routine_"
         << normalizedInstructionName
         << "(%struct.State* %0, i64  0, %struct.Memory* %2, i64 "
         << targetOffset << ", i64 " << falThrouOffset << ")" << endl
         << endl;

    // Generate branching code for any jmp instructions
    if (!rip2LabelDefn.count(falThrouAddress)) {
      Console::error(1) << "Address: " << falThrouAddress << endl;
      assert(false && "Missing label defintion for address\n");
    }

    Body << "\tbr i1 "
         << "%call" << currRIP << ", label %block" << ss_label.str()
         << ", label %block" << rip2LabelDefn.at(falThrouAddress) << "\n\n";
  } else {
    // Other instructions
    Body << "%call" << currRIP << "= call %struct.Memory* @routine_"
         << normalizedInstructionName
         << "(%struct.State* %0, i64  0, %struct.Memory* %2)" << endl
         << endl;
  }

  /*
  ** Generate the defns.
  */
  if (ICache.count(normalizedInstructionName))
    return;

  if (!createSetup(instr, workdir, scriptsPath)) {
    exit(1);
  }
  auto local_defn = runSetup(instr, workdir, scriptsPath);

  // Special handling for conditional jumps
  vector<string> mod_def_jcc;
  bool funcSignature = true;
  regex r(".* = add.*, 2$");
  int count = 0;

  if (instr.is_jcc()) {
    for (auto &line : local_defn) {

      if (funcSignature && string::npos == line.find("routine_")) {
        mod_def_jcc.push_back(line);
        continue;
      }

      if (funcSignature) {
        mod_def_jcc.push_back("define i1 @routine_jg_label(%struct.State*  , "
                              "i64, %struct.Memory* , i64 %rel_off1, i64 "
                              "%rel_off2) {");
        funcSignature = false;
      }

      std::smatch m;
      if (std::regex_search(line, m, r)) {
        if (count == 0) {
          mod_def_jcc.push_back(
              std::regex_replace(line, std::regex(", 2$"), ", %rel_off1"));
        }

        if (count == 1) {
          mod_def_jcc.push_back(
              std::regex_replace(line, std::regex(", 2$"), ", %rel_off2"));
        }

        count++;
        continue;
      }

      if (string::npos != line.find("ret")) {
        mod_def_jcc.push_back("%13 = load i8, i8* %BRANCH_TAKEN");
        mod_def_jcc.push_back("%14 = icmp eq i8 %13, 1");
        mod_def_jcc.push_back("ret i1 %14");
        mod_def_jcc.push_back("}");
        break;
      }

      mod_def_jcc.push_back(line);
    }

    for (auto line : mod_def_jcc) {
      Defns << line << "\n";
    }

  } else {

    for (auto line : local_defn) {
      Defns << line << "\n";
    }
  }

  ICache.insert(normalizedInstructionName);
}

void CompositionalDecompiler::decompileFunction(
    const string &extractedFunction) {

  Console::msg() << "Decompiling Function: " + extractedFunction + "...\n";

  Body << "define %struct.Memory* @" + extractedFunction +
              "(%struct.State* noalias , i64, "
              "%struct.Memory* noalias) alwaysinline  {\n";

  // Iterate over instructions to
  // 1. generate calls to specialized instruction semantics.
  // 2. generate defintion of specialized instruction semantics.
  x64asm::Code code_ = cfg->get_code();
  auto fxn = cfg->get_function();
  uint64_t rip_offset_ = fxn.get_rip_offset();

  size_t code_it = 0;
  size_t code_ite = code_.size();
  auto rip_offset_it = fxn.hex_offset_begin();
  auto rip_offset_ite = fxn.hex_offset_end();
  auto size_it = fxn.hex_size_begin();
  auto size_ite = fxn.hex_size_end();

  // Clean up the workdir
  // if (!run_command("rm -rf " + workdir + "/*"))
  //  return;

  for (; code_it < code_ite; code_it++, rip_offset_it++, size_it++) {

    assert(rip_offset_it != rip_offset_ite && size_it != size_ite &&
           "CompositionalDecompiler::decompile: Problem with iterators");

    auto instr = code_[code_it];
    auto opcode = instr.get_opcode();
    auto currRIP = rip_offset_ + *rip_offset_it;
    auto currSize = *size_it;

    Console::msg() << "\n\nDecompiling instr:" << instr << "...\n";

    // Generate comment
    stringstream ss_code, ss_rip, ss_size, ss_opcode;

    ss_code << instr;
    ss_rip << currRIP;
    ss_size << currSize;
    ss_opcode << opcode;

    Body << "\t; Code: " << ss_code.str();
    Body << "\t RIP: " << hex << showbase << ss_rip.str();
    Body << "\t Bytes: " << dec << ss_size.str();
    Body << "\n";

    // For label defntion (except the function name) generate LLVM branch
    // instruction
    if (opcode == LABEL_DEFN) {
      if (code_it != 0)
        Body << "block_L" << hex << ss_rip.str() << ":\n";
      continue;
    }

    // Generate call to specialized semantics defintion
    decompileInstruction(instr, currRIP, currSize);
  }

  Console::msg() << "Decompiling Function: " + extractedFunction + " Done.\n\n";
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
  if (!stoke::run_command(cmd)) {
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

// string extractNummbersFromLabel(const string &str) {
//  string retval("");
//  auto pos = str.find('L');
//  return str.substr(pos + 1, str.size() - pos);
//}

// x64asm::R64 r_to_r64(const x64asm::R &reg) {
//  size_t idx = reg;
//  if (reg.type() == Type::RH) {
//    return Constants::r64s()[idx - 4];
//  }
//  return Constants::r64s()[idx];
//}

// Add nodes corresponding to instrcutons
// for (auto i = ++cfg->reachable_begin(), ie = cfg->reachable_end(); i != ie;
//     ++i) {
//  for (size_t j = 0, je = cfg->num_instrs(*i); j < je; ++j) {

//    auto idx = cfg->get_index({*i, j});
//    const auto instr = cfg->get_code()[idx];
//    std::cout << j << "::" << instr << "::" << instr.get_opcode() << "\n";
//  }
//}

// std::cout << cfg->get_function();

// string CompositionalDecompiler::findFileForOpcode(
//    x64asm::Instruction instr, const string &singleInstrDecompPath) {
//
//  string potDir(singleInstrDecompPath);
//  stringstream ss_opcode;
//  ss_opcode << instr.get_opcode();
//
//  Console::msg() << "Finding template file for " << ss_opcode.str() <<
//  "...\n";
//
//  if (is_any_operand_mem_type(instr)) {
//    potDir += "/memory-variants/";
//  } else if (is_any_operand_imm_type(instr)) {
//    potDir += "/immediate-variants/";
//  } else if (is_any_operand_gpr_type(instr)) {
//    potDir += "/register-variants/";
//  } else {
//    potDir += "/system-variants/";
//  }
//
//  Console::msg() << "\tFound Dir: " << potDir << "\n";
//
//  DIR *dir;
//  struct dirent *ent;
//  if ((dir = opendir(potDir.c_str())) == NULL) {
//    Console::error(1) << "Cannot open " << potDir << "\n";
//    exit(1);
//    return "";
//  }
//
//  /* print all the files and directories within directory */
//  while ((ent = readdir(dir)) != NULL) {
//    if (ent->d_name == ss_opcode.str()) {
//      Console::msg() << "\tFound Path: " << potDir + ss_opcode.str() <<
//      "\n\n";
//      return potDir + ss_opcode.str();
//    }
//  }
//  closedir(dir);
//
//  Console::error(1) << "Cannot find template file for " << ss_opcode.str()
//                    << "\n";
//  exit(1);
//  return "";
//}
// int CompositionalDecompiler::getMcSemaIndices(const R &reg) {
//  R64 r = r_to_r64(reg);
//  switch (r) {
//  case Constants::rax():
//    return 1;
//  case Constants::rbx():
//    return 3;
//  case Constants::rcx():
//    return 5;
//  case Constants::rdx():
//    return 7;
//  case Constants::rsi():
//    return 9;
//  case Constants::rdi():
//    return 11;
//  case Constants::rsp():
//    return 13;
//  case Constants::rbp():
//    return 15;
//  case Constants::r8():
//    return 17;
//  case Constants::r9():
//    return 19;
//  case Constants::r10():
//    return 21;
//  case Constants::r11():
//    return 23;
//  case Constants::r12():
//    return 25;
//  case Constants::r13():
//    return 27;
//  case Constants::r14():
//    return 29;
//  case Constants::r15():
//    return 31;
//  // case Constants::rip():
//  //  return 33;
//  default:
//    Console::error(1) << reg << "\n";
//    assert(0 && "Unknown register\n");
//  }
//  return -1;
//}
//
// int CompositionalDecompiler::getMcSemaIndices(const Sse &reg) { return -1; }
// bool CompositionalDecompiler::sanity_check_template_instruction(
//    x64asm::Instruction i1, x64asm::Instruction i2) {
//  if ((i1.get_opcode() != i2.get_opcode()) || (i1.arity() != i2.arity()))
//    return false;
//
//  for (size_t i = 0; i < i1.arity(); i++) {
//    auto instr_t = i1.type(i);
//    auto template_instr_t = i2.type(i);
//
//    if (instr_t != template_instr_t) {
//      return false;
//    }
//  }
//
//  return true;
//}
