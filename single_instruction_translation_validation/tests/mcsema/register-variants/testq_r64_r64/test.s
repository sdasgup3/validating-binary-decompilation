    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testq %rcx, %rbx
    
    
    ret
LFE3:
