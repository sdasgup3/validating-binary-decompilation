    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rolb %cl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rolb %cl, %ah
    
    
    ret
LFE3:
