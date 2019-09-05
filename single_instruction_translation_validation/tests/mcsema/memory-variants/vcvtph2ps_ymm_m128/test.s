    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtph2ps -4(%rbp), %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtph2ps -4(%rbp), %ymm1
    
    
    ret
LFE3:
