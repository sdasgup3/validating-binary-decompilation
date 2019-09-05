    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btrl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btrl %ecx, %ebx
    
    
    ret
LFE3:
