    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovmskps %ymm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovmskps %ymm1, %ebx
    
    
    ret
LFE3:
