    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andl %ecx, -4(%rbp)
    
    
    ret
LFE3:
