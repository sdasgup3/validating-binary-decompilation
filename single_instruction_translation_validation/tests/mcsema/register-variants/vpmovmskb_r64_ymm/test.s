    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmovmskb %ymm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmovmskb %ymm1, %rbx
    
    
    ret
LFE3: