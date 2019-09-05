    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btl $0x77, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btl $0x77, %ebx
    
    
    ret
LFE3:
