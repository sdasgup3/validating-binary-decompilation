    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movmskps %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movmskps %xmm1, %ebx
    
    
    ret
LFE3:
