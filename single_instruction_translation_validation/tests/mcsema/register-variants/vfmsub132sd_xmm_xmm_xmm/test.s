    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vfmsub132sd %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vfmsub132sd %xmm3, %xmm2, %xmm1
    
    
    ret
LFE3:
