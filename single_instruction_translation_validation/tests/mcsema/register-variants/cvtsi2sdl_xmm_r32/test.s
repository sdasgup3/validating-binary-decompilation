    .text
    .globl	leaf
leaf:
LFB0:
    
    
    cvtsi2sdl %ebx, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    cvtsi2sdl %ebx, %xmm1
    
    
    ret
LFE3:
