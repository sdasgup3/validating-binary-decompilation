#(declare-const x Int)
#(declare-const cf Int)
#
#(assert (not (=
#    (= cf (ite (> x 0) 1 (ite (< x 0) -1 0)))
#    (and
#        (=> (> x 0) (= cf  1))
#        (=> (= x 0) (= cf  0))
#        (=> (< x 0) (= cf -1))
#    )
#)))

from z3 import *
def solve(s):
  print(s)
  res = s.check()
  print(res)
  if(z3.sat == res):
    print(s.model())

x1 = z3.Int('x1')
x2 = z3.Int('x2')
cf = z3.Int('cf')


s = z3.Solver()
s.add(x1 == x2)

var1 = (cf ==  z3.If(x1 > 0, 4, 5))  # <-- does not work
#var1 = (cf ==  z3.If(x1 > 0, 4, 5))                        # <-- does not work
#var1 = z3.If(x1 > 0, cf == 4, cf == 5)                      # <-- this works

var2 = z3.And(
      z3.Implies(x2 > 0,  cf == 4),
      z3.Implies(x2 <= 0, cf == 5)
    )

s.add(var1 != var2)
print(s.check());
