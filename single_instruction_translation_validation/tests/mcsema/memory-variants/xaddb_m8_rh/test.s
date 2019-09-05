    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xaddb %ah, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xaddb %ah, -4(%rbp)
    
    
    ret
LFE3:
