    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpq %rcx, %rbx
    
    
    ret
LFE3:
