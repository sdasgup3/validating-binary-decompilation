    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtps2ph $0x77, %ymm1, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtps2ph $0x77, %ymm1, %xmm1
    
    
    ret
LFE3:
