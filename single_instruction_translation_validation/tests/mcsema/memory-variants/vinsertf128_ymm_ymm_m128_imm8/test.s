    .globl	main
.globl _start
_start:
LFB0:
    
    
    vinsertf128 $0x0, -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
