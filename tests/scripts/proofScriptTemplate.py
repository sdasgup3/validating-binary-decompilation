import z3

def solve(s):
  #print(s)
  res = s.check()
  print(res)
  if(z3.sat == res):
    print(s.model())

## X86 specific variables
VX_RAX = z3.BitVec('VX_RAX',64)
VX_RBX = z3.BitVec('VX_RBX',64)
VX_RCX = z3.BitVec('VX_RCX',64)
VX_RDX = z3.BitVec('VX_RDX',64)
VX_RSI = z3.BitVec('VX_RSI',64)
VX_RDI = z3.BitVec('VX_RDI',64)

VX_CF = z3.BitVec('VX_CF',1)
VX_PF = z3.BitVec('VX_PF',1)
VX_ZF = z3.BitVec('VX_ZF',1)
VX_SF = z3.BitVec('VX_SF',1)
VX_AF = z3.BitVec('VX_AF',1)
VX_OF = z3.BitVec('VX_OF',1)

## LLVM specific variables
VL_RAX = z3.BitVec('VL_RAX',64)
VL_RBX = z3.BitVec('VL_RBX',64)
VL_RCX = z3.BitVec('VL_RCX',64)
VL_RDX = z3.BitVec('VL_RDX',64)
VL_RSI = z3.BitVec('VL_RSI',64)
VL_RDI = z3.BitVec('VL_RDI',64)

VL_CF = z3.BitVec('VL_CF',8)
VL_PF = z3.BitVec('VL_PF',8)
VL_ZF = z3.BitVec('VL_ZF',8)
VL_SF = z3.BitVec('VL_SF',8)
VL_AF = z3.BitVec('VL_AF',8)
VL_OF = z3.BitVec('VL_OF',8)

## Some generic variables
V_R = z3.BitVec('VL_RAX',64)
V_F = z3.BitVec('VL_OF',1)

## Solver instance
s = z3.Solver()

## Default constraints
s.add(VX_RAX == VL_RAX)
s.add(VX_RBX == VL_RBX)
s.add(VX_RCX == VL_RCX)
s.add(VX_RDX == VL_RDX)
s.add(VX_RDI == VL_RDI)
s.add(VX_RSI == VL_RSI)

s.add(z3.Or(VL_CF == 0, VL_CF == 1))
s.add(z3.Or(VL_ZF == 0, VL_ZF == 1))
s.add(z3.Or(VL_PF == 0, VL_PF == 1))
s.add(z3.Or(VL_SF == 0, VL_SF == 1))
s.add(z3.Or(VL_AF == 0, VL_AF == 1))
s.add(z3.Or(VL_OF == 0, VL_OF == 1))


s.add(z3.Extract(0,0, VL_CF) == VX_CF)
s.add(z3.Extract(0,0, VL_SF) == VX_SF)
s.add(z3.Extract(0,0, VL_ZF) == VX_ZF)
s.add(z3.Extract(0,0, VL_PF) == VX_PF)
s.add(z3.Extract(0,0, VL_AF) == VX_AF)
s.add(z3.Extract(0,0, VL_OF) == VX_OF)
