    .text
    .globl	leaf
leaf:
LFB0:
    
    
    imulq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    imulq %rcx, %rbx
    
    
    ret
LFE3:
