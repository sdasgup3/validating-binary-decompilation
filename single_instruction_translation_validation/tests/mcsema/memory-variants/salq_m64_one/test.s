    .text
    .globl	leaf
leaf:
LFB0:
    
    
    salq $0x1, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    salq $0x1, -4(%rbp)
    
    
    ret
LFE3: