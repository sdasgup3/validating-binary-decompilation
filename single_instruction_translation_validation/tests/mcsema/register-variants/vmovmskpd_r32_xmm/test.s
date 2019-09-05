    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovmskpd %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovmskpd %xmm1, %ebx
    
    
    ret
LFE3:
