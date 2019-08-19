/*

   When to add BB matching
   when to say that a noe is matches
*/

/* Node stucture of x86-data-flow graph*/
struct x86Node {
  NodeInfo nodeInfo;
  vector<x86Node> parents;
};

/* Variable Matching Info*/
class VarBBMatcher {
private:
  map<x86Node, set<MatchedInfo>> _var_matches;
  map<x86BB, set<LLVM::BasicBlock>> _bb_matches;

public:
  struct MatchedInfo {
    LLVMNode candidate;
    int confidence;
  };

  static void addMatchingInfo(x86Node node, vector<MatchedInfo> info) {
    for (auto i : info) {
      _var_matches[node].insert(i);
      _bb_matches[node->parent].insert(i.parent);
    }
  }

  // Returns the LLVM basic block used for searching the LLVM varibales
  // corresponding to x86Node node.
  // Return values: If the parent x86 BB of node is Entry, then return the
  // coresponding entry LLVM BB.
  // Else return all the yet unmatched LLVM BBs
  vector<LLVM::BasicBlock> getLLVMBB(x86Node node);
};

/*
  main_driver is responsible for matching the data-flow
  sub-graphs for each instruction in x86 code
*/
void main_driver(x86Code code /*The x86 code*/) {
  for (each instruction I : Instruction in code(following the control flow)) {
    for (x86Node node : dataflow graph of I in topological order) {
      matchNode(node)
    }
  }
}

void matchNode(x86Node node) {
  if (Matches.exists(node))
    return;

  findCandidateLLVMNodes(node);
}

typedef vector<LLVMNode> tuple;
void findCandidateLLVMNodes(x86Node node) {
  set<MatchedInfo> retval;

  parents = node.parents;

  /*
  ** x86 nodes with no parents corresponds to
  ** those used as argument to the current function
  */
  if (parents.size() == 0) {

    /*
    ** Find the corresponding LLVM node matches of x86Node `node` (which is a
    *register or memory)
    ** in the corresponding LLVM basic block.
    */
    auto LLVMBBs = node.getLLVMBB();
    for (auto LLVMBB : LLVMBBs) {
      retval.append(findCandidateLLVMNodesInBB(node, BB));
    }
  }

  /*
  ** If 'node' has n parents and each having O(m) LLVM node candidates,
  ** then explore all the nm candidate tuples to check which ones has a path
  ** to node
  */
  for (each candidate tuple `t` of parents) {
    // Note that the immediate parents might not have
    // matching LLVM nodes (as tthe imm. parents might have skipped in
    // decompiled LLVM);
    // In that case find the ancestors with mathcing LLVM nodes
    isReachable(t, node);
  }
}

/*
  Return true if each of the members of tuple t can reach a
  LLVM node corresponding to x86Node node.
*/
void isReachable(tuple t, x86Node node) {
  if (node == NULL)
    return;

  if (not reachable) {
    for (each child of node) {
      isReachable(t, child);
    }
  } else {
    // update matching info of node and refine that of parents
    // update the matching basic blocks
  }
}
