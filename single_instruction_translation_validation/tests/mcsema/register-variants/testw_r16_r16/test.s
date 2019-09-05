    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testw %cx, %bx
    
    
    ret
LFE3:
