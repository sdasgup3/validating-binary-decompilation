    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd231pd -16(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
