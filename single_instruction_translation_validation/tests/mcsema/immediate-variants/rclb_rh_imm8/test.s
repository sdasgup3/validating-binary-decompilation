    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rclb $0x77, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rclb $0x77, %ah
    
    
    ret
LFE3:
