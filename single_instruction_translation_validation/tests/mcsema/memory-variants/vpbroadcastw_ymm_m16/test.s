    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpbroadcastw -4(%rbp), %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpbroadcastw -4(%rbp), %ymm1
    
    
    ret
LFE3: