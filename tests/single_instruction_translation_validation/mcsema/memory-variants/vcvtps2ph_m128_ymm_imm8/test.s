    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtps2ph $0xa, %ymm1, -4(%rbp)
    
    
    ret
LFE0:
