    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnlw -4(%rbp), %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnlw -4(%rbp), %bx
    
    
    ret
LFE3:
