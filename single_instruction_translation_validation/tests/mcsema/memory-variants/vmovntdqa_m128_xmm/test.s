    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovntdqa %xmm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovntdqa %xmm1, -4(%rbp)
    
    
    ret
LFE3:
