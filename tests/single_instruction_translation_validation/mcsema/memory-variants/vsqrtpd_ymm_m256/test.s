    .globl	main
.globl _start
_start:
LFB0:
    
    
    vsqrtpd -16(%rbp), %ymm1
    
    
    ret
LFE0:
