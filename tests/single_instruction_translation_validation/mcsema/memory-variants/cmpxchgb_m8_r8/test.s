    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgb %cl, -16(%rbp)
    
    
    ret
LFE0:
