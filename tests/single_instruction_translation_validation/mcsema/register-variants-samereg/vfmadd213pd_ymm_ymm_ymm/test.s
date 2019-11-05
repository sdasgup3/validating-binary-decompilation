    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd213pd %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
