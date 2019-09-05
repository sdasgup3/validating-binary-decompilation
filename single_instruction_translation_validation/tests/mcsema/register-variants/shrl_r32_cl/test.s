    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shrl %cl, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shrl %cl, %ebx
    
    
    ret
LFE3:
