; ModuleID = 'test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR }
%struct.ArchState = type { i32, i32, %union.anon }
%union.anon = type { i64 }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.Memory = type opaque

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @sub_4004a6_get_sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #1 {
entry:
  %BRANCH_TAKEN.i = alloca i8, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %LPC1 = load i64, i64* %3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  store i64 %LPC1, i64* %PC.i, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBX.i
  %11 = load i64, i64* %PC.i
  %12 = add i64 %11, 1
  store i64 %12, i64* %PC.i
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %10, i64* %16
  store i64 %15, i64* %13, align 8
  %LPC2 = load i64, i64* %3
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %19 to i64*
  store i64 %LPC2, i64* %PC.i12, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 15
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RBX.i13 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 13
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RCX.i
  %27 = load i64, i64* %PC.i12
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i12
  store i64 %26, i64* %RBX.i13, align 8
  %LPC3 = load i64, i64* %3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %31 to i64*
  store i64 %LPC3, i64* %PC.i10, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i11
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %ECX.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i10
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i10
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  %LPC4 = load i64, i64* %3
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %47 to i64*
  store i64 %LPC4, i64* %PC.i9, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %RBP.i
  %52 = sub i64 %51, 4
  %53 = load i64, i64* %PC.i9
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC.i9
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %57, align 1
  %58 = and i32 %56, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %62, i8* %63, align 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %64, align 1
  %65 = icmp eq i32 %56, 0
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %66, i8* %67, align 1
  %68 = lshr i32 %56, 31
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %69, i8* %70, align 1
  %71 = lshr i32 %56, 31
  %72 = xor i32 %68, %71
  %73 = add i32 %72, %71
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %75, i8* %76, align 1
  %LPC5 = load i64, i64* %3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %BRANCH_TAKEN.i)
  store i8 0, i8* %BRANCH_TAKEN.i, align 1
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 33
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %79 to i64*
  store i64 %LPC5, i64* %PC.i8, align 8
  %80 = load i64, i64* %PC.i8
  %81 = add i64 %80, 9
  %82 = load i64, i64* %PC.i8
  %83 = add i64 %82, 2
  %84 = load i64, i64* %PC.i8
  %85 = add i64 %84, 2
  store i64 %85, i64* %PC.i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  %95 = xor i1 %91, %94
  %96 = xor i1 %95, true
  %97 = and i1 %88, %96
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %BRANCH_TAKEN.i, align 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %100 = select i1 %97, i64 %81, i64 %83
  store i64 %100, i64* %99, align 8
  %101 = load i8, i8* %BRANCH_TAKEN.i
  %102 = icmp eq i8 %101, 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %BRANCH_TAKEN.i)
  br i1 %102, label %block_L2, label %block_LFT

block_LFT:                                        ; preds = %entry
  %LPC6 = load i64, i64* %3
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %105 to i64*
  store i64 %LPC6, i64* %PC.i6, align 8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RBX.i7 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %PC.i6
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC.i6
  store i64 1, i64* %RBX.i7, align 8
  %LPC61 = load i64, i64* %3
  %LPC62 = add i64 %LPC61, 7
  store i64 %LPC62, i64* %3
  br label %block_L3

block_L2:                                         ; preds = %entry
  %LPC7 = load i64, i64* %3
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 33
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %113 to i64*
  store i64 %LPC7, i64* %PC.i4, align 8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RBX.i5 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %PC.i4
  %118 = add i64 %117, 5
  store i64 %118, i64* %PC.i4
  store i64 0, i64* %RBX.i5, align 8
  br label %block_L3

block_L3:                                         ; preds = %block_L2, %block_LFT
  %LPC8 = load i64, i64* %3
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %121 to i64*
  store i64 %LPC8, i64* %PC.i2, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBX.i3 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %PC.i2
  %126 = add i64 %125, 1
  store i64 %126, i64* %PC.i2
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %RBX.i3, align 8
  store i64 %129, i64* %127, align 8
  %LPC9 = load i64, i64* %3
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %134 to i64*
  store i64 %LPC9, i64* %PC.i1, align 8
  %135 = load i64, i64* %PC.i1
  %136 = add i64 %135, 1
  store i64 %136, i64* %PC.i1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %137, align 8
  %142 = add i64 %139, 8
  store i64 %142, i64* %138, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define i32 @sub_pushq_RBP(%struct.State*, i64, i64) #1 {
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
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_movq_RBP_RSP(%struct.State*, i64, i64) #1 {
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
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_movl_m32_EDI(%struct.State*, i64, i64, i64 %mem_off) #1 {
block_4003e0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, %mem_off
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_cmpl_m32_imm32(%struct.State*, i64, i64, i32 %const, i64 %mem_off) #1 {
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
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, %mem_off
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, %const
  %16 = icmp ult i32 %14, %const
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, %const
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_movl_EAX_imm32(%struct.State*, i64, i64, i64 %const) #1 {
block_4003e0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 %const, i64* %RBX, align 8
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_popq_RBP(%struct.State*, i64, i64) #1 {
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
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
  ret i32 0
}

; Function Attrs: alwaysinline
define i32 @sub_retq(%struct.State*, i64, i64) #1 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret i32 0
}

; Function Attrs: alwaysinline
define i1 @sub_jg_label(%struct.State*, i64, i64, i64 %rel_off1, i64 %rel_off2) #1 {
block_530:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  %27 = load i8, i8* %BRANCH_TAKEN
  %28 = icmp eq i8 %27, 1
  ret i1 %28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { alwaysinline }
attributes #2 = { argmemonly nounwind }
