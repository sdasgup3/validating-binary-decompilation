    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfnmsub213ps -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
