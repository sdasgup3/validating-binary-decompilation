    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorw %cl, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorw %cl, -4(%rbp)
    
    
    ret
LFE3:
