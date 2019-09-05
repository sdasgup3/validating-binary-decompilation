    .text
    .globl	leaf
leaf:
LFB0:
    
    
    movsbl %ah, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    movsbl %ah, %ebx
    
    
    ret
LFE3:
