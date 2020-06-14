; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G_0x601040___rax_8__type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon = type { i64 }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@G_0x601040___rax_8_ = external global %G_0x601040___rax_8__type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @printdata(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -16
  %12 = add i64 %10, 10
  store i64 %12, i64* %PC.i, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %RBP.i, align 8
  %15 = add i64 %14, -4
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC.i, align 8
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18, align 4
  %RAX.i37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4004d2

block_.L_4004d2:                                  ; preds = %block_.L_400507, %entry
  %25 = phi i64 [ %150, %block_.L_400507 ], [ %.pre, %entry ]
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -4
  %28 = add i64 %25, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %27 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %RAX.i37, align 8
  %32 = add nsw i64 %31, -10
  %33 = icmp ult i32 %30, 10
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %19, align 1
  %35 = trunc i64 %32 to i32
  %36 = and i32 %35, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  store i8 %40, i8* %20, align 1
  %41 = xor i64 %31, %32
  %42 = lshr i64 %41, 4
  %43 = trunc i64 %42 to i8
  %44 = and i8 %43, 1
  store i8 %44, i8* %21, align 1
  %45 = icmp eq i64 %32, 0
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %22, align 1
  %47 = lshr i64 %32, 63
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %23, align 1
  %49 = lshr i64 %31, 63
  %50 = xor i64 %47, %49
  %51 = add nuw nsw i64 %50, %49
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %24, align 1
  %.v = select i1 %33, i64 14, i64 72
  %54 = add i64 %25, %.v
  store i64 %54, i64* %3, align 8
  br i1 %33, label %block_4004e0, label %block_.L_40051a

block_4004e0:                                     ; preds = %block_.L_4004d2
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = load i32, i32* %29, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %RAX.i37, align 8
  %58 = shl nsw i64 %57, 3
  %59 = add i64 %58, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
  %60 = add i64 %54, 13
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i8 0, i8* %19, align 1
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %20, align 1
  store i8 0, i8* %21, align 1
  %69 = icmp eq i64 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %22, align 1
  %71 = lshr i64 %62, 63
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %.v5 = select i1 %69, i64 39, i64 19
  %73 = add i64 %54, %.v5
  store i64 %73, i64* %3, align 8
  br i1 %69, label %block_.L_400507, label %block_4004f3

block_4004f3:                                     ; preds = %block_4004e0
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC.i, align 8
  %75 = load i32, i32* %29, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %RAX.i37, align 8
  %77 = shl nsw i64 %76, 3
  %78 = add i64 %77, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
  %79 = add i64 %73, 12
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX.i37, align 8
  %82 = add i64 %73, 14
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RCX.i21, align 8
  %86 = add i64 %26, -8
  %87 = add i64 %73, 17
  store i64 %87, i64* %PC.i, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, %84
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RCX.i21, align 8
  %92 = icmp ult i32 %90, %84
  %93 = icmp ult i32 %90, %89
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %19, align 1
  %96 = and i32 %90, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %20, align 1
  %101 = xor i32 %89, %84
  %102 = xor i32 %101, %90
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %21, align 1
  %106 = icmp eq i32 %90, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %22, align 1
  %108 = lshr i32 %90, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %23, align 1
  %110 = lshr i32 %84, 31
  %111 = lshr i32 %89, 31
  %112 = xor i32 %108, %110
  %113 = xor i32 %108, %111
  %114 = add nuw nsw i32 %112, %113
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %24, align 1
  %117 = add i64 %73, 20
  store i64 %117, i64* %PC.i, align 8
  store i32 %90, i32* %88, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400507

block_.L_400507:                                  ; preds = %block_4004f3, %block_4004e0
  %118 = phi i64 [ %.pre4, %block_4004f3 ], [ %26, %block_4004e0 ]
  %119 = phi i64 [ %.pre3, %block_4004f3 ], [ %73, %block_4004e0 ]
  %120 = add i64 %118, -4
  %121 = add i64 %119, 8
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i37, align 8
  %126 = icmp eq i32 %123, -1
  %127 = icmp eq i32 %124, 0
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %19, align 1
  %130 = and i32 %124, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %20, align 1
  %135 = xor i32 %123, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = icmp eq i32 %124, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %22, align 1
  %141 = lshr i32 %124, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %23, align 1
  %143 = lshr i32 %123, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %141
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %24, align 1
  %148 = add i64 %119, 14
  store i64 %148, i64* %PC.i, align 8
  store i32 %124, i32* %122, align 4
  %149 = load i64, i64* %PC.i, align 8
  %150 = add i64 %149, -67
  store i64 %150, i64* %3, align 8
  br label %block_.L_4004d2

block_.L_40051a:                                  ; preds = %block_.L_4004d2
  %151 = add i64 %26, -8
  %152 = add i64 %54, 3
  store i64 %152, i64* %PC.i, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i37, align 8
  %156 = add i64 %54, 4
  store i64 %156, i64* %PC.i, align 8
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, 8
  %159 = inttoptr i64 %157 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %RBP.i, align 8
  store i64 %158, i64* %6, align 8
  %161 = add i64 %54, 5
  store i64 %161, i64* %PC.i, align 8
  %162 = inttoptr i64 %158 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %3, align 8
  %164 = add i64 %157, 16
  store i64 %164, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
