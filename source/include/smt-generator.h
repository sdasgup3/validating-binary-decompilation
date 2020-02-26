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
  map<string, string> summary;
  string sideConds;
} summaryAndSideConds;

class SMTGenerator {
private:
  const string lspecfile;
  const string xspecfile;
  const string z3pyfile;
  size_t memSize;

  stringstream proofScript;

  vector<summaryAndSideConds> processLSpec();
  map<string, string> processLSummary(const string &summary);

  map<string, string> uniquifyXSpec(map<string, string> &);

  map<string, string>
  uniquifyLSpec(vector<summaryAndSideConds> &lSpecSummaryAndSideConds);

  map<string, string> processXSpec();
  map<string, string> processXSummary(const string &summary);

  void dumpZ3(map<string, string> &lSpecRegMap,
              map<string, string> &xSpecRegMap);

  LSpecStateInfoType getLSpecStateInfo(size_t offset);

public:
  SMTGenerator(const string &lspec, const string &xspec, const string &z3out,
               const string &opcode);
};

#endif
