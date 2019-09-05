    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testb $0x77, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testb $0x77, %ah
    
    
    ret
LFE3:
