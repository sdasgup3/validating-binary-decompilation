    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btsq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btsq %rcx, %rbx
    
    
    ret
LFE3:
