    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovdqu %ymm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovdqu %ymm1, -4(%rbp)
    
    
    ret
LFE3:
