#include "smt-generator.h"
#include "exprs.h"
//#include "src/decompiler_setup/decompiler_setup.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/system/terminal.h"
//#include "src/ext/pstreams-0.8.1/pstream.h"
#include <stdlib.h>

using namespace cpputil;
// using namespace stoke;

SMTGenerator::SMTGenerator(const string &lspec, const string &xspec,
                           const string &z3out, const string &opcode)
    : lspecfile(lspec), xspecfile(xspec), z3pyfile(z3out) {

  if ((opcode.find("_m") != string::npos)) {
    std::smatch m;
    std::regex_search(opcode, m, std::regex(".*_m(\\d*).*"));
    memSize = stoi(m[1]);
  } else {
    memSize = 0;
  }

  auto lSpecSummaryAndSideConds = processLSpec();
  auto lSpecRegMap = uniquifyLSpec(lSpecSummaryAndSideConds);

  auto xSpecSummary = processXSpec();
  auto xSpecRegMap = uniquifyXSpec(xSpecSummary);

  dumpZ3(lSpecRegMap, xSpecRegMap);
}

static size_t x86MemBaseOffset = 1000;
static vector<LSpecStateInfoType> info = {
    {4097, 1, "CF"},    {4099, 1, "PF"},    {4101, 1, "AF"},  {4103, 1, "ZF"},
    {4105, 1, "SF"},    {4107, 1, "DF"},    {4109, 1, "OF"},  {4360, 8, "RAX"},
    {4376, 8, "RBX"},   {4392, 8, "RCX"},   {4408, 8, "RDX"}, {4424, 8, "RSI"},
    {4440, 8, "RDI"},   {4456, 8, "RSP"},   {4472, 8, "RBP"}, {4616, 8, "RIP"},
    {2112, 32, "YMM1"}, {2176, 32, "YMM2"}, {0, 0, "MEM"},
};

LSpecStateInfoType SMTGenerator::getLSpecStateInfo(size_t offset) {

  for (auto i : info) {
    size_t nBytes = i.nBytes;
    if (i.regName == "MEM") {
      nBytes = memSize / 8;
    }

    if (offset >= i.offset && offset < i.offset + nBytes) {
      return i;
    }
  }

  return LSpecStateInfoType({0, 0, ""});
}

static int getRegBitWidthByName(string regName) {

  for (auto i : info) {
    if (regName == i.regName) {
      return i.nBytes * 8;
    }
  }

  Console::error(1) << "getRegBitWidthByName::Cannot find regName " << regName
                    << endl;
  exit(1);
  return 0;
}

/*
** Process LSpec
*/
map<string, string> SMTGenerator::processLSummary(const string &summary) {

  Console::msg() << "\tStarting processLSummary..." << endl;
  string prunedSummary = summary;

  // Extract the objects cell
  auto pos = prunedSummary.find("objects", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have a objects cell!";
    exit(1);
  }

  auto retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract the mem
  pos = prunedSummary.find("mem", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have mem cell!";
    exit(1);
  }

  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract the _Map_ cell
  pos = prunedSummary.find("_Map_", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have a _Map_ cell!";
    exit(1);
  }

  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  map<size_t, vector<string>> stateComposer;

  // Extract  E from the mapping "_|->(symloc(...), byte(E))"
  pos = prunedSummary.find("_|->_", 0);
  while (pos != string::npos) {

    retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);

    SymLoc L;
    auto str = L.read_spec(retvalPrunedSummary.first);
    Console::msg() << "Reading the byte value at: " << L.offset << endl;

    // ignore ','
    str = str.substr(1);

    if ((L.locId == 4) || (L.locId == 5)) {
      auto stateInfo = getLSpecStateInfo(L.offset);
      auto base_offset = stateInfo.offset;

      if (stateInfo.regName != "") {

        ByteExpr byte;
        str = byte.read_spec(str);
        stringstream ss;
        ss << byte;

        if (stateComposer.count(base_offset) == 0) {
          stateComposer[base_offset].resize(32, "");
          // stateComposer[base_offset][byte.byteIndex] = ss.str();
          stateComposer[base_offset][L.offset - base_offset] = ss.str();
        } else {
          stateComposer[base_offset][L.offset - base_offset] = ss.str();
        }
      }
    }

    pos = prunedSummary.find("_|->_", retvalPrunedSummary.second);
  }

  // Composing the states
  map<string, string> retval;
  for (auto p : stateComposer) {

    auto stateInfo = getLSpecStateInfo(p.first);

    stringstream ss;

    if (p.second[1] != "") {
      ss << "z3.Concat(";
    }

    for (int i = p.second.size() - 1; i >= 0; i--) {
      if (p.second[i] == "")
        continue;

      ss << p.second[i];

      if (i != 0) {
        ss << ", ";
      }
    }

    if (p.second[1] != "") {
      ss << ")";
    }

    retval[stateInfo.regName] = ss.str();
  }

  Console::msg() << "\tDone processLSummary." << endl;
  return retval;
}

static string processSideCondition(const string &sidecond) {

  Console::msg() << "\tStarting processSideCondition..." << endl;
  smatch m;
  string prunedSideCond = sidecond;

  size_t nesting = 0;
  while (regex_search(prunedSideCond, m, regex("^#And"))) {
    auto retval = extractNearestBracedExp(0, prunedSideCond);
    prunedSideCond = retval.first;
    nesting++;
  }

  if (nesting == 1)
    return "";

  SummaryExpr expr;
  prunedSideCond >> expr;

  stringstream ss;
  ss << expr;

  Console::msg() << "\tDone processSideCondition." << endl;
  return ss.str();
}

vector<summaryAndSideConds> SMTGenerator::processLSpec() {

  Console::msg() << "Starting processLSpec..." << endl;
  ifstream is(lspecfile);
  string str;
  vector<string> worklist_summary;
  vector<string> worklist_sideconds;

  // Reading relevant portions
  bool foundRelevant = false;
  bool includeNext = false;
  while (getline(is, str)) {
    if (!foundRelevant && (string::npos == str.find("Success final states")))
      continue;

    foundRelevant = true;

    if (string::npos != str.find("generatedTop")) {
      worklist_summary.push_back(str);
    }

    if (includeNext) {
      worklist_sideconds.push_back(str);
      includeNext = false;
    }

    if (regex_match(str, regex("^/\\\\"))) {
      includeNext = true;
    }
  }

  if (worklist_summary.size() == 0) {
    Console::error(1) << "No final summary detected!" << endl;
    exit(1);
  }

  if (worklist_summary.size() != worklist_sideconds.size()) {
    Console::error(1) << "Summary / Side condition count mismatch!";
    exit(1);
  }

  vector<summaryAndSideConds> retval;

  for (size_t i = 0; i < worklist_summary.size(); i++) {
    auto summary = worklist_summary[i];
    auto sidecond = worklist_sideconds[i];

    auto summaryInfo = processLSummary(summary);
    auto scInfo = processSideCondition(sidecond);

    retval.push_back(summaryAndSideConds{summaryInfo, scInfo});
  }

  Console::msg() << "Done processLSpec." << endl;
  return retval;
}

/*
          convert

  lSpecSummaryAndSideConds = {
    [0]: summaryAndSideConds:
          Summary:
            RAX -> summary_rax
            RBX -> summary_rbx
          sideCond:
            cond
    [1]: ...
    ...


          to
      RAX -> if(cond) summary_rax else summary_rax'
      RBX -> ...
      ...
  }
*/
map<string, string> SMTGenerator::uniquifyLSpec(
    vector<summaryAndSideConds> &lSpecSummaryAndSideConds) {

  Console::msg() << "\t\tStarting uniquifyLSpec..." << endl;
  map<string, string> retval;

  // Only one side condition
  if (lSpecSummaryAndSideConds.size() == 1) {
    auto summaries = lSpecSummaryAndSideConds[0].summary;
    for (auto summary : summaries) {
      auto regName = summary.first;
      auto regSummary = summary.second;
      auto width = getRegBitWidthByName(regName);

      if (regName == "MEM") {
        retval[regName] = "(V_M" + to_string(memSize) + " == " + regSummary + ")";
      } else if (width == 8) {
        // In LLVM semantics, the flags are represented as 8 bits, whereas in
        // X86 semantics it is a bit. Hence we will do the conversion here.
        regSummary = "z3.Extract(0, 0, " + regSummary + ")";

        retval[regName] = "(V_F == " + regSummary + ")";
      } else if (width == 64) {
        retval[regName] = "(V_R == " + regSummary + ")";
      } else if (width == 256) {
        retval[regName] = "(V_Y == " + regSummary + ")";
      } else {
        Console::error(1)
            << "SMTGenerator::uniquifyLSpec: Unsupported bitwidth " << width
            << endl;
      }
    }
    return retval;
  }

  // More than one side condition
  for (auto summaryAndSideCond : lSpecSummaryAndSideConds) {
    auto summaries = summaryAndSideCond.summary;
    auto sc = summaryAndSideCond.sideConds;

    if (sc == "") {
      Console::error(1) << "Empty side condition despite branching!" << endl;
      exit(1);
    }

    Console::msg() << "SC: " << sc << endl;

    for (auto summary : summaries) {
      auto regName = summary.first;
      auto regSummary = summary.second;
      auto width = getRegBitWidthByName(regName);

      if (!retval.count(regName)) {
        retval[regName] = "";
      }

      if (regName == "MEM") {
        retval[regName] = "(V_M" + to_string(memSize) + " == " + regSummary + ")";
      } else if (width == 8) {
        // In LLVM semantics, the flags are represented as 8 bits, whereas in
        // X86 semantics it is a bit. Hence we will do the conversion here.
        regSummary = "z3.Extract(0, 0, " + regSummary + ")";

        retval[regName] += "\n\tz3.Implies(\n\t\t" + sc +
                           ",\n\t\tV_F == " + regSummary + "\n\t), ";
      } else if (width == 64) {
        retval[regName] += "\n\tz3.Implies(\n\t\t" + sc +
                           ", \n\t\tV_R == " + regSummary + "\n\t), ";
      } else if (width == 256) {
        retval[regName] += "\n\tz3.Implies(\n\t\t" + sc +
                           ", \n\t\tV_Y == " + regSummary + "\n\t), ";
      } else {
        Console::error(1)
            << "SMTGenerator::uniquifyLSpec: Unsupported bitwidth " << width
            << endl;
      }
    }
  }

  // z3.And(z3.Implies(...), ...)
  for (auto &p : retval) {
    p.second = "z3.And(\n" + p.second + "\n)";
  }

  Console::msg() << "\t\tDone uniquifyLSpec." << endl;
  return retval;
}

/*
** Process XSpec
*/
map<string, string> SMTGenerator::processXSummary(const string &summary) {

  Console::msg() << "\tStarting processXSummary..." << endl;
  map<string, string> retval;
  string prunedSummary = summary;

  /************* Extract the regstate cell **********/
  auto pos = prunedSummary.find("regstate", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have regstate cell!";
    exit(1);
  }

  auto retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract the regstate-map "_Map_" cell
  pos = prunedSummary.find("_Map_", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have reg map cell!";
    exit(1);
  }

  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract pair (E1, E2) from the mapping "_|->(#token(E1), E2)"
  pos = prunedSummary.find("_|->_", 0);

  while (pos != string::npos) {

    retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);

    SummaryExprToken sumT;
    auto str = sumT.read_spec(retvalPrunedSummary.first);
    Console::msg() << "Reading the value for: " << sumT.value_ << endl;

    // ignore ','
    str = str.substr(1);

    SummaryExpr sumExpr;
    str = sumExpr.read_spec(str);

    stringstream ss;
    ss << sumExpr;

    retval[sumT.value_] = ss.str();

    pos = prunedSummary.find("_|->_", retvalPrunedSummary.second);
  }

  /************* Extract the mem cell **********/
  prunedSummary = summary;

  // Extract the objects cell
  pos = prunedSummary.find("objects", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have a objects cell!";
    exit(1);
  }

  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract the mem
  pos = prunedSummary.find("mem", 0, 3);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have mem cell!";
    exit(1);
  }
  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract the mem-map "_Map_" cell
  pos = prunedSummary.find("_Map_", 0);
  if (pos == string::npos) {
    Console::error(1) << "Summary does not have reg map cell!";
    exit(1);
  }

  retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);
  prunedSummary = retvalPrunedSummary.first;

  // Extract pair (E1, E2) from the mapping "_|->(
  //    symloc(
  //      #token("1","Int"),
  //      #token("128","Int"),
  //      #token("1040","Int"),
  //      #token("8","Int"),
  //      #token("1000","Int")
  //    ),byte(#token("0","Int"), E)
  // )
  pos = prunedSummary.find("_|->_", 0);
  vector<string> x86StateComposer(32, "");

  while (pos != string::npos) {

    retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);

    SymLoc L;
    auto str = L.read_spec(retvalPrunedSummary.first);
    Console::msg() << "Reading the value for: " << L.offset << endl;

    // ignore ','
    str = str.substr(1);

    if (L.locId == 1 && (L.offset >= x86MemBaseOffset &&
                         L.offset < x86MemBaseOffset + memSize / 8)) {

      X86ByteExpr byte;
      str = byte.read_spec(str);
      stringstream ss;
      ss << byte;

      x86StateComposer[L.offset - x86MemBaseOffset] = ss.str();
    }

    pos = prunedSummary.find("_|->_", retvalPrunedSummary.second);
  }

  // Composing the states
  stringstream ss;

  if (x86StateComposer[1] != "") {
    ss << "z3.Concat(";
  }

  for (int i = x86StateComposer.size() - 1; i >= 0; i--) {
    if (x86StateComposer[i] == "")
      continue;

    ss << x86StateComposer[i];

    if (i != 0) {
      ss << ", ";
    }
  }

  if (x86StateComposer[1] != "") {
    ss << ")";
  }

  if (!ss.str().empty()) {
    retval["MEM"] = ss.str();
  }

  Console::msg() << "\tDone processXSummary." << endl;
  return retval;
}

/*
          convert

  lSpecSummary = {
            RAX -> summary_rax
            CF -> summary_cf


          to
      RAX -> (V_R == summary_rax)
      CF ->  (V_F == summary_cf)
      ...
  }
*/

map<string, string>
SMTGenerator::uniquifyXSpec(map<string, string> &xSpecSummary) {

  Console::msg() << "\t\tStarting uniquifyXSpec..." << endl;

  map<string, string> retval;
  for (auto summary : xSpecSummary) {
    auto regName = summary.first;
    auto regSummary = summary.second;

    auto width = getRegBitWidthByName(regName);

    if (regName == "MEM") {
      retval[regName] = "(V_M" + to_string(memSize) + " == " + regSummary + ")";
    } else if (width == 8) {
      // wisth 8 bits corresponds to flags which are 1 bit on x86 semantics
      retval[regName] = "(V_F == " + regSummary + ")";
    } else if (width == 64) {
      retval[regName] = "(V_R == " + regSummary + ")";
    } else if (width == 32 * 8) {
      retval[regName] = "(V_Y == " + regSummary + ")";
    } else {
      Console::error(1) << "SMTGenerator::uniquifyXSpec: Unsupported bitwidth "
                        << width << endl;
      exit(1);
    }
  }

  Console::msg() << "\t\tDone uniquifyXSpec." << endl;
  return retval;
}

map<string, string> SMTGenerator::processXSpec() {

  Console::msg() << "Starting processXSpec..." << endl;
  ifstream is(xspecfile);
  string str;
  vector<string> worklist_summary;

  // Reading relevant portions
  bool foundRelevant = false;
  while (getline(is, str)) {
    if (!foundRelevant && (string::npos == str.find("SPEC FAILED"))) {
      continue;
    }

    foundRelevant = true;

    if (string::npos != str.find("generatedTop")) {
      worklist_summary.push_back(str);
    }
  }

  if (worklist_summary.size() != 1) {
    Console::error(1) << "XSummary missing or more summaries found!" << endl;
    Console::error(1) << worklist_summary.size() << endl;
    exit(1);
  }

  Console::msg() << "Done processXSpec." << endl;
  return processXSummary(worklist_summary[0]);
}

/*
** Generting z3 proof script
*/
void SMTGenerator::dumpZ3(map<string, string> &lSpecRegMap,
                          map<string, string> &xSpecRegMap) {
  Console::msg() << "Starting dumpZ3..." << endl;

  string homeDir(getenv("HOME"));
  assert(homeDir != "" && "Home dir not found");
  ifstream istemplate(homeDir + "/Github/validating-binary-decompilation/"
                                "tests/scripts/proofScriptTemplate.py");
  string fixedDecl;
  while (getline(istemplate, fixedDecl)) {
    proofScript << fixedDecl << endl;
  }
  istemplate.close();

  for (auto p : lSpecRegMap) {
    if (p.first == "RIP")
      continue;

    // Do not check rbp equiv for mem instr as X86 and LLVM semantics has diff
    // idioms to store the address there
    if (p.first == "RBP" && memSize != 0)
      continue;

    // Do not compare mamval in case of non-memory instr.
    if (p.first == "MEM" && memSize == 0)
      continue;

    if (xSpecRegMap.count(p.first)) {
      // proofScript << "print(\"\\n\")" << endl;
      // proofScript << "print(\"=******= " << p.first << " =******=\")" <<
      // endl;
      proofScript << "## =******= " << p.first << " =******=" << endl;
      proofScript << "s.push()" << endl << endl;

      proofScript << "lvar = " << p.second << endl << endl;
      proofScript << "xvar = " << xSpecRegMap[p.first] << endl;

      proofScript << endl << "s.add(lvar != xvar)" << endl;
      proofScript << endl
                  << "solve(\"" << p.first << "\", lvar, xvar, s)" << endl
                  << endl;
      proofScript << "s.pop()" << endl << endl;
    } else {
      Console::msg() << "Cannot find lvar" << p.first << "in xMap!" << endl;
    }
  }

  proofScript << "if(status == True):" << endl;
  proofScript
      << "  print('\x1b[6;30;42m' + 'Test-Pass: ' + '\x1b[0m' + test_name)"
      << endl;
  proofScript << "else:" << endl;
  proofScript << "  if(status == False):" << endl;
  proofScript
      << "    print('\x1b[0;30;41m' + 'Test-Fail: '  + '\x1b[0m' + test_name)"
      << endl;
  proofScript << "  else:" << endl;
  proofScript
      << "    print('\x1b[6;30;47m' + 'Test-Unk: '  + '\x1b[0m' + test_name)"
      << endl;

  std::ofstream ofs(z3pyfile, std::ofstream::out);
  ofs << proofScript.str();
  ofs.close();

  Console::msg() << "Done dumpZ3." << endl;
}
