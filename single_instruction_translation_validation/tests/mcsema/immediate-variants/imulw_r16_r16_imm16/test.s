    .text
    .globl	leaf
leaf:
LFB0:
    
    
    imulw $0x77, %cx, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    imulw $0x77, %cx, %bx
    
    
    ret
LFE3:
