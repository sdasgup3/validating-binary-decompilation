    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovgew -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovgew -4(%rbp), %bx
    
    
    ret
LFE3:
