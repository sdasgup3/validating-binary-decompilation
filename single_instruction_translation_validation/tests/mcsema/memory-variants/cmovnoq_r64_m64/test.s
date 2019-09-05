    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnoq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnoq -4(%rbp), %rbx
    
    
    ret
LFE3:
