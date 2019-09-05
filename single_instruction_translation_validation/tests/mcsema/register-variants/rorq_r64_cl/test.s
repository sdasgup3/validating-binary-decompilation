    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorq %cl, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorq %cl, %rbx
    
    
    ret
LFE3:
