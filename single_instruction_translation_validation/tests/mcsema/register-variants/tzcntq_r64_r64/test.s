    .text
    .globl	leaf
leaf:
LFB0:
    
    
    tzcntq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    tzcntq %rcx, %rbx
    
    
    ret
LFE3:
