    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd132sd %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
