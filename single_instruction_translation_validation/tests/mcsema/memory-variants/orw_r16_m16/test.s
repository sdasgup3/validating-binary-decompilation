    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orw -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orw -4(%rbp), %bx
    
    
    ret
LFE3:
