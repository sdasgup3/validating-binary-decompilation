    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgw %cx, -4(%rbp)
    
    
    ret
LFE0:
