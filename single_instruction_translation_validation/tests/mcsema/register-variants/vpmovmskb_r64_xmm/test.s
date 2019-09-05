    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmovmskb %xmm1, %rbx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmovmskb %xmm1, %rbx
    
    
    ret
LFE3:
