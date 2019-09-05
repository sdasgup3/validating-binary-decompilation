    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcb %cl, %bl
    
    
    ret
LFE3:
