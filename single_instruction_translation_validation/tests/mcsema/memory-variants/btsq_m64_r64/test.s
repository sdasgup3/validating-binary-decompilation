    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btsq %rcx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btsq %rcx, -4(%rbp)
    
    
    ret
LFE3:
