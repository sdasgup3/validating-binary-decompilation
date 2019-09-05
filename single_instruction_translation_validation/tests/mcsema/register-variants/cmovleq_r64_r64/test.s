    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovleq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovleq %rcx, %rbx
    
    
    ret
LFE3:
