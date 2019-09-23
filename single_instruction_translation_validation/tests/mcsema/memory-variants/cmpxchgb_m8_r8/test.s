    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgb %cl, -4(%rbp)
    
    
    ret
LFE0:
