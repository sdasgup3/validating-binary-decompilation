    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorw %cl, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorw %cl, %bx
    
    
    ret
LFE3:
