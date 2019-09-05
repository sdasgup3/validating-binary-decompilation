    .text
    .globl	leaf
leaf:
LFB0:
    
    
    divb %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    divb %bl
    
    
    ret
LFE3:
