    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btsl $0x77, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btsl $0x77, %ebx
    
    
    ret
LFE3:
