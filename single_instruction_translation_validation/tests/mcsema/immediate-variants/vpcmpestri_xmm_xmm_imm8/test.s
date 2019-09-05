    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpcmpestri $0x77, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpcmpestri $0x77, %xmm2, %xmm1
    
    
    ret
LFE3:
