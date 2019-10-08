    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfmadd231ss %xmm3, %xmm2, %xmm1
    
    
    ret
LFE0:
