//===-- variable_correspondence.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide GraphTraits specializations for instructions graphs
// (data flow graphs)
//
//===----------------------------------------------------------------------===//

#ifndef __LLVM_DFG_H__
#define __LLVM_DFG_H__

#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/GraphWriter.h"
#include <iostream>
#include <set>
#include <vector>

#include <set>
#undef DEBUG_TYPE
#define DEBUG_TYPE "llvm-dfg-matcher"
using namespace std;
using namespace llvm;

namespace llvm {

class InstSuccIterator
    : public std::iterator<std::input_iterator_tag, Instruction, int,
                           Instruction *, Instruction *> {
  typedef std::iterator<std::random_access_iterator_tag, Instruction, int,
                        Instruction *, Instruction *>
      super;

private:
  Instruction *I;
  unsigned idx;

public:
  typedef typename super::pointer pointer;
  typedef typename super::reference reference;

  // begin iterator
  explicit inline InstSuccIterator(Instruction *i) : I(i), idx(0) {}
  // end iterator
  inline InstSuccIterator(Instruction *i, bool) : I(i) {
    // Finding instruction successor as per the CFG
    if (!i)
      idx = 0;

    BasicBlock *BB = i->getParent();
    BasicBlock::iterator it(i);
    ++it;
    if (it != BB->end()) {
      idx = 1;
    } else {
      TerminatorInst *TI = dyn_cast<TerminatorInst>(BB->getTerminator());
      assert(TI && "TerminatorInst NULL!!");
      idx = TI->getNumSuccessors();
    }
  }

  InstSuccIterator &operator++() {
    idx++;
    return *this;
  }

  InstSuccIterator operator++(int) {
    InstSuccIterator tmp(*this);
    operator++();
    return tmp;
  }

  bool operator!=(const InstSuccIterator &rhs) const {
    return !operator==(rhs);
  }

  bool operator==(const InstSuccIterator &rhs) const { return idx == rhs.idx; }

  reference operator*() {
    BasicBlock *BB = I->getParent();
    BasicBlock::iterator it(I);

    ++it;

    if (it != BB->end()) {
      return &(*it);
    } else {
      TerminatorInst *TI = dyn_cast<TerminatorInst>(BB->getTerminator());
      assert(TI && "TerminatorInst NULL!!");
      return &*(TI->getSuccessor(idx)->begin());
    }
  }

  pointer operator->() { return operator*(); }
};

class InstdfSuccIterator
    : public std::iterator<std::input_iterator_tag, Instruction, int,
                           Instruction *, Instruction *> {
  typedef std::iterator<std::random_access_iterator_tag, Instruction, int,
                        Instruction *, Instruction *>
      super;

private:
  Instruction *I;
  unsigned idx;

public:
  typedef typename super::pointer pointer;
  typedef typename super::reference reference;

  // begin iterator
  explicit inline InstdfSuccIterator(Instruction *i) : I(i), idx(0) {}
  // end iterator
  inline InstdfSuccIterator(Instruction *i, bool) : I(i) {
    // Finding instruction successor as per the data flow
    if (!i || i->user_empty())
      idx = 0;
    idx = I->getNumUses();
  }

  InstdfSuccIterator &operator++() {
    idx++;
    return *this;
  }

  InstdfSuccIterator operator++(int) {
    InstdfSuccIterator tmp(*this);
    operator++();
    return tmp;
  }

  bool operator!=(const InstdfSuccIterator &rhs) const {
    return !operator==(rhs);
  }

  bool operator==(const InstdfSuccIterator &rhs) const {
    return idx == rhs.idx;
  }

  reference operator*() {
    Value::user_iterator it = I->user_begin();
    for (unsigned i = 0; i < idx; i++)
      it++;
    Instruction *Inst = dyn_cast<Instruction>(*it);
    if (!Inst) {
      errs() << *I << "\n";
      assert(0 && "User of above instruction is not an Instruction\n");
    }
    return Inst;
  }

  pointer operator->() { return operator*(); }
};

/*
**  Provide specializations of GraphTraits to be able to treat a function as
**  a graph of instructions...
*/
template <> struct GraphTraits<Instruction *> {
  typedef Instruction *NodeRef;
  // typedef succ_iterator ChildIteratorType;
  // typedef BasicBlock::iterator ChildIteratorType;
  typedef InstdfSuccIterator ChildIteratorType;

  static NodeRef getEntryNode(Instruction *I) { return I; }
  static ChildIteratorType child_begin(NodeRef N) {
    return InstdfSuccIterator(N);
  }
  static ChildIteratorType child_end(NodeRef N) {
    return InstdfSuccIterator(N, true);
  }
};

struct MatchInfo {
  Function *Fn;
  unordered_map<const Instruction *, int> match;
  bool color;
};

template <>
struct GraphTraits<MatchInfo *> : public GraphTraits<Instruction *> {
  // typedef Instruction *NodeRef;
  static NodeRef getEntryNode(MatchInfo *MI) {
    return &*(MI->Fn->getEntryBlock().begin());
  }

  // nodes_iterator/begin/end - Allow iteration over all nodes in the graph
  // typedef pointer_iterator<Function::iterator> nodes_iterator;
  typedef pointer_iterator<inst_iterator> nodes_iterator;

  static nodes_iterator nodes_begin(MatchInfo *MI) {
    // return nodes_iterator(F->begin());
    return nodes_iterator(inst_begin(*(MI->Fn)));
  }

  static nodes_iterator nodes_end(MatchInfo *MI) {
    // return nodes_iterator(F->end());
    return nodes_iterator(inst_end(*(MI->Fn)));
  }

  // static size_t size(Function *F) { return F->size(); }
};

/*
**  Provide specializations of DOTGraphTraits to be able to print instructions
*   as dot plot nodes.
*/
template <> struct DOTGraphTraits<MatchInfo *> : public DefaultDOTGraphTraits {

  DOTGraphTraits(bool isSimple = false) : DefaultDOTGraphTraits(isSimple) {}

  static std::string getGraphName(const MatchInfo *MI) {
    return "CFG for '" + MI->Fn->getName().str() + "' function";
  }

  static std::string getSimpleNodeLabel(const Instruction *Node,
                                        const MatchInfo *) {
    if (!Node->getName().empty())
      return Node->getName().str();

    std::string Str;
    raw_string_ostream OS(Str);

    Node->printAsOperand(OS, false);
    return OS.str();
  }

  static std::string getCompleteNodeLabel(const Instruction *Node,
                                          const MatchInfo *) {
    enum { MaxColumns = 1024 };
    std::string Str;
    raw_string_ostream OS(Str);

    if (Node->getName().empty()) {
      Node->printAsOperand(OS, false);
      OS << ":";
    }

    OS << *Node;
    std::string OutStr = OS.str();
    if (OutStr[0] == '\n')
      OutStr.erase(OutStr.begin());

    // Process string output to make it nicer...
    unsigned ColNum = 0;
    unsigned LastSpace = 0;
    for (unsigned i = 0; i != OutStr.length(); ++i) {
      if (OutStr[i] == '\n') { // Left justify
        OutStr[i] = '\\';
        OutStr.insert(OutStr.begin() + i + 1, 'l');
        ColNum = 0;
        LastSpace = 0;
      } else if (OutStr[i] == ';') {             // Delete comments!
        unsigned Idx = OutStr.find('\n', i + 1); // Find end of line
        OutStr.erase(OutStr.begin() + i, OutStr.begin() + Idx);
        --i;
      } else if (ColNum == MaxColumns) { // Wrap lines.
        // Wrap very long names even though we can't find a space.
        if (!LastSpace)
          LastSpace = i;
        OutStr.insert(LastSpace, "\\l...");
        ColNum = i - LastSpace;
        LastSpace = 0;
        i += 3; // The loop will advance 'i' again.
      } else
        ++ColNum;
      if (OutStr[i] == ' ')
        LastSpace = i;
    }
    return OutStr;
  }

  std::string getNodeLabel(const Instruction *Node, const MatchInfo *MI) {
    DEBUG(dbgs() << "In getNodeLabel\n");
    if (isSimple())
      return getSimpleNodeLabel(Node, MI);
    else
      return getCompleteNodeLabel(Node, MI);
  }

  std::string getNodeAttributes(const Instruction *Node, const MatchInfo *MI) {
    if (!MI->color)
      return "";

    auto isMatched = (MI->match).find(Node);
    if (isMatched == MI->match.end() || isMatched->second == 0) {
      return "color=red";
    } else if (isMatched->second > 1) {
      return "color=orange";
    }

    return "color=green";
  }
};

void writeDFGToDotFile(MatchInfo *MI, string OutputDFG) {
  std::string Filename =
      OutputDFG == "" ? ("cfg." + MI->Fn->getName() + ".dot").str() : OutputDFG;
  errs() << "Writing '" << Filename << "'...";

  std::error_code EC;
  raw_fd_ostream File(Filename, EC, sys::fs::F_Text);

  if (!EC) {
    WriteGraph(File, MI, false, "");
  } else {
    errs() << "  error opening file for writing!";
  }
  errs() << "\nWriting '" << Filename << "':Done\n\n";
}

typedef DOTGraphTraits<MatchInfo *> DOTTraits;
typedef GraphTraits<MatchInfo *> GTraits;
typedef typename GTraits::NodeRef NodeRef;
typedef typename GTraits::nodes_iterator node_iterator;
typedef typename GTraits::ChildIteratorType child_iterator;

} // namespace llvm

#endif
