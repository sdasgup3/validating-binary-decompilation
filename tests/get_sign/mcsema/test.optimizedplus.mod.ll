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

define %struct.Memory* @sub_4004a6_get_sign(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_4004a6:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %9, i64* %12
  %13 = add i64 %10, -12
  %14 = load i32, i32* %5, align 4
  %15 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %15
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %18, align 1
  %19 = and i32 %17, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #6
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = xor i1 %26, true
  %34 = icmp eq i8 %30, 0
  %35 = and i1 %34, %33
  br i1 %35, label %block_4004ba, label %block_4004b3

block_4004b3:                                     ; preds = %block_4004a6
  store i64 1, i64* %6, align 8
  br label %block_4004bf

block_4004bf:                                     ; preds = %block_4004ba, %block_4004b3
  %36 = inttoptr i64 %11 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %8, align 8
  %38 = inttoptr i64 %10 to i64*
  %39 = load i64, i64* %38
  store i64 %39, i64* %3, align 8
  %40 = add i64 %10, 8
  store i64 %40, i64* %7, align 8
  ret %struct.Memory* %2

block_4004ba:                                     ; preds = %block_4004a6
  store i64 0, i64* %6, align 8
  br label %block_4004bf
}
