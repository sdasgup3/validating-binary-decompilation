    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovmskpd %ymm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovmskpd %ymm1, %ebx
    
    
    ret
LFE3:
