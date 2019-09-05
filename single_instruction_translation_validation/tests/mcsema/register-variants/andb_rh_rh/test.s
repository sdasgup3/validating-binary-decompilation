    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb %bh, %ah
    
    
    ret
LFE3:
