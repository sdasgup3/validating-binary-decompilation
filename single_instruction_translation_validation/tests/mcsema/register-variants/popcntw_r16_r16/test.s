    .text
    .globl	leaf
leaf:
LFB0:
    
    
    popcntw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    popcntw %cx, %bx
    
    
    ret
LFE3:
