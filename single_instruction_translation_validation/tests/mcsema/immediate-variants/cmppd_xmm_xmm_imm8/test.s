    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmppd $0x77, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmppd $0x77, %xmm2, %xmm1
    
    
    ret
LFE3:
