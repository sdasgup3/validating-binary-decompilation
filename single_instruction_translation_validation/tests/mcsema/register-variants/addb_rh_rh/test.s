    .text
    .globl	leaf
leaf:
LFB0:
    
    
    addb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    addb %bh, %ah
    
    
    ret
LFE3:
