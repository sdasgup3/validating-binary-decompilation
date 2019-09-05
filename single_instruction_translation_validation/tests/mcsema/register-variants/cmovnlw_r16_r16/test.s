    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnlw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnlw %cx, %bx
    
    
    ret
LFE3:
