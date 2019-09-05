    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmpw $0x77, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmpw $0x77, %bx
    
    
    ret
LFE3:
