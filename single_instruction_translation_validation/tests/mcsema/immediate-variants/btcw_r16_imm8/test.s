    .text
    .globl	leaf
leaf:
LFB0:
    
    
    btcw $0x77, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    btcw $0x77, %bx
    
    
    ret
LFE3:
