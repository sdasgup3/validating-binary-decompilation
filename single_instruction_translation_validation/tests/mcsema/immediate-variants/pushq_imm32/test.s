    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pushq $0x77
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pushq $0x77
    
    
    ret
LFE3:
