    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sall $0x1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sall $0x1, -4(%rbp)
    
    
    ret
LFE3:
