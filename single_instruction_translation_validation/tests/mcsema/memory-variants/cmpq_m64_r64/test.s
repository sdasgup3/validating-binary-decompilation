    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpq %rcx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpq %rcx, -4(%rbp)
    
    
    ret
LFE3:
