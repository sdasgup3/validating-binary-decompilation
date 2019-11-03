#############################################
######## Auto Generated Proof Scripts #######
#############################################

import z3
import sys


x1 = z3.Int('x1')
x2 = z3.Int('x2')
cf = z3.Int('cf')

s = z3.Solver()
s.add(x1 == x2)

var1 = z3.If(z3.And(x1 + 1 >= 0 , x1 + 1 <= 4294967295), x1+1, (x1+1)% 4294967296)
var2 = (x1+1)%4294967296

s.add(var1 != var2)
print(s.check());
