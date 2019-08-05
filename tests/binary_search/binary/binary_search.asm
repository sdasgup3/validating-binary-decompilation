  .text
  .globl	binarySearch
  .type	binarySearch, @function
.binarySearch:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -24(%rbp)
        movl    %esi, -28(%rbp)
        movl    %edx, -32(%rbp)
        movl    $0, -4(%rbp)
        movl    -28(%rbp), %eax
        subl    $1, %eax
        movl    %eax, -8(%rbp)
.L7:
        movl    -4(%rbp), %eax
        cmpl    -8(%rbp), %eax
        jge     .L2
        movl    -8(%rbp), %eax
        subl    -4(%rbp), %eax
        movl    %eax, %edx
        shrl    $31, %edx
        addl    %edx, %eax
        sarl    $1, %eax
        movl    %eax, %edx
        movl    -4(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -12(%rbp)
        movl    -12(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -24(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpl    %eax, -32(%rbp)
        jne     .L3
        movl    -12(%rbp), %eax
        jmpq    .L4
.L3:
        movl    -12(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -24(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpl    %eax, -32(%rbp)
        jle     .L5
        movl    -12(%rbp), %eax
        addl    $1, %eax
        movl    %eax, -4(%rbp)
        jmpq    .L7
.L5:
        movl    -12(%rbp), %eax
        subl    $1, %eax
        movl    %eax, -8(%rbp)
        jmpq    .L7
.L2:
        movl    $-1, %eax
.L4:
        popq    %rbp
        retq
