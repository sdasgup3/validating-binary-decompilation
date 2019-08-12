  .text
  .globl	get_sign
  .type	get_sign, @function
.get_sign:
 movl	$0, -4(%rbp)
 movl	$1, -4(%rbp)
 movl	$2, -8(%rbp)
 movl	$3, -4(%rbp)
 retq
