    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpsrlw %xmm3, %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpsrlw %xmm3, %ymm2, %ymm1
    
    
    ret
LFE3:
