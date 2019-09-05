    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpl $0x0, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpl $0x0, -4(%rbp)
    
    
    ret
LFE3:
