    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcw %cx, %bx
    
    
    ret
LFE3:
