    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmaskmovq %xmm2, %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmaskmovq %xmm2, %xmm1, -4(%rbp)
    
    
    ret
LFE3:
