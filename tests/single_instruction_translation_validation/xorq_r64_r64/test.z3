(declare-const rbx (_ BitVec 8))
(declare-const rax (_ BitVec 8))
(declare-const rcx (_ BitVec 8))
(declare-const rdx (_ BitVec 8))

(declare-const RAX Int)
(declare-const RBX Int)

( push )
(assert (not (=
(bvadd (bvxor rax rbx) #x01)
(bvadd #x01 (bvxor rcx rdx))
)))
(assert (= rax rcx))
(assert (= rbx rdx))
(check-sat)
(get-model)
(pop)

(push)
(assert (= ((_ int2bv 8) RAX) rax))
(assert (= ((_ int2bv 8) RBX) rbx))
(assert (not (=
 (bvxor rax rbx)
 (bvxor ((_ int2bv 8) RAX ) ((_ int2bv 8) RBX))
)))
;(assert (= 0 (^ RAX RBX))) <- https://github.com/Z3Prover/z3/issues/1356
(assert (>= RAX 0))
(assert (>= RBX 0))
(assert (<= RAX 127))
(assert (<= RBX 127))
(check-sat)
(get-model)
(pop)

