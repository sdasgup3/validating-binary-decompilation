    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vsubsd -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vsubsd -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE3:
