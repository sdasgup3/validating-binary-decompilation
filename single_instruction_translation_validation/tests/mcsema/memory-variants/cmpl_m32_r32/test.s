    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpl %ecx, -4(%rbp)
    
    
    ret
LFE3:
