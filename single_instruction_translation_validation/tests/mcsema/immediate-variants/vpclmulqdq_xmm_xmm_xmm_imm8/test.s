    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpclmulqdq $0xa, %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
