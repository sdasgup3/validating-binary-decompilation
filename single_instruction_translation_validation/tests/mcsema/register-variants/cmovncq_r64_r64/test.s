    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovncq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovncq %rcx, %rbx
    
    
    ret
LFE3:
