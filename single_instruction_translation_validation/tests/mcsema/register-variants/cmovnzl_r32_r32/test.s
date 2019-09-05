    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnzl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnzl %ecx, %ebx
    
    
    ret
LFE3:
