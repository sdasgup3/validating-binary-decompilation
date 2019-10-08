    .globl	main
.globl _start
_start:
LFB0:
    
    
    vtestpd -4(%rbp), %ymm1
    
    
    ret
LFE0:
