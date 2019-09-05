    .text
    .globl	leaf
leaf:
LFB0:
    
    
    notl -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    notl -4(%rbp)
    
    
    ret
LFE3:
