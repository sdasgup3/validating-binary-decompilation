    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtsi2sdq -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
