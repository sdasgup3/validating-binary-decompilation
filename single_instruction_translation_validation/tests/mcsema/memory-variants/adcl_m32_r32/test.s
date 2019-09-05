    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcl %ecx, -4(%rbp)
    
    
    ret
LFE3:
