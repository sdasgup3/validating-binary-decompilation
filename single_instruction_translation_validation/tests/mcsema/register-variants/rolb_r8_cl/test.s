    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolb %cl, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolb %cl, %bl
    
    
    ret
LFE3:
