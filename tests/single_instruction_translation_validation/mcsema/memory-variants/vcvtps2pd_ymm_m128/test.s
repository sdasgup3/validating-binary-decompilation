    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtps2pd -16(%rbp), %ymm1
    
    
    ret
LFE0:
