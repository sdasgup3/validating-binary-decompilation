    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rclq $0x1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rclq $0x1, -4(%rbp)
    
    
    ret
LFE3: