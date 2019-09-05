    .text
    .globl	leaf
leaf:
LFB0:
    
    
    pdepl %edx, %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    pdepl %edx, %ecx, %ebx
    
    
    ret
LFE3:
