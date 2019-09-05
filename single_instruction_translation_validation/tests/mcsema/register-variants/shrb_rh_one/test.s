    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shrb $0x1, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shrb $0x1, %ah
    
    
    ret
LFE3:
