    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bzhiq %rdx, -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bzhiq %rdx, -4(%rbp), %rbx
    
    
    ret
LFE3:
