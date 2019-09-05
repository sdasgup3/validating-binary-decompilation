    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rcrl $0x77, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rcrl $0x77, %ebx
    
    
    ret
LFE3:
