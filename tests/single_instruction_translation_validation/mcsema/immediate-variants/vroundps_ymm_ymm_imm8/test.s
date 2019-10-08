    .globl	main
.globl _start
_start:
LFB0:
    
    
    vroundps $0xa, %ymm2, %ymm1
    
    
    ret
LFE0:
