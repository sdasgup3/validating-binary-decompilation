//===-- signature.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality generatr smt proof
// scripts from LLVM and X86 soec output files
// functions
//
//===----------------------------------------------------------------------===//

#ifndef __SMT_GENERATOR_H__
#define __SMT_GENERATOR_H__

#include <fstream>
#include <map>
#include <regex>
#include <set>
#include <string>
#include <unordered_map>
#include <vector>

#undef DEBUG_TYPE
#define SMT_GEN_DEBUG

using namespace std;

typedef struct {
  size_t offset;
  size_t nBytes;
  string regName;
} LSpecStateInfoType;

typedef struct {
  unordered_map<string, string> summary;
  string sideConds;
} summaryAndSideConds;

class SMTGenerator {
private:
  const string lspecfile;
  const string xspecfile;
  const string z3pyfile;
  stringstream prrofScript;

  vector<summaryAndSideConds> processLSpec();
  unordered_map<string, string>
  uniquifyRegMapsLSpec(vector<summaryAndSideConds> &lSpecSummaryAndSideConds);
  unordered_map<string, string> processXSpec();
  void dumpZ3(unordered_map<string, string> &lSpecRegMap,
              unordered_map<string, string> &xSpecRegMap);

public:
  SMTGenerator(const string &lspec, const string &xspec, const string &z3out);
};

#endif
