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

unordered_map<string, string> SMTGenerator::processXSpec() {
  unordered_map<string, string> retval;

  return retval;
}

LSpecStateInfoType getLSpecStateInfo(size_t offset) {
  static vector<LSpecStateInfoType> info = {
      {4097, 1, "VL_CF"},  {4099, 1, "VL_PF"},  {4101, 1, "VL_AF"},
      {4103, 1, "VL_ZF"},  {4105, 1, "VL_SF"},  {4107, 1, "VL_DF"},
      {4109, 1, "VL_OF"},  {4360, 8, "VL_RAX"}, {4376, 8, "VL_RBX"},
      {4392, 8, "VL_RCX"}, {4408, 8, "VL_RDX"}, {4424, 8, "VL_RSI"},
      {4440, 8, "VL_RDI"}, {4456, 8, "VL_RSP"}, {4472, 8, "VL_RBP"},
  };

  for (auto i : info) {
    if (offset >= i.offset && offset < i.offset + i.nBytes) {
      return i;
    }
  }

  return LSpecStateInfoType({0, 0, ""});
}

static unordered_map<string, string> processSummary(const string &summary) {

  // Extract the memory cell
  auto memCellPos = summary.find("memory", 0);
  if (memCellPos == string::npos) {
    Console::error(1) << "Summary does not have amemory cell!";
    exit(1);
  }

  auto retvalMemExpr = extractNearestBracedExp(memCellPos, summary);
  auto memExpr = retvalMemExpr.first;

  // Extract <symloc, byte> pairs
  auto symlocPos = memExpr.find("symloc", 0);
  auto bytePos = memExpr.find("byte", 0);

  unordered_map<size_t, vector<string>> stateComposer;
  while (symlocPos != string::npos) {

    auto retvalSymlocExpr = extractNearestBracedExp(symlocPos, memExpr);
    auto retvalByteExpr = extractNearestBracedExp(bytePos, memExpr);

    SymLoc sym;
    retvalSymlocExpr.first >> sym;

    if (sym.locId == 4) {
      auto stateInfo = getLSpecStateInfo(sym.offset);
      auto base_offset = stateInfo.offset;

      if (stateInfo.regName != "") {

        SymLocValue val;
        retvalByteExpr.first >> val;
        stringstream ss;
        ss << val;

        if (stateComposer.count(base_offset) == 0) {
          stateComposer[base_offset].resize(32, "");
          stateComposer[base_offset][val.byteIndex] = ss.str();
        } else {
          stateComposer[base_offset][val.byteIndex] = ss.str();
        }
      }
    }

    symlocPos = memExpr.find("symloc", retvalSymlocExpr.second);
    bytePos = memExpr.find("byte", retvalByteExpr.second);
  }

  // Composing the states
  unordered_map<string, string> retval;
  for (auto p : stateComposer) {

    auto stateInfo = getLSpecStateInfo(p.first);

    stringstream ss;

    if (p.second[1] != "") {
      ss << "Concat(";
    }

    for (size_t i = 0; i < p.second.size(); i++) {
      if (p.second[i] == "")
        break;

      ss << p.second[i];

      if (i + 1 < p.second.size() && p.second[i + 1] != "") {
        ss << ", ";
      }
    }

    if (p.second[1] != "") {
      ss << ")";
    }

    retval[stateInfo.regName] = ss.str();
  }

  return retval;
}

static string processSideCondition(const string &sidecond) {

  auto retval = extractNearestBracedExp(0, sidecond);
  retval = extractNearestBracedExp(0, retval.first);
  retval = extractNearestBracedExp(0, retval.first);

  SummaryExpr expr;
  retval.first >> expr;

  stringstream ss;
  ss << expr;

  return ss.str();
}

vector<summaryAndSideConds> SMTGenerator::processLSpec() {

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

    auto summaryInfo = processSummary(summary);
    auto scInfo = processSideCondition(sidecond);

    retval.push_back(summaryAndSideConds{summaryInfo, scInfo});
  }

  return retval;
}

unordered_map<string, string> SMTGenerator::uniquifyRegMapsLSpec(
    vector<summaryAndSideConds> &lSpecSummaryAndSideConds) {

  for (auto summaryAndSideCond : lSpecSummaryAndSideConds) {
    auto summaries = summaryAndSideCond.summary;
    auto sc = summaryAndSideCond.sideConds;

    for (auto summary : summaries) {
      cout << summary.first << " = " << summary.second << endl << endl;
    }

    cout << sc << endl;
  }

  return lSpecSummaryAndSideConds[0].summary;
}

void SMTGenerator::dumpZ3(unordered_map<string, string> &lSpecRegMap,
                          unordered_map<string, string> &xSpecRegMap) {
  ifstream istemplate("/home/sdasgup3/Github/validating-binary-decompilation/"
                      "tests/scripts/proofScriptTemplate.py");
  string fixedDecl;
  while (getline(istemplate, fixedDecl)) {
    prrofScript << fixedDecl << endl;
  }
  istemplate.close();

  // for (auto p : lSpecRegMap) {
  //   prrofScript << p.first << " = " << p.second << endl << endl;
  // }

  std::ofstream ofs(z3pyfile, std::ofstream::out);
  ofs << prrofScript.str();
  ofs.close();
}
