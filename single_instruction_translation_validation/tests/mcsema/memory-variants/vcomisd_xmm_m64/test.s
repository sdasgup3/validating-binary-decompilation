    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcomisd -4(%rbp), %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcomisd -4(%rbp), %xmm1
    
    
    ret
LFE3:
