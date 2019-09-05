    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvttpd2dq %ymm1, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvttpd2dq %ymm1, %xmm1
    
    
    ret
LFE3:
