    .text
    .globl	leaf
leaf:
LFB0:
    
    
    andb $0x77, %al
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    andb $0x77, %al
    
    
    ret
LFE3: