#############################################
######## Auto Generated Proof Scripts #######
#############################################

import z3
import sys
s = z3.Solver()
V = z3.BitVec('V',8)
R = z3.BitVec('R',8)

var1 = z3.SRem(V, 4)
#var1 = z3.URem(V, 4)
var2 = (V & z3.BitVecVal(3, 8))

s.add(var1 != var2)
print(s.check());
m = s.model()
print(m)

print(m.evaluate(z3.SRem(V, 4)))
print(m.evaluate(V & z3.BitVecVal(3, 8)))
