    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pextrb $0x77, %xmm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pextrb $0x77, %xmm1, %rbx
    
    
    ret
LFE3:
