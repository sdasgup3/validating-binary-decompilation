    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btq $0x77, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btq $0x77, %rbx
    
    
    ret
LFE3:
