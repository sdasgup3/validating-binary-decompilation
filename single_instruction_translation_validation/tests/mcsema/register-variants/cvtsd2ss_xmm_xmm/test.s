    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvtsd2ss %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvtsd2ss %xmm2, %xmm1
    
    
    ret
LFE3:
