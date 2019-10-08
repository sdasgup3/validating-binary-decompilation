.mov:
 	pushq   %rbp
 	movq    %rsp,%rbp

 	movl    %edi,-0x14(%rbp)
 	movl    -0x14(%rbp),%eax
 	movl    %eax,-0x4(%rbp)
	movl    -0x4(%rbp),%eax

 	popq    %rbp
 	retq   
