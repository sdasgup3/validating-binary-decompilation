    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpmaxud -16(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
