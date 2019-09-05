    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcw -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcw -4(%rbp), %bx
    
    
    ret
LFE3:
