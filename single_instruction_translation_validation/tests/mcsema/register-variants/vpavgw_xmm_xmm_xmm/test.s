    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpavgw %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpavgw %xmm3, %xmm2, %xmm1
    
    
    ret
LFE3:
