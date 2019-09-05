    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb %bl, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb %bl, %ah
    
    
    ret
LFE3:
