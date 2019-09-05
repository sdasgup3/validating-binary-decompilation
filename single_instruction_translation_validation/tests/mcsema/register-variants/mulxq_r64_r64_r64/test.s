    .text
    .globl	leaf
leaf:
LFB0:
    
    
    mulxq %rcx, %rbx, %rax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    mulxq %rcx, %rbx, %rax
    
    
    ret
LFE3:
