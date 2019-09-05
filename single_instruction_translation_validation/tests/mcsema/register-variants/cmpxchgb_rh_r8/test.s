    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpxchgb %cl, %bh
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpxchgb %cl, %bh
    
    
    ret
LFE3:
