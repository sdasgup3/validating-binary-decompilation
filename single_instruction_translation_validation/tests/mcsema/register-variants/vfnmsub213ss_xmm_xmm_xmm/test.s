    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vfnmsub213ss %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vfnmsub213ss %xmm3, %xmm2, %xmm1
    
    
    ret
LFE3:
