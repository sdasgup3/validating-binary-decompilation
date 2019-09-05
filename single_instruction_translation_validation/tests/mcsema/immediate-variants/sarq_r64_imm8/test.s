    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sarq $0x77, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sarq $0x77, %rbx
    
    
    ret
LFE3:
