    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testq $0x77, %rax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testq $0x77, %rax
    
    
    ret
LFE3:
