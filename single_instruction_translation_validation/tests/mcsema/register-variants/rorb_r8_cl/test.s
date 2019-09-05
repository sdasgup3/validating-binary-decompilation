    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorb %cl, %bl
    
    
    ret
LFE3:
