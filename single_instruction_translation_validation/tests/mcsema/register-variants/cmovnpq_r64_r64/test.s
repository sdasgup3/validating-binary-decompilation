    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnpq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnpq %rcx, %rbx
    
    
    ret
LFE3:
