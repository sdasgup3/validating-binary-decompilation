    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtps2ph $0x0, %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtps2ph $0x0, %xmm1, -4(%rbp)
    
    
    ret
LFE3:
