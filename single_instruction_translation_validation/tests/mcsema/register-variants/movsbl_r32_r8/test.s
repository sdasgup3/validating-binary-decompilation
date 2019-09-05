    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movsbl %cl, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movsbl %cl, %ebx
    
    
    ret
LFE3:
