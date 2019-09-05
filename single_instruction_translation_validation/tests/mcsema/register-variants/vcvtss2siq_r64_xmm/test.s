    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vcvtss2siq %xmm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vcvtss2siq %xmm1, %rbx
    
    
    ret
LFE3:
