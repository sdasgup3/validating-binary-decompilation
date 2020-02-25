#############################################
######## Auto Generated Proof Scripts #######
#############################################

import z3
import sys

status=True
test_name="UnK"
if(len(sys.argv) > 1):
  test_name = sys.argv[1]

def solve(msg, lvar, xvar, s):
  global status

  s.set("timeout", 60000)
  res = s.check()

  if(z3.unknown == res):
    print(test_name + "::" + msg + "::unk")
    status = "Unknown"

  if(z3.sat == res):
    if("UNDEF" in xvar.sexpr()):
      print(test_name + "::" + msg + "::undef-sat")
    else:
      m = s.model()
      print(test_name + "::" + msg + "::sat")
      print("\n")
      print("query", s)
      print("\n")
      print("model", m)
      print("\n")
      print("xvar =", m.evaluate(xvar))
      print("lvar =", m.evaluate(lvar))
      print("\n")
      status = False

##############################
## X86 specific variables ####
##############################

### GPRs
VX_RAX = z3.BitVec('VX_RAX',64)
VX_RBX = z3.BitVec('VX_RBX',64)
VX_RCX = z3.BitVec('VX_RCX',64)
VX_RDX = z3.BitVec('VX_RDX',64)
VX_RSI = z3.BitVec('VX_RSI',64)
VX_RDI = z3.BitVec('VX_RDI',64)

### Flags
VX_CF = z3.BitVec('VX_CF',1)
VX_PF = z3.BitVec('VX_PF',1)
VX_ZF = z3.BitVec('VX_ZF',1)
VX_SF = z3.BitVec('VX_SF',1)
VX_AF = z3.BitVec('VX_AF',1)
VX_OF = z3.BitVec('VX_OF',1)

### YMM Registers
VX_YMM1 = z3.BitVec('VX_YMM1', 256)
VX_YMM2 = z3.BitVec('VX_YMM2', 256)

## Undef
VX_UNDEF_1 = z3.BitVec('VX_UNDEF_1', 1)
VX_UNDEF_BOOL = z3.Bool('VX_UNDEF_BOOL')

##############################
## X86 specific variables ####
##############################

### GPRs
VL_RAX = z3.BitVec('VL_RAX',64)
VL_RBX = z3.BitVec('VL_RBX',64)
VL_RCX = z3.BitVec('VL_RCX',64)
VL_RDX = z3.BitVec('VL_RDX',64)
VL_RSI = z3.BitVec('VL_RSI',64)
VL_RDI = z3.BitVec('VL_RDI',64)

### Flags
VL_CF = z3.BitVec('VL_CF',8)
VL_PF = z3.BitVec('VL_PF',8)
VL_ZF = z3.BitVec('VL_ZF',8)
VL_SF = z3.BitVec('VL_SF',8)
VL_AF = z3.BitVec('VL_AF',8)
VL_OF = z3.BitVec('VL_OF',8)

### YMM Registers
VL_YMM1_0 = z3.BitVec('VL_YMM1_0', 64)
VL_YMM1_1 = z3.BitVec('VL_YMM1_1', 64)
VL_YMM1_2 = z3.BitVec('VL_YMM1_2', 64)
VL_YMM1_3 = z3.BitVec('VL_YMM1_3', 64)

VL_YMM2_0 = z3.BitVec('VL_YMM2_0', 64)
VL_YMM2_1 = z3.BitVec('VL_YMM2_1', 64)
VL_YMM2_2 = z3.BitVec('VL_YMM2_2', 64)
VL_YMM2_3 = z3.BitVec('VL_YMM2_3', 64)

##############################
## Proof variables ###########
##############################
V_R = z3.BitVec('V_R',64)
V_F = z3.BitVec('V_F',1)
V_Y = z3.BitVec('V_Y',256)

## Solver instance
s = z3.Solver()

##############################
## Default constraints #######
##############################

### GPRs
s.add(VX_RAX == VL_RAX)
s.add(VX_RBX == VL_RBX)
s.add(VX_RCX == VL_RCX)
s.add(VX_RDX == VL_RDX)
s.add(VX_RDI == VL_RDI)
s.add(VX_RSI == VL_RSI)

### Flags
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

### Ymms
s.add(z3.Concat(VL_YMM1_3, VL_YMM1_2, VL_YMM1_1, VL_YMM1_0) == VX_YMM1)
s.add(z3.Concat(VL_YMM2_3, VL_YMM2_2, VL_YMM2_1, VL_YMM2_0) == VX_YMM2)


## =******= AF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, ((((z3.LShR(((((VL_RCX ^ VL_RBX) & z3.BitVecVal(18446744073709551616 - 1, 64)) ^ ((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64))) & z3.BitVecVal(18446744073709551616 - 1, 64)), z3.BitVecVal(4, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(256 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(256 - 1, 64)))))

xvar = (V_F == ((z3.Extract(4, 4, VX_RCX) ^ z3.Extract(4, 4, VX_RBX)) ^ z3.Extract(4, 4, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX)))))

s.add(lvar != xvar)

solve("AF", lvar, xvar, s)

s.pop()

## =******= CF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.Concat(z3.BitVecVal(0, 7), z3.Extract(0, 0, z3.If(z3.ULT(VL_RBX, VL_RCX), z3.BitVecVal(1, 8), z3.BitVecVal(0, 8)))))))

xvar = (V_F == z3.If(z3.Not((z3.Extract(64, 64, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve("CF", lvar, xvar, s)

s.pop()

## =******= OF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.Concat(z3.BitVecVal(0, 7), z3.Extract(0, 0, z3.If(((((((z3.LShR(((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)), z3.BitVecVal(63, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64)) ^ (z3.LShR(VL_RBX, z3.BitVecVal(63, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64))) & z3.BitVecVal(18446744073709551616 - 1, 64)) + (((z3.LShR(VL_RCX, z3.BitVecVal(63, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64)) ^ (z3.LShR(VL_RBX, z3.BitVecVal(63, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64))) & z3.BitVecVal(18446744073709551616 - 1, 64))) & z3.BitVecVal(18446744073709551616 - 1, 64)) == z3.BitVecVal(2, 64)), z3.BitVecVal(1, 8), z3.BitVecVal(0, 8)))))))

xvar = (V_F == z3.If(z3.And((((z3.Extract(63, 63, VX_RCX) ^ z3.BitVecVal(-1, 1)) == z3.BitVecVal(1, 1)) == (z3.Extract(63, 63, VX_RBX) == z3.BitVecVal(1, 1))), z3.Not((((z3.Extract(63, 63, VX_RCX) ^ z3.BitVecVal(-1, 1)) == z3.BitVecVal(1, 1)) == (z3.Extract(63, 63, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))))), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve("OF", lvar, xvar, s)

s.pop()

## =******= PF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(31, 64)) & z3.BitVecVal(4294967296 - 1, 64)) + (((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.UDiv((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(2, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(2, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(3, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(4, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(5, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(6, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(7, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(8, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(9, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(10, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(11, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(12, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(13, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(14, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(15, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(16, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(17, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(18, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(19, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(20, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(21, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(22, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(23, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(24, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(25, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(26, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(27, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(28, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(29, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) + (((z3.LShR((((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(255, 64)) & z3.BitVecVal(4294967296 - 1, 64)), z3.BitVecVal(30, 64)) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(4294967296 - 1, 64))) & z3.BitVecVal(4294967296 - 1, 64)) & z3.BitVecVal(256 - 1, 64)) & z3.BitVecVal(1, 64)) & z3.BitVecVal(256 - 1, 64)) ^ z3.BitVecVal(1, 64)) & z3.BitVecVal(256 - 1, 64)))))

xvar = (V_F == z3.If(z3.Not(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor((z3.Extract(0, 0, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1)), (z3.Extract(1, 1, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(2, 2, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(3, 3, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(4, 4, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(5, 5, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(6, 6, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1))), (z3.Extract(7, 7, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(1, 1)))), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve("PF", lvar, xvar, s)

s.pop()

## =******= RAX =******=
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RAX), z3.Extract(55, 48, VL_RAX), z3.Extract(47, 40, VL_RAX), z3.Extract(39, 32, VL_RAX), z3.Extract(31, 24, VL_RAX), z3.Extract(23, 16, VL_RAX), z3.Extract(15, 8, VL_RAX), z3.Extract(7, 0, VL_RAX)))

xvar = (V_R == VX_RAX)

s.add(lvar != xvar)

solve("RAX", lvar, xvar, s)

s.pop()

## =******= RBX =******=
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RBX), z3.Extract(55, 48, VL_RBX), z3.Extract(47, 40, VL_RBX), z3.Extract(39, 32, VL_RBX), z3.Extract(31, 24, VL_RBX), z3.Extract(23, 16, VL_RBX), z3.Extract(15, 8, VL_RBX), z3.Extract(7, 0, VL_RBX)))

xvar = (V_R == VX_RBX)

s.add(lvar != xvar)

solve("RBX", lvar, xvar, s)

s.pop()

## =******= RCX =******=
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RCX), z3.Extract(55, 48, VL_RCX), z3.Extract(47, 40, VL_RCX), z3.Extract(39, 32, VL_RCX), z3.Extract(31, 24, VL_RCX), z3.Extract(23, 16, VL_RCX), z3.Extract(15, 8, VL_RCX), z3.Extract(7, 0, VL_RCX)))

xvar = (V_R == VX_RCX)

s.add(lvar != xvar)

solve("RCX", lvar, xvar, s)

s.pop()

## =******= RDX =******=
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RDX), z3.Extract(55, 48, VL_RDX), z3.Extract(47, 40, VL_RDX), z3.Extract(39, 32, VL_RDX), z3.Extract(31, 24, VL_RDX), z3.Extract(23, 16, VL_RDX), z3.Extract(15, 8, VL_RDX), z3.Extract(7, 0, VL_RDX)))

xvar = (V_R == VX_RDX)

s.add(lvar != xvar)

solve("RDX", lvar, xvar, s)

s.pop()

## =******= SF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, ((z3.LShR(((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)), z3.BitVecVal(63, 64)) & z3.BitVecVal(18446744073709551616 - 1, 64)) & z3.BitVecVal(256 - 1, 64)))))

xvar = (V_F == z3.Extract(63, 63, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))))

s.add(lvar != xvar)

solve("SF", lvar, xvar, s)

s.pop()

## =******= ZF =******=
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.Concat(z3.BitVecVal(0, 7), z3.Extract(0, 0, z3.If((((VL_RBX - VL_RCX) & z3.BitVecVal(18446744073709551616 - 1, 64)) == z3.BitVecVal(0, 64)), z3.BitVecVal(1, 8), z3.BitVecVal(0, 8)))))))

xvar = (V_F == z3.If((z3.Extract(63, 0, ((z3.Concat(z3.BitVecVal(0, 1), (VX_RCX ^ z3.BitVecVal(-1, 64))) + z3.BitVecVal(1, 65)) + z3.Concat(z3.BitVecVal(0, 1), VX_RBX))) == z3.BitVecVal(0, 64)), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve("ZF", lvar, xvar, s)

s.pop()

if(status == True):
  print('[6;30;42m' + 'Test-Pass: ' + '[0m' + test_name)
else:
  if(status == False):
    print('[0;30;41m' + 'Test-Fail: '  + '[0m' + test_name)
  else:
    print('[6;30;47m' + 'Test-Unk: '  + '[0m' + test_name)
