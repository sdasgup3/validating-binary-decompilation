    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xorl $0x77, %eax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xorl $0x77, %eax
    
    
    ret
LFE3: