    .text
    .globl	leaf
leaf:
LFB0:
    
    
    orq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    orq -4(%rbp), %rbx
    
    
    ret
LFE3:
