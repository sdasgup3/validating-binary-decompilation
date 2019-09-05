    .text
    .globl	leaf
leaf:
LFB0:
    
    
    addb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    addb %cl, %bl
    
    
    ret
LFE3:
