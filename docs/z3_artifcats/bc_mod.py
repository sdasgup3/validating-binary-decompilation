import z3

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

def solve(s):
  print(s)
  res = s.check()
  print(res)
  if(z3.sat == res):
    print(s.model())

REG_WIDTH=64
REG_WIDTH_MIN=-pow(2,(REG_WIDTH-1))
REG_WIDTH_MAX=pow(2,(REG_WIDTH-1))-1

RAX,RBX = z3.Ints('RAX RBX')
rax = z3.BitVec('rax',REG_WIDTH)
rbx = z3.BitVec('rbx',REG_WIDTH)
ZERO = z3.BitVecVal(0, REG_WIDTH)
BIT_ZERO =z3.BitVecVal(0, 1)
BIT_ONE = z3.BitVecVal(1, 1)

s = z3.Solver()
s.add(Int2BV(RAX, REG_WIDTH) == rax)
s.add(Int2BV(RBX, REG_WIDTH) == rbx)
s.add(RAX >= REG_WIDTH_MIN)
s.add(RBX >= REG_WIDTH_MIN)
s.add(RAX <= REG_WIDTH_MAX)
s.add(RBX <= REG_WIDTH_MAX)

s.push()
print("== SF ==")  
xvar1 = Int2BV(RAX, REG_WIDTH) & z3.BitVecVal(256-1, REG_WIDTH)
lvar1 = z3.URem(Int2BV(RAX, REG_WIDTH), z3.BitVecVal(255+2, REG_WIDTH))
#lvar1 = Int2BV(RAX % 256, REG_WIDTH)
s.add( xvar1 != lvar1)
solve(s)
s.pop()

