//===-- variable_correspondence.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "llvm-graph-matching.h"
using namespace llvm;

Matcher::Matcher(Function *f1, Function *f2) {
  F1 = f1;
  F2 = f2;
  GlobalNumbers = new GlobalNumberState();
  llvm::errs() << "Matching " << F1->getName() << " Vs " << F2->getName()
               << "\n";
  retrievePotIMatches(F1, F2);
  auto res = dualSimulationDriver(F1, F2);

  if (res)
    llvm::errs() << "Iso Match Found\n";
  else
    llvm::errs() << "Iso Match NOT Found\n";
}

/*
  Contraining the potential matches for geps, helps
  disamguating many downstream istructions including stores.

  We should not constrain the stores based on control flow at this point,
  because the dualSim algo can handle to some degree out of order stores.
*/
bool Matcher::deepMatch(Instruction *I1, Instruction *I2) {
  if (!I1 || !I2)
    return false;

  if (I1->getOpcode() != I2->getOpcode())
    return false;

  const GetElementPtrInst *GEPL = dyn_cast<GetElementPtrInst>(I1);
  const GetElementPtrInst *GEPR = dyn_cast<GetElementPtrInst>(I2);

  if (GEPL && GEPR) {
    llvm::errs() << *GEPL << "\n";
    llvm::errs() << *GEPR << "\n";
    return cmpGEPs(GEPL, GEPR) == 0;
  }

  // llvm::errs() << *I1 << "\n";
  // llvm::errs() << *I2 << "\n";
  if (I1->isBinaryOp()) {
    assert(I2->isBinaryOp() && I2->getNumOperands() == I1->getNumOperands() &&
           "deepMatch Assert!!");
    for (size_t i = 0; i < I1->getNumOperands(); i++) {
      Constant *L = dyn_cast<Constant>(I1->getOperand(i));
      Constant *R = dyn_cast<Constant>(I2->getOperand(i));
      
      if( (L && !R ) || (!L && R)) return false;
      if (L && R && cmpConstants(L, R) != 0) {
        return false;
      }
    }
  }

  return true;
}

bool Matcher::shallowMatch(Instruction *I1, Instruction *I2) {
  if (!I1 || !I2)
    return false;
  return (I1->getOpcode() == I2->getOpcode());
}

void Matcher::dumpPotIMatches() {
  for (auto PotMatch : PotIMatches) {
    llvm::errs() << "[" << PotMatch.first << "]: " << *PotMatch.first << " {\n";
    for (auto match : PotMatch.second) {
      llvm::errs() << "\t"
                   << "[" << match << "]:" << *match << "\n";
    }
    llvm::errs() << "\t}\n\n";
  }
}

void Matcher::dumpPotBBMatches() {
  for (auto PotMatch : PotBBMatches) {
    llvm::errs() << "[" << PotMatch.first << "]: " << PotMatch.first->getName()
                 << " {\n";
    llvm::errs() << "\t"
                 << "[" << PotMatch.second << "]:" << PotMatch.second->getName()
                 << "\n";
    llvm::errs() << "\t}\n\n";
  }
}

void Matcher::retrievePotIMatches(Function *F1, Function *F2) {
  if (!initialMatch(F1, F2)) {
    assert(0 && "Problem with Initial Match");
    return;
  }

  for (inst_iterator I1 = inst_begin(F1), E1 = inst_end(F1); I1 != E1; ++I1) {
    for (inst_iterator I2 = inst_begin(F2), E2 = inst_end(F2); I2 != E2; ++I2) {
      // if (shallowMatch(&*I1, &*I2)) {
      if (deepMatch(&*I1, &*I2)) {
        PotIMatches[&*I1].insert(&*I2);
      }
    }
  }

#ifdef MATCHER_DEBUG
  llvm::errs() << "Retrieve Potential Matches...\n";
  dumpPotIMatches();
#endif
}

// Retrieve BB correspondence based on exact matches
bool Matcher::retrievePotBBMatches(const vector<Value *> &V) {
  bool changed = false;

  for (auto U : V) {
    auto &pMatches = PotIMatches.at(U);
    if (pMatches.size() != 1)
      continue;

    if (!dyn_cast<Instruction>(U))
      continue;

    auto LBB = (dyn_cast<Instruction>(U))->getParent();
    auto RBB = (dyn_cast<Instruction>(*pMatches.begin()))->getParent();

    if (!PotBBMatches.count(LBB)) {
      changed |= true;
      PotBBMatches[LBB] = RBB;
      // llvm::errs() << "BB Matches\n";
      // llvm::errs() << *LBB;
      // llvm::errs() << *RBB;
    } else {
      if (RBB != PotBBMatches.at(LBB)) {
        llvm::errs() << *U;
        llvm::errs() << *pMatches.begin();
        assert(0 && "BB Mismatch");
      }
    }
  }
#ifdef MATCHER_DEBUG
  llvm::errs() << "Retrieved BB Matches...\n";
  dumpPotBBMatches();
#endif

  return changed;
}

/*
** Intersection of S1 and S2
*/
static set<Value *> Intersection(const set<Value *> &S1,
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

static void dumpLLVMNode(const Value *V) {
  llvm::errs() << "[" << V << "]: " << *V << "\n";
}

/*
** Assume that the arguments of the two functions are potential matches
*/
bool Matcher::initialMatch(Function *F1, Function *F2) {
  if (F1->arg_size() != F1->arg_size()) {
    llvm::errs() << "Argument count mismatch\n";
    return false;
  }
  auto argI1 = F1->arg_begin();
  auto argI2 = F2->arg_begin();

  while (argI1 != F1->arg_end() && argI2 != F2->arg_end()) {
    // if (argI1->getType() != argI2->getType()) {
    //  llvm::errs() << "Argument type mismatch\n";
    //  llvm::errs() << *argI1 << " [" << *(argI1->getType()) << "]\n";
    //  llvm::errs() << *argI2 << " [" << *(argI2->getType()) << "]\n";
    //  return false;
    //}
    PotIMatches[&*argI1].insert(&*argI2);
    argI1++;
    argI2++;
  }

  return true;
}

// Check if all the instructions belong to same BB
std::pair<bool, BasicBlock *> static sameBB(std::set<Value *> S) {
  BasicBlock *candBB = NULL;
  for (auto candInstr : S) {
    Instruction *I = dyn_cast<Instruction>(candInstr);
    assert(I && "sameBB: not an instruction\n");

    if (!candBB) {
      candBB = I->getParent();
    }
    if (candBB != I->getParent()) {
      return std::pair<bool, BasicBlock *>(false, nullptr);
    }
  }

  return std::pair<bool, BasicBlock *>(true, candBB);
}

static std::map<Value *, int> getStoreInstOrder(BasicBlock *BB) {
  std::map<Value *, int> retval;
  size_t index = 0;
  for (Instruction &I : *BB) {
    StoreInst *StoreInstr = dyn_cast<StoreInst>(&I);
    if (StoreInstr) {
      // Value *VI = dyn_cast<Value>(&I);
      // retval[VI] = index++;
      retval[&I] = index++;
    }
  }

  return retval;
}

bool Matcher::handleConflictingStores(const vector<Value *> &V) {
  bool changed = false;
  for (auto U : V) {
    auto &pMatches = PotIMatches.at(U);

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    StoreInst *LStoreInstr = dyn_cast<StoreInst>(U);
    if (!LStoreInstr)
      continue;

    auto LBB = LStoreInstr->getParent();
    if (!PotBBMatches.count(LBB)) {
      // llvm::errs()
      //    << "dualSimulationDriver::Unable to find BB correspondence\n";
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

    for (auto node : deleNode) {
      changed = true;
      pMatches.erase(node);
    }

    if (pMatches.size() == 1) {
      exactIMatches.insert(*pMatches.begin());
      continue;
    }

    // If still we have multiple store candidates within the same BB,
    // use the syntactic store order to disambiguate
    auto res = sameBB(pMatches);
    if (!res.first)
      continue;

    auto RBB = res.second;

    std::map<Value *, int> LStoreInstrOrderMap = getStoreInstOrder(LBB);
    std::map<Value *, int> RStoreInstrOrderMap = getStoreInstOrder(RBB);

    int LOrder = LStoreInstrOrderMap.at(LStoreInstr);
    deleNode.clear();
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

  for (auto U : V) {
    auto &pMatches = PotIMatches.at(U);

    StoreInst *LStoreInstr = dyn_cast<StoreInst>(U);
    if (!LStoreInstr)
      continue;

    // Hadling multiple (>1) potential matches.
    if (pMatches.size() == 1)
      continue;

    auto LBB = LStoreInstr->getParent();
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

bool Matcher::dualSimulationDriver(Function *F1, Function *F2) {
  // Populate the vertices set Vq
  vector<Value *> V;
  auto argI1 = F1->arg_begin();
  while (argI1 != F1->arg_end()) {
    V.push_back(&*argI1);
    argI1++;
  }

  for (inst_iterator U = inst_begin(F1), E = inst_end(F1); U != E; ++U) {
    V.push_back(&*U);
  }

  bool changed = true;

  while (changed) {
    // Run dual simulation
    changed = dualSimulation(F1, F2, V);

    // Find BasicBlock correspondence
    changed |= retrievePotBBMatches(V);

    // Handle conflicting stores
    changed |= handleConflictingStores(V);
  }

  // Check final results
  for (auto U : V) {
    auto V = PotIMatches.at(&*U);
    if (V.size() != 1) {
      if (dyn_cast<BranchInst>(&*U))
        continue;
      return false;
    }
  }

  return true;
}

bool Matcher::dualSimulation(Function *F1, Function *F2,
                             const vector<Value *> &V) {

  // 2:  changed←true
  bool changed = true;
  size_t round = 0;
  // 3:  while changed do
  while (changed) {
#ifdef MATCHER_DEBUG
    llvm::errs() << "Round: " << round++ << "\n";
#endif

    // 4: changed←false
    changed = false;

    // 5: for u←Vq do
    for (auto U : V) {

      // 6: for u' ←Q.adj(u) do
      for (Value::user_iterator UPrimeI = U->user_begin();
           UPrimeI != U->user_end(); UPrimeI++) {
        Value *UPrime = dyn_cast<Value>(*UPrimeI);
        assert(UPrime && "User not value");

        // 7:        Φ'(u')←∅
        set<Value *> refinedUPrimeMatches;
        vector<Value *> deleteList;

        // 8: for v ←Φ(u) do
        for (auto V : PotIMatches.at(&*U)) {
#ifdef MATCHER_DEBUG
//          llvm::errs() << "\nu: ";
//          dumpLLVMNode(U);
//          llvm::errs() << "v: ";
//          dumpLLVMNode(V);
#endif

          // 9: Φv(u')←G.adj(v) ∩ Φ(u')
          if(!PotIMatches.count(UPrime)) {
            llvm::errs() << "No potential matches for UPrime: ";
            dumpLLVMNode(UPrime);
            llvm::errs() << "Corresponding U: ";
            dumpLLVMNode(U);
            assert(0 && "No potential matches for UPrime");
          }
          set<Value *> &UPrimeMatches = PotIMatches.at(UPrime);
          set<Value *> VAdj;
          for (Value::user_iterator VPrimeI = V->user_begin();
               VPrimeI != V->user_end(); VPrimeI++) {
            Value *VPrime = dyn_cast<Value>(*VPrimeI);
            assert(VPrime && "User not value");
            VAdj.insert(VPrime);
          }
#ifdef MATCHER_DEBUG
//          llvm::errs() << "\tu': ";
//          dumpLLVMNode(UPrime);
//          for (auto &UPrimeMatch : UPrimeMatches) {
//            llvm::errs() << "\t\tu' match: ";
//            dumpLLVMNode(UPrimeMatch);
//          }
//
//          llvm::errs() << "\n";
//          for (auto &adj : VAdj) {
//            llvm::errs() << "\t\tv adj: ";
//            dumpLLVMNode(adj);
//          }
#endif

          auto tempList = Intersection(UPrimeMatches, VAdj);

          // 10: if Φv(u') = ∅ then
          if (!tempList.size()) {

            // 11:           remove v from Φ(u)
            deleteList.push_back(V);
#ifdef MATCHER_DEBUG
            llvm::errs() << "\nRemoving: ";
            dumpLLVMNode(V);
            llvm::errs() << "From the pot matches of: ";
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
            if (PotIMatches.at(&*U).size() == deleteList.size()) {
              llvm::errs() << "\n\nNo potential match for: ";
              dumpLLVMNode(&*U);
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
          PotIMatches.at(&*U).erase(deleteNode);
        }

        // 19: if Φ'(u') = ∅ then
        // 20:         return empty Φ
        if (refinedUPrimeMatches.size() == 0) {
          llvm::errs() << "\n\nNo potential match for: ";
          dumpLLVMNode(UPrime);
          assert(0 && "Zero Match found: II");
        }

        // 22: if Φ'(u') is smaller than Φ(u') then
        // 23: changed←true
        set<Value *> &UPrimeMatches = PotIMatches.at(UPrime);
        if (refinedUPrimeMatches.size() < UPrimeMatches.size()) {
          changed = true;
        }

        // 24: Φ(u') = Φ(u') ∩ Φ'(u')
        UPrimeMatches = Intersection(UPrimeMatches, refinedUPrimeMatches);
#ifdef MATCHER_DEBUG
//        llvm::errs() << "\n\tRefined u matches: ";
//        dumpLLVMNode(&*U);
//        for (auto &UMatch : PotIMatches.at(&*U)) {
//          llvm::errs() << "\t\tu match: ";
//          dumpLLVMNode(UMatch);
//        }
//
//        llvm::errs() << "\n\tRefined u' matches: ";
//        dumpLLVMNode(UPrime);
//        for (auto &UPrimeMatch : UPrimeMatches) {
//          llvm::errs() << "\t\tu' match: ";
//          dumpLLVMNode(UPrimeMatch);
//        }
#endif
      }
    }
  }

#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nAfter Simple Simulation...\n";
  dumpPotIMatches();
#endif

  return changed;
}

void Matcher::simpleSimulation(Function *F1, Function *F2) {

  if (!initialMatch(F1, F2))
    return;

  // 2: changed←true
  bool changed = true;
  // 3: while changed do
  while (changed) {
    // 4: changed←false
    changed = false;
    // 5: for u←Vq do
    for (inst_iterator U = inst_begin(F1), E = inst_end(F1); U != E; ++U) {
      // 6: for u' ←Q.adj(u) do
      for (Value::user_iterator UPrimeI = U->user_begin();
           UPrimeI != U->user_end(); UPrimeI++) {
        // Instruction *UPrime = dyn_cast<Instruction>(*UPrimeI);
        Value *UPrime = dyn_cast<Value>(*UPrimeI);
        assert(UPrime && "User not value");

        vector<Value *> deleteList;
        // 7: for v ←Φ(u) do
        for (auto V : PotIMatches.at(&*U)) {
          // 8: if G.adj(v) ∩ Φ(u') = ∅ then
          set<Value *> UPrimeMatches = PotIMatches.at(UPrime);
          set<Value *> VAdj;
          for (Value::user_iterator VPrimeI = V->user_begin();
               VPrimeI != V->user_end(); VPrimeI++) {
            Value *VPrime = dyn_cast<Value>(*VPrimeI);
            assert(VPrime && "User not value");
            VAdj.insert(VPrime);
          }

          if (!Intersection(UPrimeMatches, VAdj).size()) {
            deleteList.push_back(V);
            // 13: changed←true
            changed = true;
          }
        }

        // 9: remove v from Φ(u)
        for (auto deleteNode : deleteList) {
          PotIMatches.at(&*U).erase(deleteNode);
        }
      }
    }
  }
#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nAfter Simple Simulation...\n";
  dumpPotIMatches();
#endif
}

int Matcher::cmpNumbers(uint64_t L, uint64_t R) const {
  if (L < R)
    return -1;
  if (L > R)
    return 1;
  return 0;
}

int Matcher::cmpAPInts(const APInt &L, const APInt &R) const {
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
int Matcher::cmpTypes(Type *TyL, Type *TyR) const {
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

// Determine whether two GEP operations perform the same underlying arithmetic.
// Read method declaration comments for more details.
int Matcher::cmpGEPs(const GEPOperator *GEPL, const GEPOperator *GEPR) const {

  unsigned int ASL = GEPL->getPointerAddressSpace();
  unsigned int ASR = GEPR->getPointerAddressSpace();

  if (int Res = cmpNumbers(ASL, ASR))
    return Res;

  // When we have target data, we can reduce the GEP down to the value in bytes
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
int Matcher::cmpConstants(const Constant *L, const Constant *R) const {

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

    // Vector -> Vector conversions are always lossless if the two vector types
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
    // compare the two raw data arrays, which might differ depending on the host
    // endianness. This isn't a problem though, because the endiness of a module
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
    DEBUG(dbgs() << "Looking at valueID " << L->getValueID() << "\n");
    llvm_unreachable("Constant ValueID not recognized.");
    return -1;
  }
}

int Matcher::cmpGlobalValues(GlobalValue *L, GlobalValue *R) const {
  uint64_t LNumber = GlobalNumbers->getNumber(L);
  uint64_t RNumber = GlobalNumbers->getNumber(R);
  return cmpNumbers(LNumber, RNumber);
}

int Matcher::cmpAPFloats(const APFloat &L, const APFloat &R) const {
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

int Matcher::cmpMem(StringRef L, StringRef R) const {
  // Prevent heavy comparison, compare sizes first.
  if (int Res = cmpNumbers(L.size(), R.size()))
    return Res;

  // Compare strings lexicographically only when it is necessary: only when
  // strings are equal in size.
  return L.compare(R);
}

/// Compare two values used by the two functions under pair-wise comparison. If
/// this is the first time the values are seen, they're added to the mapping so
/// that we will detect mismatches on next use.
/// See comments in declaration for more details.
int Matcher::cmpValues(const Value *L, const Value *R) const {
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

  return 1;
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
