    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolw %cl, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolw %cl, %bx
    
    
    ret
LFE3:
