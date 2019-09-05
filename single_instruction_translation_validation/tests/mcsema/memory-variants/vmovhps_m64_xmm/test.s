    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovhps %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovhps %xmm1, -4(%rbp)
    
    
    ret
LFE3:
