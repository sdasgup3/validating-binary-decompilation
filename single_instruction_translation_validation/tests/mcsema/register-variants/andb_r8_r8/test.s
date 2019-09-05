    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb %cl, %bl
    
    
    ret
LFE3:
