    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpxchgb %ah, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpxchgb %ah, -4(%rbp)
    
    
    ret
LFE3:
