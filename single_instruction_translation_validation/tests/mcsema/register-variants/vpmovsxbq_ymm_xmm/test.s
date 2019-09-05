    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmovsxbq %xmm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmovsxbq %xmm2, %ymm1
    
    
    ret
LFE3:
