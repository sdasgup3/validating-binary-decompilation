    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovnbl %ecx, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovnbl %ecx, %ebx
    
    
    ret
LFE3:
