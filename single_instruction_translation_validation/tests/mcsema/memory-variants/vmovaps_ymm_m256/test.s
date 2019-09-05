    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovaps -4(%rbp), %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovaps -4(%rbp), %ymm1
    
    
    ret
LFE3:
