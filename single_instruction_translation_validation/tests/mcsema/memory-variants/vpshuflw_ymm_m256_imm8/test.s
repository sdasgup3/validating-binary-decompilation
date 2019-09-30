    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpshuflw $0xa, -4(%rbp), %ymm1
    
    
    ret
LFE0:
