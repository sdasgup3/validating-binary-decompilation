    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rcrb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rcrb %cl, %bl
    
    
    ret
LFE3:
