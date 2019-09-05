    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcb %ah, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcb %ah, -4(%rbp)
    
    
    ret
LFE3:
