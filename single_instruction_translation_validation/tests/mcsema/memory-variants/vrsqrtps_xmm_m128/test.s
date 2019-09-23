    .globl	main
.globl _start
_start:
LFB0:
    
    
    vrsqrtps -4(%rbp), %xmm1
    
    
    ret
LFE0:
