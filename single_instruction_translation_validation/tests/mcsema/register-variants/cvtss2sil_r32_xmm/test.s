    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvtss2sil %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvtss2sil %xmm1, %ebx
    
    
    ret
LFE3:
