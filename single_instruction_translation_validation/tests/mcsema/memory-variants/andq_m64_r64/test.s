    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andq %rcx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andq %rcx, -4(%rbp)
    
    
    ret
LFE3:
