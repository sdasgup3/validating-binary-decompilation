    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpcmpistri $0x0, -4(%rbp), %xmm1
    
    
    ret
LFE0:
