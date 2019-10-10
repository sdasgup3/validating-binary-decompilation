//===-- signature.h --===//
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
#define MATCHER_DEBUG 1

using namespace std;
using namespace llvm;

namespace llvm {

class Matcher {
private:
  std::map<Value *, set<Value *>> PotIMatches;
  std::set<Value *> exactIMatches;
  std::map<BasicBlock *, BasicBlock *> PotBBMatches;
  Function *F1, *F2;
  GlobalNumberState *GlobalNumbers;
  Type *IgnoreType;
  vector<Value *> VertexSet;

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
  Matcher(Function *F1, Function *F2);
  // For each instruction in F1, retrieve feasible matches in F2.
  void retrievePotIMatches(Function *F1, Function *F2);
  bool retrievePotBBMatches();
  bool shallowMatch(Instruction *I1, Instruction *I2);
  bool deepMatch(Instruction *I1, Instruction *I2);
  /*
  **   1: procedure SimpleSim(G, Q, Φ):
  **   2:   changed←true
  **   3:   while changed do
  **   4:     changed←false
  **   5:     for u←Vq do
  **   6:       for u' ←Q.adj(u) do
  **   7:         for v ←Φ(u) do
  **   8:           if G.adj(v) ∩ Φ(u') = ∅ then
  **   9:             remove v from Φ(u)
  **  10:             if Φ(u) = ∅ then
  **  11:               return empty Φ
  **  12:             end if
  **  13:             changed←true
  **  14:           end if
  **  15:         end for
  **  16:       end for
  **  17:     end for
  **  18:   end while
  **  19:   return Φ
  **  20: end procedure
  */
  void simpleSimulation(Function *F1, Function *F2);

  /*
  **   1: procedure DualSim(G, Q, Φ):
  **   2:  changed←true
  **   3:  while changed do
  **   4:    changed←false
  **   5:    for u←Vq do
  **   6:      for u' ←Q.adj(u) do
  **   7:        Φ'(u')←∅
  **   8:        for v ←Φ(u) do
  **   9:          Φv(u')←G.adj(v) ∩ Φ(u')
  **   10:         if Φv(u') = ∅ then
  **   11:           remove v from Φ(u)
  **   12:           if Φ(u) = ∅ then
  **   13:             return empty Φ
  **   14:           end if
  **   15:           changed←true
  **   16:         end if
  **   17:         Φ'(u')←Φ'(u') ∪ Φv(u')
  **   18:       end for
  **   19:       if Φ'(u') = ∅ then
  **   20:         return empty Φ
  **   21:       end if
  **   22:       if Φ'(u') is smaller than Φ(u') then
  **   23:         changed←true
  **   24:       end if
  **   25:       Φ(u') = Φ(u') ∩ Φ'(u')
  **   26:     end for
  **   27:   end for
  **   28: end while
  **   29: return Φ
  **   30: end procedure
  */
  // bool dualSimulation(Function *F1, Function *F2, const vector<Value *> &V);
  bool dualSimulation(Function *F1, Function *F2);
  bool dualSimulationDriver(Function *F1, Function *F2);

  bool initialMatch(Function *F1, Function *F2);
  void dumpPotIMatches();
  void dumpPotBBMatches();
  void dumpLLVMNode(const Value *);
  set<Value *> Intersection(const set<Value *> &S1, const set<Value *> &S2);

  void findBBCorrespondence();
  bool handleConflictingStores();
};

} // end llvm namespace
#endif
