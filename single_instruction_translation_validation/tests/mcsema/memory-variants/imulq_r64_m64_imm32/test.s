    .text
    .globl	leaf
leaf:
LFB0:
    
    
    imulq $0x0, -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    imulq $0x0, -4(%rbp), %rbx
    
    
    ret
LFE3:
