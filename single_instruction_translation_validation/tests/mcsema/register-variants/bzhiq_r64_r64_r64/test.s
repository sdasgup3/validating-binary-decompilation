    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bzhiq %rdx, %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bzhiq %rdx, %rcx, %rbx
    
    
    ret
LFE3:
