    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xchgb %ah, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xchgb %ah, -4(%rbp)
    
    
    ret
LFE3:
