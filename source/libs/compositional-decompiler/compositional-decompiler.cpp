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
static string extractFuncName(const string &);
/** Is this character sequence a hex string? */
static bool is_hex_string(const string &s);
// Convert a hex string to an int */
static uint64_t hex_to_int(const string &s);
static vector<std::string> split(const std::string &str, char delim);
static string trim(const std::string &str, char delim = ' ');

typedef pair<bool, string> isBuiltInFuncCallRetType;
static isBuiltInFuncCallRetType isBuiltInFuncCall(const string &calledFunc);

CompositionalDecompiler::CompositionalDecompiler(
    const string &inPath, const string &outLLVMPath,
    const string &extractedFunction, const string &singleInstrDecompPath,
    // const string &workdir,
    bool reloc_info_available, bool force_artifact_gen) {

  this->binaryPath = inPath;
  this->reloc_info_available = reloc_info_available;
  this->force_artifact_gen = force_artifact_gen;
  this->extractedFunction = extractedFunction;
  if (singleInstrDecompPath == "") {
    Console::error(1) << "Empty compd cache!!\n";
  }
  this->singleInstrDecompPath = singleInstrDecompPath;
  this->scriptsPath =
      "${HOME}/Github/validating-binary-decompilation/tests/scripts/";

  // if (workdir == "") {
  //   string cacheDir(getenv("HOME"));
  //   cacheDir += "/Github/validating-binary-decompilation/tests/"
  //               "compositional_artifacts_single_instruction_decompilation/";
  //   this->workdir = cacheDir;
  // } else {
  //   this->workdir = workdir;
  // }

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
      x64asm::Label lbl = code_[code_it].get_operand<Label>(0);

      assert(!labelDefn2RIP.count(lbl.get_text()) && "Duplicate label found");

      labelDefn2RIP[lbl.get_text()] = rip_offset_ + *i;
      rip2LabelDefn[rip_offset_ + *i] = lbl.get_text();
    }
  }
#ifdef CDDEBUG
  for (auto p : labelDefn2RIP) {
    Console::msg() << p.first << "->" << p.second << "\n";
  }
  Console::msg() << "\n";
#endif

  Console::msg() << "Computing Label PC values: Done.\n\n";
}

static void createCFG(const FunctionCallbackData &data, void *arg) {

  struct CallbackValue *cbv = static_cast<struct CallbackValue *>(arg);

  // if (!cbv->extractedFunction.empty() &&
  //    data.tunit.get_name() != cbv->extractedFunction) {
  //  return;
  //} else if (!data.parse_error) {

  // DSAND: TODO: The checking for data.tunit.get_name() ==
  // cbv->extractedFunction
  // is delegated to the disassembler.
  // So we do not need this arg anymore.

  if (!data.parse_error) {
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
  d.set_flat_binary(false);
  d.disassemble(inPath, extractedFunction);

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

vector<string>
CompositionalDecompiler::uniquifyFuncDefns(const vector<string> &local_defn) {
  bool skipFunction = false;
  vector<string> retval;

  for (auto &line : local_defn) {
    if (string::npos != line.find("define")) {
      auto funcName = extractFuncName(line);
      if (FuncCache.count(funcName)) {
        Console::msg() << "FuncCache skipped: " << funcName << endl;
        skipFunction = true;
      } else {
        Console::msg() << "FuncCache inserted: " << funcName << endl;
        FuncCache.insert(funcName);
      }
    }

    if (skipFunction && string::npos != line.find("}")) {
      skipFunction = false;
      continue;
    }

    if (skipFunction)
      continue;

    retval.push_back(line);
  }

  return retval;
}

vector<string>
CompositionalDecompiler::collectDeclarations(const vector<string> &local_defn) {
  std::smatch m;
  size_t i = 0;
  for (auto &line : local_defn) {
    if (string::npos != line.find("define") ||
        string::npos != line.find("declare")) {
      break;
    }

    if (std::regex_search(line, m, std::regex("(.*) = (.*)"))) {
      if (DeclCache.count(m[1])) {
        if (m[2] != DeclCache.at(m[1])) {
          Console::msg() << "Multiple defintions of " << m[1] << "\n";
        }
      } else {
        DeclCache[m[1]] = m[2];
        TypeDecls << line << endl;
      }
    }
    i++;
  }

  return vector<string>(local_defn.begin() + i, local_defn.end());
}

vector<string>
CompositionalDecompiler::handleJMPDefns(const vector<string> &local_defn) {
  vector<string> retval;
  bool funcSignature = true;
  int count = 0;

  std::smatch m;
  for (auto &line : local_defn) {

    if (funcSignature && string::npos == line.find("routine_")) {
      retval.push_back(line);
      continue;
    }

    if (funcSignature) {
      auto repl_line = std::regex_replace(
          line, std::regex("(define.*)struct.Memory.*"),
          "$1struct.Memory*, i64 %rel_off1, i64 %rel_off2) {");
      retval.push_back(repl_line);
      funcSignature = false;
      continue;
    }

    if (std::regex_search(line, m, std::regex(".* = add.*, 2$"))) {
      if (count == 0) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 2$"), ", %rel_off1"));
      } else if (count == 1) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 2$"), ", %rel_off2"));
      } else {
        retval.push_back(line);
      }

      count++;
      continue;
    }

    retval.push_back(line);
  }

  return retval;
}

vector<string>
CompositionalDecompiler::handleJCCDefns(const vector<string> &local_defn) {
  vector<string> retval;
  bool funcSignature = true;
  int count = 0;

  std::smatch m;
  for (auto &line : local_defn) {

    if (funcSignature && string::npos == line.find("routine_")) {
      retval.push_back(line);
      continue;
    }

    if (funcSignature) {
      // retval.push_back("define i1 @routine_jg_label(%struct.State*  ,
      // "
      //                      "i64, %struct.Memory* , i64 %rel_off1, i64 "
      //                      "%rel_off2) {");
      auto repl_line =
          std::regex_replace(line, std::regex("(define.*)struct.Memory.*"),
                             "$1struct.Memory*, i8* %BRANCH_TAKEN, i64 "
                             "%rel_off1, i64 %rel_off2, i64 %rel_off3) {");
      // repl_line = std::regex_replace(
      //    repl_line, std::regex("define %struct.Memory\\*"), "define i1");
      retval.push_back(repl_line);
      funcSignature = false;
      continue;
    }

    if (std::regex_search(line, m, std::regex(".*BRANCH_TAKEN = alloca.*"))) {
      continue;
    }

    if (std::regex_search(line, m, std::regex(".*store.*BRANCH_TAKEN.*"))) {
      continue;
    }

    if (std::regex_search(line, m, std::regex(".* = add.*, 2$"))) {
      if (count == 0) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 2$"), ", %rel_off1"));
      } else if (count == 1) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 2$"), ", %rel_off2"));
      } else if (count == 2) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 2$"), ", %rel_off3"));
      } else {
        retval.push_back(line);
      }

      count++;
      continue;
    }

    // if (string::npos != line.find("ret")) {
    //  retval.push_back("  %LD = load i8, i8* %BRANCH_TAKEN");
    //  retval.push_back("  %CMP = icmp eq i8 %LD, 1");
    //  retval.push_back("  ret i1 %CMP");
    //  retval.push_back("}\n");
    //  break;
    //}

    retval.push_back(line);
  }

  return retval;
}

vector<string>
CompositionalDecompiler::handleCALLDefns(const vector<string> &local_defn) {
  vector<string> retval;
  bool funcSignature = true;
  int count = 0;

  std::smatch m;
  for (auto &line : local_defn) {

    if (funcSignature && string::npos == line.find("routine_")) {
      retval.push_back(line);
      continue;
    }

    if (funcSignature) {
      auto repl_line =
          std::regex_replace(line, std::regex("(define.*)struct.Memory.*"),
                             "$1struct.Memory*, i64 "
                             "%rel_off1, i64 %rel_off2, i64 %rel_off3) {");
      retval.push_back(repl_line);
      funcSignature = false;
      continue;
    }

    if (std::regex_search(line, m, std::regex(".* = add.*, 5$"))) {
      if (count == 0) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 5$"), ", %rel_off1"));
      } else if (count == 1) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 5$"), ", %rel_off2"));
      } else if (count == 2) {
        retval.push_back(
            std::regex_replace(line, std::regex(", 5$"), ", %rel_off3"));
      } else {
        retval.push_back(line);
      }

      count++;
      continue;
    }

    retval.push_back(line);
  }

  return retval;
}

/*
** For local definition of routine_shlq__0x1___rdi,
** ...
** %11 = add i64 %10, 3 <--- this need to be updated to %11 = add i64 %10, 4
** store i64 %11, i64* %PC
** ...
**
*/
vector<string> CompositionalDecompiler::handleInstrSizeMismatch(
    const vector<string> &local_defn, uint64_t currSize) {
  vector<string> retval;

  std::smatch m;
  auto sanity_search = ", " + to_string(currSize) + "$";
  auto replace_with = ", " + to_string(currSize);
  for (auto &line : local_defn) {

    if (std::regex_search(line, m, std::regex("store i64 .*PC$"))) {
      auto prev_line = retval[retval.size() - 1];
      if (std::regex_search(prev_line, m, std::regex("add"))) {
        if (false ==
            std::regex_search(prev_line, m, std::regex(sanity_search))) {
          retval[retval.size() - 1] = std::regex_replace(
              prev_line, std::regex(", [0-9][0-9]*$"), replace_with);
        }
      }
    }
    retval.push_back(line);
  }

  return retval;
}

void CompositionalDecompiler::computeRelocInfo() {

  if (!reloc_info_available)
    return;

  Console::msg() << "Computing Reloc Info ...\n";

  redi::ipstream *stream = NULL;
  stringstream cmd;
  cmd << "readelf --relocs " << binaryPath;
  vector<string> result;
  if (!stoke::run_command(cmd.str(), true, &stream)) {
    Console::error(1) << "Error: " << get_error() << endl;
    exit(1);
  }

  extractFromStream(result, *stream, false, false /* monitor error */);
  if (result.size() == 0) {
    Console::error(1) << "CompositionalDecompiler::computeRelocInfo::"
                         "readelf --relocs returns nothing"
                      << endl;
    exit(1);
  }

  bool search_begin = false;
  for (auto line : result) {
    if (string::npos != line.find("Relocation section")) {
      if (string::npos != line.find(".rela.text")) {
        search_begin = true;
      } else {
        search_begin = false;
      }
      continue;
    }
    if (string::npos != line.find("Offset") || line == "" ||
        search_begin == false) {
      continue;
    }

    auto entries = split(line, ' ');
    if (!entries.size()) {
      Console::error(1) << "CompositionalDecompiler::computeRelocInfo::"
                           "Failed to read offsetes"
                        << endl;
      exit(1);
    }
    relocInfo.push_back(stoul(entries[0], nullptr, 16));
  }

  // sort(relocInfo.begin(), relocInfo.end());
  Console::msg() << "Computing Reloc Info: Done.\n\n";
}

// Check if the constant is an address using the binary relocation info
// Check if any of the relocation offset of the binary `binaryPath` falls
// within the range of [currRIP, currRIP + currSize)
bool CompositionalDecompiler::checkConstantOrAddress(uint64_t currRIP,
                                                     uint64_t currSize) {
  if (!reloc_info_available)
    return false;

  uint64_t instrStart = currRIP;
  uint64_t instrEnd = currRIP + currSize;

  for (auto offset : relocInfo) {
    if (offset >= instrStart && offset < instrEnd)
      return true;
  }

  return false;
}

std::pair<string, string>
CompositionalDecompiler::createGlobalName(const string &expr, uint64_t currRIP,
                                          uint64_t currSize,
                                          uint16_t accessSize) {
  /* Create globals variables */
  string addrExpr = normalize_spaces(expr);
  // For example,
  // movsd 0xa43c(%rip), %xmm1
  // movsd 0xa43c(%rip), %xmm2
  // We have no way to distinguish the above two globals which for both
  // the cases is G_0xa43c__rip__type* @G_0xa43c__rip_
  // To make 'em distinct, we add the rip value to the type and global
  // var.
  auto effective_rip_str = "_rip__" + to_string(currRIP + currSize);
  addrExpr = regex_replace(addrExpr, regex("_rip"), effective_rip_str);

  if (DataSectioGlobalsCache.count(addrExpr)) {
    uint16_t pastSize = DataSectioGlobalsCache.at(addrExpr);
    if (accessSize > pastSize) {
      DataSectioGlobalsCache[addrExpr] = accessSize;
    }
  } else {
    DataSectioGlobalsCache[addrExpr] = accessSize;
  }

  string globalType = "%G_" + addrExpr + "_type";
  string globalName = "@G_" + addrExpr;

  return pair<string, string>(globalType, globalName);
}

/*
Task I:
  While compd composes each instruction's LLVM ir, it calls mcsema for
  decompiling each instruction.  If Mcsema interprets a constant operand of the
  instruction as an address, then it generates ptrtoint for it. We could have
  used their generated code for address type and address global. But as those
  type/names are generated in the context of a single instruction, they might
  get repeated and we need to disambiguate individual access.  Instead, the
  following function replaces those types and names to unique types and names.

Task II:
  As the single instruction decompilation does not have the whole program
  context, hence it might go wrong in case of globals.  To fix that, we use the
  binary relocation as the golden truth. With that the following cases might
  apprer

  For an immediate instruction wih a constant operand I,

   Relocation info inference | McSema's inference | Action
  --------------------------------------------------------
case 1:constant              |   constant         | do nothing
case 2:constant              |   address          | fix it
case 3:address               |   constant         | fix it
case 4:address               |   address          | fine

Note: As we are reusing the cache, it might happen that an data address which
is decompiled by McSema as an address and populated once, is resued later, but
this time the address could have been inferred differently (as a constant) by
McSema. But reusing the cahce forces compd to use the old and incorrect
inference.But that is not a problem as the above Task II course-corrects the
interpretation of McSema and does the right thing based on relocation
information.  In effect it does not matter what McSema infers about a single
insruction decompilation involving data acccess.

*/
vector<string> CompositionalDecompiler::handleDataSectionAccessDefns(
    x64asm::Instruction instr, const vector<string> &local_defn,
    uint64_t currRIP, uint64_t currSize) {
  if (!reloc_info_available) {
    Console::error(1) << "Use binary with reloation information" << endl;
  }

  bool isGlobalAccess = checkConstantOrAddress(currRIP, currSize);
  vector<string> retval;
  stringstream opr;

  // Extract the data access operand
  bool is_mem_opr_rip_offset = false;
  // int32_t rip_disp = 0;
  int32_t disp = 0;
  if (is_any_operand_mem_type(instr)) {
    // For data accesses like
    //  movsd Addr(%rip), %xmm0
    //  cvttsd2si Addr(%rip), %edi
    //  mov Constant, (%rbp); no need to handle
    auto memIndex = instr.mem_index();
    const Mem &M_OPR = instr.get_operand<Mem>(memIndex);
    is_mem_opr_rip_offset = M_OPR.rip_offset();
    disp = M_OPR.get_disp();
    opr << M_OPR;
  } else if (is_any_operand_imm_type(instr)) {
    // For data accesses like
    //  movq Addr, %rdi
    auto immIndex = instr.imm_index();
    const Imm &IMM_OPR = instr.get_operand<Imm>(immIndex);
    opr << IMM_OPR;
  } else {
    // TO DO
  }

  // Extract the access size
  // auto accessSize = instr.get_operand<Operand>(instr.arity() - 1).size();
  auto accessSize = instr.get_operand<Operand>(0).size();

  // If relocation information is available, then do the right thing!
  bool immOperand = false;
  uint64_t hexInt = 0;
  string hexIntStr = "";

  if (is_hex_string(opr.str())) {
    immOperand = true;
    hexInt = hex_to_int(opr.str());
    hexIntStr = to_string(hexInt);
  } else if (is_mem_opr_rip_offset) {
    isGlobalAccess = true;
    hexInt = currSize + disp;
    hexIntStr = to_string(hexInt);
  } else if (isGlobalAccess && disp != 0) {
    hexInt = disp;
    hexIntStr = to_string(hexInt);
  } else {
    // hack to accomodate the case
    // movq Addr, (%rdi)
    isGlobalAccess = false;
  }

  /* Modify single-instruction decompilation IR sequences to accomodate various
   * globall access changes*/
  std::smatch m;
  for (auto &line : local_defn) {
    if (regex_search(line, m, regex("ptrtoint"))) {

      if (!immOperand) {
        auto gName = createGlobalName(opr.str(), currRIP, currSize, accessSize);
        auto globalType = gName.first;
        auto globalName = gName.second;

        auto replace_str =
            "ptrtoint( " + globalType + "* " + globalName + " to";
        auto repl_line =
            regex_replace(line, regex("ptrtoint.*?to"), replace_str);
        retval.push_back(repl_line);

        continue;
      }

      if (isGlobalAccess) {
        // CASE 4: golden: address, mcsema: address
        Console::msg() << "Global Access Fix: " << hexIntStr
                       << " Relocation: Address, McSema: Address" << endl;

        auto gName = createGlobalName(opr.str(), currRIP, currSize, accessSize);
        auto globalType = gName.first;
        auto globalName = gName.second;

        // For movsd 0xb6(%rip), %xmm1
        // Mcsema SIV generates:
        // %11 = call %struct.Memory*
        // @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*
        // %2, %struct.State* %0, i8* %8, i64 add (i64 ptrtoint
        // (%seg_400514__eh_frame_hdr_type* @seg_400514__eh_frame_hdr to i64),
        // i64 34))
        // where we need to replace the ptrtoint.* with the defined globals.
        auto replace_str =
            "ptrtoint( " + globalType + "* " + globalName + " to";
        auto repl_line =
            regex_replace(line, regex("ptrtoint.*?to"), replace_str);
        retval.push_back(repl_line);
      } else {
        // CASE 2: golden: constant, mcsema: address
        Console::msg() << "Global Access Mismatch: " << hexIntStr
                       << " Relocation: Constant, McSema: Address" << endl;

        auto replace_str = hexIntStr;
        auto repl_line =
            regex_replace(line, regex("ptrtoint.*?to i64\\)"), replace_str);
        retval.push_back(repl_line);
      }

      continue;

    } else if (regex_search(line, m, regex(hexIntStr))) {
      if (isGlobalAccess) {
        // CASE 3: golden: address, mcsema: constant
        Console::msg() << "Global Access Mismatch: " << hexIntStr
                       << " Relocation: Address, McSema: Constant" << endl;

        auto gName = createGlobalName(opr.str(), currRIP, currSize, accessSize);
        auto globalType = gName.first;
        auto globalName = gName.second;

        //  cvttsd2si 0x20aa62(%rip), %edi
        //  Mcsema SIV generates: %7 = add i64 %PC, hexIntStr
        //  , where the entire add needed to be replaced in order
        // to match the mcsema decompilation.
        // lly for movsd 0xa95(%rip), %xmm0
        // Mcsema SIV generates:
        // %9 = load i64, i64* %PC
        // %10 = add i64 %9, 2717
        // where the entire add need to be replaced.
        string repl_line = line;
        if (is_mem_opr_rip_offset) {
          auto replace_str1 =
              "ptrtoint " + globalType + "* " + globalName + " to i64";
          repl_line = regex_replace(line, regex("add.*"), replace_str1);
        } else {
          //  movl Off, edi
          // Mcsema SIV generates:
          // %11 = call %struct.Memory* @CALL(%struct.Memory* %2, %struct.State*
          // %0, i64* %RDI, i64 4196052)
          //
          //  or cmpl 0x610250(,%rcx,4), %eax
          // Mcsema SIV generates:  %16 = add i64 %15, 6357584
          //
          // In both the cases we need to replace the constant only.
          auto replace_str2 =
              "ptrtoint( " + globalType + "* " + globalName + " to i64)";
          repl_line = regex_replace(repl_line, regex(hexIntStr), replace_str2);
        }

        retval.push_back(repl_line);
      } else {
        // CASE 1: golden: constant, mcsema: constant
        retval.push_back(line);
      }
      continue;
    }

    retval.push_back(line);
  }

  return retval;
}

string CompositionalDecompiler::handleJMPBodyCalls(x64asm::Instruction instr,
                                                   uint64_t currRIP,
                                                   uint64_t currSize) {
  stringstream ss_instr;
  ss_instr << instr;
  stringstream retval;

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  // Generate branching code for uncond jmp instructions
  auto lbl = instr.get_operand<Label>(0);
  stringstream ss_label;
  ss_label << lbl;

  // if (!labelDefn2RIP.count(ss_label.str())) {
  //   Console::error(1) << "Label: " << ss_label.str() << endl;
  //   assert(false && "Missing address for jmp label defn\n");
  // }

  // uint64_t targetAddress = labelDefn2RIP.at(ss_label.str());

  if (instr.get_target() == (uint64_t)-1) {
    Console::error(1) << "Missing target address for: " << instr << endl;
  }

  uint64_t targetAddress = instr.get_target();
  int32_t targetOffset = targetAddress - currRIP;

  // load
  Body << "  %loadMem_" << hex << currRIP
       << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
  // call
  Body << "  %call_" << hex << currRIP << " = call %struct.Memory* @routine_"
       << normalizedInstructionName
       << "(%struct.State* %0, i64  0, %struct.Memory* %loadMem_" << hex
       << currRIP << ", i64 " << dec << targetOffset << ", i64 " << dec
       << currSize << ")" << endl;
  // store
  Body << "  store %struct.Memory* %call_" << hex << currRIP
       << ", %struct.Memory** %MEMORY" << endl
       << endl;

  // Recognising tail call jumps
  if (isTargetOutsideFunctionBoundary(targetAddress)) {

    // Generting load from Mem
    Body << "  %loadMem2_" << hex << currRIP
         << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
    Body << "  %loadPC_" << hex << currRIP << " = load i64, i64* %3" << endl;

    // Generating call to actual function
    auto isBuiltIn = isBuiltInFuncCall(ss_label.str());
    if (isBuiltIn.first) {
      Body << "  %call2_" << hex << currRIP
           << " = tail call %struct.Memory* @ext_" << isBuiltIn.second
           << "(%struct.State* %0, i64  "
           << "%loadPC_" << hex << currRIP << ", %struct.Memory* %loadMem2_"
           << hex << currRIP << ")" << endl;
    } else {
      Body << "  %call2_" << hex << currRIP
           << " = tail call %struct.Memory* @sub_" << hex << targetAddress
           << lbl << "(%struct.State* %0, i64  "
           << "%loadPC_" << hex << currRIP << ", %struct.Memory* %loadMem2_"
           << hex << currRIP << ")" << endl;
    }

    // Generting store to Mem
    Body << "  store %struct.Memory* %call2_" << hex << currRIP
         << ", %struct.Memory** %MEMORY" << endl
         << endl;

    retval << "%call2_" << hex << currRIP;

    stringstream tmp;

    if (isBuiltIn.first) {
      // For builtin we already provide the definitions using static data file
      return retval.str();
    }

    tmp << "declare %struct.Memory* @sub_" << hex << targetAddress << lbl
        << "(%struct.State* noalias dereferenceable(3376), i64, "
           "%struct.Memory* "
           "noalias readnone returned)"
        << endl;
    if (!DeclCache.count(tmp.str())) {
      FuncDecls << tmp.str();
      DeclCache.insert(pair<string, string>(tmp.str(), ""));
    }

  } else {

    Body << "  br label %block_" << ss_label.str() << "\n\n";
    retval << "%call_" << hex << currRIP;
  }

  return retval.str();
}

string CompositionalDecompiler::handleJCCBodyCalls(x64asm::Instruction instr,
                                                   uint64_t currRIP,
                                                   uint64_t currSize) {
  stringstream ss_instr;
  ss_instr << instr;
  stringstream retval;

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  // Generate branching code for cond jmp instructions
  auto lbl = instr.get_operand<Label>(0);
  stringstream ss_label;
  ss_label << lbl;

  // if (!labelDefn2RIP.count(ss_label.str())) {
  //   Console::error(1) << "Label: " << ss_label.str() << endl;
  //   assert(false && "Missing address for jcc label defn\n");
  // }

  if (instr.get_target() == (uint64_t)-1) {
    Console::error(1) << "Missing target address for: " << instr << endl;
  }

  uint64_t falThrouAddress = currRIP + currSize;
  int32_t falThrouOffset = currSize;
  // uint64_t targetAddress = labelDefn2RIP.at(ss_label.str());
  uint64_t targetAddress = instr.get_target();
  int32_t targetOffset = targetAddress - currRIP;

  // load
  Body << "  %loadMem_" << hex << currRIP
       << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
  // call
  Body << "  %call_" << hex << currRIP << " = call %struct.Memory* @routine_"
       << normalizedInstructionName
       << "(%struct.State* %0, i64  0, %struct.Memory* %loadMem_" << hex
       << currRIP
       << ", i8* "
          "%BRANCH_TAKEN, i64 "
       << dec << targetOffset << ", i64 " << dec << falThrouOffset << ", i64 "
       << dec << currSize << ")" << endl;
  // store
  Body << "  store %struct.Memory* %call_" << hex << currRIP
       << ", %struct.Memory** %MEMORY" << endl
       << endl;

  // Generate branching code for any jmp instructions
  // If the `falThrouAddress` is the target of any x86 jmp, then we already
  // have a label associated with it; Else create new one.
  stringstream falThrouAddressLabel;
  if (!rip2LabelDefn.count(falThrouAddress)) {
    falThrouAddressLabel << hex << falThrouAddress;

    // branch cond access
    Body << "  %loadBr_" << hex << currRIP << " = load i8, i8* %BRANCH_TAKEN"
         << endl;
    Body << "  %cmpBr_" << hex << currRIP << " = icmp eq i8 %loadBr_" << hex
         << currRIP << ", 1" << endl;
    // branch
    Body << "  br i1 "
         << "%cmpBr_" << hex << currRIP << ", label %block_" << ss_label.str()
         << ", label %block_" << falThrouAddressLabel.str() << "\n\n";
    // label
    Body << "block_" << falThrouAddressLabel.str() << ":\n";
  } else {
    falThrouAddressLabel << hex << rip2LabelDefn.at(falThrouAddress);

    // branch cond access
    Body << "  %loadBr_" << hex << currRIP << " = load i8, i8* %BRANCH_TAKEN"
         << endl;
    Body << "  %cmpBr_" << hex << currRIP << " = icmp eq i8 %loadBr_" << hex
         << currRIP << ", 1" << endl;
    // branch
    Body << "  br i1 "
         << "%cmpBr_" << hex << currRIP << ", label %block_" << ss_label.str()
         << ", label %block_" << falThrouAddressLabel.str() << "\n\n";
  }
  retval << "%call_" << hex << currRIP;

  return retval.str();
}

isBuiltInFuncCallRetType isBuiltInFuncCall(const string &calledFunc) {
  if (calledFunc == ".abort_plt" || calledFunc == ".abs_plt" ||
      calledFunc == ".asin_plt" || calledFunc == ".atan_plt" ||
      calledFunc == ".atof_plt" || calledFunc == ".atoi_plt" ||
      calledFunc == ".atol_plt" || calledFunc == ".calloc_plt" ||
      calledFunc == ".clock_plt" || calledFunc == ".cosf_plt" ||
      calledFunc == ".cos_plt" || calledFunc == ".exit_plt" ||
      calledFunc == ".exp_plt" || calledFunc == ".fflush_plt" ||
      calledFunc == ".floor_plt" || calledFunc == ".fprintf_plt" ||
      calledFunc == ".fputs_plt" || calledFunc == ".free_plt" ||
      calledFunc == ".fwrite_plt" || calledFunc == ".getchar_plt" ||
      calledFunc == ".gettimeofday_plt" ||
      calledFunc == ".__isoc99_fscanf_plt" ||
      calledFunc == ".__isoc99_scanf_plt" ||
      calledFunc == ".__isoc99_sscanf_plt" || calledFunc == ".log_plt" ||
      calledFunc == ".lrand48_plt" || calledFunc == ".malloc_plt" ||
      calledFunc == ".memalign_plt" || calledFunc == ".memcpy_plt" ||
      calledFunc == ".memset_plt" || calledFunc == ".perror_plt" ||
      calledFunc == ".posix_memalign_plt" || calledFunc == ".pow_plt" ||
      calledFunc == ".printf_plt" || calledFunc == ".putchar_plt" ||
      calledFunc == ".puts_plt" || calledFunc == ".random_plt" ||
      calledFunc == ".rand_plt" || calledFunc == ".realloc_plt" ||
      calledFunc == ".seed48_plt" || calledFunc == ".sinf_plt" ||
      calledFunc == ".sin_plt" || calledFunc == ".sprintf_plt" ||
      calledFunc == ".sqrt_plt" || calledFunc == ".srand_plt" ||
      calledFunc == ".strcat_plt" || calledFunc == ".strcmp_plt" ||
      calledFunc == ".strcpy_plt" || calledFunc == ".strdup_plt" ||
      calledFunc == ".strlen_plt" || calledFunc == ".strncmp_plt" ||
      calledFunc == ".strtoll_plt" || calledFunc == ".tan_plt" ||
      calledFunc == ".time_plt" || calledFunc == ".ungetc_plt" ||
      calledFunc == ".pthread_join_plt" ||
      calledFunc == ".pthread_create_plt") {

    auto posnUC = calledFunc.find("_plt");
    return isBuiltInFuncCallRetType(true, calledFunc.substr(1, posnUC - 1));
  }

  return isBuiltInFuncCallRetType(false, "");
}

string CompositionalDecompiler::handleCALLBodyCalls(x64asm::Instruction instr,
                                                    uint64_t currRIP,
                                                    uint64_t currSize) {
  stringstream ss_instr;
  ss_instr << instr;
  stringstream retval;

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  // Generate code for call  instructions
  auto lbl = instr.get_operand<Label>(0);
  stringstream ss_label;
  ss_label << lbl;

  if (instr.get_target() == (uint64_t)-1) {
    Console::error(1) << "Missing target address for: " << instr << endl;
  }

  uint64_t targetAddress = instr.get_target();
  int32_t targetOffset = targetAddress - currRIP;

  // Generting load from Mem
  Body << "  %loadMem1_" << hex << currRIP
       << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
  // Generating call to semantics function
  Body << "  %call1_" << hex << currRIP << " = call %struct.Memory* @routine_"
       << normalizedInstructionName
       << "(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_" << hex
       << currRIP << ", i64 " << dec << targetOffset << ", i64 " << dec
       << currSize << ", i64 " << dec << currSize << ")" << endl;
  // Generting store to Mem
  Body << "  store %struct.Memory* %call1_" << hex << currRIP
       << ", %struct.Memory** %MEMORY" << endl
       << endl;

  // Generting load from Mem
  Body << "  %loadMem2_" << hex << currRIP
       << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
  Body << "  %loadPC_" << hex << currRIP << " = load i64, i64* %3" << endl;

  // Generating call to actual function
  auto isBuiltIn = isBuiltInFuncCall(ss_label.str());
  if (isBuiltIn.first) {
    Body << "  %call2_" << hex << currRIP << " = call %struct.Memory* @ext_"
         << isBuiltIn.second << "(%struct.State* %0, i64  "
         << "%loadPC_" << hex << currRIP << ", %struct.Memory* %loadMem2_"
         << hex << currRIP << ")" << endl;
  } else {
    Body << "  %call2_" << hex << currRIP << " = call %struct.Memory* @sub_"
         << hex << targetAddress << lbl << "(%struct.State* %0, i64  "
         << "%loadPC_" << hex << currRIP << ", %struct.Memory* %loadMem2_"
         << hex << currRIP << ")" << endl;
  }

  // Generting store to Mem
  Body << "  store %struct.Memory* %call2_" << hex << currRIP
       << ", %struct.Memory** %MEMORY" << endl
       << endl;

  retval << "%call2_" << hex << currRIP;

  stringstream tmp;

  if (isBuiltIn.first) {
    // For builtin we already provide the definitions using static data file
    return retval.str();
  }

  // Decls
  // if (assume_none_decl_retval) {
  //   tmp << "declare %struct.Memory* @sub_" << hex << targetAddress << lbl
  //       << "(%struct.State* noalias dereferenceable(3376), i64, "
  //          "%struct.Memory* "
  //          "noalias)"
  //       << endl;
  // } else {
  tmp << "declare %struct.Memory* @sub_" << hex << targetAddress << lbl
      << "(%struct.State* noalias dereferenceable(3376), i64, "
         "%struct.Memory* "
         "noalias readnone returned)"
      << endl;
  // }
  if (!DeclCache.count(tmp.str())) {
    FuncDecls << tmp.str();
    DeclCache.insert(pair<string, string>(tmp.str(), ""));
  }

  return retval.str();
}

string CompositionalDecompiler::handleBodyCalls(x64asm::Instruction instr,
                                                uint64_t currRIP,
                                                uint64_t currSize) {
  stringstream ss_instr;
  ss_instr << instr;
  stringstream retval;

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  // Other instructions
  // load
  Body << "  %loadMem_" << hex << currRIP
       << " = load %struct.Memory*, %struct.Memory** %MEMORY" << endl;
  // call
  Body << "  %call_" << hex << currRIP << " = call %struct.Memory* @routine_"
       << normalizedInstructionName
       << "(%struct.State* %0, i64  0, %struct.Memory* %loadMem_" << hex
       << currRIP << ")" << endl;
  // store
  Body << "  store %struct.Memory* %call_" << hex << currRIP
       << ", %struct.Memory** %MEMORY" << endl
       << endl;

  retval << "%call_" << hex << currRIP;

  return retval.str();
}

string CompositionalDecompiler::decompileInstruction(x64asm::Instruction instr,
                                                     uint64_t currRIP,
                                                     uint64_t currSize) {

  stringstream ss_instr;
  ss_instr << instr;
  string retval("");

  /*
  ** Generate the function body with calls to specialized instr defns.
  */
  auto normalizedInstructionName = normalize_spaces(ss_instr.str());

  if (instr.is_jmp()) {
    retval = handleJMPBodyCalls(instr, currRIP, currSize);
  } else if (instr.is_jcc()) {
    retval = handleJCCBodyCalls(instr, currRIP, currSize);
  } else if (instr.is_any_call()) {
    retval = handleCALLBodyCalls(instr, currRIP, currSize);
  } else {
    retval = handleBodyCalls(instr, currRIP, currSize);
  }

  /*
  ** Generate the defns.
  */
  if (!createSetup(instr, singleInstrDecompPath, scriptsPath,
                   force_artifact_gen)) {
    exit(1);
  }
  auto full_defn =
      runSetup(instr, singleInstrDecompPath, scriptsPath, force_artifact_gen);

  // Collect the various declarations and return the definition w/o the
  // declarations
  auto local_defn = collectDeclarations(full_defn);

  // Uniquify function definitions
  auto uniq_local_defn = uniquifyFuncDefns(local_defn);

  vector<string> mod_def = uniq_local_defn;

  if (instr.is_jcc()) {
    mod_def = handleJCCDefns(mod_def);
  }
  if (instr.is_jmp()) {
    mod_def = handleJMPDefns(mod_def);
  }
  if (instr.is_any_call()) {
    mod_def = handleCALLDefns(mod_def);
  }

  // For instruction families of "shl", "shr", "sal", "sar", "rcl", "rcr",
  // "rol", "ror"
  // while instr is 4 byte "shl $0x1, %rdi", then the local_defn has the
  // implementation
  // of the 3 byte variant "shl %rdi". As a result, we got a mismatch against
  // the mcsema decompilation
  // w.r.t the PC update. The following is to fix the PC update.

  if ((string::npos != normalizedInstructionName.find("shl", 0)) ||
      (string::npos != normalizedInstructionName.find("shr", 0)) ||
      (string::npos != normalizedInstructionName.find("sal", 0)) ||
      (string::npos != normalizedInstructionName.find("sar", 0)) ||
      (string::npos != normalizedInstructionName.find("rcl", 0)) ||
      (string::npos != normalizedInstructionName.find("rcr", 0)) ||
      (string::npos != normalizedInstructionName.find("rol", 0)) ||
      (string::npos != normalizedInstructionName.find("ror", 0))) {
    mod_def = handleInstrSizeMismatch(mod_def, currSize);
  }

  if (is_any_operand_mem_type(instr) || is_any_operand_imm_type(instr)) {
    mod_def = handleDataSectionAccessDefns(instr, mod_def, currRIP, currSize);
  }

  for (auto line : mod_def) {
    Defns << line << "\n";
  }

  return retval;
}

bool CompositionalDecompiler::isTargetOutsideFunctionBoundary(uint64_t target) {
  auto fxn = cfg->get_function();
  uint64_t rip_offset_ = fxn.get_rip_offset();
  auto rip_offset_it = fxn.hex_offset_begin();

  auto funcStart = rip_offset_ + *rip_offset_it;

  // auto size_it = fxn.hex_size_begin();
  // for (; rip_offset_it < rip_offset_ite; rip_offset_it++, size_it++) {

  //   auto currRIP = rip_offset_ + *rip_offset_it;
  //   auto currSize = *size_it;
  auto rip_offset_ite = fxn.hex_offset_end();
  auto size_ite = fxn.hex_size_end();
  auto funcEnd = rip_offset_ + *(rip_offset_ite - 1) + *(size_ite - 1);

  return !(target >= funcStart && target < funcEnd);
}

string
CompositionalDecompiler::decompileFunction(const string &extractedFunction) {

  // Generate Preemble
  Console::msg() << "Decompiling Function: " + extractedFunction + "...\n";

  Body << "define %struct.Memory* @" + extractedFunction +
              "(%struct.State* noalias , i64, "
              "%struct.Memory* noalias) alwaysinline  {\n";
  Body << "entry:" << endl;
  Body << "  %3 = getelementptr inbounds %struct.State, %struct.State* %0, "
          "i64 "
          "0, i32 6, i32 33, i32 0, i32 0"
       << endl;
  Body << "  store i64 %1, i64* %3, align 8" << endl;
  Body << "  %BRANCH_TAKEN = alloca i8, align 1" << endl;
  Body << "  store i8 0, i8* %BRANCH_TAKEN, align 1" << endl;
  Body << "  %MEMORY = alloca %struct.Memory*, align 8" << endl;
  Body << "  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8"
       << endl
       << endl;

  // Iterate over instructions to
  // 1. generate calls to specialized instruction semantics.
  // 2. generate defintion of specialized instruction semantics.
  x64asm::Code code_ = cfg->get_code();
  auto fxn = cfg->get_function();
  uint64_t rip_offset_ = fxn.get_rip_offset();
  string retval("");

  size_t code_it = 0;
  size_t code_ite = code_.size();
  auto rip_offset_it = fxn.hex_offset_begin();
  auto rip_offset_ite = fxn.hex_offset_end();
  auto size_it = fxn.hex_size_begin();
  auto size_ite = fxn.hex_size_end();

  // Find trailing nops
  // for (auto it = code_ite - 1;; it--) {
  //   if (code_[it].is_any_nop()) {
  //     code_ite = it;

  //     if (it == 0)
  //       break;
  //     continue;
  //   }
  //   break;
  // }

  for (; code_it < code_ite; code_it++, rip_offset_it++, size_it++) {

    assert(rip_offset_it != rip_offset_ite && size_it != size_ite &&
           "CompositionalDecompiler::decompile: Problem with iterators");

    auto instr = code_[code_it];
    auto opcode = instr.get_opcode();
    auto currRIP = rip_offset_ + *rip_offset_it;
    auto currSize = *size_it;

    Console::msg() << "\n\nDecompiling instr:" << instr << "...\n";

    // Generate comment
    Body << "  ; Code: " << instr;
    Body << "\t RIP: " << hex << currRIP;
    Body << "\t Bytes: " << dec << currSize;
    Body << "\n";

    // For label defntion (except the function name) generate LLVM branch
    // instruction
    if (opcode == LABEL_DEFN) {
      if (code_it != 0) {

        Label lbl = instr.get_operand<Label>(0);
        if (code_[code_it - 1].is_any_jump() == false) {
          Body << "  br label %block_" << lbl.get_text() << "\n";
        }
        Body << "block_" << lbl.get_text() << ":\n\n";
      }
      continue;
    }

    // Generate call to specialized semantics defintion
    retval = decompileInstruction(instr, currRIP, currSize);
    Console::msg() << "Decompiling instr:" << instr << " Done...\n";
  }

  Console::msg() << "Decompiling Function: " + extractedFunction + " Done.\n\n";
  return retval;
}

void CompositionalDecompiler::decompile(string outLLVMPath) {

  Console::msg() << "Decompiling " + outLLVMPath + "\n";

  // Compute PC updates for each instruction
  computePCUpdates();
  // Compute reloc entries
  computeRelocInfo();
  vector<string> funcDecls;
  // Generating intricsics declarations
  redi::ipstream *stream = NULL;
  string cmd = "cat "
               "${HOME}/Github/validating-binary-decompilation/source/libs/"
               "compositional-decompiler/data/mcsema_template.txt";
  // + outLLVMPath;
  if (!stoke::run_command(cmd, true, &stream)) {
    Console::error(1) << "Error: " << get_error() << endl;
    return;
  }
  extractFromStream(funcDecls, *stream);
  delete stream;

  for (auto funcDecl : funcDecls) {
    FuncDecls << funcDecl << endl;
  }

  auto retval = decompileFunction(extractedFunction);
  if (has_error()) {
    Console::error(1) << error_message_;
    return;
  }

  if (retval == "") {
    Console::error(1) << error_message_;
    assert(false && "Problem with return value\n");
  }

  // Generate Data Sections globals
  generateDataSectionGlobals();

  // Generatng decompilation io text
  Console::msg() << "\n\nWriting to " << outLLVMPath << " ...\n";
  std::ofstream fd;
  // fd.open(outLLVMPath.c_str(), ios::out | ios::app);
  fd.open(outLLVMPath.c_str(), ios::out);

  fd << TypeDecls.str();
  fd << "\n; Function Declaraions\n";
  fd << FuncDecls.str();
  fd << "\n; Data Access Globals\n";
  fd << DataSectioGlobals.str();
  fd << "\n\n";
  fd << Body.str();
  fd << "  ret %struct.Memory* " << retval << "\n";
  fd << "}\n\n";
  fd << Defns.str();
  fd.close();

  Console::msg() << "Decompiling: Done.\n\n";
}

void CompositionalDecompiler::generateDataSectionGlobals() {
  // Templates:
  // %g_j_type = type <{ [4 x i8] }>
  // @g_j = global %g_j_type <{ [4 x i8] c"\01\00\00\00" }>

  for (auto p : DataSectioGlobalsCache) {
    auto addrExpr = p.first;
    auto accessSize = p.second;
    auto byteSize = accessSize / 8;

    string valueStr("");
    for (int i = 0; i < byteSize; i++) {
      valueStr += "\\00";
    }

    DataSectioGlobals << "%G_" << addrExpr << "_type = type <{ [" << byteSize
                      << " x i8] }>" << endl;
    DataSectioGlobals << "@G_" << addrExpr << "= global %G_" << addrExpr
                      << "_type <{ [" << byteSize << " x i8] c\"" << valueStr
                      << "\" }>" << endl;
  }
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

string extractFuncName(const string &name) {
  auto it1 = name.find("@");
  auto it2 = name.find("(");
  if (it1 == string::npos or it2 == string::npos) {
    Console::error(1) << "Function name not expected\n";
    return "";
  }

  return name.substr(it1 + 1, it2 - it1 - 1);
}

/** Is this character sequence a hex string? */
bool is_hex_string(const string &s) {
  string str(s);
  if (s[0] == '$') {
    str = str.substr(1, str.size() - 1);
  }
  for (auto c : str) {
    if (c == 'x' || c == 'X')
      continue;

    if (!isxdigit(c)) {
      return false;
    }
  }
  return true;
}

// Convert a hex string to an int */
uint64_t hex_to_int(const string &s) {
  uint64_t val;
  string str(s);
  if (s[0] == '$') {
    str = str.substr(1, str.size() - 1);
  }

  istringstream iss(str);
  iss >> hex >> val;
  return val;
}

string trim(const std::string &str, char delim) {
  std::string retval("");
  for (auto c : str) {
    if (c == delim)
      continue;
    retval += c;
  }
  return retval;
}

vector<string> split(const std::string &str, char delim) {
  std::vector<std::string> tokens;
  std::string token;
  std::stringstream tokenStream(str);
  while (std::getline(tokenStream, token, delim)) {
    tokens.push_back(trim(token));
  }
  return tokens;
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
// int CompositionalDecompiler::getMcSemaIndices(const Sse &reg) { return -1;
// }
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
// tmp << "define internal %struct.Memory* @sub_" << hex << targetAddress
//    << lbl << "(%struct.State*, i64, %struct.Memory*) {" << endl
//    << "  %4 = call %struct.Memory* @__remill_function_call(%struct.State* "
//       "%0, i64 ptrtoint (i64 (i64)* @"
//    << isBuiltIn.second << " to i64), %struct.Memory* %2)" << endl
//    << "  ret %struct.Memory* %4" << endl
//    << "}" << endl;

// If relocation information is NOT available, then be at the mercy of
// decompiler
// and borrow its inderence on global data access. Note that McSema's single
// instruction
// decompilation could be incorrect (as it lacks the whole program context)
// and
// we will be inheriting those wrong decompilations.
// if (!reloc_info_available) {
// for (auto &line : local_defn) {

//   if (regex_search(line, m, regex("ptrtoint"))) {

//     string addrExpr = normalize_spaces(opr.str());

//     if (DataSectioGlobalsCache.count(addrExpr)) {
//       uint16_t pastSize = DataSectioGlobalsCache.at(addrExpr);
//       if (accessSize > pastSize) {
//         DataSectioGlobalsCache[addrExpr] = accessSize;
//       }
//     } else {
//       DataSectioGlobalsCache[addrExpr] = accessSize;
//     }

//     string globalType = "%G_" + addrExpr + "_type";
//     string globalName = "@G_" + addrExpr;

//     auto replace_str =
//         "ptrtoint( " + globalType + "* " + globalName + " to";
//     auto repl_line =
//         regex_replace(line, regex("ptrtoint.*?to"), replace_str);
//     retval.push_back(repl_line);

//     continue;
//   }
//   retval.push_back(line);
// }

// return retval;
// Console::error(1) << "Use binary with reloation information" << endl;
// }
// redi::ipstream *stream = NULL;
// stringstream cmd;
// cmd << scriptsPath << "/find_pc_in_relocinfo.pl --binary " << binaryPath
//     << " --pc " << hex << currRIP << " --size " << dec << currSize;
// vector<string> result;
// if (!stoke::run_command(cmd.str(), true, &stream)) {
//   Console::error(1) << "Error: " << get_error() << endl;
//   return false;
// }

// extractFromStream(result, *stream, false, true);
// if (result.size() != 1) {
//   Console::error(1) << "CompositionalDecompiler::checkConstantOrAddress::"
//                        "find_pc_in_relocinfo returns multi-line garbase"
//                     << endl;
//   exit(1);
// }

// if (result[0] == "address") {
//   return true;
// } else if (result[0] == "constant") {
//   return false;
// } else {
//   Console::error(1) << "CompositionalDecompiler::checkConstantOrAddress::"
//                        "find_pc_in_relocinfo returns single-line garbage"
//                     << endl;
//   exit(1);
// }

// return false;
