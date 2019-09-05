    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testb %bl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testb %bl, %ah
    
    
    ret
LFE3:
