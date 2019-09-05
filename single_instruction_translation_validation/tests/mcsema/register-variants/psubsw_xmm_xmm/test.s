    .text
    .globl	leaf
leaf:
LFB0:
    
    
    psubsw %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    psubsw %xmm2, %xmm1
    
    
    ret
LFE3:
