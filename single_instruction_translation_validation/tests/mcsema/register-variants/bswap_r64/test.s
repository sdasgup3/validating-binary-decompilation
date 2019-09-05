    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bswap %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bswap %rbx
    
    
    ret
LFE3:
