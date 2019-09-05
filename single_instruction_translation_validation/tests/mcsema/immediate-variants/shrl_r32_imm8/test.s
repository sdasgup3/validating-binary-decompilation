    .text
    .globl	leaf
leaf:
LFB0:
    
    
    shrl $0x77, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    shrl $0x77, %ebx
    
    
    ret
LFE3:
