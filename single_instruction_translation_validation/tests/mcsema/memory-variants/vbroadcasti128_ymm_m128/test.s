    .globl	main
.globl _start
_start:
LFB0:
    
    
    vbroadcasti128 -4(%rbp), %ymm1
    
    
    ret
LFE0: