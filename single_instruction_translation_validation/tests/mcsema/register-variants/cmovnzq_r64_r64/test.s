    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnzq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnzq %rcx, %rbx
    
    
    ret
LFE3:
