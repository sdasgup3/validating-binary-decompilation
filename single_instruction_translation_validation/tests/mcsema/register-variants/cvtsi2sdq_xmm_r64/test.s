    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvtsi2sdq %rbx, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvtsi2sdq %rbx, %xmm1
    
    
    ret
LFE3: