    .text
    .globl	leaf
leaf:
LFB0:
    
    
    salq %cl, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    salq %cl, -4(%rbp)
    
    
    ret
LFE3:
