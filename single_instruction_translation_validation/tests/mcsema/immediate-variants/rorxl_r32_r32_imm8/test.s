    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rorxl $0x77, %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rorxl $0x77, %ecx, %ebx
    
    
    ret
LFE3:
