    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnbeq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnbeq %rcx, %rbx
    
    
    ret
LFE3:
