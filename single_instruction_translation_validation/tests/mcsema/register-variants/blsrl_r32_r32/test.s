    .text
    .globl	leaf
leaf:
LFB0:
    
    
    blsrl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    blsrl %ecx, %ebx
    
    
    ret
LFE3:
