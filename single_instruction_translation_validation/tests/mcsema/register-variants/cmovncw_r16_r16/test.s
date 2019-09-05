    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovncw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovncw %cx, %bx
    
    
    ret
LFE3:
