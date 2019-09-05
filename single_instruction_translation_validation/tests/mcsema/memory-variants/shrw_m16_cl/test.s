    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shrw %cl, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shrw %cl, -4(%rbp)
    
    
    ret
LFE3:
