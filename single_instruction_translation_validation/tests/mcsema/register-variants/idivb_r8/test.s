    .text
    .globl	leaf
leaf:
LFB0:
    
    
    idivb %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    idivb %bl
    
    
    ret
LFE3:
