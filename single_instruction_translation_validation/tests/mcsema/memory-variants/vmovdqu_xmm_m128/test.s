    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovdqu -4(%rbp), %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovdqu -4(%rbp), %xmm1
    
    
    ret
LFE3:
