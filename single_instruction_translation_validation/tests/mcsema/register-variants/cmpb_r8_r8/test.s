    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpb %cl, %bl
    
    
    ret
LFE3:
