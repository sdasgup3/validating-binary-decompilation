    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vextractps $0x77, %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vextractps $0x77, %xmm1, %ebx
    
    
    ret
LFE3: