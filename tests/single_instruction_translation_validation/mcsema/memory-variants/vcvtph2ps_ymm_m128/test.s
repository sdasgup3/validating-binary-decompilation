    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtph2ps -16(%rbp), %ymm1
    
    
    ret
LFE0:
