    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovbeq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovbeq %rcx, %rbx
    
    
    ret
LFE3:
