; ModuleID = 'binary_search.bin.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Memory = type opaque

declare i32 @llvm.ctpop.i32(i32) #2

define i32 @sub_movq_RBP_RSP(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RBX, align 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  ret i32 0
}

define i32 @sub_movq_m64_RDI(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i64*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %RCX = bitcast %union.anon* %13 to i64*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  store i64 %14, i64* %10, align 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret i32 0
}

define i32 @sub_movl_m32_ESI(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %RCX = bitcast %union.anon* %13 to i32*
  %14 = load i32, i32* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  store i32 %14, i32* %10, align 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret i32 0
}

define i32 @sub_movl_m32_EDX(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %RCX = bitcast %union.anon* %13 to i32*
  %14 = load i32, i32* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  store i32 %14, i32* %10, align 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret i32 0
}

define i32 @sub_movl_m32_EAX(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %RCX = bitcast %union.anon* %13 to i32*
  %14 = load i32, i32* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  store i32 %14, i32* %10, align 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret i32 0
}

define i32 @sub_movl_m32_imm(%struct.State*, i64, i64, i32 %imm, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i32*
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  store i32 %imm, i32* %10, align 8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  ret i32 0
}

define i32 @sub_movl_EAX_m32(%struct.State*, i64, i64, i32 %src, i64 %dst) {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15 
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %LRBP = load i64, i64* %RBP
  %9 = sub i64 %LRBP, %dst
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %RCX = bitcast %union.anon* %13 to i32*
  %14 = load i32, i32* %10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  store i32 %14, i32* %RCX, align 8
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret i32 0
}

define i32 @sub_EAX_imm(%struct.State*, i64, i64, i32 %src, i32 %dst) {
  block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %dst to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %dst
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RBX, align 8
  %20 = icmp ult i32 %17, %dst
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23) #14
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %dst, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add   i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  ret i32 0
}



define %struct.Memory* @sub_6c0_binary_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %LPC = load i64, i64* %PC

 ; 6c0:	55                   	push   %rbp
 ; 6c1:	48 89 e5             	mov    %rsp,%rbp
 %call2 = call i32 @sub_movq_RBP_RSP(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 0)
 ; 6c4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 %call3 = call i32 @sub_movq_m64_RDI(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 24)
 ; 6c8:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 %call4 = call i32 @sub_movl_m32_ESI(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 28)
 ; 6cb:	89 55 e0             	mov    %edx,-0x20(%rbp)
 %call5 = call i32 @sub_movl_m32_EDX(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 32)
 ; 6ce:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 %call6 = call i32 @sub_movl_m32_imm(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 12)
 ; 6d5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 %call7 = call i32 @sub_movl_EAX_m32(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 28)
 ; 6d8:	83 e8 01             	sub    $0x1,%eax
 %call8 = call i32 @sub_EAX_imm(%struct.State* %0, i64 %LPC, i64 0, i32 0, i32 1)
 ; 6db:	89 45 f8             	mov    %eax,-0x8(%rbp)
 %call9 = call i32 @sub_movl_m32_EAX(%struct.State* %0, i64 %LPC, i64 0, i32 0, i64 8)

 ; 6de:	eb 68                	jmp    748 <binary_search+0x88>
 ; 6e0:	8b 45 f8             	mov    -0x8(%rbp),%eax
 ; 6e3:	2b 45 f4             	sub    -0xc(%rbp),%eax
 ; 6e6:	89 c2                	mov    %eax,%edx
 ; 6e8:	c1 ea 1f             	shr    $0x1f,%edx
 ; 6eb:	01 d0                	add    %edx,%eax
 ; 6ed:	d1 f8                	sar    %eax
 ; 6ef:	89 c2                	mov    %eax,%edx
 ; 6f1:	8b 45 f4             	mov    -0xc(%rbp),%eax
 ; 6f4:	01 d0                	add    %edx,%eax
 ; 6f6:	89 45 fc             	mov    %eax,-0x4(%rbp)
 ; 6f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
 ; 6fc:	48 98                	cltq   
 ; 6fe:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 ; 705:	00 
 ; 706:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 ; 70a:	48 01 d0             	add    %rdx,%rax
 ; 70d:	8b 00                	mov    (%rax),%eax
 ; 70f:	3b 45 e0             	cmp    -0x20(%rbp),%eax
 ; 712:	75 05                	jne    719 <binary_search+0x59>
 ; 714:	8b 45 fc             	mov    -0x4(%rbp),%eax
 ; 717:	eb 3c                	jmp    755 <binary_search+0x95>
 ; 719:	8b 45 fc             	mov    -0x4(%rbp),%eax
 ; 71c:	48 98                	cltq   
 ; 71e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 ; 725:	00 
 ; 726:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 ; 72a:	48 01 d0             	add    %rdx,%rax
 ; 72d:	8b 00                	mov    (%rax),%eax
 ; 72f:	3b 45 e0             	cmp    -0x20(%rbp),%eax
 ; 732:	7d 0b                	jge    73f <binary_search+0x7f>
 ; 734:	8b 45 fc             	mov    -0x4(%rbp),%eax
 ; 737:	83 c0 01             	add    $0x1,%eax
 ; 73a:	89 45 f4             	mov    %eax,-0xc(%rbp)
 ; 73d:	eb 09                	jmp    748 <binary_search+0x88>
 ; 73f:	8b 45 fc             	mov    -0x4(%rbp),%eax
 ; 742:	83 e8 01             	sub    $0x1,%eax
 ; 745:	89 45 f8             	mov    %eax,-0x8(%rbp)
 ; 748:	8b 45 f4             	mov    -0xc(%rbp),%eax
 ; 74b:	3b 45 f8             	cmp    -0x8(%rbp),%eax
 ; 74e:	7c 90                	jl     6e0 <binary_search+0x20>
 ; 750:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 ; 755:	5d                   	pop    %rbp
 ; 756:	c3                   	retq   
  ret %struct.Memory* %2
}
