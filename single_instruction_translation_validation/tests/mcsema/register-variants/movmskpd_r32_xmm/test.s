    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movmskpd %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movmskpd %xmm1, %ebx
    
    
    ret
LFE3:
