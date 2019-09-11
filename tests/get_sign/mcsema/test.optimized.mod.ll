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
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSP, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %4, i64* %7
  store i64 %6, i64* %RSP, align 8
  store i64 %6, i64* %RBP, align 8
  %8 = add i64 %5, -12
  %9 = load i32, i32* %EDI, align 4
  %10 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %10
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %12, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #6
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = xor i1 %21, true
  %29 = icmp eq i8 %25, 0
  %30 = and i1 %29, %28
  %.v = select i1 %30, i64 20, i64 13
  %31 = add i64 %.v, %1
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC, align 8
  br i1 %30, label %block_4004ba, label %block_4004b3

block_4004b3:                                     ; preds = %block_4004a6
  store i64 1, i64* %RAX, align 8
  %33 = add i64 %31, 12
  store i64 %33, i64* %PC, align 8
  br label %block_4004bf

block_4004bf:                                     ; preds = %block_4004ba, %block_4004b3
  %34 = inttoptr i64 %6 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %RBP, align 8
  %36 = inttoptr i64 %5 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %PC, align 8
  %38 = add i64 %5, 8
  store i64 %38, i64* %RSP, align 8
  ret %struct.Memory* %2

block_4004ba:                                     ; preds = %block_4004a6
  store i64 0, i64* %RAX, align 8
  br label %block_4004bf
}
