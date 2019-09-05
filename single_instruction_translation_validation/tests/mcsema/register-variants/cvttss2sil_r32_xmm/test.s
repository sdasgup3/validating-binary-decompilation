    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvttss2sil %xmm1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvttss2sil %xmm1, %ebx
    
    
    ret
LFE3:
