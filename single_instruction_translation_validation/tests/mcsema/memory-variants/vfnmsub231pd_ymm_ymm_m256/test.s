    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vfnmsub231pd -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vfnmsub231pd -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE3:
