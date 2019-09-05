    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btl %ecx, %ebx
    
    
    ret
LFE3:
