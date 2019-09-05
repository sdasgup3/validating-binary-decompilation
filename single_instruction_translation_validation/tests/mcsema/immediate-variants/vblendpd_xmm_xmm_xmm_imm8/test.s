    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vblendpd $0x77, %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vblendpd $0x77, %xmm3, %xmm2, %xmm1
    
    
    ret
LFE3:
