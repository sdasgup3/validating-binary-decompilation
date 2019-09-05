    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolq %cl, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolq %cl, %rbx
    
    
    ret
LFE3:
