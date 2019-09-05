    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vextracti128 $0x0, %ymm1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vextracti128 $0x0, %ymm1, -4(%rbp)
    
    
    ret
LFE3:
