.sum:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -24(%rbp)
        movl    %esi, -28(%rbp)
        movl    $0, -4(%rbp)
        movl    $0, -8(%rbp)
.L3:
        movl    -8(%rbp), %eax
        cmpl    -28(%rbp), %eax
        jge     .L2
        movl    (%rax), %eax
        jmpq     .L3
.L2:
        movl    -4(%rbp), %eax
        popq    %rbp
        retq
