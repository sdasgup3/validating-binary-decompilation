    .text
    .globl	leaf
leaf:
LFB0:
    
    
    subb $0x77, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    subb $0x77, %bl
    
    
    ret
LFE3: