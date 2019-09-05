    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorw $0x77, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorw $0x77, %bx
    
    
    ret
LFE3:
