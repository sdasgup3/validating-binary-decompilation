    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovngw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovngw %cx, %bx
    
    
    ret
LFE3:
