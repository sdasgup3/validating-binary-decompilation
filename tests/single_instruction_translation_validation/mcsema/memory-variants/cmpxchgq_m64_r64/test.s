    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgq %rcx, -4(%rbp)
    
    
    ret
LFE0:
