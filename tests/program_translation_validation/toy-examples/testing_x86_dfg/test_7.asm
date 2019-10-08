.sum:
        pushq   %rbp
        movq    %rsp, %rbp
        jge     .L2
.L3:
        cmpl    -28(%rbp), %eax
        jge     .L3
.L2:
        adcl    %eax, %eax
        popq    %rbp
        retq
