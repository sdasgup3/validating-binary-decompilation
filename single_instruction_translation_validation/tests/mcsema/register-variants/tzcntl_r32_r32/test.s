    .text
    .globl	leaf
leaf:
LFB0:
    
    
    tzcntl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    tzcntl %ecx, %ebx
    
    
    ret
LFE3:
