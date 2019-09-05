    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovpoq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovpoq %rcx, %rbx
    
    
    ret
LFE3:
