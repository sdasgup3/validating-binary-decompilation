    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorxq $0x0, -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorxq $0x0, -4(%rbp), %rbx
    
    
    ret
LFE3:
