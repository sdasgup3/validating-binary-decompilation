    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpunpckhwd -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
