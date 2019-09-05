    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpxchgq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpxchgq %rcx, %rbx
    
    
    ret
LFE3:
