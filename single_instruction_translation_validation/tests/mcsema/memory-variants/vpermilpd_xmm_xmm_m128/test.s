    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpermilpd -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpermilpd -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE3:
