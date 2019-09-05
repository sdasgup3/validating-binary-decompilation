    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orl $0x77, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orl $0x77, %ebx
    
    
    ret
LFE3:
