    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pblendw $0x77, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pblendw $0x77, %xmm2, %xmm1
    
    
    ret
LFE3: