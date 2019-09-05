    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sbbb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sbbb %ah, %bl
    
    
    ret
LFE3:
