    .text
    .globl	leaf
leaf:
LFB0:
    
    
    idivw %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    idivw %bx
    
    
    ret
LFE3:
