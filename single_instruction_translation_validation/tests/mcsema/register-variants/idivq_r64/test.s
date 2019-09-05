    .text
    .globl	leaf
leaf:
LFB0:
    
    
    idivq %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    idivq %rbx
    
    
    ret
LFE3:
