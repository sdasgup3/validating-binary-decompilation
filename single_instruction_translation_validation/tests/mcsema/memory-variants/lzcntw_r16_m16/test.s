    .text
    .globl	leaf
leaf:
LFB0:
    
    
    lzcntw -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    lzcntw -4(%rbp), %bx
    
    
    ret
LFE3:
