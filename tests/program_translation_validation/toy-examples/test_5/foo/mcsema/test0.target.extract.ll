; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @foo(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -12
  %18 = load i32, i32* %ESI.i, align 4
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC.i, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC.i, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -20
  %29 = load i64, i64* %PC.i, align 8
  %30 = add i64 %29, 7
  store i64 %30, i64* %PC.i, align 8
  %31 = inttoptr i64 %28 to i32*
  store i32 0, i32* %31, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4005e9

block_.L_4005e9:                                  ; preds = %block_4005f5, %entry
  %32 = phi i64 [ %153, %block_4005f5 ], [ %.pre, %entry ]
  %RAX.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %33 = load i64, i64* %RBP.i, align 8
  %34 = add i64 %33, -20
  %35 = add i64 %32, 3
  store i64 %35, i64* %PC.i, align 8
  %36 = inttoptr i64 %34 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %RAX.i32, align 8
  %39 = add i64 %33, -12
  %40 = add i64 %32, 6
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %37, %42
  %44 = icmp ult i32 %37, %42
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %45, i8* %46, align 1
  %47 = and i32 %43, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %51, i8* %52, align 1
  %53 = xor i32 %42, %37
  %54 = xor i32 %53, %43
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1
  %59 = icmp eq i32 %43, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1
  %62 = lshr i32 %43, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1
  %65 = lshr i32 %37, 31
  %66 = lshr i32 %42, 31
  %67 = xor i32 %66, %65
  %68 = xor i32 %62, %65
  %69 = add nuw nsw i32 %68, %67
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1
  %73 = icmp ne i8 %63, 0
  %74 = xor i1 %73, %70
  %.v = select i1 %74, i64 12, i64 43
  %75 = add i64 %32, %.v
  store i64 %75, i64* %3, align 8
  br i1 %74, label %block_4005f5, label %block_.L_400614

block_4005f5:                                     ; preds = %block_.L_4005e9
  %76 = add i64 %33, -8
  %77 = add i64 %75, 4
  store i64 %77, i64* %PC.i, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %RAX.i32, align 8
  %RCX.i22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %80 = add i64 %75, 8
  store i64 %80, i64* %PC.i, align 8
  %81 = load i32, i32* %36, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %RCX.i22, align 8
  %RDX.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %83 = shl nsw i64 %82, 2
  %84 = add i64 %83, %79
  %85 = add i64 %75, 11
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDX.i20, align 8
  %89 = add i64 %33, -16
  %90 = add i64 %75, 14
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %87
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RDX.i20, align 8
  %95 = icmp ult i32 %93, %87
  %96 = icmp ult i32 %93, %92
  %97 = or i1 %95, %96
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %46, align 1
  %99 = and i32 %93, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %52, align 1
  %104 = xor i32 %92, %87
  %105 = xor i32 %104, %93
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %58, align 1
  %109 = icmp eq i32 %93, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %61, align 1
  %111 = lshr i32 %93, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %64, align 1
  %113 = lshr i32 %87, 31
  %114 = lshr i32 %92, 31
  %115 = xor i32 %111, %113
  %116 = xor i32 %111, %114
  %117 = add nuw nsw i32 %115, %116
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %72, align 1
  %120 = add i64 %75, 17
  store i64 %120, i64* %PC.i, align 8
  store i32 %93, i32* %91, align 4
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -20
  %123 = load i64, i64* %PC.i, align 8
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC.i, align 8
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, 1
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX.i32, align 8
  %129 = icmp eq i32 %126, -1
  %130 = icmp eq i32 %127, 0
  %131 = or i1 %129, %130
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %46, align 1
  %133 = and i32 %127, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %52, align 1
  %138 = xor i32 %126, %127
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %58, align 1
  %142 = icmp eq i32 %127, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %61, align 1
  %144 = lshr i32 %127, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %64, align 1
  %146 = lshr i32 %126, 31
  %147 = xor i32 %144, %146
  %148 = add nuw nsw i32 %147, %144
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %72, align 1
  %151 = add i64 %123, 9
  store i64 %151, i64* %PC.i, align 8
  store i32 %127, i32* %125, align 4
  %152 = load i64, i64* %PC.i, align 8
  %153 = add i64 %152, -38
  store i64 %153, i64* %3, align 8
  br label %block_.L_4005e9

block_.L_400614:                                  ; preds = %block_.L_4005e9
  %154 = add i64 %33, -16
  %155 = add i64 %75, 3
  store i64 %155, i64* %PC.i, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX.i32, align 8
  %159 = add i64 %75, 4
  store i64 %159, i64* %PC.i, align 8
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RBP.i, align 8
  store i64 %161, i64* %6, align 8
  %164 = add i64 %75, 5
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %161 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %3, align 8
  %167 = add i64 %160, 16
  store i64 %167, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
