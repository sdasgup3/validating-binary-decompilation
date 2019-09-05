    .text
    .globl	leaf
leaf:
LFB0:
    
    
    imulq $0x77, %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    imulq $0x77, %rcx, %rbx
    
    
    ret
LFE3:
