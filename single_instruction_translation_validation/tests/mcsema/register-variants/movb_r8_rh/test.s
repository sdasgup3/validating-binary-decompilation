    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movb %ah, %bl
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movb %ah, %bl
    
    
    ret
LFE3: