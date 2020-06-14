; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x4005f4_type = type <{ [8 x i8] }>
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

@G__0x4005f4 = external global %G__0x4005f4_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @func(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -24
  store i64 %11, i64* %RSP.i16, align 8
  %12 = icmp ult i64 %8, 16
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400509

block_.L_400509:                                  ; preds = %block_400515, %entry
  %55 = phi i64 [ %.pre, %entry ], [ %138, %block_400515 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %99, %block_400515 ]
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i26 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -8
  %59 = add i64 %55, 3
  store i64 %59, i64* %PC.i, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX.i26, align 8
  %63 = add i64 %57, -4
  %64 = add i64 %55, 6
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %61, %66
  %68 = icmp ult i32 %61, %66
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %21, align 1
  %75 = xor i32 %66, %61
  %76 = xor i32 %75, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %27, align 1
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %30, align 1
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %33, align 1
  %84 = lshr i32 %61, 31
  %85 = lshr i32 %66, 31
  %86 = xor i32 %85, %84
  %87 = xor i32 %82, %84
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %39, align 1
  %91 = icmp ne i8 %83, 0
  %92 = xor i1 %91, %89
  %.v = select i1 %92, i64 12, i64 46
  %93 = add i64 %55, %.v
  store i64 %93, i64* %3, align 8
  br i1 %92, label %block_400515, label %block_.L_400537

block_400515:                                     ; preds = %block_.L_400509
  %EAX.i23 = bitcast %union.anon* %56 to i32*
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 add (i64 ptrtoint (%G__0x4005f4_type* @G__0x4005f4 to i64), i64 172), i64* %RDI.i, align 8
  %AL.i = bitcast %union.anon* %56 to i8*
  store i8 0, i8* %AL.i, align 1
  %94 = add i64 %93, -293
  %95 = add i64 %93, 17
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %99 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -12
  %102 = load i32, i32* %EAX.i23, align 4
  %103 = load i64, i64* %PC.i, align 8
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC.i, align 8
  %105 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %105, align 4
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -8
  %108 = load i64, i64* %PC.i, align 8
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %107 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX.i26, align 8
  %114 = icmp eq i32 %111, -1
  %115 = icmp eq i32 %112, 0
  %116 = or i1 %114, %115
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %14, align 1
  %118 = and i32 %112, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1
  %123 = xor i32 %111, %112
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %27, align 1
  %127 = icmp eq i32 %112, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %30, align 1
  %129 = lshr i32 %112, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %33, align 1
  %131 = lshr i32 %111, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %129
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %39, align 1
  %136 = add i64 %108, 9
  store i64 %136, i64* %PC.i, align 8
  store i32 %112, i32* %110, align 4
  %137 = load i64, i64* %PC.i, align 8
  %138 = add i64 %137, -41
  store i64 %138, i64* %3, align 8
  br label %block_.L_400509

block_.L_400537:                                  ; preds = %block_.L_400509
  %139 = load i64, i64* %RSP.i16, align 8
  %140 = add i64 %139, 16
  store i64 %140, i64* %RSP.i16, align 8
  %141 = icmp ugt i64 %139, -17
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = trunc i64 %140 to i32
  %144 = and i32 %143, 255
  %145 = call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i64 %139, 16
  %150 = xor i64 %149, %140
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %27, align 1
  %154 = icmp eq i64 %140, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %30, align 1
  %156 = lshr i64 %140, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %33, align 1
  %158 = lshr i64 %139, 63
  %159 = xor i64 %156, %158
  %160 = add nuw nsw i64 %159, %156
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %39, align 1
  %163 = add i64 %93, 5
  store i64 %163, i64* %PC.i, align 8
  %164 = add i64 %139, 24
  %165 = inttoptr i64 %140 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RBP.i, align 8
  store i64 %164, i64* %6, align 8
  %167 = add i64 %93, 6
  store i64 %167, i64* %PC.i, align 8
  %168 = inttoptr i64 %164 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %3, align 8
  %170 = add i64 %139, 32
  store i64 %170, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
