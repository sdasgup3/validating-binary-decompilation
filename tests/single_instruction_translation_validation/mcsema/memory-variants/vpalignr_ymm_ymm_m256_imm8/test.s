    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpalignr $0xa, -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0: