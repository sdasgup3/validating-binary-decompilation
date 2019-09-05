    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xchgw %cx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xchgw %cx, -4(%rbp)
    
    
    ret
LFE3:
