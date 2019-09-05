    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovdqa %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovdqa %xmm2, %xmm1
    
    
    ret
LFE3:
