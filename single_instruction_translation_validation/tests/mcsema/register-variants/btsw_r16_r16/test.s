    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btsw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btsw %cx, %bx
    
    
    ret
LFE3:
