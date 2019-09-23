    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd132pd %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
