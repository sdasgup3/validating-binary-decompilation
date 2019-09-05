    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovoq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovoq -4(%rbp), %rbx
    
    
    ret
LFE3:
