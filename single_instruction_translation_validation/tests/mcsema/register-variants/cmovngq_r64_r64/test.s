    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovngq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovngq %rcx, %rbx
    
    
    ret
LFE3:
