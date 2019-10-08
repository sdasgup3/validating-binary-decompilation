.multiplyNumbers:
        movl    $1, %eax
        testl   %edi, %edi
        jle     .L5
        callq    .multiplyNumbers
        imulq   %rdi, %rax
        retq
.L5:
        retq
