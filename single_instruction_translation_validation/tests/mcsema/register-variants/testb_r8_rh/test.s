    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testb %ah, %bl
    
    
    ret
LFE3:
