    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd231ps %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
