    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmaddsub132ps -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0: