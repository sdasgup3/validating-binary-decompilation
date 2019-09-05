    .text
    .globl	leaf
leaf:
LFB0:
    
    
    addq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    addq -4(%rbp), %rbx
    
    
    ret
LFE3:
