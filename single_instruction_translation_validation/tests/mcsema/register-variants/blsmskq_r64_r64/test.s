    .text
    .globl	leaf
leaf:
LFB0:
    
    
    blsmskq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    blsmskq %rcx, %rbx
    
    
    ret
LFE3:
