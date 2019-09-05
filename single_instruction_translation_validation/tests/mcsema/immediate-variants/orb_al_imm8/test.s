    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orb $0x77, %al
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orb $0x77, %al
    
    
    ret
LFE3:
