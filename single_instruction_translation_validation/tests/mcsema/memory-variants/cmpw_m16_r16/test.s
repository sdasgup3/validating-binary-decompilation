    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpw %cx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpw %cx, -4(%rbp)
    
    
    ret
LFE3:
