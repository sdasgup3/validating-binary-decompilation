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
print("== RAX ==")  
s.add( (rax ^ rbx) != Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX,  REG_WIDTH))
solve(s)
s.pop()


s.push()
print("== zf ==")  
s.add( 
    z3.If((rax ^ rbx) == ZERO, BIT_ONE, BIT_ZERO) != 
    z3.If((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX,  REG_WIDTH)) == ZERO, BIT_ONE, BIT_ZERO)
    )
solve(s)
s.pop()

s.push()
print("== sf ==")  
s.add( 
    (z3.Extract(REG_WIDTH-1, REG_WIDTH-1, rax) ^ z3.Extract(REG_WIDTH-1, REG_WIDTH-1, rbx)) != 
    z3.Extract(0, 0, z3.LShR(Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH), z3.BitVecVal(REG_WIDTH-1, REG_WIDTH)) & z3.BitVecVal(255, REG_WIDTH))
    )
solve(s)
s.pop()

s.push()
print("== pf ==")  

x1 = z3.Xor(
          (z3.Extract(7, 7, rbx) ^ z3.Extract(7, 7, rax)) == z3.BitVecVal(1, 1),
          (z3.Extract(6, 6, rbx) ^ z3.Extract(6, 6, rax)) == z3.BitVecVal(1, 1))
x2 = z3.Xor(x1, (z3.Extract(5, 5, rbx) ^ z3.Extract(5, 5, rax)) == z3.BitVecVal(1, 1))
x3 = z3.Xor(x2, (z3.Extract(4, 4, rbx) ^ z3.Extract(4, 4, rax)) == z3.BitVecVal(1, 1))
x4 = z3.Xor(x3, (z3.Extract(3, 3, rbx) ^ z3.Extract(3, 3, rax)) == z3.BitVecVal(1, 1))
x5 = z3.Xor(x4, (z3.Extract(2, 2, rbx) ^ z3.Extract(2, 2, rax)) == z3.BitVecVal(1, 1))
x6 = z3.Xor(x5, (z3.Extract(1, 1, rbx) ^ z3.Extract(1, 1, rax)) == z3.BitVecVal(1, 1))
x7 = z3.Xor(x6, (z3.Extract(0, 0, rbx) ^ z3.Extract(0, 0, rax)) == z3.BitVecVal(1, 1))
x8 = z3.Not(x7)
x9 = z3.If(x8, z3.BitVecVal(1,1), z3.BitVecVal(0,1))

v0 = (Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH) & z3.BitVecVal(1, REG_WIDTH)
v1 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(1, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v2 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(2, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v3 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(3, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v4 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(4, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v5 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(5, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v6 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(6, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v7 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(7, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v8 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(8, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v9 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH),  z3.BitVecVal(9, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v10 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(10, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v11 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(11, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v12 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(12, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v13 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(13, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v14 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(14, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v15 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(15, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v16 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(16, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v17 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(17, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v18 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(18, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v19 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(19, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v20 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(20, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v21 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(21, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v22 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(22, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v23 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(23, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v24 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(24, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v25 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(25, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v26 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(26, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v27 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(27, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v28 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(28, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v29 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(29, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v30 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(30, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)
v31 = z3.LShR((Int2BV(RAX, REG_WIDTH) ^ Int2BV(RBX, REG_WIDTH) ) & z3.BitVecVal(4294967295, REG_WIDTH) & z3.BitVecVal(255, REG_WIDTH), z3.BitVecVal(31, REG_WIDTH)) & z3.BitVecVal(1, REG_WIDTH)

v32 = ( v0 + v1 + v2 + v3 + v4 + v5 + v6 + v7 +
      v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + 
      v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + 
      v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31)

v33 =  (v32 & z3.BitVecVal(255, REG_WIDTH) & z3.BitVecVal(1, REG_WIDTH)) ^ z3.BitVecVal(1, REG_WIDTH)
v34 = z3.Extract(0,0,v33)

s.add(x9 != v34)
solve(s)
s.pop()





