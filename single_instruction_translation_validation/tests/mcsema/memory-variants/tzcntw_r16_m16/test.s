    .text
    .globl	leaf
leaf:
LFB0:
    
    
    tzcntw -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    tzcntw -4(%rbp), %bx
    
    
    ret
LFE3:
