    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cmovngl -4(%rbp), %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cmovngl -4(%rbp), %ebx
    
    
    ret
LFE3: