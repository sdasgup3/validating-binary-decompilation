    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovlw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovlw %cx, %bx
    
    
    ret
LFE3:
