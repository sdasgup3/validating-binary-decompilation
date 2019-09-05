    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtdq2ps %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtdq2ps %ymm2, %ymm1
    
    
    ret
LFE3:
