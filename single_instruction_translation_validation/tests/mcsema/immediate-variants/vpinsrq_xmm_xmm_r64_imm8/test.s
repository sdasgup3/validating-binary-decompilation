    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpinsrq $0x77, %rbx, %xmm2, %xmm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpinsrq $0x77, %rbx, %xmm2, %xmm1
    
    
    ret
LFE3:
