    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpxchgw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpxchgw %cx, %bx
    
    
    ret
LFE3:
