    .text
    .globl	leaf
leaf:
LFB0:
    
    
    popcntl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    popcntl %ecx, %ebx
    
    
    ret
LFE3:
