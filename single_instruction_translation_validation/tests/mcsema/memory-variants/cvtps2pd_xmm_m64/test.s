    .globl	main
.globl _start
_start:
LFB0:
    
    
    cvtps2pd -4(%rbp), %xmm1
    
    
    ret
LFE0:
