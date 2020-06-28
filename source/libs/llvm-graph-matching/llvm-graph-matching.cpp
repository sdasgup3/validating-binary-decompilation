//===-- llvm-graph-matching.cpp --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "llvm-graph-matching.h"
#include "llvm/Support/FileSystem.h"

using namespace llvm;

#define VAR_NAME_PRINTER(name) llvm::errs << (#name)

/**********
********** Static Method ******************
***********/

/*********************
********** Class::IterativePruningMatcher ***********
*********************/
IterativePruningMatcher::IterativePruningMatcher(
    Function *f1, Function *f2, const string &Out1, const string &Out2,
    // const string &Out, bool useSSAEdges, bool potentialMatchAccuracy)
    bool useSSAEdges, bool potentialMatchAccuracy)
    : MatcherBase(f1, f2, useSSAEdges) {

#ifdef MATCHER_DEBUG
  llvm::errs() << "IterativePruningMatcher::IterativePruningMatcher "
               << f1->getName() << " Vs " << f2->getName() << ": Begin\n";
#endif

  G1 = new DataDepGraph(f1, useSSAEdges);
  G2 = new DataDepGraph(f2, useSSAEdges);
  totalInst1 = comentedInst1 = totalInst2 = comentedInst2 = 0;

  if (!retrievePotIMatches(f1, f2, potentialMatchAccuracy)) {
    // llvm::errs() << "Early Exit\n";
    return;
  }

#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nDual Simulation::Query to Target \n";
#endif
  dualSimulationDriver(G1, G2, PotIMatches1);

#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nDual Simulation::Target to Query \n";
#endif
  dualSimulationDriver(G2, G1, PotIMatches2);

  dumpPrunedIR(f1, f2, PotIMatches1, PotIMatches2, G1, G2, Out1, Out2);
  postMatchingAction();

#ifdef MATCHER_DEBUG
  llvm::errs() << "IterativePruningMatcher::IterativePruningMatcher: End\n";
#endif
}

bool IterativePruningMatcher::isExactMatch(
    Value *I1, const std::map<Value *, set<Value *>> &Phi1,
    const std::map<Value *, set<Value *>> &Phi2) {
  if (Phi1.count(I1) && Phi1.at(I1).size() == 1 &&
      Phi2.count(*(Phi1.at(I1).begin())) &&
      Phi2.at(*(Phi1.at(I1).begin())).size() == 1 &&
      *(Phi2.at(*(Phi1.at(I1).begin())).begin()) == I1) {
    return true;
  }

  return false;
}

bool IterativePruningMatcher::shouldRemoveInstrunction(
    Value *I, const std::map<Value *, set<Value *>> &Phi1,
    const std::map<Value *, set<Value *>> &Phi2, DataDepGraph *g,
    set<Value *> &visited, set<Value *> &multiMatches) {
  if (visited.count(I))
    return true;
  visited.insert(I);

  if (!isExactMatch(I, Phi1, Phi2)) {
    multiMatches.insert(I);
    // llvm::errs() << "\tNot Rem: ";
    // dumpLLVMNode(I);
    return false;
  }

  for (auto &child : g->getAdj(I)) {
    if (shouldRemoveInstrunction(child, Phi1, Phi2, g, visited, multiMatches) ==
        false)
      return false;
  }

  return true;
}

void IterativePruningMatcher::dumpPrunedIR(
    Function *f1, Function *f2, const std::map<Value *, set<Value *>> &Phi1,
    const std::map<Value *, set<Value *>> &Phi2, DataDepGraph *g1,
    DataDepGraph *g2, const string &Out1, const string &Out2) {
  std::error_code ec;

  // raw_fd_ostream llir1(Out + "/query.ll", ec, sys::fs::F_Text);
  // raw_fd_ostream llir2(Out + "/target.ll", ec, sys::fs::F_Text);
  raw_fd_ostream llir1(Out1, ec, sys::fs::F_Text);
  raw_fd_ostream llir2(Out2, ec, sys::fs::F_Text);

  /*** Dump Query function ****/
  llvm::errs() << "Generating: " + Out1 << "\n";

  set<Value *> visited, multiMatches;
  set<Instruction *> toErase;
  // dump function body
  for (BasicBlock &BB : *f1) {
    for (Instruction &I1 : BB) {
      totalInst1++;
      visited.clear();
      if (dyn_cast<BranchInst>(&I1)) {
        comentedInst1++;
        continue;
      }
      if (dyn_cast<ReturnInst>(&I1)) {
        comentedInst1++;
        continue;
      }
      if (shouldRemoveInstrunction(&I1, Phi1, Phi2, g1, visited,
                                   multiMatches)) {
        comentedInst1++;
        I1.replaceAllUsesWith(UndefValue::get(I1.getType()));
        toErase.insert(&I1);
      }
    }
  }

  for (auto e : toErase) {
    e->dropAllReferences();
    e->eraseFromParent();
  }

  llir1 << *f1->getParent();
  llir1.close();

  // dump debug info
  for (auto multiMatch : multiMatches) {
    llvm::errs() << "Mulitple Matches for : ";
    dumpLLVMNode(multiMatch);
    for (auto p : Phi1.at(multiMatch)) {
      llvm::errs() << "\t";
      dumpLLVMNode(p);
    }
  }

  /*** Dump Query function ****/
  llvm::errs() << "Generating: " + Out2 << "\n";

  multiMatches.clear();
  toErase.clear();
  // dump function body
  for (BasicBlock &BB : *f2) {
    for (Instruction &I2 : BB) {
      totalInst2++;
      visited.clear();
      if (dyn_cast<BranchInst>(&I2)) {
        comentedInst2++;
        continue;
      }
      if (dyn_cast<ReturnInst>(&I2)) {
        comentedInst2++;
        continue;
      }
      if (shouldRemoveInstrunction(&I2, Phi2, Phi1, g2, visited,
                                   multiMatches)) {
        comentedInst2++;
        I2.replaceAllUsesWith(UndefValue::get(I2.getType()));
        toErase.insert(&I2);
      }
    }
  }

  for (auto e : toErase) {
    e->dropAllReferences();
    e->eraseFromParent();
  }

  llir2 << *f2->getParent();
  llir2.close();

  // dump debug info
  // for (auto multiMatch : multiMatches) {
  //   llvm::errs() << "Mulitple Matches for : ";
  //   dumpLLVMNode(multiMatch);
  //   for (auto p : Phi2.at(multiMatch)) {
  //     llvm::errs() << "\t";
  //     dumpLLVMNode(p);
  //   }
  // }

  /*** Check Final Results ****/
  if ((totalInst1 == comentedInst1) && (totalInst2 == comentedInst2)) {
    llvm::errs() << "Iso Match Found\n";
  } else if ((totalInst1 != comentedInst1) && (totalInst2 != comentedInst2)) {
    llvm::errs() << "Iso Match NOT Found\n";
  } else {
    llvm::errs() << "Partial Iso Match Found\n";
  }
}

/*
** return 0: Matching failed
** return 1: Matching passed
** return 2: Early exit
*/
int IterativePruningMatcher::getResult() {
  if (totalInst1 == 0 || totalInst2 == 0)
    return 2;

  if ((totalInst1 != comentedInst1) && (totalInst2 != comentedInst2)) {
    return 0;
  }
  return 1;
}

void IterativePruningMatcher::postMatchingAction() {}

bool IterativePruningMatcher::retrievePotIMatches(Function *f1, Function *f2,
                                                  bool potentialMatchAccuracy) {
#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\n[Info] Retrieve Potential Matches: Start\n";
#endif

  if (!initialArgumentsMatch(f1, f2, PotIMatches1) ||
      !initialArgumentsMatch(f2, f1, PotIMatches2)) {
    return false;
  }

  for (inst_iterator I1 = inst_begin(f1), E1 = inst_end(f1); I1 != E1; ++I1) {
    // dumpLLVMNode(&*I1);
    for (inst_iterator I2 = inst_begin(f2), E2 = inst_end(f2); I2 != E2; ++I2) {
      // llvm::errs() << "\n\t";
      // dumpLLVMNode(&*I2);
      if (deepMatch(&*I1, &*I2, G1, G2)) {
        PotIMatches1[&*I1].insert(&*I2);
      }
    }

    if (PotIMatches1[&*I1].size() == 0) {
//      llvm::errs()
//          << "\n\n[Error] Failed to extract initial Potential (1) Matches for:";
      dumpLLVMNode(&*I1);
      return false;
    }
  }

  for (inst_iterator I2 = inst_begin(f2), E2 = inst_end(f2); I2 != E2; ++I2) {
    // dumpLLVMNode(&*I2);
    for (inst_iterator I1 = inst_begin(f1), E1 = inst_end(f1); I1 != E1; ++I1) {
      // llvm::errs() << "\t";
      // dumpLLVMNode(&*I1);
      if (deepMatch(&*I2, &*I1, G2, G1)) {
        PotIMatches2[&*I2].insert(&*I1);
      }
    }

    if (PotIMatches2[&*I2].size() == 0) {
//      llvm::errs()
//          << "\n\n[Error] Failed to extract initial Potential (2) Matches for:";
      dumpLLVMNode(&*I2);
      return false;
    }
  }

#ifdef MATCHER_DEBUG
  dumpPotIMatches();
  llvm::errs() << "\n\n[Info] Retrieve Potential Matches: End\n";
// dumpPotIMatchesStats();
#endif

  return true;
}

/*
  Contraining the potential matches for geps, helps
  disamguating many downstream istructions including stores.

  We should not constrain the stores based on control flow at this point,
  because the dualSim algo can handle to some degree out of order stores.
*/
bool IterativePruningMatcher::deepMatch(Instruction *I1, Instruction *I2,
                                        DataDepGraph *g1, DataDepGraph *g2) {
  if (!I1 || !I2)
    return false;

  if (I1->getOpcode() != I2->getOpcode())
    return false;

  // Arity Match
  // size_t arityCount1 = g1->getAdj(I1).size();
  // size_t arityCount2 = g2->getAdj(I2).size();

  // if (arityCount1 != arityCount2)
  //   return false;

  const GetElementPtrInst *GEPL = dyn_cast<GetElementPtrInst>(I1);
  const GetElementPtrInst *GEPR = dyn_cast<GetElementPtrInst>(I2);

  if (GEPL && GEPR) {
    auto res = cmpGEPs(GEPL, GEPR);
    // if (res == 0) {
    //  llvm::errs() << *I1 << "\n" << *I2 << "\n\n";
    //}
    return res == 0;
  }

  if (dyn_cast<CallInst>(I1) || dyn_cast<BranchInst>(I1) ||
      dyn_cast<StoreInst>(I1) || dyn_cast<LoadInst>(I1)) {
    return true;
  }

  if (I2->getNumOperands() != I1->getNumOperands()) {
    // llvm::errs() << "Check: " << *I1 << " " << *I2 << "\n";
    // assert(0 && "deepMatch Assert!!");
    return false;
  }

  for (size_t i = 0; i < I1->getNumOperands(); i++) {
    Constant *L = dyn_cast<Constant>(I1->getOperand(i));
    Constant *R = dyn_cast<Constant>(I2->getOperand(i));

    if (!L && !R)
      continue;

    if ((L && !R) || (!L && R))
      return false;

    if (L->getValueID() == Value::ConstantExprVal &&
        R->getValueID() == Value::ConstantIntVal) {
      continue;
    }

    if (R->getValueID() == Value::ConstantExprVal &&
        L->getValueID() == Value::ConstantIntVal) {
      continue;
    }

    if (cmpConstants(L, R) != 0) {
      return false;
    }
  }

  return true;
}

/*
** Consider u be  node
**  adj(u) = {u'1, c}
**  pot(u) = {x, y}; pot(c) = c1; pot(u'1) = {x, y}
**  adj(x) = {y, c1}, adj(y) = {x, c2},

** In matcher::dualSimulation algo, y will be removed from pot(u) for u' = c
** as adj(y) ∩ pot(c) == {x, c2} ∩ {c1} is ∅
** However, x will not be removed as
**  adj(x) ∩ pot(c)   == {y, c1} ∩ {c1}   != ∅ for u' = c
**  adj(x) ∩ pot(u'1) == {y, c1} ∩ {x, y} != ∅ for u' = u'1

** In IterativePruningMatcher::dualSimulation algo, y will NOT be removed.
** The condition of removal is
**  pot(u'1) ∩ adj(y) == ∅ && pot(c) ∩ adj(y) == ∅
*/
bool IterativePruningMatcher::dualSimulation(
    DataDepGraph *g1, DataDepGraph *g2, std::map<Value *, set<Value *>> &Phi) {

  // 2:  changed←true
  bool changed = true;
  // 3:  while changed do
  while (changed) {

    // 4: changed←false
    changed = false;

    // 5: for u←Vq do
    for (auto U : g1->VertexSet) {

      if (dyn_cast<CallInst>(U))
        continue;

      map<Value *, set<Value *>> matchingVForAllUPrime;
      // 6: for u' ←Q.adj(u) do
      for (auto *UPrime : g1->getAdj(U)) {

        // 7:        Φ'(u')←∅
        set<Value *> refinedUPrimeMatches;
        // vector<Value *> deleteList;

        // 8: for v ←Φ(u) do
        for (auto V : Phi.at(&*U)) {

          // 9: Φv(u')←G.adj(v) ∩ Φ(u')
          if (!Phi.count(UPrime)) {
            continue;
          }

          set<Value *> &UPrimeMatches = Phi.at(UPrime);
          // assert(UPrimeMatches.size() != 0 && "Here1");
          set<Value *> VAdj = g2->getAdj(V);

          auto tempList = Intersection(UPrimeMatches, VAdj);

          // 17: Φ'(u')←Φ'(u') ∪ Φv(u')
          matchingVForAllUPrime[V].insert(tempList.begin(), tempList.end());
          refinedUPrimeMatches.insert(tempList.begin(), tempList.end());
        }

        // 22: if Φ'(u') is smaller than Φ(u') then
        // 23: changed←true
        set<Value *> &UPrimeMatches = Phi.at(UPrime);
        if (refinedUPrimeMatches.size() < UPrimeMatches.size()) {
          changed = true;
        }

        // 24: Φ(u') = Φ(u') ∩ Φ'(u')
        UPrimeMatches = Intersection(UPrimeMatches, refinedUPrimeMatches);
        // assert(UPrimeMatches.size() != 0 && "Here");
      }

      // 11: remove v from Φ(u)
      for (auto p : matchingVForAllUPrime) {
        if (p.second.size() == 0) {
          Phi.at(&*U).erase(p.first);
          changed = true;
        }
      }
    }
  }

  return changed;
}

void IterativePruningMatcher::dumpPotIMatches() {
  llvm::errs() << "\n\nIterativePruningMatcher::dumpPotIMatches: Begin\n";
  llvm::errs() << "\n\nPotIMatches1:\n";
  for (auto PotMatch : PotIMatches1) {
    if (PotMatch.second.size() == 1)
      continue;
//    llvm::errs() << "[" << PotMatch.first << "]: " << *PotMatch.first << " {\n";
//    for (auto match : PotMatch.second) {
//      llvm::errs() << "\t"
//                   << "[" << match << "]:" << *match << "\n";
//    }
//    llvm::errs() << "\t}\n\n";
  }

  // llvm::errs() << "\n\nPotIMatches2:\n";
  // for (auto PotMatch : PotIMatches2) {
  //   if (PotMatch.second.size() == 1)
  //     continue;
  //   llvm::errs() << "[" << PotMatch.first << "]: " << *PotMatch.first
  //                << " {\n ";
  //   for (auto match : PotMatch.second) {
  //     llvm::errs() << "\t"
  //                  << "[" << match << "]:" << *match << "\n";
  //   }
  //   llvm::errs() << "\t}\n\n";
  // }
  llvm::errs() << "\n\nIterativePruningMatcher::dumpPotIMatches: End\n";
}

void IterativePruningMatcher::dumpPotIMatchesStats() {
  llvm::errs() << "TBD"
               << "\n";
}

/*********************
********** Class::Matcher ***********
*********************/
Matcher::Matcher(Function *f1, Function *f2, bool useSSAEdges,
                 bool potentialMatchAccuracy)
    : MatcherBase(f1, f2, useSSAEdges) {

#ifdef MATCHER_DEBUG
  llvm::errs() << "Matching " << f1->getName() << " Vs " << f2->getName()
               << "\n";
#endif

  G1 = new DataDepGraph(f1, useSSAEdges);
  G2 = new DataDepGraph(f2, useSSAEdges);

  // retrievePotIMatches(f1, f2, potentialMatchAccuracy);
  if (!retrievePotIMatches(f1, f2, potentialMatchAccuracy)) {
    // llvm::errs() << "Early Exit\n";
    return;
  }

  if (potentialMatchAccuracy)
    return;

  dualSimulationDriver(G1, G2, PotIMatches);
  postMatchingAction();
}

bool Matcher::retrievePotIMatches(Function *f1, Function *f2,
                                  bool potentialMatchAccuracy) {
  if (!initialArgumentsMatch(f1, f2, PotIMatches)) {
    return false;
  }

  auto totalNodes = 0;
  size_t foundPotMatches = 0;

  for (inst_iterator I1 = inst_begin(f1), E1 = inst_end(f1); I1 != E1; ++I1) {
    // llvm::errs() << *I1 << "\n";
    totalNodes++;
    for (inst_iterator I2 = inst_begin(f2), E2 = inst_end(f2); I2 != E2; ++I2) {
      if (deepMatch(&*I1, &*I2, G1, G2)) {
        PotIMatches[&*I1].insert(&*I2);

        if (potentialMatchAccuracy) {
          foundPotMatches++;
          break;
        }
      }
    }

    if (potentialMatchAccuracy) {
      continue;
    }

    if (PotIMatches[&*I1].size() == 0) {
//      llvm::errs()
//          << "\n\n[Error] Failed to extract initial Potential Matches for:";
//      dumpLLVMNode(&*I1);
      return false;
    }
  }

  if (potentialMatchAccuracy) {
    llvm::errs() << "Accuracy:" << (double)(foundPotMatches) / totalNodes
                 << "\n";
    llvm::errs() << foundPotMatches << "/" << totalNodes << "\n";
  }

#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\n[Info] Retrieve Potential Matches...\n";
  dumpPotIMatches();
  dumpPotIMatchesStats();
#endif
  return true;
}

/*
  Contraining the potential matches for geps, helps
  disamguating many downstream istructions including stores.

  We should not constrain the stores based on control flow at this point,
  because the dualSim algo can handle to some degree out of order stores.
*/
bool Matcher::deepMatch(Instruction *I1, Instruction *I2, DataDepGraph *g1,
                        DataDepGraph *g2) {
  if (!I1 || !I2)
    return false;

  if (I1->getOpcode() != I2->getOpcode())
    return false;

  // Arity Match
  size_t arityCount1 = g1->getAdj(I1).size();
  size_t arityCount2 = g2->getAdj(I2).size();

  if (arityCount1 != arityCount2)
    return false;

  const GetElementPtrInst *GEPL = dyn_cast<GetElementPtrInst>(I1);
  const GetElementPtrInst *GEPR = dyn_cast<GetElementPtrInst>(I2);

  if (GEPL && GEPR) {
    return cmpGEPs(GEPL, GEPR) == 0;
  }

  if (dyn_cast<CallInst>(I1) || dyn_cast<BranchInst>(I1) ||
      dyn_cast<StoreInst>(I1) || dyn_cast<LoadInst>(I1)) {
    return true;
  }

  // if (I1->isBinaryOp()) {
  //   assert(I2->isBinaryOp() && I2->getNumOperands() == I1->getNumOperands()
  //   &&
  //          "deepMatch Assert!!");
  if (I2->getNumOperands() != I1->getNumOperands()) { // phi instructions
    // llvm::errs() << "Check: " << *I1 << " " << *I2 << "\n";
    // assert(0 && "deepMatch Assert!!");
    return false;
  }

  for (size_t i = 0; i < I1->getNumOperands(); i++) {
    Constant *L = dyn_cast<Constant>(I1->getOperand(i));
    Constant *R = dyn_cast<Constant>(I2->getOperand(i));

    if (!L && !R)
      continue;

    if ((L && !R) || (!L && R))
      return false;

    if (L->getValueID() == Value::ConstantExprVal &&
        R->getValueID() == Value::ConstantIntVal) {
      continue;
    }

    if (R->getValueID() == Value::ConstantExprVal &&
        L->getValueID() == Value::ConstantIntVal) {
      continue;
    }

    if (cmpConstants(L, R) != 0) {
      return false;
    }
  }
  //}

  return true;
}

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
bool Matcher::dualSimulation(DataDepGraph *g1, DataDepGraph *g2,
                             std::map<Value *, set<Value *>> &Phi) {

  // 2:  changed←true
  bool changed = true;
#ifdef MATCHER_DEBUG
  size_t round = 0;
#endif
  // 3:  while changed do
  while (changed) {
#ifdef MATCHER_DEBUG
    llvm::errs() << "Round: " << round++ << "\n";
#endif

    // 4: changed←false
    changed = false;

    // 5: for u←Vq do
    for (auto U : g1->VertexSet) {

#ifdef MATCHER_DEBUG
      llvm::errs() << "Fixing: ";
      dumpLLVMNode(U);
#endif
      if (dyn_cast<CallInst>(U))
        continue;

      // 6: for u' ←Q.adj(u) do
      for (auto *UPrime : g1->getAdj(U)) {

        // 7:        Φ'(u')←∅
        set<Value *> refinedUPrimeMatches;
        vector<Value *> deleteList;

        // 8: for v ←Φ(u) do
        for (auto V : Phi.at(&*U)) {

          // 9: Φv(u')←G.adj(v) ∩ Φ(u')
          if (!Phi.count(UPrime)) {
            llvm::errs() << "No potential matches for UPrime: ";
            dumpLLVMNode(UPrime);
            llvm::errs() << "Corresponding U: ";
            dumpLLVMNode(U);

            assert(0 && "No potential matches for UPrime");
          }

          set<Value *> &UPrimeMatches = Phi.at(UPrime);
          set<Value *> VAdj = g2->getAdj(V);

          auto tempList = Intersection(UPrimeMatches, VAdj);

          // 10: if Φv(u') = ∅ then
          if (!tempList.size()) {

            // 11:           remove v from Φ(u)
            deleteList.push_back(V);
#ifdef MATCHER_DEBUG
            llvm::errs() << "\nRemoving: V";
            dumpLLVMNode(V);
            llvm::errs() << "From the pot matches of U: ";
            dumpLLVMNode(&*U);

            llvm::errs() << "\n\nUprime : ";
            dumpLLVMNode(UPrime);
            llvm::errs() << "\n\nUprime Matches: ";
            for (auto &UPrimeMatch : UPrimeMatches) {
              dumpLLVMNode(UPrimeMatch);
            }

            llvm::errs() << "\n\nAdj: ";
            for (auto &adj : VAdj) {
              dumpLLVMNode(adj);
            }
            llvm::errs() << "\n";
#endif

            // 12:           if Φ(u) = ∅ then
            // 13:           return empty Φ
            if (Phi.at(&*U).size() == deleteList.size()) {
              llvm::errs() << "\n\nNo potential match for: ";
              dumpLLVMNode(&*U);

              // Update Phi before dumping.
              for (auto deleteNode : deleteList) {
                Phi.at(&*U).erase(deleteNode);
              }
              assert(0 && "Zero Match found: I");
            }

            // 15: changed←true
            changed = true;
          }

          // 17: Φ'(u')←Φ'(u') ∪ Φv(u')
          refinedUPrimeMatches.insert(tempList.begin(), tempList.end());
        }

        // 11: remove v from Φ(u)
        for (auto deleteNode : deleteList) {
          Phi.at(&*U).erase(deleteNode);
        }

        // 19: if Φ'(u') = ∅ then
        // 20:         return empty Φ
        if (refinedUPrimeMatches.size() == 0) {
          llvm::errs() << "\n\nNo potential match for: ";
          dumpLLVMNode(UPrime);

          // Update UPrimeMatches before dumping DOT.
          set<Value *> &UPrimeMatches = Phi.at(UPrime);
          UPrimeMatches = Intersection(UPrimeMatches, refinedUPrimeMatches);
          assert(0 && "Zero Match found: II");
        }

        // 22: if Φ'(u') is smaller than Φ(u') then
        // 23: changed←true
        set<Value *> &UPrimeMatches = Phi.at(UPrime);
        if (refinedUPrimeMatches.size() < UPrimeMatches.size()) {
          changed = true;
        }

        // 24: Φ(u') = Φ(u') ∩ Φ'(u')
        UPrimeMatches = Intersection(UPrimeMatches, refinedUPrimeMatches);
      }
    }
  }

  return changed;
}

bool Matcher::getResult() {
  for (auto U : G1->VertexSet) {
    if (!PotIMatches.count(&*U))
      return false;

    auto V = PotIMatches.at(&*U);
    if (V.size() != 1) {
      if (dyn_cast<BranchInst>(&*U))
        continue;

      return false;
    }
  }

  return true;
}

void Matcher::postMatchingAction() {
  // Check final results
  // llvm::errs() << "\n[Info]: Check for multiple matches\n";
  bool result = true;
  for (auto U : G1->VertexSet) {
    auto V = PotIMatches.at(&*U);
    if (V.size() != 1) {
      if (dyn_cast<BranchInst>(&*U))
        continue;

      result = false;
      // Multiple matches
      llvm::errs() << "Multiple matches exist for ";
      dumpLLVMNode(U);
      for (auto p : V) {
        dumpLLVMNode(p);
      }
    }
  }

  // if (result)
  //   llvm::errs() << "Iso Match Found\n";
  // else
  //   llvm::errs() << "Iso Match NOT Found\n";
}

void Matcher::dumpPotIMatches() {
//  for (auto PotMatch : PotIMatches) {
//    // if (nullptr == dyn_cast<StoreInst>(PotMatch.first))
//    //   continue;
//    llvm::errs() << "[" << PotMatch.first << "]: " << *PotMatch.first << " {\n";
//    for (auto match : PotMatch.second) {
//      llvm::errs() << "\t"
//                   << "[" << match << "]:" << *match << "\n";
//    }
//    llvm::errs() << "\t}\n\n";
//  }
}

void Matcher::dumpPotIMatchesStats() {
  auto n = PotIMatches.size();
  auto p = 0;
  for (auto PotMatch : PotIMatches) {
    p += PotMatch.second.size();
  }
  llvm::errs() << "Pot Match Stat: Avg p = " << ((double)p / n)
               << " n = : " << n << "\n";
}

/*********************
********** Class::MatcherBase ***********
*********************/
MatcherBase::MatcherBase(Function *f1, Function *f2, bool useSSAEdges) {
  F1 = f1;
  F2 = f2;
  // GlobalNumbers = new GlobalNumberState();
}

// Retrieve BB correspondence based on exact matches of store instructions
// We avoid benefitting from the exact matches of non-store instructions
// because
// they might get relocated to other BBs.
// Note: the current implementation may not recognize two blocks as
// corresponding if they do not have a matching store instruction.
bool MatcherBase::retrievePotBBMatches(DataDepGraph *g1,
                                       std::map<Value *, set<Value *>> &Phi) {
  bool changed = false;

  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);
    if (pMatches.size() != 1)
      continue;

    if (!dyn_cast<Instruction>(U))
      continue;

    if (!dyn_cast<StoreInst>(U))
      continue;

    auto LBB = (dyn_cast<Instruction>(U))->getParent();
    auto RBB = (dyn_cast<Instruction>(*pMatches.begin()))->getParent();

    if (!PotBBMatches.count(LBB)) {
      changed |= true;
      PotBBMatches[LBB] = RBB;

      // llvm::errs() << "\nBB match:";
      // LBB->printAsOperand(errs(), false);
      // llvm::errs() << " --> ";
      // RBB->printAsOperand(errs(), false);

      // llvm::errs() << "\nCorresponding instructions:";
      // dumpLLVMNode(U);
      // dumpLLVMNode(*pMatches.begin());

    } else {
      if (RBB != PotBBMatches.at(LBB)) {
        llvm::errs() << "BB Mismatch Reason\n\n";
        llvm::errs() << "The BB for the instr\n";
        dumpLLVMNode(U);
        llvm::errs() << "is\n";
        LBB->printAsOperand(errs(), false);

        llvm::errs() << "\nPreviously found corresponding BB:";
        PotBBMatches.at(LBB)->printAsOperand(errs(), false);

        llvm::errs() << "\nCurrently found corresponding BB: ";
        RBB->printAsOperand(errs(), false);

        llvm::errs() << "\nThe current BB belongs to the instr\n";
        dumpLLVMNode(*pMatches.begin());

        assert(0 && "BB Mismatch");
      }
    }
  }

#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nMatcherBase::retrievePotBBMatches: Start\n";
  dumpPotBBMatches();
  llvm::errs() << "\nMatcherBase::retrievePotBBMatches: End\n\n";
#endif

  return changed;
}

static std::map<Value *, int> getStoreInstOrder(BasicBlock *BB) {
  std::map<Value *, int> retval;
  size_t index = 0;
  for (Instruction &I : *BB) {
    StoreInst *StoreInstr = dyn_cast<StoreInst>(&I);
    if (StoreInstr) {
      retval[&I] = index++;
    }
  }

  return retval;
}

static std::map<Value *, int> getCallInstOrder(BasicBlock *BB) {
  std::map<Value *, int> retval;
  size_t index = 0;
  for (Instruction &I : *BB) {
    CallInst *CallInstr = dyn_cast<CallInst>(&I);
    if (CallInstr) {
      retval[&I] = index++;
    }
  }

  return retval;
}

// Check if all the instructions belong to same BB
std::pair<bool, BasicBlock *> MatcherBase::sameBB(std::set<Value *> S) {
  BasicBlock *candBB = NULL;
  for (auto candInstr : S) {
    Instruction *I = dyn_cast<Instruction>(candInstr);
    assert(I && "sameBB: not an instruction\n");

    auto PBB = I->getParent();
    if (!PBB) {
      dumpLLVMNode(I);
      assert(0 && "Null Parent Block:1 !\n");
    }

    if (!candBB) {
      candBB = PBB;
    }
    if (candBB != PBB) {
      return std::pair<bool, BasicBlock *>(false, nullptr);
    }
  }

  return std::pair<bool, BasicBlock *>(true, candBB);
}

bool MatcherBase::PHIsDisambiguationStrategy2(PHINode *LPHIInstr,
                                              set<Value *> &pMatches) {
  vector<Value *> deleNode;
  for (auto pMatch : pMatches) {
    if (LPHIInstr->getNumIncomingValues() !=
        (dyn_cast<PHINode>(pMatch))->getNumIncomingValues()) {
      deleNode.push_back(pMatch);
    }
  }

  // Check if we lost all the macthes
  if (deleNode.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy1::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(LPHIInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  bool changed = false;
  for (auto node : deleNode) {
    pMatches.erase(node);
    changed = true;
  }

  return changed;
}

bool MatcherBase::PHIsDisambiguationStrategy1(PHINode *LPHIInstr,
                                              set<Value *> &pMatches) {
  // Skip when we do not know the pot BB match for the parent BB of the
  // branch instr
  auto LBB = LPHIInstr->getParent();
  if (!PotBBMatches.count(LBB)) {
    return false;
  }

  bool changed = false;
  // Remove candidate branches belonging to different basic blocks than
  // the potential BBs matching LBB
  vector<Value *> deleNode;
  for (auto pMatch : pMatches) {
    if (PotBBMatches.at(LBB) != (dyn_cast<Instruction>(pMatch))->getParent()) {
      deleNode.push_back(pMatch);
    }
  }

  // Check if we lost all the macthes
  if (deleNode.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy1::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(LPHIInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  for (auto node : deleNode) {
    pMatches.erase(node);
    changed = true;
  }

  return changed;
}

bool MatcherBase::BranchesDisambiguationStrategy1(BranchInst *LBranchInstr,
                                                  set<Value *> &pMatches) {
  // Skip when we do not know the pot BB match for the parent BB of the
  // branch instr
  auto LBB = LBranchInstr->getParent();
  if (!PotBBMatches.count(LBB)) {
    return false;
  }

  bool changed = false;
  // Remove candidate branches belonging to different basic blocks than
  // the potential BBs matching LBB
  vector<Value *> deleNode;
  for (auto pMatch : pMatches) {
    if (PotBBMatches.at(LBB) != (dyn_cast<Instruction>(pMatch))->getParent()) {
      deleNode.push_back(pMatch);
    }
  }

  // Check if we lost all the macthes
  if (deleNode.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy1::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(LBranchInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  for (auto node : deleNode) {
    pMatches.erase(node);
    changed = true;
  }

  return changed;
}

bool MatcherBase::PHIsDisambiguationStrategy4(PHINode *L_PHIInstr,
                                              set<Value *> &pMatches) {
  set<BasicBlock *> LBBs;
  BasicBlock *LEntry = &(L_PHIInstr->getParent()->getParent()->getEntryBlock());
  BasicBlock *REntry = &((dyn_cast<PHINode>(*pMatches.begin()))
                             ->getParent()
                             ->getParent()
                             ->getEntryBlock());

  bool LIncomingBBsIncludeEntry = false;
  for (unsigned i = 0; i < L_PHIInstr->getNumIncomingValues(); i++) {
    auto candBB = L_PHIInstr->getIncomingBlock(i);
    if (candBB == LEntry) {
      LIncomingBBsIncludeEntry = true;
    }
  }

  set<Value *> deleteInstrs;
  for (auto pMatch : pMatches) {
    bool RIncomingBBsIncludeEntry = false;

    auto pMatchPHIInst = dyn_cast<PHINode>(pMatch);
    assert(pMatchPHIInst != NULL);

    for (unsigned i = 0; i < pMatchPHIInst->getNumIncomingValues(); i++) {
      if (REntry == pMatchPHIInst->getIncomingBlock(i))
        RIncomingBBsIncludeEntry = true;
    }

    if (LIncomingBBsIncludeEntry != RIncomingBBsIncludeEntry) {
      deleteInstrs.insert(pMatch);
      continue;
    }
  }

  // Check if we lost all the macthes
  if (deleteInstrs.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy2::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(L_PHIInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  bool changed = false;
  for (auto deleteInstr : deleteInstrs) {
    pMatches.erase(deleteInstr);
    changed = true;
  }

  return changed;
}

bool MatcherBase::PHIsDisambiguationStrategy3(PHINode *L_PHIInstr,
                                              set<Value *> &pMatches) {
  // For each incoming BB of the PHI instr,  find the
  // potential BB.
  set<BasicBlock *> RBBs;
  for (unsigned i = 0; i < L_PHIInstr->getNumIncomingValues(); i++) {
    auto candBB = L_PHIInstr->getIncomingBlock(i);
    if (PotBBMatches.count(candBB)) {
      RBBs.insert(PotBBMatches.at(candBB));
    }
  }

  // If we do not find the potential BB for all the incoming BB
  // then skip the processing of the current PHI instr
  if (RBBs.size() != L_PHIInstr->getNumIncomingValues())
    return false;

  // For each potential phi instr, check if the corres. set of incoming
  // BBs are same as RBBs. If not then remove that potential phi instr from
  // the pMatches set.
  set<Value *> deleteInstrs;
  for (auto pMatch : pMatches) {
    auto pMatchPHIInst = dyn_cast<PHINode>(pMatch);
    assert(pMatchPHIInst != NULL);

    set<BasicBlock *> potRBBs;
    for (unsigned i = 0; i < pMatchPHIInst->getNumIncomingValues(); i++) {
      potRBBs.insert(pMatchPHIInst->getIncomingBlock(i));
    }

    // Check if potRBBs is the same as RBBs
    if (RBBs.size() != potRBBs.size()) {
      deleteInstrs.insert(pMatch);
      continue;
    }

    for (auto RBB : RBBs) {
      if (!potRBBs.count(RBB)) {
        deleteInstrs.insert(pMatch);
        break;
      }
    }
  }

  // Check if we lost all the macthes
  if (deleteInstrs.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy2::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(L_PHIInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  bool changed = false;
  for (auto deleteInstr : deleteInstrs) {
    pMatches.erase(deleteInstr);
    changed = true;
  }

  return changed;
}

bool MatcherBase::BranchesDisambiguationStrategy2(BranchInst *L_BInstr,
                                                  set<Value *> &pMatches) {
  // For each successor BB of the branch instr,  find the
  // potential BB.
  set<BasicBlock *> RBBs;
  for (unsigned i = 0; i < L_BInstr->getNumSuccessors(); i++) {
    auto candBB = L_BInstr->getSuccessor(i);
    if (PotBBMatches.count(candBB)) {
      RBBs.insert(PotBBMatches.at(candBB));
    }
  }

  // If we do not find the potential BB for all the successor BB
  // then skip the processing of the current branch instr
  if (RBBs.size() != L_BInstr->getNumSuccessors())
    return false;

  bool changed = false;
  // For each potential branch instr, check if the corres. set of successor
  // is same as RBBs. If not then remove that potential branch instr from
  // the pMatches set.
  set<Value *> deleteInstrs;
  for (auto pMatch : pMatches) {
    auto pMatchBrInst = dyn_cast<BranchInst>(pMatch);
    assert(pMatchBrInst != NULL);

    set<BasicBlock *> potRBBs;
    for (unsigned i = 0; i < pMatchBrInst->getNumSuccessors(); i++) {
      potRBBs.insert(pMatchBrInst->getSuccessor(i));
    }

    // Check if potRBBs is the same as RBBs
    if (RBBs.size() != potRBBs.size()) {
      deleteInstrs.insert(pMatch);
      continue;
    }

    for (auto RBB : RBBs) {
      if (!potRBBs.count(RBB)) {
        deleteInstrs.insert(pMatch);
        break;
      }
    }
  }

  // Check if we lost all the macthes
  if (deleteInstrs.size() == pMatches.size()) {
    llvm::errs() << "MatcherBase::BranchesDisambiguationStrategy2::Pruned all "
                    "potential matches for branch: \n";
    dumpLLVMNode(L_BInstr);
    llvm::errs() << "The matches are: \n";
    for (auto pMatch : pMatches) {
      dumpLLVMNode(pMatch);
    }

    exit(1);
  }

  for (auto deleteInstr : deleteInstrs) {
    pMatches.erase(deleteInstr);
    changed = true;
  }

  return changed;
}

bool MatcherBase::handleConflictingPHIs(DataDepGraph *g1,
                                        std::map<Value *, set<Value *>> &Phi) {
  bool changed = false;

  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    // Skip non-phi instructions
    PHINode *LPHIInstr = dyn_cast<PHINode>(U);
    if (!LPHIInstr)
      continue;

    // Two phi instructions are matching if their parent BBs are.
    // Note: The algo to decide two BBs are matching is not complete; i.e. the
    // algo
    // may conclude that the BBs are not macthing even if they are in reality.
    // As
    // a result the enclosing phi instruction will fail to match.
    PHIsDisambiguationStrategy1(LPHIInstr, pMatches);

    PHIsDisambiguationStrategy2(LPHIInstr, pMatches);

    PHIsDisambiguationStrategy3(LPHIInstr, pMatches);

    PHIsDisambiguationStrategy4(LPHIInstr, pMatches);

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }
  }

  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);

    PHINode *LPHIInstr = dyn_cast<PHINode>(U);
    if (!LPHIInstr)
      continue;

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1)
      continue;

    auto LBB = LPHIInstr->getParent();
    if (PotBBMatches.count(LBB)) {
      continue;
    }

    // Remove candidate PHI which are already matched uniquely
    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (exactIMatches.count(pMatch)) {
        deleNode.push_back(pMatch);
      }
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  return changed;
}

bool MatcherBase::handleConflictingBranches(
    DataDepGraph *g1, std::map<Value *, set<Value *>> &Phi) {
  bool changed = false;

  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    // Skip non-branch instructions
    BranchInst *LBranchInstr = dyn_cast<BranchInst>(U);
    if (!LBranchInstr)
      continue;

    // Two br instructions are matching if their parent BBs are.
    // Note: The algo to decide two BBs are matching is not complete; i.e. the
    // algo
    // may conclude that the BBs are not macthing even if they are in reality.
    // As
    // a result the enclosing br instruction will fail to match.
    BranchesDisambiguationStrategy1(LBranchInstr, pMatches);

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    // Two br instructions are matching if the target BBs are matching.
    // Scenario which cannot to disambiguated
    // 1. B1:           |  a. D1:
    // 2. br B3         |  b. br D3
    // 3. B2:           |  c. D2:
    // 4. br B3         |  d. br D3
    // 5. B3:           |  e. D3: // assume B3 and D3 are matching
    //
    // PotIMatches[2] = {b, d} & PotIMatches[4] = {b, d}
    BranchesDisambiguationStrategy2(LBranchInstr, pMatches);

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }
  }

  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);

    BranchInst *LBranchInstr = dyn_cast<BranchInst>(U);
    if (!LBranchInstr)
      continue;

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1)
      continue;

    auto LBB = LBranchInstr->getParent();
    if (PotBBMatches.count(LBB)) {
      continue;
    }

    // Remove candidate stores which are already matched uniquely
    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (exactIMatches.count(pMatch)) {
        deleNode.push_back(pMatch);
      }
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  return changed;
}

bool MatcherBase::handleConflictingCalls(DataDepGraph *g1,
                                         std::map<Value *, set<Value *>> &Phi) {
  bool changed = false;
  /*
  ** Get the worklist of all the calls
  **/
  set<CallInst *> workList;
  for (auto U : g1->VertexSet) {
    CallInst *LCallInstr = dyn_cast<CallInst>(U);
    if (LCallInstr == nullptr)
      continue;
    workList.insert(LCallInstr);
  }

  /*
  ** Disambiguate calls to some special functions
  **/
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    CallInst *LCallInstr = dyn_cast<CallInst>(U);

    string LCalledFunName = LCallInstr->getCalledFunction()->getName().str();

    if ((string::npos == LCalledFunName.find("llvm.lifetime.start")) &&
        (string::npos == LCalledFunName.find("llvm.lifetime.end")) &&
        (string::npos == LCalledFunName.find("llvm.memset"))) {
      continue;
    }

    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      string RCalledFunName =
          dyn_cast<CallInst>(pMatch)->getCalledFunction()->getName().str();
      if (string::npos != LCalledFunName.find("llvm.lifetime.start") &&
          string::npos == RCalledFunName.find("llvm.lifetime.start")) {
        deleNode.push_back(pMatch);
      } else if (string::npos != LCalledFunName.find("llvm.lifetime.end") &&
                 string::npos == RCalledFunName.find("llvm.lifetime.end")) {
        deleNode.push_back(pMatch);
      } else if (string::npos != LCalledFunName.find("llvm.memset") &&
                 string::npos == RCalledFunName.find("llvm.memset")) {
        deleNode.push_back(pMatch);
      }
    }

    // Check if we lost all the macthes
    if (deleNode.size() == pMatches.size()) {
      llvm::errs() << "Pruned all potential matches for call: \n";
      exit(1);
    }

    for (auto node : deleNode) {
      changed = true;
      pMatches.erase(node);
    }

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }
  }

  /*
  ** Remove candidate calls belonging to different basic blocks than
  ** the matching LBB
  */
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    CallInst *LCallInstr = dyn_cast<CallInst>(U);

    // Skip when we do not know the pot BB match for the call instr
    auto LBB = LCallInstr->getParent();
    if (!PotBBMatches.count(LBB)) {
      continue;
    }

    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (PotBBMatches.at(LBB) !=
          (dyn_cast<Instruction>(pMatch))->getParent()) {
        deleNode.push_back(pMatch);
      }
    }

    // Check if we lost all the macthes
    if (deleNode.size() == pMatches.size()) {
      llvm::errs() << "Pruned all potential matches for call: \n";
      dumpLLVMNode(LCallInstr);
      llvm::errs() << pMatches.size() << " matches are: \n";
      for (auto pMatch : pMatches) {
        dumpLLVMNode(pMatch);
      }

      exit(1);
    }

    for (auto node : deleNode) {
      changed = true;
      pMatches.erase(node);
    }

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }
  }

  /*
  ** If still we have multiple store candidates within the same BB,
  ** use the syntactic store order to disambiguate
  */
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    CallInst *LCallInstr = dyn_cast<CallInst>(U);
    auto LBB = LCallInstr->getParent();
    auto res = sameBB(pMatches);
    if (!res.first)
      continue;

    auto RBB = res.second;

    std::map<Value *, int> LCallInstrOrderMap = getCallInstOrder(LBB);
    std::map<Value *, int> RCallInstrOrderMap = getCallInstOrder(RBB);

    int LOrder = LCallInstrOrderMap.at(LCallInstr);
    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (LOrder != RCallInstrOrderMap.at(pMatch))
        deleNode.push_back(pMatch);
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  /*
  ** Remove candidate stores which are already matched uniquely
  */
  for (auto U : g1->VertexSet) {
    auto &pMatches = Phi.at(U);

    CallInst *LCallInstr = dyn_cast<CallInst>(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1)
      continue;

    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (exactIMatches.count(pMatch)) {
        deleNode.push_back(pMatch);
      }
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  return changed;
}

bool MatcherBase::handleConflictingStores(
    DataDepGraph *g1, std::map<Value *, set<Value *>> &Phi) {
  bool changed = false;

  /*
  ** Get the worklist of all the stores
  **/
  set<StoreInst *> workList;
  for (auto U : g1->VertexSet) {
    StoreInst *LStoreInstr = dyn_cast<StoreInst>(U);
    if (LStoreInstr == nullptr)
      continue;
    workList.insert(LStoreInstr);
  }

  /*
  ** Remove candidate stores belonging to different basic blocks than
  ** the matching LBB
  */
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);
    StoreInst *LStoreInstr = dyn_cast<StoreInst>(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    // Skip when we do not know the pot BB match for the store instr
    auto LBB = LStoreInstr->getParent();
    if (!PotBBMatches.count(LBB)) {
      continue;
    }

    // Remove candidate stores belonging to different basic blocks than
    // the matching LBB
    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (PotBBMatches.at(LBB) !=
          (dyn_cast<Instruction>(pMatch))->getParent()) {
        deleNode.push_back(pMatch);
      }
    }

    // Check if we lost all the macthes
    if (deleNode.size() == pMatches.size()) {
      llvm::errs() << "Pruned all potential matches for store: \n";
      dumpLLVMNode(LStoreInstr);
      llvm::errs() << "The matches are: \n";
      for (auto pMatch : pMatches) {
        dumpLLVMNode(pMatch);
      }

      exit(1);
    }

    for (auto node : deleNode) {
      changed = true;
      pMatches.erase(node);
    }

    // Return as we get the desired single match
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }
  }

  /*
  ** If still we have multiple store candidates within the same BB,
  ** use the syntactic store order to disambiguate
  */
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);
    StoreInst *LStoreInstr = dyn_cast<StoreInst>(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    auto LBB = LStoreInstr->getParent();
    auto res = sameBB(pMatches);
    if (!res.first)
      continue;
    auto RBB = res.second;

    std::map<Value *, int> LStoreInstrOrderMap = getStoreInstOrder(LBB);
    std::map<Value *, int> RStoreInstrOrderMap = getStoreInstOrder(RBB);

    int LOrder = LStoreInstrOrderMap.at(LStoreInstr);
    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (LOrder != RStoreInstrOrderMap.at(pMatch))
        deleNode.push_back(pMatch);
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  /*
  ** Remove candidate stores which are already matched uniquely
  */
  for (auto U : workList) {
    auto &pMatches = Phi.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    vector<Value *> deleNode;
    for (auto pMatch : pMatches) {
      if (exactIMatches.count(pMatch)) {
        deleNode.push_back(pMatch);
      }
    }

    for (auto node : deleNode) {
      changed |= true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
    }
  }

  return changed;
}

void MatcherBase::dualSimulationDriver(DataDepGraph *g1, DataDepGraph *g2,
                                       std::map<Value *, set<Value *>> &Phi) {
  bool changed = true;
#ifdef MATCHER_DEBUG
  size_t round = 0;
#endif
  while (changed) {
// Run dual simulation
#ifdef MATCHER_DEBUG
    llvm::errs() << "\n[Info]: Phase I: Dual Simulation"
                 << ": Round: " << round << "\n";
#endif
    changed = dualSimulation(g1, g2, Phi);

#ifdef MATCHER_DEBUG
    llvm::errs() << "\n\n[Info] After Dual Simulation"
                 << ": Round: " << round << "\n";
    dumpPotIMatches();
#endif

// Find BasicBlock correspondence
#ifdef MATCHER_DEBUG
    llvm::errs() << "\n[Info]: Phase II: Retrieve potential BB matches"
                 << ": Round: " << round << "\n";
#endif
    changed |= retrievePotBBMatches(g1, Phi);

// Handle conflicting stores/calls
#ifdef MATCHER_DEBUG
    llvm::errs() << "\n[Info]: Phase III: Handle Conflicting Stores"
                 << ": Round: " << round << "\n";
#endif
    changed |= handleConflictingStores(g1, Phi);

#ifdef MATCHER_DEBUG
    llvm::errs() << "\n[Info]: Phase IV: Handle Conflicting Calls"
                 << ": Round: " << round << "\n";
#endif
    changed |= handleConflictingCalls(g1, Phi);

#ifdef MATCHER_DEBUG
    llvm::errs() << "\n[Info]: Phase V: Handle Conflicting PHIs"
                 << ": Round: " << round << "\n";
#endif
    changed |= handleConflictingPHIs(g1, Phi);

#ifdef MATCHER_DEBUG
    round++;
#endif
  }
}

/*
** Assume that the arguments of the two functions are potential matches
*/
bool MatcherBase::initialArgumentsMatch(Function *f1, Function *f2,
                                        std::map<Value *, set<Value *>> &Phi) {
  if (f1->arg_size() != f2->arg_size()) {
    // llvm::errs() << "Argument count mismatch\n";
    return false;
  }
  auto argI1 = f1->arg_begin();
  auto argI2 = f2->arg_begin();

  int count = 0;
  while (argI1 != f1->arg_end() && argI2 != f2->arg_end()) {
    // if (count == 2) {
    //   IgnoreType = argI1->getType();
    // }

    Phi[&*argI1].insert(&*argI2);

    argI1++;
    argI2++;
    count++;
  }

  return true;
}

/*
** Intersection of S1 and S2
*/
set<Value *> MatcherBase::Intersection(const set<Value *> &S1,
                                       const set<Value *> &S2) {
  set<Value *> retval;
  if ((!S1.size() && S2.size()) || (!S2.size() && S1.size()))
    return retval;

  // llvm::errs() << "S1:\n";
  // for (auto s1 : S1) {
  //  llvm::errs() << "[" << s1 << "]:" << *s1 << "\n";
  //}
  // llvm::errs() << "S2:\n";
  // for (auto s2 : S2) {
  //  llvm::errs() << "[" << s2 << "]:" << *s2 << "\n";
  //}

  for (auto s1 : S1) {
    if (S2.count(s1))
      retval.insert(s1);
  }

  return retval;
}

string MatcherBase::normSSANames(const Value *V) {
  std::string texualIR;
  llvm::raw_string_ostream S(texualIR);
  S << *V;

  string retval = "";

  for (unsigned i = 0; i < texualIR.length();) {
    auto c = texualIR[i];
    retval += c;

    if (c != '%') {
      i++;
      continue;
    }

    unsigned k = i + 1;
    bool isNum = true;
    string ssaName = "";
    for (; k < texualIR.length(); k++) {
      if (isspace(texualIR[k]) || texualIR[k] == ',')
        break;

      if (!isdigit(texualIR[k])) {
        isNum = false;
        break;
      }
      ssaName += texualIR[k];
    }

    if (isNum) {
      ssaName = "Norm" + ssaName;
      retval += ssaName;
      i = k;
      continue;
    }

    i++;
  }

  return retval;
}

void MatcherBase::dumpLLVMNode(const Value *V, raw_ostream &O, bool printPtrVal,
                               bool normSequentialSSARegNames, bool comment) {

  if (printPtrVal) {
//    errs() << "[" << V << "]: " << *V << "\n";
    return;
  }

  if (normSequentialSSARegNames) {
    if (comment) {
      O << "; " + normSSANames(V);
    } else {
      O << normSSANames(V);
    }
  }
}

void MatcherBase::dumpPotBBMatches() {
  llvm::errs() << "\n\nBB matches:\n";
  for (auto p : PotBBMatches) {
    auto LBB = p.first;
    auto RBB = p.second;
    LBB->printAsOperand(errs(), false);
    llvm::errs() << " --> ";
    RBB->printAsOperand(errs(), false);
    llvm::errs() << "\n";
  }
}

int MatcherBase::cmpNumbers(uint64_t L, uint64_t R) const {
  if (L < R)
    return -1;
  if (L > R)
    return 1;
  return 0;
}

int MatcherBase::cmpAPInts(const APInt &L, const APInt &R) const {
  if (int Res = cmpNumbers(L.getBitWidth(), R.getBitWidth()))
    return Res;
  if (L.ugt(R))
    return 1;
  if (R.ugt(L))
    return -1;
  return 0;
}

/// cmpType - compares two types,
/// defines total ordering among the types set.
/// See method declaration comments for more details.
int MatcherBase::cmpTypes(Type *TyL, Type *TyR) const {
  PointerType *PTyL = dyn_cast<PointerType>(TyL);
  PointerType *PTyR = dyn_cast<PointerType>(TyR);

  const DataLayout &DL1 = F1->getParent()->getDataLayout();
  const DataLayout &DL2 = F2->getParent()->getDataLayout();

  if (PTyL && PTyL->getAddressSpace() == 0)
    TyL = DL1.getIntPtrType(TyL);
  if (PTyR && PTyR->getAddressSpace() == 0)
    TyR = DL2.getIntPtrType(TyR);

  if (TyL == TyR)
    return 0;

  if (int Res = cmpNumbers(TyL->getTypeID(), TyR->getTypeID()))
    return Res;

  switch (TyL->getTypeID()) {
  default:
    llvm_unreachable("Unknown type!");
    // Fall through in Release mode.
    LLVM_FALLTHROUGH;
  case Type::IntegerTyID:
    return cmpNumbers(cast<IntegerType>(TyL)->getBitWidth(),
                      cast<IntegerType>(TyR)->getBitWidth());
  // TyL == TyR would have returned true earlier, because types are uniqued.
  case Type::VoidTyID:
  case Type::FloatTyID:
  case Type::DoubleTyID:
  case Type::X86_FP80TyID:
  case Type::FP128TyID:
  case Type::PPC_FP128TyID:
  case Type::LabelTyID:
  case Type::MetadataTyID:
  case Type::TokenTyID:
    return 0;

  case Type::PointerTyID: {
    assert(PTyL && PTyR && "Both types must be pointers here.");
    return cmpNumbers(PTyL->getAddressSpace(), PTyR->getAddressSpace());
  }

  case Type::StructTyID: {
    StructType *STyL = cast<StructType>(TyL);
    StructType *STyR = cast<StructType>(TyR);
    if (STyL->getNumElements() != STyR->getNumElements())
      return cmpNumbers(STyL->getNumElements(), STyR->getNumElements());

    if (STyL->isPacked() != STyR->isPacked())
      return cmpNumbers(STyL->isPacked(), STyR->isPacked());

    for (unsigned i = 0, e = STyL->getNumElements(); i != e; ++i) {
      if (int Res = cmpTypes(STyL->getElementType(i), STyR->getElementType(i)))
        return Res;
    }
    return 0;
  }

  case Type::FunctionTyID: {
    FunctionType *FTyL = cast<FunctionType>(TyL);
    FunctionType *FTyR = cast<FunctionType>(TyR);
    if (FTyL->getNumParams() != FTyR->getNumParams())
      return cmpNumbers(FTyL->getNumParams(), FTyR->getNumParams());

    if (FTyL->isVarArg() != FTyR->isVarArg())
      return cmpNumbers(FTyL->isVarArg(), FTyR->isVarArg());

    if (int Res = cmpTypes(FTyL->getReturnType(), FTyR->getReturnType()))
      return Res;

    for (unsigned i = 0, e = FTyL->getNumParams(); i != e; ++i) {
      if (int Res = cmpTypes(FTyL->getParamType(i), FTyR->getParamType(i)))
        return Res;
    }
    return 0;
  }

  case Type::ArrayTyID:
  case Type::VectorTyID: {
    auto *STyL = cast<SequentialType>(TyL);
    auto *STyR = cast<SequentialType>(TyR);
    if (STyL->getNumElements() != STyR->getNumElements())
      return cmpNumbers(STyL->getNumElements(), STyR->getNumElements());
    return cmpTypes(STyL->getElementType(), STyR->getElementType());
  }
  }
}

// Determine whether two GEP operations perform the same underlying
// arithmetic.
// Read method declaration comments for more details.
int MatcherBase::cmpGEPs(const GEPOperator *GEPL,
                         const GEPOperator *GEPR) const {

  unsigned int ASL = GEPL->getPointerAddressSpace();
  unsigned int ASR = GEPR->getPointerAddressSpace();

  if (int Res = cmpNumbers(ASL, ASR))
    return Res;

  // When we have target data, we can reduce the GEP down to the value in
  // bytes
  // added to the address.
  const DataLayout &DL1 = F1->getParent()->getDataLayout();
  const DataLayout &DL2 = F2->getParent()->getDataLayout();
  unsigned BitWidth1 = DL1.getPointerSizeInBits(ASL);
  unsigned BitWidth2 = DL2.getPointerSizeInBits(ASR);
  APInt OffsetL(BitWidth1, 0), OffsetR(BitWidth2, 0);

  if (GEPL->accumulateConstantOffset(DL1, OffsetL) &&
      GEPR->accumulateConstantOffset(DL2, OffsetR))
    return cmpAPInts(OffsetL, OffsetR);
  if (int Res =
          cmpTypes(GEPL->getSourceElementType(), GEPR->getSourceElementType()))
    return Res;

  if (int Res = cmpNumbers(GEPL->getNumOperands(), GEPR->getNumOperands()))
    return Res;

  for (unsigned i = 0, e = GEPL->getNumOperands(); i != e; ++i) {
    if (int Res = cmpValues(GEPL->getOperand(i), GEPR->getOperand(i)))
      return Res;
  }

  return 0;
}

/// Constants comparison:
/// 1. Check whether type of L constant could be losslessly bitcasted to R
/// type.
/// 2. Compare constant contents.
/// For more details see declaration comments.
int MatcherBase::cmpConstants(const Constant *L, const Constant *R) const {

  Type *TyL = L->getType();
  Type *TyR = R->getType();

  // Check whether types are bitcastable. This part is just re-factored
  // Type::canLosslesslyBitCastTo method, but instead of returning true/false,
  // we also pack into result which type is "less" for us.
  int TypesRes = cmpTypes(TyL, TyR);
  if (TypesRes != 0) {
    // Types are different, but check whether we can bitcast them.
    if (!TyL->isFirstClassType()) {
      if (TyR->isFirstClassType())
        return -1;
      // Neither TyL nor TyR are values of first class type. Return the result
      // of comparing the types
      return TypesRes;
    }
    if (!TyR->isFirstClassType()) {
      if (TyL->isFirstClassType())
        return 1;
      return TypesRes;
    }

    // Vector -> Vector conversions are always lossless if the two vector
    // types
    // have the same size, otherwise not.
    unsigned TyLWidth = 0;
    unsigned TyRWidth = 0;

    if (auto *VecTyL = dyn_cast<VectorType>(TyL))
      TyLWidth = VecTyL->getBitWidth();
    if (auto *VecTyR = dyn_cast<VectorType>(TyR))
      TyRWidth = VecTyR->getBitWidth();

    if (TyLWidth != TyRWidth)
      return cmpNumbers(TyLWidth, TyRWidth);

    // Zero bit-width means neither TyL nor TyR are vectors.
    if (!TyLWidth) {
      PointerType *PTyL = dyn_cast<PointerType>(TyL);
      PointerType *PTyR = dyn_cast<PointerType>(TyR);
      if (PTyL && PTyR) {
        unsigned AddrSpaceL = PTyL->getAddressSpace();
        unsigned AddrSpaceR = PTyR->getAddressSpace();
        if (int Res = cmpNumbers(AddrSpaceL, AddrSpaceR))
          return Res;
      }
      if (PTyL)
        return 1;
      if (PTyR)
        return -1;

      // TyL and TyR aren't vectors, nor pointers. We don't know how to
      // bitcast them.
      return TypesRes;
    }
  }

  // OK, types are bitcastable, now check constant contents.

  if (L->isNullValue() && R->isNullValue())
    return TypesRes;
  if (L->isNullValue() && !R->isNullValue())
    return 1;
  if (!L->isNullValue() && R->isNullValue())
    return -1;

  auto GlobalValueL = const_cast<GlobalValue *>(dyn_cast<GlobalValue>(L));
  auto GlobalValueR = const_cast<GlobalValue *>(dyn_cast<GlobalValue>(R));
  if (GlobalValueL && GlobalValueR) {
    return cmpGlobalValues(GlobalValueL, GlobalValueR);
  }

  if (int Res = cmpNumbers(L->getValueID(), R->getValueID()))
    return Res;

  if (const auto *SeqL = dyn_cast<ConstantDataSequential>(L)) {
    const auto *SeqR = cast<ConstantDataSequential>(R);
    // This handles ConstantDataArray and ConstantDataVector. Note that we
    // compare the two raw data arrays, which might differ depending on the
    // host
    // endianness. This isn't a problem though, because the endiness of a
    // module
    // will affect the order of the constants, but this order is the same
    // for a given input module and host platform.
    return cmpMem(SeqL->getRawDataValues(), SeqR->getRawDataValues());
  }

  switch (L->getValueID()) {
  case Value::UndefValueVal:
  case Value::ConstantTokenNoneVal:
    return TypesRes;
  case Value::ConstantIntVal: {
    const APInt &LInt = cast<ConstantInt>(L)->getValue();
    const APInt &RInt = cast<ConstantInt>(R)->getValue();
    return cmpAPInts(LInt, RInt);
  }
  case Value::ConstantFPVal: {
    const APFloat &LAPF = cast<ConstantFP>(L)->getValueAPF();
    const APFloat &RAPF = cast<ConstantFP>(R)->getValueAPF();
    return cmpAPFloats(LAPF, RAPF);
  }
  case Value::ConstantArrayVal: {
    const ConstantArray *LA = cast<ConstantArray>(L);
    const ConstantArray *RA = cast<ConstantArray>(R);
    uint64_t NumElementsL = cast<ArrayType>(TyL)->getNumElements();
    uint64_t NumElementsR = cast<ArrayType>(TyR)->getNumElements();
    if (int Res = cmpNumbers(NumElementsL, NumElementsR))
      return Res;
    for (uint64_t i = 0; i < NumElementsL; ++i) {
      if (int Res = cmpConstants(cast<Constant>(LA->getOperand(i)),
                                 cast<Constant>(RA->getOperand(i))))
        return Res;
    }
    return 0;
  }
  case Value::ConstantStructVal: {
    const ConstantStruct *LS = cast<ConstantStruct>(L);
    const ConstantStruct *RS = cast<ConstantStruct>(R);
    unsigned NumElementsL = cast<StructType>(TyL)->getNumElements();
    unsigned NumElementsR = cast<StructType>(TyR)->getNumElements();
    if (int Res = cmpNumbers(NumElementsL, NumElementsR))
      return Res;
    for (unsigned i = 0; i != NumElementsL; ++i) {
      if (int Res = cmpConstants(cast<Constant>(LS->getOperand(i)),
                                 cast<Constant>(RS->getOperand(i))))
        return Res;
    }
    return 0;
  }
  case Value::ConstantVectorVal: {
    const ConstantVector *LV = cast<ConstantVector>(L);
    const ConstantVector *RV = cast<ConstantVector>(R);
    unsigned NumElementsL = cast<VectorType>(TyL)->getNumElements();
    unsigned NumElementsR = cast<VectorType>(TyR)->getNumElements();
    if (int Res = cmpNumbers(NumElementsL, NumElementsR))
      return Res;
    for (uint64_t i = 0; i < NumElementsL; ++i) {
      if (int Res = cmpConstants(cast<Constant>(LV->getOperand(i)),
                                 cast<Constant>(RV->getOperand(i))))
        return Res;
    }
    return 0;
  }
  case Value::ConstantExprVal: {
    const ConstantExpr *LE = cast<ConstantExpr>(L);
    const ConstantExpr *RE = cast<ConstantExpr>(R);

    if (LE->getOpcode() == RE->getOpcode() &&
        LE->getOpcode() == Instruction::PtrToInt)
      return 0;

    if (LE->getOpcode() != RE->getOpcode() &&
        ((LE->getOpcode() == Instruction::PtrToInt &&
          RE->getOpcode() == Instruction::Add) ||
         (LE->getOpcode() == Instruction::Add &&
          RE->getOpcode() == Instruction::PtrToInt)))
      return 0;

    // llvm::errs() << LE->getOpcode() << "\n";
    // llvm::errs() << RE->getOpcode() << "\n";

    unsigned NumOperandsL = LE->getNumOperands();
    unsigned NumOperandsR = RE->getNumOperands();
    if (int Res = cmpNumbers(NumOperandsL, NumOperandsR))
      return Res;
    for (unsigned i = 0; i < NumOperandsL; ++i) {
      if (int Res = cmpConstants(cast<Constant>(LE->getOperand(i)),
                                 cast<Constant>(RE->getOperand(i))))
        return Res;
    }
    return 0;
  }
  case Value::BlockAddressVal: {
    const BlockAddress *LBA = cast<BlockAddress>(L);
    const BlockAddress *RBA = cast<BlockAddress>(R);
    if (int Res = cmpValues(LBA->getFunction(), RBA->getFunction()))
      return Res;
    if (LBA->getFunction() == RBA->getFunction()) {
      // They are BBs in the same function. Order by which comes first in the
      // BB order of the function. This order is deterministic.
      Function *F = LBA->getFunction();
      BasicBlock *LBB = LBA->getBasicBlock();
      BasicBlock *RBB = RBA->getBasicBlock();
      if (LBB == RBB)
        return 0;
      for (BasicBlock &BB : F->getBasicBlockList()) {
        if (&BB == LBB) {
          assert(&BB != RBB);
          return -1;
        }
        if (&BB == RBB)
          return 1;
      }
      llvm_unreachable("Basic Block Address does not point to a basic block in "
                       "its function.");
      return -1;
    } else {
      // cmpValues said the functions are the same. So because they aren't
      // literally the same pointer, they must respectively be the left and
      // right functions.
      assert(LBA->getFunction() == F1 && RBA->getFunction() == F2);
      // cmpValues will tell us if these are equivalent BasicBlocks, in the
      // context of their respective functions.
      return cmpValues(LBA->getBasicBlock(), RBA->getBasicBlock());
    }
  }
  default: // Unknown constant, abort.
    dbgs() << "Looking at valueID " << L->getValueID() << "\n";
    llvm_unreachable("Constant ValueID not recognized.");
    return -1;
  }
}

int MatcherBase::cmpGlobalValues(GlobalValue *L, GlobalValue *R) const {
  // llvm::errs() << "MatcherBase::cmpGlobalValues::" << *L << "\n"
  //              << *R << "\n\n";
  // Even if the value of the globals are equal; L and R will be diff globalVals
  // pointers from two different LLVM modules. Hence the getNumber will give
  // different numbers.
  return 0;
  // uint64_t LNumber = GlobalNumbers->getNumber(L);
  // uint64_t RNumber = GlobalNumbers->getNumber(R);
  // return cmpNumbers(LNumber, RNumber);
}

int MatcherBase::cmpAPFloats(const APFloat &L, const APFloat &R) const {
  // Floats are ordered first by semantics (i.e. float, double, half, etc.),
  // then by value interpreted as a bitstring (aka APInt).
  const fltSemantics &SL = L.getSemantics(), &SR = R.getSemantics();
  if (int Res = cmpNumbers(APFloat::semanticsPrecision(SL),
                           APFloat::semanticsPrecision(SR)))
    return Res;
  if (int Res = cmpNumbers(APFloat::semanticsMaxExponent(SL),
                           APFloat::semanticsMaxExponent(SR)))
    return Res;
  if (int Res = cmpNumbers(APFloat::semanticsMinExponent(SL),
                           APFloat::semanticsMinExponent(SR)))
    return Res;
  if (int Res = cmpNumbers(APFloat::semanticsSizeInBits(SL),
                           APFloat::semanticsSizeInBits(SR)))
    return Res;
  return cmpAPInts(L.bitcastToAPInt(), R.bitcastToAPInt());
}

int MatcherBase::cmpMem(StringRef L, StringRef R) const {
  // Prevent heavy comparison, compare sizes first.
  if (int Res = cmpNumbers(L.size(), R.size()))
    return Res;

  // Compare strings lexicographically only when it is necessary: only when
  // strings are equal in size.
  return L.compare(R);
}

/// Compare two values used by the two functions under pair-wise comparison.
/// If
/// this is the first time the values are seen, they're added to the mapping
/// so
/// that we will detect mismatches on next use.
/// See comments in declaration for more details.
int MatcherBase::cmpValues(const Value *L, const Value *R) const {
  // Catch self-reference case.
  if (L == F1) {
    if (R == F2)
      return 0;
    return -1;
  }
  if (R == F2) {
    if (L == F1)
      return 0;
    return 1;
  }

  const Constant *ConstL = dyn_cast<Constant>(L);
  const Constant *ConstR = dyn_cast<Constant>(R);
  if (ConstL && ConstR) {
    if (L == R)
      return 0;
    return cmpConstants(ConstL, ConstR);
  }

  if (ConstL)
    return 1;
  if (ConstR)
    return -1;

  return 0;
  // const InlineAsm *InlineAsmL = dyn_cast<InlineAsm>(L);
  // const InlineAsm *InlineAsmR = dyn_cast<InlineAsm>(R);

  // if (InlineAsmL && InlineAsmR)
  //  return cmpInlineAsm(InlineAsmL, InlineAsmR);
  // if (InlineAsmL)
  //  return 1;
  // if (InlineAsmR)
  //  return -1;

  // auto LeftSN = sn_mapL.insert(std::make_pair(L, sn_mapL.size())),
  //     RightSN = sn_mapR.insert(std::make_pair(R, sn_mapR.size()));

  // return cmpNumbers(LeftSN.first->second, RightSN.first->second);
}

// void IterativePruningMatcher::dumpPrunedIR(
//     Function *f1, Function *f2, const std::map<Value *, set<Value *>> &Phi1,
//     const std::map<Value *, set<Value *>> &Phi2, DataDepGraph *g1,
//     DataDepGraph *g2, const string &Out) {
//   std::error_code ec;
//
//   raw_fd_ostream llir1(Out + "/query.ll", ec, sys::fs::F_Text);
//   raw_fd_ostream llir2(Out + "/target.ll", ec, sys::fs::F_Text);
//
//   /*** Dump Query function ****/
//   llvm::errs() << "Generating: " + Out + "/query.ll"
//                << "\n";
//   // dump function signature
//   llir1 << "define "
//         << " " << *f1->getReturnType() << " @" << f1->getName() << " (";
//   unsigned i = 0;
//   for (Function::const_arg_iterator ArgI = f1->arg_begin(); i <
//   f1->arg_size();
//        i++, ++ArgI) {
//     if (i == f1->arg_size() - 1) {
//       dumpLLVMNode(&*ArgI, llir1, false, true, false);
//     } else {
//       dumpLLVMNode(&*ArgI, llir1, false, true, false);
//       llir1 << ", ";
//     }
//   }
//   llir1 << " ) {\n";
//
//   unsigned totalInst1 = 0;
//   unsigned comentedInst1 = 0;
//   set<Value *> visited, multiMatches;
//   // dump function body
//   for (BasicBlock &BB : *f1) {
//     BB.printAsOperand(llir1, false);
//     llir1 << ":\n";
//     for (Instruction &I1 : BB) {
//       totalInst1++;
//       visited.clear();
//       if (shouldRemoveInstrunction(&I1, Phi1, Phi2, g1, visited,
//                                    multiMatches)) {
//         comentedInst1++;
//         dumpLLVMNode(&I1, llir1, false, true, true);
//         llir1 << "\n";
//       } else {
//         if (dyn_cast<BranchInst>(&I1)) {
//           comentedInst1++;
//         } else {
//           dumpLLVMNode(&I1, llir1, false, true, false);
//           llir1 << "\n";
//         }
//       }
//     }
//   }
//
//   llir1 << "}\n";
//   llir1.close();
//
//   // dump debug info
//   for (auto multiMatch : multiMatches) {
//     llvm::errs() << "Mulitple Matches for : ";
//     dumpLLVMNode(multiMatch);
//     for (auto p : Phi1.at(multiMatch)) {
//       llvm::errs() << "\t";
//       dumpLLVMNode(p);
//     }
//   }
//
//   /*** Dump Query function ****/
//   llvm::errs() << "Generating: " + Out + "/target.ll"
//                << "\n";
//   // dump function signature
//   llir2 << "define "
//         << " " << *f2->getReturnType() << " @" << f2->getName() << " (";
//   i = 0;
//   for (Function::const_arg_iterator ArgI = f2->arg_begin(); i <
//   f2->arg_size();
//        i++, ++ArgI) {
//     if (i == f2->arg_size() - 1) {
//       dumpLLVMNode(&*ArgI, llir2, false, true, false);
//     } else {
//       dumpLLVMNode(&*ArgI, llir2, false, true, false);
//       llir2 << ", ";
//     }
//   }
//   llir2 << " ) {\n";
//
//   unsigned totalInst2 = 0;
//   unsigned comentedInst2 = 0;
//   multiMatches.clear();
//   // dump function body
//   for (BasicBlock &BB : *f2) {
//     BB.printAsOperand(llir2, false);
//     llir2 << ":\n";
//     for (Instruction &I2 : BB) {
//       totalInst2++;
//       visited.clear();
//       if (shouldRemoveInstrunction(&I2, Phi2, Phi1, g2, visited,
//                                    multiMatches)) {
//         comentedInst2++;
//         dumpLLVMNode(&I2, llir2, false, true, true);
//         llir2 << "\n";
//       } else {
//         if (dyn_cast<BranchInst>(&I2)) {
//           comentedInst2++;
//         } else {
//           dumpLLVMNode(&I2, llir2, false, true, false);
//           llir2 << "\n";
//         }
//       }
//     }
//   }
//
//   llir2 << "}\n";
//   llir2.close();
//
//   // dump debug info
//   for (auto multiMatch : multiMatches) {
//     llvm::errs() << "Mulitple Matches for : ";
//     dumpLLVMNode(multiMatch);
//     for (auto p : Phi2.at(multiMatch)) {
//       llvm::errs() << "\t";
//       dumpLLVMNode(p);
//     }
//   }
//
//   /*** Check Final Results ****/
//   if ((totalInst1 == comentedInst1) && (totalInst2 == comentedInst2)) {
//     llvm::errs() << "Iso Match Found\n";
//   } else if ((totalInst1 != comentedInst1) && (totalInst2 != comentedInst2))
//   {
//     llvm::errs() << "Iso Match NOT Found\n";
//   } else {
//     llvm::errs() << "Partial Iso Match Found\n";
//   }
// }

// ========================================================================

// void MatcherBase::simpleSimulation(Function *F1, Function *F2) {
//
//   if (!initialMatch(F1, F2))
//     return;
//
//   // 2: changed←true
//   bool changed = true;
//   // 3: while changed do
//   while (changed) {
//     // 4: changed←false
//     changed = false;
//     // 5: for u←Vq do
//     for (inst_iterator U = inst_begin(F1), E = inst_end(F1); U != E; ++U) {
//       // 6: for u' ←Q.adj(u) do
//       for (Value::user_iterator UPrimeI = U->user_begin();
//            UPrimeI != U->user_end(); UPrimeI++) {
//         // Instruction *UPrime = dyn_cast<Instruction>(*UPrimeI);
//         Value *UPrime = dyn_cast<Value>(*UPrimeI);
//         assert(UPrime && "User not value");
//
//         vector<Value *> deleteList;
//         // 7: for v ←Φ(u) do
//         for (auto V : PotIMatches.at(&*U)) {
//           // 8: if G.adj(v) ∩ Φ(u') = ∅ then
//           set<Value *> UPrimeMatches = PotIMatches.at(UPrime);
//           set<Value *> VAdj;
//           for (Value::user_iterator VPrimeI = V->user_begin();
//                VPrimeI != V->user_end(); VPrimeI++) {
//             Value *VPrime = dyn_cast<Value>(*VPrimeI);
//             assert(VPrime && "User not value");
//             VAdj.insert(VPrime);
//           }
//
//           if (!Intersection(UPrimeMatches, VAdj).size()) {
//             deleteList.push_back(V);
//             // 13: changed←true
//             changed = true;
//           }
//         }
//
//         // 9: remove v from Φ(u)
//         for (auto deleteNode : deleteList) {
//           PotIMatches.at(&*U).erase(deleteNode);
//         }
//       }
//     }
//   }
// #ifdef MATCHER_DEBUG
//   llvm::errs() << "\n\nAfter Simple Simulation...\n";
//   dumpPotIMatches();
// #endif
// }

// bool MatcherBase::shallowMatch(Instruction *I1, Instruction *I2) {
//   if (!I1 || !I2)
//     return false;
//   return (I1->getOpcode() == I2->getOpcode());
// }

// bool MatcherBase::checkInvariant() {
//   for (auto p : PotBBMatches) {
//     auto LBB = p.first;
//     auto RBB = p.second;
//
//     string LLoadStoreOrder = "";
//     for (Instruction &I : *LBB) {
//       if (dyn_cast<StoreInst>(&I)) {
//         LLoadStoreOrder = +"S";
//       }
//       if (dyn_cast<LoadInst>(&I)) {
//         LLoadStoreOrder = +"L";
//       }
//     }
//
//     string RLoadStoreOrder = "";
//     for (Instruction &I : *RBB) {
//       if (dyn_cast<StoreInst>(&I)) {
//         RLoadStoreOrder = +"S";
//       }
//       if (dyn_cast<LoadInst>(&I)) {
//         RLoadStoreOrder = +"L";
//       }
//     }
//
//     if (LLoadStoreOrder != RLoadStoreOrder) {
//       LBB->printAsOperand(errs(), false);
//       llvm::errs() << " --> ";
//       RBB->printAsOperand(errs(), false);
//       return false;
//     }
//   }
//
//   return true;
// }

// void MatcherBase::handleConflictingBranches(
//     DataDepGraph *g1, std::map<Value *, set<Value *>> &Phi) {
// #ifdef MATCHER_DEBUG
//   llvm::errs() << "\n\nHandle Conflicting Branches: Start\n";
// #endif
//
//   // Prune potential candidates of a branch instruction based on the BB
//   // matching
//   for (auto U : g1->VertexSet) {
//     auto &pMatches = Phi.at(U);
//
//     // Process only Branch Instructions
//     BranchInst *L_BInstr = dyn_cast<BranchInst>(U);
//     if (!L_BInstr)
//       continue;
//
//     // Save the exact matches
//     if (pMatches.size() == 1) {
//       exactIMatches.insert(*pMatches.begin());
//       continue;
//     }
//
// #ifdef MATCHER_DEBUG
//     llvm::errs() << "\n\nProcessing: " << *L_BInstr << "\n";
// #endif
//
//     // For each successor BB of the branch instr,  find the
//     // potential BB.
//     set<BasicBlock *> RBBs;
//     for (unsigned i = 0; i < L_BInstr->getNumSuccessors(); i++) {
//       auto candBB = L_BInstr->getSuccessor(i);
//       if (PotBBMatches.count(candBB)) {
//         RBBs.insert(PotBBMatches.at(candBB));
//       }
//     }
//
// #ifdef MATCHER_DEBUG
//     llvm::errs() << "\nTargets: ";
//     for (auto p : RBBs) {
//       p->printAsOperand(errs(), false);
//       llvm::errs() << ", ";
//     }
// #endif
//
//     // If we do not find the potential BB for all the successor BB
//     // then skip the processing of the current branch instr
//     if (RBBs.size() != L_BInstr->getNumSuccessors())
//       continue;
//
//     // For each potential branch instr, check if the corres. set of
//     successor
//     // is same as RBBs. If not then remove that potential branch instr from
//     // the pMatches set.
//     set<Value *> deleteInstrs;
//     for (auto pMatch : pMatches) {
//       auto pMatchBrInst = dyn_cast<BranchInst>(pMatch);
//       assert(pMatchBrInst != NULL);
//
// #ifdef MATCHER_DEBUG
//       llvm::errs() << "\n\n\tPotential Br Instr: " << *pMatchBrInst <<
//       "\n";
// #endif
//
//       set<BasicBlock *> potRBBs;
//       for (unsigned i = 0; i < pMatchBrInst->getNumSuccessors(); i++) {
//         potRBBs.insert(pMatchBrInst->getSuccessor(i));
//       }
//
// #ifdef MATCHER_DEBUG
//       llvm::errs() << "\n\t\tPotential Targets: ";
//       for (auto p : potRBBs) {
//         p->printAsOperand(errs(), false);
//         llvm::errs() << ", ";
//       }
// #endif
//
//       // Check if potRBBs is the same as RBBs
//       if (RBBs.size() != potRBBs.size()) {
//         deleteInstrs.insert(pMatch);
//         continue;
//       }
//
//       for (auto RBB : RBBs) {
//         if (!potRBBs.count(RBB)) {
//           deleteInstrs.insert(pMatch);
//           break;
//         }
//       }
//     }
//
//     for (auto deleteInstr : deleteInstrs) {
// #ifdef MATCHER_DEBUG
//       llvm::errs() << "\n\n\tDeleted Br Instr: " << *deleteInstr << "\n";
// #endif
//       pMatches.erase(deleteInstr);
//     }
//   }
//
//   // Prune potential candidates of a branch instruction based on the exact
//   // branch
//   // instruction matching we collected as above.
//   for (auto U : g1->VertexSet) {
//     auto &pMatches = Phi.at(U);
//
//     // Process only Branch Instructions
//     BranchInst *L_BInstr = dyn_cast<BranchInst>(U);
//     if (!L_BInstr)
//       continue;
//
//     // Skip the exact matches
//     if (pMatches.size() == 1) {
//       continue;
//     }
//
//     // For each potential branch instr, check if it is already an exact
//     match
//     // with some other branch instruction. If yes, then remove that
//     potential
//     // branch instr from the pMatches set.
//     set<Value *> deleteInstrs;
//     for (auto pMatch : pMatches) {
//       if (exactIMatches.count(pMatch)) {
//         deleteInstrs.insert(pMatch);
//       }
//     }
//
//     for (auto deleteInstr : deleteInstrs) {
//       pMatches.erase(deleteInstr);
//     }
//   }
// #ifdef MATCHER_DEBUG
//   llvm::errs() << "\nHandle Conflicting Branches: End\n\n";
// #endif
// }
// for (inst_iterator I1 = inst_begin(f1), E1 = inst_end(f1); I1 != E1; ++I1)
// {
//   if (!Phi1.count(&*I1) || Phi1.at(&*I1).size() != 1 ||
//       !Phi2.count(*(Phi1.at(&*I1).begin())) ||
//       Phi2.at(*(Phi1.at(&*I1).begin())).size() != 1 ||
//       *(Phi2.at(*(Phi1.at(&*I1).begin())).begin()) != &*I1) {
//     llir1 << *I1 << "\n";
//   } else {
//     llir1 << "; " << *I1 << "\n";
//   }
// }

// for (inst_iterator I2 = inst_begin(f2), E2 = inst_end(f2); I2 != E2; ++I2)
// {
//   if (!Phi2.count(&*I2) || Phi2.at(&*I2).size() != 1 ||
//       !Phi1.count(*(Phi2.at(&*I2).begin())) ||
//       Phi1.at(*(Phi2.at(&*I2).begin())).size() != 1 ||
//       *(Phi1.at(*(Phi2.at(&*I2).begin())).begin()) != &*I2) {
//     llir2 << *I2 << "\n";
//   } else {
//     llir2 << "; " << *I2 << "\n";
//   }
// }
// llir2.close();
// if (!Phi2.count(&I2) || Phi2.at(&I2).size() != 1 ||
//     !Phi1.count(*(Phi2.at(&I2).begin())) ||
//     Phi1.at(*(Phi2.at(&I2).begin())).size() != 1 ||
//     *(Phi1.at(*(Phi2.at(&I2).begin())).begin()) != &I2) {

//   if (dyn_cast<BranchInst>(&I2)) {
//     llir2 << ";; " << I2 << "\n";
//     comentedInst2++;
//   } else {
//     llir2 << I2 << "\n";
//   }
// } else {
//   comentedInst2++;
//   llir2 << "; " << I2 << "\n";
// }
// if (!Phi1.count(&I1) || Phi1.at(&I1).size() != 1 ||
//    !Phi2.count(*(Phi1.at(&I1).begin())) ||
//    Phi2.at(*(Phi1.at(&I1).begin())).size() != 1 ||
//    *(Phi2.at(*(Phi1.at(&I1).begin())).begin()) != &I1) {
