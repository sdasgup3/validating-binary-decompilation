    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rclw $0x77, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rclw $0x77, %bx
    
    
    ret
LFE3:
