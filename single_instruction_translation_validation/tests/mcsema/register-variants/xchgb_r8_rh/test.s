    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xchgb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xchgb %ah, %bl
    
    
    ret
LFE3:
