    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpxchgb %bh, %cl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpxchgb %bh, %cl
    
    
    ret
LFE3:
