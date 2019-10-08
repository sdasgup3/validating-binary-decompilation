.multiplyNumbers:
        movl    $1, %eax
        testl   %edi, %edi
        jle     .L5
        pushq   %rbx
        movl    %edi, %ebx
        leal    -1(%rdi), %edi
        callq    .multiplyNumbers
        movq    %rax, %rdi
        movslq  %ebx, %rax
        imulq   %rdi, %rax
        popq    %rbx
        retq
.L5:
        retq
