    .text
    .globl	leaf
leaf:
LFB0:
    
    
    adcl $0x77, %eax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    adcl $0x77, %eax
    
    
    ret
LFE3:
