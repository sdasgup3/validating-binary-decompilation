    .text
    .globl	leaf
leaf:
LFB0:
    
    
    divq %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    divq %rbx
    
    
    ret
LFE3: