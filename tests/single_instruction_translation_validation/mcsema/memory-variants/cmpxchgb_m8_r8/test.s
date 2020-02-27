    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgb %cl, -32(%rbp)
    
    
    ret
LFE0:
