    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovq %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovq %xmm1, -4(%rbp)
    
    
    ret
LFE3:
