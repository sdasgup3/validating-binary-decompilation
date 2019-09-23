    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtpd2dq -4(%rbp), %xmm1
    
    
    ret
LFE0:
