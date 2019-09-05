    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtpd2dq %ymm1, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtpd2dq %ymm1, %xmm1
    
    
    ret
LFE3:
