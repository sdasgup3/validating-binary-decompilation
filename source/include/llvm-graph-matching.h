//===-- llvm-graph-matching.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality to match dfg of two llvm
// functions
//
//===----------------------------------------------------------------------===//

#ifndef __LLVM_GRAPH_MATCHING_H__
#define __LLVM_GRAPH_MATCHING_H__

#include "data-dep-graph.h"

#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Operator.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/FunctionComparator.h"
#include <map>
#include <set>
#include <string>

#undef DEBUG_TYPE
#define DEBUG_TYPE "llvm-graph-matching"
//#define MATCHER_DEBUG

using namespace std;
using namespace llvm;

namespace llvm {

/*********************
********** MatcherBase ***********
*********************/
class MatcherBase {
protected:
  std::set<Value *> exactIMatches;
  std::map<BasicBlock *, BasicBlock *> PotBBMatches;
  Function *F1, *F2;
  DataDepGraph *G1, *G2;
  GlobalNumberState *GlobalNumbers;

  int cmpGEPs(const GEPOperator *GEPL, const GEPOperator *GEPR) const;
  int cmpGEPs(const GetElementPtrInst *GEPL,
              const GetElementPtrInst *GEPR) const {
    return cmpGEPs(cast<GEPOperator>(GEPL), cast<GEPOperator>(GEPR));
  }

  int cmpNumbers(uint64_t L, uint64_t R) const;
  int cmpAPInts(const APInt &L, const APInt &R) const;
  int cmpTypes(Type *TyL, Type *TyR) const;
  int cmpValues(const Value *L, const Value *R) const;
  int cmpAPFloats(const APFloat &L, const APFloat &R) const;
  int cmpConstants(const Constant *L, const Constant *R) const;
  int cmpGlobalValues(GlobalValue *L, GlobalValue *R) const;
  int cmpMem(StringRef L, StringRef R) const;

public:
  MatcherBase(Function *F1, Function *F2, bool useSSAEdges = false);

  // To be overridden
  virtual void retrievePotIMatches(Function *F1, Function *F2,
                                   bool potentialMatchAccuracy = false) = 0;
  virtual bool deepMatch(Instruction *I1, Instruction *I2) = 0;
  virtual void dumpPotIMatches() = 0;
  virtual void dumpPotIMatchesStats() = 0;
  virtual bool dualSimulation(DataDepGraph *g1, DataDepGraph *g2,
                              std::map<Value *, set<Value *>> &Phi) = 0;
  virtual void postMatchingAction() = 0;

  virtual void dualSimulationDriver(DataDepGraph *g1, DataDepGraph *g2,
                                    std::map<Value *, set<Value *>> &Phi);
  bool retrievePotBBMatches(DataDepGraph *g1,
                            std::map<Value *, set<Value *>> &Phi);
  bool handleConflictingStores(DataDepGraph *g1,
                               std::map<Value *, set<Value *>> &Phi);
  bool handleConflictingCalls(DataDepGraph *g1,
                              std::map<Value *, set<Value *>> &Phi);

  // Common Functionality
  bool initialArgumentsMatch(Function *F1, Function *F2,
                             std::map<Value *, set<Value *>> &Phi);
  void dumpPotBBMatches();
  void dumpLLVMNode(const Value *);
  set<Value *> Intersection(const set<Value *> &S1, const set<Value *> &S2);

  bool handleConflictingStores();
  bool handleConflictingCalls();
  std::pair<bool, BasicBlock *> sameBB(std::set<Value *> S);
};

/*********************
********** Matcher ***********
*********************/
class Matcher : public MatcherBase {
private:
  std::map<Value *, set<Value *>> PotIMatches;

public:
  Matcher(Function *F1, Function *F2, bool useSSAEdges = false,
          bool potentialMatchAccuracy = false);
  void retrievePotIMatches(Function *F1, Function *F2,
                           bool potentialMatchAccuracy = false);
  virtual bool deepMatch(Instruction *I1, Instruction *I2);
  void dumpPotIMatches();
  void dumpPotIMatchesStats();
  bool dualSimulation(DataDepGraph *g1, DataDepGraph *g2,
                      std::map<Value *, set<Value *>> &Phi);
  void postMatchingAction();
};

/*********************
********** IterativePruningMatcher ***********
*********************/
class IterativePruningMatcher : public MatcherBase {
private:
  std::map<Value *, set<Value *>> PotIMatches1;
  std::map<Value *, set<Value *>> PotIMatches2;

public:
  IterativePruningMatcher(Function *F1, Function *F2, bool useSSAEdges = false,
                          bool potentialMatchAccuracy = false);
  void retrievePotIMatches(Function *F1, Function *F2,
                           bool potentialMatchAccuracy = false);
  virtual bool deepMatch(Instruction *I1, Instruction *I2);
  void dumpPotIMatches();
  void dumpPotIMatchesStats();
  bool dualSimulation(DataDepGraph *g1, DataDepGraph *g2,
                      std::map<Value *, set<Value *>> &Phi);
  void postMatchingAction();
};

} // end llvm namespace
#endif
