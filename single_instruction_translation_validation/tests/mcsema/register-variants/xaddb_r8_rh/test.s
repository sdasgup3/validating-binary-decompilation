    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xaddb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xaddb %ah, %bl
    
    
    ret
LFE3:
