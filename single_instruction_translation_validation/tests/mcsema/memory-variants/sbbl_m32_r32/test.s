    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sbbl %ecx, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sbbl %ecx, -4(%rbp)
    
    
    ret
LFE3:
