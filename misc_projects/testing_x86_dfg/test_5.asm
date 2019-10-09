.sum:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -24(%rbp)
.L3:
        jge     .L2
        movl    -4(%rbp), %eax
        movq    %rbx, -4(%rbp)
        jmpq     .L3
.L2:
        movl    -4(%rbp), %ebx
        popq    %rbp
        retq
