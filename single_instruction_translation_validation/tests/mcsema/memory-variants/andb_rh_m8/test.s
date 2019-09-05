    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb -4(%rbp), %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb -4(%rbp), %ah
    
    
    ret
LFE3:
