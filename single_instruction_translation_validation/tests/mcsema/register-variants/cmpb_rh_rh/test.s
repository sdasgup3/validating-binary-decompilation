    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpb %bh, %ah
    
    
    ret
LFE3:
