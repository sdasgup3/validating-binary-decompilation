    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testw %cx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testw %cx, -4(%rbp)
    
    
    ret
LFE3:
