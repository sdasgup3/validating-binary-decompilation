    .text
    .globl	leaf
leaf:
LFB0:
    
    
    idivb %bh
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    idivb %bh
    
    
    ret
LFE3:
