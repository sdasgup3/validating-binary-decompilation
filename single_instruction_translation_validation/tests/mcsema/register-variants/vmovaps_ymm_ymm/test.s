    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovaps %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovaps %ymm2, %ymm1
    
    
    ret
LFE3:
