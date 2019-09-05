    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpextrd $0x77, %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpextrd $0x77, %xmm1, %ebx
    
    
    ret
LFE3:
