    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orq %rcx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orq %rcx, -4(%rbp)
    
    
    ret
LFE3:
