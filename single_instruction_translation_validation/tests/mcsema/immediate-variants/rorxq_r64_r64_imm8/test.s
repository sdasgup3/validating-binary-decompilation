    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorxq $0x77, %rcx, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorxq $0x77, %rcx, %rbx
    
    
    ret
LFE3:
