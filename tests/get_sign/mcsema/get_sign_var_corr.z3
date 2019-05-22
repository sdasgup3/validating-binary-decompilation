(declare-const sim_rax Int)
(declare-const sim_rbx Int)
(declare-const sim_rcx Int)

(declare-const rax Int)
(declare-const rbx Int)
(declare-const rcx Int)
(declare-const rsp Int)
(declare-const rbp Int)
(declare-const rcx Int)


(declare-fun sim_f (Int Int) Int)
(declare-fun f (Int Int) Int)


(= rsp_1 (f_push rbp)
(= rsp_1 rbp)
(= rdi rcx)
(= zf (f_cmp rcx 0))
(= cf (f_cmp rcx 0))
(and
  (= true (f_branch zf cf))
  (= 1 eax)
)
(and
  (= false (f_branch zf cf))
  (= 0 eax)
)

(= v11 (f_add v10 -8))
(= v12 v11)
(= v9 v12)

(= v15 v13)
(= v17 v13)
(= vzf (vf_cmp v13))
(= vcf (vf_cmp v13))
(and
  (= true (vf_branch vzf vcf))
  (= 1 v6)
)
(and
  (= false (vf_branch vzf vcf))
  (= 0 v6)
)

(check-sat)
(get-model)

  (declare-const sim_rax Int)
(declare-const sim_rbx Int)
(declare-const sim_rcx Int)

(declare-const rax Int)
(declare-const rbx Int)
(declare-const rcx Int)

(declare-fun sim_f (Int Int) Int)
(declare-fun f (Int Int) Int)

( assert
  (not
    (=
      rcx sim_rcx
    )
  )
)

(
  assert (and
    (= sim_rcx (sim_f sim_rax sim_rbx))
    (= rcx     (f     rax     rbx))
    )  
)

(check-sat)
(get-model)

  (let 
   
   ((a!1 (ite cf
(bvadd (concat #b0 ((_ extract 7 0) rcx)) #b000000001)
(concat #b0 ((_ extract 7 0) rcx)))))

   (let ((a!2 ((_ extract 7 0) (bvadd a!1 (concat #b0 ((_ extract 7 0) rbx))))))
(= a!2 #x00))

)

(let ((a!1 (ite cf
(bvadd (concat #b0 ((_ extract 7 0) rcx)) #b000000001)
(concat #b0 ((_ extract 7 0) rcx)))))
(let ((a!2 ((_ extract 7 0) (bvadd a!1 (concat #b0 ((_ extract 7 0) rbx))))))
(concat ((_ extract 63 8) rbx) a!2)))

(let ((a!1 (ite cf
(bvadd (concat #b0 ((_ extract 7 0) rcx)) #b000000001)
(concat #b0 ((_ extract 7 0) rcx)))))
(let ((a!2 ((_ extract 7 0) (bvadd a!1 (concat #b0 ((_ extract 7 0) rbx))))))
(concat ((_ extract 63 8) rbx) a!2)))
