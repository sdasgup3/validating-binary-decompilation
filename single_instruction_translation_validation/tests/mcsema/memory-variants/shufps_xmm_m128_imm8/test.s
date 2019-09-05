    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shufps $0x0, -4(%rbp), %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shufps $0x0, -4(%rbp), %xmm1
    
    
    ret
LFE3:
