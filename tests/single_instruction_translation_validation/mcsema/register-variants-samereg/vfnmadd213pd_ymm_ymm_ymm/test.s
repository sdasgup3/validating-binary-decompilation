    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfnmadd213pd %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
