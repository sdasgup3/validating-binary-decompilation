    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcb %bl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcb %bl, %ah
    
    
    ret
LFE3:
