    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovgeq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovgeq %rcx, %rbx
    
    
    ret
LFE3:
