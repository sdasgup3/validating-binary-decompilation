    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcb %bh, %ah
    
    
    ret
LFE3:
