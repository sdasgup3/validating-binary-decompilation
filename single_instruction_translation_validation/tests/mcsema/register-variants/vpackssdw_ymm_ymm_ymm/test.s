    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpackssdw %ymm3, %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpackssdw %ymm3, %ymm2, %ymm1
    
    
    ret
LFE3:
