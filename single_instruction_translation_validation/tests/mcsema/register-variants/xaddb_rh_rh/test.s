    .text
    .globl	leaf
leaf:
LFB0:
    
    
    xaddb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    xaddb %bh, %ah
    
    
    ret
LFE3:
