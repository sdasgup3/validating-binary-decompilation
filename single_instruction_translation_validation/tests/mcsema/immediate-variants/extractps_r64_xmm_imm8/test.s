    .text
    .globl	leaf
leaf:
LFB0:
    
    
    extractps $0x77, %xmm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    extractps $0x77, %xmm1, %rbx
    
    
    ret
LFE3:
