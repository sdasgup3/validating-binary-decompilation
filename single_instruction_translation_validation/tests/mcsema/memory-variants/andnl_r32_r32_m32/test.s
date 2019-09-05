    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andnl (%rdx), %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andnl (%rdx), %ecx, %ebx
    
    
    ret
LFE3:
