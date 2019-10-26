#import z3
from z3 import *

def Int2BV(a, num_bits):
    """Return the z3 expression Int2BV(a, num_bits).
    It is a bit-vector of width num_bits and represents the
    modulo of a by 2^num_bits
    """
    ctx = a.ctx
    return z3.BitVecRef(z3.Z3_mk_int2bv(ctx.ref(), num_bits, a.as_ast()), ctx)

def BV2Int(a, is_signed=False):
    """Return the Z3 expression BV2Int(a).
    >>> b = BitVec('b', 3)
    >>> BV2Int(b).sort()
    Int
    >>> x = Int('x')
    >>> x > BV2Int(b)
    x > BV2Int(b)
    >>> x > BV2Int(b, is_signed=False)
    x > BV2Int(b)
    >>> x > BV2Int(b, is_signed=True)
    x > If(b < 0, BV2Int(b) - 8, BV2Int(b))
    >>> solve(x > BV2Int(b), b == 1, x < 3)
    [x = 2, b = 1]
    """
    if z3_debug():
        _z3_assert(is_bv(a), "Z3 bit-vector expression expected")
    ctx = a.ctx
    ## investigate problem with bv2int
    return ArithRef(Z3_mk_bv2int(ctx.ref(), a.as_ast(), is_signed), ctx)

##
## syntax MInt ::= mint(Int, Int)
##
class MInt:
  def __init__(self, W, V):
    self.width = W
    self.value = V 

#def MaskInt(W, V):
#  return V &Int ((1 <<Int W) -Int 1)

##
## rule mi(W, V) => mint(W, MaskInt(W, (1 <<Int W) +Int V)) requires W >Int 0
##
def mi(width, value):
  assert (width != 0 ), "mi: Zero width not allowed on bitvectors" 
  width_max = pow(2,(width-1))-1
  width_min = pow(2,(width-1))

  retval = value % pow(2, width)
  # Add width constraint on value
  #s.add(z3.And(value >= width_min,  value <= width_max))

  return MInt(width, retval)

def solve(s):
  print(s)
  res = s.check()
  print(res)
  if(z3.sat == res):
    print(s.model())

andInt = z3.Function('andInt', z3.IntSort(), z3.IntSort(), z3.IntSort())
orInt  = z3.Function('orInt',  z3.IntSort(), z3.IntSort(), z3.IntSort())

##
## rule addMInt(mint(W, V1), mint(W, V2)) => mi(W, V1 +Int V2)
##
def addMInt(mi1, mi2):
  assert (mi1.width == mi2.width ), "addMInt: Unequal bitwidths of the operands"

  width = mi1.width
  retval = (mi1.value + mi2.value) % pow(2, width)

  return MInt(width, retval)

##
## rule eqMInt(mint(W, V1), mint(W, V2)) => V1 ==Int V2
##
def eqMInt(mi1, mi2):
  assert (mi1.width == mi2.width ), "eqMInt: Unequal bitwidths of the operands"

  return (mi1.value == mi2.value)

##
## rule extractMInt(mint(W, V), A, B) => mi(B -Int A, ((1 <<Int (B -Int A)) -Int 1) &Int (V >>Int (W -Int B)) ) requires B >Int A
##
def extractMInt(mi, A, B):
  assert (B > A), "extractMInt: 3rd operand  > 2nd operand"

  W = mi.width
  V = mi.value

#retval = (andInt((pow(2, B - A) - 1), V / pow(2, W - B))) % pow(2, B-A)
  retval = (andInt((pow(2, B - A) - 1), V / pow(2, W - B)))
  return MInt(B-A, retval)

##
## rule concatenateMInt(mint(W1, V1), mint(W2, V2)) => mi(W1 +Int W2, (V1 <<Int W2) |Int V2)
##
def concatenateMInt(mi1, mi2):
  W1 = mi1.width
  W2 = mi2.width
  V1 = mi1.value
  V2 = mi2.value

  W = W1 + W2
  retval = orInt(V1 * pow(2, W2), V2) % pow(2, W)
  retval = V2 % pow(2, W)
  return MInt(W, retval)

##
##
##
def IfMInt(C, mi1, mi2):
  assert (mi1.width == mi2.width ), "eqMInt: Unequal bitwidths of the operands"

  W = mi1.width
  V1 = mi1.value
  V2 = mi2.value

  retval = z3.If(C, V1, V2) 
  return MInt(W, retval)


s = z3.Solver()

x = z3.Int('x')
s.add(ForAll(x, andInt(0, x) == 0))
s.add(ForAll(x, andInt(x, 0) == 0))
s.add(ForAll(x, andInt(x, x) == x))

s.add(ForAll(x, orInt(0, x) == x))
s.add(ForAll(x, orInt(x, 0) == x))
s.add(ForAll(x, orInt(x, x) == x))

MAX_VAL_64 = pow(2,64)-1
MIN_VAL_64 = 0

VX_RCX,VX_RBX = z3.Ints('VX_RCX VX_RBX')
s.add(z3.And(VX_RCX >= MIN_VAL_64, VX_RCX <=  MAX_VAL_64))
s.add(z3.And(VX_RBX >= MIN_VAL_64, VX_RBX <=  MAX_VAL_64))

VL_RCX,VL_RBX = z3.Ints('VL_RCX VL_RBX')
s.add(z3.And(VL_RCX >= MIN_VAL_64, VL_RCX <=  MAX_VAL_64))
s.add(z3.And(VL_RBX >= MIN_VAL_64, VL_RBX <=  MAX_VAL_64))

s.add(VX_RBX == VL_RBX)
s.add(VX_RCX == VL_RCX)

print("== RBX ==")   
s.push()
xVar = addMInt(mi(64, VX_RCX), mi(64, VX_RBX))
lVar = (VL_RCX + VL_RBX) % pow(2, 64)

s.add( xVar.value != lVar)
solve(s)

s.pop()

print("\n\n== ZF ==")  
s.push()
xVar = IfMInt( eqMInt ( extractMInt ( addMInt ( concatenateMInt ( MInt(1,0) , mi ( 64 , VX_RCX ))  , concatenateMInt ( MInt(1, 0) , mi ( 64 , VX_RBX ) ) ) , 1 , 65 ) , MInt(64, 0)), MInt(1, 1), MInt(1, 0)) 

lVar = z3.If((VL_RCX + VL_RBX) % pow(2, 64) == 0, 1, 0)

s.add( xVar.value != lVar)
solve(s)
s.pop()
