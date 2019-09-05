    .text
    .globl	leaf
leaf:
LFB0:
    
    
    subb $0x77, %al
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    subb $0x77, %al
    
    
    ret
LFE3:
