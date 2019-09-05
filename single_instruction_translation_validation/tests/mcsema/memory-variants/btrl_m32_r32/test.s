    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btrl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btrl %ecx, -4(%rbp)
    
    
    ret
LFE3:
