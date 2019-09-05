    .text
    .globl	leaf
leaf:
LFB0:
    
    
    tzcntw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    tzcntw %cx, %bx
    
    
    ret
LFE3:
