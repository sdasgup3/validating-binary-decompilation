#############################################
######## Auto Generated Proof Scripts #######
#############################################

import z3
import sys

status=True
test_name="UnK"
if(len(sys.argv) > 1):
  test_name = sys.argv[1]

def solve(s):
  global status

  s.set("timeout", 6000)
  res = s.check()
  print(res)

  if(z3.unknown == res):
    status = "Unknown"

  if(z3.sat == res):
    print(s.model())
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


print("\n")
print("=******= AF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.BitVecVal(0, 8))))

xvar = (V_F == VX_UNDEF_1)

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= CF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, ((z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),) & z3.BitVecVal(256 - 1, 16)) & z3.BitVecVal(1, 16)))))

xvar = (V_F == z3.Extract(0, 0, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))))

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= OF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, (z3.LShR((z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),) & z3.BitVecVal(65536 - 1, 16)), z3.BitVecVal(15, 16)) & z3.BitVecVal(256 - 1, 16)))))

xvar = (V_F == z3.Extract(15, 15, VX_RBX))

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= PF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, ((((((((((((((((((((((((((((((((((z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(31, 16)) + ((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(1, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(2, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(3, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(4, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(5, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(6, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(7, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(8, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(9, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(10, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(11, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(12, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(13, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(14, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(15, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(16, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(17, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(18, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(19, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(20, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(21, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(22, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(23, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(24, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(25, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(26, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(27, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(28, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(29, 16)) & z3.BitVecVal(1, 16))) + (z3.LShR((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) & z3.BitVecVal(255, 16)), z3.BitVecVal(30, 16)) & z3.BitVecVal(1, 16))) & z3.BitVecVal(256 - 1, 16)) & z3.BitVecVal(1, 16)) ^ z3.BitVecVal(1, 16)))))

xvar = (V_F == z3.If(z3.Not(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor(z3.Xor((z3.Extract(1, 1, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1)), (z3.Extract(2, 2, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(3, 3, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(4, 4, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(5, 5, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(6, 6, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(7, 7, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1))), (z3.Extract(8, 8, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(1, 1)))), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= RAX =******=")
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RAX), z3.Extract(55, 48, VL_RAX), z3.Extract(47, 40, VL_RAX), z3.Extract(39, 32, VL_RAX), z3.Extract(31, 24, VL_RAX), z3.Extract(23, 16, VL_RAX), z3.Extract(15, 8, VL_RAX), z3.Extract(7, 0, VL_RAX)))

xvar = (V_R == VX_RAX)

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= RBX =******=")
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RBX), z3.Extract(55, 48, VL_RBX), z3.Extract(47, 40, VL_RBX), z3.Extract(39, 32, VL_RBX), z3.Extract(31, 24, VL_RBX), z3.Extract(23, 16, VL_RBX), z3.Extract(15, 8, ((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16))), z3.Extract(7, 0, ((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)))))

xvar = (V_R == z3.Concat(z3.Extract(63, 16, VX_RBX), z3.Extract(16, 1, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17)))))

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= RCX =******=")
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RCX), z3.Extract(55, 48, VL_RCX), z3.Extract(47, 40, VL_RCX), z3.Extract(39, 32, VL_RCX), z3.Extract(31, 24, VL_RCX), z3.Extract(23, 16, VL_RCX), z3.Extract(15, 8, VL_RCX), z3.Extract(7, 0, VL_RCX)))

xvar = (V_R == VX_RCX)

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= RDX =******=")
s.push()

lvar = (V_R == z3.Concat(z3.Extract(63, 56, VL_RDX), z3.Extract(55, 48, VL_RDX), z3.Extract(47, 40, VL_RDX), z3.Extract(39, 32, VL_RDX), z3.Extract(31, 24, VL_RDX), z3.Extract(23, 16, VL_RDX), z3.Extract(15, 8, VL_RDX), z3.Extract(7, 0, VL_RDX)))

xvar = (V_R == VX_RDX)

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= SF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.BitVecVal(0, 8))))

xvar = (V_F == z3.Extract(16, 16, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))))

s.add(lvar != xvar)

solve(s)

s.pop()

print("\n")
print("=******= ZF =******=")
s.push()

lvar = (V_F == z3.Extract(0, 0, z3.Extract(7, 0, z3.If((((z3.LShR(z3.Concat(z3.Extract(15, 8, VL_RBX),z3.Extract(7, 0, VL_RBX),), z3.BitVecVal(1, 16)) & z3.BitVecVal(65536 - 1, 16)) & z3.BitVecVal(32767, 16)) == z3.BitVecVal(0, 16)), z3.BitVecVal(1, 8), z3.BitVecVal(0, 8)))))

xvar = (V_F == z3.If((z3.Extract(16, 1, z3.LShR(z3.Concat(z3.Extract(15, 0, VX_RBX), z3.BitVecVal(0, 1)), z3.BitVecVal(1, 17))) == z3.BitVecVal(0, 16)), z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)))

s.add(lvar != xvar)

solve(s)

s.pop()

if(status == True):
  print('[6;30;42m' + 'Pass: ' + '[0m' + test_name)
else:
  if(status == False):
    print('[0;30;41m' + 'Fail: '  + '[0m' + test_name)
  else:
    print('[6;30;47m' + 'Unk: '  + '[0m' + test_name)
