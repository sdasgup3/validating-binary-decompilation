    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btq %rcx, %rbx
    
    
    ret
LFE3:
