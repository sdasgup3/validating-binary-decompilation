    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpermilpd -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0: