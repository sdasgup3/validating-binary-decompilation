    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb $0x77, %ah
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb $0x77, %ah
    
    
    ret
LFE3:
