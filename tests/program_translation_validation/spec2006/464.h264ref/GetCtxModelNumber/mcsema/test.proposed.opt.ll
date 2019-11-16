; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x986e0__rip__type = type <{ [8 x i8] }>
%G__0x4b3290_type = type <{ [8 x i8] }>
%G__0x4b33a0_type = type <{ [8 x i8] }>
%G__0x4b36c0_type = type <{ [8 x i8] }>
%G__0x4b3750_type = type <{ [8 x i8] }>
%G__0x4b3900_type = type <{ [8 x i8] }>
%G__0x4b39a0_type = type <{ [8 x i8] }>
%G__0x4b3b80_type = type <{ [8 x i8] }>
%G__0x4b3be0_type = type <{ [8 x i8] }>
%G__0x4b3d00_type = type <{ [8 x i8] }>
%G__0x4b3d20_type = type <{ [8 x i8] }>
%G__0x4b3d80_type = type <{ [8 x i8] }>
%G__0x4b3da0_type = type <{ [8 x i8] }>
%G__0x4b3e00_type = type <{ [8 x i8] }>
%G__0x4b3e20_type = type <{ [8 x i8] }>
%G__0x4b3e70_type = type <{ [8 x i8] }>
%G__0x4b3e80_type = type <{ [8 x i8] }>
%G__0x4b3eb0_type = type <{ [8 x i8] }>
%G__0x4b3ed0_type = type <{ [8 x i8] }>
%G__0x4b3f30_type = type <{ [8 x i8] }>
%G__0x4b3f90_type = type <{ [8 x i8] }>
%G__0x4b40b0_type = type <{ [8 x i8] }>
%G__0x4b41b0_type = type <{ [8 x i8] }>
%G__0x4b44b0_type = type <{ [8 x i8] }>
%G__0x4b4870_type = type <{ [8 x i8] }>
%G__0x4b53b0_type = type <{ [8 x i8] }>
%G__0x4b5770_type = type <{ [8 x i8] }>
%G__0x4b62b0_type = type <{ [8 x i8] }>
%G__0x4b63f0_type = type <{ [8 x i8] }>
%G__0x4b67b0_type = type <{ [8 x i8] }>
%G__0x4b68f0_type = type <{ [8 x i8] }>
%G__0x4b6cb0_type = type <{ [8 x i8] }>
%G__0x4b7070_type = type <{ [8 x i8] }>
%G__0x4b7bb0_type = type <{ [8 x i8] }>
%G__0x4b7f70_type = type <{ [8 x i8] }>
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x986e0__rip_ = global %G_0x986e0__rip__type zeroinitializer
@G__0x4b3290 = global %G__0x4b3290_type zeroinitializer
@G__0x4b33a0 = global %G__0x4b33a0_type zeroinitializer
@G__0x4b36c0 = global %G__0x4b36c0_type zeroinitializer
@G__0x4b3750 = global %G__0x4b3750_type zeroinitializer
@G__0x4b3900 = global %G__0x4b3900_type zeroinitializer
@G__0x4b39a0 = global %G__0x4b39a0_type zeroinitializer
@G__0x4b3b80 = global %G__0x4b3b80_type zeroinitializer
@G__0x4b3be0 = global %G__0x4b3be0_type zeroinitializer
@G__0x4b3d00 = global %G__0x4b3d00_type zeroinitializer
@G__0x4b3d20 = global %G__0x4b3d20_type zeroinitializer
@G__0x4b3d80 = global %G__0x4b3d80_type zeroinitializer
@G__0x4b3da0 = global %G__0x4b3da0_type zeroinitializer
@G__0x4b3e00 = global %G__0x4b3e00_type zeroinitializer
@G__0x4b3e20 = global %G__0x4b3e20_type zeroinitializer
@G__0x4b3e70 = global %G__0x4b3e70_type zeroinitializer
@G__0x4b3e80 = global %G__0x4b3e80_type zeroinitializer
@G__0x4b3eb0 = global %G__0x4b3eb0_type zeroinitializer
@G__0x4b3ed0 = global %G__0x4b3ed0_type zeroinitializer
@G__0x4b3f30 = global %G__0x4b3f30_type zeroinitializer
@G__0x4b3f90 = global %G__0x4b3f90_type zeroinitializer
@G__0x4b40b0 = global %G__0x4b40b0_type zeroinitializer
@G__0x4b41b0 = global %G__0x4b41b0_type zeroinitializer
@G__0x4b44b0 = global %G__0x4b44b0_type zeroinitializer
@G__0x4b4870 = global %G__0x4b4870_type zeroinitializer
@G__0x4b53b0 = global %G__0x4b53b0_type zeroinitializer
@G__0x4b5770 = global %G__0x4b5770_type zeroinitializer
@G__0x4b62b0 = global %G__0x4b62b0_type zeroinitializer
@G__0x4b63f0 = global %G__0x4b63f0_type zeroinitializer
@G__0x4b67b0 = global %G__0x4b67b0_type zeroinitializer
@G__0x4b68f0 = global %G__0x4b68f0_type zeroinitializer
@G__0x4b6cb0 = global %G__0x4b6cb0_type zeroinitializer
@G__0x4b7070 = global %G__0x4b7070_type zeroinitializer
@G__0x4b7bb0 = global %G__0x4b7bb0_type zeroinitializer
@G__0x4b7f70 = global %G__0x4b7f70_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_418f80.XRate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @GetCtxModelNumber(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = add i64 %10, add (i64 ptrtoint (%G_0x986e0__rip__type* @G_0x986e0__rip_ to i64), i64 7)
  %41 = add i64 %10, 15
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = bitcast [32 x %union.VectorReg]* %39 to double*
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %43, i64* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to double*
  store double 0.000000e+00, double* %47, align 1
  %RAX.i2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 3, i64* %RAX.i2481, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2479 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  store i64 1, i64* %RCX.i2479, align 8
  %RDI.i2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %49 = add i64 %7, -16
  %50 = load i64, i64* %RDI.i2476, align 8
  %51 = add i64 %10, 29
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %52, align 8
  %RSI.i2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RSI.i2473, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %RDX.i2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RDX.i2470, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %66, i64* %RDX.i2470, align 8
  %67 = add i64 %66, 24
  %68 = add i64 %65, 12
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -2
  %72 = icmp ult i32 %70, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %26, align 1
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %29, align 1
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %32, align 1
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %38, align 1
  %ECX.i = bitcast %union.anon* %48 to i32*
  %92 = load i32, i32* %ECX.i, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %RAX.i2481, align 8
  %95 = select i1 %83, i64 %93, i64 %94
  %96 = and i64 %95, 4294967295
  store i64 %96, i64* %RAX.i2481, align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -40
  %99 = trunc i64 %95 to i32
  %100 = add i64 %65, 18
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -56
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 5
  store i64 %105, i64* %3, align 8
  %106 = load i64, i64* %45, align 1
  %107 = inttoptr i64 %103 to i64*
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -28
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 7
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %115 = bitcast i64* %114 to double*
  %.pre = load i64, i64* %3, align 8
  %116 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_4191c4

block_.L_4191c4:                                  ; preds = %block_.L_41a3d8, %entry
  %117 = phi i64 [ %.pre, %entry ], [ %8900, %block_.L_41a3d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %8844, %block_.L_41a3d8 ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -28
  %120 = add i64 %117, 3
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX.i2481, align 8
  %124 = add i64 %118, -40
  %125 = add i64 %117, 6
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %122, %127
  %129 = icmp ult i32 %122, %127
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %14, align 1
  %131 = and i32 %128, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %21, align 1
  %136 = xor i32 %127, %122
  %137 = xor i32 %136, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %26, align 1
  %141 = icmp eq i32 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %29, align 1
  %143 = lshr i32 %128, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %32, align 1
  %145 = lshr i32 %122, 31
  %146 = lshr i32 %127, 31
  %147 = xor i32 %146, %145
  %148 = xor i32 %143, %145
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %38, align 1
  %152 = icmp ne i8 %144, 0
  %153 = xor i1 %152, %150
  %.v273 = select i1 %153, i64 12, i64 4647
  %154 = add i64 %117, %.v273
  store i64 %154, i64* %3, align 8
  br i1 %153, label %block_4191d0, label %block_.L_41a3eb

block_4191d0:                                     ; preds = %block_.L_4191c4
  store <4 x i32> zeroinitializer, <4 x i32>* %116, align 1
  %155 = add i64 %118, -48
  %156 = add i64 %154, 8
  store i64 %156, i64* %3, align 8
  %157 = load i64, i64* %45, align 1
  %158 = inttoptr i64 %155 to i64*
  store i64 %157, i64* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -36
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 7
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 0, i32* %163, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_4191df

block_.L_4191df:                                  ; preds = %block_.L_4192e4, %block_4191d0
  %164 = phi i64 [ %.pre211, %block_4191d0 ], [ %688, %block_.L_4192e4 ]
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -36
  %167 = add i64 %164, 4
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, -3
  %171 = icmp ult i32 %169, 3
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %14, align 1
  %173 = and i32 %170, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  %178 = xor i32 %170, %169
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %26, align 1
  %182 = icmp eq i32 %170, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %29, align 1
  %184 = lshr i32 %170, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %32, align 1
  %186 = lshr i32 %169, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %38, align 1
  %191 = icmp ne i8 %185, 0
  %192 = xor i1 %191, %189
  %.v274 = select i1 %192, i64 10, i64 280
  %193 = add i64 %164, %.v274
  store i64 %193, i64* %3, align 8
  br i1 %192, label %block_4191e9, label %block_.L_4192f7

block_4191e9:                                     ; preds = %block_.L_4191df
  %194 = add i64 %165, -32
  %195 = add i64 %193, 7
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 0, i32* %196, align 4
  %.pre259 = load i64, i64* %3, align 8
  br label %block_.L_4191f0

block_.L_4191f0:                                  ; preds = %block_.L_4192d1, %block_4191e9
  %197 = phi i64 [ %.pre259, %block_4191e9 ], [ %658, %block_.L_4192d1 ]
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -32
  %200 = add i64 %197, 4
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, -11
  %204 = icmp ult i32 %202, 11
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %14, align 1
  %206 = and i32 %203, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  %211 = xor i32 %203, %202
  %212 = lshr i32 %211, 4
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %26, align 1
  %215 = icmp eq i32 %203, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %29, align 1
  %217 = lshr i32 %203, 31
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %32, align 1
  %219 = lshr i32 %202, 31
  %220 = xor i32 %217, %219
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %38, align 1
  %224 = icmp ne i8 %218, 0
  %225 = xor i1 %224, %222
  %.v272 = select i1 %225, i64 10, i64 244
  %226 = add i64 %197, %.v272
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_4191fa, label %block_.L_4192e4

block_4191fa:                                     ; preds = %block_.L_4191f0
  %227 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %227, i64* %RAX.i2481, align 8
  %228 = add i64 %227, 24
  %229 = add i64 %226, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %231, -2
  %233 = icmp ult i32 %231, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %14, align 1
  %235 = and i32 %232, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  %240 = xor i32 %232, %231
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %26, align 1
  %244 = icmp eq i32 %232, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %29, align 1
  %246 = lshr i32 %232, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %32, align 1
  %248 = lshr i32 %231, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %38, align 1
  %.v307 = select i1 %244, i64 18, i64 119
  %253 = add i64 %226, %.v307
  %254 = add i64 %253, 10
  store i64 %254, i64* %3, align 8
  br i1 %244, label %block_41920c, label %block_.L_419271

block_41920c:                                     ; preds = %block_4191fa
  store i64 ptrtoint (%G__0x4b3290_type* @G__0x4b3290 to i64), i64* %RAX.i2481, align 8
  %255 = add i64 %198, -16
  %256 = add i64 %253, 14
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RCX.i2479, align 8
  %259 = add i64 %198, -36
  %260 = add i64 %253, 18
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, 176
  store i64 %264, i64* %RDX.i2470, align 8
  %265 = lshr i64 %264, 63
  %266 = add i64 %264, %258
  store i64 %266, i64* %RCX.i2479, align 8
  %267 = icmp ult i64 %266, %258
  %268 = icmp ult i64 %266, %264
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %14, align 1
  %271 = trunc i64 %266 to i32
  %272 = and i32 %271, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i64 %264, %258
  %278 = xor i64 %277, %266
  %279 = lshr i64 %278, 4
  %280 = trunc i64 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %26, align 1
  %282 = icmp eq i64 %266, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %29, align 1
  %284 = lshr i64 %266, 63
  %285 = trunc i64 %284 to i8
  store i8 %285, i8* %32, align 1
  %286 = lshr i64 %258, 63
  %287 = xor i64 %284, %286
  %288 = xor i64 %284, %265
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %38, align 1
  %292 = add i64 %253, 32
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %201, align 4
  %294 = sext i32 %293 to i64
  %295 = shl nsw i64 %294, 4
  store i64 %295, i64* %RDX.i2470, align 8
  %296 = add i64 %295, %266
  store i64 %296, i64* %RCX.i2479, align 8
  %297 = icmp ult i64 %296, %266
  %298 = icmp ult i64 %296, %295
  %299 = or i1 %297, %298
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %14, align 1
  %301 = trunc i64 %296 to i32
  %302 = and i32 %301, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  %307 = xor i64 %295, %266
  %308 = xor i64 %307, %296
  %309 = lshr i64 %308, 4
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %26, align 1
  %312 = icmp eq i64 %296, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %29, align 1
  %314 = lshr i64 %296, 63
  %315 = trunc i64 %314 to i8
  store i8 %315, i8* %32, align 1
  %316 = lshr i64 %294, 59
  %317 = and i64 %316, 1
  %318 = xor i64 %314, %284
  %319 = xor i64 %314, %317
  %320 = add nuw nsw i64 %318, %319
  %321 = icmp eq i64 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %38, align 1
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -28
  %325 = add i64 %253, 43
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = mul nsw i64 %328, 264
  store i64 %329, i64* %RDX.i2470, align 8
  %330 = lshr i64 %329, 63
  %331 = load i64, i64* %RAX.i2481, align 8
  %332 = add i64 %329, %331
  store i64 %332, i64* %RAX.i2481, align 8
  %333 = icmp ult i64 %332, %331
  %334 = icmp ult i64 %332, %329
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %14, align 1
  %337 = trunc i64 %332 to i32
  %338 = and i32 %337, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i64 %329, %331
  %344 = xor i64 %343, %332
  %345 = lshr i64 %344, 4
  %346 = trunc i64 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %26, align 1
  %348 = icmp eq i64 %332, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %29, align 1
  %350 = lshr i64 %332, 63
  %351 = trunc i64 %350 to i8
  store i8 %351, i8* %32, align 1
  %352 = lshr i64 %331, 63
  %353 = xor i64 %350, %352
  %354 = xor i64 %350, %330
  %355 = add nuw nsw i64 %353, %354
  %356 = icmp eq i64 %355, 2
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %38, align 1
  %358 = add i64 %323, -36
  %359 = add i64 %253, 57
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = mul nsw i64 %362, 88
  store i64 %363, i64* %RDX.i2470, align 8
  %364 = lshr i64 %363, 63
  %365 = add i64 %363, %332
  store i64 %365, i64* %RAX.i2481, align 8
  %366 = icmp ult i64 %365, %332
  %367 = icmp ult i64 %365, %363
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %14, align 1
  %370 = trunc i64 %365 to i32
  %371 = and i32 %370, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %21, align 1
  %376 = xor i64 %363, %332
  %377 = xor i64 %376, %365
  %378 = lshr i64 %377, 4
  %379 = trunc i64 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %26, align 1
  %381 = icmp eq i64 %365, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %29, align 1
  %383 = lshr i64 %365, 63
  %384 = trunc i64 %383 to i8
  store i8 %384, i8* %32, align 1
  %385 = xor i64 %383, %350
  %386 = xor i64 %383, %364
  %387 = add nuw nsw i64 %385, %386
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %38, align 1
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -32
  %392 = add i64 %253, 68
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = shl nsw i64 %395, 3
  store i64 %396, i64* %RDX.i2470, align 8
  %397 = add i64 %396, %365
  store i64 %397, i64* %RAX.i2481, align 8
  %398 = icmp ult i64 %397, %365
  %399 = icmp ult i64 %397, %396
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %14, align 1
  %402 = trunc i64 %397 to i32
  %403 = and i32 %402, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  %408 = xor i64 %396, %365
  %409 = xor i64 %408, %397
  %410 = lshr i64 %409, 4
  %411 = trunc i64 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %26, align 1
  %413 = icmp eq i64 %397, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %29, align 1
  %415 = lshr i64 %397, 63
  %416 = trunc i64 %415 to i8
  store i8 %416, i8* %32, align 1
  %417 = lshr i64 %395, 60
  %418 = and i64 %417, 1
  %419 = xor i64 %415, %383
  %420 = xor i64 %415, %418
  %421 = add nuw nsw i64 %419, %420
  %422 = icmp eq i64 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %38, align 1
  %424 = load i64, i64* %RCX.i2479, align 8
  store i64 %424, i64* %RDI.i2476, align 8
  store i64 %397, i64* %RSI.i2473, align 8
  %425 = add i64 %253, -652
  %426 = add i64 %253, 86
  %427 = load i64, i64* %6, align 8
  %428 = add i64 %427, -8
  %429 = inttoptr i64 %428 to i64*
  store i64 %426, i64* %429, align 8
  store i64 %428, i64* %6, align 8
  store i64 %425, i64* %3, align 8
  %call2_41925d = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %425, %struct.Memory* %MEMORY.0)
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -48
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 5
  store i64 %433, i64* %3, align 8
  %434 = load double, double* %44, align 1
  %435 = inttoptr i64 %431 to double*
  %436 = load double, double* %435, align 8
  %437 = fadd double %434, %436
  store double %437, double* %44, align 1
  %438 = add i64 %432, 10
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %431 to double*
  store double %437, double* %439, align 8
  %440 = load i64, i64* %3, align 8
  %441 = add i64 %440, 101
  store i64 %441, i64* %3, align 8
  br label %block_.L_4192d1

block_.L_419271:                                  ; preds = %block_4191fa
  store i64 ptrtoint (%G__0x4b33a0_type* @G__0x4b33a0 to i64), i64* %RAX.i2481, align 8
  %442 = add i64 %198, -16
  %443 = add i64 %253, 14
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX.i2479, align 8
  %446 = add i64 %198, -36
  %447 = add i64 %253, 18
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = mul nsw i64 %450, 176
  store i64 %451, i64* %RDX.i2470, align 8
  %452 = lshr i64 %451, 63
  %453 = add i64 %451, %445
  store i64 %453, i64* %RCX.i2479, align 8
  %454 = icmp ult i64 %453, %445
  %455 = icmp ult i64 %453, %451
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = trunc i64 %453 to i32
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  %464 = xor i64 %451, %445
  %465 = xor i64 %464, %453
  %466 = lshr i64 %465, 4
  %467 = trunc i64 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %26, align 1
  %469 = icmp eq i64 %453, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %29, align 1
  %471 = lshr i64 %453, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %32, align 1
  %473 = lshr i64 %445, 63
  %474 = xor i64 %471, %473
  %475 = xor i64 %471, %452
  %476 = add nuw nsw i64 %474, %475
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %38, align 1
  %479 = add i64 %253, 32
  store i64 %479, i64* %3, align 8
  %480 = load i32, i32* %201, align 4
  %481 = sext i32 %480 to i64
  %482 = shl nsw i64 %481, 4
  store i64 %482, i64* %RDX.i2470, align 8
  %483 = add i64 %482, %453
  store i64 %483, i64* %RCX.i2479, align 8
  %484 = icmp ult i64 %483, %453
  %485 = icmp ult i64 %483, %482
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %14, align 1
  %488 = trunc i64 %483 to i32
  %489 = and i32 %488, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %21, align 1
  %494 = xor i64 %482, %453
  %495 = xor i64 %494, %483
  %496 = lshr i64 %495, 4
  %497 = trunc i64 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %26, align 1
  %499 = icmp eq i64 %483, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %29, align 1
  %501 = lshr i64 %483, 63
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %32, align 1
  %503 = lshr i64 %481, 59
  %504 = and i64 %503, 1
  %505 = xor i64 %501, %471
  %506 = xor i64 %501, %504
  %507 = add nuw nsw i64 %505, %506
  %508 = icmp eq i64 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %38, align 1
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -28
  %512 = add i64 %253, 43
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  %516 = mul nsw i64 %515, 264
  store i64 %516, i64* %RDX.i2470, align 8
  %517 = lshr i64 %516, 63
  %518 = load i64, i64* %RAX.i2481, align 8
  %519 = add i64 %516, %518
  store i64 %519, i64* %RAX.i2481, align 8
  %520 = icmp ult i64 %519, %518
  %521 = icmp ult i64 %519, %516
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = trunc i64 %519 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i64 %516, %518
  %531 = xor i64 %530, %519
  %532 = lshr i64 %531, 4
  %533 = trunc i64 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %26, align 1
  %535 = icmp eq i64 %519, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %29, align 1
  %537 = lshr i64 %519, 63
  %538 = trunc i64 %537 to i8
  store i8 %538, i8* %32, align 1
  %539 = lshr i64 %518, 63
  %540 = xor i64 %537, %539
  %541 = xor i64 %537, %517
  %542 = add nuw nsw i64 %540, %541
  %543 = icmp eq i64 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %38, align 1
  %545 = add i64 %510, -36
  %546 = add i64 %253, 57
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = mul nsw i64 %549, 88
  store i64 %550, i64* %RDX.i2470, align 8
  %551 = lshr i64 %550, 63
  %552 = add i64 %550, %519
  store i64 %552, i64* %RAX.i2481, align 8
  %553 = icmp ult i64 %552, %519
  %554 = icmp ult i64 %552, %550
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = trunc i64 %552 to i32
  %558 = and i32 %557, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %21, align 1
  %563 = xor i64 %550, %519
  %564 = xor i64 %563, %552
  %565 = lshr i64 %564, 4
  %566 = trunc i64 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %26, align 1
  %568 = icmp eq i64 %552, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %29, align 1
  %570 = lshr i64 %552, 63
  %571 = trunc i64 %570 to i8
  store i8 %571, i8* %32, align 1
  %572 = xor i64 %570, %537
  %573 = xor i64 %570, %551
  %574 = add nuw nsw i64 %572, %573
  %575 = icmp eq i64 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %38, align 1
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -32
  %579 = add i64 %253, 68
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  %583 = shl nsw i64 %582, 3
  store i64 %583, i64* %RDX.i2470, align 8
  %584 = add i64 %583, %552
  store i64 %584, i64* %RAX.i2481, align 8
  %585 = icmp ult i64 %584, %552
  %586 = icmp ult i64 %584, %583
  %587 = or i1 %585, %586
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = trunc i64 %584 to i32
  %590 = and i32 %589, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  %595 = xor i64 %583, %552
  %596 = xor i64 %595, %584
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %26, align 1
  %600 = icmp eq i64 %584, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %29, align 1
  %602 = lshr i64 %584, 63
  %603 = trunc i64 %602 to i8
  store i8 %603, i8* %32, align 1
  %604 = lshr i64 %582, 60
  %605 = and i64 %604, 1
  %606 = xor i64 %602, %570
  %607 = xor i64 %602, %605
  %608 = add nuw nsw i64 %606, %607
  %609 = icmp eq i64 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %38, align 1
  %611 = load i64, i64* %RCX.i2479, align 8
  store i64 %611, i64* %RDI.i2476, align 8
  store i64 %584, i64* %RSI.i2473, align 8
  %612 = add i64 %253, -753
  %613 = add i64 %253, 86
  %614 = load i64, i64* %6, align 8
  %615 = add i64 %614, -8
  %616 = inttoptr i64 %615 to i64*
  store i64 %613, i64* %616, align 8
  store i64 %615, i64* %6, align 8
  store i64 %612, i64* %3, align 8
  %call2_4192c2 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %612, %struct.Memory* %MEMORY.0)
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -48
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 5
  store i64 %620, i64* %3, align 8
  %621 = load double, double* %44, align 1
  %622 = inttoptr i64 %618 to double*
  %623 = load double, double* %622, align 8
  %624 = fadd double %621, %623
  store double %624, double* %44, align 1
  %625 = add i64 %619, 10
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %618 to double*
  store double %624, double* %626, align 8
  %.pre260 = load i64, i64* %3, align 8
  br label %block_.L_4192d1

block_.L_4192d1:                                  ; preds = %block_.L_419271, %block_41920c
  %627 = phi i64 [ %.pre260, %block_.L_419271 ], [ %441, %block_41920c ]
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -32
  %630 = add i64 %627, 8
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, 1
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX.i2481, align 8
  %635 = icmp eq i32 %632, -1
  %636 = icmp eq i32 %633, 0
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %633, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %633, %632
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %26, align 1
  %648 = zext i1 %636 to i8
  store i8 %648, i8* %29, align 1
  %649 = lshr i32 %633, 31
  %650 = trunc i32 %649 to i8
  store i8 %650, i8* %32, align 1
  %651 = lshr i32 %632, 31
  %652 = xor i32 %649, %651
  %653 = add nuw nsw i32 %652, %649
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %38, align 1
  %656 = add i64 %627, 14
  store i64 %656, i64* %3, align 8
  store i32 %633, i32* %631, align 4
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, -239
  store i64 %658, i64* %3, align 8
  br label %block_.L_4191f0

block_.L_4192e4:                                  ; preds = %block_.L_4191f0
  %659 = add i64 %198, -36
  %660 = add i64 %226, 8
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = add i32 %662, 1
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RAX.i2481, align 8
  %665 = icmp eq i32 %662, -1
  %666 = icmp eq i32 %663, 0
  %667 = or i1 %665, %666
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %14, align 1
  %669 = and i32 %663, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i32 %663, %662
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %26, align 1
  %678 = zext i1 %666 to i8
  store i8 %678, i8* %29, align 1
  %679 = lshr i32 %663, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %32, align 1
  %681 = lshr i32 %662, 31
  %682 = xor i32 %679, %681
  %683 = add nuw nsw i32 %682, %679
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %38, align 1
  %686 = add i64 %226, 14
  store i64 %686, i64* %3, align 8
  store i32 %663, i32* %661, align 4
  %687 = load i64, i64* %3, align 8
  %688 = add i64 %687, -275
  store i64 %688, i64* %3, align 8
  br label %block_.L_4191df

block_.L_4192f7:                                  ; preds = %block_.L_4191df
  %689 = add i64 %193, 7
  store i64 %689, i64* %3, align 8
  store i32 0, i32* %168, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_4192fe

block_.L_4192fe:                                  ; preds = %block_.L_419411, %block_.L_4192f7
  %690 = phi i64 [ %.pre212, %block_.L_4192f7 ], [ %1262, %block_.L_419411 ]
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -36
  %693 = add i64 %690, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, -2
  %697 = icmp ult i32 %695, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %696, %695
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %26, align 1
  %708 = icmp eq i32 %696, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %696, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  %712 = lshr i32 %695, 31
  %713 = xor i32 %710, %712
  %714 = add nuw nsw i32 %713, %712
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %38, align 1
  %717 = icmp ne i8 %711, 0
  %718 = xor i1 %717, %715
  %.v275 = select i1 %718, i64 10, i64 294
  %719 = add i64 %690, %.v275
  store i64 %719, i64* %3, align 8
  br i1 %718, label %block_419308, label %block_.L_419424

block_419308:                                     ; preds = %block_.L_4192fe
  %720 = add i64 %691, -32
  %721 = add i64 %719, 7
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  store i32 0, i32* %722, align 4
  %.pre257 = load i64, i64* %3, align 8
  br label %block_.L_41930f

block_.L_41930f:                                  ; preds = %block_.L_4193fe, %block_419308
  %723 = phi i64 [ %.pre257, %block_419308 ], [ %1232, %block_.L_4193fe ]
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -32
  %726 = add i64 %723, 4
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, -9
  %730 = icmp ult i32 %728, 9
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %14, align 1
  %732 = and i32 %729, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  %737 = xor i32 %729, %728
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %26, align 1
  %741 = icmp eq i32 %729, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %29, align 1
  %743 = lshr i32 %729, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %32, align 1
  %745 = lshr i32 %728, 31
  %746 = xor i32 %743, %745
  %747 = add nuw nsw i32 %746, %745
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %38, align 1
  %750 = icmp ne i8 %744, 0
  %751 = xor i1 %750, %748
  %.v271 = select i1 %751, i64 10, i64 258
  %752 = add i64 %723, %.v271
  store i64 %752, i64* %3, align 8
  br i1 %751, label %block_419319, label %block_.L_419411

block_419319:                                     ; preds = %block_.L_41930f
  %753 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %753, i64* %RAX.i2481, align 8
  %754 = add i64 %753, 24
  %755 = add i64 %752, 12
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = add i32 %757, -2
  %759 = icmp ult i32 %757, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %14, align 1
  %761 = and i32 %758, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %21, align 1
  %766 = xor i32 %758, %757
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %26, align 1
  %770 = icmp eq i32 %758, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %29, align 1
  %772 = lshr i32 %758, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %32, align 1
  %774 = lshr i32 %757, 31
  %775 = xor i32 %772, %774
  %776 = add nuw nsw i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %38, align 1
  %.v306 = select i1 %770, i64 18, i64 126
  %779 = add i64 %752, %.v306
  %780 = add i64 %779, 10
  store i64 %780, i64* %3, align 8
  br i1 %770, label %block_41932b, label %block_.L_419397

block_41932b:                                     ; preds = %block_419319
  store i64 ptrtoint (%G__0x4b36c0_type* @G__0x4b36c0 to i64), i64* %RAX.i2481, align 8
  %781 = add i64 %724, -16
  %782 = add i64 %779, 14
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  %785 = add i64 %784, 528
  store i64 %785, i64* %RCX.i2479, align 8
  %786 = icmp ugt i64 %784, -529
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %14, align 1
  %788 = trunc i64 %785 to i32
  %789 = and i32 %788, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %21, align 1
  %794 = xor i64 %784, 16
  %795 = xor i64 %794, %785
  %796 = lshr i64 %795, 4
  %797 = trunc i64 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %26, align 1
  %799 = icmp eq i64 %785, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %29, align 1
  %801 = lshr i64 %785, 63
  %802 = trunc i64 %801 to i8
  store i8 %802, i8* %32, align 1
  %803 = lshr i64 %784, 63
  %804 = xor i64 %801, %803
  %805 = add nuw nsw i64 %804, %801
  %806 = icmp eq i64 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %38, align 1
  %808 = add i64 %724, -36
  %809 = add i64 %779, 25
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = sext i32 %811 to i64
  %813 = mul nsw i64 %812, 144
  store i64 %813, i64* %RDX.i2470, align 8
  %814 = lshr i64 %813, 63
  %815 = add i64 %813, %785
  store i64 %815, i64* %RCX.i2479, align 8
  %816 = icmp ult i64 %815, %785
  %817 = icmp ult i64 %815, %813
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %14, align 1
  %820 = trunc i64 %815 to i32
  %821 = and i32 %820, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i64 %813, %785
  %827 = xor i64 %826, %815
  %828 = lshr i64 %827, 4
  %829 = trunc i64 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %26, align 1
  %831 = icmp eq i64 %815, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %29, align 1
  %833 = lshr i64 %815, 63
  %834 = trunc i64 %833 to i8
  store i8 %834, i8* %32, align 1
  %835 = xor i64 %833, %801
  %836 = xor i64 %833, %814
  %837 = add nuw nsw i64 %835, %836
  %838 = icmp eq i64 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %38, align 1
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -32
  %842 = add i64 %779, 39
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  %846 = shl nsw i64 %845, 4
  store i64 %846, i64* %RDX.i2470, align 8
  %847 = add i64 %846, %815
  store i64 %847, i64* %RCX.i2479, align 8
  %848 = icmp ult i64 %847, %815
  %849 = icmp ult i64 %847, %846
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %14, align 1
  %852 = trunc i64 %847 to i32
  %853 = and i32 %852, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  %858 = xor i64 %846, %815
  %859 = xor i64 %858, %847
  %860 = lshr i64 %859, 4
  %861 = trunc i64 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = icmp eq i64 %847, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %29, align 1
  %865 = lshr i64 %847, 63
  %866 = trunc i64 %865 to i8
  store i8 %866, i8* %32, align 1
  %867 = lshr i64 %845, 59
  %868 = and i64 %867, 1
  %869 = xor i64 %865, %833
  %870 = xor i64 %865, %868
  %871 = add nuw nsw i64 %869, %870
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %38, align 1
  %874 = add i64 %840, -28
  %875 = add i64 %779, 50
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = sext i32 %877 to i64
  %879 = mul nsw i64 %878, 144
  store i64 %879, i64* %RDX.i2470, align 8
  %880 = lshr i64 %879, 63
  %881 = load i64, i64* %RAX.i2481, align 8
  %882 = add i64 %879, %881
  store i64 %882, i64* %RAX.i2481, align 8
  %883 = icmp ult i64 %882, %881
  %884 = icmp ult i64 %882, %879
  %885 = or i1 %883, %884
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %14, align 1
  %887 = trunc i64 %882 to i32
  %888 = and i32 %887, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %21, align 1
  %893 = xor i64 %879, %881
  %894 = xor i64 %893, %882
  %895 = lshr i64 %894, 4
  %896 = trunc i64 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %26, align 1
  %898 = icmp eq i64 %882, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %29, align 1
  %900 = lshr i64 %882, 63
  %901 = trunc i64 %900 to i8
  store i8 %901, i8* %32, align 1
  %902 = lshr i64 %881, 63
  %903 = xor i64 %900, %902
  %904 = xor i64 %900, %880
  %905 = add nuw nsw i64 %903, %904
  %906 = icmp eq i64 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %38, align 1
  %908 = load i64, i64* %RBP.i, align 8
  %909 = add i64 %908, -36
  %910 = add i64 %779, 64
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = sext i32 %912 to i64
  %914 = mul nsw i64 %913, 72
  store i64 %914, i64* %RDX.i2470, align 8
  %915 = lshr i64 %914, 63
  %916 = add i64 %914, %882
  store i64 %916, i64* %RAX.i2481, align 8
  %917 = icmp ult i64 %916, %882
  %918 = icmp ult i64 %916, %914
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = trunc i64 %916 to i32
  %922 = and i32 %921, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i64 %914, %882
  %928 = xor i64 %927, %916
  %929 = lshr i64 %928, 4
  %930 = trunc i64 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1
  %932 = icmp eq i64 %916, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %29, align 1
  %934 = lshr i64 %916, 63
  %935 = trunc i64 %934 to i8
  store i8 %935, i8* %32, align 1
  %936 = xor i64 %934, %900
  %937 = xor i64 %934, %915
  %938 = add nuw nsw i64 %936, %937
  %939 = icmp eq i64 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %38, align 1
  %941 = add i64 %908, -32
  %942 = add i64 %779, 75
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  %946 = shl nsw i64 %945, 3
  store i64 %946, i64* %RDX.i2470, align 8
  %947 = add i64 %946, %916
  store i64 %947, i64* %RAX.i2481, align 8
  %948 = icmp ult i64 %947, %916
  %949 = icmp ult i64 %947, %946
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %14, align 1
  %952 = trunc i64 %947 to i32
  %953 = and i32 %952, 255
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %21, align 1
  %958 = xor i64 %946, %916
  %959 = xor i64 %958, %947
  %960 = lshr i64 %959, 4
  %961 = trunc i64 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %26, align 1
  %963 = icmp eq i64 %947, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %29, align 1
  %965 = lshr i64 %947, 63
  %966 = trunc i64 %965 to i8
  store i8 %966, i8* %32, align 1
  %967 = lshr i64 %945, 60
  %968 = and i64 %967, 1
  %969 = xor i64 %965, %934
  %970 = xor i64 %965, %968
  %971 = add nuw nsw i64 %969, %970
  %972 = icmp eq i64 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %38, align 1
  %974 = load i64, i64* %RCX.i2479, align 8
  store i64 %974, i64* %RDI.i2476, align 8
  store i64 %947, i64* %RSI.i2473, align 8
  %975 = add i64 %779, -939
  %976 = add i64 %779, 93
  %977 = load i64, i64* %6, align 8
  %978 = add i64 %977, -8
  %979 = inttoptr i64 %978 to i64*
  store i64 %976, i64* %979, align 8
  store i64 %978, i64* %6, align 8
  store i64 %975, i64* %3, align 8
  %call2_419383 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %975, %struct.Memory* %MEMORY.0)
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -48
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 5
  store i64 %983, i64* %3, align 8
  %984 = load double, double* %44, align 1
  %985 = inttoptr i64 %981 to double*
  %986 = load double, double* %985, align 8
  %987 = fadd double %984, %986
  store double %987, double* %44, align 1
  %988 = add i64 %982, 10
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %981 to double*
  store double %987, double* %989, align 8
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 108
  store i64 %991, i64* %3, align 8
  br label %block_.L_4193fe

block_.L_419397:                                  ; preds = %block_419319
  store i64 ptrtoint (%G__0x4b3750_type* @G__0x4b3750 to i64), i64* %RAX.i2481, align 8
  %992 = add i64 %724, -16
  %993 = add i64 %779, 14
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  %996 = add i64 %995, 528
  store i64 %996, i64* %RCX.i2479, align 8
  %997 = icmp ugt i64 %995, -529
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %14, align 1
  %999 = trunc i64 %996 to i32
  %1000 = and i32 %999, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i64 %995, 16
  %1006 = xor i64 %1005, %996
  %1007 = lshr i64 %1006, 4
  %1008 = trunc i64 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %26, align 1
  %1010 = icmp eq i64 %996, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %29, align 1
  %1012 = lshr i64 %996, 63
  %1013 = trunc i64 %1012 to i8
  store i8 %1013, i8* %32, align 1
  %1014 = lshr i64 %995, 63
  %1015 = xor i64 %1012, %1014
  %1016 = add nuw nsw i64 %1015, %1012
  %1017 = icmp eq i64 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %38, align 1
  %1019 = add i64 %724, -36
  %1020 = add i64 %779, 25
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = mul nsw i64 %1023, 144
  store i64 %1024, i64* %RDX.i2470, align 8
  %1025 = lshr i64 %1024, 63
  %1026 = add i64 %1024, %996
  store i64 %1026, i64* %RCX.i2479, align 8
  %1027 = icmp ult i64 %1026, %996
  %1028 = icmp ult i64 %1026, %1024
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = trunc i64 %1026 to i32
  %1032 = and i32 %1031, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %21, align 1
  %1037 = xor i64 %1024, %996
  %1038 = xor i64 %1037, %1026
  %1039 = lshr i64 %1038, 4
  %1040 = trunc i64 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %26, align 1
  %1042 = icmp eq i64 %1026, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %29, align 1
  %1044 = lshr i64 %1026, 63
  %1045 = trunc i64 %1044 to i8
  store i8 %1045, i8* %32, align 1
  %1046 = xor i64 %1044, %1012
  %1047 = xor i64 %1044, %1025
  %1048 = add nuw nsw i64 %1046, %1047
  %1049 = icmp eq i64 %1048, 2
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %38, align 1
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -32
  %1053 = add i64 %779, 39
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = shl nsw i64 %1056, 4
  store i64 %1057, i64* %RDX.i2470, align 8
  %1058 = add i64 %1057, %1026
  store i64 %1058, i64* %RCX.i2479, align 8
  %1059 = icmp ult i64 %1058, %1026
  %1060 = icmp ult i64 %1058, %1057
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = trunc i64 %1058 to i32
  %1064 = and i32 %1063, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %21, align 1
  %1069 = xor i64 %1057, %1026
  %1070 = xor i64 %1069, %1058
  %1071 = lshr i64 %1070, 4
  %1072 = trunc i64 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %26, align 1
  %1074 = icmp eq i64 %1058, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %29, align 1
  %1076 = lshr i64 %1058, 63
  %1077 = trunc i64 %1076 to i8
  store i8 %1077, i8* %32, align 1
  %1078 = lshr i64 %1056, 59
  %1079 = and i64 %1078, 1
  %1080 = xor i64 %1076, %1044
  %1081 = xor i64 %1076, %1079
  %1082 = add nuw nsw i64 %1080, %1081
  %1083 = icmp eq i64 %1082, 2
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %38, align 1
  %1085 = add i64 %1051, -28
  %1086 = add i64 %779, 50
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = mul nsw i64 %1089, 144
  store i64 %1090, i64* %RDX.i2470, align 8
  %1091 = lshr i64 %1090, 63
  %1092 = load i64, i64* %RAX.i2481, align 8
  %1093 = add i64 %1090, %1092
  store i64 %1093, i64* %RAX.i2481, align 8
  %1094 = icmp ult i64 %1093, %1092
  %1095 = icmp ult i64 %1093, %1090
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = trunc i64 %1093 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  %1104 = xor i64 %1090, %1092
  %1105 = xor i64 %1104, %1093
  %1106 = lshr i64 %1105, 4
  %1107 = trunc i64 %1106 to i8
  %1108 = and i8 %1107, 1
  store i8 %1108, i8* %26, align 1
  %1109 = icmp eq i64 %1093, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %29, align 1
  %1111 = lshr i64 %1093, 63
  %1112 = trunc i64 %1111 to i8
  store i8 %1112, i8* %32, align 1
  %1113 = lshr i64 %1092, 63
  %1114 = xor i64 %1111, %1113
  %1115 = xor i64 %1111, %1091
  %1116 = add nuw nsw i64 %1114, %1115
  %1117 = icmp eq i64 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %38, align 1
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -36
  %1121 = add i64 %779, 64
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = mul nsw i64 %1124, 72
  store i64 %1125, i64* %RDX.i2470, align 8
  %1126 = lshr i64 %1125, 63
  %1127 = add i64 %1125, %1093
  store i64 %1127, i64* %RAX.i2481, align 8
  %1128 = icmp ult i64 %1127, %1093
  %1129 = icmp ult i64 %1127, %1125
  %1130 = or i1 %1128, %1129
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %14, align 1
  %1132 = trunc i64 %1127 to i32
  %1133 = and i32 %1132, 255
  %1134 = tail call i32 @llvm.ctpop.i32(i32 %1133)
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  store i8 %1137, i8* %21, align 1
  %1138 = xor i64 %1125, %1093
  %1139 = xor i64 %1138, %1127
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %26, align 1
  %1143 = icmp eq i64 %1127, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %29, align 1
  %1145 = lshr i64 %1127, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %32, align 1
  %1147 = xor i64 %1145, %1111
  %1148 = xor i64 %1145, %1126
  %1149 = add nuw nsw i64 %1147, %1148
  %1150 = icmp eq i64 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %38, align 1
  %1152 = add i64 %1119, -32
  %1153 = add i64 %779, 75
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sext i32 %1155 to i64
  %1157 = shl nsw i64 %1156, 3
  store i64 %1157, i64* %RDX.i2470, align 8
  %1158 = add i64 %1157, %1127
  store i64 %1158, i64* %RAX.i2481, align 8
  %1159 = icmp ult i64 %1158, %1127
  %1160 = icmp ult i64 %1158, %1157
  %1161 = or i1 %1159, %1160
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %14, align 1
  %1163 = trunc i64 %1158 to i32
  %1164 = and i32 %1163, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %21, align 1
  %1169 = xor i64 %1157, %1127
  %1170 = xor i64 %1169, %1158
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %26, align 1
  %1174 = icmp eq i64 %1158, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %29, align 1
  %1176 = lshr i64 %1158, 63
  %1177 = trunc i64 %1176 to i8
  store i8 %1177, i8* %32, align 1
  %1178 = lshr i64 %1156, 60
  %1179 = and i64 %1178, 1
  %1180 = xor i64 %1176, %1145
  %1181 = xor i64 %1176, %1179
  %1182 = add nuw nsw i64 %1180, %1181
  %1183 = icmp eq i64 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %38, align 1
  %1185 = load i64, i64* %RCX.i2479, align 8
  store i64 %1185, i64* %RDI.i2476, align 8
  store i64 %1158, i64* %RSI.i2473, align 8
  %1186 = add i64 %779, -1047
  %1187 = add i64 %779, 93
  %1188 = load i64, i64* %6, align 8
  %1189 = add i64 %1188, -8
  %1190 = inttoptr i64 %1189 to i64*
  store i64 %1187, i64* %1190, align 8
  store i64 %1189, i64* %6, align 8
  store i64 %1186, i64* %3, align 8
  %call2_4193ef = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %1186, %struct.Memory* %MEMORY.0)
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -48
  %1193 = load i64, i64* %3, align 8
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %3, align 8
  %1195 = load double, double* %44, align 1
  %1196 = inttoptr i64 %1192 to double*
  %1197 = load double, double* %1196, align 8
  %1198 = fadd double %1195, %1197
  store double %1198, double* %44, align 1
  %1199 = add i64 %1193, 10
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1192 to double*
  store double %1198, double* %1200, align 8
  %.pre258 = load i64, i64* %3, align 8
  br label %block_.L_4193fe

block_.L_4193fe:                                  ; preds = %block_.L_419397, %block_41932b
  %1201 = phi i64 [ %.pre258, %block_.L_419397 ], [ %991, %block_41932b ]
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -32
  %1204 = add i64 %1201, 8
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = add i32 %1206, 1
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RAX.i2481, align 8
  %1209 = icmp eq i32 %1206, -1
  %1210 = icmp eq i32 %1207, 0
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %14, align 1
  %1213 = and i32 %1207, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  %1218 = xor i32 %1207, %1206
  %1219 = lshr i32 %1218, 4
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %26, align 1
  %1222 = zext i1 %1210 to i8
  store i8 %1222, i8* %29, align 1
  %1223 = lshr i32 %1207, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %32, align 1
  %1225 = lshr i32 %1206, 31
  %1226 = xor i32 %1223, %1225
  %1227 = add nuw nsw i32 %1226, %1223
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %38, align 1
  %1230 = add i64 %1201, 14
  store i64 %1230, i64* %3, align 8
  store i32 %1207, i32* %1205, align 4
  %1231 = load i64, i64* %3, align 8
  %1232 = add i64 %1231, -253
  store i64 %1232, i64* %3, align 8
  br label %block_.L_41930f

block_.L_419411:                                  ; preds = %block_.L_41930f
  %1233 = add i64 %724, -36
  %1234 = add i64 %752, 8
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = add i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RAX.i2481, align 8
  %1239 = icmp eq i32 %1236, -1
  %1240 = icmp eq i32 %1237, 0
  %1241 = or i1 %1239, %1240
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %14, align 1
  %1243 = and i32 %1237, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %21, align 1
  %1248 = xor i32 %1237, %1236
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %26, align 1
  %1252 = zext i1 %1240 to i8
  store i8 %1252, i8* %29, align 1
  %1253 = lshr i32 %1237, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %32, align 1
  %1255 = lshr i32 %1236, 31
  %1256 = xor i32 %1253, %1255
  %1257 = add nuw nsw i32 %1256, %1253
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %38, align 1
  %1260 = add i64 %752, 14
  store i64 %1260, i64* %3, align 8
  store i32 %1237, i32* %1235, align 4
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, -289
  store i64 %1262, i64* %3, align 8
  br label %block_.L_4192fe

block_.L_419424:                                  ; preds = %block_.L_4192fe
  %1263 = add i64 %719, 7
  store i64 %1263, i64* %3, align 8
  store i32 0, i32* %694, align 4
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_41942b

block_.L_41942b:                                  ; preds = %block_.L_41953e, %block_.L_419424
  %1264 = phi i64 [ %.pre213, %block_.L_419424 ], [ %1832, %block_.L_41953e ]
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -36
  %1267 = add i64 %1264, 4
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = add i32 %1269, -2
  %1271 = icmp ult i32 %1269, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1
  %1273 = and i32 %1270, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  %1278 = xor i32 %1270, %1269
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %26, align 1
  %1282 = icmp eq i32 %1270, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %29, align 1
  %1284 = lshr i32 %1270, 31
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* %32, align 1
  %1286 = lshr i32 %1269, 31
  %1287 = xor i32 %1284, %1286
  %1288 = add nuw nsw i32 %1287, %1286
  %1289 = icmp eq i32 %1288, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %38, align 1
  %1291 = icmp ne i8 %1285, 0
  %1292 = xor i1 %1291, %1289
  %.v276 = select i1 %1292, i64 10, i64 294
  %1293 = add i64 %1264, %.v276
  store i64 %1293, i64* %3, align 8
  br i1 %1292, label %block_419435, label %block_.L_419551

block_419435:                                     ; preds = %block_.L_41942b
  %1294 = add i64 %1265, -32
  %1295 = add i64 %1293, 7
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  store i32 0, i32* %1296, align 4
  %.pre255 = load i64, i64* %3, align 8
  br label %block_.L_41943c

block_.L_41943c:                                  ; preds = %block_.L_41952b, %block_419435
  %1297 = phi i64 [ %.pre255, %block_419435 ], [ %1802, %block_.L_41952b ]
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -32
  %1300 = add i64 %1297, 4
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, -10
  %1304 = icmp ult i32 %1302, 10
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1303, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1303, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %26, align 1
  %1315 = icmp eq i32 %1303, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %29, align 1
  %1317 = lshr i32 %1303, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %32, align 1
  %1319 = lshr i32 %1302, 31
  %1320 = xor i32 %1317, %1319
  %1321 = add nuw nsw i32 %1320, %1319
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %38, align 1
  %1324 = icmp ne i8 %1318, 0
  %1325 = xor i1 %1324, %1322
  %.v270 = select i1 %1325, i64 10, i64 258
  %1326 = add i64 %1297, %.v270
  store i64 %1326, i64* %3, align 8
  br i1 %1325, label %block_419446, label %block_.L_41953e

block_419446:                                     ; preds = %block_.L_41943c
  %1327 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1327, i64* %RAX.i2481, align 8
  %1328 = add i64 %1327, 24
  %1329 = add i64 %1326, 12
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = add i32 %1331, -2
  %1333 = icmp ult i32 %1331, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %14, align 1
  %1335 = and i32 %1332, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %21, align 1
  %1340 = xor i32 %1332, %1331
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %26, align 1
  %1344 = icmp eq i32 %1332, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %29, align 1
  %1346 = lshr i32 %1332, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %32, align 1
  %1348 = lshr i32 %1331, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1348
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %38, align 1
  %.v305 = select i1 %1344, i64 18, i64 126
  %1353 = add i64 %1326, %.v305
  %1354 = add i64 %1353, 10
  store i64 %1354, i64* %3, align 8
  br i1 %1344, label %block_419458, label %block_.L_4194c4

block_419458:                                     ; preds = %block_419446
  store i64 ptrtoint (%G__0x4b3900_type* @G__0x4b3900 to i64), i64* %RAX.i2481, align 8
  %1355 = add i64 %1298, -16
  %1356 = add i64 %1353, 14
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i64*
  %1358 = load i64, i64* %1357, align 8
  %1359 = add i64 %1358, 816
  store i64 %1359, i64* %RCX.i2479, align 8
  %1360 = icmp ugt i64 %1358, -817
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %14, align 1
  %1362 = trunc i64 %1359 to i32
  %1363 = and i32 %1362, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %21, align 1
  %1368 = xor i64 %1358, 16
  %1369 = xor i64 %1368, %1359
  %1370 = lshr i64 %1369, 4
  %1371 = trunc i64 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %26, align 1
  %1373 = icmp eq i64 %1359, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %29, align 1
  %1375 = lshr i64 %1359, 63
  %1376 = trunc i64 %1375 to i8
  store i8 %1376, i8* %32, align 1
  %1377 = lshr i64 %1358, 63
  %1378 = xor i64 %1375, %1377
  %1379 = add nuw nsw i64 %1378, %1375
  %1380 = icmp eq i64 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %38, align 1
  %1382 = add i64 %1298, -36
  %1383 = add i64 %1353, 25
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = mul nsw i64 %1386, 160
  store i64 %1387, i64* %RDX.i2470, align 8
  %1388 = lshr i64 %1387, 63
  %1389 = add i64 %1387, %1359
  store i64 %1389, i64* %RCX.i2479, align 8
  %1390 = icmp ult i64 %1389, %1359
  %1391 = icmp ult i64 %1389, %1387
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %14, align 1
  %1394 = trunc i64 %1389 to i32
  %1395 = and i32 %1394, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %21, align 1
  %1400 = xor i64 %1359, %1389
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %26, align 1
  %1404 = icmp eq i64 %1389, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %29, align 1
  %1406 = lshr i64 %1389, 63
  %1407 = trunc i64 %1406 to i8
  store i8 %1407, i8* %32, align 1
  %1408 = xor i64 %1406, %1375
  %1409 = xor i64 %1406, %1388
  %1410 = add nuw nsw i64 %1408, %1409
  %1411 = icmp eq i64 %1410, 2
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %38, align 1
  %1413 = load i64, i64* %RBP.i, align 8
  %1414 = add i64 %1413, -32
  %1415 = add i64 %1353, 39
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = sext i32 %1417 to i64
  %1419 = shl nsw i64 %1418, 4
  store i64 %1419, i64* %RDX.i2470, align 8
  %1420 = add i64 %1419, %1389
  store i64 %1420, i64* %RCX.i2479, align 8
  %1421 = icmp ult i64 %1420, %1389
  %1422 = icmp ult i64 %1420, %1419
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %14, align 1
  %1425 = trunc i64 %1420 to i32
  %1426 = and i32 %1425, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %21, align 1
  %1431 = xor i64 %1419, %1389
  %1432 = xor i64 %1431, %1420
  %1433 = lshr i64 %1432, 4
  %1434 = trunc i64 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %26, align 1
  %1436 = icmp eq i64 %1420, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %29, align 1
  %1438 = lshr i64 %1420, 63
  %1439 = trunc i64 %1438 to i8
  store i8 %1439, i8* %32, align 1
  %1440 = lshr i64 %1418, 59
  %1441 = and i64 %1440, 1
  %1442 = xor i64 %1438, %1406
  %1443 = xor i64 %1438, %1441
  %1444 = add nuw nsw i64 %1442, %1443
  %1445 = icmp eq i64 %1444, 2
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %38, align 1
  %1447 = add i64 %1413, -28
  %1448 = add i64 %1353, 50
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = sext i32 %1450 to i64
  %1452 = mul nsw i64 %1451, 160
  store i64 %1452, i64* %RDX.i2470, align 8
  %1453 = lshr i64 %1452, 63
  %1454 = load i64, i64* %RAX.i2481, align 8
  %1455 = add i64 %1452, %1454
  store i64 %1455, i64* %RAX.i2481, align 8
  %1456 = icmp ult i64 %1455, %1454
  %1457 = icmp ult i64 %1455, %1452
  %1458 = or i1 %1456, %1457
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %14, align 1
  %1460 = trunc i64 %1455 to i32
  %1461 = and i32 %1460, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i64 %1454, %1455
  %1467 = lshr i64 %1466, 4
  %1468 = trunc i64 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %26, align 1
  %1470 = icmp eq i64 %1455, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %29, align 1
  %1472 = lshr i64 %1455, 63
  %1473 = trunc i64 %1472 to i8
  store i8 %1473, i8* %32, align 1
  %1474 = lshr i64 %1454, 63
  %1475 = xor i64 %1472, %1474
  %1476 = xor i64 %1472, %1453
  %1477 = add nuw nsw i64 %1475, %1476
  %1478 = icmp eq i64 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %38, align 1
  %1480 = load i64, i64* %RBP.i, align 8
  %1481 = add i64 %1480, -36
  %1482 = add i64 %1353, 64
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = sext i32 %1484 to i64
  %1486 = mul nsw i64 %1485, 80
  store i64 %1486, i64* %RDX.i2470, align 8
  %1487 = lshr i64 %1486, 63
  %1488 = add i64 %1486, %1455
  store i64 %1488, i64* %RAX.i2481, align 8
  %1489 = icmp ult i64 %1488, %1455
  %1490 = icmp ult i64 %1488, %1486
  %1491 = or i1 %1489, %1490
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %14, align 1
  %1493 = trunc i64 %1488 to i32
  %1494 = and i32 %1493, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %21, align 1
  %1499 = xor i64 %1486, %1455
  %1500 = xor i64 %1499, %1488
  %1501 = lshr i64 %1500, 4
  %1502 = trunc i64 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %26, align 1
  %1504 = icmp eq i64 %1488, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %29, align 1
  %1506 = lshr i64 %1488, 63
  %1507 = trunc i64 %1506 to i8
  store i8 %1507, i8* %32, align 1
  %1508 = xor i64 %1506, %1472
  %1509 = xor i64 %1506, %1487
  %1510 = add nuw nsw i64 %1508, %1509
  %1511 = icmp eq i64 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %38, align 1
  %1513 = add i64 %1480, -32
  %1514 = add i64 %1353, 75
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = sext i32 %1516 to i64
  %1518 = shl nsw i64 %1517, 3
  store i64 %1518, i64* %RDX.i2470, align 8
  %1519 = add i64 %1518, %1488
  store i64 %1519, i64* %RAX.i2481, align 8
  %1520 = icmp ult i64 %1519, %1488
  %1521 = icmp ult i64 %1519, %1518
  %1522 = or i1 %1520, %1521
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %14, align 1
  %1524 = trunc i64 %1519 to i32
  %1525 = and i32 %1524, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %21, align 1
  %1530 = xor i64 %1518, %1488
  %1531 = xor i64 %1530, %1519
  %1532 = lshr i64 %1531, 4
  %1533 = trunc i64 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %26, align 1
  %1535 = icmp eq i64 %1519, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %29, align 1
  %1537 = lshr i64 %1519, 63
  %1538 = trunc i64 %1537 to i8
  store i8 %1538, i8* %32, align 1
  %1539 = lshr i64 %1517, 60
  %1540 = and i64 %1539, 1
  %1541 = xor i64 %1537, %1506
  %1542 = xor i64 %1537, %1540
  %1543 = add nuw nsw i64 %1541, %1542
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %38, align 1
  %1546 = load i64, i64* %RCX.i2479, align 8
  store i64 %1546, i64* %RDI.i2476, align 8
  store i64 %1519, i64* %RSI.i2473, align 8
  %1547 = add i64 %1353, -1240
  %1548 = add i64 %1353, 93
  %1549 = load i64, i64* %6, align 8
  %1550 = add i64 %1549, -8
  %1551 = inttoptr i64 %1550 to i64*
  store i64 %1548, i64* %1551, align 8
  store i64 %1550, i64* %6, align 8
  store i64 %1547, i64* %3, align 8
  %call2_4194b0 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %1547, %struct.Memory* %MEMORY.0)
  %1552 = load i64, i64* %RBP.i, align 8
  %1553 = add i64 %1552, -48
  %1554 = load i64, i64* %3, align 8
  %1555 = add i64 %1554, 5
  store i64 %1555, i64* %3, align 8
  %1556 = load double, double* %44, align 1
  %1557 = inttoptr i64 %1553 to double*
  %1558 = load double, double* %1557, align 8
  %1559 = fadd double %1556, %1558
  store double %1559, double* %44, align 1
  %1560 = add i64 %1554, 10
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1553 to double*
  store double %1559, double* %1561, align 8
  %1562 = load i64, i64* %3, align 8
  %1563 = add i64 %1562, 108
  store i64 %1563, i64* %3, align 8
  br label %block_.L_41952b

block_.L_4194c4:                                  ; preds = %block_419446
  store i64 ptrtoint (%G__0x4b39a0_type* @G__0x4b39a0 to i64), i64* %RAX.i2481, align 8
  %1564 = add i64 %1298, -16
  %1565 = add i64 %1353, 14
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i64*
  %1567 = load i64, i64* %1566, align 8
  %1568 = add i64 %1567, 816
  store i64 %1568, i64* %RCX.i2479, align 8
  %1569 = icmp ugt i64 %1567, -817
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = trunc i64 %1568 to i32
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %21, align 1
  %1577 = xor i64 %1567, 16
  %1578 = xor i64 %1577, %1568
  %1579 = lshr i64 %1578, 4
  %1580 = trunc i64 %1579 to i8
  %1581 = and i8 %1580, 1
  store i8 %1581, i8* %26, align 1
  %1582 = icmp eq i64 %1568, 0
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %29, align 1
  %1584 = lshr i64 %1568, 63
  %1585 = trunc i64 %1584 to i8
  store i8 %1585, i8* %32, align 1
  %1586 = lshr i64 %1567, 63
  %1587 = xor i64 %1584, %1586
  %1588 = add nuw nsw i64 %1587, %1584
  %1589 = icmp eq i64 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %38, align 1
  %1591 = add i64 %1298, -36
  %1592 = add i64 %1353, 25
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = sext i32 %1594 to i64
  %1596 = mul nsw i64 %1595, 160
  store i64 %1596, i64* %RDX.i2470, align 8
  %1597 = lshr i64 %1596, 63
  %1598 = add i64 %1596, %1568
  store i64 %1598, i64* %RCX.i2479, align 8
  %1599 = icmp ult i64 %1598, %1568
  %1600 = icmp ult i64 %1598, %1596
  %1601 = or i1 %1599, %1600
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %14, align 1
  %1603 = trunc i64 %1598 to i32
  %1604 = and i32 %1603, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %21, align 1
  %1609 = xor i64 %1568, %1598
  %1610 = lshr i64 %1609, 4
  %1611 = trunc i64 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %26, align 1
  %1613 = icmp eq i64 %1598, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %29, align 1
  %1615 = lshr i64 %1598, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %32, align 1
  %1617 = xor i64 %1615, %1584
  %1618 = xor i64 %1615, %1597
  %1619 = add nuw nsw i64 %1617, %1618
  %1620 = icmp eq i64 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %38, align 1
  %1622 = load i64, i64* %RBP.i, align 8
  %1623 = add i64 %1622, -32
  %1624 = add i64 %1353, 39
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = sext i32 %1626 to i64
  %1628 = shl nsw i64 %1627, 4
  store i64 %1628, i64* %RDX.i2470, align 8
  %1629 = add i64 %1628, %1598
  store i64 %1629, i64* %RCX.i2479, align 8
  %1630 = icmp ult i64 %1629, %1598
  %1631 = icmp ult i64 %1629, %1628
  %1632 = or i1 %1630, %1631
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %14, align 1
  %1634 = trunc i64 %1629 to i32
  %1635 = and i32 %1634, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %21, align 1
  %1640 = xor i64 %1628, %1598
  %1641 = xor i64 %1640, %1629
  %1642 = lshr i64 %1641, 4
  %1643 = trunc i64 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %26, align 1
  %1645 = icmp eq i64 %1629, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %29, align 1
  %1647 = lshr i64 %1629, 63
  %1648 = trunc i64 %1647 to i8
  store i8 %1648, i8* %32, align 1
  %1649 = lshr i64 %1627, 59
  %1650 = and i64 %1649, 1
  %1651 = xor i64 %1647, %1615
  %1652 = xor i64 %1647, %1650
  %1653 = add nuw nsw i64 %1651, %1652
  %1654 = icmp eq i64 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %38, align 1
  %1656 = add i64 %1622, -28
  %1657 = add i64 %1353, 50
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = sext i32 %1659 to i64
  %1661 = mul nsw i64 %1660, 160
  store i64 %1661, i64* %RDX.i2470, align 8
  %1662 = lshr i64 %1661, 63
  %1663 = load i64, i64* %RAX.i2481, align 8
  %1664 = add i64 %1661, %1663
  store i64 %1664, i64* %RAX.i2481, align 8
  %1665 = icmp ult i64 %1664, %1663
  %1666 = icmp ult i64 %1664, %1661
  %1667 = or i1 %1665, %1666
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %14, align 1
  %1669 = trunc i64 %1664 to i32
  %1670 = and i32 %1669, 255
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %21, align 1
  %1675 = xor i64 %1663, %1664
  %1676 = lshr i64 %1675, 4
  %1677 = trunc i64 %1676 to i8
  %1678 = and i8 %1677, 1
  store i8 %1678, i8* %26, align 1
  %1679 = icmp eq i64 %1664, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %29, align 1
  %1681 = lshr i64 %1664, 63
  %1682 = trunc i64 %1681 to i8
  store i8 %1682, i8* %32, align 1
  %1683 = lshr i64 %1663, 63
  %1684 = xor i64 %1681, %1683
  %1685 = xor i64 %1681, %1662
  %1686 = add nuw nsw i64 %1684, %1685
  %1687 = icmp eq i64 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %38, align 1
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -36
  %1691 = add i64 %1353, 64
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = sext i32 %1693 to i64
  %1695 = mul nsw i64 %1694, 80
  store i64 %1695, i64* %RDX.i2470, align 8
  %1696 = lshr i64 %1695, 63
  %1697 = add i64 %1695, %1664
  store i64 %1697, i64* %RAX.i2481, align 8
  %1698 = icmp ult i64 %1697, %1664
  %1699 = icmp ult i64 %1697, %1695
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %14, align 1
  %1702 = trunc i64 %1697 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i64 %1695, %1664
  %1709 = xor i64 %1708, %1697
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %26, align 1
  %1713 = icmp eq i64 %1697, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %29, align 1
  %1715 = lshr i64 %1697, 63
  %1716 = trunc i64 %1715 to i8
  store i8 %1716, i8* %32, align 1
  %1717 = xor i64 %1715, %1681
  %1718 = xor i64 %1715, %1696
  %1719 = add nuw nsw i64 %1717, %1718
  %1720 = icmp eq i64 %1719, 2
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %38, align 1
  %1722 = add i64 %1689, -32
  %1723 = add i64 %1353, 75
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = sext i32 %1725 to i64
  %1727 = shl nsw i64 %1726, 3
  store i64 %1727, i64* %RDX.i2470, align 8
  %1728 = add i64 %1727, %1697
  store i64 %1728, i64* %RAX.i2481, align 8
  %1729 = icmp ult i64 %1728, %1697
  %1730 = icmp ult i64 %1728, %1727
  %1731 = or i1 %1729, %1730
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %14, align 1
  %1733 = trunc i64 %1728 to i32
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %21, align 1
  %1739 = xor i64 %1727, %1697
  %1740 = xor i64 %1739, %1728
  %1741 = lshr i64 %1740, 4
  %1742 = trunc i64 %1741 to i8
  %1743 = and i8 %1742, 1
  store i8 %1743, i8* %26, align 1
  %1744 = icmp eq i64 %1728, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %29, align 1
  %1746 = lshr i64 %1728, 63
  %1747 = trunc i64 %1746 to i8
  store i8 %1747, i8* %32, align 1
  %1748 = lshr i64 %1726, 60
  %1749 = and i64 %1748, 1
  %1750 = xor i64 %1746, %1715
  %1751 = xor i64 %1746, %1749
  %1752 = add nuw nsw i64 %1750, %1751
  %1753 = icmp eq i64 %1752, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %38, align 1
  %1755 = load i64, i64* %RCX.i2479, align 8
  store i64 %1755, i64* %RDI.i2476, align 8
  store i64 %1728, i64* %RSI.i2473, align 8
  %1756 = add i64 %1353, -1348
  %1757 = add i64 %1353, 93
  %1758 = load i64, i64* %6, align 8
  %1759 = add i64 %1758, -8
  %1760 = inttoptr i64 %1759 to i64*
  store i64 %1757, i64* %1760, align 8
  store i64 %1759, i64* %6, align 8
  store i64 %1756, i64* %3, align 8
  %call2_41951c = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %1756, %struct.Memory* %MEMORY.0)
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -48
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %3, align 8
  %1765 = load double, double* %44, align 1
  %1766 = inttoptr i64 %1762 to double*
  %1767 = load double, double* %1766, align 8
  %1768 = fadd double %1765, %1767
  store double %1768, double* %44, align 1
  %1769 = add i64 %1763, 10
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1762 to double*
  store double %1768, double* %1770, align 8
  %.pre256 = load i64, i64* %3, align 8
  br label %block_.L_41952b

block_.L_41952b:                                  ; preds = %block_.L_4194c4, %block_419458
  %1771 = phi i64 [ %.pre256, %block_.L_4194c4 ], [ %1563, %block_419458 ]
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -32
  %1774 = add i64 %1771, 8
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = add i32 %1776, 1
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RAX.i2481, align 8
  %1779 = icmp eq i32 %1776, -1
  %1780 = icmp eq i32 %1777, 0
  %1781 = or i1 %1779, %1780
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %14, align 1
  %1783 = and i32 %1777, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %21, align 1
  %1788 = xor i32 %1777, %1776
  %1789 = lshr i32 %1788, 4
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  store i8 %1791, i8* %26, align 1
  %1792 = zext i1 %1780 to i8
  store i8 %1792, i8* %29, align 1
  %1793 = lshr i32 %1777, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %32, align 1
  %1795 = lshr i32 %1776, 31
  %1796 = xor i32 %1793, %1795
  %1797 = add nuw nsw i32 %1796, %1793
  %1798 = icmp eq i32 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %38, align 1
  %1800 = add i64 %1771, 14
  store i64 %1800, i64* %3, align 8
  store i32 %1777, i32* %1775, align 4
  %1801 = load i64, i64* %3, align 8
  %1802 = add i64 %1801, -253
  store i64 %1802, i64* %3, align 8
  br label %block_.L_41943c

block_.L_41953e:                                  ; preds = %block_.L_41943c
  %1803 = add i64 %1298, -36
  %1804 = add i64 %1326, 8
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = add i32 %1806, 1
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RAX.i2481, align 8
  %1809 = icmp eq i32 %1806, -1
  %1810 = icmp eq i32 %1807, 0
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = and i32 %1807, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i32 %1807, %1806
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %26, align 1
  %1822 = zext i1 %1810 to i8
  store i8 %1822, i8* %29, align 1
  %1823 = lshr i32 %1807, 31
  %1824 = trunc i32 %1823 to i8
  store i8 %1824, i8* %32, align 1
  %1825 = lshr i32 %1806, 31
  %1826 = xor i32 %1823, %1825
  %1827 = add nuw nsw i32 %1826, %1823
  %1828 = icmp eq i32 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %38, align 1
  %1830 = add i64 %1326, 14
  store i64 %1830, i64* %3, align 8
  store i32 %1807, i32* %1805, align 4
  %1831 = load i64, i64* %3, align 8
  %1832 = add i64 %1831, -289
  store i64 %1832, i64* %3, align 8
  br label %block_.L_41942b

block_.L_419551:                                  ; preds = %block_.L_41942b
  %1833 = add i64 %1293, 7
  store i64 %1833, i64* %3, align 8
  store i32 0, i32* %1268, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_419558

block_.L_419558:                                  ; preds = %block_.L_41965f, %block_.L_419551
  %1834 = phi i64 [ %.pre214, %block_.L_419551 ], [ %2402, %block_.L_41965f ]
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -36
  %1837 = add i64 %1834, 4
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, -2
  %1841 = icmp ult i32 %1839, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %14, align 1
  %1843 = and i32 %1840, 255
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %21, align 1
  %1848 = xor i32 %1840, %1839
  %1849 = lshr i32 %1848, 4
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  store i8 %1851, i8* %26, align 1
  %1852 = icmp eq i32 %1840, 0
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %29, align 1
  %1854 = lshr i32 %1840, 31
  %1855 = trunc i32 %1854 to i8
  store i8 %1855, i8* %32, align 1
  %1856 = lshr i32 %1839, 31
  %1857 = xor i32 %1854, %1856
  %1858 = add nuw nsw i32 %1857, %1856
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %38, align 1
  %1861 = icmp ne i8 %1855, 0
  %1862 = xor i1 %1861, %1859
  %.v = select i1 %1862, i64 10, i64 282
  %1863 = add i64 %1834, %.v
  %1864 = add i64 %1835, -32
  %1865 = add i64 %1863, 7
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  store i32 0, i32* %1866, align 4
  %.pre253 = load i64, i64* %3, align 8
  br i1 %1862, label %block_.L_419569.preheader, label %block_.L_419679.preheader

block_.L_419679.preheader:                        ; preds = %block_.L_419558
  br label %block_.L_419679

block_.L_419569.preheader:                        ; preds = %block_.L_419558
  br label %block_.L_419569

block_.L_419569:                                  ; preds = %block_.L_419569.preheader, %block_.L_41964c
  %1867 = phi i64 [ %2372, %block_.L_41964c ], [ %.pre253, %block_.L_419569.preheader ]
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -32
  %1870 = add i64 %1867, 4
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = add i32 %1872, -6
  %1874 = icmp ult i32 %1872, 6
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %14, align 1
  %1876 = and i32 %1873, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i32 %1873, %1872
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %26, align 1
  %1885 = icmp eq i32 %1873, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %29, align 1
  %1887 = lshr i32 %1873, 31
  %1888 = trunc i32 %1887 to i8
  store i8 %1888, i8* %32, align 1
  %1889 = lshr i32 %1872, 31
  %1890 = xor i32 %1887, %1889
  %1891 = add nuw nsw i32 %1890, %1889
  %1892 = icmp eq i32 %1891, 2
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %38, align 1
  %1894 = icmp ne i8 %1888, 0
  %1895 = xor i1 %1894, %1892
  %.v269 = select i1 %1895, i64 10, i64 246
  %1896 = add i64 %1867, %.v269
  store i64 %1896, i64* %3, align 8
  br i1 %1895, label %block_419573, label %block_.L_41965f

block_419573:                                     ; preds = %block_.L_419569
  %1897 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1897, i64* %RAX.i2481, align 8
  %1898 = add i64 %1897, 24
  %1899 = add i64 %1896, 12
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, -2
  %1903 = icmp ult i32 %1901, 2
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = and i32 %1902, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %21, align 1
  %1910 = xor i32 %1902, %1901
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %26, align 1
  %1914 = icmp eq i32 %1902, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %29, align 1
  %1916 = lshr i32 %1902, 31
  %1917 = trunc i32 %1916 to i8
  store i8 %1917, i8* %32, align 1
  %1918 = lshr i32 %1901, 31
  %1919 = xor i32 %1916, %1918
  %1920 = add nuw nsw i32 %1919, %1918
  %1921 = icmp eq i32 %1920, 2
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %38, align 1
  %.v304 = select i1 %1914, i64 18, i64 120
  %1923 = add i64 %1896, %.v304
  %1924 = add i64 %1923, 10
  store i64 %1924, i64* %3, align 8
  br i1 %1914, label %block_419585, label %block_.L_4195eb

block_419585:                                     ; preds = %block_419573
  store i64 ptrtoint (%G__0x4b3b80_type* @G__0x4b3b80 to i64), i64* %RAX.i2481, align 8
  %1925 = add i64 %1868, -16
  %1926 = add i64 %1923, 14
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i64*
  %1928 = load i64, i64* %1927, align 8
  %1929 = add i64 %1928, 1136
  store i64 %1929, i64* %RCX.i2479, align 8
  %1930 = icmp ugt i64 %1928, -1137
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %14, align 1
  %1932 = trunc i64 %1929 to i32
  %1933 = and i32 %1932, 255
  %1934 = tail call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  store i8 %1937, i8* %21, align 1
  %1938 = xor i64 %1928, 16
  %1939 = xor i64 %1938, %1929
  %1940 = lshr i64 %1939, 4
  %1941 = trunc i64 %1940 to i8
  %1942 = and i8 %1941, 1
  store i8 %1942, i8* %26, align 1
  %1943 = icmp eq i64 %1929, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %29, align 1
  %1945 = lshr i64 %1929, 63
  %1946 = trunc i64 %1945 to i8
  store i8 %1946, i8* %32, align 1
  %1947 = lshr i64 %1928, 63
  %1948 = xor i64 %1945, %1947
  %1949 = add nuw nsw i64 %1948, %1945
  %1950 = icmp eq i64 %1949, 2
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %38, align 1
  %1952 = add i64 %1868, -36
  %1953 = add i64 %1923, 25
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = sext i32 %1955 to i64
  %1957 = mul nsw i64 %1956, 96
  store i64 %1957, i64* %RDX.i2470, align 8
  %1958 = lshr i64 %1957, 63
  %1959 = add i64 %1957, %1929
  store i64 %1959, i64* %RCX.i2479, align 8
  %1960 = icmp ult i64 %1959, %1929
  %1961 = icmp ult i64 %1959, %1957
  %1962 = or i1 %1960, %1961
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = trunc i64 %1959 to i32
  %1965 = and i32 %1964, 255
  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965)
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = xor i8 %1968, 1
  store i8 %1969, i8* %21, align 1
  %1970 = xor i64 %1929, %1959
  %1971 = lshr i64 %1970, 4
  %1972 = trunc i64 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %26, align 1
  %1974 = icmp eq i64 %1959, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %29, align 1
  %1976 = lshr i64 %1959, 63
  %1977 = trunc i64 %1976 to i8
  store i8 %1977, i8* %32, align 1
  %1978 = xor i64 %1976, %1945
  %1979 = xor i64 %1976, %1958
  %1980 = add nuw nsw i64 %1978, %1979
  %1981 = icmp eq i64 %1980, 2
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %38, align 1
  %1983 = load i64, i64* %RBP.i, align 8
  %1984 = add i64 %1983, -32
  %1985 = add i64 %1923, 36
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = sext i32 %1987 to i64
  %1989 = shl nsw i64 %1988, 4
  store i64 %1989, i64* %RDX.i2470, align 8
  %1990 = add i64 %1989, %1959
  store i64 %1990, i64* %RCX.i2479, align 8
  %1991 = icmp ult i64 %1990, %1959
  %1992 = icmp ult i64 %1990, %1989
  %1993 = or i1 %1991, %1992
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %14, align 1
  %1995 = trunc i64 %1990 to i32
  %1996 = and i32 %1995, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %21, align 1
  %2001 = xor i64 %1989, %1959
  %2002 = xor i64 %2001, %1990
  %2003 = lshr i64 %2002, 4
  %2004 = trunc i64 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %26, align 1
  %2006 = icmp eq i64 %1990, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %29, align 1
  %2008 = lshr i64 %1990, 63
  %2009 = trunc i64 %2008 to i8
  store i8 %2009, i8* %32, align 1
  %2010 = lshr i64 %1988, 59
  %2011 = and i64 %2010, 1
  %2012 = xor i64 %2008, %1976
  %2013 = xor i64 %2008, %2011
  %2014 = add nuw nsw i64 %2012, %2013
  %2015 = icmp eq i64 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %38, align 1
  %2017 = add i64 %1983, -28
  %2018 = add i64 %1923, 47
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = sext i32 %2020 to i64
  %2022 = mul nsw i64 %2021, 96
  store i64 %2022, i64* %RDX.i2470, align 8
  %2023 = lshr i64 %2022, 63
  %2024 = load i64, i64* %RAX.i2481, align 8
  %2025 = add i64 %2022, %2024
  store i64 %2025, i64* %RAX.i2481, align 8
  %2026 = icmp ult i64 %2025, %2024
  %2027 = icmp ult i64 %2025, %2022
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %14, align 1
  %2030 = trunc i64 %2025 to i32
  %2031 = and i32 %2030, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %21, align 1
  %2036 = xor i64 %2024, %2025
  %2037 = lshr i64 %2036, 4
  %2038 = trunc i64 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %26, align 1
  %2040 = icmp eq i64 %2025, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %29, align 1
  %2042 = lshr i64 %2025, 63
  %2043 = trunc i64 %2042 to i8
  store i8 %2043, i8* %32, align 1
  %2044 = lshr i64 %2024, 63
  %2045 = xor i64 %2042, %2044
  %2046 = xor i64 %2042, %2023
  %2047 = add nuw nsw i64 %2045, %2046
  %2048 = icmp eq i64 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %38, align 1
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -36
  %2052 = add i64 %1923, 58
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = sext i32 %2054 to i64
  %2056 = mul nsw i64 %2055, 48
  store i64 %2056, i64* %RDX.i2470, align 8
  %2057 = lshr i64 %2056, 63
  %2058 = add i64 %2056, %2025
  store i64 %2058, i64* %RAX.i2481, align 8
  %2059 = icmp ult i64 %2058, %2025
  %2060 = icmp ult i64 %2058, %2056
  %2061 = or i1 %2059, %2060
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %14, align 1
  %2063 = trunc i64 %2058 to i32
  %2064 = and i32 %2063, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i64 %2056, %2025
  %2070 = xor i64 %2069, %2058
  %2071 = lshr i64 %2070, 4
  %2072 = trunc i64 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %26, align 1
  %2074 = icmp eq i64 %2058, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %29, align 1
  %2076 = lshr i64 %2058, 63
  %2077 = trunc i64 %2076 to i8
  store i8 %2077, i8* %32, align 1
  %2078 = xor i64 %2076, %2042
  %2079 = xor i64 %2076, %2057
  %2080 = add nuw nsw i64 %2078, %2079
  %2081 = icmp eq i64 %2080, 2
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %38, align 1
  %2083 = add i64 %2050, -32
  %2084 = add i64 %1923, 69
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = sext i32 %2086 to i64
  %2088 = shl nsw i64 %2087, 3
  store i64 %2088, i64* %RDX.i2470, align 8
  %2089 = add i64 %2088, %2058
  store i64 %2089, i64* %RAX.i2481, align 8
  %2090 = icmp ult i64 %2089, %2058
  %2091 = icmp ult i64 %2089, %2088
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %14, align 1
  %2094 = trunc i64 %2089 to i32
  %2095 = and i32 %2094, 255
  %2096 = tail call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  store i8 %2099, i8* %21, align 1
  %2100 = xor i64 %2088, %2058
  %2101 = xor i64 %2100, %2089
  %2102 = lshr i64 %2101, 4
  %2103 = trunc i64 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %26, align 1
  %2105 = icmp eq i64 %2089, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %29, align 1
  %2107 = lshr i64 %2089, 63
  %2108 = trunc i64 %2107 to i8
  store i8 %2108, i8* %32, align 1
  %2109 = lshr i64 %2087, 60
  %2110 = and i64 %2109, 1
  %2111 = xor i64 %2107, %2076
  %2112 = xor i64 %2107, %2110
  %2113 = add nuw nsw i64 %2111, %2112
  %2114 = icmp eq i64 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = load i64, i64* %RCX.i2479, align 8
  store i64 %2116, i64* %RDI.i2476, align 8
  store i64 %2089, i64* %RSI.i2473, align 8
  %2117 = add i64 %1923, -1541
  %2118 = add i64 %1923, 87
  %2119 = load i64, i64* %6, align 8
  %2120 = add i64 %2119, -8
  %2121 = inttoptr i64 %2120 to i64*
  store i64 %2118, i64* %2121, align 8
  store i64 %2120, i64* %6, align 8
  store i64 %2117, i64* %3, align 8
  %call2_4195d7 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %2117, %struct.Memory* %MEMORY.0)
  %2122 = load i64, i64* %RBP.i, align 8
  %2123 = add i64 %2122, -48
  %2124 = load i64, i64* %3, align 8
  %2125 = add i64 %2124, 5
  store i64 %2125, i64* %3, align 8
  %2126 = load double, double* %44, align 1
  %2127 = inttoptr i64 %2123 to double*
  %2128 = load double, double* %2127, align 8
  %2129 = fadd double %2126, %2128
  store double %2129, double* %44, align 1
  %2130 = add i64 %2124, 10
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2123 to double*
  store double %2129, double* %2131, align 8
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 102
  store i64 %2133, i64* %3, align 8
  br label %block_.L_41964c

block_.L_4195eb:                                  ; preds = %block_419573
  store i64 ptrtoint (%G__0x4b3be0_type* @G__0x4b3be0 to i64), i64* %RAX.i2481, align 8
  %2134 = add i64 %1868, -16
  %2135 = add i64 %1923, 14
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  %2138 = add i64 %2137, 1136
  store i64 %2138, i64* %RCX.i2479, align 8
  %2139 = icmp ugt i64 %2137, -1137
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %14, align 1
  %2141 = trunc i64 %2138 to i32
  %2142 = and i32 %2141, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %21, align 1
  %2147 = xor i64 %2137, 16
  %2148 = xor i64 %2147, %2138
  %2149 = lshr i64 %2148, 4
  %2150 = trunc i64 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %26, align 1
  %2152 = icmp eq i64 %2138, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %29, align 1
  %2154 = lshr i64 %2138, 63
  %2155 = trunc i64 %2154 to i8
  store i8 %2155, i8* %32, align 1
  %2156 = lshr i64 %2137, 63
  %2157 = xor i64 %2154, %2156
  %2158 = add nuw nsw i64 %2157, %2154
  %2159 = icmp eq i64 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %38, align 1
  %2161 = add i64 %1868, -36
  %2162 = add i64 %1923, 25
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = sext i32 %2164 to i64
  %2166 = mul nsw i64 %2165, 96
  store i64 %2166, i64* %RDX.i2470, align 8
  %2167 = lshr i64 %2166, 63
  %2168 = add i64 %2166, %2138
  store i64 %2168, i64* %RCX.i2479, align 8
  %2169 = icmp ult i64 %2168, %2138
  %2170 = icmp ult i64 %2168, %2166
  %2171 = or i1 %2169, %2170
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %14, align 1
  %2173 = trunc i64 %2168 to i32
  %2174 = and i32 %2173, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %21, align 1
  %2179 = xor i64 %2138, %2168
  %2180 = lshr i64 %2179, 4
  %2181 = trunc i64 %2180 to i8
  %2182 = and i8 %2181, 1
  store i8 %2182, i8* %26, align 1
  %2183 = icmp eq i64 %2168, 0
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %29, align 1
  %2185 = lshr i64 %2168, 63
  %2186 = trunc i64 %2185 to i8
  store i8 %2186, i8* %32, align 1
  %2187 = xor i64 %2185, %2154
  %2188 = xor i64 %2185, %2167
  %2189 = add nuw nsw i64 %2187, %2188
  %2190 = icmp eq i64 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %38, align 1
  %2192 = load i64, i64* %RBP.i, align 8
  %2193 = add i64 %2192, -32
  %2194 = add i64 %1923, 36
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = sext i32 %2196 to i64
  %2198 = shl nsw i64 %2197, 4
  store i64 %2198, i64* %RDX.i2470, align 8
  %2199 = add i64 %2198, %2168
  store i64 %2199, i64* %RCX.i2479, align 8
  %2200 = icmp ult i64 %2199, %2168
  %2201 = icmp ult i64 %2199, %2198
  %2202 = or i1 %2200, %2201
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %14, align 1
  %2204 = trunc i64 %2199 to i32
  %2205 = and i32 %2204, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %21, align 1
  %2210 = xor i64 %2198, %2168
  %2211 = xor i64 %2210, %2199
  %2212 = lshr i64 %2211, 4
  %2213 = trunc i64 %2212 to i8
  %2214 = and i8 %2213, 1
  store i8 %2214, i8* %26, align 1
  %2215 = icmp eq i64 %2199, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %29, align 1
  %2217 = lshr i64 %2199, 63
  %2218 = trunc i64 %2217 to i8
  store i8 %2218, i8* %32, align 1
  %2219 = lshr i64 %2197, 59
  %2220 = and i64 %2219, 1
  %2221 = xor i64 %2217, %2185
  %2222 = xor i64 %2217, %2220
  %2223 = add nuw nsw i64 %2221, %2222
  %2224 = icmp eq i64 %2223, 2
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %38, align 1
  %2226 = add i64 %2192, -28
  %2227 = add i64 %1923, 47
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = sext i32 %2229 to i64
  %2231 = mul nsw i64 %2230, 96
  store i64 %2231, i64* %RDX.i2470, align 8
  %2232 = lshr i64 %2231, 63
  %2233 = load i64, i64* %RAX.i2481, align 8
  %2234 = add i64 %2231, %2233
  store i64 %2234, i64* %RAX.i2481, align 8
  %2235 = icmp ult i64 %2234, %2233
  %2236 = icmp ult i64 %2234, %2231
  %2237 = or i1 %2235, %2236
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = trunc i64 %2234 to i32
  %2240 = and i32 %2239, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %21, align 1
  %2245 = xor i64 %2233, %2234
  %2246 = lshr i64 %2245, 4
  %2247 = trunc i64 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %26, align 1
  %2249 = icmp eq i64 %2234, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %29, align 1
  %2251 = lshr i64 %2234, 63
  %2252 = trunc i64 %2251 to i8
  store i8 %2252, i8* %32, align 1
  %2253 = lshr i64 %2233, 63
  %2254 = xor i64 %2251, %2253
  %2255 = xor i64 %2251, %2232
  %2256 = add nuw nsw i64 %2254, %2255
  %2257 = icmp eq i64 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %38, align 1
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -36
  %2261 = add i64 %1923, 58
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sext i32 %2263 to i64
  %2265 = mul nsw i64 %2264, 48
  store i64 %2265, i64* %RDX.i2470, align 8
  %2266 = lshr i64 %2265, 63
  %2267 = add i64 %2265, %2234
  store i64 %2267, i64* %RAX.i2481, align 8
  %2268 = icmp ult i64 %2267, %2234
  %2269 = icmp ult i64 %2267, %2265
  %2270 = or i1 %2268, %2269
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %14, align 1
  %2272 = trunc i64 %2267 to i32
  %2273 = and i32 %2272, 255
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %21, align 1
  %2278 = xor i64 %2265, %2234
  %2279 = xor i64 %2278, %2267
  %2280 = lshr i64 %2279, 4
  %2281 = trunc i64 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %26, align 1
  %2283 = icmp eq i64 %2267, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %29, align 1
  %2285 = lshr i64 %2267, 63
  %2286 = trunc i64 %2285 to i8
  store i8 %2286, i8* %32, align 1
  %2287 = xor i64 %2285, %2251
  %2288 = xor i64 %2285, %2266
  %2289 = add nuw nsw i64 %2287, %2288
  %2290 = icmp eq i64 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %38, align 1
  %2292 = add i64 %2259, -32
  %2293 = add i64 %1923, 69
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = sext i32 %2295 to i64
  %2297 = shl nsw i64 %2296, 3
  store i64 %2297, i64* %RDX.i2470, align 8
  %2298 = add i64 %2297, %2267
  store i64 %2298, i64* %RAX.i2481, align 8
  %2299 = icmp ult i64 %2298, %2267
  %2300 = icmp ult i64 %2298, %2297
  %2301 = or i1 %2299, %2300
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %14, align 1
  %2303 = trunc i64 %2298 to i32
  %2304 = and i32 %2303, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i64 %2297, %2267
  %2310 = xor i64 %2309, %2298
  %2311 = lshr i64 %2310, 4
  %2312 = trunc i64 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %26, align 1
  %2314 = icmp eq i64 %2298, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %29, align 1
  %2316 = lshr i64 %2298, 63
  %2317 = trunc i64 %2316 to i8
  store i8 %2317, i8* %32, align 1
  %2318 = lshr i64 %2296, 60
  %2319 = and i64 %2318, 1
  %2320 = xor i64 %2316, %2285
  %2321 = xor i64 %2316, %2319
  %2322 = add nuw nsw i64 %2320, %2321
  %2323 = icmp eq i64 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %38, align 1
  %2325 = load i64, i64* %RCX.i2479, align 8
  store i64 %2325, i64* %RDI.i2476, align 8
  store i64 %2298, i64* %RSI.i2473, align 8
  %2326 = add i64 %1923, -1643
  %2327 = add i64 %1923, 87
  %2328 = load i64, i64* %6, align 8
  %2329 = add i64 %2328, -8
  %2330 = inttoptr i64 %2329 to i64*
  store i64 %2327, i64* %2330, align 8
  store i64 %2329, i64* %6, align 8
  store i64 %2326, i64* %3, align 8
  %call2_41963d = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %2326, %struct.Memory* %MEMORY.0)
  %2331 = load i64, i64* %RBP.i, align 8
  %2332 = add i64 %2331, -48
  %2333 = load i64, i64* %3, align 8
  %2334 = add i64 %2333, 5
  store i64 %2334, i64* %3, align 8
  %2335 = load double, double* %44, align 1
  %2336 = inttoptr i64 %2332 to double*
  %2337 = load double, double* %2336, align 8
  %2338 = fadd double %2335, %2337
  store double %2338, double* %44, align 1
  %2339 = add i64 %2333, 10
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2332 to double*
  store double %2338, double* %2340, align 8
  %.pre254 = load i64, i64* %3, align 8
  br label %block_.L_41964c

block_.L_41964c:                                  ; preds = %block_.L_4195eb, %block_419585
  %2341 = phi i64 [ %.pre254, %block_.L_4195eb ], [ %2133, %block_419585 ]
  %2342 = load i64, i64* %RBP.i, align 8
  %2343 = add i64 %2342, -32
  %2344 = add i64 %2341, 8
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = add i32 %2346, 1
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RAX.i2481, align 8
  %2349 = icmp eq i32 %2346, -1
  %2350 = icmp eq i32 %2347, 0
  %2351 = or i1 %2349, %2350
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1
  %2353 = and i32 %2347, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i32 %2347, %2346
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %26, align 1
  %2362 = zext i1 %2350 to i8
  store i8 %2362, i8* %29, align 1
  %2363 = lshr i32 %2347, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %32, align 1
  %2365 = lshr i32 %2346, 31
  %2366 = xor i32 %2363, %2365
  %2367 = add nuw nsw i32 %2366, %2363
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %38, align 1
  %2370 = add i64 %2341, 14
  store i64 %2370, i64* %3, align 8
  store i32 %2347, i32* %2345, align 4
  %2371 = load i64, i64* %3, align 8
  %2372 = add i64 %2371, -241
  store i64 %2372, i64* %3, align 8
  br label %block_.L_419569

block_.L_41965f:                                  ; preds = %block_.L_419569
  %2373 = add i64 %1868, -36
  %2374 = add i64 %1896, 8
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, 1
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RAX.i2481, align 8
  %2379 = icmp eq i32 %2376, -1
  %2380 = icmp eq i32 %2377, 0
  %2381 = or i1 %2379, %2380
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %14, align 1
  %2383 = and i32 %2377, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %21, align 1
  %2388 = xor i32 %2377, %2376
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %26, align 1
  %2392 = zext i1 %2380 to i8
  store i8 %2392, i8* %29, align 1
  %2393 = lshr i32 %2377, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %32, align 1
  %2395 = lshr i32 %2376, 31
  %2396 = xor i32 %2393, %2395
  %2397 = add nuw nsw i32 %2396, %2393
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %38, align 1
  %2400 = add i64 %1896, 14
  store i64 %2400, i64* %3, align 8
  store i32 %2377, i32* %2375, align 4
  %2401 = load i64, i64* %3, align 8
  %2402 = add i64 %2401, -277
  store i64 %2402, i64* %3, align 8
  br label %block_.L_419558

block_.L_419679:                                  ; preds = %block_.L_419679.preheader, %block_.L_419730
  %2403 = phi i64 [ %2778, %block_.L_419730 ], [ %.pre253, %block_.L_419679.preheader ]
  %2404 = load i64, i64* %RBP.i, align 8
  %2405 = add i64 %2404, -32
  %2406 = add i64 %2403, 4
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  %2409 = add i32 %2408, -4
  %2410 = icmp ult i32 %2408, 4
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %14, align 1
  %2412 = and i32 %2409, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %21, align 1
  %2417 = xor i32 %2409, %2408
  %2418 = lshr i32 %2417, 4
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %26, align 1
  %2421 = icmp eq i32 %2409, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %29, align 1
  %2423 = lshr i32 %2409, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %32, align 1
  %2425 = lshr i32 %2408, 31
  %2426 = xor i32 %2423, %2425
  %2427 = add nuw nsw i32 %2426, %2425
  %2428 = icmp eq i32 %2427, 2
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %38, align 1
  %2430 = icmp ne i8 %2424, 0
  %2431 = xor i1 %2430, %2428
  %.v277 = select i1 %2431, i64 10, i64 202
  %2432 = add i64 %2403, %.v277
  store i64 %2432, i64* %3, align 8
  br i1 %2431, label %block_419683, label %block_.L_419743

block_419683:                                     ; preds = %block_.L_419679
  %2433 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2433, i64* %RAX.i2481, align 8
  %2434 = add i64 %2433, 24
  %2435 = add i64 %2432, 12
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  %2437 = load i32, i32* %2436, align 4
  %2438 = add i32 %2437, -2
  %2439 = icmp ult i32 %2437, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = and i32 %2438, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %21, align 1
  %2446 = xor i32 %2438, %2437
  %2447 = lshr i32 %2446, 4
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %26, align 1
  %2450 = icmp eq i32 %2438, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %29, align 1
  %2452 = lshr i32 %2438, 31
  %2453 = trunc i32 %2452 to i8
  store i8 %2453, i8* %32, align 1
  %2454 = lshr i32 %2437, 31
  %2455 = xor i32 %2452, %2454
  %2456 = add nuw nsw i32 %2455, %2454
  %2457 = icmp eq i32 %2456, 2
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %38, align 1
  %.v303 = select i1 %2450, i64 18, i64 98
  %2459 = add i64 %2432, %.v303
  %2460 = add i64 %2459, 10
  store i64 %2460, i64* %3, align 8
  br i1 %2450, label %block_419695, label %block_.L_4196e5

block_419695:                                     ; preds = %block_419683
  store i64 ptrtoint (%G__0x4b3d00_type* @G__0x4b3d00 to i64), i64* %RAX.i2481, align 8
  %2461 = add i64 %2404, -16
  %2462 = add i64 %2459, 14
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i64*
  %2464 = load i64, i64* %2463, align 8
  %2465 = add i64 %2464, 1328
  store i64 %2465, i64* %RCX.i2479, align 8
  %2466 = icmp ugt i64 %2464, -1329
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %14, align 1
  %2468 = trunc i64 %2465 to i32
  %2469 = and i32 %2468, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  %2474 = xor i64 %2464, 16
  %2475 = xor i64 %2474, %2465
  %2476 = lshr i64 %2475, 4
  %2477 = trunc i64 %2476 to i8
  %2478 = and i8 %2477, 1
  store i8 %2478, i8* %26, align 1
  %2479 = icmp eq i64 %2465, 0
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %29, align 1
  %2481 = lshr i64 %2465, 63
  %2482 = trunc i64 %2481 to i8
  store i8 %2482, i8* %32, align 1
  %2483 = lshr i64 %2464, 63
  %2484 = xor i64 %2481, %2483
  %2485 = add nuw nsw i64 %2484, %2481
  %2486 = icmp eq i64 %2485, 2
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %38, align 1
  %2488 = add i64 %2459, 25
  store i64 %2488, i64* %3, align 8
  %2489 = load i32, i32* %2407, align 4
  %2490 = sext i32 %2489 to i64
  %2491 = shl nsw i64 %2490, 4
  store i64 %2491, i64* %RDX.i2470, align 8
  %2492 = add i64 %2491, %2465
  store i64 %2492, i64* %RCX.i2479, align 8
  %2493 = icmp ult i64 %2492, %2465
  %2494 = icmp ult i64 %2492, %2491
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %14, align 1
  %2497 = trunc i64 %2492 to i32
  %2498 = and i32 %2497, 255
  %2499 = tail call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  store i8 %2502, i8* %21, align 1
  %2503 = xor i64 %2491, %2465
  %2504 = xor i64 %2503, %2492
  %2505 = lshr i64 %2504, 4
  %2506 = trunc i64 %2505 to i8
  %2507 = and i8 %2506, 1
  store i8 %2507, i8* %26, align 1
  %2508 = icmp eq i64 %2492, 0
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %29, align 1
  %2510 = lshr i64 %2492, 63
  %2511 = trunc i64 %2510 to i8
  store i8 %2511, i8* %32, align 1
  %2512 = lshr i64 %2490, 59
  %2513 = and i64 %2512, 1
  %2514 = xor i64 %2510, %2481
  %2515 = xor i64 %2510, %2513
  %2516 = add nuw nsw i64 %2514, %2515
  %2517 = icmp eq i64 %2516, 2
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %38, align 1
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -28
  %2521 = add i64 %2459, 36
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = sext i32 %2523 to i64
  %2525 = shl nsw i64 %2524, 5
  store i64 %2525, i64* %RDX.i2470, align 8
  %2526 = load i64, i64* %RAX.i2481, align 8
  %2527 = add i64 %2525, %2526
  store i64 %2527, i64* %RAX.i2481, align 8
  %2528 = icmp ult i64 %2527, %2526
  %2529 = icmp ult i64 %2527, %2525
  %2530 = or i1 %2528, %2529
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %14, align 1
  %2532 = trunc i64 %2527 to i32
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  %2538 = xor i64 %2526, %2527
  %2539 = lshr i64 %2538, 4
  %2540 = trunc i64 %2539 to i8
  %2541 = and i8 %2540, 1
  store i8 %2541, i8* %26, align 1
  %2542 = icmp eq i64 %2527, 0
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %29, align 1
  %2544 = lshr i64 %2527, 63
  %2545 = trunc i64 %2544 to i8
  store i8 %2545, i8* %32, align 1
  %2546 = lshr i64 %2526, 63
  %2547 = lshr i64 %2524, 58
  %2548 = and i64 %2547, 1
  %2549 = xor i64 %2544, %2546
  %2550 = xor i64 %2544, %2548
  %2551 = add nuw nsw i64 %2549, %2550
  %2552 = icmp eq i64 %2551, 2
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %38, align 1
  %2554 = add i64 %2519, -32
  %2555 = add i64 %2459, 47
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  %2558 = sext i32 %2557 to i64
  %2559 = shl nsw i64 %2558, 3
  store i64 %2559, i64* %RDX.i2470, align 8
  %2560 = add i64 %2559, %2527
  store i64 %2560, i64* %RAX.i2481, align 8
  %2561 = icmp ult i64 %2560, %2527
  %2562 = icmp ult i64 %2560, %2559
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %14, align 1
  %2565 = trunc i64 %2560 to i32
  %2566 = and i32 %2565, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %21, align 1
  %2571 = xor i64 %2559, %2527
  %2572 = xor i64 %2571, %2560
  %2573 = lshr i64 %2572, 4
  %2574 = trunc i64 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %26, align 1
  %2576 = icmp eq i64 %2560, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %29, align 1
  %2578 = lshr i64 %2560, 63
  %2579 = trunc i64 %2578 to i8
  store i8 %2579, i8* %32, align 1
  %2580 = lshr i64 %2558, 60
  %2581 = and i64 %2580, 1
  %2582 = xor i64 %2578, %2544
  %2583 = xor i64 %2578, %2581
  %2584 = add nuw nsw i64 %2582, %2583
  %2585 = icmp eq i64 %2584, 2
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %38, align 1
  %2587 = load i64, i64* %RCX.i2479, align 8
  store i64 %2587, i64* %RDI.i2476, align 8
  store i64 %2560, i64* %RSI.i2473, align 8
  %2588 = add i64 %2459, -1813
  %2589 = add i64 %2459, 65
  %2590 = load i64, i64* %6, align 8
  %2591 = add i64 %2590, -8
  %2592 = inttoptr i64 %2591 to i64*
  store i64 %2589, i64* %2592, align 8
  store i64 %2591, i64* %6, align 8
  store i64 %2588, i64* %3, align 8
  %call2_4196d1 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %2588, %struct.Memory* %MEMORY.0)
  %2593 = load i64, i64* %RBP.i, align 8
  %2594 = add i64 %2593, -48
  %2595 = load i64, i64* %3, align 8
  %2596 = add i64 %2595, 5
  store i64 %2596, i64* %3, align 8
  %2597 = load double, double* %44, align 1
  %2598 = inttoptr i64 %2594 to double*
  %2599 = load double, double* %2598, align 8
  %2600 = fadd double %2597, %2599
  store double %2600, double* %44, align 1
  %2601 = add i64 %2595, 10
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2594 to double*
  store double %2600, double* %2602, align 8
  %2603 = load i64, i64* %3, align 8
  %2604 = add i64 %2603, 80
  store i64 %2604, i64* %3, align 8
  br label %block_.L_419730

block_.L_4196e5:                                  ; preds = %block_419683
  store i64 ptrtoint (%G__0x4b3d20_type* @G__0x4b3d20 to i64), i64* %RAX.i2481, align 8
  %2605 = add i64 %2404, -16
  %2606 = add i64 %2459, 14
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i64*
  %2608 = load i64, i64* %2607, align 8
  %2609 = add i64 %2608, 1328
  store i64 %2609, i64* %RCX.i2479, align 8
  %2610 = icmp ugt i64 %2608, -1329
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %14, align 1
  %2612 = trunc i64 %2609 to i32
  %2613 = and i32 %2612, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %21, align 1
  %2618 = xor i64 %2608, 16
  %2619 = xor i64 %2618, %2609
  %2620 = lshr i64 %2619, 4
  %2621 = trunc i64 %2620 to i8
  %2622 = and i8 %2621, 1
  store i8 %2622, i8* %26, align 1
  %2623 = icmp eq i64 %2609, 0
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %29, align 1
  %2625 = lshr i64 %2609, 63
  %2626 = trunc i64 %2625 to i8
  store i8 %2626, i8* %32, align 1
  %2627 = lshr i64 %2608, 63
  %2628 = xor i64 %2625, %2627
  %2629 = add nuw nsw i64 %2628, %2625
  %2630 = icmp eq i64 %2629, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %38, align 1
  %2632 = add i64 %2459, 25
  store i64 %2632, i64* %3, align 8
  %2633 = load i32, i32* %2407, align 4
  %2634 = sext i32 %2633 to i64
  %2635 = shl nsw i64 %2634, 4
  store i64 %2635, i64* %RDX.i2470, align 8
  %2636 = add i64 %2635, %2609
  store i64 %2636, i64* %RCX.i2479, align 8
  %2637 = icmp ult i64 %2636, %2609
  %2638 = icmp ult i64 %2636, %2635
  %2639 = or i1 %2637, %2638
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %14, align 1
  %2641 = trunc i64 %2636 to i32
  %2642 = and i32 %2641, 255
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %21, align 1
  %2647 = xor i64 %2635, %2609
  %2648 = xor i64 %2647, %2636
  %2649 = lshr i64 %2648, 4
  %2650 = trunc i64 %2649 to i8
  %2651 = and i8 %2650, 1
  store i8 %2651, i8* %26, align 1
  %2652 = icmp eq i64 %2636, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %29, align 1
  %2654 = lshr i64 %2636, 63
  %2655 = trunc i64 %2654 to i8
  store i8 %2655, i8* %32, align 1
  %2656 = lshr i64 %2634, 59
  %2657 = and i64 %2656, 1
  %2658 = xor i64 %2654, %2625
  %2659 = xor i64 %2654, %2657
  %2660 = add nuw nsw i64 %2658, %2659
  %2661 = icmp eq i64 %2660, 2
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %38, align 1
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -28
  %2665 = add i64 %2459, 36
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = sext i32 %2667 to i64
  %2669 = shl nsw i64 %2668, 5
  store i64 %2669, i64* %RDX.i2470, align 8
  %2670 = load i64, i64* %RAX.i2481, align 8
  %2671 = add i64 %2669, %2670
  store i64 %2671, i64* %RAX.i2481, align 8
  %2672 = icmp ult i64 %2671, %2670
  %2673 = icmp ult i64 %2671, %2669
  %2674 = or i1 %2672, %2673
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %14, align 1
  %2676 = trunc i64 %2671 to i32
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %21, align 1
  %2682 = xor i64 %2670, %2671
  %2683 = lshr i64 %2682, 4
  %2684 = trunc i64 %2683 to i8
  %2685 = and i8 %2684, 1
  store i8 %2685, i8* %26, align 1
  %2686 = icmp eq i64 %2671, 0
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %29, align 1
  %2688 = lshr i64 %2671, 63
  %2689 = trunc i64 %2688 to i8
  store i8 %2689, i8* %32, align 1
  %2690 = lshr i64 %2670, 63
  %2691 = lshr i64 %2668, 58
  %2692 = and i64 %2691, 1
  %2693 = xor i64 %2688, %2690
  %2694 = xor i64 %2688, %2692
  %2695 = add nuw nsw i64 %2693, %2694
  %2696 = icmp eq i64 %2695, 2
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %38, align 1
  %2698 = add i64 %2663, -32
  %2699 = add i64 %2459, 47
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sext i32 %2701 to i64
  %2703 = shl nsw i64 %2702, 3
  store i64 %2703, i64* %RDX.i2470, align 8
  %2704 = add i64 %2703, %2671
  store i64 %2704, i64* %RAX.i2481, align 8
  %2705 = icmp ult i64 %2704, %2671
  %2706 = icmp ult i64 %2704, %2703
  %2707 = or i1 %2705, %2706
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %14, align 1
  %2709 = trunc i64 %2704 to i32
  %2710 = and i32 %2709, 255
  %2711 = tail call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  store i8 %2714, i8* %21, align 1
  %2715 = xor i64 %2703, %2671
  %2716 = xor i64 %2715, %2704
  %2717 = lshr i64 %2716, 4
  %2718 = trunc i64 %2717 to i8
  %2719 = and i8 %2718, 1
  store i8 %2719, i8* %26, align 1
  %2720 = icmp eq i64 %2704, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %29, align 1
  %2722 = lshr i64 %2704, 63
  %2723 = trunc i64 %2722 to i8
  store i8 %2723, i8* %32, align 1
  %2724 = lshr i64 %2702, 60
  %2725 = and i64 %2724, 1
  %2726 = xor i64 %2722, %2688
  %2727 = xor i64 %2722, %2725
  %2728 = add nuw nsw i64 %2726, %2727
  %2729 = icmp eq i64 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %38, align 1
  %2731 = load i64, i64* %RCX.i2479, align 8
  store i64 %2731, i64* %RDI.i2476, align 8
  store i64 %2704, i64* %RSI.i2473, align 8
  %2732 = add i64 %2459, -1893
  %2733 = add i64 %2459, 65
  %2734 = load i64, i64* %6, align 8
  %2735 = add i64 %2734, -8
  %2736 = inttoptr i64 %2735 to i64*
  store i64 %2733, i64* %2736, align 8
  store i64 %2735, i64* %6, align 8
  store i64 %2732, i64* %3, align 8
  %call2_419721 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %2732, %struct.Memory* %MEMORY.0)
  %2737 = load i64, i64* %RBP.i, align 8
  %2738 = add i64 %2737, -48
  %2739 = load i64, i64* %3, align 8
  %2740 = add i64 %2739, 5
  store i64 %2740, i64* %3, align 8
  %2741 = load double, double* %44, align 1
  %2742 = inttoptr i64 %2738 to double*
  %2743 = load double, double* %2742, align 8
  %2744 = fadd double %2741, %2743
  store double %2744, double* %44, align 1
  %2745 = add i64 %2739, 10
  store i64 %2745, i64* %3, align 8
  %2746 = inttoptr i64 %2738 to double*
  store double %2744, double* %2746, align 8
  %.pre252 = load i64, i64* %3, align 8
  br label %block_.L_419730

block_.L_419730:                                  ; preds = %block_.L_4196e5, %block_419695
  %2747 = phi i64 [ %.pre252, %block_.L_4196e5 ], [ %2604, %block_419695 ]
  %2748 = load i64, i64* %RBP.i, align 8
  %2749 = add i64 %2748, -32
  %2750 = add i64 %2747, 8
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2749 to i32*
  %2752 = load i32, i32* %2751, align 4
  %2753 = add i32 %2752, 1
  %2754 = zext i32 %2753 to i64
  store i64 %2754, i64* %RAX.i2481, align 8
  %2755 = icmp eq i32 %2752, -1
  %2756 = icmp eq i32 %2753, 0
  %2757 = or i1 %2755, %2756
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = and i32 %2753, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %21, align 1
  %2764 = xor i32 %2753, %2752
  %2765 = lshr i32 %2764, 4
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %26, align 1
  %2768 = zext i1 %2756 to i8
  store i8 %2768, i8* %29, align 1
  %2769 = lshr i32 %2753, 31
  %2770 = trunc i32 %2769 to i8
  store i8 %2770, i8* %32, align 1
  %2771 = lshr i32 %2752, 31
  %2772 = xor i32 %2769, %2771
  %2773 = add nuw nsw i32 %2772, %2769
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %38, align 1
  %2776 = add i64 %2747, 14
  store i64 %2776, i64* %3, align 8
  store i32 %2753, i32* %2751, align 4
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, -197
  store i64 %2778, i64* %3, align 8
  br label %block_.L_419679

block_.L_419743:                                  ; preds = %block_.L_419679
  %2779 = add i64 %2432, 7
  store i64 %2779, i64* %3, align 8
  store i32 0, i32* %2407, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_41974a

block_.L_41974a:                                  ; preds = %block_.L_419801, %block_.L_419743
  %2780 = phi i64 [ %.pre216, %block_.L_419743 ], [ %3155, %block_.L_419801 ]
  %2781 = load i64, i64* %RBP.i, align 8
  %2782 = add i64 %2781, -32
  %2783 = add i64 %2780, 4
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = add i32 %2785, -4
  %2787 = icmp ult i32 %2785, 4
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %14, align 1
  %2789 = and i32 %2786, 255
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  %2794 = xor i32 %2786, %2785
  %2795 = lshr i32 %2794, 4
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  store i8 %2797, i8* %26, align 1
  %2798 = icmp eq i32 %2786, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %29, align 1
  %2800 = lshr i32 %2786, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %32, align 1
  %2802 = lshr i32 %2785, 31
  %2803 = xor i32 %2800, %2802
  %2804 = add nuw nsw i32 %2803, %2802
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %38, align 1
  %2807 = icmp ne i8 %2801, 0
  %2808 = xor i1 %2807, %2805
  %.v278 = select i1 %2808, i64 10, i64 202
  %2809 = add i64 %2780, %.v278
  store i64 %2809, i64* %3, align 8
  br i1 %2808, label %block_419754, label %block_.L_419814

block_419754:                                     ; preds = %block_.L_41974a
  %2810 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2810, i64* %RAX.i2481, align 8
  %2811 = add i64 %2810, 24
  %2812 = add i64 %2809, 12
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = add i32 %2814, -2
  %2816 = icmp ult i32 %2814, 2
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %14, align 1
  %2818 = and i32 %2815, 255
  %2819 = tail call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  store i8 %2822, i8* %21, align 1
  %2823 = xor i32 %2815, %2814
  %2824 = lshr i32 %2823, 4
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  store i8 %2826, i8* %26, align 1
  %2827 = icmp eq i32 %2815, 0
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %29, align 1
  %2829 = lshr i32 %2815, 31
  %2830 = trunc i32 %2829 to i8
  store i8 %2830, i8* %32, align 1
  %2831 = lshr i32 %2814, 31
  %2832 = xor i32 %2829, %2831
  %2833 = add nuw nsw i32 %2832, %2831
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %38, align 1
  %.v302 = select i1 %2827, i64 18, i64 98
  %2836 = add i64 %2809, %.v302
  %2837 = add i64 %2836, 10
  store i64 %2837, i64* %3, align 8
  br i1 %2827, label %block_419766, label %block_.L_4197b6

block_419766:                                     ; preds = %block_419754
  store i64 ptrtoint (%G__0x4b3d80_type* @G__0x4b3d80 to i64), i64* %RAX.i2481, align 8
  %2838 = add i64 %2781, -16
  %2839 = add i64 %2836, 14
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i64*
  %2841 = load i64, i64* %2840, align 8
  %2842 = add i64 %2841, 1392
  store i64 %2842, i64* %RCX.i2479, align 8
  %2843 = icmp ugt i64 %2841, -1393
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %14, align 1
  %2845 = trunc i64 %2842 to i32
  %2846 = and i32 %2845, 255
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846)
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %21, align 1
  %2851 = xor i64 %2841, 16
  %2852 = xor i64 %2851, %2842
  %2853 = lshr i64 %2852, 4
  %2854 = trunc i64 %2853 to i8
  %2855 = and i8 %2854, 1
  store i8 %2855, i8* %26, align 1
  %2856 = icmp eq i64 %2842, 0
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %29, align 1
  %2858 = lshr i64 %2842, 63
  %2859 = trunc i64 %2858 to i8
  store i8 %2859, i8* %32, align 1
  %2860 = lshr i64 %2841, 63
  %2861 = xor i64 %2858, %2860
  %2862 = add nuw nsw i64 %2861, %2858
  %2863 = icmp eq i64 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %38, align 1
  %2865 = add i64 %2836, 25
  store i64 %2865, i64* %3, align 8
  %2866 = load i32, i32* %2784, align 4
  %2867 = sext i32 %2866 to i64
  %2868 = shl nsw i64 %2867, 4
  store i64 %2868, i64* %RDX.i2470, align 8
  %2869 = add i64 %2868, %2842
  store i64 %2869, i64* %RCX.i2479, align 8
  %2870 = icmp ult i64 %2869, %2842
  %2871 = icmp ult i64 %2869, %2868
  %2872 = or i1 %2870, %2871
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %14, align 1
  %2874 = trunc i64 %2869 to i32
  %2875 = and i32 %2874, 255
  %2876 = tail call i32 @llvm.ctpop.i32(i32 %2875)
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  store i8 %2879, i8* %21, align 1
  %2880 = xor i64 %2868, %2842
  %2881 = xor i64 %2880, %2869
  %2882 = lshr i64 %2881, 4
  %2883 = trunc i64 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %26, align 1
  %2885 = icmp eq i64 %2869, 0
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %29, align 1
  %2887 = lshr i64 %2869, 63
  %2888 = trunc i64 %2887 to i8
  store i8 %2888, i8* %32, align 1
  %2889 = lshr i64 %2867, 59
  %2890 = and i64 %2889, 1
  %2891 = xor i64 %2887, %2858
  %2892 = xor i64 %2887, %2890
  %2893 = add nuw nsw i64 %2891, %2892
  %2894 = icmp eq i64 %2893, 2
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %38, align 1
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -28
  %2898 = add i64 %2836, 36
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = sext i32 %2900 to i64
  %2902 = shl nsw i64 %2901, 5
  store i64 %2902, i64* %RDX.i2470, align 8
  %2903 = load i64, i64* %RAX.i2481, align 8
  %2904 = add i64 %2902, %2903
  store i64 %2904, i64* %RAX.i2481, align 8
  %2905 = icmp ult i64 %2904, %2903
  %2906 = icmp ult i64 %2904, %2902
  %2907 = or i1 %2905, %2906
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %14, align 1
  %2909 = trunc i64 %2904 to i32
  %2910 = and i32 %2909, 255
  %2911 = tail call i32 @llvm.ctpop.i32(i32 %2910)
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = xor i8 %2913, 1
  store i8 %2914, i8* %21, align 1
  %2915 = xor i64 %2903, %2904
  %2916 = lshr i64 %2915, 4
  %2917 = trunc i64 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %26, align 1
  %2919 = icmp eq i64 %2904, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %29, align 1
  %2921 = lshr i64 %2904, 63
  %2922 = trunc i64 %2921 to i8
  store i8 %2922, i8* %32, align 1
  %2923 = lshr i64 %2903, 63
  %2924 = lshr i64 %2901, 58
  %2925 = and i64 %2924, 1
  %2926 = xor i64 %2921, %2923
  %2927 = xor i64 %2921, %2925
  %2928 = add nuw nsw i64 %2926, %2927
  %2929 = icmp eq i64 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %38, align 1
  %2931 = add i64 %2896, -32
  %2932 = add i64 %2836, 47
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = sext i32 %2934 to i64
  %2936 = shl nsw i64 %2935, 3
  store i64 %2936, i64* %RDX.i2470, align 8
  %2937 = add i64 %2936, %2904
  store i64 %2937, i64* %RAX.i2481, align 8
  %2938 = icmp ult i64 %2937, %2904
  %2939 = icmp ult i64 %2937, %2936
  %2940 = or i1 %2938, %2939
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %14, align 1
  %2942 = trunc i64 %2937 to i32
  %2943 = and i32 %2942, 255
  %2944 = tail call i32 @llvm.ctpop.i32(i32 %2943)
  %2945 = trunc i32 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = xor i8 %2946, 1
  store i8 %2947, i8* %21, align 1
  %2948 = xor i64 %2936, %2904
  %2949 = xor i64 %2948, %2937
  %2950 = lshr i64 %2949, 4
  %2951 = trunc i64 %2950 to i8
  %2952 = and i8 %2951, 1
  store i8 %2952, i8* %26, align 1
  %2953 = icmp eq i64 %2937, 0
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %29, align 1
  %2955 = lshr i64 %2937, 63
  %2956 = trunc i64 %2955 to i8
  store i8 %2956, i8* %32, align 1
  %2957 = lshr i64 %2935, 60
  %2958 = and i64 %2957, 1
  %2959 = xor i64 %2955, %2921
  %2960 = xor i64 %2955, %2958
  %2961 = add nuw nsw i64 %2959, %2960
  %2962 = icmp eq i64 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %38, align 1
  %2964 = load i64, i64* %RCX.i2479, align 8
  store i64 %2964, i64* %RDI.i2476, align 8
  store i64 %2937, i64* %RSI.i2473, align 8
  %2965 = add i64 %2836, -2022
  %2966 = add i64 %2836, 65
  %2967 = load i64, i64* %6, align 8
  %2968 = add i64 %2967, -8
  %2969 = inttoptr i64 %2968 to i64*
  store i64 %2966, i64* %2969, align 8
  store i64 %2968, i64* %6, align 8
  store i64 %2965, i64* %3, align 8
  %call2_4197a2 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %2965, %struct.Memory* %MEMORY.0)
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -48
  %2972 = load i64, i64* %3, align 8
  %2973 = add i64 %2972, 5
  store i64 %2973, i64* %3, align 8
  %2974 = load double, double* %44, align 1
  %2975 = inttoptr i64 %2971 to double*
  %2976 = load double, double* %2975, align 8
  %2977 = fadd double %2974, %2976
  store double %2977, double* %44, align 1
  %2978 = add i64 %2972, 10
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2971 to double*
  store double %2977, double* %2979, align 8
  %2980 = load i64, i64* %3, align 8
  %2981 = add i64 %2980, 80
  store i64 %2981, i64* %3, align 8
  br label %block_.L_419801

block_.L_4197b6:                                  ; preds = %block_419754
  store i64 ptrtoint (%G__0x4b3da0_type* @G__0x4b3da0 to i64), i64* %RAX.i2481, align 8
  %2982 = add i64 %2781, -16
  %2983 = add i64 %2836, 14
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  %2986 = add i64 %2985, 1392
  store i64 %2986, i64* %RCX.i2479, align 8
  %2987 = icmp ugt i64 %2985, -1393
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %14, align 1
  %2989 = trunc i64 %2986 to i32
  %2990 = and i32 %2989, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i64 %2985, 16
  %2996 = xor i64 %2995, %2986
  %2997 = lshr i64 %2996, 4
  %2998 = trunc i64 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %26, align 1
  %3000 = icmp eq i64 %2986, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %29, align 1
  %3002 = lshr i64 %2986, 63
  %3003 = trunc i64 %3002 to i8
  store i8 %3003, i8* %32, align 1
  %3004 = lshr i64 %2985, 63
  %3005 = xor i64 %3002, %3004
  %3006 = add nuw nsw i64 %3005, %3002
  %3007 = icmp eq i64 %3006, 2
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %38, align 1
  %3009 = add i64 %2836, 25
  store i64 %3009, i64* %3, align 8
  %3010 = load i32, i32* %2784, align 4
  %3011 = sext i32 %3010 to i64
  %3012 = shl nsw i64 %3011, 4
  store i64 %3012, i64* %RDX.i2470, align 8
  %3013 = add i64 %3012, %2986
  store i64 %3013, i64* %RCX.i2479, align 8
  %3014 = icmp ult i64 %3013, %2986
  %3015 = icmp ult i64 %3013, %3012
  %3016 = or i1 %3014, %3015
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %14, align 1
  %3018 = trunc i64 %3013 to i32
  %3019 = and i32 %3018, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %21, align 1
  %3024 = xor i64 %3012, %2986
  %3025 = xor i64 %3024, %3013
  %3026 = lshr i64 %3025, 4
  %3027 = trunc i64 %3026 to i8
  %3028 = and i8 %3027, 1
  store i8 %3028, i8* %26, align 1
  %3029 = icmp eq i64 %3013, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %29, align 1
  %3031 = lshr i64 %3013, 63
  %3032 = trunc i64 %3031 to i8
  store i8 %3032, i8* %32, align 1
  %3033 = lshr i64 %3011, 59
  %3034 = and i64 %3033, 1
  %3035 = xor i64 %3031, %3002
  %3036 = xor i64 %3031, %3034
  %3037 = add nuw nsw i64 %3035, %3036
  %3038 = icmp eq i64 %3037, 2
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %38, align 1
  %3040 = load i64, i64* %RBP.i, align 8
  %3041 = add i64 %3040, -28
  %3042 = add i64 %2836, 36
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = sext i32 %3044 to i64
  %3046 = shl nsw i64 %3045, 5
  store i64 %3046, i64* %RDX.i2470, align 8
  %3047 = load i64, i64* %RAX.i2481, align 8
  %3048 = add i64 %3046, %3047
  store i64 %3048, i64* %RAX.i2481, align 8
  %3049 = icmp ult i64 %3048, %3047
  %3050 = icmp ult i64 %3048, %3046
  %3051 = or i1 %3049, %3050
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %14, align 1
  %3053 = trunc i64 %3048 to i32
  %3054 = and i32 %3053, 255
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %21, align 1
  %3059 = xor i64 %3047, %3048
  %3060 = lshr i64 %3059, 4
  %3061 = trunc i64 %3060 to i8
  %3062 = and i8 %3061, 1
  store i8 %3062, i8* %26, align 1
  %3063 = icmp eq i64 %3048, 0
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %29, align 1
  %3065 = lshr i64 %3048, 63
  %3066 = trunc i64 %3065 to i8
  store i8 %3066, i8* %32, align 1
  %3067 = lshr i64 %3047, 63
  %3068 = lshr i64 %3045, 58
  %3069 = and i64 %3068, 1
  %3070 = xor i64 %3065, %3067
  %3071 = xor i64 %3065, %3069
  %3072 = add nuw nsw i64 %3070, %3071
  %3073 = icmp eq i64 %3072, 2
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %38, align 1
  %3075 = add i64 %3040, -32
  %3076 = add i64 %2836, 47
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  %3079 = sext i32 %3078 to i64
  %3080 = shl nsw i64 %3079, 3
  store i64 %3080, i64* %RDX.i2470, align 8
  %3081 = add i64 %3080, %3048
  store i64 %3081, i64* %RAX.i2481, align 8
  %3082 = icmp ult i64 %3081, %3048
  %3083 = icmp ult i64 %3081, %3080
  %3084 = or i1 %3082, %3083
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %14, align 1
  %3086 = trunc i64 %3081 to i32
  %3087 = and i32 %3086, 255
  %3088 = tail call i32 @llvm.ctpop.i32(i32 %3087)
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  %3091 = xor i8 %3090, 1
  store i8 %3091, i8* %21, align 1
  %3092 = xor i64 %3080, %3048
  %3093 = xor i64 %3092, %3081
  %3094 = lshr i64 %3093, 4
  %3095 = trunc i64 %3094 to i8
  %3096 = and i8 %3095, 1
  store i8 %3096, i8* %26, align 1
  %3097 = icmp eq i64 %3081, 0
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %29, align 1
  %3099 = lshr i64 %3081, 63
  %3100 = trunc i64 %3099 to i8
  store i8 %3100, i8* %32, align 1
  %3101 = lshr i64 %3079, 60
  %3102 = and i64 %3101, 1
  %3103 = xor i64 %3099, %3065
  %3104 = xor i64 %3099, %3102
  %3105 = add nuw nsw i64 %3103, %3104
  %3106 = icmp eq i64 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %38, align 1
  %3108 = load i64, i64* %RCX.i2479, align 8
  store i64 %3108, i64* %RDI.i2476, align 8
  store i64 %3081, i64* %RSI.i2473, align 8
  %3109 = add i64 %2836, -2102
  %3110 = add i64 %2836, 65
  %3111 = load i64, i64* %6, align 8
  %3112 = add i64 %3111, -8
  %3113 = inttoptr i64 %3112 to i64*
  store i64 %3110, i64* %3113, align 8
  store i64 %3112, i64* %6, align 8
  store i64 %3109, i64* %3, align 8
  %call2_4197f2 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %3109, %struct.Memory* %MEMORY.0)
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -48
  %3116 = load i64, i64* %3, align 8
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %3, align 8
  %3118 = load double, double* %44, align 1
  %3119 = inttoptr i64 %3115 to double*
  %3120 = load double, double* %3119, align 8
  %3121 = fadd double %3118, %3120
  store double %3121, double* %44, align 1
  %3122 = add i64 %3116, 10
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3115 to double*
  store double %3121, double* %3123, align 8
  %.pre251 = load i64, i64* %3, align 8
  br label %block_.L_419801

block_.L_419801:                                  ; preds = %block_.L_4197b6, %block_419766
  %3124 = phi i64 [ %.pre251, %block_.L_4197b6 ], [ %2981, %block_419766 ]
  %3125 = load i64, i64* %RBP.i, align 8
  %3126 = add i64 %3125, -32
  %3127 = add i64 %3124, 8
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i32*
  %3129 = load i32, i32* %3128, align 4
  %3130 = add i32 %3129, 1
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RAX.i2481, align 8
  %3132 = icmp eq i32 %3129, -1
  %3133 = icmp eq i32 %3130, 0
  %3134 = or i1 %3132, %3133
  %3135 = zext i1 %3134 to i8
  store i8 %3135, i8* %14, align 1
  %3136 = and i32 %3130, 255
  %3137 = tail call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  store i8 %3140, i8* %21, align 1
  %3141 = xor i32 %3130, %3129
  %3142 = lshr i32 %3141, 4
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  store i8 %3144, i8* %26, align 1
  %3145 = zext i1 %3133 to i8
  store i8 %3145, i8* %29, align 1
  %3146 = lshr i32 %3130, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %32, align 1
  %3148 = lshr i32 %3129, 31
  %3149 = xor i32 %3146, %3148
  %3150 = add nuw nsw i32 %3149, %3146
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %38, align 1
  %3153 = add i64 %3124, 14
  store i64 %3153, i64* %3, align 8
  store i32 %3130, i32* %3128, align 4
  %3154 = load i64, i64* %3, align 8
  %3155 = add i64 %3154, -197
  store i64 %3155, i64* %3, align 8
  br label %block_.L_41974a

block_.L_419814:                                  ; preds = %block_.L_41974a
  %3156 = add i64 %2809, 7
  store i64 %3156, i64* %3, align 8
  store i32 0, i32* %2784, align 4
  %.pre217 = load i64, i64* %3, align 8
  br label %block_.L_41981b

block_.L_41981b:                                  ; preds = %block_.L_4198d2, %block_.L_419814
  %3157 = phi i64 [ %.pre217, %block_.L_419814 ], [ %3532, %block_.L_4198d2 ]
  %3158 = load i64, i64* %RBP.i, align 8
  %3159 = add i64 %3158, -32
  %3160 = add i64 %3157, 4
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = add i32 %3162, -3
  %3164 = icmp ult i32 %3162, 3
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %14, align 1
  %3166 = and i32 %3163, 255
  %3167 = tail call i32 @llvm.ctpop.i32(i32 %3166)
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = xor i8 %3169, 1
  store i8 %3170, i8* %21, align 1
  %3171 = xor i32 %3163, %3162
  %3172 = lshr i32 %3171, 4
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  store i8 %3174, i8* %26, align 1
  %3175 = icmp eq i32 %3163, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %29, align 1
  %3177 = lshr i32 %3163, 31
  %3178 = trunc i32 %3177 to i8
  store i8 %3178, i8* %32, align 1
  %3179 = lshr i32 %3162, 31
  %3180 = xor i32 %3177, %3179
  %3181 = add nuw nsw i32 %3180, %3179
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %38, align 1
  %3184 = icmp ne i8 %3178, 0
  %3185 = xor i1 %3184, %3182
  %.v279 = select i1 %3185, i64 10, i64 202
  %3186 = add i64 %3157, %.v279
  store i64 %3186, i64* %3, align 8
  br i1 %3185, label %block_419825, label %block_.L_4198e5

block_419825:                                     ; preds = %block_.L_41981b
  %3187 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3187, i64* %RAX.i2481, align 8
  %3188 = add i64 %3187, 24
  %3189 = add i64 %3186, 12
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = add i32 %3191, -2
  %3193 = icmp ult i32 %3191, 2
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %14, align 1
  %3195 = and i32 %3192, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %21, align 1
  %3200 = xor i32 %3192, %3191
  %3201 = lshr i32 %3200, 4
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  store i8 %3203, i8* %26, align 1
  %3204 = icmp eq i32 %3192, 0
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %29, align 1
  %3206 = lshr i32 %3192, 31
  %3207 = trunc i32 %3206 to i8
  store i8 %3207, i8* %32, align 1
  %3208 = lshr i32 %3191, 31
  %3209 = xor i32 %3206, %3208
  %3210 = add nuw nsw i32 %3209, %3208
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %38, align 1
  %.v301 = select i1 %3204, i64 18, i64 98
  %3213 = add i64 %3186, %.v301
  %3214 = add i64 %3213, 10
  store i64 %3214, i64* %3, align 8
  br i1 %3204, label %block_419837, label %block_.L_419887

block_419837:                                     ; preds = %block_419825
  store i64 ptrtoint (%G__0x4b3e00_type* @G__0x4b3e00 to i64), i64* %RAX.i2481, align 8
  %3215 = add i64 %3158, -16
  %3216 = add i64 %3213, 14
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i64*
  %3218 = load i64, i64* %3217, align 8
  %3219 = add i64 %3218, 1456
  store i64 %3219, i64* %RCX.i2479, align 8
  %3220 = icmp ugt i64 %3218, -1457
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %14, align 1
  %3222 = trunc i64 %3219 to i32
  %3223 = and i32 %3222, 255
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %21, align 1
  %3228 = xor i64 %3218, 16
  %3229 = xor i64 %3228, %3219
  %3230 = lshr i64 %3229, 4
  %3231 = trunc i64 %3230 to i8
  %3232 = and i8 %3231, 1
  store i8 %3232, i8* %26, align 1
  %3233 = icmp eq i64 %3219, 0
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %29, align 1
  %3235 = lshr i64 %3219, 63
  %3236 = trunc i64 %3235 to i8
  store i8 %3236, i8* %32, align 1
  %3237 = lshr i64 %3218, 63
  %3238 = xor i64 %3235, %3237
  %3239 = add nuw nsw i64 %3238, %3235
  %3240 = icmp eq i64 %3239, 2
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %38, align 1
  %3242 = add i64 %3213, 25
  store i64 %3242, i64* %3, align 8
  %3243 = load i32, i32* %3161, align 4
  %3244 = sext i32 %3243 to i64
  %3245 = shl nsw i64 %3244, 4
  store i64 %3245, i64* %RDX.i2470, align 8
  %3246 = add i64 %3245, %3219
  store i64 %3246, i64* %RCX.i2479, align 8
  %3247 = icmp ult i64 %3246, %3219
  %3248 = icmp ult i64 %3246, %3245
  %3249 = or i1 %3247, %3248
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %14, align 1
  %3251 = trunc i64 %3246 to i32
  %3252 = and i32 %3251, 255
  %3253 = tail call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  store i8 %3256, i8* %21, align 1
  %3257 = xor i64 %3245, %3219
  %3258 = xor i64 %3257, %3246
  %3259 = lshr i64 %3258, 4
  %3260 = trunc i64 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %26, align 1
  %3262 = icmp eq i64 %3246, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %29, align 1
  %3264 = lshr i64 %3246, 63
  %3265 = trunc i64 %3264 to i8
  store i8 %3265, i8* %32, align 1
  %3266 = lshr i64 %3244, 59
  %3267 = and i64 %3266, 1
  %3268 = xor i64 %3264, %3235
  %3269 = xor i64 %3264, %3267
  %3270 = add nuw nsw i64 %3268, %3269
  %3271 = icmp eq i64 %3270, 2
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %38, align 1
  %3273 = load i64, i64* %RBP.i, align 8
  %3274 = add i64 %3273, -28
  %3275 = add i64 %3213, 36
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = sext i32 %3277 to i64
  %3279 = mul nsw i64 %3278, 24
  store i64 %3279, i64* %RDX.i2470, align 8
  %3280 = lshr i64 %3279, 63
  %3281 = load i64, i64* %RAX.i2481, align 8
  %3282 = add i64 %3279, %3281
  store i64 %3282, i64* %RAX.i2481, align 8
  %3283 = icmp ult i64 %3282, %3281
  %3284 = icmp ult i64 %3282, %3279
  %3285 = or i1 %3283, %3284
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %14, align 1
  %3287 = trunc i64 %3282 to i32
  %3288 = and i32 %3287, 255
  %3289 = tail call i32 @llvm.ctpop.i32(i32 %3288)
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  store i8 %3292, i8* %21, align 1
  %3293 = xor i64 %3279, %3281
  %3294 = xor i64 %3293, %3282
  %3295 = lshr i64 %3294, 4
  %3296 = trunc i64 %3295 to i8
  %3297 = and i8 %3296, 1
  store i8 %3297, i8* %26, align 1
  %3298 = icmp eq i64 %3282, 0
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %29, align 1
  %3300 = lshr i64 %3282, 63
  %3301 = trunc i64 %3300 to i8
  store i8 %3301, i8* %32, align 1
  %3302 = lshr i64 %3281, 63
  %3303 = xor i64 %3300, %3302
  %3304 = xor i64 %3300, %3280
  %3305 = add nuw nsw i64 %3303, %3304
  %3306 = icmp eq i64 %3305, 2
  %3307 = zext i1 %3306 to i8
  store i8 %3307, i8* %38, align 1
  %3308 = add i64 %3273, -32
  %3309 = add i64 %3213, 47
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = sext i32 %3311 to i64
  %3313 = shl nsw i64 %3312, 3
  store i64 %3313, i64* %RDX.i2470, align 8
  %3314 = add i64 %3313, %3282
  store i64 %3314, i64* %RAX.i2481, align 8
  %3315 = icmp ult i64 %3314, %3282
  %3316 = icmp ult i64 %3314, %3313
  %3317 = or i1 %3315, %3316
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %14, align 1
  %3319 = trunc i64 %3314 to i32
  %3320 = and i32 %3319, 255
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  %3325 = xor i64 %3313, %3282
  %3326 = xor i64 %3325, %3314
  %3327 = lshr i64 %3326, 4
  %3328 = trunc i64 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %26, align 1
  %3330 = icmp eq i64 %3314, 0
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %29, align 1
  %3332 = lshr i64 %3314, 63
  %3333 = trunc i64 %3332 to i8
  store i8 %3333, i8* %32, align 1
  %3334 = lshr i64 %3312, 60
  %3335 = and i64 %3334, 1
  %3336 = xor i64 %3332, %3300
  %3337 = xor i64 %3332, %3335
  %3338 = add nuw nsw i64 %3336, %3337
  %3339 = icmp eq i64 %3338, 2
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %38, align 1
  %3341 = load i64, i64* %RCX.i2479, align 8
  store i64 %3341, i64* %RDI.i2476, align 8
  store i64 %3314, i64* %RSI.i2473, align 8
  %3342 = add i64 %3213, -2231
  %3343 = add i64 %3213, 65
  %3344 = load i64, i64* %6, align 8
  %3345 = add i64 %3344, -8
  %3346 = inttoptr i64 %3345 to i64*
  store i64 %3343, i64* %3346, align 8
  store i64 %3345, i64* %6, align 8
  store i64 %3342, i64* %3, align 8
  %call2_419873 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %3342, %struct.Memory* %MEMORY.0)
  %3347 = load i64, i64* %RBP.i, align 8
  %3348 = add i64 %3347, -48
  %3349 = load i64, i64* %3, align 8
  %3350 = add i64 %3349, 5
  store i64 %3350, i64* %3, align 8
  %3351 = load double, double* %44, align 1
  %3352 = inttoptr i64 %3348 to double*
  %3353 = load double, double* %3352, align 8
  %3354 = fadd double %3351, %3353
  store double %3354, double* %44, align 1
  %3355 = add i64 %3349, 10
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3348 to double*
  store double %3354, double* %3356, align 8
  %3357 = load i64, i64* %3, align 8
  %3358 = add i64 %3357, 80
  store i64 %3358, i64* %3, align 8
  br label %block_.L_4198d2

block_.L_419887:                                  ; preds = %block_419825
  store i64 ptrtoint (%G__0x4b3e20_type* @G__0x4b3e20 to i64), i64* %RAX.i2481, align 8
  %3359 = add i64 %3158, -16
  %3360 = add i64 %3213, 14
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i64*
  %3362 = load i64, i64* %3361, align 8
  %3363 = add i64 %3362, 1456
  store i64 %3363, i64* %RCX.i2479, align 8
  %3364 = icmp ugt i64 %3362, -1457
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %14, align 1
  %3366 = trunc i64 %3363 to i32
  %3367 = and i32 %3366, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i64 %3362, 16
  %3373 = xor i64 %3372, %3363
  %3374 = lshr i64 %3373, 4
  %3375 = trunc i64 %3374 to i8
  %3376 = and i8 %3375, 1
  store i8 %3376, i8* %26, align 1
  %3377 = icmp eq i64 %3363, 0
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %29, align 1
  %3379 = lshr i64 %3363, 63
  %3380 = trunc i64 %3379 to i8
  store i8 %3380, i8* %32, align 1
  %3381 = lshr i64 %3362, 63
  %3382 = xor i64 %3379, %3381
  %3383 = add nuw nsw i64 %3382, %3379
  %3384 = icmp eq i64 %3383, 2
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %38, align 1
  %3386 = add i64 %3213, 25
  store i64 %3386, i64* %3, align 8
  %3387 = load i32, i32* %3161, align 4
  %3388 = sext i32 %3387 to i64
  %3389 = shl nsw i64 %3388, 4
  store i64 %3389, i64* %RDX.i2470, align 8
  %3390 = add i64 %3389, %3363
  store i64 %3390, i64* %RCX.i2479, align 8
  %3391 = icmp ult i64 %3390, %3363
  %3392 = icmp ult i64 %3390, %3389
  %3393 = or i1 %3391, %3392
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %14, align 1
  %3395 = trunc i64 %3390 to i32
  %3396 = and i32 %3395, 255
  %3397 = tail call i32 @llvm.ctpop.i32(i32 %3396)
  %3398 = trunc i32 %3397 to i8
  %3399 = and i8 %3398, 1
  %3400 = xor i8 %3399, 1
  store i8 %3400, i8* %21, align 1
  %3401 = xor i64 %3389, %3363
  %3402 = xor i64 %3401, %3390
  %3403 = lshr i64 %3402, 4
  %3404 = trunc i64 %3403 to i8
  %3405 = and i8 %3404, 1
  store i8 %3405, i8* %26, align 1
  %3406 = icmp eq i64 %3390, 0
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %29, align 1
  %3408 = lshr i64 %3390, 63
  %3409 = trunc i64 %3408 to i8
  store i8 %3409, i8* %32, align 1
  %3410 = lshr i64 %3388, 59
  %3411 = and i64 %3410, 1
  %3412 = xor i64 %3408, %3379
  %3413 = xor i64 %3408, %3411
  %3414 = add nuw nsw i64 %3412, %3413
  %3415 = icmp eq i64 %3414, 2
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %38, align 1
  %3417 = load i64, i64* %RBP.i, align 8
  %3418 = add i64 %3417, -28
  %3419 = add i64 %3213, 36
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  %3422 = sext i32 %3421 to i64
  %3423 = mul nsw i64 %3422, 24
  store i64 %3423, i64* %RDX.i2470, align 8
  %3424 = lshr i64 %3423, 63
  %3425 = load i64, i64* %RAX.i2481, align 8
  %3426 = add i64 %3423, %3425
  store i64 %3426, i64* %RAX.i2481, align 8
  %3427 = icmp ult i64 %3426, %3425
  %3428 = icmp ult i64 %3426, %3423
  %3429 = or i1 %3427, %3428
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %14, align 1
  %3431 = trunc i64 %3426 to i32
  %3432 = and i32 %3431, 255
  %3433 = tail call i32 @llvm.ctpop.i32(i32 %3432)
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = xor i8 %3435, 1
  store i8 %3436, i8* %21, align 1
  %3437 = xor i64 %3423, %3425
  %3438 = xor i64 %3437, %3426
  %3439 = lshr i64 %3438, 4
  %3440 = trunc i64 %3439 to i8
  %3441 = and i8 %3440, 1
  store i8 %3441, i8* %26, align 1
  %3442 = icmp eq i64 %3426, 0
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %29, align 1
  %3444 = lshr i64 %3426, 63
  %3445 = trunc i64 %3444 to i8
  store i8 %3445, i8* %32, align 1
  %3446 = lshr i64 %3425, 63
  %3447 = xor i64 %3444, %3446
  %3448 = xor i64 %3444, %3424
  %3449 = add nuw nsw i64 %3447, %3448
  %3450 = icmp eq i64 %3449, 2
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %38, align 1
  %3452 = add i64 %3417, -32
  %3453 = add i64 %3213, 47
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i32*
  %3455 = load i32, i32* %3454, align 4
  %3456 = sext i32 %3455 to i64
  %3457 = shl nsw i64 %3456, 3
  store i64 %3457, i64* %RDX.i2470, align 8
  %3458 = add i64 %3457, %3426
  store i64 %3458, i64* %RAX.i2481, align 8
  %3459 = icmp ult i64 %3458, %3426
  %3460 = icmp ult i64 %3458, %3457
  %3461 = or i1 %3459, %3460
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %14, align 1
  %3463 = trunc i64 %3458 to i32
  %3464 = and i32 %3463, 255
  %3465 = tail call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  store i8 %3468, i8* %21, align 1
  %3469 = xor i64 %3457, %3426
  %3470 = xor i64 %3469, %3458
  %3471 = lshr i64 %3470, 4
  %3472 = trunc i64 %3471 to i8
  %3473 = and i8 %3472, 1
  store i8 %3473, i8* %26, align 1
  %3474 = icmp eq i64 %3458, 0
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %29, align 1
  %3476 = lshr i64 %3458, 63
  %3477 = trunc i64 %3476 to i8
  store i8 %3477, i8* %32, align 1
  %3478 = lshr i64 %3456, 60
  %3479 = and i64 %3478, 1
  %3480 = xor i64 %3476, %3444
  %3481 = xor i64 %3476, %3479
  %3482 = add nuw nsw i64 %3480, %3481
  %3483 = icmp eq i64 %3482, 2
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %38, align 1
  %3485 = load i64, i64* %RCX.i2479, align 8
  store i64 %3485, i64* %RDI.i2476, align 8
  store i64 %3458, i64* %RSI.i2473, align 8
  %3486 = add i64 %3213, -2311
  %3487 = add i64 %3213, 65
  %3488 = load i64, i64* %6, align 8
  %3489 = add i64 %3488, -8
  %3490 = inttoptr i64 %3489 to i64*
  store i64 %3487, i64* %3490, align 8
  store i64 %3489, i64* %6, align 8
  store i64 %3486, i64* %3, align 8
  %call2_4198c3 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %3486, %struct.Memory* %MEMORY.0)
  %3491 = load i64, i64* %RBP.i, align 8
  %3492 = add i64 %3491, -48
  %3493 = load i64, i64* %3, align 8
  %3494 = add i64 %3493, 5
  store i64 %3494, i64* %3, align 8
  %3495 = load double, double* %44, align 1
  %3496 = inttoptr i64 %3492 to double*
  %3497 = load double, double* %3496, align 8
  %3498 = fadd double %3495, %3497
  store double %3498, double* %44, align 1
  %3499 = add i64 %3493, 10
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3492 to double*
  store double %3498, double* %3500, align 8
  %.pre250 = load i64, i64* %3, align 8
  br label %block_.L_4198d2

block_.L_4198d2:                                  ; preds = %block_.L_419887, %block_419837
  %3501 = phi i64 [ %.pre250, %block_.L_419887 ], [ %3358, %block_419837 ]
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -32
  %3504 = add i64 %3501, 8
  store i64 %3504, i64* %3, align 8
  %3505 = inttoptr i64 %3503 to i32*
  %3506 = load i32, i32* %3505, align 4
  %3507 = add i32 %3506, 1
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RAX.i2481, align 8
  %3509 = icmp eq i32 %3506, -1
  %3510 = icmp eq i32 %3507, 0
  %3511 = or i1 %3509, %3510
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %14, align 1
  %3513 = and i32 %3507, 255
  %3514 = tail call i32 @llvm.ctpop.i32(i32 %3513)
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = xor i8 %3516, 1
  store i8 %3517, i8* %21, align 1
  %3518 = xor i32 %3507, %3506
  %3519 = lshr i32 %3518, 4
  %3520 = trunc i32 %3519 to i8
  %3521 = and i8 %3520, 1
  store i8 %3521, i8* %26, align 1
  %3522 = zext i1 %3510 to i8
  store i8 %3522, i8* %29, align 1
  %3523 = lshr i32 %3507, 31
  %3524 = trunc i32 %3523 to i8
  store i8 %3524, i8* %32, align 1
  %3525 = lshr i32 %3506, 31
  %3526 = xor i32 %3523, %3525
  %3527 = add nuw nsw i32 %3526, %3523
  %3528 = icmp eq i32 %3527, 2
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %38, align 1
  %3530 = add i64 %3501, 14
  store i64 %3530, i64* %3, align 8
  store i32 %3507, i32* %3505, align 4
  %3531 = load i64, i64* %3, align 8
  %3532 = add i64 %3531, -197
  store i64 %3532, i64* %3, align 8
  br label %block_.L_41981b

block_.L_4198e5:                                  ; preds = %block_.L_41981b
  %3533 = add i64 %3186, 7
  store i64 %3533, i64* %3, align 8
  store i32 0, i32* %3161, align 4
  %.pre218 = load i64, i64* %3, align 8
  br label %block_.L_4198ec

block_.L_4198ec:                                  ; preds = %block_.L_419995, %block_.L_4198e5
  %3534 = phi i64 [ %.pre218, %block_.L_4198e5 ], [ %3867, %block_.L_419995 ]
  %3535 = load i64, i64* %RBP.i, align 8
  %3536 = add i64 %3535, -32
  %3537 = add i64 %3534, 4
  store i64 %3537, i64* %3, align 8
  %3538 = inttoptr i64 %3536 to i32*
  %3539 = load i32, i32* %3538, align 4
  %3540 = add i32 %3539, -2
  %3541 = icmp ult i32 %3539, 2
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %14, align 1
  %3543 = and i32 %3540, 255
  %3544 = tail call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  store i8 %3547, i8* %21, align 1
  %3548 = xor i32 %3540, %3539
  %3549 = lshr i32 %3548, 4
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  store i8 %3551, i8* %26, align 1
  %3552 = icmp eq i32 %3540, 0
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %29, align 1
  %3554 = lshr i32 %3540, 31
  %3555 = trunc i32 %3554 to i8
  store i8 %3555, i8* %32, align 1
  %3556 = lshr i32 %3539, 31
  %3557 = xor i32 %3554, %3556
  %3558 = add nuw nsw i32 %3557, %3556
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %38, align 1
  %3561 = icmp ne i8 %3555, 0
  %3562 = xor i1 %3561, %3559
  %.v280 = select i1 %3562, i64 10, i64 188
  %3563 = add i64 %3534, %.v280
  store i64 %3563, i64* %3, align 8
  br i1 %3562, label %block_4198f6, label %block_.L_4199a8

block_4198f6:                                     ; preds = %block_.L_4198ec
  %3564 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3564, i64* %RAX.i2481, align 8
  %3565 = add i64 %3564, 24
  %3566 = add i64 %3563, 12
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3565 to i32*
  %3568 = load i32, i32* %3567, align 4
  %3569 = add i32 %3568, -2
  %3570 = icmp ult i32 %3568, 2
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %14, align 1
  %3572 = and i32 %3569, 255
  %3573 = tail call i32 @llvm.ctpop.i32(i32 %3572)
  %3574 = trunc i32 %3573 to i8
  %3575 = and i8 %3574, 1
  %3576 = xor i8 %3575, 1
  store i8 %3576, i8* %21, align 1
  %3577 = xor i32 %3569, %3568
  %3578 = lshr i32 %3577, 4
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  store i8 %3580, i8* %26, align 1
  %3581 = icmp eq i32 %3569, 0
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %29, align 1
  %3583 = lshr i32 %3569, 31
  %3584 = trunc i32 %3583 to i8
  store i8 %3584, i8* %32, align 1
  %3585 = lshr i32 %3568, 31
  %3586 = xor i32 %3583, %3585
  %3587 = add nuw nsw i32 %3586, %3585
  %3588 = icmp eq i32 %3587, 2
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %38, align 1
  %.v300 = select i1 %3581, i64 18, i64 91
  %3590 = add i64 %3563, %.v300
  %3591 = add i64 %3590, 10
  store i64 %3591, i64* %3, align 8
  br i1 %3581, label %block_419908, label %block_.L_419951

block_419908:                                     ; preds = %block_4198f6
  store i64 ptrtoint (%G__0x4b3e70_type* @G__0x4b3e70 to i64), i64* %RAX.i2481, align 8
  %3592 = add i64 %3535, -24
  %3593 = add i64 %3590, 14
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i64*
  %3595 = load i64, i64* %3594, align 8
  store i64 %3595, i64* %RCX.i2479, align 8
  %3596 = add i64 %3590, 18
  store i64 %3596, i64* %3, align 8
  %3597 = load i32, i32* %3538, align 4
  %3598 = sext i32 %3597 to i64
  %3599 = shl nsw i64 %3598, 4
  store i64 %3599, i64* %RDX.i2470, align 8
  %3600 = add i64 %3599, %3595
  store i64 %3600, i64* %RCX.i2479, align 8
  %3601 = icmp ult i64 %3600, %3595
  %3602 = icmp ult i64 %3600, %3599
  %3603 = or i1 %3601, %3602
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %14, align 1
  %3605 = trunc i64 %3600 to i32
  %3606 = and i32 %3605, 255
  %3607 = tail call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  store i8 %3610, i8* %21, align 1
  %3611 = xor i64 %3599, %3595
  %3612 = xor i64 %3611, %3600
  %3613 = lshr i64 %3612, 4
  %3614 = trunc i64 %3613 to i8
  %3615 = and i8 %3614, 1
  store i8 %3615, i8* %26, align 1
  %3616 = icmp eq i64 %3600, 0
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %29, align 1
  %3618 = lshr i64 %3600, 63
  %3619 = trunc i64 %3618 to i8
  store i8 %3619, i8* %32, align 1
  %3620 = lshr i64 %3595, 63
  %3621 = lshr i64 %3598, 59
  %3622 = and i64 %3621, 1
  %3623 = xor i64 %3618, %3620
  %3624 = xor i64 %3618, %3622
  %3625 = add nuw nsw i64 %3623, %3624
  %3626 = icmp eq i64 %3625, 2
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %38, align 1
  %3628 = add i64 %3535, -28
  %3629 = add i64 %3590, 29
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i32*
  %3631 = load i32, i32* %3630, align 4
  %3632 = sext i32 %3631 to i64
  %3633 = shl nsw i64 %3632, 4
  store i64 %3633, i64* %RDX.i2470, align 8
  %3634 = load i64, i64* %RAX.i2481, align 8
  %3635 = add i64 %3633, %3634
  store i64 %3635, i64* %RAX.i2481, align 8
  %3636 = icmp ult i64 %3635, %3634
  %3637 = icmp ult i64 %3635, %3633
  %3638 = or i1 %3636, %3637
  %3639 = zext i1 %3638 to i8
  store i8 %3639, i8* %14, align 1
  %3640 = trunc i64 %3635 to i32
  %3641 = and i32 %3640, 255
  %3642 = tail call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  store i8 %3645, i8* %21, align 1
  %3646 = xor i64 %3633, %3634
  %3647 = xor i64 %3646, %3635
  %3648 = lshr i64 %3647, 4
  %3649 = trunc i64 %3648 to i8
  %3650 = and i8 %3649, 1
  store i8 %3650, i8* %26, align 1
  %3651 = icmp eq i64 %3635, 0
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %29, align 1
  %3653 = lshr i64 %3635, 63
  %3654 = trunc i64 %3653 to i8
  store i8 %3654, i8* %32, align 1
  %3655 = lshr i64 %3634, 63
  %3656 = lshr i64 %3632, 59
  %3657 = and i64 %3656, 1
  %3658 = xor i64 %3653, %3655
  %3659 = xor i64 %3653, %3657
  %3660 = add nuw nsw i64 %3658, %3659
  %3661 = icmp eq i64 %3660, 2
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %38, align 1
  %3663 = load i64, i64* %RBP.i, align 8
  %3664 = add i64 %3663, -32
  %3665 = add i64 %3590, 40
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = sext i32 %3667 to i64
  %3669 = shl nsw i64 %3668, 3
  store i64 %3669, i64* %RDX.i2470, align 8
  %3670 = add i64 %3669, %3635
  store i64 %3670, i64* %RAX.i2481, align 8
  %3671 = icmp ult i64 %3670, %3635
  %3672 = icmp ult i64 %3670, %3669
  %3673 = or i1 %3671, %3672
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %14, align 1
  %3675 = trunc i64 %3670 to i32
  %3676 = and i32 %3675, 255
  %3677 = tail call i32 @llvm.ctpop.i32(i32 %3676)
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  store i8 %3680, i8* %21, align 1
  %3681 = xor i64 %3669, %3635
  %3682 = xor i64 %3681, %3670
  %3683 = lshr i64 %3682, 4
  %3684 = trunc i64 %3683 to i8
  %3685 = and i8 %3684, 1
  store i8 %3685, i8* %26, align 1
  %3686 = icmp eq i64 %3670, 0
  %3687 = zext i1 %3686 to i8
  store i8 %3687, i8* %29, align 1
  %3688 = lshr i64 %3670, 63
  %3689 = trunc i64 %3688 to i8
  store i8 %3689, i8* %32, align 1
  %3690 = lshr i64 %3668, 60
  %3691 = and i64 %3690, 1
  %3692 = xor i64 %3688, %3653
  %3693 = xor i64 %3688, %3691
  %3694 = add nuw nsw i64 %3692, %3693
  %3695 = icmp eq i64 %3694, 2
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %38, align 1
  %3697 = load i64, i64* %RCX.i2479, align 8
  store i64 %3697, i64* %RDI.i2476, align 8
  store i64 %3670, i64* %RSI.i2473, align 8
  %3698 = add i64 %3590, -2440
  %3699 = add i64 %3590, 58
  %3700 = load i64, i64* %6, align 8
  %3701 = add i64 %3700, -8
  %3702 = inttoptr i64 %3701 to i64*
  store i64 %3699, i64* %3702, align 8
  store i64 %3701, i64* %6, align 8
  store i64 %3698, i64* %3, align 8
  %call2_41993d = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %3698, %struct.Memory* %MEMORY.0)
  %3703 = load i64, i64* %RBP.i, align 8
  %3704 = add i64 %3703, -48
  %3705 = load i64, i64* %3, align 8
  %3706 = add i64 %3705, 5
  store i64 %3706, i64* %3, align 8
  %3707 = load double, double* %44, align 1
  %3708 = inttoptr i64 %3704 to double*
  %3709 = load double, double* %3708, align 8
  %3710 = fadd double %3707, %3709
  store double %3710, double* %44, align 1
  %3711 = add i64 %3705, 10
  store i64 %3711, i64* %3, align 8
  %3712 = inttoptr i64 %3704 to double*
  store double %3710, double* %3712, align 8
  %3713 = load i64, i64* %3, align 8
  %3714 = add i64 %3713, 73
  store i64 %3714, i64* %3, align 8
  br label %block_.L_419995

block_.L_419951:                                  ; preds = %block_4198f6
  store i64 ptrtoint (%G__0x4b3e80_type* @G__0x4b3e80 to i64), i64* %RAX.i2481, align 8
  %3715 = add i64 %3535, -24
  %3716 = add i64 %3590, 14
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i64*
  %3718 = load i64, i64* %3717, align 8
  store i64 %3718, i64* %RCX.i2479, align 8
  %3719 = add i64 %3590, 18
  store i64 %3719, i64* %3, align 8
  %3720 = load i32, i32* %3538, align 4
  %3721 = sext i32 %3720 to i64
  %3722 = shl nsw i64 %3721, 4
  store i64 %3722, i64* %RDX.i2470, align 8
  %3723 = add i64 %3722, %3718
  store i64 %3723, i64* %RCX.i2479, align 8
  %3724 = icmp ult i64 %3723, %3718
  %3725 = icmp ult i64 %3723, %3722
  %3726 = or i1 %3724, %3725
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %14, align 1
  %3728 = trunc i64 %3723 to i32
  %3729 = and i32 %3728, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i64 %3722, %3718
  %3735 = xor i64 %3734, %3723
  %3736 = lshr i64 %3735, 4
  %3737 = trunc i64 %3736 to i8
  %3738 = and i8 %3737, 1
  store i8 %3738, i8* %26, align 1
  %3739 = icmp eq i64 %3723, 0
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %29, align 1
  %3741 = lshr i64 %3723, 63
  %3742 = trunc i64 %3741 to i8
  store i8 %3742, i8* %32, align 1
  %3743 = lshr i64 %3718, 63
  %3744 = lshr i64 %3721, 59
  %3745 = and i64 %3744, 1
  %3746 = xor i64 %3741, %3743
  %3747 = xor i64 %3741, %3745
  %3748 = add nuw nsw i64 %3746, %3747
  %3749 = icmp eq i64 %3748, 2
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %38, align 1
  %3751 = add i64 %3535, -28
  %3752 = add i64 %3590, 29
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i32*
  %3754 = load i32, i32* %3753, align 4
  %3755 = sext i32 %3754 to i64
  %3756 = shl nsw i64 %3755, 4
  store i64 %3756, i64* %RDX.i2470, align 8
  %3757 = load i64, i64* %RAX.i2481, align 8
  %3758 = add i64 %3756, %3757
  store i64 %3758, i64* %RAX.i2481, align 8
  %3759 = icmp ult i64 %3758, %3757
  %3760 = icmp ult i64 %3758, %3756
  %3761 = or i1 %3759, %3760
  %3762 = zext i1 %3761 to i8
  store i8 %3762, i8* %14, align 1
  %3763 = trunc i64 %3758 to i32
  %3764 = and i32 %3763, 255
  %3765 = tail call i32 @llvm.ctpop.i32(i32 %3764)
  %3766 = trunc i32 %3765 to i8
  %3767 = and i8 %3766, 1
  %3768 = xor i8 %3767, 1
  store i8 %3768, i8* %21, align 1
  %3769 = xor i64 %3756, %3757
  %3770 = xor i64 %3769, %3758
  %3771 = lshr i64 %3770, 4
  %3772 = trunc i64 %3771 to i8
  %3773 = and i8 %3772, 1
  store i8 %3773, i8* %26, align 1
  %3774 = icmp eq i64 %3758, 0
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %29, align 1
  %3776 = lshr i64 %3758, 63
  %3777 = trunc i64 %3776 to i8
  store i8 %3777, i8* %32, align 1
  %3778 = lshr i64 %3757, 63
  %3779 = lshr i64 %3755, 59
  %3780 = and i64 %3779, 1
  %3781 = xor i64 %3776, %3778
  %3782 = xor i64 %3776, %3780
  %3783 = add nuw nsw i64 %3781, %3782
  %3784 = icmp eq i64 %3783, 2
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %38, align 1
  %3786 = load i64, i64* %RBP.i, align 8
  %3787 = add i64 %3786, -32
  %3788 = add i64 %3590, 40
  store i64 %3788, i64* %3, align 8
  %3789 = inttoptr i64 %3787 to i32*
  %3790 = load i32, i32* %3789, align 4
  %3791 = sext i32 %3790 to i64
  %3792 = shl nsw i64 %3791, 3
  store i64 %3792, i64* %RDX.i2470, align 8
  %3793 = add i64 %3792, %3758
  store i64 %3793, i64* %RAX.i2481, align 8
  %3794 = icmp ult i64 %3793, %3758
  %3795 = icmp ult i64 %3793, %3792
  %3796 = or i1 %3794, %3795
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %14, align 1
  %3798 = trunc i64 %3793 to i32
  %3799 = and i32 %3798, 255
  %3800 = tail call i32 @llvm.ctpop.i32(i32 %3799)
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = xor i8 %3802, 1
  store i8 %3803, i8* %21, align 1
  %3804 = xor i64 %3792, %3758
  %3805 = xor i64 %3804, %3793
  %3806 = lshr i64 %3805, 4
  %3807 = trunc i64 %3806 to i8
  %3808 = and i8 %3807, 1
  store i8 %3808, i8* %26, align 1
  %3809 = icmp eq i64 %3793, 0
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %29, align 1
  %3811 = lshr i64 %3793, 63
  %3812 = trunc i64 %3811 to i8
  store i8 %3812, i8* %32, align 1
  %3813 = lshr i64 %3791, 60
  %3814 = and i64 %3813, 1
  %3815 = xor i64 %3811, %3776
  %3816 = xor i64 %3811, %3814
  %3817 = add nuw nsw i64 %3815, %3816
  %3818 = icmp eq i64 %3817, 2
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %38, align 1
  %3820 = load i64, i64* %RCX.i2479, align 8
  store i64 %3820, i64* %RDI.i2476, align 8
  store i64 %3793, i64* %RSI.i2473, align 8
  %3821 = add i64 %3590, -2513
  %3822 = add i64 %3590, 58
  %3823 = load i64, i64* %6, align 8
  %3824 = add i64 %3823, -8
  %3825 = inttoptr i64 %3824 to i64*
  store i64 %3822, i64* %3825, align 8
  store i64 %3824, i64* %6, align 8
  store i64 %3821, i64* %3, align 8
  %call2_419986 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %3821, %struct.Memory* %MEMORY.0)
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -48
  %3828 = load i64, i64* %3, align 8
  %3829 = add i64 %3828, 5
  store i64 %3829, i64* %3, align 8
  %3830 = load double, double* %44, align 1
  %3831 = inttoptr i64 %3827 to double*
  %3832 = load double, double* %3831, align 8
  %3833 = fadd double %3830, %3832
  store double %3833, double* %44, align 1
  %3834 = add i64 %3828, 10
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3827 to double*
  store double %3833, double* %3835, align 8
  %.pre249 = load i64, i64* %3, align 8
  br label %block_.L_419995

block_.L_419995:                                  ; preds = %block_.L_419951, %block_419908
  %3836 = phi i64 [ %.pre249, %block_.L_419951 ], [ %3714, %block_419908 ]
  %3837 = load i64, i64* %RBP.i, align 8
  %3838 = add i64 %3837, -32
  %3839 = add i64 %3836, 8
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i32*
  %3841 = load i32, i32* %3840, align 4
  %3842 = add i32 %3841, 1
  %3843 = zext i32 %3842 to i64
  store i64 %3843, i64* %RAX.i2481, align 8
  %3844 = icmp eq i32 %3841, -1
  %3845 = icmp eq i32 %3842, 0
  %3846 = or i1 %3844, %3845
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %14, align 1
  %3848 = and i32 %3842, 255
  %3849 = tail call i32 @llvm.ctpop.i32(i32 %3848)
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  %3852 = xor i8 %3851, 1
  store i8 %3852, i8* %21, align 1
  %3853 = xor i32 %3842, %3841
  %3854 = lshr i32 %3853, 4
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  store i8 %3856, i8* %26, align 1
  %3857 = zext i1 %3845 to i8
  store i8 %3857, i8* %29, align 1
  %3858 = lshr i32 %3842, 31
  %3859 = trunc i32 %3858 to i8
  store i8 %3859, i8* %32, align 1
  %3860 = lshr i32 %3841, 31
  %3861 = xor i32 %3858, %3860
  %3862 = add nuw nsw i32 %3861, %3858
  %3863 = icmp eq i32 %3862, 2
  %3864 = zext i1 %3863 to i8
  store i8 %3864, i8* %38, align 1
  %3865 = add i64 %3836, 14
  store i64 %3865, i64* %3, align 8
  store i32 %3842, i32* %3840, align 4
  %3866 = load i64, i64* %3, align 8
  %3867 = add i64 %3866, -183
  store i64 %3867, i64* %3, align 8
  br label %block_.L_4198ec

block_.L_4199a8:                                  ; preds = %block_.L_4198ec
  %3868 = add i64 %3563, 7
  store i64 %3868, i64* %3, align 8
  store i32 0, i32* %3538, align 4
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_4199af

block_.L_4199af:                                  ; preds = %block_.L_419a60, %block_.L_4199a8
  %3869 = phi i64 [ %.pre219, %block_.L_4199a8 ], [ %4242, %block_.L_419a60 ]
  %3870 = load i64, i64* %RBP.i, align 8
  %3871 = add i64 %3870, -32
  %3872 = add i64 %3869, 4
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = add i32 %3874, -4
  %3876 = icmp ult i32 %3874, 4
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %14, align 1
  %3878 = and i32 %3875, 255
  %3879 = tail call i32 @llvm.ctpop.i32(i32 %3878)
  %3880 = trunc i32 %3879 to i8
  %3881 = and i8 %3880, 1
  %3882 = xor i8 %3881, 1
  store i8 %3882, i8* %21, align 1
  %3883 = xor i32 %3875, %3874
  %3884 = lshr i32 %3883, 4
  %3885 = trunc i32 %3884 to i8
  %3886 = and i8 %3885, 1
  store i8 %3886, i8* %26, align 1
  %3887 = icmp eq i32 %3875, 0
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %29, align 1
  %3889 = lshr i32 %3875, 31
  %3890 = trunc i32 %3889 to i8
  store i8 %3890, i8* %32, align 1
  %3891 = lshr i32 %3874, 31
  %3892 = xor i32 %3889, %3891
  %3893 = add nuw nsw i32 %3892, %3891
  %3894 = icmp eq i32 %3893, 2
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %38, align 1
  %3896 = icmp ne i8 %3890, 0
  %3897 = xor i1 %3896, %3894
  %.v281 = select i1 %3897, i64 10, i64 196
  %3898 = add i64 %3869, %.v281
  store i64 %3898, i64* %3, align 8
  br i1 %3897, label %block_4199b9, label %block_.L_419a73

block_4199b9:                                     ; preds = %block_.L_4199af
  %3899 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3899, i64* %RAX.i2481, align 8
  %3900 = add i64 %3899, 24
  %3901 = add i64 %3898, 12
  store i64 %3901, i64* %3, align 8
  %3902 = inttoptr i64 %3900 to i32*
  %3903 = load i32, i32* %3902, align 4
  %3904 = add i32 %3903, -2
  %3905 = icmp ult i32 %3903, 2
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %14, align 1
  %3907 = and i32 %3904, 255
  %3908 = tail call i32 @llvm.ctpop.i32(i32 %3907)
  %3909 = trunc i32 %3908 to i8
  %3910 = and i8 %3909, 1
  %3911 = xor i8 %3910, 1
  store i8 %3911, i8* %21, align 1
  %3912 = xor i32 %3904, %3903
  %3913 = lshr i32 %3912, 4
  %3914 = trunc i32 %3913 to i8
  %3915 = and i8 %3914, 1
  store i8 %3915, i8* %26, align 1
  %3916 = icmp eq i32 %3904, 0
  %3917 = zext i1 %3916 to i8
  store i8 %3917, i8* %29, align 1
  %3918 = lshr i32 %3904, 31
  %3919 = trunc i32 %3918 to i8
  store i8 %3919, i8* %32, align 1
  %3920 = lshr i32 %3903, 31
  %3921 = xor i32 %3918, %3920
  %3922 = add nuw nsw i32 %3921, %3920
  %3923 = icmp eq i32 %3922, 2
  %3924 = zext i1 %3923 to i8
  store i8 %3924, i8* %38, align 1
  %.v299 = select i1 %3916, i64 18, i64 95
  %3925 = add i64 %3898, %.v299
  %3926 = add i64 %3925, 10
  store i64 %3926, i64* %3, align 8
  br i1 %3916, label %block_4199cb, label %block_.L_419a18

block_4199cb:                                     ; preds = %block_4199b9
  store i64 ptrtoint (%G__0x4b3eb0_type* @G__0x4b3eb0 to i64), i64* %RAX.i2481, align 8
  %3927 = add i64 %3870, -24
  %3928 = add i64 %3925, 14
  store i64 %3928, i64* %3, align 8
  %3929 = inttoptr i64 %3927 to i64*
  %3930 = load i64, i64* %3929, align 8
  %3931 = add i64 %3930, 32
  store i64 %3931, i64* %RCX.i2479, align 8
  %3932 = icmp ugt i64 %3930, -33
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %14, align 1
  %3934 = trunc i64 %3931 to i32
  %3935 = and i32 %3934, 255
  %3936 = tail call i32 @llvm.ctpop.i32(i32 %3935)
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  %3939 = xor i8 %3938, 1
  store i8 %3939, i8* %21, align 1
  %3940 = xor i64 %3931, %3930
  %3941 = lshr i64 %3940, 4
  %3942 = trunc i64 %3941 to i8
  %3943 = and i8 %3942, 1
  store i8 %3943, i8* %26, align 1
  %3944 = icmp eq i64 %3931, 0
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %29, align 1
  %3946 = lshr i64 %3931, 63
  %3947 = trunc i64 %3946 to i8
  store i8 %3947, i8* %32, align 1
  %3948 = lshr i64 %3930, 63
  %3949 = xor i64 %3946, %3948
  %3950 = add nuw nsw i64 %3949, %3946
  %3951 = icmp eq i64 %3950, 2
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %38, align 1
  %3953 = add i64 %3925, 22
  store i64 %3953, i64* %3, align 8
  %3954 = load i32, i32* %3873, align 4
  %3955 = sext i32 %3954 to i64
  %3956 = shl nsw i64 %3955, 4
  store i64 %3956, i64* %RDX.i2470, align 8
  %3957 = add i64 %3956, %3931
  store i64 %3957, i64* %RCX.i2479, align 8
  %3958 = icmp ult i64 %3957, %3931
  %3959 = icmp ult i64 %3957, %3956
  %3960 = or i1 %3958, %3959
  %3961 = zext i1 %3960 to i8
  store i8 %3961, i8* %14, align 1
  %3962 = trunc i64 %3957 to i32
  %3963 = and i32 %3962, 255
  %3964 = tail call i32 @llvm.ctpop.i32(i32 %3963)
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = xor i8 %3966, 1
  store i8 %3967, i8* %21, align 1
  %3968 = xor i64 %3956, %3931
  %3969 = xor i64 %3968, %3957
  %3970 = lshr i64 %3969, 4
  %3971 = trunc i64 %3970 to i8
  %3972 = and i8 %3971, 1
  store i8 %3972, i8* %26, align 1
  %3973 = icmp eq i64 %3957, 0
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %29, align 1
  %3975 = lshr i64 %3957, 63
  %3976 = trunc i64 %3975 to i8
  store i8 %3976, i8* %32, align 1
  %3977 = lshr i64 %3955, 59
  %3978 = and i64 %3977, 1
  %3979 = xor i64 %3975, %3946
  %3980 = xor i64 %3975, %3978
  %3981 = add nuw nsw i64 %3979, %3980
  %3982 = icmp eq i64 %3981, 2
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %38, align 1
  %3984 = load i64, i64* %RBP.i, align 8
  %3985 = add i64 %3984, -28
  %3986 = add i64 %3925, 33
  store i64 %3986, i64* %3, align 8
  %3987 = inttoptr i64 %3985 to i32*
  %3988 = load i32, i32* %3987, align 4
  %3989 = sext i32 %3988 to i64
  %3990 = shl nsw i64 %3989, 5
  store i64 %3990, i64* %RDX.i2470, align 8
  %3991 = load i64, i64* %RAX.i2481, align 8
  %3992 = add i64 %3990, %3991
  store i64 %3992, i64* %RAX.i2481, align 8
  %3993 = icmp ult i64 %3992, %3991
  %3994 = icmp ult i64 %3992, %3990
  %3995 = or i1 %3993, %3994
  %3996 = zext i1 %3995 to i8
  store i8 %3996, i8* %14, align 1
  %3997 = trunc i64 %3992 to i32
  %3998 = and i32 %3997, 255
  %3999 = tail call i32 @llvm.ctpop.i32(i32 %3998)
  %4000 = trunc i32 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = xor i8 %4001, 1
  store i8 %4002, i8* %21, align 1
  %4003 = xor i64 %3991, %3992
  %4004 = lshr i64 %4003, 4
  %4005 = trunc i64 %4004 to i8
  %4006 = and i8 %4005, 1
  store i8 %4006, i8* %26, align 1
  %4007 = icmp eq i64 %3992, 0
  %4008 = zext i1 %4007 to i8
  store i8 %4008, i8* %29, align 1
  %4009 = lshr i64 %3992, 63
  %4010 = trunc i64 %4009 to i8
  store i8 %4010, i8* %32, align 1
  %4011 = lshr i64 %3991, 63
  %4012 = lshr i64 %3989, 58
  %4013 = and i64 %4012, 1
  %4014 = xor i64 %4009, %4011
  %4015 = xor i64 %4009, %4013
  %4016 = add nuw nsw i64 %4014, %4015
  %4017 = icmp eq i64 %4016, 2
  %4018 = zext i1 %4017 to i8
  store i8 %4018, i8* %38, align 1
  %4019 = add i64 %3984, -32
  %4020 = add i64 %3925, 44
  store i64 %4020, i64* %3, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = sext i32 %4022 to i64
  %4024 = shl nsw i64 %4023, 3
  store i64 %4024, i64* %RDX.i2470, align 8
  %4025 = add i64 %4024, %3992
  store i64 %4025, i64* %RAX.i2481, align 8
  %4026 = icmp ult i64 %4025, %3992
  %4027 = icmp ult i64 %4025, %4024
  %4028 = or i1 %4026, %4027
  %4029 = zext i1 %4028 to i8
  store i8 %4029, i8* %14, align 1
  %4030 = trunc i64 %4025 to i32
  %4031 = and i32 %4030, 255
  %4032 = tail call i32 @llvm.ctpop.i32(i32 %4031)
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  store i8 %4035, i8* %21, align 1
  %4036 = xor i64 %4024, %3992
  %4037 = xor i64 %4036, %4025
  %4038 = lshr i64 %4037, 4
  %4039 = trunc i64 %4038 to i8
  %4040 = and i8 %4039, 1
  store i8 %4040, i8* %26, align 1
  %4041 = icmp eq i64 %4025, 0
  %4042 = zext i1 %4041 to i8
  store i8 %4042, i8* %29, align 1
  %4043 = lshr i64 %4025, 63
  %4044 = trunc i64 %4043 to i8
  store i8 %4044, i8* %32, align 1
  %4045 = lshr i64 %4023, 60
  %4046 = and i64 %4045, 1
  %4047 = xor i64 %4043, %4009
  %4048 = xor i64 %4043, %4046
  %4049 = add nuw nsw i64 %4047, %4048
  %4050 = icmp eq i64 %4049, 2
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %38, align 1
  %4052 = load i64, i64* %RCX.i2479, align 8
  store i64 %4052, i64* %RDI.i2476, align 8
  store i64 %4025, i64* %RSI.i2473, align 8
  %4053 = add i64 %3925, -2635
  %4054 = add i64 %3925, 62
  %4055 = load i64, i64* %6, align 8
  %4056 = add i64 %4055, -8
  %4057 = inttoptr i64 %4056 to i64*
  store i64 %4054, i64* %4057, align 8
  store i64 %4056, i64* %6, align 8
  store i64 %4053, i64* %3, align 8
  %call2_419a04 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %4053, %struct.Memory* %MEMORY.0)
  %4058 = load i64, i64* %RBP.i, align 8
  %4059 = add i64 %4058, -48
  %4060 = load i64, i64* %3, align 8
  %4061 = add i64 %4060, 5
  store i64 %4061, i64* %3, align 8
  %4062 = load double, double* %44, align 1
  %4063 = inttoptr i64 %4059 to double*
  %4064 = load double, double* %4063, align 8
  %4065 = fadd double %4062, %4064
  store double %4065, double* %44, align 1
  %4066 = add i64 %4060, 10
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4059 to double*
  store double %4065, double* %4067, align 8
  %4068 = load i64, i64* %3, align 8
  %4069 = add i64 %4068, 77
  store i64 %4069, i64* %3, align 8
  br label %block_.L_419a60

block_.L_419a18:                                  ; preds = %block_4199b9
  store i64 ptrtoint (%G__0x4b3ed0_type* @G__0x4b3ed0 to i64), i64* %RAX.i2481, align 8
  %4070 = add i64 %3870, -24
  %4071 = add i64 %3925, 14
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i64*
  %4073 = load i64, i64* %4072, align 8
  %4074 = add i64 %4073, 32
  store i64 %4074, i64* %RCX.i2479, align 8
  %4075 = icmp ugt i64 %4073, -33
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %14, align 1
  %4077 = trunc i64 %4074 to i32
  %4078 = and i32 %4077, 255
  %4079 = tail call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  store i8 %4082, i8* %21, align 1
  %4083 = xor i64 %4074, %4073
  %4084 = lshr i64 %4083, 4
  %4085 = trunc i64 %4084 to i8
  %4086 = and i8 %4085, 1
  store i8 %4086, i8* %26, align 1
  %4087 = icmp eq i64 %4074, 0
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %29, align 1
  %4089 = lshr i64 %4074, 63
  %4090 = trunc i64 %4089 to i8
  store i8 %4090, i8* %32, align 1
  %4091 = lshr i64 %4073, 63
  %4092 = xor i64 %4089, %4091
  %4093 = add nuw nsw i64 %4092, %4089
  %4094 = icmp eq i64 %4093, 2
  %4095 = zext i1 %4094 to i8
  store i8 %4095, i8* %38, align 1
  %4096 = add i64 %3925, 22
  store i64 %4096, i64* %3, align 8
  %4097 = load i32, i32* %3873, align 4
  %4098 = sext i32 %4097 to i64
  %4099 = shl nsw i64 %4098, 4
  store i64 %4099, i64* %RDX.i2470, align 8
  %4100 = add i64 %4099, %4074
  store i64 %4100, i64* %RCX.i2479, align 8
  %4101 = icmp ult i64 %4100, %4074
  %4102 = icmp ult i64 %4100, %4099
  %4103 = or i1 %4101, %4102
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %14, align 1
  %4105 = trunc i64 %4100 to i32
  %4106 = and i32 %4105, 255
  %4107 = tail call i32 @llvm.ctpop.i32(i32 %4106)
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  %4110 = xor i8 %4109, 1
  store i8 %4110, i8* %21, align 1
  %4111 = xor i64 %4099, %4074
  %4112 = xor i64 %4111, %4100
  %4113 = lshr i64 %4112, 4
  %4114 = trunc i64 %4113 to i8
  %4115 = and i8 %4114, 1
  store i8 %4115, i8* %26, align 1
  %4116 = icmp eq i64 %4100, 0
  %4117 = zext i1 %4116 to i8
  store i8 %4117, i8* %29, align 1
  %4118 = lshr i64 %4100, 63
  %4119 = trunc i64 %4118 to i8
  store i8 %4119, i8* %32, align 1
  %4120 = lshr i64 %4098, 59
  %4121 = and i64 %4120, 1
  %4122 = xor i64 %4118, %4089
  %4123 = xor i64 %4118, %4121
  %4124 = add nuw nsw i64 %4122, %4123
  %4125 = icmp eq i64 %4124, 2
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %38, align 1
  %4127 = load i64, i64* %RBP.i, align 8
  %4128 = add i64 %4127, -28
  %4129 = add i64 %3925, 33
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = sext i32 %4131 to i64
  %4133 = shl nsw i64 %4132, 5
  store i64 %4133, i64* %RDX.i2470, align 8
  %4134 = load i64, i64* %RAX.i2481, align 8
  %4135 = add i64 %4133, %4134
  store i64 %4135, i64* %RAX.i2481, align 8
  %4136 = icmp ult i64 %4135, %4134
  %4137 = icmp ult i64 %4135, %4133
  %4138 = or i1 %4136, %4137
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %14, align 1
  %4140 = trunc i64 %4135 to i32
  %4141 = and i32 %4140, 255
  %4142 = tail call i32 @llvm.ctpop.i32(i32 %4141)
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  %4145 = xor i8 %4144, 1
  store i8 %4145, i8* %21, align 1
  %4146 = xor i64 %4134, %4135
  %4147 = lshr i64 %4146, 4
  %4148 = trunc i64 %4147 to i8
  %4149 = and i8 %4148, 1
  store i8 %4149, i8* %26, align 1
  %4150 = icmp eq i64 %4135, 0
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %29, align 1
  %4152 = lshr i64 %4135, 63
  %4153 = trunc i64 %4152 to i8
  store i8 %4153, i8* %32, align 1
  %4154 = lshr i64 %4134, 63
  %4155 = lshr i64 %4132, 58
  %4156 = and i64 %4155, 1
  %4157 = xor i64 %4152, %4154
  %4158 = xor i64 %4152, %4156
  %4159 = add nuw nsw i64 %4157, %4158
  %4160 = icmp eq i64 %4159, 2
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %38, align 1
  %4162 = add i64 %4127, -32
  %4163 = add i64 %3925, 44
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i32*
  %4165 = load i32, i32* %4164, align 4
  %4166 = sext i32 %4165 to i64
  %4167 = shl nsw i64 %4166, 3
  store i64 %4167, i64* %RDX.i2470, align 8
  %4168 = add i64 %4167, %4135
  store i64 %4168, i64* %RAX.i2481, align 8
  %4169 = icmp ult i64 %4168, %4135
  %4170 = icmp ult i64 %4168, %4167
  %4171 = or i1 %4169, %4170
  %4172 = zext i1 %4171 to i8
  store i8 %4172, i8* %14, align 1
  %4173 = trunc i64 %4168 to i32
  %4174 = and i32 %4173, 255
  %4175 = tail call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  store i8 %4178, i8* %21, align 1
  %4179 = xor i64 %4167, %4135
  %4180 = xor i64 %4179, %4168
  %4181 = lshr i64 %4180, 4
  %4182 = trunc i64 %4181 to i8
  %4183 = and i8 %4182, 1
  store i8 %4183, i8* %26, align 1
  %4184 = icmp eq i64 %4168, 0
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %29, align 1
  %4186 = lshr i64 %4168, 63
  %4187 = trunc i64 %4186 to i8
  store i8 %4187, i8* %32, align 1
  %4188 = lshr i64 %4166, 60
  %4189 = and i64 %4188, 1
  %4190 = xor i64 %4186, %4152
  %4191 = xor i64 %4186, %4189
  %4192 = add nuw nsw i64 %4190, %4191
  %4193 = icmp eq i64 %4192, 2
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %38, align 1
  %4195 = load i64, i64* %RCX.i2479, align 8
  store i64 %4195, i64* %RDI.i2476, align 8
  store i64 %4168, i64* %RSI.i2473, align 8
  %4196 = add i64 %3925, -2712
  %4197 = add i64 %3925, 62
  %4198 = load i64, i64* %6, align 8
  %4199 = add i64 %4198, -8
  %4200 = inttoptr i64 %4199 to i64*
  store i64 %4197, i64* %4200, align 8
  store i64 %4199, i64* %6, align 8
  store i64 %4196, i64* %3, align 8
  %call2_419a51 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %4196, %struct.Memory* %MEMORY.0)
  %4201 = load i64, i64* %RBP.i, align 8
  %4202 = add i64 %4201, -48
  %4203 = load i64, i64* %3, align 8
  %4204 = add i64 %4203, 5
  store i64 %4204, i64* %3, align 8
  %4205 = load double, double* %44, align 1
  %4206 = inttoptr i64 %4202 to double*
  %4207 = load double, double* %4206, align 8
  %4208 = fadd double %4205, %4207
  store double %4208, double* %44, align 1
  %4209 = add i64 %4203, 10
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4202 to double*
  store double %4208, double* %4210, align 8
  %.pre248 = load i64, i64* %3, align 8
  br label %block_.L_419a60

block_.L_419a60:                                  ; preds = %block_.L_419a18, %block_4199cb
  %4211 = phi i64 [ %.pre248, %block_.L_419a18 ], [ %4069, %block_4199cb ]
  %4212 = load i64, i64* %RBP.i, align 8
  %4213 = add i64 %4212, -32
  %4214 = add i64 %4211, 8
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = add i32 %4216, 1
  %4218 = zext i32 %4217 to i64
  store i64 %4218, i64* %RAX.i2481, align 8
  %4219 = icmp eq i32 %4216, -1
  %4220 = icmp eq i32 %4217, 0
  %4221 = or i1 %4219, %4220
  %4222 = zext i1 %4221 to i8
  store i8 %4222, i8* %14, align 1
  %4223 = and i32 %4217, 255
  %4224 = tail call i32 @llvm.ctpop.i32(i32 %4223)
  %4225 = trunc i32 %4224 to i8
  %4226 = and i8 %4225, 1
  %4227 = xor i8 %4226, 1
  store i8 %4227, i8* %21, align 1
  %4228 = xor i32 %4217, %4216
  %4229 = lshr i32 %4228, 4
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  store i8 %4231, i8* %26, align 1
  %4232 = zext i1 %4220 to i8
  store i8 %4232, i8* %29, align 1
  %4233 = lshr i32 %4217, 31
  %4234 = trunc i32 %4233 to i8
  store i8 %4234, i8* %32, align 1
  %4235 = lshr i32 %4216, 31
  %4236 = xor i32 %4233, %4235
  %4237 = add nuw nsw i32 %4236, %4233
  %4238 = icmp eq i32 %4237, 2
  %4239 = zext i1 %4238 to i8
  store i8 %4239, i8* %38, align 1
  %4240 = add i64 %4211, 14
  store i64 %4240, i64* %3, align 8
  store i32 %4217, i32* %4215, align 4
  %4241 = load i64, i64* %3, align 8
  %4242 = add i64 %4241, -191
  store i64 %4242, i64* %3, align 8
  br label %block_.L_4199af

block_.L_419a73:                                  ; preds = %block_.L_4199af
  %4243 = add i64 %3870, -36
  %4244 = add i64 %3898, 7
  store i64 %4244, i64* %3, align 8
  %4245 = inttoptr i64 %4243 to i32*
  store i32 0, i32* %4245, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_419a7a

block_.L_419a7a:                                  ; preds = %block_.L_419b7b, %block_.L_419a73
  %4246 = phi i64 [ %.pre220, %block_.L_419a73 ], [ %4814, %block_.L_419b7b ]
  %4247 = load i64, i64* %RBP.i, align 8
  %4248 = add i64 %4247, -36
  %4249 = add i64 %4246, 4
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i32*
  %4251 = load i32, i32* %4250, align 4
  %4252 = add i32 %4251, -3
  %4253 = icmp ult i32 %4251, 3
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %14, align 1
  %4255 = and i32 %4252, 255
  %4256 = tail call i32 @llvm.ctpop.i32(i32 %4255)
  %4257 = trunc i32 %4256 to i8
  %4258 = and i8 %4257, 1
  %4259 = xor i8 %4258, 1
  store i8 %4259, i8* %21, align 1
  %4260 = xor i32 %4252, %4251
  %4261 = lshr i32 %4260, 4
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  store i8 %4263, i8* %26, align 1
  %4264 = icmp eq i32 %4252, 0
  %4265 = zext i1 %4264 to i8
  store i8 %4265, i8* %29, align 1
  %4266 = lshr i32 %4252, 31
  %4267 = trunc i32 %4266 to i8
  store i8 %4267, i8* %32, align 1
  %4268 = lshr i32 %4251, 31
  %4269 = xor i32 %4266, %4268
  %4270 = add nuw nsw i32 %4269, %4268
  %4271 = icmp eq i32 %4270, 2
  %4272 = zext i1 %4271 to i8
  store i8 %4272, i8* %38, align 1
  %4273 = icmp ne i8 %4267, 0
  %4274 = xor i1 %4273, %4271
  %.v282 = select i1 %4274, i64 10, i64 276
  %4275 = add i64 %4246, %.v282
  store i64 %4275, i64* %3, align 8
  br i1 %4274, label %block_419a84, label %block_.L_419b8e

block_419a84:                                     ; preds = %block_.L_419a7a
  %4276 = add i64 %4247, -32
  %4277 = add i64 %4275, 7
  store i64 %4277, i64* %3, align 8
  %4278 = inttoptr i64 %4276 to i32*
  store i32 0, i32* %4278, align 4
  %.pre246 = load i64, i64* %3, align 8
  br label %block_.L_419a8b

block_.L_419a8b:                                  ; preds = %block_.L_419b68, %block_419a84
  %4279 = phi i64 [ %.pre246, %block_419a84 ], [ %4784, %block_.L_419b68 ]
  %4280 = load i64, i64* %RBP.i, align 8
  %4281 = add i64 %4280, -32
  %4282 = add i64 %4279, 4
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i32*
  %4284 = load i32, i32* %4283, align 4
  %4285 = add i32 %4284, -4
  %4286 = icmp ult i32 %4284, 4
  %4287 = zext i1 %4286 to i8
  store i8 %4287, i8* %14, align 1
  %4288 = and i32 %4285, 255
  %4289 = tail call i32 @llvm.ctpop.i32(i32 %4288)
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = xor i8 %4291, 1
  store i8 %4292, i8* %21, align 1
  %4293 = xor i32 %4285, %4284
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %26, align 1
  %4297 = icmp eq i32 %4285, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %29, align 1
  %4299 = lshr i32 %4285, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %32, align 1
  %4301 = lshr i32 %4284, 31
  %4302 = xor i32 %4299, %4301
  %4303 = add nuw nsw i32 %4302, %4301
  %4304 = icmp eq i32 %4303, 2
  %4305 = zext i1 %4304 to i8
  store i8 %4305, i8* %38, align 1
  %4306 = icmp ne i8 %4300, 0
  %4307 = xor i1 %4306, %4304
  %.v268 = select i1 %4307, i64 10, i64 240
  %4308 = add i64 %4279, %.v268
  store i64 %4308, i64* %3, align 8
  br i1 %4307, label %block_419a95, label %block_.L_419b7b

block_419a95:                                     ; preds = %block_.L_419a8b
  %4309 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4309, i64* %RAX.i2481, align 8
  %4310 = add i64 %4309, 24
  %4311 = add i64 %4308, 12
  store i64 %4311, i64* %3, align 8
  %4312 = inttoptr i64 %4310 to i32*
  %4313 = load i32, i32* %4312, align 4
  %4314 = add i32 %4313, -2
  %4315 = icmp ult i32 %4313, 2
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %14, align 1
  %4317 = and i32 %4314, 255
  %4318 = tail call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  store i8 %4321, i8* %21, align 1
  %4322 = xor i32 %4314, %4313
  %4323 = lshr i32 %4322, 4
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  store i8 %4325, i8* %26, align 1
  %4326 = icmp eq i32 %4314, 0
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %29, align 1
  %4328 = lshr i32 %4314, 31
  %4329 = trunc i32 %4328 to i8
  store i8 %4329, i8* %32, align 1
  %4330 = lshr i32 %4313, 31
  %4331 = xor i32 %4328, %4330
  %4332 = add nuw nsw i32 %4331, %4330
  %4333 = icmp eq i32 %4332, 2
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %38, align 1
  %.v298 = select i1 %4326, i64 18, i64 117
  %4335 = add i64 %4308, %.v298
  %4336 = add i64 %4335, 10
  store i64 %4336, i64* %3, align 8
  br i1 %4326, label %block_419aa7, label %block_.L_419b0a

block_419aa7:                                     ; preds = %block_419a95
  store i64 ptrtoint (%G__0x4b3f30_type* @G__0x4b3f30 to i64), i64* %RAX.i2481, align 8
  %4337 = add i64 %4280, -24
  %4338 = add i64 %4335, 14
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i64*
  %4340 = load i64, i64* %4339, align 8
  %4341 = add i64 %4340, 96
  store i64 %4341, i64* %RCX.i2479, align 8
  %4342 = icmp ugt i64 %4340, -97
  %4343 = zext i1 %4342 to i8
  store i8 %4343, i8* %14, align 1
  %4344 = trunc i64 %4341 to i32
  %4345 = and i32 %4344, 255
  %4346 = tail call i32 @llvm.ctpop.i32(i32 %4345)
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = xor i8 %4348, 1
  store i8 %4349, i8* %21, align 1
  %4350 = xor i64 %4341, %4340
  %4351 = lshr i64 %4350, 4
  %4352 = trunc i64 %4351 to i8
  %4353 = and i8 %4352, 1
  store i8 %4353, i8* %26, align 1
  %4354 = icmp eq i64 %4341, 0
  %4355 = zext i1 %4354 to i8
  store i8 %4355, i8* %29, align 1
  %4356 = lshr i64 %4341, 63
  %4357 = trunc i64 %4356 to i8
  store i8 %4357, i8* %32, align 1
  %4358 = lshr i64 %4340, 63
  %4359 = xor i64 %4356, %4358
  %4360 = add nuw nsw i64 %4359, %4356
  %4361 = icmp eq i64 %4360, 2
  %4362 = zext i1 %4361 to i8
  store i8 %4362, i8* %38, align 1
  %4363 = add i64 %4280, -36
  %4364 = add i64 %4335, 22
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4363 to i32*
  %4366 = load i32, i32* %4365, align 4
  %4367 = sext i32 %4366 to i64
  %4368 = shl nsw i64 %4367, 6
  store i64 %4368, i64* %RDX.i2470, align 8
  %4369 = add i64 %4368, %4341
  store i64 %4369, i64* %RCX.i2479, align 8
  %4370 = icmp ult i64 %4369, %4341
  %4371 = icmp ult i64 %4369, %4368
  %4372 = or i1 %4370, %4371
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %14, align 1
  %4374 = trunc i64 %4369 to i32
  %4375 = and i32 %4374, 255
  %4376 = tail call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  store i8 %4379, i8* %21, align 1
  %4380 = xor i64 %4341, %4369
  %4381 = lshr i64 %4380, 4
  %4382 = trunc i64 %4381 to i8
  %4383 = and i8 %4382, 1
  store i8 %4383, i8* %26, align 1
  %4384 = icmp eq i64 %4369, 0
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %29, align 1
  %4386 = lshr i64 %4369, 63
  %4387 = trunc i64 %4386 to i8
  store i8 %4387, i8* %32, align 1
  %4388 = lshr i64 %4367, 57
  %4389 = and i64 %4388, 1
  %4390 = xor i64 %4386, %4356
  %4391 = xor i64 %4386, %4389
  %4392 = add nuw nsw i64 %4390, %4391
  %4393 = icmp eq i64 %4392, 2
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %38, align 1
  %4395 = load i64, i64* %RBP.i, align 8
  %4396 = add i64 %4395, -32
  %4397 = add i64 %4335, 33
  store i64 %4397, i64* %3, align 8
  %4398 = inttoptr i64 %4396 to i32*
  %4399 = load i32, i32* %4398, align 4
  %4400 = sext i32 %4399 to i64
  %4401 = shl nsw i64 %4400, 4
  store i64 %4401, i64* %RDX.i2470, align 8
  %4402 = add i64 %4401, %4369
  store i64 %4402, i64* %RCX.i2479, align 8
  %4403 = icmp ult i64 %4402, %4369
  %4404 = icmp ult i64 %4402, %4401
  %4405 = or i1 %4403, %4404
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %14, align 1
  %4407 = trunc i64 %4402 to i32
  %4408 = and i32 %4407, 255
  %4409 = tail call i32 @llvm.ctpop.i32(i32 %4408)
  %4410 = trunc i32 %4409 to i8
  %4411 = and i8 %4410, 1
  %4412 = xor i8 %4411, 1
  store i8 %4412, i8* %21, align 1
  %4413 = xor i64 %4401, %4369
  %4414 = xor i64 %4413, %4402
  %4415 = lshr i64 %4414, 4
  %4416 = trunc i64 %4415 to i8
  %4417 = and i8 %4416, 1
  store i8 %4417, i8* %26, align 1
  %4418 = icmp eq i64 %4402, 0
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %29, align 1
  %4420 = lshr i64 %4402, 63
  %4421 = trunc i64 %4420 to i8
  store i8 %4421, i8* %32, align 1
  %4422 = lshr i64 %4400, 59
  %4423 = and i64 %4422, 1
  %4424 = xor i64 %4420, %4386
  %4425 = xor i64 %4420, %4423
  %4426 = add nuw nsw i64 %4424, %4425
  %4427 = icmp eq i64 %4426, 2
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %38, align 1
  %4429 = add i64 %4395, -28
  %4430 = add i64 %4335, 44
  store i64 %4430, i64* %3, align 8
  %4431 = inttoptr i64 %4429 to i32*
  %4432 = load i32, i32* %4431, align 4
  %4433 = sext i32 %4432 to i64
  %4434 = mul nsw i64 %4433, 96
  store i64 %4434, i64* %RDX.i2470, align 8
  %4435 = lshr i64 %4434, 63
  %4436 = load i64, i64* %RAX.i2481, align 8
  %4437 = add i64 %4434, %4436
  store i64 %4437, i64* %RAX.i2481, align 8
  %4438 = icmp ult i64 %4437, %4436
  %4439 = icmp ult i64 %4437, %4434
  %4440 = or i1 %4438, %4439
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %14, align 1
  %4442 = trunc i64 %4437 to i32
  %4443 = and i32 %4442, 255
  %4444 = tail call i32 @llvm.ctpop.i32(i32 %4443)
  %4445 = trunc i32 %4444 to i8
  %4446 = and i8 %4445, 1
  %4447 = xor i8 %4446, 1
  store i8 %4447, i8* %21, align 1
  %4448 = xor i64 %4436, %4437
  %4449 = lshr i64 %4448, 4
  %4450 = trunc i64 %4449 to i8
  %4451 = and i8 %4450, 1
  store i8 %4451, i8* %26, align 1
  %4452 = icmp eq i64 %4437, 0
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %29, align 1
  %4454 = lshr i64 %4437, 63
  %4455 = trunc i64 %4454 to i8
  store i8 %4455, i8* %32, align 1
  %4456 = lshr i64 %4436, 63
  %4457 = xor i64 %4454, %4456
  %4458 = xor i64 %4454, %4435
  %4459 = add nuw nsw i64 %4457, %4458
  %4460 = icmp eq i64 %4459, 2
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %38, align 1
  %4462 = load i64, i64* %RBP.i, align 8
  %4463 = add i64 %4462, -36
  %4464 = add i64 %4335, 55
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i32*
  %4466 = load i32, i32* %4465, align 4
  %4467 = sext i32 %4466 to i64
  %4468 = shl nsw i64 %4467, 5
  store i64 %4468, i64* %RDX.i2470, align 8
  %4469 = add i64 %4468, %4437
  store i64 %4469, i64* %RAX.i2481, align 8
  %4470 = icmp ult i64 %4469, %4437
  %4471 = icmp ult i64 %4469, %4468
  %4472 = or i1 %4470, %4471
  %4473 = zext i1 %4472 to i8
  store i8 %4473, i8* %14, align 1
  %4474 = trunc i64 %4469 to i32
  %4475 = and i32 %4474, 255
  %4476 = tail call i32 @llvm.ctpop.i32(i32 %4475)
  %4477 = trunc i32 %4476 to i8
  %4478 = and i8 %4477, 1
  %4479 = xor i8 %4478, 1
  store i8 %4479, i8* %21, align 1
  %4480 = xor i64 %4437, %4469
  %4481 = lshr i64 %4480, 4
  %4482 = trunc i64 %4481 to i8
  %4483 = and i8 %4482, 1
  store i8 %4483, i8* %26, align 1
  %4484 = icmp eq i64 %4469, 0
  %4485 = zext i1 %4484 to i8
  store i8 %4485, i8* %29, align 1
  %4486 = lshr i64 %4469, 63
  %4487 = trunc i64 %4486 to i8
  store i8 %4487, i8* %32, align 1
  %4488 = lshr i64 %4467, 58
  %4489 = and i64 %4488, 1
  %4490 = xor i64 %4486, %4454
  %4491 = xor i64 %4486, %4489
  %4492 = add nuw nsw i64 %4490, %4491
  %4493 = icmp eq i64 %4492, 2
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %38, align 1
  %4495 = add i64 %4462, -32
  %4496 = add i64 %4335, 66
  store i64 %4496, i64* %3, align 8
  %4497 = inttoptr i64 %4495 to i32*
  %4498 = load i32, i32* %4497, align 4
  %4499 = sext i32 %4498 to i64
  %4500 = shl nsw i64 %4499, 3
  store i64 %4500, i64* %RDX.i2470, align 8
  %4501 = add i64 %4500, %4469
  store i64 %4501, i64* %RAX.i2481, align 8
  %4502 = icmp ult i64 %4501, %4469
  %4503 = icmp ult i64 %4501, %4500
  %4504 = or i1 %4502, %4503
  %4505 = zext i1 %4504 to i8
  store i8 %4505, i8* %14, align 1
  %4506 = trunc i64 %4501 to i32
  %4507 = and i32 %4506, 255
  %4508 = tail call i32 @llvm.ctpop.i32(i32 %4507)
  %4509 = trunc i32 %4508 to i8
  %4510 = and i8 %4509, 1
  %4511 = xor i8 %4510, 1
  store i8 %4511, i8* %21, align 1
  %4512 = xor i64 %4500, %4469
  %4513 = xor i64 %4512, %4501
  %4514 = lshr i64 %4513, 4
  %4515 = trunc i64 %4514 to i8
  %4516 = and i8 %4515, 1
  store i8 %4516, i8* %26, align 1
  %4517 = icmp eq i64 %4501, 0
  %4518 = zext i1 %4517 to i8
  store i8 %4518, i8* %29, align 1
  %4519 = lshr i64 %4501, 63
  %4520 = trunc i64 %4519 to i8
  store i8 %4520, i8* %32, align 1
  %4521 = lshr i64 %4499, 60
  %4522 = and i64 %4521, 1
  %4523 = xor i64 %4519, %4486
  %4524 = xor i64 %4519, %4522
  %4525 = add nuw nsw i64 %4523, %4524
  %4526 = icmp eq i64 %4525, 2
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %38, align 1
  %4528 = load i64, i64* %RCX.i2479, align 8
  store i64 %4528, i64* %RDI.i2476, align 8
  store i64 %4501, i64* %RSI.i2473, align 8
  %4529 = add i64 %4335, -2855
  %4530 = add i64 %4335, 84
  %4531 = load i64, i64* %6, align 8
  %4532 = add i64 %4531, -8
  %4533 = inttoptr i64 %4532 to i64*
  store i64 %4530, i64* %4533, align 8
  store i64 %4532, i64* %6, align 8
  store i64 %4529, i64* %3, align 8
  %call2_419af6 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %4529, %struct.Memory* %MEMORY.0)
  %4534 = load i64, i64* %RBP.i, align 8
  %4535 = add i64 %4534, -48
  %4536 = load i64, i64* %3, align 8
  %4537 = add i64 %4536, 5
  store i64 %4537, i64* %3, align 8
  %4538 = load double, double* %44, align 1
  %4539 = inttoptr i64 %4535 to double*
  %4540 = load double, double* %4539, align 8
  %4541 = fadd double %4538, %4540
  store double %4541, double* %44, align 1
  %4542 = add i64 %4536, 10
  store i64 %4542, i64* %3, align 8
  %4543 = inttoptr i64 %4535 to double*
  store double %4541, double* %4543, align 8
  %4544 = load i64, i64* %3, align 8
  %4545 = add i64 %4544, 99
  store i64 %4545, i64* %3, align 8
  br label %block_.L_419b68

block_.L_419b0a:                                  ; preds = %block_419a95
  store i64 ptrtoint (%G__0x4b3f90_type* @G__0x4b3f90 to i64), i64* %RAX.i2481, align 8
  %4546 = add i64 %4280, -24
  %4547 = add i64 %4335, 14
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4546 to i64*
  %4549 = load i64, i64* %4548, align 8
  %4550 = add i64 %4549, 96
  store i64 %4550, i64* %RCX.i2479, align 8
  %4551 = icmp ugt i64 %4549, -97
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %14, align 1
  %4553 = trunc i64 %4550 to i32
  %4554 = and i32 %4553, 255
  %4555 = tail call i32 @llvm.ctpop.i32(i32 %4554)
  %4556 = trunc i32 %4555 to i8
  %4557 = and i8 %4556, 1
  %4558 = xor i8 %4557, 1
  store i8 %4558, i8* %21, align 1
  %4559 = xor i64 %4550, %4549
  %4560 = lshr i64 %4559, 4
  %4561 = trunc i64 %4560 to i8
  %4562 = and i8 %4561, 1
  store i8 %4562, i8* %26, align 1
  %4563 = icmp eq i64 %4550, 0
  %4564 = zext i1 %4563 to i8
  store i8 %4564, i8* %29, align 1
  %4565 = lshr i64 %4550, 63
  %4566 = trunc i64 %4565 to i8
  store i8 %4566, i8* %32, align 1
  %4567 = lshr i64 %4549, 63
  %4568 = xor i64 %4565, %4567
  %4569 = add nuw nsw i64 %4568, %4565
  %4570 = icmp eq i64 %4569, 2
  %4571 = zext i1 %4570 to i8
  store i8 %4571, i8* %38, align 1
  %4572 = add i64 %4280, -36
  %4573 = add i64 %4335, 22
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = sext i32 %4575 to i64
  %4577 = shl nsw i64 %4576, 6
  store i64 %4577, i64* %RDX.i2470, align 8
  %4578 = add i64 %4577, %4550
  store i64 %4578, i64* %RCX.i2479, align 8
  %4579 = icmp ult i64 %4578, %4550
  %4580 = icmp ult i64 %4578, %4577
  %4581 = or i1 %4579, %4580
  %4582 = zext i1 %4581 to i8
  store i8 %4582, i8* %14, align 1
  %4583 = trunc i64 %4578 to i32
  %4584 = and i32 %4583, 255
  %4585 = tail call i32 @llvm.ctpop.i32(i32 %4584)
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  %4588 = xor i8 %4587, 1
  store i8 %4588, i8* %21, align 1
  %4589 = xor i64 %4550, %4578
  %4590 = lshr i64 %4589, 4
  %4591 = trunc i64 %4590 to i8
  %4592 = and i8 %4591, 1
  store i8 %4592, i8* %26, align 1
  %4593 = icmp eq i64 %4578, 0
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %29, align 1
  %4595 = lshr i64 %4578, 63
  %4596 = trunc i64 %4595 to i8
  store i8 %4596, i8* %32, align 1
  %4597 = lshr i64 %4576, 57
  %4598 = and i64 %4597, 1
  %4599 = xor i64 %4595, %4565
  %4600 = xor i64 %4595, %4598
  %4601 = add nuw nsw i64 %4599, %4600
  %4602 = icmp eq i64 %4601, 2
  %4603 = zext i1 %4602 to i8
  store i8 %4603, i8* %38, align 1
  %4604 = load i64, i64* %RBP.i, align 8
  %4605 = add i64 %4604, -32
  %4606 = add i64 %4335, 33
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i32*
  %4608 = load i32, i32* %4607, align 4
  %4609 = sext i32 %4608 to i64
  %4610 = shl nsw i64 %4609, 4
  store i64 %4610, i64* %RDX.i2470, align 8
  %4611 = add i64 %4610, %4578
  store i64 %4611, i64* %RCX.i2479, align 8
  %4612 = icmp ult i64 %4611, %4578
  %4613 = icmp ult i64 %4611, %4610
  %4614 = or i1 %4612, %4613
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %14, align 1
  %4616 = trunc i64 %4611 to i32
  %4617 = and i32 %4616, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %21, align 1
  %4622 = xor i64 %4610, %4578
  %4623 = xor i64 %4622, %4611
  %4624 = lshr i64 %4623, 4
  %4625 = trunc i64 %4624 to i8
  %4626 = and i8 %4625, 1
  store i8 %4626, i8* %26, align 1
  %4627 = icmp eq i64 %4611, 0
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %29, align 1
  %4629 = lshr i64 %4611, 63
  %4630 = trunc i64 %4629 to i8
  store i8 %4630, i8* %32, align 1
  %4631 = lshr i64 %4609, 59
  %4632 = and i64 %4631, 1
  %4633 = xor i64 %4629, %4595
  %4634 = xor i64 %4629, %4632
  %4635 = add nuw nsw i64 %4633, %4634
  %4636 = icmp eq i64 %4635, 2
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %38, align 1
  %4638 = add i64 %4604, -28
  %4639 = add i64 %4335, 44
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4638 to i32*
  %4641 = load i32, i32* %4640, align 4
  %4642 = sext i32 %4641 to i64
  %4643 = mul nsw i64 %4642, 96
  store i64 %4643, i64* %RDX.i2470, align 8
  %4644 = lshr i64 %4643, 63
  %4645 = load i64, i64* %RAX.i2481, align 8
  %4646 = add i64 %4643, %4645
  store i64 %4646, i64* %RAX.i2481, align 8
  %4647 = icmp ult i64 %4646, %4645
  %4648 = icmp ult i64 %4646, %4643
  %4649 = or i1 %4647, %4648
  %4650 = zext i1 %4649 to i8
  store i8 %4650, i8* %14, align 1
  %4651 = trunc i64 %4646 to i32
  %4652 = and i32 %4651, 255
  %4653 = tail call i32 @llvm.ctpop.i32(i32 %4652)
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = xor i8 %4655, 1
  store i8 %4656, i8* %21, align 1
  %4657 = xor i64 %4645, %4646
  %4658 = lshr i64 %4657, 4
  %4659 = trunc i64 %4658 to i8
  %4660 = and i8 %4659, 1
  store i8 %4660, i8* %26, align 1
  %4661 = icmp eq i64 %4646, 0
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %29, align 1
  %4663 = lshr i64 %4646, 63
  %4664 = trunc i64 %4663 to i8
  store i8 %4664, i8* %32, align 1
  %4665 = lshr i64 %4645, 63
  %4666 = xor i64 %4663, %4665
  %4667 = xor i64 %4663, %4644
  %4668 = add nuw nsw i64 %4666, %4667
  %4669 = icmp eq i64 %4668, 2
  %4670 = zext i1 %4669 to i8
  store i8 %4670, i8* %38, align 1
  %4671 = load i64, i64* %RBP.i, align 8
  %4672 = add i64 %4671, -36
  %4673 = add i64 %4335, 55
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i32*
  %4675 = load i32, i32* %4674, align 4
  %4676 = sext i32 %4675 to i64
  %4677 = shl nsw i64 %4676, 5
  store i64 %4677, i64* %RDX.i2470, align 8
  %4678 = add i64 %4677, %4646
  store i64 %4678, i64* %RAX.i2481, align 8
  %4679 = icmp ult i64 %4678, %4646
  %4680 = icmp ult i64 %4678, %4677
  %4681 = or i1 %4679, %4680
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %14, align 1
  %4683 = trunc i64 %4678 to i32
  %4684 = and i32 %4683, 255
  %4685 = tail call i32 @llvm.ctpop.i32(i32 %4684)
  %4686 = trunc i32 %4685 to i8
  %4687 = and i8 %4686, 1
  %4688 = xor i8 %4687, 1
  store i8 %4688, i8* %21, align 1
  %4689 = xor i64 %4646, %4678
  %4690 = lshr i64 %4689, 4
  %4691 = trunc i64 %4690 to i8
  %4692 = and i8 %4691, 1
  store i8 %4692, i8* %26, align 1
  %4693 = icmp eq i64 %4678, 0
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %29, align 1
  %4695 = lshr i64 %4678, 63
  %4696 = trunc i64 %4695 to i8
  store i8 %4696, i8* %32, align 1
  %4697 = lshr i64 %4676, 58
  %4698 = and i64 %4697, 1
  %4699 = xor i64 %4695, %4663
  %4700 = xor i64 %4695, %4698
  %4701 = add nuw nsw i64 %4699, %4700
  %4702 = icmp eq i64 %4701, 2
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %38, align 1
  %4704 = add i64 %4671, -32
  %4705 = add i64 %4335, 66
  store i64 %4705, i64* %3, align 8
  %4706 = inttoptr i64 %4704 to i32*
  %4707 = load i32, i32* %4706, align 4
  %4708 = sext i32 %4707 to i64
  %4709 = shl nsw i64 %4708, 3
  store i64 %4709, i64* %RDX.i2470, align 8
  %4710 = add i64 %4709, %4678
  store i64 %4710, i64* %RAX.i2481, align 8
  %4711 = icmp ult i64 %4710, %4678
  %4712 = icmp ult i64 %4710, %4709
  %4713 = or i1 %4711, %4712
  %4714 = zext i1 %4713 to i8
  store i8 %4714, i8* %14, align 1
  %4715 = trunc i64 %4710 to i32
  %4716 = and i32 %4715, 255
  %4717 = tail call i32 @llvm.ctpop.i32(i32 %4716)
  %4718 = trunc i32 %4717 to i8
  %4719 = and i8 %4718, 1
  %4720 = xor i8 %4719, 1
  store i8 %4720, i8* %21, align 1
  %4721 = xor i64 %4709, %4678
  %4722 = xor i64 %4721, %4710
  %4723 = lshr i64 %4722, 4
  %4724 = trunc i64 %4723 to i8
  %4725 = and i8 %4724, 1
  store i8 %4725, i8* %26, align 1
  %4726 = icmp eq i64 %4710, 0
  %4727 = zext i1 %4726 to i8
  store i8 %4727, i8* %29, align 1
  %4728 = lshr i64 %4710, 63
  %4729 = trunc i64 %4728 to i8
  store i8 %4729, i8* %32, align 1
  %4730 = lshr i64 %4708, 60
  %4731 = and i64 %4730, 1
  %4732 = xor i64 %4728, %4695
  %4733 = xor i64 %4728, %4731
  %4734 = add nuw nsw i64 %4732, %4733
  %4735 = icmp eq i64 %4734, 2
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %38, align 1
  %4737 = load i64, i64* %RCX.i2479, align 8
  store i64 %4737, i64* %RDI.i2476, align 8
  store i64 %4710, i64* %RSI.i2473, align 8
  %4738 = add i64 %4335, -2954
  %4739 = add i64 %4335, 84
  %4740 = load i64, i64* %6, align 8
  %4741 = add i64 %4740, -8
  %4742 = inttoptr i64 %4741 to i64*
  store i64 %4739, i64* %4742, align 8
  store i64 %4741, i64* %6, align 8
  store i64 %4738, i64* %3, align 8
  %call2_419b59 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %4738, %struct.Memory* %MEMORY.0)
  %4743 = load i64, i64* %RBP.i, align 8
  %4744 = add i64 %4743, -48
  %4745 = load i64, i64* %3, align 8
  %4746 = add i64 %4745, 5
  store i64 %4746, i64* %3, align 8
  %4747 = load double, double* %44, align 1
  %4748 = inttoptr i64 %4744 to double*
  %4749 = load double, double* %4748, align 8
  %4750 = fadd double %4747, %4749
  store double %4750, double* %44, align 1
  %4751 = add i64 %4745, 10
  store i64 %4751, i64* %3, align 8
  %4752 = inttoptr i64 %4744 to double*
  store double %4750, double* %4752, align 8
  %.pre247 = load i64, i64* %3, align 8
  br label %block_.L_419b68

block_.L_419b68:                                  ; preds = %block_.L_419b0a, %block_419aa7
  %4753 = phi i64 [ %.pre247, %block_.L_419b0a ], [ %4545, %block_419aa7 ]
  %4754 = load i64, i64* %RBP.i, align 8
  %4755 = add i64 %4754, -32
  %4756 = add i64 %4753, 8
  store i64 %4756, i64* %3, align 8
  %4757 = inttoptr i64 %4755 to i32*
  %4758 = load i32, i32* %4757, align 4
  %4759 = add i32 %4758, 1
  %4760 = zext i32 %4759 to i64
  store i64 %4760, i64* %RAX.i2481, align 8
  %4761 = icmp eq i32 %4758, -1
  %4762 = icmp eq i32 %4759, 0
  %4763 = or i1 %4761, %4762
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %14, align 1
  %4765 = and i32 %4759, 255
  %4766 = tail call i32 @llvm.ctpop.i32(i32 %4765)
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  %4769 = xor i8 %4768, 1
  store i8 %4769, i8* %21, align 1
  %4770 = xor i32 %4759, %4758
  %4771 = lshr i32 %4770, 4
  %4772 = trunc i32 %4771 to i8
  %4773 = and i8 %4772, 1
  store i8 %4773, i8* %26, align 1
  %4774 = zext i1 %4762 to i8
  store i8 %4774, i8* %29, align 1
  %4775 = lshr i32 %4759, 31
  %4776 = trunc i32 %4775 to i8
  store i8 %4776, i8* %32, align 1
  %4777 = lshr i32 %4758, 31
  %4778 = xor i32 %4775, %4777
  %4779 = add nuw nsw i32 %4778, %4775
  %4780 = icmp eq i32 %4779, 2
  %4781 = zext i1 %4780 to i8
  store i8 %4781, i8* %38, align 1
  %4782 = add i64 %4753, 14
  store i64 %4782, i64* %3, align 8
  store i32 %4759, i32* %4757, align 4
  %4783 = load i64, i64* %3, align 8
  %4784 = add i64 %4783, -235
  store i64 %4784, i64* %3, align 8
  br label %block_.L_419a8b

block_.L_419b7b:                                  ; preds = %block_.L_419a8b
  %4785 = add i64 %4280, -36
  %4786 = add i64 %4308, 8
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4785 to i32*
  %4788 = load i32, i32* %4787, align 4
  %4789 = add i32 %4788, 1
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RAX.i2481, align 8
  %4791 = icmp eq i32 %4788, -1
  %4792 = icmp eq i32 %4789, 0
  %4793 = or i1 %4791, %4792
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %14, align 1
  %4795 = and i32 %4789, 255
  %4796 = tail call i32 @llvm.ctpop.i32(i32 %4795)
  %4797 = trunc i32 %4796 to i8
  %4798 = and i8 %4797, 1
  %4799 = xor i8 %4798, 1
  store i8 %4799, i8* %21, align 1
  %4800 = xor i32 %4789, %4788
  %4801 = lshr i32 %4800, 4
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  store i8 %4803, i8* %26, align 1
  %4804 = zext i1 %4792 to i8
  store i8 %4804, i8* %29, align 1
  %4805 = lshr i32 %4789, 31
  %4806 = trunc i32 %4805 to i8
  store i8 %4806, i8* %32, align 1
  %4807 = lshr i32 %4788, 31
  %4808 = xor i32 %4805, %4807
  %4809 = add nuw nsw i32 %4808, %4805
  %4810 = icmp eq i32 %4809, 2
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %38, align 1
  %4812 = add i64 %4308, 14
  store i64 %4812, i64* %3, align 8
  store i32 %4789, i32* %4787, align 4
  %4813 = load i64, i64* %3, align 8
  %4814 = add i64 %4813, -271
  store i64 %4814, i64* %3, align 8
  br label %block_.L_419a7a

block_.L_419b8e:                                  ; preds = %block_.L_419a7a
  %4815 = add i64 %4275, 7
  store i64 %4815, i64* %3, align 8
  store i32 0, i32* %4250, align 4
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_419b95

block_.L_419b95:                                  ; preds = %block_.L_419c9c, %block_.L_419b8e
  %4816 = phi i64 [ %.pre221, %block_.L_419b8e ], [ %5386, %block_.L_419c9c ]
  %4817 = load i64, i64* %RBP.i, align 8
  %4818 = add i64 %4817, -36
  %4819 = add i64 %4816, 4
  store i64 %4819, i64* %3, align 8
  %4820 = inttoptr i64 %4818 to i32*
  %4821 = load i32, i32* %4820, align 4
  %4822 = add i32 %4821, -10
  %4823 = icmp ult i32 %4821, 10
  %4824 = zext i1 %4823 to i8
  store i8 %4824, i8* %14, align 1
  %4825 = and i32 %4822, 255
  %4826 = tail call i32 @llvm.ctpop.i32(i32 %4825)
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  %4829 = xor i8 %4828, 1
  store i8 %4829, i8* %21, align 1
  %4830 = xor i32 %4822, %4821
  %4831 = lshr i32 %4830, 4
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  store i8 %4833, i8* %26, align 1
  %4834 = icmp eq i32 %4822, 0
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %29, align 1
  %4836 = lshr i32 %4822, 31
  %4837 = trunc i32 %4836 to i8
  store i8 %4837, i8* %32, align 1
  %4838 = lshr i32 %4821, 31
  %4839 = xor i32 %4836, %4838
  %4840 = add nuw nsw i32 %4839, %4838
  %4841 = icmp eq i32 %4840, 2
  %4842 = zext i1 %4841 to i8
  store i8 %4842, i8* %38, align 1
  %4843 = icmp ne i8 %4837, 0
  %4844 = xor i1 %4843, %4841
  %.v283 = select i1 %4844, i64 10, i64 282
  %4845 = add i64 %4816, %.v283
  store i64 %4845, i64* %3, align 8
  br i1 %4844, label %block_419b9f, label %block_.L_419caf

block_419b9f:                                     ; preds = %block_.L_419b95
  %4846 = add i64 %4817, -32
  %4847 = add i64 %4845, 7
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  store i32 0, i32* %4848, align 4
  %.pre244 = load i64, i64* %3, align 8
  br label %block_.L_419ba6

block_.L_419ba6:                                  ; preds = %block_.L_419c89, %block_419b9f
  %4849 = phi i64 [ %.pre244, %block_419b9f ], [ %5356, %block_.L_419c89 ]
  %4850 = load i64, i64* %RBP.i, align 8
  %4851 = add i64 %4850, -32
  %4852 = add i64 %4849, 4
  store i64 %4852, i64* %3, align 8
  %4853 = inttoptr i64 %4851 to i32*
  %4854 = load i32, i32* %4853, align 4
  %4855 = add i32 %4854, -4
  %4856 = icmp ult i32 %4854, 4
  %4857 = zext i1 %4856 to i8
  store i8 %4857, i8* %14, align 1
  %4858 = and i32 %4855, 255
  %4859 = tail call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  store i8 %4862, i8* %21, align 1
  %4863 = xor i32 %4855, %4854
  %4864 = lshr i32 %4863, 4
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  store i8 %4866, i8* %26, align 1
  %4867 = icmp eq i32 %4855, 0
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %29, align 1
  %4869 = lshr i32 %4855, 31
  %4870 = trunc i32 %4869 to i8
  store i8 %4870, i8* %32, align 1
  %4871 = lshr i32 %4854, 31
  %4872 = xor i32 %4869, %4871
  %4873 = add nuw nsw i32 %4872, %4871
  %4874 = icmp eq i32 %4873, 2
  %4875 = zext i1 %4874 to i8
  store i8 %4875, i8* %38, align 1
  %4876 = icmp ne i8 %4870, 0
  %4877 = xor i1 %4876, %4874
  %.v267 = select i1 %4877, i64 10, i64 246
  %4878 = add i64 %4849, %.v267
  store i64 %4878, i64* %3, align 8
  br i1 %4877, label %block_419bb0, label %block_.L_419c9c

block_419bb0:                                     ; preds = %block_.L_419ba6
  %4879 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4879, i64* %RAX.i2481, align 8
  %4880 = add i64 %4879, 24
  %4881 = add i64 %4878, 12
  store i64 %4881, i64* %3, align 8
  %4882 = inttoptr i64 %4880 to i32*
  %4883 = load i32, i32* %4882, align 4
  %4884 = add i32 %4883, -2
  %4885 = icmp ult i32 %4883, 2
  %4886 = zext i1 %4885 to i8
  store i8 %4886, i8* %14, align 1
  %4887 = and i32 %4884, 255
  %4888 = tail call i32 @llvm.ctpop.i32(i32 %4887)
  %4889 = trunc i32 %4888 to i8
  %4890 = and i8 %4889, 1
  %4891 = xor i8 %4890, 1
  store i8 %4891, i8* %21, align 1
  %4892 = xor i32 %4884, %4883
  %4893 = lshr i32 %4892, 4
  %4894 = trunc i32 %4893 to i8
  %4895 = and i8 %4894, 1
  store i8 %4895, i8* %26, align 1
  %4896 = icmp eq i32 %4884, 0
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %29, align 1
  %4898 = lshr i32 %4884, 31
  %4899 = trunc i32 %4898 to i8
  store i8 %4899, i8* %32, align 1
  %4900 = lshr i32 %4883, 31
  %4901 = xor i32 %4898, %4900
  %4902 = add nuw nsw i32 %4901, %4900
  %4903 = icmp eq i32 %4902, 2
  %4904 = zext i1 %4903 to i8
  store i8 %4904, i8* %38, align 1
  %.v297 = select i1 %4896, i64 18, i64 120
  %4905 = add i64 %4878, %.v297
  %4906 = add i64 %4905, 10
  store i64 %4906, i64* %3, align 8
  br i1 %4896, label %block_419bc2, label %block_.L_419c28

block_419bc2:                                     ; preds = %block_419bb0
  store i64 ptrtoint (%G__0x4b40b0_type* @G__0x4b40b0 to i64), i64* %RAX.i2481, align 8
  %4907 = add i64 %4850, -24
  %4908 = add i64 %4905, 14
  store i64 %4908, i64* %3, align 8
  %4909 = inttoptr i64 %4907 to i64*
  %4910 = load i64, i64* %4909, align 8
  %4911 = add i64 %4910, 288
  store i64 %4911, i64* %RCX.i2479, align 8
  %4912 = icmp ugt i64 %4910, -289
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %14, align 1
  %4914 = trunc i64 %4911 to i32
  %4915 = and i32 %4914, 255
  %4916 = tail call i32 @llvm.ctpop.i32(i32 %4915)
  %4917 = trunc i32 %4916 to i8
  %4918 = and i8 %4917, 1
  %4919 = xor i8 %4918, 1
  store i8 %4919, i8* %21, align 1
  %4920 = xor i64 %4911, %4910
  %4921 = lshr i64 %4920, 4
  %4922 = trunc i64 %4921 to i8
  %4923 = and i8 %4922, 1
  store i8 %4923, i8* %26, align 1
  %4924 = icmp eq i64 %4911, 0
  %4925 = zext i1 %4924 to i8
  store i8 %4925, i8* %29, align 1
  %4926 = lshr i64 %4911, 63
  %4927 = trunc i64 %4926 to i8
  store i8 %4927, i8* %32, align 1
  %4928 = lshr i64 %4910, 63
  %4929 = xor i64 %4926, %4928
  %4930 = add nuw nsw i64 %4929, %4926
  %4931 = icmp eq i64 %4930, 2
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %38, align 1
  %4933 = add i64 %4850, -36
  %4934 = add i64 %4905, 25
  store i64 %4934, i64* %3, align 8
  %4935 = inttoptr i64 %4933 to i32*
  %4936 = load i32, i32* %4935, align 4
  %4937 = sext i32 %4936 to i64
  %4938 = shl nsw i64 %4937, 6
  store i64 %4938, i64* %RDX.i2470, align 8
  %4939 = add i64 %4938, %4911
  store i64 %4939, i64* %RCX.i2479, align 8
  %4940 = icmp ult i64 %4939, %4911
  %4941 = icmp ult i64 %4939, %4938
  %4942 = or i1 %4940, %4941
  %4943 = zext i1 %4942 to i8
  store i8 %4943, i8* %14, align 1
  %4944 = trunc i64 %4939 to i32
  %4945 = and i32 %4944, 255
  %4946 = tail call i32 @llvm.ctpop.i32(i32 %4945)
  %4947 = trunc i32 %4946 to i8
  %4948 = and i8 %4947, 1
  %4949 = xor i8 %4948, 1
  store i8 %4949, i8* %21, align 1
  %4950 = xor i64 %4911, %4939
  %4951 = lshr i64 %4950, 4
  %4952 = trunc i64 %4951 to i8
  %4953 = and i8 %4952, 1
  store i8 %4953, i8* %26, align 1
  %4954 = icmp eq i64 %4939, 0
  %4955 = zext i1 %4954 to i8
  store i8 %4955, i8* %29, align 1
  %4956 = lshr i64 %4939, 63
  %4957 = trunc i64 %4956 to i8
  store i8 %4957, i8* %32, align 1
  %4958 = lshr i64 %4937, 57
  %4959 = and i64 %4958, 1
  %4960 = xor i64 %4956, %4926
  %4961 = xor i64 %4956, %4959
  %4962 = add nuw nsw i64 %4960, %4961
  %4963 = icmp eq i64 %4962, 2
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %38, align 1
  %4965 = load i64, i64* %RBP.i, align 8
  %4966 = add i64 %4965, -32
  %4967 = add i64 %4905, 36
  store i64 %4967, i64* %3, align 8
  %4968 = inttoptr i64 %4966 to i32*
  %4969 = load i32, i32* %4968, align 4
  %4970 = sext i32 %4969 to i64
  %4971 = shl nsw i64 %4970, 4
  store i64 %4971, i64* %RDX.i2470, align 8
  %4972 = add i64 %4971, %4939
  store i64 %4972, i64* %RCX.i2479, align 8
  %4973 = icmp ult i64 %4972, %4939
  %4974 = icmp ult i64 %4972, %4971
  %4975 = or i1 %4973, %4974
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %14, align 1
  %4977 = trunc i64 %4972 to i32
  %4978 = and i32 %4977, 255
  %4979 = tail call i32 @llvm.ctpop.i32(i32 %4978)
  %4980 = trunc i32 %4979 to i8
  %4981 = and i8 %4980, 1
  %4982 = xor i8 %4981, 1
  store i8 %4982, i8* %21, align 1
  %4983 = xor i64 %4971, %4939
  %4984 = xor i64 %4983, %4972
  %4985 = lshr i64 %4984, 4
  %4986 = trunc i64 %4985 to i8
  %4987 = and i8 %4986, 1
  store i8 %4987, i8* %26, align 1
  %4988 = icmp eq i64 %4972, 0
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %29, align 1
  %4990 = lshr i64 %4972, 63
  %4991 = trunc i64 %4990 to i8
  store i8 %4991, i8* %32, align 1
  %4992 = lshr i64 %4970, 59
  %4993 = and i64 %4992, 1
  %4994 = xor i64 %4990, %4956
  %4995 = xor i64 %4990, %4993
  %4996 = add nuw nsw i64 %4994, %4995
  %4997 = icmp eq i64 %4996, 2
  %4998 = zext i1 %4997 to i8
  store i8 %4998, i8* %38, align 1
  %4999 = add i64 %4965, -28
  %5000 = add i64 %4905, 47
  store i64 %5000, i64* %3, align 8
  %5001 = inttoptr i64 %4999 to i32*
  %5002 = load i32, i32* %5001, align 4
  %5003 = sext i32 %5002 to i64
  %5004 = shl nsw i64 %5003, 8
  store i64 %5004, i64* %RDX.i2470, align 8
  %5005 = load i64, i64* %RAX.i2481, align 8
  %5006 = add i64 %5004, %5005
  store i64 %5006, i64* %RAX.i2481, align 8
  %5007 = icmp ult i64 %5006, %5005
  %5008 = icmp ult i64 %5006, %5004
  %5009 = or i1 %5007, %5008
  %5010 = zext i1 %5009 to i8
  store i8 %5010, i8* %14, align 1
  %5011 = trunc i64 %5006 to i32
  %5012 = and i32 %5011, 255
  %5013 = tail call i32 @llvm.ctpop.i32(i32 %5012)
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = xor i8 %5015, 1
  store i8 %5016, i8* %21, align 1
  %5017 = xor i64 %5005, %5006
  %5018 = lshr i64 %5017, 4
  %5019 = trunc i64 %5018 to i8
  %5020 = and i8 %5019, 1
  store i8 %5020, i8* %26, align 1
  %5021 = icmp eq i64 %5006, 0
  %5022 = zext i1 %5021 to i8
  store i8 %5022, i8* %29, align 1
  %5023 = lshr i64 %5006, 63
  %5024 = trunc i64 %5023 to i8
  store i8 %5024, i8* %32, align 1
  %5025 = lshr i64 %5005, 63
  %5026 = lshr i64 %5003, 55
  %5027 = and i64 %5026, 1
  %5028 = xor i64 %5023, %5025
  %5029 = xor i64 %5023, %5027
  %5030 = add nuw nsw i64 %5028, %5029
  %5031 = icmp eq i64 %5030, 2
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %38, align 1
  %5033 = load i64, i64* %RBP.i, align 8
  %5034 = add i64 %5033, -36
  %5035 = add i64 %4905, 58
  store i64 %5035, i64* %3, align 8
  %5036 = inttoptr i64 %5034 to i32*
  %5037 = load i32, i32* %5036, align 4
  %5038 = sext i32 %5037 to i64
  %5039 = shl nsw i64 %5038, 5
  store i64 %5039, i64* %RDX.i2470, align 8
  %5040 = add i64 %5039, %5006
  store i64 %5040, i64* %RAX.i2481, align 8
  %5041 = icmp ult i64 %5040, %5006
  %5042 = icmp ult i64 %5040, %5039
  %5043 = or i1 %5041, %5042
  %5044 = zext i1 %5043 to i8
  store i8 %5044, i8* %14, align 1
  %5045 = trunc i64 %5040 to i32
  %5046 = and i32 %5045, 255
  %5047 = tail call i32 @llvm.ctpop.i32(i32 %5046)
  %5048 = trunc i32 %5047 to i8
  %5049 = and i8 %5048, 1
  %5050 = xor i8 %5049, 1
  store i8 %5050, i8* %21, align 1
  %5051 = xor i64 %5006, %5040
  %5052 = lshr i64 %5051, 4
  %5053 = trunc i64 %5052 to i8
  %5054 = and i8 %5053, 1
  store i8 %5054, i8* %26, align 1
  %5055 = icmp eq i64 %5040, 0
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %29, align 1
  %5057 = lshr i64 %5040, 63
  %5058 = trunc i64 %5057 to i8
  store i8 %5058, i8* %32, align 1
  %5059 = lshr i64 %5038, 58
  %5060 = and i64 %5059, 1
  %5061 = xor i64 %5057, %5023
  %5062 = xor i64 %5057, %5060
  %5063 = add nuw nsw i64 %5061, %5062
  %5064 = icmp eq i64 %5063, 2
  %5065 = zext i1 %5064 to i8
  store i8 %5065, i8* %38, align 1
  %5066 = add i64 %5033, -32
  %5067 = add i64 %4905, 69
  store i64 %5067, i64* %3, align 8
  %5068 = inttoptr i64 %5066 to i32*
  %5069 = load i32, i32* %5068, align 4
  %5070 = sext i32 %5069 to i64
  %5071 = shl nsw i64 %5070, 3
  store i64 %5071, i64* %RDX.i2470, align 8
  %5072 = add i64 %5071, %5040
  store i64 %5072, i64* %RAX.i2481, align 8
  %5073 = icmp ult i64 %5072, %5040
  %5074 = icmp ult i64 %5072, %5071
  %5075 = or i1 %5073, %5074
  %5076 = zext i1 %5075 to i8
  store i8 %5076, i8* %14, align 1
  %5077 = trunc i64 %5072 to i32
  %5078 = and i32 %5077, 255
  %5079 = tail call i32 @llvm.ctpop.i32(i32 %5078)
  %5080 = trunc i32 %5079 to i8
  %5081 = and i8 %5080, 1
  %5082 = xor i8 %5081, 1
  store i8 %5082, i8* %21, align 1
  %5083 = xor i64 %5071, %5040
  %5084 = xor i64 %5083, %5072
  %5085 = lshr i64 %5084, 4
  %5086 = trunc i64 %5085 to i8
  %5087 = and i8 %5086, 1
  store i8 %5087, i8* %26, align 1
  %5088 = icmp eq i64 %5072, 0
  %5089 = zext i1 %5088 to i8
  store i8 %5089, i8* %29, align 1
  %5090 = lshr i64 %5072, 63
  %5091 = trunc i64 %5090 to i8
  store i8 %5091, i8* %32, align 1
  %5092 = lshr i64 %5070, 60
  %5093 = and i64 %5092, 1
  %5094 = xor i64 %5090, %5057
  %5095 = xor i64 %5090, %5093
  %5096 = add nuw nsw i64 %5094, %5095
  %5097 = icmp eq i64 %5096, 2
  %5098 = zext i1 %5097 to i8
  store i8 %5098, i8* %38, align 1
  %5099 = load i64, i64* %RCX.i2479, align 8
  store i64 %5099, i64* %RDI.i2476, align 8
  store i64 %5072, i64* %RSI.i2473, align 8
  %5100 = add i64 %4905, -3138
  %5101 = add i64 %4905, 87
  %5102 = load i64, i64* %6, align 8
  %5103 = add i64 %5102, -8
  %5104 = inttoptr i64 %5103 to i64*
  store i64 %5101, i64* %5104, align 8
  store i64 %5103, i64* %6, align 8
  store i64 %5100, i64* %3, align 8
  %call2_419c14 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %5100, %struct.Memory* %MEMORY.0)
  %5105 = load i64, i64* %RBP.i, align 8
  %5106 = add i64 %5105, -48
  %5107 = load i64, i64* %3, align 8
  %5108 = add i64 %5107, 5
  store i64 %5108, i64* %3, align 8
  %5109 = load double, double* %44, align 1
  %5110 = inttoptr i64 %5106 to double*
  %5111 = load double, double* %5110, align 8
  %5112 = fadd double %5109, %5111
  store double %5112, double* %44, align 1
  %5113 = add i64 %5107, 10
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5106 to double*
  store double %5112, double* %5114, align 8
  %5115 = load i64, i64* %3, align 8
  %5116 = add i64 %5115, 102
  store i64 %5116, i64* %3, align 8
  br label %block_.L_419c89

block_.L_419c28:                                  ; preds = %block_419bb0
  store i64 ptrtoint (%G__0x4b41b0_type* @G__0x4b41b0 to i64), i64* %RAX.i2481, align 8
  %5117 = add i64 %4850, -24
  %5118 = add i64 %4905, 14
  store i64 %5118, i64* %3, align 8
  %5119 = inttoptr i64 %5117 to i64*
  %5120 = load i64, i64* %5119, align 8
  %5121 = add i64 %5120, 288
  store i64 %5121, i64* %RCX.i2479, align 8
  %5122 = icmp ugt i64 %5120, -289
  %5123 = zext i1 %5122 to i8
  store i8 %5123, i8* %14, align 1
  %5124 = trunc i64 %5121 to i32
  %5125 = and i32 %5124, 255
  %5126 = tail call i32 @llvm.ctpop.i32(i32 %5125)
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = xor i8 %5128, 1
  store i8 %5129, i8* %21, align 1
  %5130 = xor i64 %5121, %5120
  %5131 = lshr i64 %5130, 4
  %5132 = trunc i64 %5131 to i8
  %5133 = and i8 %5132, 1
  store i8 %5133, i8* %26, align 1
  %5134 = icmp eq i64 %5121, 0
  %5135 = zext i1 %5134 to i8
  store i8 %5135, i8* %29, align 1
  %5136 = lshr i64 %5121, 63
  %5137 = trunc i64 %5136 to i8
  store i8 %5137, i8* %32, align 1
  %5138 = lshr i64 %5120, 63
  %5139 = xor i64 %5136, %5138
  %5140 = add nuw nsw i64 %5139, %5136
  %5141 = icmp eq i64 %5140, 2
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %38, align 1
  %5143 = add i64 %4850, -36
  %5144 = add i64 %4905, 25
  store i64 %5144, i64* %3, align 8
  %5145 = inttoptr i64 %5143 to i32*
  %5146 = load i32, i32* %5145, align 4
  %5147 = sext i32 %5146 to i64
  %5148 = shl nsw i64 %5147, 6
  store i64 %5148, i64* %RDX.i2470, align 8
  %5149 = add i64 %5148, %5121
  store i64 %5149, i64* %RCX.i2479, align 8
  %5150 = icmp ult i64 %5149, %5121
  %5151 = icmp ult i64 %5149, %5148
  %5152 = or i1 %5150, %5151
  %5153 = zext i1 %5152 to i8
  store i8 %5153, i8* %14, align 1
  %5154 = trunc i64 %5149 to i32
  %5155 = and i32 %5154, 255
  %5156 = tail call i32 @llvm.ctpop.i32(i32 %5155)
  %5157 = trunc i32 %5156 to i8
  %5158 = and i8 %5157, 1
  %5159 = xor i8 %5158, 1
  store i8 %5159, i8* %21, align 1
  %5160 = xor i64 %5121, %5149
  %5161 = lshr i64 %5160, 4
  %5162 = trunc i64 %5161 to i8
  %5163 = and i8 %5162, 1
  store i8 %5163, i8* %26, align 1
  %5164 = icmp eq i64 %5149, 0
  %5165 = zext i1 %5164 to i8
  store i8 %5165, i8* %29, align 1
  %5166 = lshr i64 %5149, 63
  %5167 = trunc i64 %5166 to i8
  store i8 %5167, i8* %32, align 1
  %5168 = lshr i64 %5147, 57
  %5169 = and i64 %5168, 1
  %5170 = xor i64 %5166, %5136
  %5171 = xor i64 %5166, %5169
  %5172 = add nuw nsw i64 %5170, %5171
  %5173 = icmp eq i64 %5172, 2
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %38, align 1
  %5175 = load i64, i64* %RBP.i, align 8
  %5176 = add i64 %5175, -32
  %5177 = add i64 %4905, 36
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i32*
  %5179 = load i32, i32* %5178, align 4
  %5180 = sext i32 %5179 to i64
  %5181 = shl nsw i64 %5180, 4
  store i64 %5181, i64* %RDX.i2470, align 8
  %5182 = add i64 %5181, %5149
  store i64 %5182, i64* %RCX.i2479, align 8
  %5183 = icmp ult i64 %5182, %5149
  %5184 = icmp ult i64 %5182, %5181
  %5185 = or i1 %5183, %5184
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %14, align 1
  %5187 = trunc i64 %5182 to i32
  %5188 = and i32 %5187, 255
  %5189 = tail call i32 @llvm.ctpop.i32(i32 %5188)
  %5190 = trunc i32 %5189 to i8
  %5191 = and i8 %5190, 1
  %5192 = xor i8 %5191, 1
  store i8 %5192, i8* %21, align 1
  %5193 = xor i64 %5181, %5149
  %5194 = xor i64 %5193, %5182
  %5195 = lshr i64 %5194, 4
  %5196 = trunc i64 %5195 to i8
  %5197 = and i8 %5196, 1
  store i8 %5197, i8* %26, align 1
  %5198 = icmp eq i64 %5182, 0
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %29, align 1
  %5200 = lshr i64 %5182, 63
  %5201 = trunc i64 %5200 to i8
  store i8 %5201, i8* %32, align 1
  %5202 = lshr i64 %5180, 59
  %5203 = and i64 %5202, 1
  %5204 = xor i64 %5200, %5166
  %5205 = xor i64 %5200, %5203
  %5206 = add nuw nsw i64 %5204, %5205
  %5207 = icmp eq i64 %5206, 2
  %5208 = zext i1 %5207 to i8
  store i8 %5208, i8* %38, align 1
  %5209 = add i64 %5175, -28
  %5210 = add i64 %4905, 47
  store i64 %5210, i64* %3, align 8
  %5211 = inttoptr i64 %5209 to i32*
  %5212 = load i32, i32* %5211, align 4
  %5213 = sext i32 %5212 to i64
  %5214 = shl nsw i64 %5213, 8
  store i64 %5214, i64* %RDX.i2470, align 8
  %5215 = load i64, i64* %RAX.i2481, align 8
  %5216 = add i64 %5214, %5215
  store i64 %5216, i64* %RAX.i2481, align 8
  %5217 = icmp ult i64 %5216, %5215
  %5218 = icmp ult i64 %5216, %5214
  %5219 = or i1 %5217, %5218
  %5220 = zext i1 %5219 to i8
  store i8 %5220, i8* %14, align 1
  %5221 = trunc i64 %5216 to i32
  %5222 = and i32 %5221, 255
  %5223 = tail call i32 @llvm.ctpop.i32(i32 %5222)
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = xor i8 %5225, 1
  store i8 %5226, i8* %21, align 1
  %5227 = xor i64 %5215, %5216
  %5228 = lshr i64 %5227, 4
  %5229 = trunc i64 %5228 to i8
  %5230 = and i8 %5229, 1
  store i8 %5230, i8* %26, align 1
  %5231 = icmp eq i64 %5216, 0
  %5232 = zext i1 %5231 to i8
  store i8 %5232, i8* %29, align 1
  %5233 = lshr i64 %5216, 63
  %5234 = trunc i64 %5233 to i8
  store i8 %5234, i8* %32, align 1
  %5235 = lshr i64 %5215, 63
  %5236 = lshr i64 %5213, 55
  %5237 = and i64 %5236, 1
  %5238 = xor i64 %5233, %5235
  %5239 = xor i64 %5233, %5237
  %5240 = add nuw nsw i64 %5238, %5239
  %5241 = icmp eq i64 %5240, 2
  %5242 = zext i1 %5241 to i8
  store i8 %5242, i8* %38, align 1
  %5243 = load i64, i64* %RBP.i, align 8
  %5244 = add i64 %5243, -36
  %5245 = add i64 %4905, 58
  store i64 %5245, i64* %3, align 8
  %5246 = inttoptr i64 %5244 to i32*
  %5247 = load i32, i32* %5246, align 4
  %5248 = sext i32 %5247 to i64
  %5249 = shl nsw i64 %5248, 5
  store i64 %5249, i64* %RDX.i2470, align 8
  %5250 = add i64 %5249, %5216
  store i64 %5250, i64* %RAX.i2481, align 8
  %5251 = icmp ult i64 %5250, %5216
  %5252 = icmp ult i64 %5250, %5249
  %5253 = or i1 %5251, %5252
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %14, align 1
  %5255 = trunc i64 %5250 to i32
  %5256 = and i32 %5255, 255
  %5257 = tail call i32 @llvm.ctpop.i32(i32 %5256)
  %5258 = trunc i32 %5257 to i8
  %5259 = and i8 %5258, 1
  %5260 = xor i8 %5259, 1
  store i8 %5260, i8* %21, align 1
  %5261 = xor i64 %5216, %5250
  %5262 = lshr i64 %5261, 4
  %5263 = trunc i64 %5262 to i8
  %5264 = and i8 %5263, 1
  store i8 %5264, i8* %26, align 1
  %5265 = icmp eq i64 %5250, 0
  %5266 = zext i1 %5265 to i8
  store i8 %5266, i8* %29, align 1
  %5267 = lshr i64 %5250, 63
  %5268 = trunc i64 %5267 to i8
  store i8 %5268, i8* %32, align 1
  %5269 = lshr i64 %5248, 58
  %5270 = and i64 %5269, 1
  %5271 = xor i64 %5267, %5233
  %5272 = xor i64 %5267, %5270
  %5273 = add nuw nsw i64 %5271, %5272
  %5274 = icmp eq i64 %5273, 2
  %5275 = zext i1 %5274 to i8
  store i8 %5275, i8* %38, align 1
  %5276 = add i64 %5243, -32
  %5277 = add i64 %4905, 69
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = sext i32 %5279 to i64
  %5281 = shl nsw i64 %5280, 3
  store i64 %5281, i64* %RDX.i2470, align 8
  %5282 = add i64 %5281, %5250
  store i64 %5282, i64* %RAX.i2481, align 8
  %5283 = icmp ult i64 %5282, %5250
  %5284 = icmp ult i64 %5282, %5281
  %5285 = or i1 %5283, %5284
  %5286 = zext i1 %5285 to i8
  store i8 %5286, i8* %14, align 1
  %5287 = trunc i64 %5282 to i32
  %5288 = and i32 %5287, 255
  %5289 = tail call i32 @llvm.ctpop.i32(i32 %5288)
  %5290 = trunc i32 %5289 to i8
  %5291 = and i8 %5290, 1
  %5292 = xor i8 %5291, 1
  store i8 %5292, i8* %21, align 1
  %5293 = xor i64 %5281, %5250
  %5294 = xor i64 %5293, %5282
  %5295 = lshr i64 %5294, 4
  %5296 = trunc i64 %5295 to i8
  %5297 = and i8 %5296, 1
  store i8 %5297, i8* %26, align 1
  %5298 = icmp eq i64 %5282, 0
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %29, align 1
  %5300 = lshr i64 %5282, 63
  %5301 = trunc i64 %5300 to i8
  store i8 %5301, i8* %32, align 1
  %5302 = lshr i64 %5280, 60
  %5303 = and i64 %5302, 1
  %5304 = xor i64 %5300, %5267
  %5305 = xor i64 %5300, %5303
  %5306 = add nuw nsw i64 %5304, %5305
  %5307 = icmp eq i64 %5306, 2
  %5308 = zext i1 %5307 to i8
  store i8 %5308, i8* %38, align 1
  %5309 = load i64, i64* %RCX.i2479, align 8
  store i64 %5309, i64* %RDI.i2476, align 8
  store i64 %5282, i64* %RSI.i2473, align 8
  %5310 = add i64 %4905, -3240
  %5311 = add i64 %4905, 87
  %5312 = load i64, i64* %6, align 8
  %5313 = add i64 %5312, -8
  %5314 = inttoptr i64 %5313 to i64*
  store i64 %5311, i64* %5314, align 8
  store i64 %5313, i64* %6, align 8
  store i64 %5310, i64* %3, align 8
  %call2_419c7a = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %5310, %struct.Memory* %MEMORY.0)
  %5315 = load i64, i64* %RBP.i, align 8
  %5316 = add i64 %5315, -48
  %5317 = load i64, i64* %3, align 8
  %5318 = add i64 %5317, 5
  store i64 %5318, i64* %3, align 8
  %5319 = load double, double* %44, align 1
  %5320 = inttoptr i64 %5316 to double*
  %5321 = load double, double* %5320, align 8
  %5322 = fadd double %5319, %5321
  store double %5322, double* %44, align 1
  %5323 = add i64 %5317, 10
  store i64 %5323, i64* %3, align 8
  %5324 = inttoptr i64 %5316 to double*
  store double %5322, double* %5324, align 8
  %.pre245 = load i64, i64* %3, align 8
  br label %block_.L_419c89

block_.L_419c89:                                  ; preds = %block_.L_419c28, %block_419bc2
  %5325 = phi i64 [ %.pre245, %block_.L_419c28 ], [ %5116, %block_419bc2 ]
  %5326 = load i64, i64* %RBP.i, align 8
  %5327 = add i64 %5326, -32
  %5328 = add i64 %5325, 8
  store i64 %5328, i64* %3, align 8
  %5329 = inttoptr i64 %5327 to i32*
  %5330 = load i32, i32* %5329, align 4
  %5331 = add i32 %5330, 1
  %5332 = zext i32 %5331 to i64
  store i64 %5332, i64* %RAX.i2481, align 8
  %5333 = icmp eq i32 %5330, -1
  %5334 = icmp eq i32 %5331, 0
  %5335 = or i1 %5333, %5334
  %5336 = zext i1 %5335 to i8
  store i8 %5336, i8* %14, align 1
  %5337 = and i32 %5331, 255
  %5338 = tail call i32 @llvm.ctpop.i32(i32 %5337)
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  %5341 = xor i8 %5340, 1
  store i8 %5341, i8* %21, align 1
  %5342 = xor i32 %5331, %5330
  %5343 = lshr i32 %5342, 4
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  store i8 %5345, i8* %26, align 1
  %5346 = zext i1 %5334 to i8
  store i8 %5346, i8* %29, align 1
  %5347 = lshr i32 %5331, 31
  %5348 = trunc i32 %5347 to i8
  store i8 %5348, i8* %32, align 1
  %5349 = lshr i32 %5330, 31
  %5350 = xor i32 %5347, %5349
  %5351 = add nuw nsw i32 %5350, %5347
  %5352 = icmp eq i32 %5351, 2
  %5353 = zext i1 %5352 to i8
  store i8 %5353, i8* %38, align 1
  %5354 = add i64 %5325, 14
  store i64 %5354, i64* %3, align 8
  store i32 %5331, i32* %5329, align 4
  %5355 = load i64, i64* %3, align 8
  %5356 = add i64 %5355, -241
  store i64 %5356, i64* %3, align 8
  br label %block_.L_419ba6

block_.L_419c9c:                                  ; preds = %block_.L_419ba6
  %5357 = add i64 %4850, -36
  %5358 = add i64 %4878, 8
  store i64 %5358, i64* %3, align 8
  %5359 = inttoptr i64 %5357 to i32*
  %5360 = load i32, i32* %5359, align 4
  %5361 = add i32 %5360, 1
  %5362 = zext i32 %5361 to i64
  store i64 %5362, i64* %RAX.i2481, align 8
  %5363 = icmp eq i32 %5360, -1
  %5364 = icmp eq i32 %5361, 0
  %5365 = or i1 %5363, %5364
  %5366 = zext i1 %5365 to i8
  store i8 %5366, i8* %14, align 1
  %5367 = and i32 %5361, 255
  %5368 = tail call i32 @llvm.ctpop.i32(i32 %5367)
  %5369 = trunc i32 %5368 to i8
  %5370 = and i8 %5369, 1
  %5371 = xor i8 %5370, 1
  store i8 %5371, i8* %21, align 1
  %5372 = xor i32 %5361, %5360
  %5373 = lshr i32 %5372, 4
  %5374 = trunc i32 %5373 to i8
  %5375 = and i8 %5374, 1
  store i8 %5375, i8* %26, align 1
  %5376 = zext i1 %5364 to i8
  store i8 %5376, i8* %29, align 1
  %5377 = lshr i32 %5361, 31
  %5378 = trunc i32 %5377 to i8
  store i8 %5378, i8* %32, align 1
  %5379 = lshr i32 %5360, 31
  %5380 = xor i32 %5377, %5379
  %5381 = add nuw nsw i32 %5380, %5377
  %5382 = icmp eq i32 %5381, 2
  %5383 = zext i1 %5382 to i8
  store i8 %5383, i8* %38, align 1
  %5384 = add i64 %4878, 14
  store i64 %5384, i64* %3, align 8
  store i32 %5361, i32* %5359, align 4
  %5385 = load i64, i64* %3, align 8
  %5386 = add i64 %5385, -277
  store i64 %5386, i64* %3, align 8
  br label %block_.L_419b95

block_.L_419caf:                                  ; preds = %block_.L_419b95
  %5387 = add i64 %4845, 7
  store i64 %5387, i64* %3, align 8
  store i32 0, i32* %4820, align 4
  %.pre222 = load i64, i64* %3, align 8
  br label %block_.L_419cb6

block_.L_419cb6:                                  ; preds = %block_.L_419dc9, %block_.L_419caf
  %5388 = phi i64 [ %.pre222, %block_.L_419caf ], [ %5956, %block_.L_419dc9 ]
  %5389 = load i64, i64* %RBP.i, align 8
  %5390 = add i64 %5389, -36
  %5391 = add i64 %5388, 4
  store i64 %5391, i64* %3, align 8
  %5392 = inttoptr i64 %5390 to i32*
  %5393 = load i32, i32* %5392, align 4
  %5394 = add i32 %5393, -10
  %5395 = icmp ult i32 %5393, 10
  %5396 = zext i1 %5395 to i8
  store i8 %5396, i8* %14, align 1
  %5397 = and i32 %5394, 255
  %5398 = tail call i32 @llvm.ctpop.i32(i32 %5397)
  %5399 = trunc i32 %5398 to i8
  %5400 = and i8 %5399, 1
  %5401 = xor i8 %5400, 1
  store i8 %5401, i8* %21, align 1
  %5402 = xor i32 %5394, %5393
  %5403 = lshr i32 %5402, 4
  %5404 = trunc i32 %5403 to i8
  %5405 = and i8 %5404, 1
  store i8 %5405, i8* %26, align 1
  %5406 = icmp eq i32 %5394, 0
  %5407 = zext i1 %5406 to i8
  store i8 %5407, i8* %29, align 1
  %5408 = lshr i32 %5394, 31
  %5409 = trunc i32 %5408 to i8
  store i8 %5409, i8* %32, align 1
  %5410 = lshr i32 %5393, 31
  %5411 = xor i32 %5408, %5410
  %5412 = add nuw nsw i32 %5411, %5410
  %5413 = icmp eq i32 %5412, 2
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %38, align 1
  %5415 = icmp ne i8 %5409, 0
  %5416 = xor i1 %5415, %5413
  %.v284 = select i1 %5416, i64 10, i64 294
  %5417 = add i64 %5388, %.v284
  store i64 %5417, i64* %3, align 8
  br i1 %5416, label %block_419cc0, label %block_.L_419ddc

block_419cc0:                                     ; preds = %block_.L_419cb6
  %5418 = add i64 %5389, -32
  %5419 = add i64 %5417, 7
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5418 to i32*
  store i32 0, i32* %5420, align 4
  %.pre242 = load i64, i64* %3, align 8
  br label %block_.L_419cc7

block_.L_419cc7:                                  ; preds = %block_.L_419db6, %block_419cc0
  %5421 = phi i64 [ %.pre242, %block_419cc0 ], [ %5926, %block_.L_419db6 ]
  %5422 = load i64, i64* %RBP.i, align 8
  %5423 = add i64 %5422, -32
  %5424 = add i64 %5421, 4
  store i64 %5424, i64* %3, align 8
  %5425 = inttoptr i64 %5423 to i32*
  %5426 = load i32, i32* %5425, align 4
  %5427 = add i32 %5426, -15
  %5428 = icmp ult i32 %5426, 15
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %14, align 1
  %5430 = and i32 %5427, 255
  %5431 = tail call i32 @llvm.ctpop.i32(i32 %5430)
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  %5434 = xor i8 %5433, 1
  store i8 %5434, i8* %21, align 1
  %5435 = xor i32 %5427, %5426
  %5436 = lshr i32 %5435, 4
  %5437 = trunc i32 %5436 to i8
  %5438 = and i8 %5437, 1
  store i8 %5438, i8* %26, align 1
  %5439 = icmp eq i32 %5427, 0
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %29, align 1
  %5441 = lshr i32 %5427, 31
  %5442 = trunc i32 %5441 to i8
  store i8 %5442, i8* %32, align 1
  %5443 = lshr i32 %5426, 31
  %5444 = xor i32 %5441, %5443
  %5445 = add nuw nsw i32 %5444, %5443
  %5446 = icmp eq i32 %5445, 2
  %5447 = zext i1 %5446 to i8
  store i8 %5447, i8* %38, align 1
  %5448 = icmp ne i8 %5442, 0
  %5449 = xor i1 %5448, %5446
  %.v266 = select i1 %5449, i64 10, i64 258
  %5450 = add i64 %5421, %.v266
  store i64 %5450, i64* %3, align 8
  br i1 %5449, label %block_419cd1, label %block_.L_419dc9

block_419cd1:                                     ; preds = %block_.L_419cc7
  %5451 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5451, i64* %RAX.i2481, align 8
  %5452 = add i64 %5451, 24
  %5453 = add i64 %5450, 12
  store i64 %5453, i64* %3, align 8
  %5454 = inttoptr i64 %5452 to i32*
  %5455 = load i32, i32* %5454, align 4
  %5456 = add i32 %5455, -2
  %5457 = icmp ult i32 %5455, 2
  %5458 = zext i1 %5457 to i8
  store i8 %5458, i8* %14, align 1
  %5459 = and i32 %5456, 255
  %5460 = tail call i32 @llvm.ctpop.i32(i32 %5459)
  %5461 = trunc i32 %5460 to i8
  %5462 = and i8 %5461, 1
  %5463 = xor i8 %5462, 1
  store i8 %5463, i8* %21, align 1
  %5464 = xor i32 %5456, %5455
  %5465 = lshr i32 %5464, 4
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  store i8 %5467, i8* %26, align 1
  %5468 = icmp eq i32 %5456, 0
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %29, align 1
  %5470 = lshr i32 %5456, 31
  %5471 = trunc i32 %5470 to i8
  store i8 %5471, i8* %32, align 1
  %5472 = lshr i32 %5455, 31
  %5473 = xor i32 %5470, %5472
  %5474 = add nuw nsw i32 %5473, %5472
  %5475 = icmp eq i32 %5474, 2
  %5476 = zext i1 %5475 to i8
  store i8 %5476, i8* %38, align 1
  %.v296 = select i1 %5468, i64 18, i64 126
  %5477 = add i64 %5450, %.v296
  %5478 = add i64 %5477, 10
  store i64 %5478, i64* %3, align 8
  br i1 %5468, label %block_419ce3, label %block_.L_419d4f

block_419ce3:                                     ; preds = %block_419cd1
  store i64 ptrtoint (%G__0x4b44b0_type* @G__0x4b44b0 to i64), i64* %RAX.i2481, align 8
  %5479 = add i64 %5422, -24
  %5480 = add i64 %5477, 14
  store i64 %5480, i64* %3, align 8
  %5481 = inttoptr i64 %5479 to i64*
  %5482 = load i64, i64* %5481, align 8
  %5483 = add i64 %5482, 928
  store i64 %5483, i64* %RCX.i2479, align 8
  %5484 = icmp ugt i64 %5482, -929
  %5485 = zext i1 %5484 to i8
  store i8 %5485, i8* %14, align 1
  %5486 = trunc i64 %5483 to i32
  %5487 = and i32 %5486, 255
  %5488 = tail call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  store i8 %5491, i8* %21, align 1
  %5492 = xor i64 %5483, %5482
  %5493 = lshr i64 %5492, 4
  %5494 = trunc i64 %5493 to i8
  %5495 = and i8 %5494, 1
  store i8 %5495, i8* %26, align 1
  %5496 = icmp eq i64 %5483, 0
  %5497 = zext i1 %5496 to i8
  store i8 %5497, i8* %29, align 1
  %5498 = lshr i64 %5483, 63
  %5499 = trunc i64 %5498 to i8
  store i8 %5499, i8* %32, align 1
  %5500 = lshr i64 %5482, 63
  %5501 = xor i64 %5498, %5500
  %5502 = add nuw nsw i64 %5501, %5498
  %5503 = icmp eq i64 %5502, 2
  %5504 = zext i1 %5503 to i8
  store i8 %5504, i8* %38, align 1
  %5505 = add i64 %5422, -36
  %5506 = add i64 %5477, 25
  store i64 %5506, i64* %3, align 8
  %5507 = inttoptr i64 %5505 to i32*
  %5508 = load i32, i32* %5507, align 4
  %5509 = sext i32 %5508 to i64
  %5510 = mul nsw i64 %5509, 240
  store i64 %5510, i64* %RDX.i2470, align 8
  %5511 = lshr i64 %5510, 63
  %5512 = add i64 %5510, %5483
  store i64 %5512, i64* %RCX.i2479, align 8
  %5513 = icmp ult i64 %5512, %5483
  %5514 = icmp ult i64 %5512, %5510
  %5515 = or i1 %5513, %5514
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %14, align 1
  %5517 = trunc i64 %5512 to i32
  %5518 = and i32 %5517, 255
  %5519 = tail call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  store i8 %5522, i8* %21, align 1
  %5523 = xor i64 %5510, %5483
  %5524 = xor i64 %5523, %5512
  %5525 = lshr i64 %5524, 4
  %5526 = trunc i64 %5525 to i8
  %5527 = and i8 %5526, 1
  store i8 %5527, i8* %26, align 1
  %5528 = icmp eq i64 %5512, 0
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %29, align 1
  %5530 = lshr i64 %5512, 63
  %5531 = trunc i64 %5530 to i8
  store i8 %5531, i8* %32, align 1
  %5532 = xor i64 %5530, %5498
  %5533 = xor i64 %5530, %5511
  %5534 = add nuw nsw i64 %5532, %5533
  %5535 = icmp eq i64 %5534, 2
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %38, align 1
  %5537 = load i64, i64* %RBP.i, align 8
  %5538 = add i64 %5537, -32
  %5539 = add i64 %5477, 39
  store i64 %5539, i64* %3, align 8
  %5540 = inttoptr i64 %5538 to i32*
  %5541 = load i32, i32* %5540, align 4
  %5542 = sext i32 %5541 to i64
  %5543 = shl nsw i64 %5542, 4
  store i64 %5543, i64* %RDX.i2470, align 8
  %5544 = add i64 %5543, %5512
  store i64 %5544, i64* %RCX.i2479, align 8
  %5545 = icmp ult i64 %5544, %5512
  %5546 = icmp ult i64 %5544, %5543
  %5547 = or i1 %5545, %5546
  %5548 = zext i1 %5547 to i8
  store i8 %5548, i8* %14, align 1
  %5549 = trunc i64 %5544 to i32
  %5550 = and i32 %5549, 255
  %5551 = tail call i32 @llvm.ctpop.i32(i32 %5550)
  %5552 = trunc i32 %5551 to i8
  %5553 = and i8 %5552, 1
  %5554 = xor i8 %5553, 1
  store i8 %5554, i8* %21, align 1
  %5555 = xor i64 %5543, %5512
  %5556 = xor i64 %5555, %5544
  %5557 = lshr i64 %5556, 4
  %5558 = trunc i64 %5557 to i8
  %5559 = and i8 %5558, 1
  store i8 %5559, i8* %26, align 1
  %5560 = icmp eq i64 %5544, 0
  %5561 = zext i1 %5560 to i8
  store i8 %5561, i8* %29, align 1
  %5562 = lshr i64 %5544, 63
  %5563 = trunc i64 %5562 to i8
  store i8 %5563, i8* %32, align 1
  %5564 = lshr i64 %5542, 59
  %5565 = and i64 %5564, 1
  %5566 = xor i64 %5562, %5530
  %5567 = xor i64 %5562, %5565
  %5568 = add nuw nsw i64 %5566, %5567
  %5569 = icmp eq i64 %5568, 2
  %5570 = zext i1 %5569 to i8
  store i8 %5570, i8* %38, align 1
  %5571 = add i64 %5537, -28
  %5572 = add i64 %5477, 50
  store i64 %5572, i64* %3, align 8
  %5573 = inttoptr i64 %5571 to i32*
  %5574 = load i32, i32* %5573, align 4
  %5575 = sext i32 %5574 to i64
  %5576 = mul nsw i64 %5575, 960
  store i64 %5576, i64* %RDX.i2470, align 8
  %5577 = lshr i64 %5576, 63
  %5578 = load i64, i64* %RAX.i2481, align 8
  %5579 = add i64 %5576, %5578
  store i64 %5579, i64* %RAX.i2481, align 8
  %5580 = icmp ult i64 %5579, %5578
  %5581 = icmp ult i64 %5579, %5576
  %5582 = or i1 %5580, %5581
  %5583 = zext i1 %5582 to i8
  store i8 %5583, i8* %14, align 1
  %5584 = trunc i64 %5579 to i32
  %5585 = and i32 %5584, 255
  %5586 = tail call i32 @llvm.ctpop.i32(i32 %5585)
  %5587 = trunc i32 %5586 to i8
  %5588 = and i8 %5587, 1
  %5589 = xor i8 %5588, 1
  store i8 %5589, i8* %21, align 1
  %5590 = xor i64 %5578, %5579
  %5591 = lshr i64 %5590, 4
  %5592 = trunc i64 %5591 to i8
  %5593 = and i8 %5592, 1
  store i8 %5593, i8* %26, align 1
  %5594 = icmp eq i64 %5579, 0
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %29, align 1
  %5596 = lshr i64 %5579, 63
  %5597 = trunc i64 %5596 to i8
  store i8 %5597, i8* %32, align 1
  %5598 = lshr i64 %5578, 63
  %5599 = xor i64 %5596, %5598
  %5600 = xor i64 %5596, %5577
  %5601 = add nuw nsw i64 %5599, %5600
  %5602 = icmp eq i64 %5601, 2
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %38, align 1
  %5604 = load i64, i64* %RBP.i, align 8
  %5605 = add i64 %5604, -36
  %5606 = add i64 %5477, 64
  store i64 %5606, i64* %3, align 8
  %5607 = inttoptr i64 %5605 to i32*
  %5608 = load i32, i32* %5607, align 4
  %5609 = sext i32 %5608 to i64
  %5610 = mul nsw i64 %5609, 120
  store i64 %5610, i64* %RDX.i2470, align 8
  %5611 = lshr i64 %5610, 63
  %5612 = add i64 %5610, %5579
  store i64 %5612, i64* %RAX.i2481, align 8
  %5613 = icmp ult i64 %5612, %5579
  %5614 = icmp ult i64 %5612, %5610
  %5615 = or i1 %5613, %5614
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %14, align 1
  %5617 = trunc i64 %5612 to i32
  %5618 = and i32 %5617, 255
  %5619 = tail call i32 @llvm.ctpop.i32(i32 %5618)
  %5620 = trunc i32 %5619 to i8
  %5621 = and i8 %5620, 1
  %5622 = xor i8 %5621, 1
  store i8 %5622, i8* %21, align 1
  %5623 = xor i64 %5610, %5579
  %5624 = xor i64 %5623, %5612
  %5625 = lshr i64 %5624, 4
  %5626 = trunc i64 %5625 to i8
  %5627 = and i8 %5626, 1
  store i8 %5627, i8* %26, align 1
  %5628 = icmp eq i64 %5612, 0
  %5629 = zext i1 %5628 to i8
  store i8 %5629, i8* %29, align 1
  %5630 = lshr i64 %5612, 63
  %5631 = trunc i64 %5630 to i8
  store i8 %5631, i8* %32, align 1
  %5632 = xor i64 %5630, %5596
  %5633 = xor i64 %5630, %5611
  %5634 = add nuw nsw i64 %5632, %5633
  %5635 = icmp eq i64 %5634, 2
  %5636 = zext i1 %5635 to i8
  store i8 %5636, i8* %38, align 1
  %5637 = add i64 %5604, -32
  %5638 = add i64 %5477, 75
  store i64 %5638, i64* %3, align 8
  %5639 = inttoptr i64 %5637 to i32*
  %5640 = load i32, i32* %5639, align 4
  %5641 = sext i32 %5640 to i64
  %5642 = shl nsw i64 %5641, 3
  store i64 %5642, i64* %RDX.i2470, align 8
  %5643 = add i64 %5642, %5612
  store i64 %5643, i64* %RAX.i2481, align 8
  %5644 = icmp ult i64 %5643, %5612
  %5645 = icmp ult i64 %5643, %5642
  %5646 = or i1 %5644, %5645
  %5647 = zext i1 %5646 to i8
  store i8 %5647, i8* %14, align 1
  %5648 = trunc i64 %5643 to i32
  %5649 = and i32 %5648, 255
  %5650 = tail call i32 @llvm.ctpop.i32(i32 %5649)
  %5651 = trunc i32 %5650 to i8
  %5652 = and i8 %5651, 1
  %5653 = xor i8 %5652, 1
  store i8 %5653, i8* %21, align 1
  %5654 = xor i64 %5642, %5612
  %5655 = xor i64 %5654, %5643
  %5656 = lshr i64 %5655, 4
  %5657 = trunc i64 %5656 to i8
  %5658 = and i8 %5657, 1
  store i8 %5658, i8* %26, align 1
  %5659 = icmp eq i64 %5643, 0
  %5660 = zext i1 %5659 to i8
  store i8 %5660, i8* %29, align 1
  %5661 = lshr i64 %5643, 63
  %5662 = trunc i64 %5661 to i8
  store i8 %5662, i8* %32, align 1
  %5663 = lshr i64 %5641, 60
  %5664 = and i64 %5663, 1
  %5665 = xor i64 %5661, %5630
  %5666 = xor i64 %5661, %5664
  %5667 = add nuw nsw i64 %5665, %5666
  %5668 = icmp eq i64 %5667, 2
  %5669 = zext i1 %5668 to i8
  store i8 %5669, i8* %38, align 1
  %5670 = load i64, i64* %RCX.i2479, align 8
  store i64 %5670, i64* %RDI.i2476, align 8
  store i64 %5643, i64* %RSI.i2473, align 8
  %5671 = add i64 %5477, -3427
  %5672 = add i64 %5477, 93
  %5673 = load i64, i64* %6, align 8
  %5674 = add i64 %5673, -8
  %5675 = inttoptr i64 %5674 to i64*
  store i64 %5672, i64* %5675, align 8
  store i64 %5674, i64* %6, align 8
  store i64 %5671, i64* %3, align 8
  %call2_419d3b = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %5671, %struct.Memory* %MEMORY.0)
  %5676 = load i64, i64* %RBP.i, align 8
  %5677 = add i64 %5676, -48
  %5678 = load i64, i64* %3, align 8
  %5679 = add i64 %5678, 5
  store i64 %5679, i64* %3, align 8
  %5680 = load double, double* %44, align 1
  %5681 = inttoptr i64 %5677 to double*
  %5682 = load double, double* %5681, align 8
  %5683 = fadd double %5680, %5682
  store double %5683, double* %44, align 1
  %5684 = add i64 %5678, 10
  store i64 %5684, i64* %3, align 8
  %5685 = inttoptr i64 %5677 to double*
  store double %5683, double* %5685, align 8
  %5686 = load i64, i64* %3, align 8
  %5687 = add i64 %5686, 108
  store i64 %5687, i64* %3, align 8
  br label %block_.L_419db6

block_.L_419d4f:                                  ; preds = %block_419cd1
  store i64 ptrtoint (%G__0x4b4870_type* @G__0x4b4870 to i64), i64* %RAX.i2481, align 8
  %5688 = add i64 %5422, -24
  %5689 = add i64 %5477, 14
  store i64 %5689, i64* %3, align 8
  %5690 = inttoptr i64 %5688 to i64*
  %5691 = load i64, i64* %5690, align 8
  %5692 = add i64 %5691, 928
  store i64 %5692, i64* %RCX.i2479, align 8
  %5693 = icmp ugt i64 %5691, -929
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %14, align 1
  %5695 = trunc i64 %5692 to i32
  %5696 = and i32 %5695, 255
  %5697 = tail call i32 @llvm.ctpop.i32(i32 %5696)
  %5698 = trunc i32 %5697 to i8
  %5699 = and i8 %5698, 1
  %5700 = xor i8 %5699, 1
  store i8 %5700, i8* %21, align 1
  %5701 = xor i64 %5692, %5691
  %5702 = lshr i64 %5701, 4
  %5703 = trunc i64 %5702 to i8
  %5704 = and i8 %5703, 1
  store i8 %5704, i8* %26, align 1
  %5705 = icmp eq i64 %5692, 0
  %5706 = zext i1 %5705 to i8
  store i8 %5706, i8* %29, align 1
  %5707 = lshr i64 %5692, 63
  %5708 = trunc i64 %5707 to i8
  store i8 %5708, i8* %32, align 1
  %5709 = lshr i64 %5691, 63
  %5710 = xor i64 %5707, %5709
  %5711 = add nuw nsw i64 %5710, %5707
  %5712 = icmp eq i64 %5711, 2
  %5713 = zext i1 %5712 to i8
  store i8 %5713, i8* %38, align 1
  %5714 = add i64 %5422, -36
  %5715 = add i64 %5477, 25
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5714 to i32*
  %5717 = load i32, i32* %5716, align 4
  %5718 = sext i32 %5717 to i64
  %5719 = mul nsw i64 %5718, 240
  store i64 %5719, i64* %RDX.i2470, align 8
  %5720 = lshr i64 %5719, 63
  %5721 = add i64 %5719, %5692
  store i64 %5721, i64* %RCX.i2479, align 8
  %5722 = icmp ult i64 %5721, %5692
  %5723 = icmp ult i64 %5721, %5719
  %5724 = or i1 %5722, %5723
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %14, align 1
  %5726 = trunc i64 %5721 to i32
  %5727 = and i32 %5726, 255
  %5728 = tail call i32 @llvm.ctpop.i32(i32 %5727)
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = xor i8 %5730, 1
  store i8 %5731, i8* %21, align 1
  %5732 = xor i64 %5719, %5692
  %5733 = xor i64 %5732, %5721
  %5734 = lshr i64 %5733, 4
  %5735 = trunc i64 %5734 to i8
  %5736 = and i8 %5735, 1
  store i8 %5736, i8* %26, align 1
  %5737 = icmp eq i64 %5721, 0
  %5738 = zext i1 %5737 to i8
  store i8 %5738, i8* %29, align 1
  %5739 = lshr i64 %5721, 63
  %5740 = trunc i64 %5739 to i8
  store i8 %5740, i8* %32, align 1
  %5741 = xor i64 %5739, %5707
  %5742 = xor i64 %5739, %5720
  %5743 = add nuw nsw i64 %5741, %5742
  %5744 = icmp eq i64 %5743, 2
  %5745 = zext i1 %5744 to i8
  store i8 %5745, i8* %38, align 1
  %5746 = load i64, i64* %RBP.i, align 8
  %5747 = add i64 %5746, -32
  %5748 = add i64 %5477, 39
  store i64 %5748, i64* %3, align 8
  %5749 = inttoptr i64 %5747 to i32*
  %5750 = load i32, i32* %5749, align 4
  %5751 = sext i32 %5750 to i64
  %5752 = shl nsw i64 %5751, 4
  store i64 %5752, i64* %RDX.i2470, align 8
  %5753 = add i64 %5752, %5721
  store i64 %5753, i64* %RCX.i2479, align 8
  %5754 = icmp ult i64 %5753, %5721
  %5755 = icmp ult i64 %5753, %5752
  %5756 = or i1 %5754, %5755
  %5757 = zext i1 %5756 to i8
  store i8 %5757, i8* %14, align 1
  %5758 = trunc i64 %5753 to i32
  %5759 = and i32 %5758, 255
  %5760 = tail call i32 @llvm.ctpop.i32(i32 %5759)
  %5761 = trunc i32 %5760 to i8
  %5762 = and i8 %5761, 1
  %5763 = xor i8 %5762, 1
  store i8 %5763, i8* %21, align 1
  %5764 = xor i64 %5752, %5721
  %5765 = xor i64 %5764, %5753
  %5766 = lshr i64 %5765, 4
  %5767 = trunc i64 %5766 to i8
  %5768 = and i8 %5767, 1
  store i8 %5768, i8* %26, align 1
  %5769 = icmp eq i64 %5753, 0
  %5770 = zext i1 %5769 to i8
  store i8 %5770, i8* %29, align 1
  %5771 = lshr i64 %5753, 63
  %5772 = trunc i64 %5771 to i8
  store i8 %5772, i8* %32, align 1
  %5773 = lshr i64 %5751, 59
  %5774 = and i64 %5773, 1
  %5775 = xor i64 %5771, %5739
  %5776 = xor i64 %5771, %5774
  %5777 = add nuw nsw i64 %5775, %5776
  %5778 = icmp eq i64 %5777, 2
  %5779 = zext i1 %5778 to i8
  store i8 %5779, i8* %38, align 1
  %5780 = add i64 %5746, -28
  %5781 = add i64 %5477, 50
  store i64 %5781, i64* %3, align 8
  %5782 = inttoptr i64 %5780 to i32*
  %5783 = load i32, i32* %5782, align 4
  %5784 = sext i32 %5783 to i64
  %5785 = mul nsw i64 %5784, 960
  store i64 %5785, i64* %RDX.i2470, align 8
  %5786 = lshr i64 %5785, 63
  %5787 = load i64, i64* %RAX.i2481, align 8
  %5788 = add i64 %5785, %5787
  store i64 %5788, i64* %RAX.i2481, align 8
  %5789 = icmp ult i64 %5788, %5787
  %5790 = icmp ult i64 %5788, %5785
  %5791 = or i1 %5789, %5790
  %5792 = zext i1 %5791 to i8
  store i8 %5792, i8* %14, align 1
  %5793 = trunc i64 %5788 to i32
  %5794 = and i32 %5793, 255
  %5795 = tail call i32 @llvm.ctpop.i32(i32 %5794)
  %5796 = trunc i32 %5795 to i8
  %5797 = and i8 %5796, 1
  %5798 = xor i8 %5797, 1
  store i8 %5798, i8* %21, align 1
  %5799 = xor i64 %5787, %5788
  %5800 = lshr i64 %5799, 4
  %5801 = trunc i64 %5800 to i8
  %5802 = and i8 %5801, 1
  store i8 %5802, i8* %26, align 1
  %5803 = icmp eq i64 %5788, 0
  %5804 = zext i1 %5803 to i8
  store i8 %5804, i8* %29, align 1
  %5805 = lshr i64 %5788, 63
  %5806 = trunc i64 %5805 to i8
  store i8 %5806, i8* %32, align 1
  %5807 = lshr i64 %5787, 63
  %5808 = xor i64 %5805, %5807
  %5809 = xor i64 %5805, %5786
  %5810 = add nuw nsw i64 %5808, %5809
  %5811 = icmp eq i64 %5810, 2
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %38, align 1
  %5813 = load i64, i64* %RBP.i, align 8
  %5814 = add i64 %5813, -36
  %5815 = add i64 %5477, 64
  store i64 %5815, i64* %3, align 8
  %5816 = inttoptr i64 %5814 to i32*
  %5817 = load i32, i32* %5816, align 4
  %5818 = sext i32 %5817 to i64
  %5819 = mul nsw i64 %5818, 120
  store i64 %5819, i64* %RDX.i2470, align 8
  %5820 = lshr i64 %5819, 63
  %5821 = add i64 %5819, %5788
  store i64 %5821, i64* %RAX.i2481, align 8
  %5822 = icmp ult i64 %5821, %5788
  %5823 = icmp ult i64 %5821, %5819
  %5824 = or i1 %5822, %5823
  %5825 = zext i1 %5824 to i8
  store i8 %5825, i8* %14, align 1
  %5826 = trunc i64 %5821 to i32
  %5827 = and i32 %5826, 255
  %5828 = tail call i32 @llvm.ctpop.i32(i32 %5827)
  %5829 = trunc i32 %5828 to i8
  %5830 = and i8 %5829, 1
  %5831 = xor i8 %5830, 1
  store i8 %5831, i8* %21, align 1
  %5832 = xor i64 %5819, %5788
  %5833 = xor i64 %5832, %5821
  %5834 = lshr i64 %5833, 4
  %5835 = trunc i64 %5834 to i8
  %5836 = and i8 %5835, 1
  store i8 %5836, i8* %26, align 1
  %5837 = icmp eq i64 %5821, 0
  %5838 = zext i1 %5837 to i8
  store i8 %5838, i8* %29, align 1
  %5839 = lshr i64 %5821, 63
  %5840 = trunc i64 %5839 to i8
  store i8 %5840, i8* %32, align 1
  %5841 = xor i64 %5839, %5805
  %5842 = xor i64 %5839, %5820
  %5843 = add nuw nsw i64 %5841, %5842
  %5844 = icmp eq i64 %5843, 2
  %5845 = zext i1 %5844 to i8
  store i8 %5845, i8* %38, align 1
  %5846 = add i64 %5813, -32
  %5847 = add i64 %5477, 75
  store i64 %5847, i64* %3, align 8
  %5848 = inttoptr i64 %5846 to i32*
  %5849 = load i32, i32* %5848, align 4
  %5850 = sext i32 %5849 to i64
  %5851 = shl nsw i64 %5850, 3
  store i64 %5851, i64* %RDX.i2470, align 8
  %5852 = add i64 %5851, %5821
  store i64 %5852, i64* %RAX.i2481, align 8
  %5853 = icmp ult i64 %5852, %5821
  %5854 = icmp ult i64 %5852, %5851
  %5855 = or i1 %5853, %5854
  %5856 = zext i1 %5855 to i8
  store i8 %5856, i8* %14, align 1
  %5857 = trunc i64 %5852 to i32
  %5858 = and i32 %5857, 255
  %5859 = tail call i32 @llvm.ctpop.i32(i32 %5858)
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  %5862 = xor i8 %5861, 1
  store i8 %5862, i8* %21, align 1
  %5863 = xor i64 %5851, %5821
  %5864 = xor i64 %5863, %5852
  %5865 = lshr i64 %5864, 4
  %5866 = trunc i64 %5865 to i8
  %5867 = and i8 %5866, 1
  store i8 %5867, i8* %26, align 1
  %5868 = icmp eq i64 %5852, 0
  %5869 = zext i1 %5868 to i8
  store i8 %5869, i8* %29, align 1
  %5870 = lshr i64 %5852, 63
  %5871 = trunc i64 %5870 to i8
  store i8 %5871, i8* %32, align 1
  %5872 = lshr i64 %5850, 60
  %5873 = and i64 %5872, 1
  %5874 = xor i64 %5870, %5839
  %5875 = xor i64 %5870, %5873
  %5876 = add nuw nsw i64 %5874, %5875
  %5877 = icmp eq i64 %5876, 2
  %5878 = zext i1 %5877 to i8
  store i8 %5878, i8* %38, align 1
  %5879 = load i64, i64* %RCX.i2479, align 8
  store i64 %5879, i64* %RDI.i2476, align 8
  store i64 %5852, i64* %RSI.i2473, align 8
  %5880 = add i64 %5477, -3535
  %5881 = add i64 %5477, 93
  %5882 = load i64, i64* %6, align 8
  %5883 = add i64 %5882, -8
  %5884 = inttoptr i64 %5883 to i64*
  store i64 %5881, i64* %5884, align 8
  store i64 %5883, i64* %6, align 8
  store i64 %5880, i64* %3, align 8
  %call2_419da7 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %5880, %struct.Memory* %MEMORY.0)
  %5885 = load i64, i64* %RBP.i, align 8
  %5886 = add i64 %5885, -48
  %5887 = load i64, i64* %3, align 8
  %5888 = add i64 %5887, 5
  store i64 %5888, i64* %3, align 8
  %5889 = load double, double* %44, align 1
  %5890 = inttoptr i64 %5886 to double*
  %5891 = load double, double* %5890, align 8
  %5892 = fadd double %5889, %5891
  store double %5892, double* %44, align 1
  %5893 = add i64 %5887, 10
  store i64 %5893, i64* %3, align 8
  %5894 = inttoptr i64 %5886 to double*
  store double %5892, double* %5894, align 8
  %.pre243 = load i64, i64* %3, align 8
  br label %block_.L_419db6

block_.L_419db6:                                  ; preds = %block_.L_419d4f, %block_419ce3
  %5895 = phi i64 [ %.pre243, %block_.L_419d4f ], [ %5687, %block_419ce3 ]
  %5896 = load i64, i64* %RBP.i, align 8
  %5897 = add i64 %5896, -32
  %5898 = add i64 %5895, 8
  store i64 %5898, i64* %3, align 8
  %5899 = inttoptr i64 %5897 to i32*
  %5900 = load i32, i32* %5899, align 4
  %5901 = add i32 %5900, 1
  %5902 = zext i32 %5901 to i64
  store i64 %5902, i64* %RAX.i2481, align 8
  %5903 = icmp eq i32 %5900, -1
  %5904 = icmp eq i32 %5901, 0
  %5905 = or i1 %5903, %5904
  %5906 = zext i1 %5905 to i8
  store i8 %5906, i8* %14, align 1
  %5907 = and i32 %5901, 255
  %5908 = tail call i32 @llvm.ctpop.i32(i32 %5907)
  %5909 = trunc i32 %5908 to i8
  %5910 = and i8 %5909, 1
  %5911 = xor i8 %5910, 1
  store i8 %5911, i8* %21, align 1
  %5912 = xor i32 %5901, %5900
  %5913 = lshr i32 %5912, 4
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  store i8 %5915, i8* %26, align 1
  %5916 = zext i1 %5904 to i8
  store i8 %5916, i8* %29, align 1
  %5917 = lshr i32 %5901, 31
  %5918 = trunc i32 %5917 to i8
  store i8 %5918, i8* %32, align 1
  %5919 = lshr i32 %5900, 31
  %5920 = xor i32 %5917, %5919
  %5921 = add nuw nsw i32 %5920, %5917
  %5922 = icmp eq i32 %5921, 2
  %5923 = zext i1 %5922 to i8
  store i8 %5923, i8* %38, align 1
  %5924 = add i64 %5895, 14
  store i64 %5924, i64* %3, align 8
  store i32 %5901, i32* %5899, align 4
  %5925 = load i64, i64* %3, align 8
  %5926 = add i64 %5925, -253
  store i64 %5926, i64* %3, align 8
  br label %block_.L_419cc7

block_.L_419dc9:                                  ; preds = %block_.L_419cc7
  %5927 = add i64 %5422, -36
  %5928 = add i64 %5450, 8
  store i64 %5928, i64* %3, align 8
  %5929 = inttoptr i64 %5927 to i32*
  %5930 = load i32, i32* %5929, align 4
  %5931 = add i32 %5930, 1
  %5932 = zext i32 %5931 to i64
  store i64 %5932, i64* %RAX.i2481, align 8
  %5933 = icmp eq i32 %5930, -1
  %5934 = icmp eq i32 %5931, 0
  %5935 = or i1 %5933, %5934
  %5936 = zext i1 %5935 to i8
  store i8 %5936, i8* %14, align 1
  %5937 = and i32 %5931, 255
  %5938 = tail call i32 @llvm.ctpop.i32(i32 %5937)
  %5939 = trunc i32 %5938 to i8
  %5940 = and i8 %5939, 1
  %5941 = xor i8 %5940, 1
  store i8 %5941, i8* %21, align 1
  %5942 = xor i32 %5931, %5930
  %5943 = lshr i32 %5942, 4
  %5944 = trunc i32 %5943 to i8
  %5945 = and i8 %5944, 1
  store i8 %5945, i8* %26, align 1
  %5946 = zext i1 %5934 to i8
  store i8 %5946, i8* %29, align 1
  %5947 = lshr i32 %5931, 31
  %5948 = trunc i32 %5947 to i8
  store i8 %5948, i8* %32, align 1
  %5949 = lshr i32 %5930, 31
  %5950 = xor i32 %5947, %5949
  %5951 = add nuw nsw i32 %5950, %5947
  %5952 = icmp eq i32 %5951, 2
  %5953 = zext i1 %5952 to i8
  store i8 %5953, i8* %38, align 1
  %5954 = add i64 %5450, 14
  store i64 %5954, i64* %3, align 8
  store i32 %5931, i32* %5929, align 4
  %5955 = load i64, i64* %3, align 8
  %5956 = add i64 %5955, -289
  store i64 %5956, i64* %3, align 8
  br label %block_.L_419cb6

block_.L_419ddc:                                  ; preds = %block_.L_419cb6
  %5957 = add i64 %5417, 7
  store i64 %5957, i64* %3, align 8
  store i32 0, i32* %5392, align 4
  %.pre223 = load i64, i64* %3, align 8
  br label %block_.L_419de3

block_.L_419de3:                                  ; preds = %block_.L_419ef6, %block_.L_419ddc
  %5958 = phi i64 [ %.pre223, %block_.L_419ddc ], [ %6526, %block_.L_419ef6 ]
  %5959 = load i64, i64* %RBP.i, align 8
  %5960 = add i64 %5959, -36
  %5961 = add i64 %5958, 4
  store i64 %5961, i64* %3, align 8
  %5962 = inttoptr i64 %5960 to i32*
  %5963 = load i32, i32* %5962, align 4
  %5964 = add i32 %5963, -10
  %5965 = icmp ult i32 %5963, 10
  %5966 = zext i1 %5965 to i8
  store i8 %5966, i8* %14, align 1
  %5967 = and i32 %5964, 255
  %5968 = tail call i32 @llvm.ctpop.i32(i32 %5967)
  %5969 = trunc i32 %5968 to i8
  %5970 = and i8 %5969, 1
  %5971 = xor i8 %5970, 1
  store i8 %5971, i8* %21, align 1
  %5972 = xor i32 %5964, %5963
  %5973 = lshr i32 %5972, 4
  %5974 = trunc i32 %5973 to i8
  %5975 = and i8 %5974, 1
  store i8 %5975, i8* %26, align 1
  %5976 = icmp eq i32 %5964, 0
  %5977 = zext i1 %5976 to i8
  store i8 %5977, i8* %29, align 1
  %5978 = lshr i32 %5964, 31
  %5979 = trunc i32 %5978 to i8
  store i8 %5979, i8* %32, align 1
  %5980 = lshr i32 %5963, 31
  %5981 = xor i32 %5978, %5980
  %5982 = add nuw nsw i32 %5981, %5980
  %5983 = icmp eq i32 %5982, 2
  %5984 = zext i1 %5983 to i8
  store i8 %5984, i8* %38, align 1
  %5985 = icmp ne i8 %5979, 0
  %5986 = xor i1 %5985, %5983
  %.v285 = select i1 %5986, i64 10, i64 294
  %5987 = add i64 %5958, %.v285
  store i64 %5987, i64* %3, align 8
  br i1 %5986, label %block_419ded, label %block_.L_419f09

block_419ded:                                     ; preds = %block_.L_419de3
  %5988 = add i64 %5959, -32
  %5989 = add i64 %5987, 7
  store i64 %5989, i64* %3, align 8
  %5990 = inttoptr i64 %5988 to i32*
  store i32 0, i32* %5990, align 4
  %.pre240 = load i64, i64* %3, align 8
  br label %block_.L_419df4

block_.L_419df4:                                  ; preds = %block_.L_419ee3, %block_419ded
  %5991 = phi i64 [ %.pre240, %block_419ded ], [ %6496, %block_.L_419ee3 ]
  %5992 = load i64, i64* %RBP.i, align 8
  %5993 = add i64 %5992, -32
  %5994 = add i64 %5991, 4
  store i64 %5994, i64* %3, align 8
  %5995 = inttoptr i64 %5993 to i32*
  %5996 = load i32, i32* %5995, align 4
  %5997 = add i32 %5996, -15
  %5998 = icmp ult i32 %5996, 15
  %5999 = zext i1 %5998 to i8
  store i8 %5999, i8* %14, align 1
  %6000 = and i32 %5997, 255
  %6001 = tail call i32 @llvm.ctpop.i32(i32 %6000)
  %6002 = trunc i32 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = xor i8 %6003, 1
  store i8 %6004, i8* %21, align 1
  %6005 = xor i32 %5997, %5996
  %6006 = lshr i32 %6005, 4
  %6007 = trunc i32 %6006 to i8
  %6008 = and i8 %6007, 1
  store i8 %6008, i8* %26, align 1
  %6009 = icmp eq i32 %5997, 0
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %29, align 1
  %6011 = lshr i32 %5997, 31
  %6012 = trunc i32 %6011 to i8
  store i8 %6012, i8* %32, align 1
  %6013 = lshr i32 %5996, 31
  %6014 = xor i32 %6011, %6013
  %6015 = add nuw nsw i32 %6014, %6013
  %6016 = icmp eq i32 %6015, 2
  %6017 = zext i1 %6016 to i8
  store i8 %6017, i8* %38, align 1
  %6018 = icmp ne i8 %6012, 0
  %6019 = xor i1 %6018, %6016
  %.v265 = select i1 %6019, i64 10, i64 258
  %6020 = add i64 %5991, %.v265
  store i64 %6020, i64* %3, align 8
  br i1 %6019, label %block_419dfe, label %block_.L_419ef6

block_419dfe:                                     ; preds = %block_.L_419df4
  %6021 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6021, i64* %RAX.i2481, align 8
  %6022 = add i64 %6021, 24
  %6023 = add i64 %6020, 12
  store i64 %6023, i64* %3, align 8
  %6024 = inttoptr i64 %6022 to i32*
  %6025 = load i32, i32* %6024, align 4
  %6026 = add i32 %6025, -2
  %6027 = icmp ult i32 %6025, 2
  %6028 = zext i1 %6027 to i8
  store i8 %6028, i8* %14, align 1
  %6029 = and i32 %6026, 255
  %6030 = tail call i32 @llvm.ctpop.i32(i32 %6029)
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = xor i8 %6032, 1
  store i8 %6033, i8* %21, align 1
  %6034 = xor i32 %6026, %6025
  %6035 = lshr i32 %6034, 4
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  store i8 %6037, i8* %26, align 1
  %6038 = icmp eq i32 %6026, 0
  %6039 = zext i1 %6038 to i8
  store i8 %6039, i8* %29, align 1
  %6040 = lshr i32 %6026, 31
  %6041 = trunc i32 %6040 to i8
  store i8 %6041, i8* %32, align 1
  %6042 = lshr i32 %6025, 31
  %6043 = xor i32 %6040, %6042
  %6044 = add nuw nsw i32 %6043, %6042
  %6045 = icmp eq i32 %6044, 2
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %38, align 1
  %.v295 = select i1 %6038, i64 18, i64 126
  %6047 = add i64 %6020, %.v295
  %6048 = add i64 %6047, 10
  store i64 %6048, i64* %3, align 8
  br i1 %6038, label %block_419e10, label %block_.L_419e7c

block_419e10:                                     ; preds = %block_419dfe
  store i64 ptrtoint (%G__0x4b53b0_type* @G__0x4b53b0 to i64), i64* %RAX.i2481, align 8
  %6049 = add i64 %5992, -24
  %6050 = add i64 %6047, 14
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i64*
  %6052 = load i64, i64* %6051, align 8
  %6053 = add i64 %6052, 3328
  store i64 %6053, i64* %RCX.i2479, align 8
  %6054 = icmp ugt i64 %6052, -3329
  %6055 = zext i1 %6054 to i8
  store i8 %6055, i8* %14, align 1
  %6056 = trunc i64 %6053 to i32
  %6057 = and i32 %6056, 255
  %6058 = tail call i32 @llvm.ctpop.i32(i32 %6057)
  %6059 = trunc i32 %6058 to i8
  %6060 = and i8 %6059, 1
  %6061 = xor i8 %6060, 1
  store i8 %6061, i8* %21, align 1
  %6062 = xor i64 %6053, %6052
  %6063 = lshr i64 %6062, 4
  %6064 = trunc i64 %6063 to i8
  %6065 = and i8 %6064, 1
  store i8 %6065, i8* %26, align 1
  %6066 = icmp eq i64 %6053, 0
  %6067 = zext i1 %6066 to i8
  store i8 %6067, i8* %29, align 1
  %6068 = lshr i64 %6053, 63
  %6069 = trunc i64 %6068 to i8
  store i8 %6069, i8* %32, align 1
  %6070 = lshr i64 %6052, 63
  %6071 = xor i64 %6068, %6070
  %6072 = add nuw nsw i64 %6071, %6068
  %6073 = icmp eq i64 %6072, 2
  %6074 = zext i1 %6073 to i8
  store i8 %6074, i8* %38, align 1
  %6075 = add i64 %5992, -36
  %6076 = add i64 %6047, 25
  store i64 %6076, i64* %3, align 8
  %6077 = inttoptr i64 %6075 to i32*
  %6078 = load i32, i32* %6077, align 4
  %6079 = sext i32 %6078 to i64
  %6080 = mul nsw i64 %6079, 240
  store i64 %6080, i64* %RDX.i2470, align 8
  %6081 = lshr i64 %6080, 63
  %6082 = add i64 %6080, %6053
  store i64 %6082, i64* %RCX.i2479, align 8
  %6083 = icmp ult i64 %6082, %6053
  %6084 = icmp ult i64 %6082, %6080
  %6085 = or i1 %6083, %6084
  %6086 = zext i1 %6085 to i8
  store i8 %6086, i8* %14, align 1
  %6087 = trunc i64 %6082 to i32
  %6088 = and i32 %6087, 255
  %6089 = tail call i32 @llvm.ctpop.i32(i32 %6088)
  %6090 = trunc i32 %6089 to i8
  %6091 = and i8 %6090, 1
  %6092 = xor i8 %6091, 1
  store i8 %6092, i8* %21, align 1
  %6093 = xor i64 %6080, %6053
  %6094 = xor i64 %6093, %6082
  %6095 = lshr i64 %6094, 4
  %6096 = trunc i64 %6095 to i8
  %6097 = and i8 %6096, 1
  store i8 %6097, i8* %26, align 1
  %6098 = icmp eq i64 %6082, 0
  %6099 = zext i1 %6098 to i8
  store i8 %6099, i8* %29, align 1
  %6100 = lshr i64 %6082, 63
  %6101 = trunc i64 %6100 to i8
  store i8 %6101, i8* %32, align 1
  %6102 = xor i64 %6100, %6068
  %6103 = xor i64 %6100, %6081
  %6104 = add nuw nsw i64 %6102, %6103
  %6105 = icmp eq i64 %6104, 2
  %6106 = zext i1 %6105 to i8
  store i8 %6106, i8* %38, align 1
  %6107 = load i64, i64* %RBP.i, align 8
  %6108 = add i64 %6107, -32
  %6109 = add i64 %6047, 39
  store i64 %6109, i64* %3, align 8
  %6110 = inttoptr i64 %6108 to i32*
  %6111 = load i32, i32* %6110, align 4
  %6112 = sext i32 %6111 to i64
  %6113 = shl nsw i64 %6112, 4
  store i64 %6113, i64* %RDX.i2470, align 8
  %6114 = add i64 %6113, %6082
  store i64 %6114, i64* %RCX.i2479, align 8
  %6115 = icmp ult i64 %6114, %6082
  %6116 = icmp ult i64 %6114, %6113
  %6117 = or i1 %6115, %6116
  %6118 = zext i1 %6117 to i8
  store i8 %6118, i8* %14, align 1
  %6119 = trunc i64 %6114 to i32
  %6120 = and i32 %6119, 255
  %6121 = tail call i32 @llvm.ctpop.i32(i32 %6120)
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  store i8 %6124, i8* %21, align 1
  %6125 = xor i64 %6113, %6082
  %6126 = xor i64 %6125, %6114
  %6127 = lshr i64 %6126, 4
  %6128 = trunc i64 %6127 to i8
  %6129 = and i8 %6128, 1
  store i8 %6129, i8* %26, align 1
  %6130 = icmp eq i64 %6114, 0
  %6131 = zext i1 %6130 to i8
  store i8 %6131, i8* %29, align 1
  %6132 = lshr i64 %6114, 63
  %6133 = trunc i64 %6132 to i8
  store i8 %6133, i8* %32, align 1
  %6134 = lshr i64 %6112, 59
  %6135 = and i64 %6134, 1
  %6136 = xor i64 %6132, %6100
  %6137 = xor i64 %6132, %6135
  %6138 = add nuw nsw i64 %6136, %6137
  %6139 = icmp eq i64 %6138, 2
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %38, align 1
  %6141 = add i64 %6107, -28
  %6142 = add i64 %6047, 50
  store i64 %6142, i64* %3, align 8
  %6143 = inttoptr i64 %6141 to i32*
  %6144 = load i32, i32* %6143, align 4
  %6145 = sext i32 %6144 to i64
  %6146 = mul nsw i64 %6145, 960
  store i64 %6146, i64* %RDX.i2470, align 8
  %6147 = lshr i64 %6146, 63
  %6148 = load i64, i64* %RAX.i2481, align 8
  %6149 = add i64 %6146, %6148
  store i64 %6149, i64* %RAX.i2481, align 8
  %6150 = icmp ult i64 %6149, %6148
  %6151 = icmp ult i64 %6149, %6146
  %6152 = or i1 %6150, %6151
  %6153 = zext i1 %6152 to i8
  store i8 %6153, i8* %14, align 1
  %6154 = trunc i64 %6149 to i32
  %6155 = and i32 %6154, 255
  %6156 = tail call i32 @llvm.ctpop.i32(i32 %6155)
  %6157 = trunc i32 %6156 to i8
  %6158 = and i8 %6157, 1
  %6159 = xor i8 %6158, 1
  store i8 %6159, i8* %21, align 1
  %6160 = xor i64 %6148, %6149
  %6161 = lshr i64 %6160, 4
  %6162 = trunc i64 %6161 to i8
  %6163 = and i8 %6162, 1
  store i8 %6163, i8* %26, align 1
  %6164 = icmp eq i64 %6149, 0
  %6165 = zext i1 %6164 to i8
  store i8 %6165, i8* %29, align 1
  %6166 = lshr i64 %6149, 63
  %6167 = trunc i64 %6166 to i8
  store i8 %6167, i8* %32, align 1
  %6168 = lshr i64 %6148, 63
  %6169 = xor i64 %6166, %6168
  %6170 = xor i64 %6166, %6147
  %6171 = add nuw nsw i64 %6169, %6170
  %6172 = icmp eq i64 %6171, 2
  %6173 = zext i1 %6172 to i8
  store i8 %6173, i8* %38, align 1
  %6174 = load i64, i64* %RBP.i, align 8
  %6175 = add i64 %6174, -36
  %6176 = add i64 %6047, 64
  store i64 %6176, i64* %3, align 8
  %6177 = inttoptr i64 %6175 to i32*
  %6178 = load i32, i32* %6177, align 4
  %6179 = sext i32 %6178 to i64
  %6180 = mul nsw i64 %6179, 120
  store i64 %6180, i64* %RDX.i2470, align 8
  %6181 = lshr i64 %6180, 63
  %6182 = add i64 %6180, %6149
  store i64 %6182, i64* %RAX.i2481, align 8
  %6183 = icmp ult i64 %6182, %6149
  %6184 = icmp ult i64 %6182, %6180
  %6185 = or i1 %6183, %6184
  %6186 = zext i1 %6185 to i8
  store i8 %6186, i8* %14, align 1
  %6187 = trunc i64 %6182 to i32
  %6188 = and i32 %6187, 255
  %6189 = tail call i32 @llvm.ctpop.i32(i32 %6188)
  %6190 = trunc i32 %6189 to i8
  %6191 = and i8 %6190, 1
  %6192 = xor i8 %6191, 1
  store i8 %6192, i8* %21, align 1
  %6193 = xor i64 %6180, %6149
  %6194 = xor i64 %6193, %6182
  %6195 = lshr i64 %6194, 4
  %6196 = trunc i64 %6195 to i8
  %6197 = and i8 %6196, 1
  store i8 %6197, i8* %26, align 1
  %6198 = icmp eq i64 %6182, 0
  %6199 = zext i1 %6198 to i8
  store i8 %6199, i8* %29, align 1
  %6200 = lshr i64 %6182, 63
  %6201 = trunc i64 %6200 to i8
  store i8 %6201, i8* %32, align 1
  %6202 = xor i64 %6200, %6166
  %6203 = xor i64 %6200, %6181
  %6204 = add nuw nsw i64 %6202, %6203
  %6205 = icmp eq i64 %6204, 2
  %6206 = zext i1 %6205 to i8
  store i8 %6206, i8* %38, align 1
  %6207 = add i64 %6174, -32
  %6208 = add i64 %6047, 75
  store i64 %6208, i64* %3, align 8
  %6209 = inttoptr i64 %6207 to i32*
  %6210 = load i32, i32* %6209, align 4
  %6211 = sext i32 %6210 to i64
  %6212 = shl nsw i64 %6211, 3
  store i64 %6212, i64* %RDX.i2470, align 8
  %6213 = add i64 %6212, %6182
  store i64 %6213, i64* %RAX.i2481, align 8
  %6214 = icmp ult i64 %6213, %6182
  %6215 = icmp ult i64 %6213, %6212
  %6216 = or i1 %6214, %6215
  %6217 = zext i1 %6216 to i8
  store i8 %6217, i8* %14, align 1
  %6218 = trunc i64 %6213 to i32
  %6219 = and i32 %6218, 255
  %6220 = tail call i32 @llvm.ctpop.i32(i32 %6219)
  %6221 = trunc i32 %6220 to i8
  %6222 = and i8 %6221, 1
  %6223 = xor i8 %6222, 1
  store i8 %6223, i8* %21, align 1
  %6224 = xor i64 %6212, %6182
  %6225 = xor i64 %6224, %6213
  %6226 = lshr i64 %6225, 4
  %6227 = trunc i64 %6226 to i8
  %6228 = and i8 %6227, 1
  store i8 %6228, i8* %26, align 1
  %6229 = icmp eq i64 %6213, 0
  %6230 = zext i1 %6229 to i8
  store i8 %6230, i8* %29, align 1
  %6231 = lshr i64 %6213, 63
  %6232 = trunc i64 %6231 to i8
  store i8 %6232, i8* %32, align 1
  %6233 = lshr i64 %6211, 60
  %6234 = and i64 %6233, 1
  %6235 = xor i64 %6231, %6200
  %6236 = xor i64 %6231, %6234
  %6237 = add nuw nsw i64 %6235, %6236
  %6238 = icmp eq i64 %6237, 2
  %6239 = zext i1 %6238 to i8
  store i8 %6239, i8* %38, align 1
  %6240 = load i64, i64* %RCX.i2479, align 8
  store i64 %6240, i64* %RDI.i2476, align 8
  store i64 %6213, i64* %RSI.i2473, align 8
  %6241 = add i64 %6047, -3728
  %6242 = add i64 %6047, 93
  %6243 = load i64, i64* %6, align 8
  %6244 = add i64 %6243, -8
  %6245 = inttoptr i64 %6244 to i64*
  store i64 %6242, i64* %6245, align 8
  store i64 %6244, i64* %6, align 8
  store i64 %6241, i64* %3, align 8
  %call2_419e68 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %6241, %struct.Memory* %MEMORY.0)
  %6246 = load i64, i64* %RBP.i, align 8
  %6247 = add i64 %6246, -48
  %6248 = load i64, i64* %3, align 8
  %6249 = add i64 %6248, 5
  store i64 %6249, i64* %3, align 8
  %6250 = load double, double* %44, align 1
  %6251 = inttoptr i64 %6247 to double*
  %6252 = load double, double* %6251, align 8
  %6253 = fadd double %6250, %6252
  store double %6253, double* %44, align 1
  %6254 = add i64 %6248, 10
  store i64 %6254, i64* %3, align 8
  %6255 = inttoptr i64 %6247 to double*
  store double %6253, double* %6255, align 8
  %6256 = load i64, i64* %3, align 8
  %6257 = add i64 %6256, 108
  store i64 %6257, i64* %3, align 8
  br label %block_.L_419ee3

block_.L_419e7c:                                  ; preds = %block_419dfe
  store i64 ptrtoint (%G__0x4b5770_type* @G__0x4b5770 to i64), i64* %RAX.i2481, align 8
  %6258 = add i64 %5992, -24
  %6259 = add i64 %6047, 14
  store i64 %6259, i64* %3, align 8
  %6260 = inttoptr i64 %6258 to i64*
  %6261 = load i64, i64* %6260, align 8
  %6262 = add i64 %6261, 3328
  store i64 %6262, i64* %RCX.i2479, align 8
  %6263 = icmp ugt i64 %6261, -3329
  %6264 = zext i1 %6263 to i8
  store i8 %6264, i8* %14, align 1
  %6265 = trunc i64 %6262 to i32
  %6266 = and i32 %6265, 255
  %6267 = tail call i32 @llvm.ctpop.i32(i32 %6266)
  %6268 = trunc i32 %6267 to i8
  %6269 = and i8 %6268, 1
  %6270 = xor i8 %6269, 1
  store i8 %6270, i8* %21, align 1
  %6271 = xor i64 %6262, %6261
  %6272 = lshr i64 %6271, 4
  %6273 = trunc i64 %6272 to i8
  %6274 = and i8 %6273, 1
  store i8 %6274, i8* %26, align 1
  %6275 = icmp eq i64 %6262, 0
  %6276 = zext i1 %6275 to i8
  store i8 %6276, i8* %29, align 1
  %6277 = lshr i64 %6262, 63
  %6278 = trunc i64 %6277 to i8
  store i8 %6278, i8* %32, align 1
  %6279 = lshr i64 %6261, 63
  %6280 = xor i64 %6277, %6279
  %6281 = add nuw nsw i64 %6280, %6277
  %6282 = icmp eq i64 %6281, 2
  %6283 = zext i1 %6282 to i8
  store i8 %6283, i8* %38, align 1
  %6284 = add i64 %5992, -36
  %6285 = add i64 %6047, 25
  store i64 %6285, i64* %3, align 8
  %6286 = inttoptr i64 %6284 to i32*
  %6287 = load i32, i32* %6286, align 4
  %6288 = sext i32 %6287 to i64
  %6289 = mul nsw i64 %6288, 240
  store i64 %6289, i64* %RDX.i2470, align 8
  %6290 = lshr i64 %6289, 63
  %6291 = add i64 %6289, %6262
  store i64 %6291, i64* %RCX.i2479, align 8
  %6292 = icmp ult i64 %6291, %6262
  %6293 = icmp ult i64 %6291, %6289
  %6294 = or i1 %6292, %6293
  %6295 = zext i1 %6294 to i8
  store i8 %6295, i8* %14, align 1
  %6296 = trunc i64 %6291 to i32
  %6297 = and i32 %6296, 255
  %6298 = tail call i32 @llvm.ctpop.i32(i32 %6297)
  %6299 = trunc i32 %6298 to i8
  %6300 = and i8 %6299, 1
  %6301 = xor i8 %6300, 1
  store i8 %6301, i8* %21, align 1
  %6302 = xor i64 %6289, %6262
  %6303 = xor i64 %6302, %6291
  %6304 = lshr i64 %6303, 4
  %6305 = trunc i64 %6304 to i8
  %6306 = and i8 %6305, 1
  store i8 %6306, i8* %26, align 1
  %6307 = icmp eq i64 %6291, 0
  %6308 = zext i1 %6307 to i8
  store i8 %6308, i8* %29, align 1
  %6309 = lshr i64 %6291, 63
  %6310 = trunc i64 %6309 to i8
  store i8 %6310, i8* %32, align 1
  %6311 = xor i64 %6309, %6277
  %6312 = xor i64 %6309, %6290
  %6313 = add nuw nsw i64 %6311, %6312
  %6314 = icmp eq i64 %6313, 2
  %6315 = zext i1 %6314 to i8
  store i8 %6315, i8* %38, align 1
  %6316 = load i64, i64* %RBP.i, align 8
  %6317 = add i64 %6316, -32
  %6318 = add i64 %6047, 39
  store i64 %6318, i64* %3, align 8
  %6319 = inttoptr i64 %6317 to i32*
  %6320 = load i32, i32* %6319, align 4
  %6321 = sext i32 %6320 to i64
  %6322 = shl nsw i64 %6321, 4
  store i64 %6322, i64* %RDX.i2470, align 8
  %6323 = add i64 %6322, %6291
  store i64 %6323, i64* %RCX.i2479, align 8
  %6324 = icmp ult i64 %6323, %6291
  %6325 = icmp ult i64 %6323, %6322
  %6326 = or i1 %6324, %6325
  %6327 = zext i1 %6326 to i8
  store i8 %6327, i8* %14, align 1
  %6328 = trunc i64 %6323 to i32
  %6329 = and i32 %6328, 255
  %6330 = tail call i32 @llvm.ctpop.i32(i32 %6329)
  %6331 = trunc i32 %6330 to i8
  %6332 = and i8 %6331, 1
  %6333 = xor i8 %6332, 1
  store i8 %6333, i8* %21, align 1
  %6334 = xor i64 %6322, %6291
  %6335 = xor i64 %6334, %6323
  %6336 = lshr i64 %6335, 4
  %6337 = trunc i64 %6336 to i8
  %6338 = and i8 %6337, 1
  store i8 %6338, i8* %26, align 1
  %6339 = icmp eq i64 %6323, 0
  %6340 = zext i1 %6339 to i8
  store i8 %6340, i8* %29, align 1
  %6341 = lshr i64 %6323, 63
  %6342 = trunc i64 %6341 to i8
  store i8 %6342, i8* %32, align 1
  %6343 = lshr i64 %6321, 59
  %6344 = and i64 %6343, 1
  %6345 = xor i64 %6341, %6309
  %6346 = xor i64 %6341, %6344
  %6347 = add nuw nsw i64 %6345, %6346
  %6348 = icmp eq i64 %6347, 2
  %6349 = zext i1 %6348 to i8
  store i8 %6349, i8* %38, align 1
  %6350 = add i64 %6316, -28
  %6351 = add i64 %6047, 50
  store i64 %6351, i64* %3, align 8
  %6352 = inttoptr i64 %6350 to i32*
  %6353 = load i32, i32* %6352, align 4
  %6354 = sext i32 %6353 to i64
  %6355 = mul nsw i64 %6354, 960
  store i64 %6355, i64* %RDX.i2470, align 8
  %6356 = lshr i64 %6355, 63
  %6357 = load i64, i64* %RAX.i2481, align 8
  %6358 = add i64 %6355, %6357
  store i64 %6358, i64* %RAX.i2481, align 8
  %6359 = icmp ult i64 %6358, %6357
  %6360 = icmp ult i64 %6358, %6355
  %6361 = or i1 %6359, %6360
  %6362 = zext i1 %6361 to i8
  store i8 %6362, i8* %14, align 1
  %6363 = trunc i64 %6358 to i32
  %6364 = and i32 %6363, 255
  %6365 = tail call i32 @llvm.ctpop.i32(i32 %6364)
  %6366 = trunc i32 %6365 to i8
  %6367 = and i8 %6366, 1
  %6368 = xor i8 %6367, 1
  store i8 %6368, i8* %21, align 1
  %6369 = xor i64 %6357, %6358
  %6370 = lshr i64 %6369, 4
  %6371 = trunc i64 %6370 to i8
  %6372 = and i8 %6371, 1
  store i8 %6372, i8* %26, align 1
  %6373 = icmp eq i64 %6358, 0
  %6374 = zext i1 %6373 to i8
  store i8 %6374, i8* %29, align 1
  %6375 = lshr i64 %6358, 63
  %6376 = trunc i64 %6375 to i8
  store i8 %6376, i8* %32, align 1
  %6377 = lshr i64 %6357, 63
  %6378 = xor i64 %6375, %6377
  %6379 = xor i64 %6375, %6356
  %6380 = add nuw nsw i64 %6378, %6379
  %6381 = icmp eq i64 %6380, 2
  %6382 = zext i1 %6381 to i8
  store i8 %6382, i8* %38, align 1
  %6383 = load i64, i64* %RBP.i, align 8
  %6384 = add i64 %6383, -36
  %6385 = add i64 %6047, 64
  store i64 %6385, i64* %3, align 8
  %6386 = inttoptr i64 %6384 to i32*
  %6387 = load i32, i32* %6386, align 4
  %6388 = sext i32 %6387 to i64
  %6389 = mul nsw i64 %6388, 120
  store i64 %6389, i64* %RDX.i2470, align 8
  %6390 = lshr i64 %6389, 63
  %6391 = add i64 %6389, %6358
  store i64 %6391, i64* %RAX.i2481, align 8
  %6392 = icmp ult i64 %6391, %6358
  %6393 = icmp ult i64 %6391, %6389
  %6394 = or i1 %6392, %6393
  %6395 = zext i1 %6394 to i8
  store i8 %6395, i8* %14, align 1
  %6396 = trunc i64 %6391 to i32
  %6397 = and i32 %6396, 255
  %6398 = tail call i32 @llvm.ctpop.i32(i32 %6397)
  %6399 = trunc i32 %6398 to i8
  %6400 = and i8 %6399, 1
  %6401 = xor i8 %6400, 1
  store i8 %6401, i8* %21, align 1
  %6402 = xor i64 %6389, %6358
  %6403 = xor i64 %6402, %6391
  %6404 = lshr i64 %6403, 4
  %6405 = trunc i64 %6404 to i8
  %6406 = and i8 %6405, 1
  store i8 %6406, i8* %26, align 1
  %6407 = icmp eq i64 %6391, 0
  %6408 = zext i1 %6407 to i8
  store i8 %6408, i8* %29, align 1
  %6409 = lshr i64 %6391, 63
  %6410 = trunc i64 %6409 to i8
  store i8 %6410, i8* %32, align 1
  %6411 = xor i64 %6409, %6375
  %6412 = xor i64 %6409, %6390
  %6413 = add nuw nsw i64 %6411, %6412
  %6414 = icmp eq i64 %6413, 2
  %6415 = zext i1 %6414 to i8
  store i8 %6415, i8* %38, align 1
  %6416 = add i64 %6383, -32
  %6417 = add i64 %6047, 75
  store i64 %6417, i64* %3, align 8
  %6418 = inttoptr i64 %6416 to i32*
  %6419 = load i32, i32* %6418, align 4
  %6420 = sext i32 %6419 to i64
  %6421 = shl nsw i64 %6420, 3
  store i64 %6421, i64* %RDX.i2470, align 8
  %6422 = add i64 %6421, %6391
  store i64 %6422, i64* %RAX.i2481, align 8
  %6423 = icmp ult i64 %6422, %6391
  %6424 = icmp ult i64 %6422, %6421
  %6425 = or i1 %6423, %6424
  %6426 = zext i1 %6425 to i8
  store i8 %6426, i8* %14, align 1
  %6427 = trunc i64 %6422 to i32
  %6428 = and i32 %6427, 255
  %6429 = tail call i32 @llvm.ctpop.i32(i32 %6428)
  %6430 = trunc i32 %6429 to i8
  %6431 = and i8 %6430, 1
  %6432 = xor i8 %6431, 1
  store i8 %6432, i8* %21, align 1
  %6433 = xor i64 %6421, %6391
  %6434 = xor i64 %6433, %6422
  %6435 = lshr i64 %6434, 4
  %6436 = trunc i64 %6435 to i8
  %6437 = and i8 %6436, 1
  store i8 %6437, i8* %26, align 1
  %6438 = icmp eq i64 %6422, 0
  %6439 = zext i1 %6438 to i8
  store i8 %6439, i8* %29, align 1
  %6440 = lshr i64 %6422, 63
  %6441 = trunc i64 %6440 to i8
  store i8 %6441, i8* %32, align 1
  %6442 = lshr i64 %6420, 60
  %6443 = and i64 %6442, 1
  %6444 = xor i64 %6440, %6409
  %6445 = xor i64 %6440, %6443
  %6446 = add nuw nsw i64 %6444, %6445
  %6447 = icmp eq i64 %6446, 2
  %6448 = zext i1 %6447 to i8
  store i8 %6448, i8* %38, align 1
  %6449 = load i64, i64* %RCX.i2479, align 8
  store i64 %6449, i64* %RDI.i2476, align 8
  store i64 %6422, i64* %RSI.i2473, align 8
  %6450 = add i64 %6047, -3836
  %6451 = add i64 %6047, 93
  %6452 = load i64, i64* %6, align 8
  %6453 = add i64 %6452, -8
  %6454 = inttoptr i64 %6453 to i64*
  store i64 %6451, i64* %6454, align 8
  store i64 %6453, i64* %6, align 8
  store i64 %6450, i64* %3, align 8
  %call2_419ed4 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %6450, %struct.Memory* %MEMORY.0)
  %6455 = load i64, i64* %RBP.i, align 8
  %6456 = add i64 %6455, -48
  %6457 = load i64, i64* %3, align 8
  %6458 = add i64 %6457, 5
  store i64 %6458, i64* %3, align 8
  %6459 = load double, double* %44, align 1
  %6460 = inttoptr i64 %6456 to double*
  %6461 = load double, double* %6460, align 8
  %6462 = fadd double %6459, %6461
  store double %6462, double* %44, align 1
  %6463 = add i64 %6457, 10
  store i64 %6463, i64* %3, align 8
  %6464 = inttoptr i64 %6456 to double*
  store double %6462, double* %6464, align 8
  %.pre241 = load i64, i64* %3, align 8
  br label %block_.L_419ee3

block_.L_419ee3:                                  ; preds = %block_.L_419e7c, %block_419e10
  %6465 = phi i64 [ %.pre241, %block_.L_419e7c ], [ %6257, %block_419e10 ]
  %6466 = load i64, i64* %RBP.i, align 8
  %6467 = add i64 %6466, -32
  %6468 = add i64 %6465, 8
  store i64 %6468, i64* %3, align 8
  %6469 = inttoptr i64 %6467 to i32*
  %6470 = load i32, i32* %6469, align 4
  %6471 = add i32 %6470, 1
  %6472 = zext i32 %6471 to i64
  store i64 %6472, i64* %RAX.i2481, align 8
  %6473 = icmp eq i32 %6470, -1
  %6474 = icmp eq i32 %6471, 0
  %6475 = or i1 %6473, %6474
  %6476 = zext i1 %6475 to i8
  store i8 %6476, i8* %14, align 1
  %6477 = and i32 %6471, 255
  %6478 = tail call i32 @llvm.ctpop.i32(i32 %6477)
  %6479 = trunc i32 %6478 to i8
  %6480 = and i8 %6479, 1
  %6481 = xor i8 %6480, 1
  store i8 %6481, i8* %21, align 1
  %6482 = xor i32 %6471, %6470
  %6483 = lshr i32 %6482, 4
  %6484 = trunc i32 %6483 to i8
  %6485 = and i8 %6484, 1
  store i8 %6485, i8* %26, align 1
  %6486 = zext i1 %6474 to i8
  store i8 %6486, i8* %29, align 1
  %6487 = lshr i32 %6471, 31
  %6488 = trunc i32 %6487 to i8
  store i8 %6488, i8* %32, align 1
  %6489 = lshr i32 %6470, 31
  %6490 = xor i32 %6487, %6489
  %6491 = add nuw nsw i32 %6490, %6487
  %6492 = icmp eq i32 %6491, 2
  %6493 = zext i1 %6492 to i8
  store i8 %6493, i8* %38, align 1
  %6494 = add i64 %6465, 14
  store i64 %6494, i64* %3, align 8
  store i32 %6471, i32* %6469, align 4
  %6495 = load i64, i64* %3, align 8
  %6496 = add i64 %6495, -253
  store i64 %6496, i64* %3, align 8
  br label %block_.L_419df4

block_.L_419ef6:                                  ; preds = %block_.L_419df4
  %6497 = add i64 %5992, -36
  %6498 = add i64 %6020, 8
  store i64 %6498, i64* %3, align 8
  %6499 = inttoptr i64 %6497 to i32*
  %6500 = load i32, i32* %6499, align 4
  %6501 = add i32 %6500, 1
  %6502 = zext i32 %6501 to i64
  store i64 %6502, i64* %RAX.i2481, align 8
  %6503 = icmp eq i32 %6500, -1
  %6504 = icmp eq i32 %6501, 0
  %6505 = or i1 %6503, %6504
  %6506 = zext i1 %6505 to i8
  store i8 %6506, i8* %14, align 1
  %6507 = and i32 %6501, 255
  %6508 = tail call i32 @llvm.ctpop.i32(i32 %6507)
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  store i8 %6511, i8* %21, align 1
  %6512 = xor i32 %6501, %6500
  %6513 = lshr i32 %6512, 4
  %6514 = trunc i32 %6513 to i8
  %6515 = and i8 %6514, 1
  store i8 %6515, i8* %26, align 1
  %6516 = zext i1 %6504 to i8
  store i8 %6516, i8* %29, align 1
  %6517 = lshr i32 %6501, 31
  %6518 = trunc i32 %6517 to i8
  store i8 %6518, i8* %32, align 1
  %6519 = lshr i32 %6500, 31
  %6520 = xor i32 %6517, %6519
  %6521 = add nuw nsw i32 %6520, %6517
  %6522 = icmp eq i32 %6521, 2
  %6523 = zext i1 %6522 to i8
  store i8 %6523, i8* %38, align 1
  %6524 = add i64 %6020, 14
  store i64 %6524, i64* %3, align 8
  store i32 %6501, i32* %6499, align 4
  %6525 = load i64, i64* %3, align 8
  %6526 = add i64 %6525, -289
  store i64 %6526, i64* %3, align 8
  br label %block_.L_419de3

block_.L_419f09:                                  ; preds = %block_.L_419de3
  %6527 = add i64 %5987, 7
  store i64 %6527, i64* %3, align 8
  store i32 0, i32* %5962, align 4
  %.pre224 = load i64, i64* %3, align 8
  br label %block_.L_419f10

block_.L_419f10:                                  ; preds = %block_.L_41a01d, %block_.L_419f09
  %6528 = phi i64 [ %.pre224, %block_.L_419f09 ], [ %7096, %block_.L_41a01d ]
  %6529 = load i64, i64* %RBP.i, align 8
  %6530 = add i64 %6529, -36
  %6531 = add i64 %6528, 4
  store i64 %6531, i64* %3, align 8
  %6532 = inttoptr i64 %6530 to i32*
  %6533 = load i32, i32* %6532, align 4
  %6534 = add i32 %6533, -10
  %6535 = icmp ult i32 %6533, 10
  %6536 = zext i1 %6535 to i8
  store i8 %6536, i8* %14, align 1
  %6537 = and i32 %6534, 255
  %6538 = tail call i32 @llvm.ctpop.i32(i32 %6537)
  %6539 = trunc i32 %6538 to i8
  %6540 = and i8 %6539, 1
  %6541 = xor i8 %6540, 1
  store i8 %6541, i8* %21, align 1
  %6542 = xor i32 %6534, %6533
  %6543 = lshr i32 %6542, 4
  %6544 = trunc i32 %6543 to i8
  %6545 = and i8 %6544, 1
  store i8 %6545, i8* %26, align 1
  %6546 = icmp eq i32 %6534, 0
  %6547 = zext i1 %6546 to i8
  store i8 %6547, i8* %29, align 1
  %6548 = lshr i32 %6534, 31
  %6549 = trunc i32 %6548 to i8
  store i8 %6549, i8* %32, align 1
  %6550 = lshr i32 %6533, 31
  %6551 = xor i32 %6548, %6550
  %6552 = add nuw nsw i32 %6551, %6550
  %6553 = icmp eq i32 %6552, 2
  %6554 = zext i1 %6553 to i8
  store i8 %6554, i8* %38, align 1
  %6555 = icmp ne i8 %6549, 0
  %6556 = xor i1 %6555, %6553
  %.v286 = select i1 %6556, i64 10, i64 288
  %6557 = add i64 %6528, %.v286
  store i64 %6557, i64* %3, align 8
  br i1 %6556, label %block_419f1a, label %block_.L_41a030

block_419f1a:                                     ; preds = %block_.L_419f10
  %6558 = add i64 %6529, -32
  %6559 = add i64 %6557, 7
  store i64 %6559, i64* %3, align 8
  %6560 = inttoptr i64 %6558 to i32*
  store i32 0, i32* %6560, align 4
  %.pre238 = load i64, i64* %3, align 8
  br label %block_.L_419f21

block_.L_419f21:                                  ; preds = %block_.L_41a00a, %block_419f1a
  %6561 = phi i64 [ %.pre238, %block_419f1a ], [ %7066, %block_.L_41a00a ]
  %6562 = load i64, i64* %RBP.i, align 8
  %6563 = add i64 %6562, -32
  %6564 = add i64 %6561, 4
  store i64 %6564, i64* %3, align 8
  %6565 = inttoptr i64 %6563 to i32*
  %6566 = load i32, i32* %6565, align 4
  %6567 = add i32 %6566, -5
  %6568 = icmp ult i32 %6566, 5
  %6569 = zext i1 %6568 to i8
  store i8 %6569, i8* %14, align 1
  %6570 = and i32 %6567, 255
  %6571 = tail call i32 @llvm.ctpop.i32(i32 %6570)
  %6572 = trunc i32 %6571 to i8
  %6573 = and i8 %6572, 1
  %6574 = xor i8 %6573, 1
  store i8 %6574, i8* %21, align 1
  %6575 = xor i32 %6567, %6566
  %6576 = lshr i32 %6575, 4
  %6577 = trunc i32 %6576 to i8
  %6578 = and i8 %6577, 1
  store i8 %6578, i8* %26, align 1
  %6579 = icmp eq i32 %6567, 0
  %6580 = zext i1 %6579 to i8
  store i8 %6580, i8* %29, align 1
  %6581 = lshr i32 %6567, 31
  %6582 = trunc i32 %6581 to i8
  store i8 %6582, i8* %32, align 1
  %6583 = lshr i32 %6566, 31
  %6584 = xor i32 %6581, %6583
  %6585 = add nuw nsw i32 %6584, %6583
  %6586 = icmp eq i32 %6585, 2
  %6587 = zext i1 %6586 to i8
  store i8 %6587, i8* %38, align 1
  %6588 = icmp ne i8 %6582, 0
  %6589 = xor i1 %6588, %6586
  %.v264 = select i1 %6589, i64 10, i64 252
  %6590 = add i64 %6561, %.v264
  store i64 %6590, i64* %3, align 8
  br i1 %6589, label %block_419f2b, label %block_.L_41a01d

block_419f2b:                                     ; preds = %block_.L_419f21
  %6591 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6591, i64* %RAX.i2481, align 8
  %6592 = add i64 %6591, 24
  %6593 = add i64 %6590, 12
  store i64 %6593, i64* %3, align 8
  %6594 = inttoptr i64 %6592 to i32*
  %6595 = load i32, i32* %6594, align 4
  %6596 = add i32 %6595, -2
  %6597 = icmp ult i32 %6595, 2
  %6598 = zext i1 %6597 to i8
  store i8 %6598, i8* %14, align 1
  %6599 = and i32 %6596, 255
  %6600 = tail call i32 @llvm.ctpop.i32(i32 %6599)
  %6601 = trunc i32 %6600 to i8
  %6602 = and i8 %6601, 1
  %6603 = xor i8 %6602, 1
  store i8 %6603, i8* %21, align 1
  %6604 = xor i32 %6596, %6595
  %6605 = lshr i32 %6604, 4
  %6606 = trunc i32 %6605 to i8
  %6607 = and i8 %6606, 1
  store i8 %6607, i8* %26, align 1
  %6608 = icmp eq i32 %6596, 0
  %6609 = zext i1 %6608 to i8
  store i8 %6609, i8* %29, align 1
  %6610 = lshr i32 %6596, 31
  %6611 = trunc i32 %6610 to i8
  store i8 %6611, i8* %32, align 1
  %6612 = lshr i32 %6595, 31
  %6613 = xor i32 %6610, %6612
  %6614 = add nuw nsw i32 %6613, %6612
  %6615 = icmp eq i32 %6614, 2
  %6616 = zext i1 %6615 to i8
  store i8 %6616, i8* %38, align 1
  %.v294 = select i1 %6608, i64 18, i64 123
  %6617 = add i64 %6590, %.v294
  %6618 = add i64 %6617, 10
  store i64 %6618, i64* %3, align 8
  br i1 %6608, label %block_419f3d, label %block_.L_419fa6

block_419f3d:                                     ; preds = %block_419f2b
  store i64 ptrtoint (%G__0x4b62b0_type* @G__0x4b62b0 to i64), i64* %RAX.i2481, align 8
  %6619 = add i64 %6562, -24
  %6620 = add i64 %6617, 14
  store i64 %6620, i64* %3, align 8
  %6621 = inttoptr i64 %6619 to i64*
  %6622 = load i64, i64* %6621, align 8
  %6623 = add i64 %6622, 5728
  store i64 %6623, i64* %RCX.i2479, align 8
  %6624 = icmp ugt i64 %6622, -5729
  %6625 = zext i1 %6624 to i8
  store i8 %6625, i8* %14, align 1
  %6626 = trunc i64 %6623 to i32
  %6627 = and i32 %6626, 255
  %6628 = tail call i32 @llvm.ctpop.i32(i32 %6627)
  %6629 = trunc i32 %6628 to i8
  %6630 = and i8 %6629, 1
  %6631 = xor i8 %6630, 1
  store i8 %6631, i8* %21, align 1
  %6632 = xor i64 %6623, %6622
  %6633 = lshr i64 %6632, 4
  %6634 = trunc i64 %6633 to i8
  %6635 = and i8 %6634, 1
  store i8 %6635, i8* %26, align 1
  %6636 = icmp eq i64 %6623, 0
  %6637 = zext i1 %6636 to i8
  store i8 %6637, i8* %29, align 1
  %6638 = lshr i64 %6623, 63
  %6639 = trunc i64 %6638 to i8
  store i8 %6639, i8* %32, align 1
  %6640 = lshr i64 %6622, 63
  %6641 = xor i64 %6638, %6640
  %6642 = add nuw nsw i64 %6641, %6638
  %6643 = icmp eq i64 %6642, 2
  %6644 = zext i1 %6643 to i8
  store i8 %6644, i8* %38, align 1
  %6645 = add i64 %6562, -36
  %6646 = add i64 %6617, 25
  store i64 %6646, i64* %3, align 8
  %6647 = inttoptr i64 %6645 to i32*
  %6648 = load i32, i32* %6647, align 4
  %6649 = sext i32 %6648 to i64
  %6650 = mul nsw i64 %6649, 80
  store i64 %6650, i64* %RDX.i2470, align 8
  %6651 = lshr i64 %6650, 63
  %6652 = add i64 %6650, %6623
  store i64 %6652, i64* %RCX.i2479, align 8
  %6653 = icmp ult i64 %6652, %6623
  %6654 = icmp ult i64 %6652, %6650
  %6655 = or i1 %6653, %6654
  %6656 = zext i1 %6655 to i8
  store i8 %6656, i8* %14, align 1
  %6657 = trunc i64 %6652 to i32
  %6658 = and i32 %6657, 255
  %6659 = tail call i32 @llvm.ctpop.i32(i32 %6658)
  %6660 = trunc i32 %6659 to i8
  %6661 = and i8 %6660, 1
  %6662 = xor i8 %6661, 1
  store i8 %6662, i8* %21, align 1
  %6663 = xor i64 %6650, %6623
  %6664 = xor i64 %6663, %6652
  %6665 = lshr i64 %6664, 4
  %6666 = trunc i64 %6665 to i8
  %6667 = and i8 %6666, 1
  store i8 %6667, i8* %26, align 1
  %6668 = icmp eq i64 %6652, 0
  %6669 = zext i1 %6668 to i8
  store i8 %6669, i8* %29, align 1
  %6670 = lshr i64 %6652, 63
  %6671 = trunc i64 %6670 to i8
  store i8 %6671, i8* %32, align 1
  %6672 = xor i64 %6670, %6638
  %6673 = xor i64 %6670, %6651
  %6674 = add nuw nsw i64 %6672, %6673
  %6675 = icmp eq i64 %6674, 2
  %6676 = zext i1 %6675 to i8
  store i8 %6676, i8* %38, align 1
  %6677 = load i64, i64* %RBP.i, align 8
  %6678 = add i64 %6677, -32
  %6679 = add i64 %6617, 36
  store i64 %6679, i64* %3, align 8
  %6680 = inttoptr i64 %6678 to i32*
  %6681 = load i32, i32* %6680, align 4
  %6682 = sext i32 %6681 to i64
  %6683 = shl nsw i64 %6682, 4
  store i64 %6683, i64* %RDX.i2470, align 8
  %6684 = add i64 %6683, %6652
  store i64 %6684, i64* %RCX.i2479, align 8
  %6685 = icmp ult i64 %6684, %6652
  %6686 = icmp ult i64 %6684, %6683
  %6687 = or i1 %6685, %6686
  %6688 = zext i1 %6687 to i8
  store i8 %6688, i8* %14, align 1
  %6689 = trunc i64 %6684 to i32
  %6690 = and i32 %6689, 255
  %6691 = tail call i32 @llvm.ctpop.i32(i32 %6690)
  %6692 = trunc i32 %6691 to i8
  %6693 = and i8 %6692, 1
  %6694 = xor i8 %6693, 1
  store i8 %6694, i8* %21, align 1
  %6695 = xor i64 %6683, %6652
  %6696 = xor i64 %6695, %6684
  %6697 = lshr i64 %6696, 4
  %6698 = trunc i64 %6697 to i8
  %6699 = and i8 %6698, 1
  store i8 %6699, i8* %26, align 1
  %6700 = icmp eq i64 %6684, 0
  %6701 = zext i1 %6700 to i8
  store i8 %6701, i8* %29, align 1
  %6702 = lshr i64 %6684, 63
  %6703 = trunc i64 %6702 to i8
  store i8 %6703, i8* %32, align 1
  %6704 = lshr i64 %6682, 59
  %6705 = and i64 %6704, 1
  %6706 = xor i64 %6702, %6670
  %6707 = xor i64 %6702, %6705
  %6708 = add nuw nsw i64 %6706, %6707
  %6709 = icmp eq i64 %6708, 2
  %6710 = zext i1 %6709 to i8
  store i8 %6710, i8* %38, align 1
  %6711 = add i64 %6677, -28
  %6712 = add i64 %6617, 47
  store i64 %6712, i64* %3, align 8
  %6713 = inttoptr i64 %6711 to i32*
  %6714 = load i32, i32* %6713, align 4
  %6715 = sext i32 %6714 to i64
  %6716 = mul nsw i64 %6715, 320
  store i64 %6716, i64* %RDX.i2470, align 8
  %6717 = lshr i64 %6716, 63
  %6718 = load i64, i64* %RAX.i2481, align 8
  %6719 = add i64 %6716, %6718
  store i64 %6719, i64* %RAX.i2481, align 8
  %6720 = icmp ult i64 %6719, %6718
  %6721 = icmp ult i64 %6719, %6716
  %6722 = or i1 %6720, %6721
  %6723 = zext i1 %6722 to i8
  store i8 %6723, i8* %14, align 1
  %6724 = trunc i64 %6719 to i32
  %6725 = and i32 %6724, 255
  %6726 = tail call i32 @llvm.ctpop.i32(i32 %6725)
  %6727 = trunc i32 %6726 to i8
  %6728 = and i8 %6727, 1
  %6729 = xor i8 %6728, 1
  store i8 %6729, i8* %21, align 1
  %6730 = xor i64 %6718, %6719
  %6731 = lshr i64 %6730, 4
  %6732 = trunc i64 %6731 to i8
  %6733 = and i8 %6732, 1
  store i8 %6733, i8* %26, align 1
  %6734 = icmp eq i64 %6719, 0
  %6735 = zext i1 %6734 to i8
  store i8 %6735, i8* %29, align 1
  %6736 = lshr i64 %6719, 63
  %6737 = trunc i64 %6736 to i8
  store i8 %6737, i8* %32, align 1
  %6738 = lshr i64 %6718, 63
  %6739 = xor i64 %6736, %6738
  %6740 = xor i64 %6736, %6717
  %6741 = add nuw nsw i64 %6739, %6740
  %6742 = icmp eq i64 %6741, 2
  %6743 = zext i1 %6742 to i8
  store i8 %6743, i8* %38, align 1
  %6744 = load i64, i64* %RBP.i, align 8
  %6745 = add i64 %6744, -36
  %6746 = add i64 %6617, 61
  store i64 %6746, i64* %3, align 8
  %6747 = inttoptr i64 %6745 to i32*
  %6748 = load i32, i32* %6747, align 4
  %6749 = sext i32 %6748 to i64
  %6750 = mul nsw i64 %6749, 40
  store i64 %6750, i64* %RDX.i2470, align 8
  %6751 = lshr i64 %6750, 63
  %6752 = add i64 %6750, %6719
  store i64 %6752, i64* %RAX.i2481, align 8
  %6753 = icmp ult i64 %6752, %6719
  %6754 = icmp ult i64 %6752, %6750
  %6755 = or i1 %6753, %6754
  %6756 = zext i1 %6755 to i8
  store i8 %6756, i8* %14, align 1
  %6757 = trunc i64 %6752 to i32
  %6758 = and i32 %6757, 255
  %6759 = tail call i32 @llvm.ctpop.i32(i32 %6758)
  %6760 = trunc i32 %6759 to i8
  %6761 = and i8 %6760, 1
  %6762 = xor i8 %6761, 1
  store i8 %6762, i8* %21, align 1
  %6763 = xor i64 %6750, %6719
  %6764 = xor i64 %6763, %6752
  %6765 = lshr i64 %6764, 4
  %6766 = trunc i64 %6765 to i8
  %6767 = and i8 %6766, 1
  store i8 %6767, i8* %26, align 1
  %6768 = icmp eq i64 %6752, 0
  %6769 = zext i1 %6768 to i8
  store i8 %6769, i8* %29, align 1
  %6770 = lshr i64 %6752, 63
  %6771 = trunc i64 %6770 to i8
  store i8 %6771, i8* %32, align 1
  %6772 = xor i64 %6770, %6736
  %6773 = xor i64 %6770, %6751
  %6774 = add nuw nsw i64 %6772, %6773
  %6775 = icmp eq i64 %6774, 2
  %6776 = zext i1 %6775 to i8
  store i8 %6776, i8* %38, align 1
  %6777 = add i64 %6744, -32
  %6778 = add i64 %6617, 72
  store i64 %6778, i64* %3, align 8
  %6779 = inttoptr i64 %6777 to i32*
  %6780 = load i32, i32* %6779, align 4
  %6781 = sext i32 %6780 to i64
  %6782 = shl nsw i64 %6781, 3
  store i64 %6782, i64* %RDX.i2470, align 8
  %6783 = add i64 %6782, %6752
  store i64 %6783, i64* %RAX.i2481, align 8
  %6784 = icmp ult i64 %6783, %6752
  %6785 = icmp ult i64 %6783, %6782
  %6786 = or i1 %6784, %6785
  %6787 = zext i1 %6786 to i8
  store i8 %6787, i8* %14, align 1
  %6788 = trunc i64 %6783 to i32
  %6789 = and i32 %6788, 255
  %6790 = tail call i32 @llvm.ctpop.i32(i32 %6789)
  %6791 = trunc i32 %6790 to i8
  %6792 = and i8 %6791, 1
  %6793 = xor i8 %6792, 1
  store i8 %6793, i8* %21, align 1
  %6794 = xor i64 %6782, %6752
  %6795 = xor i64 %6794, %6783
  %6796 = lshr i64 %6795, 4
  %6797 = trunc i64 %6796 to i8
  %6798 = and i8 %6797, 1
  store i8 %6798, i8* %26, align 1
  %6799 = icmp eq i64 %6783, 0
  %6800 = zext i1 %6799 to i8
  store i8 %6800, i8* %29, align 1
  %6801 = lshr i64 %6783, 63
  %6802 = trunc i64 %6801 to i8
  store i8 %6802, i8* %32, align 1
  %6803 = lshr i64 %6781, 60
  %6804 = and i64 %6803, 1
  %6805 = xor i64 %6801, %6770
  %6806 = xor i64 %6801, %6804
  %6807 = add nuw nsw i64 %6805, %6806
  %6808 = icmp eq i64 %6807, 2
  %6809 = zext i1 %6808 to i8
  store i8 %6809, i8* %38, align 1
  %6810 = load i64, i64* %RCX.i2479, align 8
  store i64 %6810, i64* %RDI.i2476, align 8
  store i64 %6783, i64* %RSI.i2473, align 8
  %6811 = add i64 %6617, -4029
  %6812 = add i64 %6617, 90
  %6813 = load i64, i64* %6, align 8
  %6814 = add i64 %6813, -8
  %6815 = inttoptr i64 %6814 to i64*
  store i64 %6812, i64* %6815, align 8
  store i64 %6814, i64* %6, align 8
  store i64 %6811, i64* %3, align 8
  %call2_419f92 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %6811, %struct.Memory* %MEMORY.0)
  %6816 = load i64, i64* %RBP.i, align 8
  %6817 = add i64 %6816, -48
  %6818 = load i64, i64* %3, align 8
  %6819 = add i64 %6818, 5
  store i64 %6819, i64* %3, align 8
  %6820 = load double, double* %44, align 1
  %6821 = inttoptr i64 %6817 to double*
  %6822 = load double, double* %6821, align 8
  %6823 = fadd double %6820, %6822
  store double %6823, double* %44, align 1
  %6824 = add i64 %6818, 10
  store i64 %6824, i64* %3, align 8
  %6825 = inttoptr i64 %6817 to double*
  store double %6823, double* %6825, align 8
  %6826 = load i64, i64* %3, align 8
  %6827 = add i64 %6826, 105
  store i64 %6827, i64* %3, align 8
  br label %block_.L_41a00a

block_.L_419fa6:                                  ; preds = %block_419f2b
  store i64 ptrtoint (%G__0x4b63f0_type* @G__0x4b63f0 to i64), i64* %RAX.i2481, align 8
  %6828 = add i64 %6562, -24
  %6829 = add i64 %6617, 14
  store i64 %6829, i64* %3, align 8
  %6830 = inttoptr i64 %6828 to i64*
  %6831 = load i64, i64* %6830, align 8
  %6832 = add i64 %6831, 5728
  store i64 %6832, i64* %RCX.i2479, align 8
  %6833 = icmp ugt i64 %6831, -5729
  %6834 = zext i1 %6833 to i8
  store i8 %6834, i8* %14, align 1
  %6835 = trunc i64 %6832 to i32
  %6836 = and i32 %6835, 255
  %6837 = tail call i32 @llvm.ctpop.i32(i32 %6836)
  %6838 = trunc i32 %6837 to i8
  %6839 = and i8 %6838, 1
  %6840 = xor i8 %6839, 1
  store i8 %6840, i8* %21, align 1
  %6841 = xor i64 %6832, %6831
  %6842 = lshr i64 %6841, 4
  %6843 = trunc i64 %6842 to i8
  %6844 = and i8 %6843, 1
  store i8 %6844, i8* %26, align 1
  %6845 = icmp eq i64 %6832, 0
  %6846 = zext i1 %6845 to i8
  store i8 %6846, i8* %29, align 1
  %6847 = lshr i64 %6832, 63
  %6848 = trunc i64 %6847 to i8
  store i8 %6848, i8* %32, align 1
  %6849 = lshr i64 %6831, 63
  %6850 = xor i64 %6847, %6849
  %6851 = add nuw nsw i64 %6850, %6847
  %6852 = icmp eq i64 %6851, 2
  %6853 = zext i1 %6852 to i8
  store i8 %6853, i8* %38, align 1
  %6854 = add i64 %6562, -36
  %6855 = add i64 %6617, 25
  store i64 %6855, i64* %3, align 8
  %6856 = inttoptr i64 %6854 to i32*
  %6857 = load i32, i32* %6856, align 4
  %6858 = sext i32 %6857 to i64
  %6859 = mul nsw i64 %6858, 80
  store i64 %6859, i64* %RDX.i2470, align 8
  %6860 = lshr i64 %6859, 63
  %6861 = add i64 %6859, %6832
  store i64 %6861, i64* %RCX.i2479, align 8
  %6862 = icmp ult i64 %6861, %6832
  %6863 = icmp ult i64 %6861, %6859
  %6864 = or i1 %6862, %6863
  %6865 = zext i1 %6864 to i8
  store i8 %6865, i8* %14, align 1
  %6866 = trunc i64 %6861 to i32
  %6867 = and i32 %6866, 255
  %6868 = tail call i32 @llvm.ctpop.i32(i32 %6867)
  %6869 = trunc i32 %6868 to i8
  %6870 = and i8 %6869, 1
  %6871 = xor i8 %6870, 1
  store i8 %6871, i8* %21, align 1
  %6872 = xor i64 %6859, %6832
  %6873 = xor i64 %6872, %6861
  %6874 = lshr i64 %6873, 4
  %6875 = trunc i64 %6874 to i8
  %6876 = and i8 %6875, 1
  store i8 %6876, i8* %26, align 1
  %6877 = icmp eq i64 %6861, 0
  %6878 = zext i1 %6877 to i8
  store i8 %6878, i8* %29, align 1
  %6879 = lshr i64 %6861, 63
  %6880 = trunc i64 %6879 to i8
  store i8 %6880, i8* %32, align 1
  %6881 = xor i64 %6879, %6847
  %6882 = xor i64 %6879, %6860
  %6883 = add nuw nsw i64 %6881, %6882
  %6884 = icmp eq i64 %6883, 2
  %6885 = zext i1 %6884 to i8
  store i8 %6885, i8* %38, align 1
  %6886 = load i64, i64* %RBP.i, align 8
  %6887 = add i64 %6886, -32
  %6888 = add i64 %6617, 36
  store i64 %6888, i64* %3, align 8
  %6889 = inttoptr i64 %6887 to i32*
  %6890 = load i32, i32* %6889, align 4
  %6891 = sext i32 %6890 to i64
  %6892 = shl nsw i64 %6891, 4
  store i64 %6892, i64* %RDX.i2470, align 8
  %6893 = add i64 %6892, %6861
  store i64 %6893, i64* %RCX.i2479, align 8
  %6894 = icmp ult i64 %6893, %6861
  %6895 = icmp ult i64 %6893, %6892
  %6896 = or i1 %6894, %6895
  %6897 = zext i1 %6896 to i8
  store i8 %6897, i8* %14, align 1
  %6898 = trunc i64 %6893 to i32
  %6899 = and i32 %6898, 255
  %6900 = tail call i32 @llvm.ctpop.i32(i32 %6899)
  %6901 = trunc i32 %6900 to i8
  %6902 = and i8 %6901, 1
  %6903 = xor i8 %6902, 1
  store i8 %6903, i8* %21, align 1
  %6904 = xor i64 %6892, %6861
  %6905 = xor i64 %6904, %6893
  %6906 = lshr i64 %6905, 4
  %6907 = trunc i64 %6906 to i8
  %6908 = and i8 %6907, 1
  store i8 %6908, i8* %26, align 1
  %6909 = icmp eq i64 %6893, 0
  %6910 = zext i1 %6909 to i8
  store i8 %6910, i8* %29, align 1
  %6911 = lshr i64 %6893, 63
  %6912 = trunc i64 %6911 to i8
  store i8 %6912, i8* %32, align 1
  %6913 = lshr i64 %6891, 59
  %6914 = and i64 %6913, 1
  %6915 = xor i64 %6911, %6879
  %6916 = xor i64 %6911, %6914
  %6917 = add nuw nsw i64 %6915, %6916
  %6918 = icmp eq i64 %6917, 2
  %6919 = zext i1 %6918 to i8
  store i8 %6919, i8* %38, align 1
  %6920 = add i64 %6886, -28
  %6921 = add i64 %6617, 47
  store i64 %6921, i64* %3, align 8
  %6922 = inttoptr i64 %6920 to i32*
  %6923 = load i32, i32* %6922, align 4
  %6924 = sext i32 %6923 to i64
  %6925 = mul nsw i64 %6924, 320
  store i64 %6925, i64* %RDX.i2470, align 8
  %6926 = lshr i64 %6925, 63
  %6927 = load i64, i64* %RAX.i2481, align 8
  %6928 = add i64 %6925, %6927
  store i64 %6928, i64* %RAX.i2481, align 8
  %6929 = icmp ult i64 %6928, %6927
  %6930 = icmp ult i64 %6928, %6925
  %6931 = or i1 %6929, %6930
  %6932 = zext i1 %6931 to i8
  store i8 %6932, i8* %14, align 1
  %6933 = trunc i64 %6928 to i32
  %6934 = and i32 %6933, 255
  %6935 = tail call i32 @llvm.ctpop.i32(i32 %6934)
  %6936 = trunc i32 %6935 to i8
  %6937 = and i8 %6936, 1
  %6938 = xor i8 %6937, 1
  store i8 %6938, i8* %21, align 1
  %6939 = xor i64 %6927, %6928
  %6940 = lshr i64 %6939, 4
  %6941 = trunc i64 %6940 to i8
  %6942 = and i8 %6941, 1
  store i8 %6942, i8* %26, align 1
  %6943 = icmp eq i64 %6928, 0
  %6944 = zext i1 %6943 to i8
  store i8 %6944, i8* %29, align 1
  %6945 = lshr i64 %6928, 63
  %6946 = trunc i64 %6945 to i8
  store i8 %6946, i8* %32, align 1
  %6947 = lshr i64 %6927, 63
  %6948 = xor i64 %6945, %6947
  %6949 = xor i64 %6945, %6926
  %6950 = add nuw nsw i64 %6948, %6949
  %6951 = icmp eq i64 %6950, 2
  %6952 = zext i1 %6951 to i8
  store i8 %6952, i8* %38, align 1
  %6953 = load i64, i64* %RBP.i, align 8
  %6954 = add i64 %6953, -36
  %6955 = add i64 %6617, 61
  store i64 %6955, i64* %3, align 8
  %6956 = inttoptr i64 %6954 to i32*
  %6957 = load i32, i32* %6956, align 4
  %6958 = sext i32 %6957 to i64
  %6959 = mul nsw i64 %6958, 40
  store i64 %6959, i64* %RDX.i2470, align 8
  %6960 = lshr i64 %6959, 63
  %6961 = add i64 %6959, %6928
  store i64 %6961, i64* %RAX.i2481, align 8
  %6962 = icmp ult i64 %6961, %6928
  %6963 = icmp ult i64 %6961, %6959
  %6964 = or i1 %6962, %6963
  %6965 = zext i1 %6964 to i8
  store i8 %6965, i8* %14, align 1
  %6966 = trunc i64 %6961 to i32
  %6967 = and i32 %6966, 255
  %6968 = tail call i32 @llvm.ctpop.i32(i32 %6967)
  %6969 = trunc i32 %6968 to i8
  %6970 = and i8 %6969, 1
  %6971 = xor i8 %6970, 1
  store i8 %6971, i8* %21, align 1
  %6972 = xor i64 %6959, %6928
  %6973 = xor i64 %6972, %6961
  %6974 = lshr i64 %6973, 4
  %6975 = trunc i64 %6974 to i8
  %6976 = and i8 %6975, 1
  store i8 %6976, i8* %26, align 1
  %6977 = icmp eq i64 %6961, 0
  %6978 = zext i1 %6977 to i8
  store i8 %6978, i8* %29, align 1
  %6979 = lshr i64 %6961, 63
  %6980 = trunc i64 %6979 to i8
  store i8 %6980, i8* %32, align 1
  %6981 = xor i64 %6979, %6945
  %6982 = xor i64 %6979, %6960
  %6983 = add nuw nsw i64 %6981, %6982
  %6984 = icmp eq i64 %6983, 2
  %6985 = zext i1 %6984 to i8
  store i8 %6985, i8* %38, align 1
  %6986 = add i64 %6953, -32
  %6987 = add i64 %6617, 72
  store i64 %6987, i64* %3, align 8
  %6988 = inttoptr i64 %6986 to i32*
  %6989 = load i32, i32* %6988, align 4
  %6990 = sext i32 %6989 to i64
  %6991 = shl nsw i64 %6990, 3
  store i64 %6991, i64* %RDX.i2470, align 8
  %6992 = add i64 %6991, %6961
  store i64 %6992, i64* %RAX.i2481, align 8
  %6993 = icmp ult i64 %6992, %6961
  %6994 = icmp ult i64 %6992, %6991
  %6995 = or i1 %6993, %6994
  %6996 = zext i1 %6995 to i8
  store i8 %6996, i8* %14, align 1
  %6997 = trunc i64 %6992 to i32
  %6998 = and i32 %6997, 255
  %6999 = tail call i32 @llvm.ctpop.i32(i32 %6998)
  %7000 = trunc i32 %6999 to i8
  %7001 = and i8 %7000, 1
  %7002 = xor i8 %7001, 1
  store i8 %7002, i8* %21, align 1
  %7003 = xor i64 %6991, %6961
  %7004 = xor i64 %7003, %6992
  %7005 = lshr i64 %7004, 4
  %7006 = trunc i64 %7005 to i8
  %7007 = and i8 %7006, 1
  store i8 %7007, i8* %26, align 1
  %7008 = icmp eq i64 %6992, 0
  %7009 = zext i1 %7008 to i8
  store i8 %7009, i8* %29, align 1
  %7010 = lshr i64 %6992, 63
  %7011 = trunc i64 %7010 to i8
  store i8 %7011, i8* %32, align 1
  %7012 = lshr i64 %6990, 60
  %7013 = and i64 %7012, 1
  %7014 = xor i64 %7010, %6979
  %7015 = xor i64 %7010, %7013
  %7016 = add nuw nsw i64 %7014, %7015
  %7017 = icmp eq i64 %7016, 2
  %7018 = zext i1 %7017 to i8
  store i8 %7018, i8* %38, align 1
  %7019 = load i64, i64* %RCX.i2479, align 8
  store i64 %7019, i64* %RDI.i2476, align 8
  store i64 %6992, i64* %RSI.i2473, align 8
  %7020 = add i64 %6617, -4134
  %7021 = add i64 %6617, 90
  %7022 = load i64, i64* %6, align 8
  %7023 = add i64 %7022, -8
  %7024 = inttoptr i64 %7023 to i64*
  store i64 %7021, i64* %7024, align 8
  store i64 %7023, i64* %6, align 8
  store i64 %7020, i64* %3, align 8
  %call2_419ffb = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %7020, %struct.Memory* %MEMORY.0)
  %7025 = load i64, i64* %RBP.i, align 8
  %7026 = add i64 %7025, -48
  %7027 = load i64, i64* %3, align 8
  %7028 = add i64 %7027, 5
  store i64 %7028, i64* %3, align 8
  %7029 = load double, double* %44, align 1
  %7030 = inttoptr i64 %7026 to double*
  %7031 = load double, double* %7030, align 8
  %7032 = fadd double %7029, %7031
  store double %7032, double* %44, align 1
  %7033 = add i64 %7027, 10
  store i64 %7033, i64* %3, align 8
  %7034 = inttoptr i64 %7026 to double*
  store double %7032, double* %7034, align 8
  %.pre239 = load i64, i64* %3, align 8
  br label %block_.L_41a00a

block_.L_41a00a:                                  ; preds = %block_.L_419fa6, %block_419f3d
  %7035 = phi i64 [ %.pre239, %block_.L_419fa6 ], [ %6827, %block_419f3d ]
  %7036 = load i64, i64* %RBP.i, align 8
  %7037 = add i64 %7036, -32
  %7038 = add i64 %7035, 8
  store i64 %7038, i64* %3, align 8
  %7039 = inttoptr i64 %7037 to i32*
  %7040 = load i32, i32* %7039, align 4
  %7041 = add i32 %7040, 1
  %7042 = zext i32 %7041 to i64
  store i64 %7042, i64* %RAX.i2481, align 8
  %7043 = icmp eq i32 %7040, -1
  %7044 = icmp eq i32 %7041, 0
  %7045 = or i1 %7043, %7044
  %7046 = zext i1 %7045 to i8
  store i8 %7046, i8* %14, align 1
  %7047 = and i32 %7041, 255
  %7048 = tail call i32 @llvm.ctpop.i32(i32 %7047)
  %7049 = trunc i32 %7048 to i8
  %7050 = and i8 %7049, 1
  %7051 = xor i8 %7050, 1
  store i8 %7051, i8* %21, align 1
  %7052 = xor i32 %7041, %7040
  %7053 = lshr i32 %7052, 4
  %7054 = trunc i32 %7053 to i8
  %7055 = and i8 %7054, 1
  store i8 %7055, i8* %26, align 1
  %7056 = zext i1 %7044 to i8
  store i8 %7056, i8* %29, align 1
  %7057 = lshr i32 %7041, 31
  %7058 = trunc i32 %7057 to i8
  store i8 %7058, i8* %32, align 1
  %7059 = lshr i32 %7040, 31
  %7060 = xor i32 %7057, %7059
  %7061 = add nuw nsw i32 %7060, %7057
  %7062 = icmp eq i32 %7061, 2
  %7063 = zext i1 %7062 to i8
  store i8 %7063, i8* %38, align 1
  %7064 = add i64 %7035, 14
  store i64 %7064, i64* %3, align 8
  store i32 %7041, i32* %7039, align 4
  %7065 = load i64, i64* %3, align 8
  %7066 = add i64 %7065, -247
  store i64 %7066, i64* %3, align 8
  br label %block_.L_419f21

block_.L_41a01d:                                  ; preds = %block_.L_419f21
  %7067 = add i64 %6562, -36
  %7068 = add i64 %6590, 8
  store i64 %7068, i64* %3, align 8
  %7069 = inttoptr i64 %7067 to i32*
  %7070 = load i32, i32* %7069, align 4
  %7071 = add i32 %7070, 1
  %7072 = zext i32 %7071 to i64
  store i64 %7072, i64* %RAX.i2481, align 8
  %7073 = icmp eq i32 %7070, -1
  %7074 = icmp eq i32 %7071, 0
  %7075 = or i1 %7073, %7074
  %7076 = zext i1 %7075 to i8
  store i8 %7076, i8* %14, align 1
  %7077 = and i32 %7071, 255
  %7078 = tail call i32 @llvm.ctpop.i32(i32 %7077)
  %7079 = trunc i32 %7078 to i8
  %7080 = and i8 %7079, 1
  %7081 = xor i8 %7080, 1
  store i8 %7081, i8* %21, align 1
  %7082 = xor i32 %7071, %7070
  %7083 = lshr i32 %7082, 4
  %7084 = trunc i32 %7083 to i8
  %7085 = and i8 %7084, 1
  store i8 %7085, i8* %26, align 1
  %7086 = zext i1 %7074 to i8
  store i8 %7086, i8* %29, align 1
  %7087 = lshr i32 %7071, 31
  %7088 = trunc i32 %7087 to i8
  store i8 %7088, i8* %32, align 1
  %7089 = lshr i32 %7070, 31
  %7090 = xor i32 %7087, %7089
  %7091 = add nuw nsw i32 %7090, %7087
  %7092 = icmp eq i32 %7091, 2
  %7093 = zext i1 %7092 to i8
  store i8 %7093, i8* %38, align 1
  %7094 = add i64 %6590, 14
  store i64 %7094, i64* %3, align 8
  store i32 %7071, i32* %7069, align 4
  %7095 = load i64, i64* %3, align 8
  %7096 = add i64 %7095, -283
  store i64 %7096, i64* %3, align 8
  br label %block_.L_419f10

block_.L_41a030:                                  ; preds = %block_.L_419f10
  %7097 = add i64 %6557, 7
  store i64 %7097, i64* %3, align 8
  store i32 0, i32* %6532, align 4
  %.pre225 = load i64, i64* %3, align 8
  br label %block_.L_41a037

block_.L_41a037:                                  ; preds = %block_.L_41a144, %block_.L_41a030
  %7098 = phi i64 [ %.pre225, %block_.L_41a030 ], [ %7666, %block_.L_41a144 ]
  %7099 = load i64, i64* %RBP.i, align 8
  %7100 = add i64 %7099, -36
  %7101 = add i64 %7098, 4
  store i64 %7101, i64* %3, align 8
  %7102 = inttoptr i64 %7100 to i32*
  %7103 = load i32, i32* %7102, align 4
  %7104 = add i32 %7103, -10
  %7105 = icmp ult i32 %7103, 10
  %7106 = zext i1 %7105 to i8
  store i8 %7106, i8* %14, align 1
  %7107 = and i32 %7104, 255
  %7108 = tail call i32 @llvm.ctpop.i32(i32 %7107)
  %7109 = trunc i32 %7108 to i8
  %7110 = and i8 %7109, 1
  %7111 = xor i8 %7110, 1
  store i8 %7111, i8* %21, align 1
  %7112 = xor i32 %7104, %7103
  %7113 = lshr i32 %7112, 4
  %7114 = trunc i32 %7113 to i8
  %7115 = and i8 %7114, 1
  store i8 %7115, i8* %26, align 1
  %7116 = icmp eq i32 %7104, 0
  %7117 = zext i1 %7116 to i8
  store i8 %7117, i8* %29, align 1
  %7118 = lshr i32 %7104, 31
  %7119 = trunc i32 %7118 to i8
  store i8 %7119, i8* %32, align 1
  %7120 = lshr i32 %7103, 31
  %7121 = xor i32 %7118, %7120
  %7122 = add nuw nsw i32 %7121, %7120
  %7123 = icmp eq i32 %7122, 2
  %7124 = zext i1 %7123 to i8
  store i8 %7124, i8* %38, align 1
  %7125 = icmp ne i8 %7119, 0
  %7126 = xor i1 %7125, %7123
  %.v287 = select i1 %7126, i64 10, i64 288
  %7127 = add i64 %7098, %.v287
  store i64 %7127, i64* %3, align 8
  br i1 %7126, label %block_41a041, label %block_.L_41a157

block_41a041:                                     ; preds = %block_.L_41a037
  %7128 = add i64 %7099, -32
  %7129 = add i64 %7127, 7
  store i64 %7129, i64* %3, align 8
  %7130 = inttoptr i64 %7128 to i32*
  store i32 0, i32* %7130, align 4
  %.pre236 = load i64, i64* %3, align 8
  br label %block_.L_41a048

block_.L_41a048:                                  ; preds = %block_.L_41a131, %block_41a041
  %7131 = phi i64 [ %.pre236, %block_41a041 ], [ %7636, %block_.L_41a131 ]
  %7132 = load i64, i64* %RBP.i, align 8
  %7133 = add i64 %7132, -32
  %7134 = add i64 %7131, 4
  store i64 %7134, i64* %3, align 8
  %7135 = inttoptr i64 %7133 to i32*
  %7136 = load i32, i32* %7135, align 4
  %7137 = add i32 %7136, -5
  %7138 = icmp ult i32 %7136, 5
  %7139 = zext i1 %7138 to i8
  store i8 %7139, i8* %14, align 1
  %7140 = and i32 %7137, 255
  %7141 = tail call i32 @llvm.ctpop.i32(i32 %7140)
  %7142 = trunc i32 %7141 to i8
  %7143 = and i8 %7142, 1
  %7144 = xor i8 %7143, 1
  store i8 %7144, i8* %21, align 1
  %7145 = xor i32 %7137, %7136
  %7146 = lshr i32 %7145, 4
  %7147 = trunc i32 %7146 to i8
  %7148 = and i8 %7147, 1
  store i8 %7148, i8* %26, align 1
  %7149 = icmp eq i32 %7137, 0
  %7150 = zext i1 %7149 to i8
  store i8 %7150, i8* %29, align 1
  %7151 = lshr i32 %7137, 31
  %7152 = trunc i32 %7151 to i8
  store i8 %7152, i8* %32, align 1
  %7153 = lshr i32 %7136, 31
  %7154 = xor i32 %7151, %7153
  %7155 = add nuw nsw i32 %7154, %7153
  %7156 = icmp eq i32 %7155, 2
  %7157 = zext i1 %7156 to i8
  store i8 %7157, i8* %38, align 1
  %7158 = icmp ne i8 %7152, 0
  %7159 = xor i1 %7158, %7156
  %.v263 = select i1 %7159, i64 10, i64 252
  %7160 = add i64 %7131, %.v263
  store i64 %7160, i64* %3, align 8
  br i1 %7159, label %block_41a052, label %block_.L_41a144

block_41a052:                                     ; preds = %block_.L_41a048
  %7161 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7161, i64* %RAX.i2481, align 8
  %7162 = add i64 %7161, 24
  %7163 = add i64 %7160, 12
  store i64 %7163, i64* %3, align 8
  %7164 = inttoptr i64 %7162 to i32*
  %7165 = load i32, i32* %7164, align 4
  %7166 = add i32 %7165, -2
  %7167 = icmp ult i32 %7165, 2
  %7168 = zext i1 %7167 to i8
  store i8 %7168, i8* %14, align 1
  %7169 = and i32 %7166, 255
  %7170 = tail call i32 @llvm.ctpop.i32(i32 %7169)
  %7171 = trunc i32 %7170 to i8
  %7172 = and i8 %7171, 1
  %7173 = xor i8 %7172, 1
  store i8 %7173, i8* %21, align 1
  %7174 = xor i32 %7166, %7165
  %7175 = lshr i32 %7174, 4
  %7176 = trunc i32 %7175 to i8
  %7177 = and i8 %7176, 1
  store i8 %7177, i8* %26, align 1
  %7178 = icmp eq i32 %7166, 0
  %7179 = zext i1 %7178 to i8
  store i8 %7179, i8* %29, align 1
  %7180 = lshr i32 %7166, 31
  %7181 = trunc i32 %7180 to i8
  store i8 %7181, i8* %32, align 1
  %7182 = lshr i32 %7165, 31
  %7183 = xor i32 %7180, %7182
  %7184 = add nuw nsw i32 %7183, %7182
  %7185 = icmp eq i32 %7184, 2
  %7186 = zext i1 %7185 to i8
  store i8 %7186, i8* %38, align 1
  %.v293 = select i1 %7178, i64 18, i64 123
  %7187 = add i64 %7160, %.v293
  %7188 = add i64 %7187, 10
  store i64 %7188, i64* %3, align 8
  br i1 %7178, label %block_41a064, label %block_.L_41a0cd

block_41a064:                                     ; preds = %block_41a052
  store i64 ptrtoint (%G__0x4b67b0_type* @G__0x4b67b0 to i64), i64* %RAX.i2481, align 8
  %7189 = add i64 %7132, -24
  %7190 = add i64 %7187, 14
  store i64 %7190, i64* %3, align 8
  %7191 = inttoptr i64 %7189 to i64*
  %7192 = load i64, i64* %7191, align 8
  %7193 = add i64 %7192, 6528
  store i64 %7193, i64* %RCX.i2479, align 8
  %7194 = icmp ugt i64 %7192, -6529
  %7195 = zext i1 %7194 to i8
  store i8 %7195, i8* %14, align 1
  %7196 = trunc i64 %7193 to i32
  %7197 = and i32 %7196, 255
  %7198 = tail call i32 @llvm.ctpop.i32(i32 %7197)
  %7199 = trunc i32 %7198 to i8
  %7200 = and i8 %7199, 1
  %7201 = xor i8 %7200, 1
  store i8 %7201, i8* %21, align 1
  %7202 = xor i64 %7193, %7192
  %7203 = lshr i64 %7202, 4
  %7204 = trunc i64 %7203 to i8
  %7205 = and i8 %7204, 1
  store i8 %7205, i8* %26, align 1
  %7206 = icmp eq i64 %7193, 0
  %7207 = zext i1 %7206 to i8
  store i8 %7207, i8* %29, align 1
  %7208 = lshr i64 %7193, 63
  %7209 = trunc i64 %7208 to i8
  store i8 %7209, i8* %32, align 1
  %7210 = lshr i64 %7192, 63
  %7211 = xor i64 %7208, %7210
  %7212 = add nuw nsw i64 %7211, %7208
  %7213 = icmp eq i64 %7212, 2
  %7214 = zext i1 %7213 to i8
  store i8 %7214, i8* %38, align 1
  %7215 = add i64 %7132, -36
  %7216 = add i64 %7187, 25
  store i64 %7216, i64* %3, align 8
  %7217 = inttoptr i64 %7215 to i32*
  %7218 = load i32, i32* %7217, align 4
  %7219 = sext i32 %7218 to i64
  %7220 = mul nsw i64 %7219, 80
  store i64 %7220, i64* %RDX.i2470, align 8
  %7221 = lshr i64 %7220, 63
  %7222 = add i64 %7220, %7193
  store i64 %7222, i64* %RCX.i2479, align 8
  %7223 = icmp ult i64 %7222, %7193
  %7224 = icmp ult i64 %7222, %7220
  %7225 = or i1 %7223, %7224
  %7226 = zext i1 %7225 to i8
  store i8 %7226, i8* %14, align 1
  %7227 = trunc i64 %7222 to i32
  %7228 = and i32 %7227, 255
  %7229 = tail call i32 @llvm.ctpop.i32(i32 %7228)
  %7230 = trunc i32 %7229 to i8
  %7231 = and i8 %7230, 1
  %7232 = xor i8 %7231, 1
  store i8 %7232, i8* %21, align 1
  %7233 = xor i64 %7220, %7193
  %7234 = xor i64 %7233, %7222
  %7235 = lshr i64 %7234, 4
  %7236 = trunc i64 %7235 to i8
  %7237 = and i8 %7236, 1
  store i8 %7237, i8* %26, align 1
  %7238 = icmp eq i64 %7222, 0
  %7239 = zext i1 %7238 to i8
  store i8 %7239, i8* %29, align 1
  %7240 = lshr i64 %7222, 63
  %7241 = trunc i64 %7240 to i8
  store i8 %7241, i8* %32, align 1
  %7242 = xor i64 %7240, %7208
  %7243 = xor i64 %7240, %7221
  %7244 = add nuw nsw i64 %7242, %7243
  %7245 = icmp eq i64 %7244, 2
  %7246 = zext i1 %7245 to i8
  store i8 %7246, i8* %38, align 1
  %7247 = load i64, i64* %RBP.i, align 8
  %7248 = add i64 %7247, -32
  %7249 = add i64 %7187, 36
  store i64 %7249, i64* %3, align 8
  %7250 = inttoptr i64 %7248 to i32*
  %7251 = load i32, i32* %7250, align 4
  %7252 = sext i32 %7251 to i64
  %7253 = shl nsw i64 %7252, 4
  store i64 %7253, i64* %RDX.i2470, align 8
  %7254 = add i64 %7253, %7222
  store i64 %7254, i64* %RCX.i2479, align 8
  %7255 = icmp ult i64 %7254, %7222
  %7256 = icmp ult i64 %7254, %7253
  %7257 = or i1 %7255, %7256
  %7258 = zext i1 %7257 to i8
  store i8 %7258, i8* %14, align 1
  %7259 = trunc i64 %7254 to i32
  %7260 = and i32 %7259, 255
  %7261 = tail call i32 @llvm.ctpop.i32(i32 %7260)
  %7262 = trunc i32 %7261 to i8
  %7263 = and i8 %7262, 1
  %7264 = xor i8 %7263, 1
  store i8 %7264, i8* %21, align 1
  %7265 = xor i64 %7253, %7222
  %7266 = xor i64 %7265, %7254
  %7267 = lshr i64 %7266, 4
  %7268 = trunc i64 %7267 to i8
  %7269 = and i8 %7268, 1
  store i8 %7269, i8* %26, align 1
  %7270 = icmp eq i64 %7254, 0
  %7271 = zext i1 %7270 to i8
  store i8 %7271, i8* %29, align 1
  %7272 = lshr i64 %7254, 63
  %7273 = trunc i64 %7272 to i8
  store i8 %7273, i8* %32, align 1
  %7274 = lshr i64 %7252, 59
  %7275 = and i64 %7274, 1
  %7276 = xor i64 %7272, %7240
  %7277 = xor i64 %7272, %7275
  %7278 = add nuw nsw i64 %7276, %7277
  %7279 = icmp eq i64 %7278, 2
  %7280 = zext i1 %7279 to i8
  store i8 %7280, i8* %38, align 1
  %7281 = add i64 %7247, -28
  %7282 = add i64 %7187, 47
  store i64 %7282, i64* %3, align 8
  %7283 = inttoptr i64 %7281 to i32*
  %7284 = load i32, i32* %7283, align 4
  %7285 = sext i32 %7284 to i64
  %7286 = mul nsw i64 %7285, 320
  store i64 %7286, i64* %RDX.i2470, align 8
  %7287 = lshr i64 %7286, 63
  %7288 = load i64, i64* %RAX.i2481, align 8
  %7289 = add i64 %7286, %7288
  store i64 %7289, i64* %RAX.i2481, align 8
  %7290 = icmp ult i64 %7289, %7288
  %7291 = icmp ult i64 %7289, %7286
  %7292 = or i1 %7290, %7291
  %7293 = zext i1 %7292 to i8
  store i8 %7293, i8* %14, align 1
  %7294 = trunc i64 %7289 to i32
  %7295 = and i32 %7294, 255
  %7296 = tail call i32 @llvm.ctpop.i32(i32 %7295)
  %7297 = trunc i32 %7296 to i8
  %7298 = and i8 %7297, 1
  %7299 = xor i8 %7298, 1
  store i8 %7299, i8* %21, align 1
  %7300 = xor i64 %7288, %7289
  %7301 = lshr i64 %7300, 4
  %7302 = trunc i64 %7301 to i8
  %7303 = and i8 %7302, 1
  store i8 %7303, i8* %26, align 1
  %7304 = icmp eq i64 %7289, 0
  %7305 = zext i1 %7304 to i8
  store i8 %7305, i8* %29, align 1
  %7306 = lshr i64 %7289, 63
  %7307 = trunc i64 %7306 to i8
  store i8 %7307, i8* %32, align 1
  %7308 = lshr i64 %7288, 63
  %7309 = xor i64 %7306, %7308
  %7310 = xor i64 %7306, %7287
  %7311 = add nuw nsw i64 %7309, %7310
  %7312 = icmp eq i64 %7311, 2
  %7313 = zext i1 %7312 to i8
  store i8 %7313, i8* %38, align 1
  %7314 = load i64, i64* %RBP.i, align 8
  %7315 = add i64 %7314, -36
  %7316 = add i64 %7187, 61
  store i64 %7316, i64* %3, align 8
  %7317 = inttoptr i64 %7315 to i32*
  %7318 = load i32, i32* %7317, align 4
  %7319 = sext i32 %7318 to i64
  %7320 = mul nsw i64 %7319, 40
  store i64 %7320, i64* %RDX.i2470, align 8
  %7321 = lshr i64 %7320, 63
  %7322 = add i64 %7320, %7289
  store i64 %7322, i64* %RAX.i2481, align 8
  %7323 = icmp ult i64 %7322, %7289
  %7324 = icmp ult i64 %7322, %7320
  %7325 = or i1 %7323, %7324
  %7326 = zext i1 %7325 to i8
  store i8 %7326, i8* %14, align 1
  %7327 = trunc i64 %7322 to i32
  %7328 = and i32 %7327, 255
  %7329 = tail call i32 @llvm.ctpop.i32(i32 %7328)
  %7330 = trunc i32 %7329 to i8
  %7331 = and i8 %7330, 1
  %7332 = xor i8 %7331, 1
  store i8 %7332, i8* %21, align 1
  %7333 = xor i64 %7320, %7289
  %7334 = xor i64 %7333, %7322
  %7335 = lshr i64 %7334, 4
  %7336 = trunc i64 %7335 to i8
  %7337 = and i8 %7336, 1
  store i8 %7337, i8* %26, align 1
  %7338 = icmp eq i64 %7322, 0
  %7339 = zext i1 %7338 to i8
  store i8 %7339, i8* %29, align 1
  %7340 = lshr i64 %7322, 63
  %7341 = trunc i64 %7340 to i8
  store i8 %7341, i8* %32, align 1
  %7342 = xor i64 %7340, %7306
  %7343 = xor i64 %7340, %7321
  %7344 = add nuw nsw i64 %7342, %7343
  %7345 = icmp eq i64 %7344, 2
  %7346 = zext i1 %7345 to i8
  store i8 %7346, i8* %38, align 1
  %7347 = add i64 %7314, -32
  %7348 = add i64 %7187, 72
  store i64 %7348, i64* %3, align 8
  %7349 = inttoptr i64 %7347 to i32*
  %7350 = load i32, i32* %7349, align 4
  %7351 = sext i32 %7350 to i64
  %7352 = shl nsw i64 %7351, 3
  store i64 %7352, i64* %RDX.i2470, align 8
  %7353 = add i64 %7352, %7322
  store i64 %7353, i64* %RAX.i2481, align 8
  %7354 = icmp ult i64 %7353, %7322
  %7355 = icmp ult i64 %7353, %7352
  %7356 = or i1 %7354, %7355
  %7357 = zext i1 %7356 to i8
  store i8 %7357, i8* %14, align 1
  %7358 = trunc i64 %7353 to i32
  %7359 = and i32 %7358, 255
  %7360 = tail call i32 @llvm.ctpop.i32(i32 %7359)
  %7361 = trunc i32 %7360 to i8
  %7362 = and i8 %7361, 1
  %7363 = xor i8 %7362, 1
  store i8 %7363, i8* %21, align 1
  %7364 = xor i64 %7352, %7322
  %7365 = xor i64 %7364, %7353
  %7366 = lshr i64 %7365, 4
  %7367 = trunc i64 %7366 to i8
  %7368 = and i8 %7367, 1
  store i8 %7368, i8* %26, align 1
  %7369 = icmp eq i64 %7353, 0
  %7370 = zext i1 %7369 to i8
  store i8 %7370, i8* %29, align 1
  %7371 = lshr i64 %7353, 63
  %7372 = trunc i64 %7371 to i8
  store i8 %7372, i8* %32, align 1
  %7373 = lshr i64 %7351, 60
  %7374 = and i64 %7373, 1
  %7375 = xor i64 %7371, %7340
  %7376 = xor i64 %7371, %7374
  %7377 = add nuw nsw i64 %7375, %7376
  %7378 = icmp eq i64 %7377, 2
  %7379 = zext i1 %7378 to i8
  store i8 %7379, i8* %38, align 1
  %7380 = load i64, i64* %RCX.i2479, align 8
  store i64 %7380, i64* %RDI.i2476, align 8
  store i64 %7353, i64* %RSI.i2473, align 8
  %7381 = add i64 %7187, -4324
  %7382 = add i64 %7187, 90
  %7383 = load i64, i64* %6, align 8
  %7384 = add i64 %7383, -8
  %7385 = inttoptr i64 %7384 to i64*
  store i64 %7382, i64* %7385, align 8
  store i64 %7384, i64* %6, align 8
  store i64 %7381, i64* %3, align 8
  %call2_41a0b9 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %7381, %struct.Memory* %MEMORY.0)
  %7386 = load i64, i64* %RBP.i, align 8
  %7387 = add i64 %7386, -48
  %7388 = load i64, i64* %3, align 8
  %7389 = add i64 %7388, 5
  store i64 %7389, i64* %3, align 8
  %7390 = load double, double* %44, align 1
  %7391 = inttoptr i64 %7387 to double*
  %7392 = load double, double* %7391, align 8
  %7393 = fadd double %7390, %7392
  store double %7393, double* %44, align 1
  %7394 = add i64 %7388, 10
  store i64 %7394, i64* %3, align 8
  %7395 = inttoptr i64 %7387 to double*
  store double %7393, double* %7395, align 8
  %7396 = load i64, i64* %3, align 8
  %7397 = add i64 %7396, 105
  store i64 %7397, i64* %3, align 8
  br label %block_.L_41a131

block_.L_41a0cd:                                  ; preds = %block_41a052
  store i64 ptrtoint (%G__0x4b68f0_type* @G__0x4b68f0 to i64), i64* %RAX.i2481, align 8
  %7398 = add i64 %7132, -24
  %7399 = add i64 %7187, 14
  store i64 %7399, i64* %3, align 8
  %7400 = inttoptr i64 %7398 to i64*
  %7401 = load i64, i64* %7400, align 8
  %7402 = add i64 %7401, 6528
  store i64 %7402, i64* %RCX.i2479, align 8
  %7403 = icmp ugt i64 %7401, -6529
  %7404 = zext i1 %7403 to i8
  store i8 %7404, i8* %14, align 1
  %7405 = trunc i64 %7402 to i32
  %7406 = and i32 %7405, 255
  %7407 = tail call i32 @llvm.ctpop.i32(i32 %7406)
  %7408 = trunc i32 %7407 to i8
  %7409 = and i8 %7408, 1
  %7410 = xor i8 %7409, 1
  store i8 %7410, i8* %21, align 1
  %7411 = xor i64 %7402, %7401
  %7412 = lshr i64 %7411, 4
  %7413 = trunc i64 %7412 to i8
  %7414 = and i8 %7413, 1
  store i8 %7414, i8* %26, align 1
  %7415 = icmp eq i64 %7402, 0
  %7416 = zext i1 %7415 to i8
  store i8 %7416, i8* %29, align 1
  %7417 = lshr i64 %7402, 63
  %7418 = trunc i64 %7417 to i8
  store i8 %7418, i8* %32, align 1
  %7419 = lshr i64 %7401, 63
  %7420 = xor i64 %7417, %7419
  %7421 = add nuw nsw i64 %7420, %7417
  %7422 = icmp eq i64 %7421, 2
  %7423 = zext i1 %7422 to i8
  store i8 %7423, i8* %38, align 1
  %7424 = add i64 %7132, -36
  %7425 = add i64 %7187, 25
  store i64 %7425, i64* %3, align 8
  %7426 = inttoptr i64 %7424 to i32*
  %7427 = load i32, i32* %7426, align 4
  %7428 = sext i32 %7427 to i64
  %7429 = mul nsw i64 %7428, 80
  store i64 %7429, i64* %RDX.i2470, align 8
  %7430 = lshr i64 %7429, 63
  %7431 = add i64 %7429, %7402
  store i64 %7431, i64* %RCX.i2479, align 8
  %7432 = icmp ult i64 %7431, %7402
  %7433 = icmp ult i64 %7431, %7429
  %7434 = or i1 %7432, %7433
  %7435 = zext i1 %7434 to i8
  store i8 %7435, i8* %14, align 1
  %7436 = trunc i64 %7431 to i32
  %7437 = and i32 %7436, 255
  %7438 = tail call i32 @llvm.ctpop.i32(i32 %7437)
  %7439 = trunc i32 %7438 to i8
  %7440 = and i8 %7439, 1
  %7441 = xor i8 %7440, 1
  store i8 %7441, i8* %21, align 1
  %7442 = xor i64 %7429, %7402
  %7443 = xor i64 %7442, %7431
  %7444 = lshr i64 %7443, 4
  %7445 = trunc i64 %7444 to i8
  %7446 = and i8 %7445, 1
  store i8 %7446, i8* %26, align 1
  %7447 = icmp eq i64 %7431, 0
  %7448 = zext i1 %7447 to i8
  store i8 %7448, i8* %29, align 1
  %7449 = lshr i64 %7431, 63
  %7450 = trunc i64 %7449 to i8
  store i8 %7450, i8* %32, align 1
  %7451 = xor i64 %7449, %7417
  %7452 = xor i64 %7449, %7430
  %7453 = add nuw nsw i64 %7451, %7452
  %7454 = icmp eq i64 %7453, 2
  %7455 = zext i1 %7454 to i8
  store i8 %7455, i8* %38, align 1
  %7456 = load i64, i64* %RBP.i, align 8
  %7457 = add i64 %7456, -32
  %7458 = add i64 %7187, 36
  store i64 %7458, i64* %3, align 8
  %7459 = inttoptr i64 %7457 to i32*
  %7460 = load i32, i32* %7459, align 4
  %7461 = sext i32 %7460 to i64
  %7462 = shl nsw i64 %7461, 4
  store i64 %7462, i64* %RDX.i2470, align 8
  %7463 = add i64 %7462, %7431
  store i64 %7463, i64* %RCX.i2479, align 8
  %7464 = icmp ult i64 %7463, %7431
  %7465 = icmp ult i64 %7463, %7462
  %7466 = or i1 %7464, %7465
  %7467 = zext i1 %7466 to i8
  store i8 %7467, i8* %14, align 1
  %7468 = trunc i64 %7463 to i32
  %7469 = and i32 %7468, 255
  %7470 = tail call i32 @llvm.ctpop.i32(i32 %7469)
  %7471 = trunc i32 %7470 to i8
  %7472 = and i8 %7471, 1
  %7473 = xor i8 %7472, 1
  store i8 %7473, i8* %21, align 1
  %7474 = xor i64 %7462, %7431
  %7475 = xor i64 %7474, %7463
  %7476 = lshr i64 %7475, 4
  %7477 = trunc i64 %7476 to i8
  %7478 = and i8 %7477, 1
  store i8 %7478, i8* %26, align 1
  %7479 = icmp eq i64 %7463, 0
  %7480 = zext i1 %7479 to i8
  store i8 %7480, i8* %29, align 1
  %7481 = lshr i64 %7463, 63
  %7482 = trunc i64 %7481 to i8
  store i8 %7482, i8* %32, align 1
  %7483 = lshr i64 %7461, 59
  %7484 = and i64 %7483, 1
  %7485 = xor i64 %7481, %7449
  %7486 = xor i64 %7481, %7484
  %7487 = add nuw nsw i64 %7485, %7486
  %7488 = icmp eq i64 %7487, 2
  %7489 = zext i1 %7488 to i8
  store i8 %7489, i8* %38, align 1
  %7490 = add i64 %7456, -28
  %7491 = add i64 %7187, 47
  store i64 %7491, i64* %3, align 8
  %7492 = inttoptr i64 %7490 to i32*
  %7493 = load i32, i32* %7492, align 4
  %7494 = sext i32 %7493 to i64
  %7495 = mul nsw i64 %7494, 320
  store i64 %7495, i64* %RDX.i2470, align 8
  %7496 = lshr i64 %7495, 63
  %7497 = load i64, i64* %RAX.i2481, align 8
  %7498 = add i64 %7495, %7497
  store i64 %7498, i64* %RAX.i2481, align 8
  %7499 = icmp ult i64 %7498, %7497
  %7500 = icmp ult i64 %7498, %7495
  %7501 = or i1 %7499, %7500
  %7502 = zext i1 %7501 to i8
  store i8 %7502, i8* %14, align 1
  %7503 = trunc i64 %7498 to i32
  %7504 = and i32 %7503, 255
  %7505 = tail call i32 @llvm.ctpop.i32(i32 %7504)
  %7506 = trunc i32 %7505 to i8
  %7507 = and i8 %7506, 1
  %7508 = xor i8 %7507, 1
  store i8 %7508, i8* %21, align 1
  %7509 = xor i64 %7497, %7498
  %7510 = lshr i64 %7509, 4
  %7511 = trunc i64 %7510 to i8
  %7512 = and i8 %7511, 1
  store i8 %7512, i8* %26, align 1
  %7513 = icmp eq i64 %7498, 0
  %7514 = zext i1 %7513 to i8
  store i8 %7514, i8* %29, align 1
  %7515 = lshr i64 %7498, 63
  %7516 = trunc i64 %7515 to i8
  store i8 %7516, i8* %32, align 1
  %7517 = lshr i64 %7497, 63
  %7518 = xor i64 %7515, %7517
  %7519 = xor i64 %7515, %7496
  %7520 = add nuw nsw i64 %7518, %7519
  %7521 = icmp eq i64 %7520, 2
  %7522 = zext i1 %7521 to i8
  store i8 %7522, i8* %38, align 1
  %7523 = load i64, i64* %RBP.i, align 8
  %7524 = add i64 %7523, -36
  %7525 = add i64 %7187, 61
  store i64 %7525, i64* %3, align 8
  %7526 = inttoptr i64 %7524 to i32*
  %7527 = load i32, i32* %7526, align 4
  %7528 = sext i32 %7527 to i64
  %7529 = mul nsw i64 %7528, 40
  store i64 %7529, i64* %RDX.i2470, align 8
  %7530 = lshr i64 %7529, 63
  %7531 = add i64 %7529, %7498
  store i64 %7531, i64* %RAX.i2481, align 8
  %7532 = icmp ult i64 %7531, %7498
  %7533 = icmp ult i64 %7531, %7529
  %7534 = or i1 %7532, %7533
  %7535 = zext i1 %7534 to i8
  store i8 %7535, i8* %14, align 1
  %7536 = trunc i64 %7531 to i32
  %7537 = and i32 %7536, 255
  %7538 = tail call i32 @llvm.ctpop.i32(i32 %7537)
  %7539 = trunc i32 %7538 to i8
  %7540 = and i8 %7539, 1
  %7541 = xor i8 %7540, 1
  store i8 %7541, i8* %21, align 1
  %7542 = xor i64 %7529, %7498
  %7543 = xor i64 %7542, %7531
  %7544 = lshr i64 %7543, 4
  %7545 = trunc i64 %7544 to i8
  %7546 = and i8 %7545, 1
  store i8 %7546, i8* %26, align 1
  %7547 = icmp eq i64 %7531, 0
  %7548 = zext i1 %7547 to i8
  store i8 %7548, i8* %29, align 1
  %7549 = lshr i64 %7531, 63
  %7550 = trunc i64 %7549 to i8
  store i8 %7550, i8* %32, align 1
  %7551 = xor i64 %7549, %7515
  %7552 = xor i64 %7549, %7530
  %7553 = add nuw nsw i64 %7551, %7552
  %7554 = icmp eq i64 %7553, 2
  %7555 = zext i1 %7554 to i8
  store i8 %7555, i8* %38, align 1
  %7556 = add i64 %7523, -32
  %7557 = add i64 %7187, 72
  store i64 %7557, i64* %3, align 8
  %7558 = inttoptr i64 %7556 to i32*
  %7559 = load i32, i32* %7558, align 4
  %7560 = sext i32 %7559 to i64
  %7561 = shl nsw i64 %7560, 3
  store i64 %7561, i64* %RDX.i2470, align 8
  %7562 = add i64 %7561, %7531
  store i64 %7562, i64* %RAX.i2481, align 8
  %7563 = icmp ult i64 %7562, %7531
  %7564 = icmp ult i64 %7562, %7561
  %7565 = or i1 %7563, %7564
  %7566 = zext i1 %7565 to i8
  store i8 %7566, i8* %14, align 1
  %7567 = trunc i64 %7562 to i32
  %7568 = and i32 %7567, 255
  %7569 = tail call i32 @llvm.ctpop.i32(i32 %7568)
  %7570 = trunc i32 %7569 to i8
  %7571 = and i8 %7570, 1
  %7572 = xor i8 %7571, 1
  store i8 %7572, i8* %21, align 1
  %7573 = xor i64 %7561, %7531
  %7574 = xor i64 %7573, %7562
  %7575 = lshr i64 %7574, 4
  %7576 = trunc i64 %7575 to i8
  %7577 = and i8 %7576, 1
  store i8 %7577, i8* %26, align 1
  %7578 = icmp eq i64 %7562, 0
  %7579 = zext i1 %7578 to i8
  store i8 %7579, i8* %29, align 1
  %7580 = lshr i64 %7562, 63
  %7581 = trunc i64 %7580 to i8
  store i8 %7581, i8* %32, align 1
  %7582 = lshr i64 %7560, 60
  %7583 = and i64 %7582, 1
  %7584 = xor i64 %7580, %7549
  %7585 = xor i64 %7580, %7583
  %7586 = add nuw nsw i64 %7584, %7585
  %7587 = icmp eq i64 %7586, 2
  %7588 = zext i1 %7587 to i8
  store i8 %7588, i8* %38, align 1
  %7589 = load i64, i64* %RCX.i2479, align 8
  store i64 %7589, i64* %RDI.i2476, align 8
  store i64 %7562, i64* %RSI.i2473, align 8
  %7590 = add i64 %7187, -4429
  %7591 = add i64 %7187, 90
  %7592 = load i64, i64* %6, align 8
  %7593 = add i64 %7592, -8
  %7594 = inttoptr i64 %7593 to i64*
  store i64 %7591, i64* %7594, align 8
  store i64 %7593, i64* %6, align 8
  store i64 %7590, i64* %3, align 8
  %call2_41a122 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %7590, %struct.Memory* %MEMORY.0)
  %7595 = load i64, i64* %RBP.i, align 8
  %7596 = add i64 %7595, -48
  %7597 = load i64, i64* %3, align 8
  %7598 = add i64 %7597, 5
  store i64 %7598, i64* %3, align 8
  %7599 = load double, double* %44, align 1
  %7600 = inttoptr i64 %7596 to double*
  %7601 = load double, double* %7600, align 8
  %7602 = fadd double %7599, %7601
  store double %7602, double* %44, align 1
  %7603 = add i64 %7597, 10
  store i64 %7603, i64* %3, align 8
  %7604 = inttoptr i64 %7596 to double*
  store double %7602, double* %7604, align 8
  %.pre237 = load i64, i64* %3, align 8
  br label %block_.L_41a131

block_.L_41a131:                                  ; preds = %block_.L_41a0cd, %block_41a064
  %7605 = phi i64 [ %.pre237, %block_.L_41a0cd ], [ %7397, %block_41a064 ]
  %7606 = load i64, i64* %RBP.i, align 8
  %7607 = add i64 %7606, -32
  %7608 = add i64 %7605, 8
  store i64 %7608, i64* %3, align 8
  %7609 = inttoptr i64 %7607 to i32*
  %7610 = load i32, i32* %7609, align 4
  %7611 = add i32 %7610, 1
  %7612 = zext i32 %7611 to i64
  store i64 %7612, i64* %RAX.i2481, align 8
  %7613 = icmp eq i32 %7610, -1
  %7614 = icmp eq i32 %7611, 0
  %7615 = or i1 %7613, %7614
  %7616 = zext i1 %7615 to i8
  store i8 %7616, i8* %14, align 1
  %7617 = and i32 %7611, 255
  %7618 = tail call i32 @llvm.ctpop.i32(i32 %7617)
  %7619 = trunc i32 %7618 to i8
  %7620 = and i8 %7619, 1
  %7621 = xor i8 %7620, 1
  store i8 %7621, i8* %21, align 1
  %7622 = xor i32 %7611, %7610
  %7623 = lshr i32 %7622, 4
  %7624 = trunc i32 %7623 to i8
  %7625 = and i8 %7624, 1
  store i8 %7625, i8* %26, align 1
  %7626 = zext i1 %7614 to i8
  store i8 %7626, i8* %29, align 1
  %7627 = lshr i32 %7611, 31
  %7628 = trunc i32 %7627 to i8
  store i8 %7628, i8* %32, align 1
  %7629 = lshr i32 %7610, 31
  %7630 = xor i32 %7627, %7629
  %7631 = add nuw nsw i32 %7630, %7627
  %7632 = icmp eq i32 %7631, 2
  %7633 = zext i1 %7632 to i8
  store i8 %7633, i8* %38, align 1
  %7634 = add i64 %7605, 14
  store i64 %7634, i64* %3, align 8
  store i32 %7611, i32* %7609, align 4
  %7635 = load i64, i64* %3, align 8
  %7636 = add i64 %7635, -247
  store i64 %7636, i64* %3, align 8
  br label %block_.L_41a048

block_.L_41a144:                                  ; preds = %block_.L_41a048
  %7637 = add i64 %7132, -36
  %7638 = add i64 %7160, 8
  store i64 %7638, i64* %3, align 8
  %7639 = inttoptr i64 %7637 to i32*
  %7640 = load i32, i32* %7639, align 4
  %7641 = add i32 %7640, 1
  %7642 = zext i32 %7641 to i64
  store i64 %7642, i64* %RAX.i2481, align 8
  %7643 = icmp eq i32 %7640, -1
  %7644 = icmp eq i32 %7641, 0
  %7645 = or i1 %7643, %7644
  %7646 = zext i1 %7645 to i8
  store i8 %7646, i8* %14, align 1
  %7647 = and i32 %7641, 255
  %7648 = tail call i32 @llvm.ctpop.i32(i32 %7647)
  %7649 = trunc i32 %7648 to i8
  %7650 = and i8 %7649, 1
  %7651 = xor i8 %7650, 1
  store i8 %7651, i8* %21, align 1
  %7652 = xor i32 %7641, %7640
  %7653 = lshr i32 %7652, 4
  %7654 = trunc i32 %7653 to i8
  %7655 = and i8 %7654, 1
  store i8 %7655, i8* %26, align 1
  %7656 = zext i1 %7644 to i8
  store i8 %7656, i8* %29, align 1
  %7657 = lshr i32 %7641, 31
  %7658 = trunc i32 %7657 to i8
  store i8 %7658, i8* %32, align 1
  %7659 = lshr i32 %7640, 31
  %7660 = xor i32 %7657, %7659
  %7661 = add nuw nsw i32 %7660, %7657
  %7662 = icmp eq i32 %7661, 2
  %7663 = zext i1 %7662 to i8
  store i8 %7663, i8* %38, align 1
  %7664 = add i64 %7160, 14
  store i64 %7664, i64* %3, align 8
  store i32 %7641, i32* %7639, align 4
  %7665 = load i64, i64* %3, align 8
  %7666 = add i64 %7665, -283
  store i64 %7666, i64* %3, align 8
  br label %block_.L_41a037

block_.L_41a157:                                  ; preds = %block_.L_41a037
  %7667 = add i64 %7127, 7
  store i64 %7667, i64* %3, align 8
  store i32 0, i32* %7102, align 4
  %.pre226 = load i64, i64* %3, align 8
  br label %block_.L_41a15e

block_.L_41a15e:                                  ; preds = %block_.L_41a271, %block_.L_41a157
  %7668 = phi i64 [ %.pre226, %block_.L_41a157 ], [ %8236, %block_.L_41a271 ]
  %7669 = load i64, i64* %RBP.i, align 8
  %7670 = add i64 %7669, -36
  %7671 = add i64 %7668, 4
  store i64 %7671, i64* %3, align 8
  %7672 = inttoptr i64 %7670 to i32*
  %7673 = load i32, i32* %7672, align 4
  %7674 = add i32 %7673, -10
  %7675 = icmp ult i32 %7673, 10
  %7676 = zext i1 %7675 to i8
  store i8 %7676, i8* %14, align 1
  %7677 = and i32 %7674, 255
  %7678 = tail call i32 @llvm.ctpop.i32(i32 %7677)
  %7679 = trunc i32 %7678 to i8
  %7680 = and i8 %7679, 1
  %7681 = xor i8 %7680, 1
  store i8 %7681, i8* %21, align 1
  %7682 = xor i32 %7674, %7673
  %7683 = lshr i32 %7682, 4
  %7684 = trunc i32 %7683 to i8
  %7685 = and i8 %7684, 1
  store i8 %7685, i8* %26, align 1
  %7686 = icmp eq i32 %7674, 0
  %7687 = zext i1 %7686 to i8
  store i8 %7687, i8* %29, align 1
  %7688 = lshr i32 %7674, 31
  %7689 = trunc i32 %7688 to i8
  store i8 %7689, i8* %32, align 1
  %7690 = lshr i32 %7673, 31
  %7691 = xor i32 %7688, %7690
  %7692 = add nuw nsw i32 %7691, %7690
  %7693 = icmp eq i32 %7692, 2
  %7694 = zext i1 %7693 to i8
  store i8 %7694, i8* %38, align 1
  %7695 = icmp ne i8 %7689, 0
  %7696 = xor i1 %7695, %7693
  %.v288 = select i1 %7696, i64 10, i64 294
  %7697 = add i64 %7668, %.v288
  store i64 %7697, i64* %3, align 8
  br i1 %7696, label %block_41a168, label %block_.L_41a284

block_41a168:                                     ; preds = %block_.L_41a15e
  %7698 = add i64 %7669, -32
  %7699 = add i64 %7697, 7
  store i64 %7699, i64* %3, align 8
  %7700 = inttoptr i64 %7698 to i32*
  store i32 0, i32* %7700, align 4
  %.pre234 = load i64, i64* %3, align 8
  br label %block_.L_41a16f

block_.L_41a16f:                                  ; preds = %block_.L_41a25e, %block_41a168
  %7701 = phi i64 [ %.pre234, %block_41a168 ], [ %8206, %block_.L_41a25e ]
  %7702 = load i64, i64* %RBP.i, align 8
  %7703 = add i64 %7702, -32
  %7704 = add i64 %7701, 4
  store i64 %7704, i64* %3, align 8
  %7705 = inttoptr i64 %7703 to i32*
  %7706 = load i32, i32* %7705, align 4
  %7707 = add i32 %7706, -15
  %7708 = icmp ult i32 %7706, 15
  %7709 = zext i1 %7708 to i8
  store i8 %7709, i8* %14, align 1
  %7710 = and i32 %7707, 255
  %7711 = tail call i32 @llvm.ctpop.i32(i32 %7710)
  %7712 = trunc i32 %7711 to i8
  %7713 = and i8 %7712, 1
  %7714 = xor i8 %7713, 1
  store i8 %7714, i8* %21, align 1
  %7715 = xor i32 %7707, %7706
  %7716 = lshr i32 %7715, 4
  %7717 = trunc i32 %7716 to i8
  %7718 = and i8 %7717, 1
  store i8 %7718, i8* %26, align 1
  %7719 = icmp eq i32 %7707, 0
  %7720 = zext i1 %7719 to i8
  store i8 %7720, i8* %29, align 1
  %7721 = lshr i32 %7707, 31
  %7722 = trunc i32 %7721 to i8
  store i8 %7722, i8* %32, align 1
  %7723 = lshr i32 %7706, 31
  %7724 = xor i32 %7721, %7723
  %7725 = add nuw nsw i32 %7724, %7723
  %7726 = icmp eq i32 %7725, 2
  %7727 = zext i1 %7726 to i8
  store i8 %7727, i8* %38, align 1
  %7728 = icmp ne i8 %7722, 0
  %7729 = xor i1 %7728, %7726
  %.v262 = select i1 %7729, i64 10, i64 258
  %7730 = add i64 %7701, %.v262
  store i64 %7730, i64* %3, align 8
  br i1 %7729, label %block_41a179, label %block_.L_41a271

block_41a179:                                     ; preds = %block_.L_41a16f
  %7731 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7731, i64* %RAX.i2481, align 8
  %7732 = add i64 %7731, 24
  %7733 = add i64 %7730, 12
  store i64 %7733, i64* %3, align 8
  %7734 = inttoptr i64 %7732 to i32*
  %7735 = load i32, i32* %7734, align 4
  %7736 = add i32 %7735, -2
  %7737 = icmp ult i32 %7735, 2
  %7738 = zext i1 %7737 to i8
  store i8 %7738, i8* %14, align 1
  %7739 = and i32 %7736, 255
  %7740 = tail call i32 @llvm.ctpop.i32(i32 %7739)
  %7741 = trunc i32 %7740 to i8
  %7742 = and i8 %7741, 1
  %7743 = xor i8 %7742, 1
  store i8 %7743, i8* %21, align 1
  %7744 = xor i32 %7736, %7735
  %7745 = lshr i32 %7744, 4
  %7746 = trunc i32 %7745 to i8
  %7747 = and i8 %7746, 1
  store i8 %7747, i8* %26, align 1
  %7748 = icmp eq i32 %7736, 0
  %7749 = zext i1 %7748 to i8
  store i8 %7749, i8* %29, align 1
  %7750 = lshr i32 %7736, 31
  %7751 = trunc i32 %7750 to i8
  store i8 %7751, i8* %32, align 1
  %7752 = lshr i32 %7735, 31
  %7753 = xor i32 %7750, %7752
  %7754 = add nuw nsw i32 %7753, %7752
  %7755 = icmp eq i32 %7754, 2
  %7756 = zext i1 %7755 to i8
  store i8 %7756, i8* %38, align 1
  %.v292 = select i1 %7748, i64 18, i64 126
  %7757 = add i64 %7730, %.v292
  %7758 = add i64 %7757, 10
  store i64 %7758, i64* %3, align 8
  br i1 %7748, label %block_41a18b, label %block_.L_41a1f7

block_41a18b:                                     ; preds = %block_41a179
  store i64 ptrtoint (%G__0x4b6cb0_type* @G__0x4b6cb0 to i64), i64* %RAX.i2481, align 8
  %7759 = add i64 %7702, -24
  %7760 = add i64 %7757, 14
  store i64 %7760, i64* %3, align 8
  %7761 = inttoptr i64 %7759 to i64*
  %7762 = load i64, i64* %7761, align 8
  %7763 = add i64 %7762, 7328
  store i64 %7763, i64* %RCX.i2479, align 8
  %7764 = icmp ugt i64 %7762, -7329
  %7765 = zext i1 %7764 to i8
  store i8 %7765, i8* %14, align 1
  %7766 = trunc i64 %7763 to i32
  %7767 = and i32 %7766, 255
  %7768 = tail call i32 @llvm.ctpop.i32(i32 %7767)
  %7769 = trunc i32 %7768 to i8
  %7770 = and i8 %7769, 1
  %7771 = xor i8 %7770, 1
  store i8 %7771, i8* %21, align 1
  %7772 = xor i64 %7763, %7762
  %7773 = lshr i64 %7772, 4
  %7774 = trunc i64 %7773 to i8
  %7775 = and i8 %7774, 1
  store i8 %7775, i8* %26, align 1
  %7776 = icmp eq i64 %7763, 0
  %7777 = zext i1 %7776 to i8
  store i8 %7777, i8* %29, align 1
  %7778 = lshr i64 %7763, 63
  %7779 = trunc i64 %7778 to i8
  store i8 %7779, i8* %32, align 1
  %7780 = lshr i64 %7762, 63
  %7781 = xor i64 %7778, %7780
  %7782 = add nuw nsw i64 %7781, %7778
  %7783 = icmp eq i64 %7782, 2
  %7784 = zext i1 %7783 to i8
  store i8 %7784, i8* %38, align 1
  %7785 = add i64 %7702, -36
  %7786 = add i64 %7757, 25
  store i64 %7786, i64* %3, align 8
  %7787 = inttoptr i64 %7785 to i32*
  %7788 = load i32, i32* %7787, align 4
  %7789 = sext i32 %7788 to i64
  %7790 = mul nsw i64 %7789, 240
  store i64 %7790, i64* %RDX.i2470, align 8
  %7791 = lshr i64 %7790, 63
  %7792 = add i64 %7790, %7763
  store i64 %7792, i64* %RCX.i2479, align 8
  %7793 = icmp ult i64 %7792, %7763
  %7794 = icmp ult i64 %7792, %7790
  %7795 = or i1 %7793, %7794
  %7796 = zext i1 %7795 to i8
  store i8 %7796, i8* %14, align 1
  %7797 = trunc i64 %7792 to i32
  %7798 = and i32 %7797, 255
  %7799 = tail call i32 @llvm.ctpop.i32(i32 %7798)
  %7800 = trunc i32 %7799 to i8
  %7801 = and i8 %7800, 1
  %7802 = xor i8 %7801, 1
  store i8 %7802, i8* %21, align 1
  %7803 = xor i64 %7790, %7763
  %7804 = xor i64 %7803, %7792
  %7805 = lshr i64 %7804, 4
  %7806 = trunc i64 %7805 to i8
  %7807 = and i8 %7806, 1
  store i8 %7807, i8* %26, align 1
  %7808 = icmp eq i64 %7792, 0
  %7809 = zext i1 %7808 to i8
  store i8 %7809, i8* %29, align 1
  %7810 = lshr i64 %7792, 63
  %7811 = trunc i64 %7810 to i8
  store i8 %7811, i8* %32, align 1
  %7812 = xor i64 %7810, %7778
  %7813 = xor i64 %7810, %7791
  %7814 = add nuw nsw i64 %7812, %7813
  %7815 = icmp eq i64 %7814, 2
  %7816 = zext i1 %7815 to i8
  store i8 %7816, i8* %38, align 1
  %7817 = load i64, i64* %RBP.i, align 8
  %7818 = add i64 %7817, -32
  %7819 = add i64 %7757, 39
  store i64 %7819, i64* %3, align 8
  %7820 = inttoptr i64 %7818 to i32*
  %7821 = load i32, i32* %7820, align 4
  %7822 = sext i32 %7821 to i64
  %7823 = shl nsw i64 %7822, 4
  store i64 %7823, i64* %RDX.i2470, align 8
  %7824 = add i64 %7823, %7792
  store i64 %7824, i64* %RCX.i2479, align 8
  %7825 = icmp ult i64 %7824, %7792
  %7826 = icmp ult i64 %7824, %7823
  %7827 = or i1 %7825, %7826
  %7828 = zext i1 %7827 to i8
  store i8 %7828, i8* %14, align 1
  %7829 = trunc i64 %7824 to i32
  %7830 = and i32 %7829, 255
  %7831 = tail call i32 @llvm.ctpop.i32(i32 %7830)
  %7832 = trunc i32 %7831 to i8
  %7833 = and i8 %7832, 1
  %7834 = xor i8 %7833, 1
  store i8 %7834, i8* %21, align 1
  %7835 = xor i64 %7823, %7792
  %7836 = xor i64 %7835, %7824
  %7837 = lshr i64 %7836, 4
  %7838 = trunc i64 %7837 to i8
  %7839 = and i8 %7838, 1
  store i8 %7839, i8* %26, align 1
  %7840 = icmp eq i64 %7824, 0
  %7841 = zext i1 %7840 to i8
  store i8 %7841, i8* %29, align 1
  %7842 = lshr i64 %7824, 63
  %7843 = trunc i64 %7842 to i8
  store i8 %7843, i8* %32, align 1
  %7844 = lshr i64 %7822, 59
  %7845 = and i64 %7844, 1
  %7846 = xor i64 %7842, %7810
  %7847 = xor i64 %7842, %7845
  %7848 = add nuw nsw i64 %7846, %7847
  %7849 = icmp eq i64 %7848, 2
  %7850 = zext i1 %7849 to i8
  store i8 %7850, i8* %38, align 1
  %7851 = add i64 %7817, -28
  %7852 = add i64 %7757, 50
  store i64 %7852, i64* %3, align 8
  %7853 = inttoptr i64 %7851 to i32*
  %7854 = load i32, i32* %7853, align 4
  %7855 = sext i32 %7854 to i64
  %7856 = mul nsw i64 %7855, 960
  store i64 %7856, i64* %RDX.i2470, align 8
  %7857 = lshr i64 %7856, 63
  %7858 = load i64, i64* %RAX.i2481, align 8
  %7859 = add i64 %7856, %7858
  store i64 %7859, i64* %RAX.i2481, align 8
  %7860 = icmp ult i64 %7859, %7858
  %7861 = icmp ult i64 %7859, %7856
  %7862 = or i1 %7860, %7861
  %7863 = zext i1 %7862 to i8
  store i8 %7863, i8* %14, align 1
  %7864 = trunc i64 %7859 to i32
  %7865 = and i32 %7864, 255
  %7866 = tail call i32 @llvm.ctpop.i32(i32 %7865)
  %7867 = trunc i32 %7866 to i8
  %7868 = and i8 %7867, 1
  %7869 = xor i8 %7868, 1
  store i8 %7869, i8* %21, align 1
  %7870 = xor i64 %7858, %7859
  %7871 = lshr i64 %7870, 4
  %7872 = trunc i64 %7871 to i8
  %7873 = and i8 %7872, 1
  store i8 %7873, i8* %26, align 1
  %7874 = icmp eq i64 %7859, 0
  %7875 = zext i1 %7874 to i8
  store i8 %7875, i8* %29, align 1
  %7876 = lshr i64 %7859, 63
  %7877 = trunc i64 %7876 to i8
  store i8 %7877, i8* %32, align 1
  %7878 = lshr i64 %7858, 63
  %7879 = xor i64 %7876, %7878
  %7880 = xor i64 %7876, %7857
  %7881 = add nuw nsw i64 %7879, %7880
  %7882 = icmp eq i64 %7881, 2
  %7883 = zext i1 %7882 to i8
  store i8 %7883, i8* %38, align 1
  %7884 = load i64, i64* %RBP.i, align 8
  %7885 = add i64 %7884, -36
  %7886 = add i64 %7757, 64
  store i64 %7886, i64* %3, align 8
  %7887 = inttoptr i64 %7885 to i32*
  %7888 = load i32, i32* %7887, align 4
  %7889 = sext i32 %7888 to i64
  %7890 = mul nsw i64 %7889, 120
  store i64 %7890, i64* %RDX.i2470, align 8
  %7891 = lshr i64 %7890, 63
  %7892 = add i64 %7890, %7859
  store i64 %7892, i64* %RAX.i2481, align 8
  %7893 = icmp ult i64 %7892, %7859
  %7894 = icmp ult i64 %7892, %7890
  %7895 = or i1 %7893, %7894
  %7896 = zext i1 %7895 to i8
  store i8 %7896, i8* %14, align 1
  %7897 = trunc i64 %7892 to i32
  %7898 = and i32 %7897, 255
  %7899 = tail call i32 @llvm.ctpop.i32(i32 %7898)
  %7900 = trunc i32 %7899 to i8
  %7901 = and i8 %7900, 1
  %7902 = xor i8 %7901, 1
  store i8 %7902, i8* %21, align 1
  %7903 = xor i64 %7890, %7859
  %7904 = xor i64 %7903, %7892
  %7905 = lshr i64 %7904, 4
  %7906 = trunc i64 %7905 to i8
  %7907 = and i8 %7906, 1
  store i8 %7907, i8* %26, align 1
  %7908 = icmp eq i64 %7892, 0
  %7909 = zext i1 %7908 to i8
  store i8 %7909, i8* %29, align 1
  %7910 = lshr i64 %7892, 63
  %7911 = trunc i64 %7910 to i8
  store i8 %7911, i8* %32, align 1
  %7912 = xor i64 %7910, %7876
  %7913 = xor i64 %7910, %7891
  %7914 = add nuw nsw i64 %7912, %7913
  %7915 = icmp eq i64 %7914, 2
  %7916 = zext i1 %7915 to i8
  store i8 %7916, i8* %38, align 1
  %7917 = add i64 %7884, -32
  %7918 = add i64 %7757, 75
  store i64 %7918, i64* %3, align 8
  %7919 = inttoptr i64 %7917 to i32*
  %7920 = load i32, i32* %7919, align 4
  %7921 = sext i32 %7920 to i64
  %7922 = shl nsw i64 %7921, 3
  store i64 %7922, i64* %RDX.i2470, align 8
  %7923 = add i64 %7922, %7892
  store i64 %7923, i64* %RAX.i2481, align 8
  %7924 = icmp ult i64 %7923, %7892
  %7925 = icmp ult i64 %7923, %7922
  %7926 = or i1 %7924, %7925
  %7927 = zext i1 %7926 to i8
  store i8 %7927, i8* %14, align 1
  %7928 = trunc i64 %7923 to i32
  %7929 = and i32 %7928, 255
  %7930 = tail call i32 @llvm.ctpop.i32(i32 %7929)
  %7931 = trunc i32 %7930 to i8
  %7932 = and i8 %7931, 1
  %7933 = xor i8 %7932, 1
  store i8 %7933, i8* %21, align 1
  %7934 = xor i64 %7922, %7892
  %7935 = xor i64 %7934, %7923
  %7936 = lshr i64 %7935, 4
  %7937 = trunc i64 %7936 to i8
  %7938 = and i8 %7937, 1
  store i8 %7938, i8* %26, align 1
  %7939 = icmp eq i64 %7923, 0
  %7940 = zext i1 %7939 to i8
  store i8 %7940, i8* %29, align 1
  %7941 = lshr i64 %7923, 63
  %7942 = trunc i64 %7941 to i8
  store i8 %7942, i8* %32, align 1
  %7943 = lshr i64 %7921, 60
  %7944 = and i64 %7943, 1
  %7945 = xor i64 %7941, %7910
  %7946 = xor i64 %7941, %7944
  %7947 = add nuw nsw i64 %7945, %7946
  %7948 = icmp eq i64 %7947, 2
  %7949 = zext i1 %7948 to i8
  store i8 %7949, i8* %38, align 1
  %7950 = load i64, i64* %RCX.i2479, align 8
  store i64 %7950, i64* %RDI.i2476, align 8
  store i64 %7923, i64* %RSI.i2473, align 8
  %7951 = add i64 %7757, -4619
  %7952 = add i64 %7757, 93
  %7953 = load i64, i64* %6, align 8
  %7954 = add i64 %7953, -8
  %7955 = inttoptr i64 %7954 to i64*
  store i64 %7952, i64* %7955, align 8
  store i64 %7954, i64* %6, align 8
  store i64 %7951, i64* %3, align 8
  %call2_41a1e3 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %7951, %struct.Memory* %MEMORY.0)
  %7956 = load i64, i64* %RBP.i, align 8
  %7957 = add i64 %7956, -48
  %7958 = load i64, i64* %3, align 8
  %7959 = add i64 %7958, 5
  store i64 %7959, i64* %3, align 8
  %7960 = load double, double* %44, align 1
  %7961 = inttoptr i64 %7957 to double*
  %7962 = load double, double* %7961, align 8
  %7963 = fadd double %7960, %7962
  store double %7963, double* %44, align 1
  %7964 = add i64 %7958, 10
  store i64 %7964, i64* %3, align 8
  %7965 = inttoptr i64 %7957 to double*
  store double %7963, double* %7965, align 8
  %7966 = load i64, i64* %3, align 8
  %7967 = add i64 %7966, 108
  store i64 %7967, i64* %3, align 8
  br label %block_.L_41a25e

block_.L_41a1f7:                                  ; preds = %block_41a179
  store i64 ptrtoint (%G__0x4b7070_type* @G__0x4b7070 to i64), i64* %RAX.i2481, align 8
  %7968 = add i64 %7702, -24
  %7969 = add i64 %7757, 14
  store i64 %7969, i64* %3, align 8
  %7970 = inttoptr i64 %7968 to i64*
  %7971 = load i64, i64* %7970, align 8
  %7972 = add i64 %7971, 7328
  store i64 %7972, i64* %RCX.i2479, align 8
  %7973 = icmp ugt i64 %7971, -7329
  %7974 = zext i1 %7973 to i8
  store i8 %7974, i8* %14, align 1
  %7975 = trunc i64 %7972 to i32
  %7976 = and i32 %7975, 255
  %7977 = tail call i32 @llvm.ctpop.i32(i32 %7976)
  %7978 = trunc i32 %7977 to i8
  %7979 = and i8 %7978, 1
  %7980 = xor i8 %7979, 1
  store i8 %7980, i8* %21, align 1
  %7981 = xor i64 %7972, %7971
  %7982 = lshr i64 %7981, 4
  %7983 = trunc i64 %7982 to i8
  %7984 = and i8 %7983, 1
  store i8 %7984, i8* %26, align 1
  %7985 = icmp eq i64 %7972, 0
  %7986 = zext i1 %7985 to i8
  store i8 %7986, i8* %29, align 1
  %7987 = lshr i64 %7972, 63
  %7988 = trunc i64 %7987 to i8
  store i8 %7988, i8* %32, align 1
  %7989 = lshr i64 %7971, 63
  %7990 = xor i64 %7987, %7989
  %7991 = add nuw nsw i64 %7990, %7987
  %7992 = icmp eq i64 %7991, 2
  %7993 = zext i1 %7992 to i8
  store i8 %7993, i8* %38, align 1
  %7994 = add i64 %7702, -36
  %7995 = add i64 %7757, 25
  store i64 %7995, i64* %3, align 8
  %7996 = inttoptr i64 %7994 to i32*
  %7997 = load i32, i32* %7996, align 4
  %7998 = sext i32 %7997 to i64
  %7999 = mul nsw i64 %7998, 240
  store i64 %7999, i64* %RDX.i2470, align 8
  %8000 = lshr i64 %7999, 63
  %8001 = add i64 %7999, %7972
  store i64 %8001, i64* %RCX.i2479, align 8
  %8002 = icmp ult i64 %8001, %7972
  %8003 = icmp ult i64 %8001, %7999
  %8004 = or i1 %8002, %8003
  %8005 = zext i1 %8004 to i8
  store i8 %8005, i8* %14, align 1
  %8006 = trunc i64 %8001 to i32
  %8007 = and i32 %8006, 255
  %8008 = tail call i32 @llvm.ctpop.i32(i32 %8007)
  %8009 = trunc i32 %8008 to i8
  %8010 = and i8 %8009, 1
  %8011 = xor i8 %8010, 1
  store i8 %8011, i8* %21, align 1
  %8012 = xor i64 %7999, %7972
  %8013 = xor i64 %8012, %8001
  %8014 = lshr i64 %8013, 4
  %8015 = trunc i64 %8014 to i8
  %8016 = and i8 %8015, 1
  store i8 %8016, i8* %26, align 1
  %8017 = icmp eq i64 %8001, 0
  %8018 = zext i1 %8017 to i8
  store i8 %8018, i8* %29, align 1
  %8019 = lshr i64 %8001, 63
  %8020 = trunc i64 %8019 to i8
  store i8 %8020, i8* %32, align 1
  %8021 = xor i64 %8019, %7987
  %8022 = xor i64 %8019, %8000
  %8023 = add nuw nsw i64 %8021, %8022
  %8024 = icmp eq i64 %8023, 2
  %8025 = zext i1 %8024 to i8
  store i8 %8025, i8* %38, align 1
  %8026 = load i64, i64* %RBP.i, align 8
  %8027 = add i64 %8026, -32
  %8028 = add i64 %7757, 39
  store i64 %8028, i64* %3, align 8
  %8029 = inttoptr i64 %8027 to i32*
  %8030 = load i32, i32* %8029, align 4
  %8031 = sext i32 %8030 to i64
  %8032 = shl nsw i64 %8031, 4
  store i64 %8032, i64* %RDX.i2470, align 8
  %8033 = add i64 %8032, %8001
  store i64 %8033, i64* %RCX.i2479, align 8
  %8034 = icmp ult i64 %8033, %8001
  %8035 = icmp ult i64 %8033, %8032
  %8036 = or i1 %8034, %8035
  %8037 = zext i1 %8036 to i8
  store i8 %8037, i8* %14, align 1
  %8038 = trunc i64 %8033 to i32
  %8039 = and i32 %8038, 255
  %8040 = tail call i32 @llvm.ctpop.i32(i32 %8039)
  %8041 = trunc i32 %8040 to i8
  %8042 = and i8 %8041, 1
  %8043 = xor i8 %8042, 1
  store i8 %8043, i8* %21, align 1
  %8044 = xor i64 %8032, %8001
  %8045 = xor i64 %8044, %8033
  %8046 = lshr i64 %8045, 4
  %8047 = trunc i64 %8046 to i8
  %8048 = and i8 %8047, 1
  store i8 %8048, i8* %26, align 1
  %8049 = icmp eq i64 %8033, 0
  %8050 = zext i1 %8049 to i8
  store i8 %8050, i8* %29, align 1
  %8051 = lshr i64 %8033, 63
  %8052 = trunc i64 %8051 to i8
  store i8 %8052, i8* %32, align 1
  %8053 = lshr i64 %8031, 59
  %8054 = and i64 %8053, 1
  %8055 = xor i64 %8051, %8019
  %8056 = xor i64 %8051, %8054
  %8057 = add nuw nsw i64 %8055, %8056
  %8058 = icmp eq i64 %8057, 2
  %8059 = zext i1 %8058 to i8
  store i8 %8059, i8* %38, align 1
  %8060 = add i64 %8026, -28
  %8061 = add i64 %7757, 50
  store i64 %8061, i64* %3, align 8
  %8062 = inttoptr i64 %8060 to i32*
  %8063 = load i32, i32* %8062, align 4
  %8064 = sext i32 %8063 to i64
  %8065 = mul nsw i64 %8064, 960
  store i64 %8065, i64* %RDX.i2470, align 8
  %8066 = lshr i64 %8065, 63
  %8067 = load i64, i64* %RAX.i2481, align 8
  %8068 = add i64 %8065, %8067
  store i64 %8068, i64* %RAX.i2481, align 8
  %8069 = icmp ult i64 %8068, %8067
  %8070 = icmp ult i64 %8068, %8065
  %8071 = or i1 %8069, %8070
  %8072 = zext i1 %8071 to i8
  store i8 %8072, i8* %14, align 1
  %8073 = trunc i64 %8068 to i32
  %8074 = and i32 %8073, 255
  %8075 = tail call i32 @llvm.ctpop.i32(i32 %8074)
  %8076 = trunc i32 %8075 to i8
  %8077 = and i8 %8076, 1
  %8078 = xor i8 %8077, 1
  store i8 %8078, i8* %21, align 1
  %8079 = xor i64 %8067, %8068
  %8080 = lshr i64 %8079, 4
  %8081 = trunc i64 %8080 to i8
  %8082 = and i8 %8081, 1
  store i8 %8082, i8* %26, align 1
  %8083 = icmp eq i64 %8068, 0
  %8084 = zext i1 %8083 to i8
  store i8 %8084, i8* %29, align 1
  %8085 = lshr i64 %8068, 63
  %8086 = trunc i64 %8085 to i8
  store i8 %8086, i8* %32, align 1
  %8087 = lshr i64 %8067, 63
  %8088 = xor i64 %8085, %8087
  %8089 = xor i64 %8085, %8066
  %8090 = add nuw nsw i64 %8088, %8089
  %8091 = icmp eq i64 %8090, 2
  %8092 = zext i1 %8091 to i8
  store i8 %8092, i8* %38, align 1
  %8093 = load i64, i64* %RBP.i, align 8
  %8094 = add i64 %8093, -36
  %8095 = add i64 %7757, 64
  store i64 %8095, i64* %3, align 8
  %8096 = inttoptr i64 %8094 to i32*
  %8097 = load i32, i32* %8096, align 4
  %8098 = sext i32 %8097 to i64
  %8099 = mul nsw i64 %8098, 120
  store i64 %8099, i64* %RDX.i2470, align 8
  %8100 = lshr i64 %8099, 63
  %8101 = add i64 %8099, %8068
  store i64 %8101, i64* %RAX.i2481, align 8
  %8102 = icmp ult i64 %8101, %8068
  %8103 = icmp ult i64 %8101, %8099
  %8104 = or i1 %8102, %8103
  %8105 = zext i1 %8104 to i8
  store i8 %8105, i8* %14, align 1
  %8106 = trunc i64 %8101 to i32
  %8107 = and i32 %8106, 255
  %8108 = tail call i32 @llvm.ctpop.i32(i32 %8107)
  %8109 = trunc i32 %8108 to i8
  %8110 = and i8 %8109, 1
  %8111 = xor i8 %8110, 1
  store i8 %8111, i8* %21, align 1
  %8112 = xor i64 %8099, %8068
  %8113 = xor i64 %8112, %8101
  %8114 = lshr i64 %8113, 4
  %8115 = trunc i64 %8114 to i8
  %8116 = and i8 %8115, 1
  store i8 %8116, i8* %26, align 1
  %8117 = icmp eq i64 %8101, 0
  %8118 = zext i1 %8117 to i8
  store i8 %8118, i8* %29, align 1
  %8119 = lshr i64 %8101, 63
  %8120 = trunc i64 %8119 to i8
  store i8 %8120, i8* %32, align 1
  %8121 = xor i64 %8119, %8085
  %8122 = xor i64 %8119, %8100
  %8123 = add nuw nsw i64 %8121, %8122
  %8124 = icmp eq i64 %8123, 2
  %8125 = zext i1 %8124 to i8
  store i8 %8125, i8* %38, align 1
  %8126 = add i64 %8093, -32
  %8127 = add i64 %7757, 75
  store i64 %8127, i64* %3, align 8
  %8128 = inttoptr i64 %8126 to i32*
  %8129 = load i32, i32* %8128, align 4
  %8130 = sext i32 %8129 to i64
  %8131 = shl nsw i64 %8130, 3
  store i64 %8131, i64* %RDX.i2470, align 8
  %8132 = add i64 %8131, %8101
  store i64 %8132, i64* %RAX.i2481, align 8
  %8133 = icmp ult i64 %8132, %8101
  %8134 = icmp ult i64 %8132, %8131
  %8135 = or i1 %8133, %8134
  %8136 = zext i1 %8135 to i8
  store i8 %8136, i8* %14, align 1
  %8137 = trunc i64 %8132 to i32
  %8138 = and i32 %8137, 255
  %8139 = tail call i32 @llvm.ctpop.i32(i32 %8138)
  %8140 = trunc i32 %8139 to i8
  %8141 = and i8 %8140, 1
  %8142 = xor i8 %8141, 1
  store i8 %8142, i8* %21, align 1
  %8143 = xor i64 %8131, %8101
  %8144 = xor i64 %8143, %8132
  %8145 = lshr i64 %8144, 4
  %8146 = trunc i64 %8145 to i8
  %8147 = and i8 %8146, 1
  store i8 %8147, i8* %26, align 1
  %8148 = icmp eq i64 %8132, 0
  %8149 = zext i1 %8148 to i8
  store i8 %8149, i8* %29, align 1
  %8150 = lshr i64 %8132, 63
  %8151 = trunc i64 %8150 to i8
  store i8 %8151, i8* %32, align 1
  %8152 = lshr i64 %8130, 60
  %8153 = and i64 %8152, 1
  %8154 = xor i64 %8150, %8119
  %8155 = xor i64 %8150, %8153
  %8156 = add nuw nsw i64 %8154, %8155
  %8157 = icmp eq i64 %8156, 2
  %8158 = zext i1 %8157 to i8
  store i8 %8158, i8* %38, align 1
  %8159 = load i64, i64* %RCX.i2479, align 8
  store i64 %8159, i64* %RDI.i2476, align 8
  store i64 %8132, i64* %RSI.i2473, align 8
  %8160 = add i64 %7757, -4727
  %8161 = add i64 %7757, 93
  %8162 = load i64, i64* %6, align 8
  %8163 = add i64 %8162, -8
  %8164 = inttoptr i64 %8163 to i64*
  store i64 %8161, i64* %8164, align 8
  store i64 %8163, i64* %6, align 8
  store i64 %8160, i64* %3, align 8
  %call2_41a24f = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %8160, %struct.Memory* %MEMORY.0)
  %8165 = load i64, i64* %RBP.i, align 8
  %8166 = add i64 %8165, -48
  %8167 = load i64, i64* %3, align 8
  %8168 = add i64 %8167, 5
  store i64 %8168, i64* %3, align 8
  %8169 = load double, double* %44, align 1
  %8170 = inttoptr i64 %8166 to double*
  %8171 = load double, double* %8170, align 8
  %8172 = fadd double %8169, %8171
  store double %8172, double* %44, align 1
  %8173 = add i64 %8167, 10
  store i64 %8173, i64* %3, align 8
  %8174 = inttoptr i64 %8166 to double*
  store double %8172, double* %8174, align 8
  %.pre235 = load i64, i64* %3, align 8
  br label %block_.L_41a25e

block_.L_41a25e:                                  ; preds = %block_.L_41a1f7, %block_41a18b
  %8175 = phi i64 [ %.pre235, %block_.L_41a1f7 ], [ %7967, %block_41a18b ]
  %8176 = load i64, i64* %RBP.i, align 8
  %8177 = add i64 %8176, -32
  %8178 = add i64 %8175, 8
  store i64 %8178, i64* %3, align 8
  %8179 = inttoptr i64 %8177 to i32*
  %8180 = load i32, i32* %8179, align 4
  %8181 = add i32 %8180, 1
  %8182 = zext i32 %8181 to i64
  store i64 %8182, i64* %RAX.i2481, align 8
  %8183 = icmp eq i32 %8180, -1
  %8184 = icmp eq i32 %8181, 0
  %8185 = or i1 %8183, %8184
  %8186 = zext i1 %8185 to i8
  store i8 %8186, i8* %14, align 1
  %8187 = and i32 %8181, 255
  %8188 = tail call i32 @llvm.ctpop.i32(i32 %8187)
  %8189 = trunc i32 %8188 to i8
  %8190 = and i8 %8189, 1
  %8191 = xor i8 %8190, 1
  store i8 %8191, i8* %21, align 1
  %8192 = xor i32 %8181, %8180
  %8193 = lshr i32 %8192, 4
  %8194 = trunc i32 %8193 to i8
  %8195 = and i8 %8194, 1
  store i8 %8195, i8* %26, align 1
  %8196 = zext i1 %8184 to i8
  store i8 %8196, i8* %29, align 1
  %8197 = lshr i32 %8181, 31
  %8198 = trunc i32 %8197 to i8
  store i8 %8198, i8* %32, align 1
  %8199 = lshr i32 %8180, 31
  %8200 = xor i32 %8197, %8199
  %8201 = add nuw nsw i32 %8200, %8197
  %8202 = icmp eq i32 %8201, 2
  %8203 = zext i1 %8202 to i8
  store i8 %8203, i8* %38, align 1
  %8204 = add i64 %8175, 14
  store i64 %8204, i64* %3, align 8
  store i32 %8181, i32* %8179, align 4
  %8205 = load i64, i64* %3, align 8
  %8206 = add i64 %8205, -253
  store i64 %8206, i64* %3, align 8
  br label %block_.L_41a16f

block_.L_41a271:                                  ; preds = %block_.L_41a16f
  %8207 = add i64 %7702, -36
  %8208 = add i64 %7730, 8
  store i64 %8208, i64* %3, align 8
  %8209 = inttoptr i64 %8207 to i32*
  %8210 = load i32, i32* %8209, align 4
  %8211 = add i32 %8210, 1
  %8212 = zext i32 %8211 to i64
  store i64 %8212, i64* %RAX.i2481, align 8
  %8213 = icmp eq i32 %8210, -1
  %8214 = icmp eq i32 %8211, 0
  %8215 = or i1 %8213, %8214
  %8216 = zext i1 %8215 to i8
  store i8 %8216, i8* %14, align 1
  %8217 = and i32 %8211, 255
  %8218 = tail call i32 @llvm.ctpop.i32(i32 %8217)
  %8219 = trunc i32 %8218 to i8
  %8220 = and i8 %8219, 1
  %8221 = xor i8 %8220, 1
  store i8 %8221, i8* %21, align 1
  %8222 = xor i32 %8211, %8210
  %8223 = lshr i32 %8222, 4
  %8224 = trunc i32 %8223 to i8
  %8225 = and i8 %8224, 1
  store i8 %8225, i8* %26, align 1
  %8226 = zext i1 %8214 to i8
  store i8 %8226, i8* %29, align 1
  %8227 = lshr i32 %8211, 31
  %8228 = trunc i32 %8227 to i8
  store i8 %8228, i8* %32, align 1
  %8229 = lshr i32 %8210, 31
  %8230 = xor i32 %8227, %8229
  %8231 = add nuw nsw i32 %8230, %8227
  %8232 = icmp eq i32 %8231, 2
  %8233 = zext i1 %8232 to i8
  store i8 %8233, i8* %38, align 1
  %8234 = add i64 %7730, 14
  store i64 %8234, i64* %3, align 8
  store i32 %8211, i32* %8209, align 4
  %8235 = load i64, i64* %3, align 8
  %8236 = add i64 %8235, -289
  store i64 %8236, i64* %3, align 8
  br label %block_.L_41a15e

block_.L_41a284:                                  ; preds = %block_.L_41a15e
  %8237 = add i64 %7697, 7
  store i64 %8237, i64* %3, align 8
  store i32 0, i32* %7672, align 4
  %.pre227 = load i64, i64* %3, align 8
  br label %block_.L_41a28b

block_.L_41a28b:                                  ; preds = %block_.L_41a39e, %block_.L_41a284
  %8238 = phi i64 [ %.pre227, %block_.L_41a284 ], [ %8806, %block_.L_41a39e ]
  %8239 = load i64, i64* %RBP.i, align 8
  %8240 = add i64 %8239, -36
  %8241 = add i64 %8238, 4
  store i64 %8241, i64* %3, align 8
  %8242 = inttoptr i64 %8240 to i32*
  %8243 = load i32, i32* %8242, align 4
  %8244 = add i32 %8243, -10
  %8245 = icmp ult i32 %8243, 10
  %8246 = zext i1 %8245 to i8
  store i8 %8246, i8* %14, align 1
  %8247 = and i32 %8244, 255
  %8248 = tail call i32 @llvm.ctpop.i32(i32 %8247)
  %8249 = trunc i32 %8248 to i8
  %8250 = and i8 %8249, 1
  %8251 = xor i8 %8250, 1
  store i8 %8251, i8* %21, align 1
  %8252 = xor i32 %8244, %8243
  %8253 = lshr i32 %8252, 4
  %8254 = trunc i32 %8253 to i8
  %8255 = and i8 %8254, 1
  store i8 %8255, i8* %26, align 1
  %8256 = icmp eq i32 %8244, 0
  %8257 = zext i1 %8256 to i8
  store i8 %8257, i8* %29, align 1
  %8258 = lshr i32 %8244, 31
  %8259 = trunc i32 %8258 to i8
  store i8 %8259, i8* %32, align 1
  %8260 = lshr i32 %8243, 31
  %8261 = xor i32 %8258, %8260
  %8262 = add nuw nsw i32 %8261, %8260
  %8263 = icmp eq i32 %8262, 2
  %8264 = zext i1 %8263 to i8
  store i8 %8264, i8* %38, align 1
  %8265 = icmp ne i8 %8259, 0
  %8266 = xor i1 %8265, %8263
  %.v289 = select i1 %8266, i64 10, i64 294
  %8267 = add i64 %8238, %.v289
  store i64 %8267, i64* %3, align 8
  br i1 %8266, label %block_41a295, label %block_.L_41a3b1

block_41a295:                                     ; preds = %block_.L_41a28b
  %8268 = add i64 %8239, -32
  %8269 = add i64 %8267, 7
  store i64 %8269, i64* %3, align 8
  %8270 = inttoptr i64 %8268 to i32*
  store i32 0, i32* %8270, align 4
  %.pre232 = load i64, i64* %3, align 8
  br label %block_.L_41a29c

block_.L_41a29c:                                  ; preds = %block_.L_41a38b, %block_41a295
  %8271 = phi i64 [ %.pre232, %block_41a295 ], [ %8776, %block_.L_41a38b ]
  %8272 = load i64, i64* %RBP.i, align 8
  %8273 = add i64 %8272, -32
  %8274 = add i64 %8271, 4
  store i64 %8274, i64* %3, align 8
  %8275 = inttoptr i64 %8273 to i32*
  %8276 = load i32, i32* %8275, align 4
  %8277 = add i32 %8276, -15
  %8278 = icmp ult i32 %8276, 15
  %8279 = zext i1 %8278 to i8
  store i8 %8279, i8* %14, align 1
  %8280 = and i32 %8277, 255
  %8281 = tail call i32 @llvm.ctpop.i32(i32 %8280)
  %8282 = trunc i32 %8281 to i8
  %8283 = and i8 %8282, 1
  %8284 = xor i8 %8283, 1
  store i8 %8284, i8* %21, align 1
  %8285 = xor i32 %8277, %8276
  %8286 = lshr i32 %8285, 4
  %8287 = trunc i32 %8286 to i8
  %8288 = and i8 %8287, 1
  store i8 %8288, i8* %26, align 1
  %8289 = icmp eq i32 %8277, 0
  %8290 = zext i1 %8289 to i8
  store i8 %8290, i8* %29, align 1
  %8291 = lshr i32 %8277, 31
  %8292 = trunc i32 %8291 to i8
  store i8 %8292, i8* %32, align 1
  %8293 = lshr i32 %8276, 31
  %8294 = xor i32 %8291, %8293
  %8295 = add nuw nsw i32 %8294, %8293
  %8296 = icmp eq i32 %8295, 2
  %8297 = zext i1 %8296 to i8
  store i8 %8297, i8* %38, align 1
  %8298 = icmp ne i8 %8292, 0
  %8299 = xor i1 %8298, %8296
  %.v261 = select i1 %8299, i64 10, i64 258
  %8300 = add i64 %8271, %.v261
  store i64 %8300, i64* %3, align 8
  br i1 %8299, label %block_41a2a6, label %block_.L_41a39e

block_41a2a6:                                     ; preds = %block_.L_41a29c
  %8301 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8301, i64* %RAX.i2481, align 8
  %8302 = add i64 %8301, 24
  %8303 = add i64 %8300, 12
  store i64 %8303, i64* %3, align 8
  %8304 = inttoptr i64 %8302 to i32*
  %8305 = load i32, i32* %8304, align 4
  %8306 = add i32 %8305, -2
  %8307 = icmp ult i32 %8305, 2
  %8308 = zext i1 %8307 to i8
  store i8 %8308, i8* %14, align 1
  %8309 = and i32 %8306, 255
  %8310 = tail call i32 @llvm.ctpop.i32(i32 %8309)
  %8311 = trunc i32 %8310 to i8
  %8312 = and i8 %8311, 1
  %8313 = xor i8 %8312, 1
  store i8 %8313, i8* %21, align 1
  %8314 = xor i32 %8306, %8305
  %8315 = lshr i32 %8314, 4
  %8316 = trunc i32 %8315 to i8
  %8317 = and i8 %8316, 1
  store i8 %8317, i8* %26, align 1
  %8318 = icmp eq i32 %8306, 0
  %8319 = zext i1 %8318 to i8
  store i8 %8319, i8* %29, align 1
  %8320 = lshr i32 %8306, 31
  %8321 = trunc i32 %8320 to i8
  store i8 %8321, i8* %32, align 1
  %8322 = lshr i32 %8305, 31
  %8323 = xor i32 %8320, %8322
  %8324 = add nuw nsw i32 %8323, %8322
  %8325 = icmp eq i32 %8324, 2
  %8326 = zext i1 %8325 to i8
  store i8 %8326, i8* %38, align 1
  %.v291 = select i1 %8318, i64 18, i64 126
  %8327 = add i64 %8300, %.v291
  %8328 = add i64 %8327, 10
  store i64 %8328, i64* %3, align 8
  br i1 %8318, label %block_41a2b8, label %block_.L_41a324

block_41a2b8:                                     ; preds = %block_41a2a6
  store i64 ptrtoint (%G__0x4b7bb0_type* @G__0x4b7bb0 to i64), i64* %RAX.i2481, align 8
  %8329 = add i64 %8272, -24
  %8330 = add i64 %8327, 14
  store i64 %8330, i64* %3, align 8
  %8331 = inttoptr i64 %8329 to i64*
  %8332 = load i64, i64* %8331, align 8
  %8333 = add i64 %8332, 9728
  store i64 %8333, i64* %RCX.i2479, align 8
  %8334 = icmp ugt i64 %8332, -9729
  %8335 = zext i1 %8334 to i8
  store i8 %8335, i8* %14, align 1
  %8336 = trunc i64 %8333 to i32
  %8337 = and i32 %8336, 255
  %8338 = tail call i32 @llvm.ctpop.i32(i32 %8337)
  %8339 = trunc i32 %8338 to i8
  %8340 = and i8 %8339, 1
  %8341 = xor i8 %8340, 1
  store i8 %8341, i8* %21, align 1
  %8342 = xor i64 %8333, %8332
  %8343 = lshr i64 %8342, 4
  %8344 = trunc i64 %8343 to i8
  %8345 = and i8 %8344, 1
  store i8 %8345, i8* %26, align 1
  %8346 = icmp eq i64 %8333, 0
  %8347 = zext i1 %8346 to i8
  store i8 %8347, i8* %29, align 1
  %8348 = lshr i64 %8333, 63
  %8349 = trunc i64 %8348 to i8
  store i8 %8349, i8* %32, align 1
  %8350 = lshr i64 %8332, 63
  %8351 = xor i64 %8348, %8350
  %8352 = add nuw nsw i64 %8351, %8348
  %8353 = icmp eq i64 %8352, 2
  %8354 = zext i1 %8353 to i8
  store i8 %8354, i8* %38, align 1
  %8355 = add i64 %8272, -36
  %8356 = add i64 %8327, 25
  store i64 %8356, i64* %3, align 8
  %8357 = inttoptr i64 %8355 to i32*
  %8358 = load i32, i32* %8357, align 4
  %8359 = sext i32 %8358 to i64
  %8360 = mul nsw i64 %8359, 240
  store i64 %8360, i64* %RDX.i2470, align 8
  %8361 = lshr i64 %8360, 63
  %8362 = add i64 %8360, %8333
  store i64 %8362, i64* %RCX.i2479, align 8
  %8363 = icmp ult i64 %8362, %8333
  %8364 = icmp ult i64 %8362, %8360
  %8365 = or i1 %8363, %8364
  %8366 = zext i1 %8365 to i8
  store i8 %8366, i8* %14, align 1
  %8367 = trunc i64 %8362 to i32
  %8368 = and i32 %8367, 255
  %8369 = tail call i32 @llvm.ctpop.i32(i32 %8368)
  %8370 = trunc i32 %8369 to i8
  %8371 = and i8 %8370, 1
  %8372 = xor i8 %8371, 1
  store i8 %8372, i8* %21, align 1
  %8373 = xor i64 %8360, %8333
  %8374 = xor i64 %8373, %8362
  %8375 = lshr i64 %8374, 4
  %8376 = trunc i64 %8375 to i8
  %8377 = and i8 %8376, 1
  store i8 %8377, i8* %26, align 1
  %8378 = icmp eq i64 %8362, 0
  %8379 = zext i1 %8378 to i8
  store i8 %8379, i8* %29, align 1
  %8380 = lshr i64 %8362, 63
  %8381 = trunc i64 %8380 to i8
  store i8 %8381, i8* %32, align 1
  %8382 = xor i64 %8380, %8348
  %8383 = xor i64 %8380, %8361
  %8384 = add nuw nsw i64 %8382, %8383
  %8385 = icmp eq i64 %8384, 2
  %8386 = zext i1 %8385 to i8
  store i8 %8386, i8* %38, align 1
  %8387 = load i64, i64* %RBP.i, align 8
  %8388 = add i64 %8387, -32
  %8389 = add i64 %8327, 39
  store i64 %8389, i64* %3, align 8
  %8390 = inttoptr i64 %8388 to i32*
  %8391 = load i32, i32* %8390, align 4
  %8392 = sext i32 %8391 to i64
  %8393 = shl nsw i64 %8392, 4
  store i64 %8393, i64* %RDX.i2470, align 8
  %8394 = add i64 %8393, %8362
  store i64 %8394, i64* %RCX.i2479, align 8
  %8395 = icmp ult i64 %8394, %8362
  %8396 = icmp ult i64 %8394, %8393
  %8397 = or i1 %8395, %8396
  %8398 = zext i1 %8397 to i8
  store i8 %8398, i8* %14, align 1
  %8399 = trunc i64 %8394 to i32
  %8400 = and i32 %8399, 255
  %8401 = tail call i32 @llvm.ctpop.i32(i32 %8400)
  %8402 = trunc i32 %8401 to i8
  %8403 = and i8 %8402, 1
  %8404 = xor i8 %8403, 1
  store i8 %8404, i8* %21, align 1
  %8405 = xor i64 %8393, %8362
  %8406 = xor i64 %8405, %8394
  %8407 = lshr i64 %8406, 4
  %8408 = trunc i64 %8407 to i8
  %8409 = and i8 %8408, 1
  store i8 %8409, i8* %26, align 1
  %8410 = icmp eq i64 %8394, 0
  %8411 = zext i1 %8410 to i8
  store i8 %8411, i8* %29, align 1
  %8412 = lshr i64 %8394, 63
  %8413 = trunc i64 %8412 to i8
  store i8 %8413, i8* %32, align 1
  %8414 = lshr i64 %8392, 59
  %8415 = and i64 %8414, 1
  %8416 = xor i64 %8412, %8380
  %8417 = xor i64 %8412, %8415
  %8418 = add nuw nsw i64 %8416, %8417
  %8419 = icmp eq i64 %8418, 2
  %8420 = zext i1 %8419 to i8
  store i8 %8420, i8* %38, align 1
  %8421 = add i64 %8387, -28
  %8422 = add i64 %8327, 50
  store i64 %8422, i64* %3, align 8
  %8423 = inttoptr i64 %8421 to i32*
  %8424 = load i32, i32* %8423, align 4
  %8425 = sext i32 %8424 to i64
  %8426 = mul nsw i64 %8425, 960
  store i64 %8426, i64* %RDX.i2470, align 8
  %8427 = lshr i64 %8426, 63
  %8428 = load i64, i64* %RAX.i2481, align 8
  %8429 = add i64 %8426, %8428
  store i64 %8429, i64* %RAX.i2481, align 8
  %8430 = icmp ult i64 %8429, %8428
  %8431 = icmp ult i64 %8429, %8426
  %8432 = or i1 %8430, %8431
  %8433 = zext i1 %8432 to i8
  store i8 %8433, i8* %14, align 1
  %8434 = trunc i64 %8429 to i32
  %8435 = and i32 %8434, 255
  %8436 = tail call i32 @llvm.ctpop.i32(i32 %8435)
  %8437 = trunc i32 %8436 to i8
  %8438 = and i8 %8437, 1
  %8439 = xor i8 %8438, 1
  store i8 %8439, i8* %21, align 1
  %8440 = xor i64 %8428, %8429
  %8441 = lshr i64 %8440, 4
  %8442 = trunc i64 %8441 to i8
  %8443 = and i8 %8442, 1
  store i8 %8443, i8* %26, align 1
  %8444 = icmp eq i64 %8429, 0
  %8445 = zext i1 %8444 to i8
  store i8 %8445, i8* %29, align 1
  %8446 = lshr i64 %8429, 63
  %8447 = trunc i64 %8446 to i8
  store i8 %8447, i8* %32, align 1
  %8448 = lshr i64 %8428, 63
  %8449 = xor i64 %8446, %8448
  %8450 = xor i64 %8446, %8427
  %8451 = add nuw nsw i64 %8449, %8450
  %8452 = icmp eq i64 %8451, 2
  %8453 = zext i1 %8452 to i8
  store i8 %8453, i8* %38, align 1
  %8454 = load i64, i64* %RBP.i, align 8
  %8455 = add i64 %8454, -36
  %8456 = add i64 %8327, 64
  store i64 %8456, i64* %3, align 8
  %8457 = inttoptr i64 %8455 to i32*
  %8458 = load i32, i32* %8457, align 4
  %8459 = sext i32 %8458 to i64
  %8460 = mul nsw i64 %8459, 120
  store i64 %8460, i64* %RDX.i2470, align 8
  %8461 = lshr i64 %8460, 63
  %8462 = add i64 %8460, %8429
  store i64 %8462, i64* %RAX.i2481, align 8
  %8463 = icmp ult i64 %8462, %8429
  %8464 = icmp ult i64 %8462, %8460
  %8465 = or i1 %8463, %8464
  %8466 = zext i1 %8465 to i8
  store i8 %8466, i8* %14, align 1
  %8467 = trunc i64 %8462 to i32
  %8468 = and i32 %8467, 255
  %8469 = tail call i32 @llvm.ctpop.i32(i32 %8468)
  %8470 = trunc i32 %8469 to i8
  %8471 = and i8 %8470, 1
  %8472 = xor i8 %8471, 1
  store i8 %8472, i8* %21, align 1
  %8473 = xor i64 %8460, %8429
  %8474 = xor i64 %8473, %8462
  %8475 = lshr i64 %8474, 4
  %8476 = trunc i64 %8475 to i8
  %8477 = and i8 %8476, 1
  store i8 %8477, i8* %26, align 1
  %8478 = icmp eq i64 %8462, 0
  %8479 = zext i1 %8478 to i8
  store i8 %8479, i8* %29, align 1
  %8480 = lshr i64 %8462, 63
  %8481 = trunc i64 %8480 to i8
  store i8 %8481, i8* %32, align 1
  %8482 = xor i64 %8480, %8446
  %8483 = xor i64 %8480, %8461
  %8484 = add nuw nsw i64 %8482, %8483
  %8485 = icmp eq i64 %8484, 2
  %8486 = zext i1 %8485 to i8
  store i8 %8486, i8* %38, align 1
  %8487 = add i64 %8454, -32
  %8488 = add i64 %8327, 75
  store i64 %8488, i64* %3, align 8
  %8489 = inttoptr i64 %8487 to i32*
  %8490 = load i32, i32* %8489, align 4
  %8491 = sext i32 %8490 to i64
  %8492 = shl nsw i64 %8491, 3
  store i64 %8492, i64* %RDX.i2470, align 8
  %8493 = add i64 %8492, %8462
  store i64 %8493, i64* %RAX.i2481, align 8
  %8494 = icmp ult i64 %8493, %8462
  %8495 = icmp ult i64 %8493, %8492
  %8496 = or i1 %8494, %8495
  %8497 = zext i1 %8496 to i8
  store i8 %8497, i8* %14, align 1
  %8498 = trunc i64 %8493 to i32
  %8499 = and i32 %8498, 255
  %8500 = tail call i32 @llvm.ctpop.i32(i32 %8499)
  %8501 = trunc i32 %8500 to i8
  %8502 = and i8 %8501, 1
  %8503 = xor i8 %8502, 1
  store i8 %8503, i8* %21, align 1
  %8504 = xor i64 %8492, %8462
  %8505 = xor i64 %8504, %8493
  %8506 = lshr i64 %8505, 4
  %8507 = trunc i64 %8506 to i8
  %8508 = and i8 %8507, 1
  store i8 %8508, i8* %26, align 1
  %8509 = icmp eq i64 %8493, 0
  %8510 = zext i1 %8509 to i8
  store i8 %8510, i8* %29, align 1
  %8511 = lshr i64 %8493, 63
  %8512 = trunc i64 %8511 to i8
  store i8 %8512, i8* %32, align 1
  %8513 = lshr i64 %8491, 60
  %8514 = and i64 %8513, 1
  %8515 = xor i64 %8511, %8480
  %8516 = xor i64 %8511, %8514
  %8517 = add nuw nsw i64 %8515, %8516
  %8518 = icmp eq i64 %8517, 2
  %8519 = zext i1 %8518 to i8
  store i8 %8519, i8* %38, align 1
  %8520 = load i64, i64* %RCX.i2479, align 8
  store i64 %8520, i64* %RDI.i2476, align 8
  store i64 %8493, i64* %RSI.i2473, align 8
  %8521 = add i64 %8327, -4920
  %8522 = add i64 %8327, 93
  %8523 = load i64, i64* %6, align 8
  %8524 = add i64 %8523, -8
  %8525 = inttoptr i64 %8524 to i64*
  store i64 %8522, i64* %8525, align 8
  store i64 %8524, i64* %6, align 8
  store i64 %8521, i64* %3, align 8
  %call2_41a310 = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %8521, %struct.Memory* %MEMORY.0)
  %8526 = load i64, i64* %RBP.i, align 8
  %8527 = add i64 %8526, -48
  %8528 = load i64, i64* %3, align 8
  %8529 = add i64 %8528, 5
  store i64 %8529, i64* %3, align 8
  %8530 = load double, double* %44, align 1
  %8531 = inttoptr i64 %8527 to double*
  %8532 = load double, double* %8531, align 8
  %8533 = fadd double %8530, %8532
  store double %8533, double* %44, align 1
  %8534 = add i64 %8528, 10
  store i64 %8534, i64* %3, align 8
  %8535 = inttoptr i64 %8527 to double*
  store double %8533, double* %8535, align 8
  %8536 = load i64, i64* %3, align 8
  %8537 = add i64 %8536, 108
  store i64 %8537, i64* %3, align 8
  br label %block_.L_41a38b

block_.L_41a324:                                  ; preds = %block_41a2a6
  store i64 ptrtoint (%G__0x4b7f70_type* @G__0x4b7f70 to i64), i64* %RAX.i2481, align 8
  %8538 = add i64 %8272, -24
  %8539 = add i64 %8327, 14
  store i64 %8539, i64* %3, align 8
  %8540 = inttoptr i64 %8538 to i64*
  %8541 = load i64, i64* %8540, align 8
  %8542 = add i64 %8541, 9728
  store i64 %8542, i64* %RCX.i2479, align 8
  %8543 = icmp ugt i64 %8541, -9729
  %8544 = zext i1 %8543 to i8
  store i8 %8544, i8* %14, align 1
  %8545 = trunc i64 %8542 to i32
  %8546 = and i32 %8545, 255
  %8547 = tail call i32 @llvm.ctpop.i32(i32 %8546)
  %8548 = trunc i32 %8547 to i8
  %8549 = and i8 %8548, 1
  %8550 = xor i8 %8549, 1
  store i8 %8550, i8* %21, align 1
  %8551 = xor i64 %8542, %8541
  %8552 = lshr i64 %8551, 4
  %8553 = trunc i64 %8552 to i8
  %8554 = and i8 %8553, 1
  store i8 %8554, i8* %26, align 1
  %8555 = icmp eq i64 %8542, 0
  %8556 = zext i1 %8555 to i8
  store i8 %8556, i8* %29, align 1
  %8557 = lshr i64 %8542, 63
  %8558 = trunc i64 %8557 to i8
  store i8 %8558, i8* %32, align 1
  %8559 = lshr i64 %8541, 63
  %8560 = xor i64 %8557, %8559
  %8561 = add nuw nsw i64 %8560, %8557
  %8562 = icmp eq i64 %8561, 2
  %8563 = zext i1 %8562 to i8
  store i8 %8563, i8* %38, align 1
  %8564 = add i64 %8272, -36
  %8565 = add i64 %8327, 25
  store i64 %8565, i64* %3, align 8
  %8566 = inttoptr i64 %8564 to i32*
  %8567 = load i32, i32* %8566, align 4
  %8568 = sext i32 %8567 to i64
  %8569 = mul nsw i64 %8568, 240
  store i64 %8569, i64* %RDX.i2470, align 8
  %8570 = lshr i64 %8569, 63
  %8571 = add i64 %8569, %8542
  store i64 %8571, i64* %RCX.i2479, align 8
  %8572 = icmp ult i64 %8571, %8542
  %8573 = icmp ult i64 %8571, %8569
  %8574 = or i1 %8572, %8573
  %8575 = zext i1 %8574 to i8
  store i8 %8575, i8* %14, align 1
  %8576 = trunc i64 %8571 to i32
  %8577 = and i32 %8576, 255
  %8578 = tail call i32 @llvm.ctpop.i32(i32 %8577)
  %8579 = trunc i32 %8578 to i8
  %8580 = and i8 %8579, 1
  %8581 = xor i8 %8580, 1
  store i8 %8581, i8* %21, align 1
  %8582 = xor i64 %8569, %8542
  %8583 = xor i64 %8582, %8571
  %8584 = lshr i64 %8583, 4
  %8585 = trunc i64 %8584 to i8
  %8586 = and i8 %8585, 1
  store i8 %8586, i8* %26, align 1
  %8587 = icmp eq i64 %8571, 0
  %8588 = zext i1 %8587 to i8
  store i8 %8588, i8* %29, align 1
  %8589 = lshr i64 %8571, 63
  %8590 = trunc i64 %8589 to i8
  store i8 %8590, i8* %32, align 1
  %8591 = xor i64 %8589, %8557
  %8592 = xor i64 %8589, %8570
  %8593 = add nuw nsw i64 %8591, %8592
  %8594 = icmp eq i64 %8593, 2
  %8595 = zext i1 %8594 to i8
  store i8 %8595, i8* %38, align 1
  %8596 = load i64, i64* %RBP.i, align 8
  %8597 = add i64 %8596, -32
  %8598 = add i64 %8327, 39
  store i64 %8598, i64* %3, align 8
  %8599 = inttoptr i64 %8597 to i32*
  %8600 = load i32, i32* %8599, align 4
  %8601 = sext i32 %8600 to i64
  %8602 = shl nsw i64 %8601, 4
  store i64 %8602, i64* %RDX.i2470, align 8
  %8603 = add i64 %8602, %8571
  store i64 %8603, i64* %RCX.i2479, align 8
  %8604 = icmp ult i64 %8603, %8571
  %8605 = icmp ult i64 %8603, %8602
  %8606 = or i1 %8604, %8605
  %8607 = zext i1 %8606 to i8
  store i8 %8607, i8* %14, align 1
  %8608 = trunc i64 %8603 to i32
  %8609 = and i32 %8608, 255
  %8610 = tail call i32 @llvm.ctpop.i32(i32 %8609)
  %8611 = trunc i32 %8610 to i8
  %8612 = and i8 %8611, 1
  %8613 = xor i8 %8612, 1
  store i8 %8613, i8* %21, align 1
  %8614 = xor i64 %8602, %8571
  %8615 = xor i64 %8614, %8603
  %8616 = lshr i64 %8615, 4
  %8617 = trunc i64 %8616 to i8
  %8618 = and i8 %8617, 1
  store i8 %8618, i8* %26, align 1
  %8619 = icmp eq i64 %8603, 0
  %8620 = zext i1 %8619 to i8
  store i8 %8620, i8* %29, align 1
  %8621 = lshr i64 %8603, 63
  %8622 = trunc i64 %8621 to i8
  store i8 %8622, i8* %32, align 1
  %8623 = lshr i64 %8601, 59
  %8624 = and i64 %8623, 1
  %8625 = xor i64 %8621, %8589
  %8626 = xor i64 %8621, %8624
  %8627 = add nuw nsw i64 %8625, %8626
  %8628 = icmp eq i64 %8627, 2
  %8629 = zext i1 %8628 to i8
  store i8 %8629, i8* %38, align 1
  %8630 = add i64 %8596, -28
  %8631 = add i64 %8327, 50
  store i64 %8631, i64* %3, align 8
  %8632 = inttoptr i64 %8630 to i32*
  %8633 = load i32, i32* %8632, align 4
  %8634 = sext i32 %8633 to i64
  %8635 = mul nsw i64 %8634, 960
  store i64 %8635, i64* %RDX.i2470, align 8
  %8636 = lshr i64 %8635, 63
  %8637 = load i64, i64* %RAX.i2481, align 8
  %8638 = add i64 %8635, %8637
  store i64 %8638, i64* %RAX.i2481, align 8
  %8639 = icmp ult i64 %8638, %8637
  %8640 = icmp ult i64 %8638, %8635
  %8641 = or i1 %8639, %8640
  %8642 = zext i1 %8641 to i8
  store i8 %8642, i8* %14, align 1
  %8643 = trunc i64 %8638 to i32
  %8644 = and i32 %8643, 255
  %8645 = tail call i32 @llvm.ctpop.i32(i32 %8644)
  %8646 = trunc i32 %8645 to i8
  %8647 = and i8 %8646, 1
  %8648 = xor i8 %8647, 1
  store i8 %8648, i8* %21, align 1
  %8649 = xor i64 %8637, %8638
  %8650 = lshr i64 %8649, 4
  %8651 = trunc i64 %8650 to i8
  %8652 = and i8 %8651, 1
  store i8 %8652, i8* %26, align 1
  %8653 = icmp eq i64 %8638, 0
  %8654 = zext i1 %8653 to i8
  store i8 %8654, i8* %29, align 1
  %8655 = lshr i64 %8638, 63
  %8656 = trunc i64 %8655 to i8
  store i8 %8656, i8* %32, align 1
  %8657 = lshr i64 %8637, 63
  %8658 = xor i64 %8655, %8657
  %8659 = xor i64 %8655, %8636
  %8660 = add nuw nsw i64 %8658, %8659
  %8661 = icmp eq i64 %8660, 2
  %8662 = zext i1 %8661 to i8
  store i8 %8662, i8* %38, align 1
  %8663 = load i64, i64* %RBP.i, align 8
  %8664 = add i64 %8663, -36
  %8665 = add i64 %8327, 64
  store i64 %8665, i64* %3, align 8
  %8666 = inttoptr i64 %8664 to i32*
  %8667 = load i32, i32* %8666, align 4
  %8668 = sext i32 %8667 to i64
  %8669 = mul nsw i64 %8668, 120
  store i64 %8669, i64* %RDX.i2470, align 8
  %8670 = lshr i64 %8669, 63
  %8671 = add i64 %8669, %8638
  store i64 %8671, i64* %RAX.i2481, align 8
  %8672 = icmp ult i64 %8671, %8638
  %8673 = icmp ult i64 %8671, %8669
  %8674 = or i1 %8672, %8673
  %8675 = zext i1 %8674 to i8
  store i8 %8675, i8* %14, align 1
  %8676 = trunc i64 %8671 to i32
  %8677 = and i32 %8676, 255
  %8678 = tail call i32 @llvm.ctpop.i32(i32 %8677)
  %8679 = trunc i32 %8678 to i8
  %8680 = and i8 %8679, 1
  %8681 = xor i8 %8680, 1
  store i8 %8681, i8* %21, align 1
  %8682 = xor i64 %8669, %8638
  %8683 = xor i64 %8682, %8671
  %8684 = lshr i64 %8683, 4
  %8685 = trunc i64 %8684 to i8
  %8686 = and i8 %8685, 1
  store i8 %8686, i8* %26, align 1
  %8687 = icmp eq i64 %8671, 0
  %8688 = zext i1 %8687 to i8
  store i8 %8688, i8* %29, align 1
  %8689 = lshr i64 %8671, 63
  %8690 = trunc i64 %8689 to i8
  store i8 %8690, i8* %32, align 1
  %8691 = xor i64 %8689, %8655
  %8692 = xor i64 %8689, %8670
  %8693 = add nuw nsw i64 %8691, %8692
  %8694 = icmp eq i64 %8693, 2
  %8695 = zext i1 %8694 to i8
  store i8 %8695, i8* %38, align 1
  %8696 = add i64 %8663, -32
  %8697 = add i64 %8327, 75
  store i64 %8697, i64* %3, align 8
  %8698 = inttoptr i64 %8696 to i32*
  %8699 = load i32, i32* %8698, align 4
  %8700 = sext i32 %8699 to i64
  %8701 = shl nsw i64 %8700, 3
  store i64 %8701, i64* %RDX.i2470, align 8
  %8702 = add i64 %8701, %8671
  store i64 %8702, i64* %RAX.i2481, align 8
  %8703 = icmp ult i64 %8702, %8671
  %8704 = icmp ult i64 %8702, %8701
  %8705 = or i1 %8703, %8704
  %8706 = zext i1 %8705 to i8
  store i8 %8706, i8* %14, align 1
  %8707 = trunc i64 %8702 to i32
  %8708 = and i32 %8707, 255
  %8709 = tail call i32 @llvm.ctpop.i32(i32 %8708)
  %8710 = trunc i32 %8709 to i8
  %8711 = and i8 %8710, 1
  %8712 = xor i8 %8711, 1
  store i8 %8712, i8* %21, align 1
  %8713 = xor i64 %8701, %8671
  %8714 = xor i64 %8713, %8702
  %8715 = lshr i64 %8714, 4
  %8716 = trunc i64 %8715 to i8
  %8717 = and i8 %8716, 1
  store i8 %8717, i8* %26, align 1
  %8718 = icmp eq i64 %8702, 0
  %8719 = zext i1 %8718 to i8
  store i8 %8719, i8* %29, align 1
  %8720 = lshr i64 %8702, 63
  %8721 = trunc i64 %8720 to i8
  store i8 %8721, i8* %32, align 1
  %8722 = lshr i64 %8700, 60
  %8723 = and i64 %8722, 1
  %8724 = xor i64 %8720, %8689
  %8725 = xor i64 %8720, %8723
  %8726 = add nuw nsw i64 %8724, %8725
  %8727 = icmp eq i64 %8726, 2
  %8728 = zext i1 %8727 to i8
  store i8 %8728, i8* %38, align 1
  %8729 = load i64, i64* %RCX.i2479, align 8
  store i64 %8729, i64* %RDI.i2476, align 8
  store i64 %8702, i64* %RSI.i2473, align 8
  %8730 = add i64 %8327, -5028
  %8731 = add i64 %8327, 93
  %8732 = load i64, i64* %6, align 8
  %8733 = add i64 %8732, -8
  %8734 = inttoptr i64 %8733 to i64*
  store i64 %8731, i64* %8734, align 8
  store i64 %8733, i64* %6, align 8
  store i64 %8730, i64* %3, align 8
  %call2_41a37c = tail call %struct.Memory* @sub_418f80.XRate(%struct.State* nonnull %0, i64 %8730, %struct.Memory* %MEMORY.0)
  %8735 = load i64, i64* %RBP.i, align 8
  %8736 = add i64 %8735, -48
  %8737 = load i64, i64* %3, align 8
  %8738 = add i64 %8737, 5
  store i64 %8738, i64* %3, align 8
  %8739 = load double, double* %44, align 1
  %8740 = inttoptr i64 %8736 to double*
  %8741 = load double, double* %8740, align 8
  %8742 = fadd double %8739, %8741
  store double %8742, double* %44, align 1
  %8743 = add i64 %8737, 10
  store i64 %8743, i64* %3, align 8
  %8744 = inttoptr i64 %8736 to double*
  store double %8742, double* %8744, align 8
  %.pre233 = load i64, i64* %3, align 8
  br label %block_.L_41a38b

block_.L_41a38b:                                  ; preds = %block_.L_41a324, %block_41a2b8
  %8745 = phi i64 [ %.pre233, %block_.L_41a324 ], [ %8537, %block_41a2b8 ]
  %8746 = load i64, i64* %RBP.i, align 8
  %8747 = add i64 %8746, -32
  %8748 = add i64 %8745, 8
  store i64 %8748, i64* %3, align 8
  %8749 = inttoptr i64 %8747 to i32*
  %8750 = load i32, i32* %8749, align 4
  %8751 = add i32 %8750, 1
  %8752 = zext i32 %8751 to i64
  store i64 %8752, i64* %RAX.i2481, align 8
  %8753 = icmp eq i32 %8750, -1
  %8754 = icmp eq i32 %8751, 0
  %8755 = or i1 %8753, %8754
  %8756 = zext i1 %8755 to i8
  store i8 %8756, i8* %14, align 1
  %8757 = and i32 %8751, 255
  %8758 = tail call i32 @llvm.ctpop.i32(i32 %8757)
  %8759 = trunc i32 %8758 to i8
  %8760 = and i8 %8759, 1
  %8761 = xor i8 %8760, 1
  store i8 %8761, i8* %21, align 1
  %8762 = xor i32 %8751, %8750
  %8763 = lshr i32 %8762, 4
  %8764 = trunc i32 %8763 to i8
  %8765 = and i8 %8764, 1
  store i8 %8765, i8* %26, align 1
  %8766 = zext i1 %8754 to i8
  store i8 %8766, i8* %29, align 1
  %8767 = lshr i32 %8751, 31
  %8768 = trunc i32 %8767 to i8
  store i8 %8768, i8* %32, align 1
  %8769 = lshr i32 %8750, 31
  %8770 = xor i32 %8767, %8769
  %8771 = add nuw nsw i32 %8770, %8767
  %8772 = icmp eq i32 %8771, 2
  %8773 = zext i1 %8772 to i8
  store i8 %8773, i8* %38, align 1
  %8774 = add i64 %8745, 14
  store i64 %8774, i64* %3, align 8
  store i32 %8751, i32* %8749, align 4
  %8775 = load i64, i64* %3, align 8
  %8776 = add i64 %8775, -253
  store i64 %8776, i64* %3, align 8
  br label %block_.L_41a29c

block_.L_41a39e:                                  ; preds = %block_.L_41a29c
  %8777 = add i64 %8272, -36
  %8778 = add i64 %8300, 8
  store i64 %8778, i64* %3, align 8
  %8779 = inttoptr i64 %8777 to i32*
  %8780 = load i32, i32* %8779, align 4
  %8781 = add i32 %8780, 1
  %8782 = zext i32 %8781 to i64
  store i64 %8782, i64* %RAX.i2481, align 8
  %8783 = icmp eq i32 %8780, -1
  %8784 = icmp eq i32 %8781, 0
  %8785 = or i1 %8783, %8784
  %8786 = zext i1 %8785 to i8
  store i8 %8786, i8* %14, align 1
  %8787 = and i32 %8781, 255
  %8788 = tail call i32 @llvm.ctpop.i32(i32 %8787)
  %8789 = trunc i32 %8788 to i8
  %8790 = and i8 %8789, 1
  %8791 = xor i8 %8790, 1
  store i8 %8791, i8* %21, align 1
  %8792 = xor i32 %8781, %8780
  %8793 = lshr i32 %8792, 4
  %8794 = trunc i32 %8793 to i8
  %8795 = and i8 %8794, 1
  store i8 %8795, i8* %26, align 1
  %8796 = zext i1 %8784 to i8
  store i8 %8796, i8* %29, align 1
  %8797 = lshr i32 %8781, 31
  %8798 = trunc i32 %8797 to i8
  store i8 %8798, i8* %32, align 1
  %8799 = lshr i32 %8780, 31
  %8800 = xor i32 %8797, %8799
  %8801 = add nuw nsw i32 %8800, %8797
  %8802 = icmp eq i32 %8801, 2
  %8803 = zext i1 %8802 to i8
  store i8 %8803, i8* %38, align 1
  %8804 = add i64 %8300, 14
  store i64 %8804, i64* %3, align 8
  store i32 %8781, i32* %8779, align 4
  %8805 = load i64, i64* %3, align 8
  %8806 = add i64 %8805, -289
  store i64 %8806, i64* %3, align 8
  br label %block_.L_41a28b

block_.L_41a3b1:                                  ; preds = %block_.L_41a28b
  %8807 = add i64 %8239, -48
  %8808 = add i64 %8267, 5
  store i64 %8808, i64* %3, align 8
  %8809 = inttoptr i64 %8807 to i64*
  %8810 = load i64, i64* %8809, align 8
  store i64 %8810, i64* %45, align 1
  store double 0.000000e+00, double* %47, align 1
  %8811 = add i64 %8239, -56
  %8812 = add i64 %8267, 10
  store i64 %8812, i64* %3, align 8
  %8813 = inttoptr i64 %8811 to i64*
  %8814 = load i64, i64* %8813, align 8
  store i64 %8814, i64* %113, align 1
  store double 0.000000e+00, double* %115, align 1
  %8815 = add i64 %8267, 14
  store i64 %8815, i64* %3, align 8
  %.cast = bitcast i64 %8814 to double
  %8816 = bitcast i64 %8810 to double
  %8817 = fcmp uno double %.cast, %8816
  br i1 %8817, label %8818, label %8828

; <label>:8818:                                   ; preds = %block_.L_41a3b1
  %8819 = fadd double %.cast, %8816
  %8820 = bitcast double %8819 to i64
  %8821 = and i64 %8820, 9221120237041090560
  %8822 = icmp eq i64 %8821, 9218868437227405312
  %8823 = and i64 %8820, 2251799813685247
  %8824 = icmp ne i64 %8823, 0
  %8825 = and i1 %8822, %8824
  br i1 %8825, label %8826, label %8834

; <label>:8826:                                   ; preds = %8818
  %8827 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %8815, %struct.Memory* %MEMORY.0)
  %.pre228 = load i64, i64* %3, align 8
  %.pre229 = load i8, i8* %14, align 1
  %.pre230 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:8828:                                   ; preds = %block_.L_41a3b1
  %8829 = fcmp ogt double %.cast, %8816
  br i1 %8829, label %8834, label %8830

; <label>:8830:                                   ; preds = %8828
  %8831 = fcmp olt double %.cast, %8816
  br i1 %8831, label %8834, label %8832

; <label>:8832:                                   ; preds = %8830
  %8833 = fcmp oeq double %.cast, %8816
  br i1 %8833, label %8834, label %8838

; <label>:8834:                                   ; preds = %8832, %8830, %8828, %8818
  %8835 = phi i8 [ 0, %8828 ], [ 0, %8830 ], [ 1, %8832 ], [ 1, %8818 ]
  %8836 = phi i8 [ 0, %8828 ], [ 0, %8830 ], [ 0, %8832 ], [ 1, %8818 ]
  %8837 = phi i8 [ 0, %8828 ], [ 1, %8830 ], [ 0, %8832 ], [ 1, %8818 ]
  store i8 %8835, i8* %29, align 1
  store i8 %8836, i8* %21, align 1
  store i8 %8837, i8* %14, align 1
  br label %8838

; <label>:8838:                                   ; preds = %8834, %8832
  %8839 = phi i8 [ %8835, %8834 ], [ %8257, %8832 ]
  %8840 = phi i8 [ %8837, %8834 ], [ %8246, %8832 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %8838, %8826
  %8841 = phi i8 [ %.pre230, %8826 ], [ %8839, %8838 ]
  %8842 = phi i8 [ %.pre229, %8826 ], [ %8840, %8838 ]
  %8843 = phi i64 [ %.pre228, %8826 ], [ %8815, %8838 ]
  %8844 = phi %struct.Memory* [ %8827, %8826 ], [ %MEMORY.0, %8838 ]
  %8845 = or i8 %8841, %8842
  %8846 = icmp ne i8 %8845, 0
  %.v290 = select i1 %8846, i64 25, i64 6
  %8847 = add i64 %8843, %.v290
  store i64 %8847, i64* %3, align 8
  br i1 %8846, label %block_.L_41a3d8, label %block_41a3c5

block_41a3c5:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %8848 = load i64, i64* %RBP.i, align 8
  %8849 = add i64 %8848, -48
  %8850 = add i64 %8847, 5
  store i64 %8850, i64* %3, align 8
  %8851 = inttoptr i64 %8849 to i64*
  %8852 = load i64, i64* %8851, align 8
  store i64 %8852, i64* %45, align 1
  store double 0.000000e+00, double* %47, align 1
  %8853 = add i64 %8848, -56
  %8854 = add i64 %8847, 10
  store i64 %8854, i64* %3, align 8
  %8855 = inttoptr i64 %8853 to i64*
  store i64 %8852, i64* %8855, align 8
  %8856 = load i64, i64* %RBP.i, align 8
  %8857 = add i64 %8856, -28
  %8858 = load i64, i64* %3, align 8
  %8859 = add i64 %8858, 3
  store i64 %8859, i64* %3, align 8
  %8860 = inttoptr i64 %8857 to i32*
  %8861 = load i32, i32* %8860, align 4
  %8862 = zext i32 %8861 to i64
  store i64 %8862, i64* %RAX.i2481, align 8
  %8863 = add i64 %8856, -8
  %8864 = add i64 %8858, 7
  store i64 %8864, i64* %3, align 8
  %8865 = inttoptr i64 %8863 to i64*
  %8866 = load i64, i64* %8865, align 8
  store i64 %8866, i64* %RCX.i2479, align 8
  %8867 = add i64 %8858, 9
  store i64 %8867, i64* %3, align 8
  %8868 = inttoptr i64 %8866 to i32*
  store i32 %8861, i32* %8868, align 4
  %.pre231 = load i64, i64* %3, align 8
  br label %block_.L_41a3d8

block_.L_41a3d8:                                  ; preds = %block_41a3c5, %routine_ucomisd__xmm0___xmm1.exit
  %8869 = phi i64 [ %.pre231, %block_41a3c5 ], [ %8847, %routine_ucomisd__xmm0___xmm1.exit ]
  %8870 = load i64, i64* %RBP.i, align 8
  %8871 = add i64 %8870, -28
  %8872 = add i64 %8869, 8
  store i64 %8872, i64* %3, align 8
  %8873 = inttoptr i64 %8871 to i32*
  %8874 = load i32, i32* %8873, align 4
  %8875 = add i32 %8874, 1
  %8876 = zext i32 %8875 to i64
  store i64 %8876, i64* %RAX.i2481, align 8
  %8877 = icmp eq i32 %8874, -1
  %8878 = icmp eq i32 %8875, 0
  %8879 = or i1 %8877, %8878
  %8880 = zext i1 %8879 to i8
  store i8 %8880, i8* %14, align 1
  %8881 = and i32 %8875, 255
  %8882 = tail call i32 @llvm.ctpop.i32(i32 %8881)
  %8883 = trunc i32 %8882 to i8
  %8884 = and i8 %8883, 1
  %8885 = xor i8 %8884, 1
  store i8 %8885, i8* %21, align 1
  %8886 = xor i32 %8875, %8874
  %8887 = lshr i32 %8886, 4
  %8888 = trunc i32 %8887 to i8
  %8889 = and i8 %8888, 1
  store i8 %8889, i8* %26, align 1
  %8890 = zext i1 %8878 to i8
  store i8 %8890, i8* %29, align 1
  %8891 = lshr i32 %8875, 31
  %8892 = trunc i32 %8891 to i8
  store i8 %8892, i8* %32, align 1
  %8893 = lshr i32 %8874, 31
  %8894 = xor i32 %8891, %8893
  %8895 = add nuw nsw i32 %8894, %8891
  %8896 = icmp eq i32 %8895, 2
  %8897 = zext i1 %8896 to i8
  store i8 %8897, i8* %38, align 1
  %8898 = add i64 %8869, 14
  store i64 %8898, i64* %3, align 8
  store i32 %8875, i32* %8873, align 4
  %8899 = load i64, i64* %3, align 8
  %8900 = add i64 %8899, -4642
  store i64 %8900, i64* %3, align 8
  br label %block_.L_4191c4

block_.L_41a3eb:                                  ; preds = %block_.L_4191c4
  %8901 = load i64, i64* %6, align 8
  %8902 = add i64 %8901, 64
  store i64 %8902, i64* %6, align 8
  %8903 = icmp ugt i64 %8901, -65
  %8904 = zext i1 %8903 to i8
  store i8 %8904, i8* %14, align 1
  %8905 = trunc i64 %8902 to i32
  %8906 = and i32 %8905, 255
  %8907 = tail call i32 @llvm.ctpop.i32(i32 %8906)
  %8908 = trunc i32 %8907 to i8
  %8909 = and i8 %8908, 1
  %8910 = xor i8 %8909, 1
  store i8 %8910, i8* %21, align 1
  %8911 = xor i64 %8902, %8901
  %8912 = lshr i64 %8911, 4
  %8913 = trunc i64 %8912 to i8
  %8914 = and i8 %8913, 1
  store i8 %8914, i8* %26, align 1
  %8915 = icmp eq i64 %8902, 0
  %8916 = zext i1 %8915 to i8
  store i8 %8916, i8* %29, align 1
  %8917 = lshr i64 %8902, 63
  %8918 = trunc i64 %8917 to i8
  store i8 %8918, i8* %32, align 1
  %8919 = lshr i64 %8901, 63
  %8920 = xor i64 %8917, %8919
  %8921 = add nuw nsw i64 %8920, %8917
  %8922 = icmp eq i64 %8921, 2
  %8923 = zext i1 %8922 to i8
  store i8 %8923, i8* %38, align 1
  %8924 = add i64 %154, 5
  store i64 %8924, i64* %3, align 8
  %8925 = add i64 %8901, 72
  %8926 = inttoptr i64 %8902 to i64*
  %8927 = load i64, i64* %8926, align 8
  store i64 %8927, i64* %RBP.i, align 8
  store i64 %8925, i64* %6, align 8
  %8928 = add i64 %154, 6
  store i64 %8928, i64* %3, align 8
  %8929 = inttoptr i64 %8925 to i64*
  %8930 = load i64, i64* %8929, align 8
  store i64 %8930, i64* %3, align 8
  %8931 = add i64 %8901, 80
  store i64 %8931, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x986e0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x986e0__rip__type* @G_0x986e0__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a3eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4192f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xb__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4192e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3290___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3290_type* @G__0x4b3290 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 176
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 264
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 88
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.XRate(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4192d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b33a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b33a0_type* @G__0x4b33a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4192d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4191f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4192e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4191df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419411(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419397(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b36c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b36c0_type* @G__0x4b36c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x210___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 528
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -529
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 144
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 72
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4193fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3750___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3750_type* @G__0x4b3750 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419403(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41930f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419416(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4192fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41953e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4194c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3900_type* @G__0x4b3900 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x330___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 816
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -817
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 160
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41952b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b39a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b39a0_type* @G__0x4b39a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41943c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41942b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419672(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41965f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4195eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3b80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3b80_type* @G__0x4b3b80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x470___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1136
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1137
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 96
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41964c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3be0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3be0_type* @G__0x4b3be0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419651(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419569(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419664(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419558(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4196e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3d00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d00_type* @G__0x4b3d00 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x530___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1329
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419730(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3d20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d20_type* @G__0x4b3d20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419735(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419814(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4197b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3d80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d80_type* @G__0x4b3d80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x570___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1392
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1393
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419801(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3da0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3da0_type* @G__0x4b3da0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419806(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41974a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4198e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e00_type* @G__0x4b3e00 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1456
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1457
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4198d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e20_type* @G__0x4b3e20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4198d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41981b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4199a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419951(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e70_type* @G__0x4b3e70 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419995(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e80_type* @G__0x4b3e80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41999a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4198ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419a73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419a18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3eb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3eb0_type* @G__0x4b3eb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -33
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3ed0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3ed0_type* @G__0x4b3ed0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4199af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419b7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419b0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3f30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3f30_type* @G__0x4b3f30 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -97
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419b68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3f90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3f90_type* @G__0x4b3f90 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419b6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419a8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419a7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419caf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419c9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b40b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b40b0_type* @G__0x4b40b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x120___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 288
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -289
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 56
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 55
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419c89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b41b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b41b0_type* @G__0x4b41b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419c8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ba6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419b95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419ddc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -15
  %10 = icmp ult i32 %8, 15
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419dc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419d4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b44b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b44b0_type* @G__0x4b44b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 928
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -929
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 240
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 960
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 120
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419db6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b4870___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b4870_type* @G__0x4b4870 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419dbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419dce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419cb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419f09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_419ef6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419e7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b53b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b53b0_type* @G__0x4b53b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -3329
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ee3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b5770___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b5770_type* @G__0x4b5770 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419df4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419efb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419de3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419fa6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b62b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b62b0_type* @G__0x4b62b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 5728
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5729
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 320
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a00a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b63f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b63f0_type* @G__0x4b63f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a00f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a144(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a0cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b67b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b67b0_type* @G__0x4b67b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6528
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -6529
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b68f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b68f0_type* @G__0x4b68f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a136(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a048(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a149(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a284(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a1f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b6cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b6cb0_type* @G__0x4b6cb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -7329
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a25e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b7070___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7070_type* @G__0x4b7070 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a263(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a16f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a276(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a15e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a3b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a39e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a324(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b7bb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7bb0_type* @G__0x4b7bb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 9728
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -9729
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a38b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b7f70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7f70_type* @G__0x4b7f70 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a29c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a3a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a28b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41a3d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a3dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4191c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
