    .text
    .globl	leaf
leaf:
LFB0:
    
    
    lzcntw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    lzcntw %cx, %bx
    
    
    ret
LFE3:
