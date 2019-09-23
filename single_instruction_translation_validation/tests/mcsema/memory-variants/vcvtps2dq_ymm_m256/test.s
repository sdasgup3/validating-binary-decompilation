    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtps2dq -4(%rbp), %ymm1
    
    
    ret
LFE0:
