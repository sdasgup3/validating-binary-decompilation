    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testb %bh, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testb %bh, %ah
    
    
    ret
LFE3:
