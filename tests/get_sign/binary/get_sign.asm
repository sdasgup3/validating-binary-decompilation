  .text
  .globl	get_sign
  .type	get_sign, @function
.get_sign:
 pushq	%rbp
 movq	%rsp, %rbp
 movl	%edi, -4(%rbp)
 cmpl	$0, -4(%rbp)
 jg	.L_2
 movl	$1, %eax
 jmpq	.L_3
.L_2:
 movl	$0, %eax
.L_3:
 popq	%rbp
 retq
