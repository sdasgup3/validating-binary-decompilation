    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpshufd $0xa, -16(%rbp), %ymm1
    
    
    ret
LFE0:
