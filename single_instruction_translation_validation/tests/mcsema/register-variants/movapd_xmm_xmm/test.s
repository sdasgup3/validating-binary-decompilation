    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movapd %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movapd %xmm2, %xmm1
    
    
    ret
LFE3:
