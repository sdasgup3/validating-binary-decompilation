    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpinsrq $0xa, -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0: