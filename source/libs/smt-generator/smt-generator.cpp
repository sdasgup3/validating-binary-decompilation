#include "smt-generator.h"
#include "exprs.h"
//#include "src/decompiler_setup/decompiler_setup.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/system/terminal.h"
//#include "src/ext/pstreams-0.8.1/pstream.h"

using namespace cpputil;
// using namespace stoke;

SMTGenerator::SMTGenerator(const string &lspec, const string &xspec,
                           const string &z3out)
    : lspecfile(lspec), xspecfile(xspec), z3pyfile(z3out) {

  auto lSpecSummaryAndSideConds = processLSpec();
  auto lSpecRegMap = uniquifyRegMapsLSpec(lSpecSummaryAndSideConds);

  auto xSpecRegMap = processXSpec();
  dumpZ3(lSpecRegMap, xSpecRegMap);
}

static vector<LSpecStateInfoType> info = {
    {4097, 1, "CF"},  {4099, 1, "PF"},  {4101, 1, "AF"},  {4103, 1, "ZF"},
    {4105, 1, "SF"},  {4107, 1, "DF"},  {4109, 1, "OF"},  {4360, 8, "RAX"},
    {4376, 8, "RBX"}, {4392, 8, "RCX"}, {4408, 8, "RDX"}, {4424, 8, "RSI"},
    {4440, 8, "RDI"}, {4456, 8, "RSP"}, {4472, 8, "RBP"},
};

static LSpecStateInfoType getLSpecStateInfo(size_t offset) {

  for (auto i : info) {
    if (offset >= i.offset && offset < i.offset + i.nBytes) {
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
static unordered_map<string, string> processLSummary(const string &summary) {

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

  unordered_map<size_t, vector<string>> stateComposer;

  // Extract  E from the mapping "_|->(symloc(...), byte(E))"
  pos = prunedSummary.find("_|->_", 0);
  while (pos != string::npos) {

    retvalPrunedSummary = extractNearestBracedExp(pos, prunedSummary);

    SymLoc L;
    auto str = L.read_spec(retvalPrunedSummary.first);

    // ignore ','
    str = str.substr(1);

    if (L.locId == 4) {
      auto stateInfo = getLSpecStateInfo(L.offset);
      auto base_offset = stateInfo.offset;

      if (stateInfo.regName != "") {

        ByteExpr byte;
        str = byte.read_spec(str);
        stringstream ss;
        ss << byte;

        if (stateComposer.count(base_offset) == 0) {
          stateComposer[base_offset].resize(32, "");
          stateComposer[base_offset][byte.byteIndex] = ss.str();
        } else {
          stateComposer[base_offset][byte.byteIndex] = ss.str();
        }
      }
    }

    pos = prunedSummary.find("_|->_", retvalPrunedSummary.second);
  }

  // Composing the states
  unordered_map<string, string> retval;
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
unordered_map<string, string> SMTGenerator::uniquifyRegMapsLSpec(
    vector<summaryAndSideConds> &lSpecSummaryAndSideConds) {

  Console::msg() << "\t\tStarting uniquifyRegMapsLSpec..." << endl;
  // Only one side condition
  if (lSpecSummaryAndSideConds.size() == 1) {
    return lSpecSummaryAndSideConds[0].summary;
  }

  unordered_map<string, string> retval;
  for (auto summaryAndSideCond : lSpecSummaryAndSideConds) {
    auto summaries = summaryAndSideCond.summary;
    auto sc = summaryAndSideCond.sideConds;

    if (sc == "") {
      Console::error(1) << "Empty side condition despite branching!" << endl;
      exit(1);
    }

    for (auto summary : summaries) {
      auto regName = summary.first;
      auto regSummary = summary.second;
      retval[regName] = "z3.Implies(" + sc + ", lvar == " + regSummary + "), ";
    }
  }

  for (auto &p : retval) {
    p.second = "z3.And(" + p.second + ")";
  }

  Console::msg() << "\t\tDone uniquifyRegMapsLSpec." << endl;
  return retval;
}

/*
** Process XSpec
*/
static unordered_map<string, string> processXSummary(const string &summary) {

  Console::msg() << "\tStarting processXSummary..." << endl;
  unordered_map<string, string> retval;
  string prunedSummary = summary;

  // Extract the regstate cell
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

    // ignore ','
    str = str.substr(1);

    SummaryExpr sumExpr;
    str = sumExpr.read_spec(str);

    stringstream ss;
    ss << sumExpr;

    retval[sumT.value_] = ss.str();

    pos = prunedSummary.find("_|->_", retvalPrunedSummary.second);
  }

  Console::msg() << "\tDone processXSummary." << endl;
  return retval;
}

unordered_map<string, string> SMTGenerator::processXSpec() {

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
void SMTGenerator::dumpZ3(unordered_map<string, string> &lSpecRegMap,
                          unordered_map<string, string> &xSpecRegMap) {
  Console::msg() << "Starting dumpZ3..." << endl;

  ifstream istemplate("/home/sdasgup3/Github/validating-binary-decompilation/"
                      "tests/scripts/proofScriptTemplate.py");
  string fixedDecl;
  while (getline(istemplate, fixedDecl)) {
    proofScript << fixedDecl << endl;
  }
  istemplate.close();

  for (auto p : lSpecRegMap) {
    if (xSpecRegMap.count(p.first)) {
      proofScript << "print(\"=**= " << p.first << " =**=\")" << endl;
      proofScript << "s.push()" << endl << endl;

      proofScript << "lvar = " << p.second << endl << endl;
      proofScript << "xvar = " << xSpecRegMap[p.first] << endl;

      proofScript << endl << "s.add(lvar != xvar)" << endl;
      proofScript << endl << "solve(s)" << endl << endl;
      proofScript << "s.pop()" << endl << endl;
    } else {
      Console::msg() << "Cannot find lvar" << p.first << "in xMap!" << endl;
    }
  }

  std::ofstream ofs(z3pyfile, std::ofstream::out);
  ofs << proofScript.str();
  ofs.close();

  Console::msg() << "Done dumpZ3." << endl;
}
