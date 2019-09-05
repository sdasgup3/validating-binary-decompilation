    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmaxub -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmaxub -4(%rbp), %ymm2, %ymm1
    
    
    ret
LFE3:
