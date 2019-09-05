    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorb %cl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorb %cl, %ah
    
    
    ret
LFE3:
