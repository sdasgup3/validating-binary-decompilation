    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xaddb %cl, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xaddb %cl, -4(%rbp)
    
    
    ret
LFE3:
