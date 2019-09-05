    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcb %ah, %bl
    
    
    ret
LFE3:
