    .text
    .globl	leaf
leaf:
LFB0:
    
    
    mulxl %ecx, %ebx, %eax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    mulxl %ecx, %ebx, %eax
    
    
    ret
LFE3:
