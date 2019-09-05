    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xchgb %bl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xchgb %bl, %ah
    
    
    ret
LFE3:
