    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfnmadd231ps %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0: