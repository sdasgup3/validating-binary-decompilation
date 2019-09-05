    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movzbl %cl, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movzbl %cl, %ebx
    
    
    ret
LFE3:
