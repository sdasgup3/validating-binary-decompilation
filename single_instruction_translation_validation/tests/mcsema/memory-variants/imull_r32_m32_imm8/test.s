    .text
    .globl	leaf
leaf:
LFB0:
    
    
    imull $0x0, -4(%rbp), %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    imull $0x0, -4(%rbp), %ebx
    
    
    ret
LFE3:
