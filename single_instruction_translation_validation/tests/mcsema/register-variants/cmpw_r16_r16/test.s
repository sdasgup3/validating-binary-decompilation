    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpw %cx, %bx
    
    
    ret
LFE3:
