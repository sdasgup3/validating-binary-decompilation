    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb %ah, %bl
    
    
    ret
LFE3:
