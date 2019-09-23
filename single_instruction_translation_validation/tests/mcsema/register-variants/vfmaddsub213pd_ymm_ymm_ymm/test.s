    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmaddsub213pd %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
