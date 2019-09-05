    .text
    .globl	leaf
leaf:
LFB0:
    
    
    bswap %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    bswap %ebx
    
    
    ret
LFE3:
