    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtss2sd -16(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
