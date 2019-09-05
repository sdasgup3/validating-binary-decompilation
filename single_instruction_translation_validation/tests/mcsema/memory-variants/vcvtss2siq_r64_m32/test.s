    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtss2siq -4(%rbp), %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtss2siq -4(%rbp), %rbx
    
    
    ret
LFE3:
