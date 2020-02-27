    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgb %ah, -32(%rbp)
    
    
    ret
LFE0:
