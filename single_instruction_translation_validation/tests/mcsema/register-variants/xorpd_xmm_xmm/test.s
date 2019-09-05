    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xorpd %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xorpd %xmm2, %xmm1
    
    
    ret
LFE3:
