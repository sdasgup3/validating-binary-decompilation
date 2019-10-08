  .text
  .globl	add
  .type	add, @function
.add:
 pushq   %rbp
 movq    %rsp, %rbp
 movl    %edi, -4(%rbp)
 movl    %esi, -8(%rbp)
 movl    -4(%rbp), %edx
 movl    -8(%rbp), %eax
 addl    %edx, %eax
 popq    %rbp
 retq
