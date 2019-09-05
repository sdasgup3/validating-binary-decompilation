    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovd %ebx, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovd %ebx, %xmm1
    
    
    ret
LFE3:
