    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andw $0x77, %ax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andw $0x77, %ax
    
    
    ret
LFE3:
