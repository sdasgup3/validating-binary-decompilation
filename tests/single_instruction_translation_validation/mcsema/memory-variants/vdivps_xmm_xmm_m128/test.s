    .globl	main
.globl _start
_start:
LFB0:
    
    
    vdivps -16(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
