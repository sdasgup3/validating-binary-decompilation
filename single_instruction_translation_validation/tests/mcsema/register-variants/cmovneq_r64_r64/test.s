    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovneq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovneq %rcx, %rbx
    
    
    ret
LFE3:
