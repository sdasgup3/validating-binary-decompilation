    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpermpd $0x0, -4(%rbp), %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpermpd $0x0, -4(%rbp), %ymm1
    
    
    ret
LFE3:
