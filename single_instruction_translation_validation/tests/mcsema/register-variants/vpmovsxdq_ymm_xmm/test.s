    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmovsxdq %xmm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmovsxdq %xmm2, %ymm1
    
    
    ret
LFE3:
