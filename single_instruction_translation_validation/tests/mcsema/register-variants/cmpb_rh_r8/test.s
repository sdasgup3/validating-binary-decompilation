    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpb %bl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpb %bl, %ah
    
    
    ret
LFE3:
