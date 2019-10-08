    .globl	main
.globl _start
_start:
LFB0:
    
    
    rsqrtps -4(%rbp), %xmm1
    
    
    ret
LFE0:
