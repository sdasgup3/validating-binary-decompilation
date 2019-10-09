.sum:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -24(%rbp)
.L3:
        jge     .L2
        jmpq     .L3
.L2:
        movl    -4(%rbp), %eax
        popq    %rbp
        retq
