    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movb -4(%rbp), %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movb -4(%rbp), %ah
    
    
    ret
LFE3: