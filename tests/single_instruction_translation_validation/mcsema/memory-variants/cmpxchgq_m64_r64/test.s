    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgq %rcx, -16(%rbp)
    
    
    ret
LFE0:
