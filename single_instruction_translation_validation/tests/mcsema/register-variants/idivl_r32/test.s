    .text
    .globl	leaf
leaf:
LFB0:
    
    
    idivl %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    idivl %ebx
    
    
    ret
LFE3:
