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
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/GraphWriter.h"
#undef DEBUG_TYPE
#define DEBUG_TYPE "llvm-dfg"
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

template <> struct GraphTraits<Function *> : public GraphTraits<Instruction *> {
  // typedef Instruction *NodeRef;
  static NodeRef getEntryNode(Function *F) {
    return &*(F->getEntryBlock().begin());
  }

  // nodes_iterator/begin/end - Allow iteration over all nodes in the graph
  // typedef pointer_iterator<Function::iterator> nodes_iterator;
  typedef pointer_iterator<inst_iterator> nodes_iterator;

  static nodes_iterator nodes_begin(Function *F) {
    // return nodes_iterator(F->begin());
    return nodes_iterator(inst_begin(*F));
  }

  static nodes_iterator nodes_end(Function *F) {
    // return nodes_iterator(F->end());
    return nodes_iterator(inst_end(*F));
  }

  // static size_t size(Function *F) { return F->size(); }
};

/*
**  Provide specializations of DOTGraphTraits to be able to print instructions
*   as dot plot nodes.
*/
template <> struct DOTGraphTraits<Function *> : public DefaultDOTGraphTraits {

  DOTGraphTraits(bool isSimple = false) : DefaultDOTGraphTraits(isSimple) {}

  static std::string getGraphName(const Function *F) {
    return "CFG for '" + F->getName().str() + "' function";
  }

  static std::string getSimpleNodeLabel(const Instruction *Node,
                                        const Function *) {
    if (!Node->getName().empty())
      return Node->getName().str();

    std::string Str;
    raw_string_ostream OS(Str);

    Node->printAsOperand(OS, false);
    return OS.str();
  }

  static std::string getCompleteNodeLabel(const Instruction *Node,
                                          const Function *) {
    enum { MaxColumns = 80 };
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

  std::string getNodeLabel(const Instruction *Node, const Function *Graph) {
    DEBUG(dbgs() << "In getNodeLabel\n");
    if (isSimple())
      return getSimpleNodeLabel(Node, Graph);
    else
      return getCompleteNodeLabel(Node, Graph);
  }
};

void writeDFGToDotFile(Function *F, string OutputDFG) {
  std::string Filename =
      OutputDFG == "" ? ("cfg." + F->getName() + ".dot").str() : OutputDFG;
  errs() << "Writing '" << Filename << "'...";

  std::error_code EC;
  raw_fd_ostream File(Filename, EC, sys::fs::F_Text);

  if (!EC) {
    WriteGraph(File, F, false, "");
  } else {
    errs() << "  error opening file for writing!";
  }
}

} // end llvm namespace

#endif
