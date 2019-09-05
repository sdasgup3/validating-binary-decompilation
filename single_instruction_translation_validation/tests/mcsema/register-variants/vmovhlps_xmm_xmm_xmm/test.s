    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovhlps %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovhlps %xmm3, %xmm2, %xmm1
    
    
    ret
LFE3:
