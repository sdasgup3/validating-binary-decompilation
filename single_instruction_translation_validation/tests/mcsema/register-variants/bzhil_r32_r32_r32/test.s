    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bzhil %edx, %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bzhil %edx, %ecx, %ebx
    
    
    ret
LFE3:
