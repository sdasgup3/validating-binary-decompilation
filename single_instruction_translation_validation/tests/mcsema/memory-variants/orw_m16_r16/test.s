    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orw %cx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orw %cx, -4(%rbp)
    
    
    ret
LFE3:
