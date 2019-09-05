    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xaddl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xaddl %ecx, -4(%rbp)
    
    
    ret
LFE3:
