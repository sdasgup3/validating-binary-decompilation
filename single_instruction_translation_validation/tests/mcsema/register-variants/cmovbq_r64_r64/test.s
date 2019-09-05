    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovbq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovbq %rcx, %rbx
    
    
    ret
LFE3:
