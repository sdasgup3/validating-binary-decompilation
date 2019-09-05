    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolb $0x1, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolb $0x1, %bl
    
    
    ret
LFE3:
