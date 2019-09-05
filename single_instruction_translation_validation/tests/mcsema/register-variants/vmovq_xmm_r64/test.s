    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vmovq %rbx, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vmovq %rbx, %xmm1
    
    
    ret
LFE3:
