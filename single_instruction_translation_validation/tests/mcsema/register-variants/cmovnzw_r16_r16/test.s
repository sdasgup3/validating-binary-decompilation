    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnzw %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnzw %cx, %bx
    
    
    ret
LFE3:
