    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpmaxub -16(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
