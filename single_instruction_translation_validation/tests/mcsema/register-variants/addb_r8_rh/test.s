    .text
    .globl	leaf
leaf:
LFB0:
    
    
    addb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    addb %ah, %bl
    
    
    ret
LFE3:
