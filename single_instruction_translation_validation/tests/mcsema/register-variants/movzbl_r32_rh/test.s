    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movzbl %ah, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movzbl %ah, %ebx
    
    
    ret
LFE3:
