.main:
 movl	%esi, -4(%rbp)
 movl	-4(%rbp), %eax
 movl	%edi, -8(%rbp)
 movl	-4(%rbp), %ebx
 jg	.L_2
 movl	%eax, -12(%rbp)
 jmpq	.L_3
.L_2:
 movl	%ebx, -16(%rbp)
.L_3:
 movl	-16(%rbp), %eax 
 retq
