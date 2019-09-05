    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testl %ecx, -4(%rbp)
    
    
    ret
LFE3:
