    .globl	main
.globl _start
_start:
LFB0:
    
    
    vroundpd $0xa, %xmm2, %xmm1
    
    
    ret
LFE0:
