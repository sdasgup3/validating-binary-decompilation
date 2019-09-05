    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolw $0x1, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolw $0x1, %bx
    
    
    ret
LFE3:
