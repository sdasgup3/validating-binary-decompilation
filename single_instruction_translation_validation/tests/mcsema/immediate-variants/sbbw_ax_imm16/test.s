    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sbbw $0x77, %ax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sbbw $0x77, %ax
    
    
    ret
LFE3:
