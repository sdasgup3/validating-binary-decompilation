    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pinsrb $0x77, %ebx, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pinsrb $0x77, %ebx, %xmm1
    
    
    ret
LFE3:
