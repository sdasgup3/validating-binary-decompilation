    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movlpd %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movlpd %xmm1, -4(%rbp)
    
    
    ret
LFE3:
