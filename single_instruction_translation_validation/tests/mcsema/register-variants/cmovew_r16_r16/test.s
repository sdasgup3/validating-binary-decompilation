    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovew %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovew %cx, %bx
    
    
    ret
LFE3:
