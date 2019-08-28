	.file	"xorq_r64_r64.c"
	.text
	.globl	leaf
	.type	leaf, @function
leaf:
.LFB0:
	.cfi_startproc
#APP
# 2 "xorq_r64_r64.c" 1
	xorq %rbx, %rax
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE0:
	.size	leaf, .-leaf
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
#APP
# 2 "xorq_r64_r64.c" 1
	xorq %rbx, %rax
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
