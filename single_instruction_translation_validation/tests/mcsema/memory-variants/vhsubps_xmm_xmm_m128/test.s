    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vhsubps -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vhsubps -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE3:
