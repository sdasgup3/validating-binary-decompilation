    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sbbb -4(%rbp), %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sbbb -4(%rbp), %bl
    
    
    ret
LFE3:
