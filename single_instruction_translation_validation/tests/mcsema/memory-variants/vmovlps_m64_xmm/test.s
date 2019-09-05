    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovlps %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovlps %xmm1, -4(%rbp)
    
    
    ret
LFE3:
