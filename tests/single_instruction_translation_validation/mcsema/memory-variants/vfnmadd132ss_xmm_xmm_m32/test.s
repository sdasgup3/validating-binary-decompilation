    .globl	main
.globl _start
_start:
LFB0:
    
    
    vfnmadd132ss -16(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
