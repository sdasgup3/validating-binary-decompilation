    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovngeq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovngeq %rcx, %rbx
    
    
    ret
LFE3:
