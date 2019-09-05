    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvtss2siq %xmm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvtss2siq %xmm1, %rbx
    
    
    ret
LFE3:
