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


; Function Attrs: noinline nounwind
define %struct.Memory* @sub_660_get_sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_660:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSP = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 15
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBP = bitcast %union.anon* %17 to i64*
  %18 = load i64, i64* %RBP
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 1
  store i64 %20, i64* %PC
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %18, i64* %24
  store i64 %23, i64* %21, align 8
  %25 = load i64, i64* %RSP
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC
  store i64 %25, i64* %RBP, align 8
  %28 = load i64, i64* %RBP
  %29 = sub i64 %28, 4
  %30 = load i32, i32* %EDI
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  %34 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %34
  %35 = load i64, i64* %RBP
  %36 = sub i64 %35, 4
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC
  %39 = inttoptr i64 %36 to i32*
  %40 = load i32, i32* %39
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %41, align 1
  %42 = and i32 %40, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42) #14
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %48, align 1
  %49 = icmp eq i32 %40, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %50, i8* %51, align 1
  %52 = lshr i32 %40, 31
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %53, i8* %54, align 1
  %55 = lshr i32 %40, 31
  %56 = xor i32 %52, %55
  %57 = add nuw nsw i32 %56, %55
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %59, i8* %60, align 1
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 9
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 2
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 2
  store i64 %66, i64* %PC
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  %76 = xor i1 %72, %75
  %77 = xor i1 %76, true
  %78 = and i1 %69, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %BRANCH_TAKEN, align 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %81 = select i1 %78, i64 %62, i64 %64
  store i64 %81, i64* %80, align 8
  %82 = load i8, i8* %BRANCH_TAKEN
  %83 = icmp eq i8 %82, 1
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 5
  store i64 %85, i64* %PC
  br i1 %83, label %block_674, label %block_66d

block_66d:                                        ; preds = %block_660
  store i64 1, i64* %RAX, align 8
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 7
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 2
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %block_679

block_674:                                        ; preds = %block_660
  store i64 0, i64* %RAX, align 8
  br label %block_679

block_679:                                        ; preds = %block_674, %block_66d
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_674 ], [ %2, %block_66d ]
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 1
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %RBP, align 8
  store i64 %95, i64* %93, align 8
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 1
  store i64 %99, i64* %PC
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103
  store i64 %104, i64* %100, align 8
  %105 = add i64 %102, 8
  store i64 %105, i64* %101, align 8
  ret %struct.Memory* %MEMORY.0
}
