    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgq %rcx, -32(%rbp)
    
    
    ret
LFE0:
