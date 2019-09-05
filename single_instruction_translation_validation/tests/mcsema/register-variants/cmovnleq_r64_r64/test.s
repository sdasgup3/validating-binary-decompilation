    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnleq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnleq %rcx, %rbx
    
    
    ret
LFE3:
