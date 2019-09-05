    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btcq %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btcq %rcx, %rbx
    
    
    ret
LFE3:
