  .text
  .globl	get_sign
  .type	get_sign, @function
.get_sign:
 movl	-4(%rbp), %edi
 movl	$0, -4(%rbp)
 movl	-4(%rbp), %eax
 movl	$2, -8(%rbp)
 movl	-8(%rbp), %ebx
 movl	-4(%rbp), %ebx
 retq
