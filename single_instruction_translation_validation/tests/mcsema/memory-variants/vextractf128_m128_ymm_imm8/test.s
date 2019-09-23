    .globl	main
.globl _start
_start:
LFB0:
    
    
    vextractf128 $0x0, %ymm1, -4(%rbp)
    
    
    ret
LFE0:
