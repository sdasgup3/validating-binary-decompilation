    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testb %cl, %bl
    
    
    ret
LFE3: