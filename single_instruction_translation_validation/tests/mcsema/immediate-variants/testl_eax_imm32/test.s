    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testl $0x77, %eax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testl $0x77, %eax
    
    
    ret
LFE3:
