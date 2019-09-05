    .text
    .globl	leaf
leaf:
LFB0:
    
    
    lzcntl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    lzcntl %ecx, %ebx
    
    
    ret
LFE3:
