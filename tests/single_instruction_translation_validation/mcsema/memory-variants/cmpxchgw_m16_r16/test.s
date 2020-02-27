    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgw %cx, -32(%rbp)
    
    
    ret
LFE0:
