    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovzl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovzl %ecx, %ebx
    
    
    ret
LFE3:
