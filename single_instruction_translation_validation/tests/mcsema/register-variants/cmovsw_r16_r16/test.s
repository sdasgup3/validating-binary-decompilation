    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovsw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovsw %cx, %bx
    
    
    ret
LFE3:
