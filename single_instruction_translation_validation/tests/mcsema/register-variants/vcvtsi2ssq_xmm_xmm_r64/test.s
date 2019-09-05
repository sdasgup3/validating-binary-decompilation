    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtsi2ssq %rbx, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtsi2ssq %rbx, %xmm2, %xmm1
    
    
    ret
LFE3:
