    .globl	main
.globl _start
_start:
LFB0:
    
    
    vbroadcastsd -4(%rbp), %ymm1
    
    
    ret
LFE0:
