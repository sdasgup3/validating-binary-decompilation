    .text
    .globl	leaf
leaf:
LFB0:
    
    
    subb -4(%rbp), %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    subb -4(%rbp), %ah
    
    
    ret
LFE3:
