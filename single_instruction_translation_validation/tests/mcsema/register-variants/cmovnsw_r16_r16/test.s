    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnsw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnsw %cx, %bx
    
    
    ret
LFE3:
