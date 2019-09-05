    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnpw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnpw %cx, %bx
    
    
    ret
LFE3:
