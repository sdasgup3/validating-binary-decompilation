    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xorw $0x77, %ax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xorw $0x77, %ax
    
    
    ret
LFE3:
