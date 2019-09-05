    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcq $0x0, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcq $0x0, -4(%rbp)
    
    
    ret
LFE3:
