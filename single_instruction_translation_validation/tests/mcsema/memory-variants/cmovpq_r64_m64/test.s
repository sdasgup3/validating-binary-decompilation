    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovpq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovpq -4(%rbp), %rbx
    
    
    ret
LFE3:
