    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpermpd $0x0, -4(%rbp), %ymm1
    
    
    ret
LFE0:
