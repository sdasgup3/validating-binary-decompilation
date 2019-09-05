    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bzhil %edx, -4(%rbp), %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bzhil %edx, -4(%rbp), %ebx
    
    
    ret
LFE3:
