    .text
    .globl	leaf
leaf:
LFB0:
    
    
    psllq $0x77, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    psllq $0x77, %xmm1
    
    
    ret
LFE3:
