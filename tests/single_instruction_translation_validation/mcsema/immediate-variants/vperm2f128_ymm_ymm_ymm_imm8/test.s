    .globl	main
.globl _start
_start:
LFB0:
    
    
    vperm2f128 $0xa, %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
