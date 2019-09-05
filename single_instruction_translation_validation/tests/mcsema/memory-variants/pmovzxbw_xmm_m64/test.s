    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pmovzxbw -4(%rbp), %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pmovzxbw -4(%rbp), %xmm1
    
    
    ret
LFE3:
