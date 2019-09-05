    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shlw %cl, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shlw %cl, -4(%rbp)
    
    
    ret
LFE3:
