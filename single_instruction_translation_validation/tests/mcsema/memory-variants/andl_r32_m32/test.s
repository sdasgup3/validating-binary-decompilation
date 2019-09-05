    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andl -4(%rbp), %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andl -4(%rbp), %ebx
    
    
    ret
LFE3:
