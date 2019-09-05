    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btrq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btrq %rcx, %rbx
    
    
    ret
LFE3:
