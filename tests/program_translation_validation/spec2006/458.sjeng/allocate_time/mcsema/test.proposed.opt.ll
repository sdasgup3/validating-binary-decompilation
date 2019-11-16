; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62ea00_type = type <{ [4 x i8] }>
%G_0x6ad3__rip__type = type <{ [8 x i8] }>
%G_0x6afd__rip__type = type <{ [8 x i8] }>
%G_0x6b02__rip__type = type <{ [8 x i8] }>
%G_0x6b4b__rip__type = type <{ [8 x i8] }>
%G_0x6b95__rip__type = type <{ [8 x i8] }>
%G_0x6bb3__rip__type = type <{ [8 x i8] }>
%G_0x6bca__rip__type = type <{ [8 x i8] }>
%G_0x6bd2__rip__type = type <{ [8 x i8] }>
%G_0x6be5__rip__type = type <{ [8 x i8] }>
%G_0x6c22__rip__type = type <{ [8 x i8] }>
%G_0x6c6f__rip__type = type <{ [8 x i8] }>
%G_0x6c80__rip__type = type <{ [8 x i8] }>
%G_0x6cb9__rip__type = type <{ [8 x i8] }>
%G_0x6cd7__rip__type = type <{ [8 x i8] }>
%G_0x6d26__rip__type = type <{ [8 x i8] }>
%G_0x6d41__rip__type = type <{ [8 x i8] }>
%G_0x6d70__rip__type = type <{ [8 x i8] }>
%G_0x6dc0__rip__type = type <{ [8 x i8] }>
%G_0x6ddf__rip__type = type <{ [8 x i8] }>
%G_0x6e19__rip__type = type <{ [8 x i8] }>
%G_0x6e48__rip__type = type <{ [8 x i8] }>
%G_0x6e72__rip__type = type <{ [8 x i8] }>
%G_0x6e89__rip__type = type <{ [8 x i8] }>
%G_0x6ecd__rip__type = type <{ [8 x i8] }>
%G_0x6f04__rip__type = type <{ [8 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661d8_type = type <{ [4 x i8] }>
%G_0x86bd64_type = type <{ [4 x i8] }>
%G_0x86bd70_type = type <{ [4 x i8] }>
%G_0x86bd88_type = type <{ [4 x i8] }>
%G_0x8a05b4_type = type <{ [4 x i8] }>
%G_0x8a0a78_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
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
@G_0x62ea00 = local_unnamed_addr global %G_0x62ea00_type zeroinitializer
@G_0x6ad3__rip_ = global %G_0x6ad3__rip__type zeroinitializer
@G_0x6afd__rip_ = global %G_0x6afd__rip__type zeroinitializer
@G_0x6b02__rip_ = global %G_0x6b02__rip__type zeroinitializer
@G_0x6b4b__rip_ = global %G_0x6b4b__rip__type zeroinitializer
@G_0x6b95__rip_ = global %G_0x6b95__rip__type zeroinitializer
@G_0x6bb3__rip_ = global %G_0x6bb3__rip__type zeroinitializer
@G_0x6bca__rip_ = global %G_0x6bca__rip__type zeroinitializer
@G_0x6bd2__rip_ = global %G_0x6bd2__rip__type zeroinitializer
@G_0x6be5__rip_ = global %G_0x6be5__rip__type zeroinitializer
@G_0x6c22__rip_ = global %G_0x6c22__rip__type zeroinitializer
@G_0x6c6f__rip_ = global %G_0x6c6f__rip__type zeroinitializer
@G_0x6c80__rip_ = global %G_0x6c80__rip__type zeroinitializer
@G_0x6cb9__rip_ = global %G_0x6cb9__rip__type zeroinitializer
@G_0x6cd7__rip_ = global %G_0x6cd7__rip__type zeroinitializer
@G_0x6d26__rip_ = global %G_0x6d26__rip__type zeroinitializer
@G_0x6d41__rip_ = global %G_0x6d41__rip__type zeroinitializer
@G_0x6d70__rip_ = global %G_0x6d70__rip__type zeroinitializer
@G_0x6dc0__rip_ = global %G_0x6dc0__rip__type zeroinitializer
@G_0x6ddf__rip_ = global %G_0x6ddf__rip__type zeroinitializer
@G_0x6e19__rip_ = global %G_0x6e19__rip__type zeroinitializer
@G_0x6e48__rip_ = global %G_0x6e48__rip__type zeroinitializer
@G_0x6e72__rip_ = global %G_0x6e72__rip__type zeroinitializer
@G_0x6e89__rip_ = global %G_0x6e89__rip__type zeroinitializer
@G_0x6ecd__rip_ = global %G_0x6ecd__rip__type zeroinitializer
@G_0x6f04__rip_ = global %G_0x6f04__rip__type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x8661d8 = local_unnamed_addr global %G_0x8661d8_type zeroinitializer
@G_0x86bd64 = local_unnamed_addr global %G_0x86bd64_type zeroinitializer
@G_0x86bd70 = local_unnamed_addr global %G_0x86bd70_type zeroinitializer
@G_0x86bd88 = local_unnamed_addr global %G_0x86bd88_type zeroinitializer
@G_0x8a05b4 = local_unnamed_addr global %G_0x8a05b4_type zeroinitializer
@G_0x8a0a78 = local_unnamed_addr global %G_0x8a0a78_type zeroinitializer
@G_0x8a2a04 = local_unnamed_addr global %G_0x8a2a04_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: alwaysinline
define %struct.Memory* @allocate_time(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %12 = add i64 %10, add (i64 ptrtoint (%G_0x6f04__rip__type* @G_0x6f04__rip_ to i64), i64 3)
  %13 = add i64 %10, 11
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast [32 x %union.VectorReg]* %11 to double*
  %17 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %15, i64* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %19 = bitcast i64* %18 to double*
  store double 0.000000e+00, double* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %21 = bitcast %union.VectorReg* %20 to i8*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = getelementptr inbounds i8, i8* %21, i64 4
  %24 = bitcast i8* %23 to i32*
  %25 = bitcast i64* %22 to i32*
  %26 = getelementptr inbounds i8, i8* %21, i64 12
  %27 = bitcast i8* %26 to i32*
  %28 = bitcast %union.VectorReg* %20 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %28, align 1
  %29 = add i64 %7, -16
  %30 = add i64 %10, 19
  store i64 %30, i64* %3, align 8
  %31 = bitcast %union.VectorReg* %20 to double*
  %32 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %20, i64 0, i32 0, i32 0, i32 0, i64 0
  %33 = load i64, i64* %32, align 1
  %34 = inttoptr i64 %29 to i64*
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -16
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 5
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %17, align 1
  %40 = inttoptr i64 %36 to i64*
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*), align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %43, align 1
  %44 = and i32 %42, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44)
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1
  %.v = select i1 %51, i64 14, i64 892
  %58 = add i64 %41, %.v
  store i64 %58, i64* %3, align 8
  br i1 %51, label %block_4214e7, label %block_.L_421855

block_4214e7:                                     ; preds = %entry
  %59 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*), align 8
  %60 = add i32 %59, -6
  %61 = icmp ult i32 %59, 6
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %43, align 1
  %63 = and i32 %60, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %49, align 1
  %68 = xor i32 %60, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %50, align 1
  %72 = icmp eq i32 %60, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %53, align 1
  %74 = lshr i32 %60, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %56, align 1
  %76 = lshr i32 %59, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %57, align 1
  %81 = icmp ne i8 %75, 0
  %82 = xor i1 %81, %79
  %.v73 = select i1 %82, i64 14, i64 28
  %83 = add i64 %58, %.v73
  store i64 %83, i64* %3, align 8
  br i1 %82, label %block_4214f5, label %block_.L_421503

block_4214f5:                                     ; preds = %block_4214e7
  %84 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  store i8 0, i8* %43, align 1
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %90 = icmp eq i32 %84, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %53, align 1
  %92 = lshr i32 %84, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v92 = select i1 %90, i64 82, i64 14
  %94 = add i64 %83, %.v92
  store i64 %94, i64* %3, align 8
  br i1 %90, label %block_4214f5.block_.L_421547_crit_edge, label %block_.L_421503

block_4214f5.block_.L_421547_crit_edge:           ; preds = %block_4214f5
  %.pre63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %.pre67 = bitcast %union.VectorReg* %.pre65 to double*
  br label %block_.L_421547

block_.L_421503:                                  ; preds = %block_4214e7, %block_4214f5
  %95 = phi i64 [ %83, %block_4214e7 ], [ %94, %block_4214f5 ]
  %96 = add i64 %95, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
  %97 = add i64 %95, 8
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %100 = add i64 %95, add (i64 ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64), i64 8)
  %101 = add i64 %95, 16
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %32, align 1
  %104 = bitcast i64* %22 to double*
  store double 0.000000e+00, double* %104, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %106 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %107 = sitofp i32 %106 to double
  %108 = bitcast %union.VectorReg* %105 to double*
  store double %107, double* %108, align 1
  %RAX.i394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %109 = sext i32 %59 to i64
  %110 = mul nsw i64 %109, 6000
  %RCX.i392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %111 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*), align 8
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, 100
  %114 = and i64 %113, 4294967292
  store i64 %114, i64* %RCX.i392, align 8
  %115 = trunc i64 %113 to i32
  %116 = trunc i64 %110 to i32
  %117 = add i32 %115, %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i394, align 8
  %119 = icmp ult i32 %117, %116
  %120 = icmp ult i32 %117, %115
  %121 = or i1 %119, %120
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %43, align 1
  %123 = and i32 %117, 252
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %49, align 1
  %128 = xor i64 %113, %110
  %129 = trunc i64 %128 to i32
  %130 = xor i32 %129, %117
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %50, align 1
  %134 = icmp eq i32 %117, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %53, align 1
  %136 = lshr i32 %117, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %56, align 1
  %138 = lshr i32 %116, 31
  %139 = lshr i32 %115, 31
  %140 = xor i32 %136, %138
  %141 = xor i32 %136, %139
  %142 = add nuw nsw i32 %140, %141
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %57, align 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %146 = sitofp i32 %117 to double
  %147 = bitcast %union.VectorReg* %145 to double*
  %148 = load double, double* %31, align 1
  %149 = fmul double %146, %148
  %150 = load double, double* %16, align 1
  %151 = fdiv double %149, %150
  store double %151, double* %147, align 1
  %152 = add i64 %95, 62
  store i64 %152, i64* %3, align 8
  %153 = load double, double* %108, align 1
  %154 = fcmp uno double %151, %153
  br i1 %154, label %155, label %165

; <label>:155:                                    ; preds = %block_.L_421503
  %156 = fadd double %151, %153
  %157 = bitcast double %156 to i64
  %158 = and i64 %157, 9221120237041090560
  %159 = icmp eq i64 %158, 9218868437227405312
  %160 = and i64 %157, 2251799813685247
  %161 = icmp ne i64 %160, 0
  %162 = and i1 %159, %161
  br i1 %162, label %163, label %171

; <label>:163:                                    ; preds = %155
  %164 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %152, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  %.pre34 = load i8, i8* %43, align 1
  %.pre35 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm3.exit

; <label>:165:                                    ; preds = %block_.L_421503
  %166 = fcmp ogt double %151, %153
  br i1 %166, label %171, label %167

; <label>:167:                                    ; preds = %165
  %168 = fcmp olt double %151, %153
  br i1 %168, label %171, label %169

; <label>:169:                                    ; preds = %167
  %170 = fcmp oeq double %151, %153
  br i1 %170, label %171, label %175

; <label>:171:                                    ; preds = %169, %167, %165, %155
  %172 = phi i8 [ 0, %165 ], [ 0, %167 ], [ 1, %169 ], [ 1, %155 ]
  %173 = phi i8 [ 0, %165 ], [ 0, %167 ], [ 0, %169 ], [ 1, %155 ]
  %174 = phi i8 [ 0, %165 ], [ 1, %167 ], [ 0, %169 ], [ 1, %155 ]
  store i8 %172, i8* %53, align 1
  store i8 %173, i8* %49, align 1
  store i8 %174, i8* %43, align 1
  br label %175

; <label>:175:                                    ; preds = %171, %169
  %176 = phi i8 [ %172, %171 ], [ %135, %169 ]
  %177 = phi i8 [ %174, %171 ], [ %122, %169 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm3.exit

routine_ucomisd__xmm2___xmm3.exit:                ; preds = %175, %163
  %178 = phi i8 [ %.pre35, %163 ], [ %176, %175 ]
  %179 = phi i8 [ %.pre34, %163 ], [ %177, %175 ]
  %180 = phi i64 [ %.pre, %163 ], [ %152, %175 ]
  %181 = phi %struct.Memory* [ %164, %163 ], [ %2, %175 ]
  %182 = or i8 %178, %179
  %183 = icmp ne i8 %182, 0
  %.v74 = select i1 %183, i64 259, i64 6
  %184 = add i64 %180, %.v74
  store i64 %184, i64* %3, align 8
  br i1 %183, label %block_.L_421644, label %block_.L_421547

block_.L_421547:                                  ; preds = %block_4214f5.block_.L_421547_crit_edge, %routine_ucomisd__xmm2___xmm3.exit
  %.pre-phi68 = phi double* [ %.pre67, %block_4214f5.block_.L_421547_crit_edge ], [ %108, %routine_ucomisd__xmm2___xmm3.exit ]
  %RAX.i371.pre-phi = phi i64* [ %.pre63, %block_4214f5.block_.L_421547_crit_edge ], [ %RAX.i394, %routine_ucomisd__xmm2___xmm3.exit ]
  %185 = phi i64 [ %94, %block_4214f5.block_.L_421547_crit_edge ], [ %184, %routine_ucomisd__xmm2___xmm3.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4214f5.block_.L_421547_crit_edge ], [ %181, %routine_ucomisd__xmm2___xmm3.exit ]
  %186 = add i64 %185, ptrtoint (%G_0x6e89__rip__type* @G_0x6e89__rip_ to i64)
  %187 = add i64 %185, 8
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %190 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %191 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %192 = sub i32 %190, %191
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i371.pre-phi, align 8
  %194 = icmp ult i32 %190, %191
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %43, align 1
  %196 = and i32 %192, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %49, align 1
  %201 = xor i32 %191, %190
  %202 = xor i32 %201, %192
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %50, align 1
  %206 = icmp eq i32 %192, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %53, align 1
  %208 = lshr i32 %192, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %56, align 1
  %210 = lshr i32 %190, 31
  %211 = lshr i32 %191, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %208, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %57, align 1
  %217 = sitofp i32 %192 to double
  store double %217, double* %31, align 1
  %218 = sitofp i32 %190 to double
  %219 = bitcast i64 %189 to double
  %220 = fdiv double %218, %219
  store double %220, double* %.pre-phi68, align 1
  %221 = add i64 %185, 43
  store i64 %221, i64* %3, align 8
  %222 = fcmp uno double %217, %220
  br i1 %222, label %223, label %233

; <label>:223:                                    ; preds = %block_.L_421547
  %224 = fadd double %220, %217
  %225 = bitcast double %224 to i64
  %226 = and i64 %225, 9221120237041090560
  %227 = icmp eq i64 %226, 9218868437227405312
  %228 = and i64 %225, 2251799813685247
  %229 = icmp ne i64 %228, 0
  %230 = and i1 %227, %229
  br i1 %230, label %231, label %239

; <label>:231:                                    ; preds = %223
  %232 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %221, %struct.Memory* %MEMORY.1)
  %.pre36 = load i64, i64* %3, align 8
  %.pre37 = load i8, i8* %43, align 1
  %.pre38 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit358

; <label>:233:                                    ; preds = %block_.L_421547
  %234 = fcmp ogt double %217, %220
  br i1 %234, label %239, label %235

; <label>:235:                                    ; preds = %233
  %236 = fcmp olt double %217, %220
  br i1 %236, label %239, label %237

; <label>:237:                                    ; preds = %235
  %238 = fcmp oeq double %217, %220
  br i1 %238, label %239, label %243

; <label>:239:                                    ; preds = %237, %235, %233, %223
  %240 = phi i8 [ 0, %233 ], [ 0, %235 ], [ 1, %237 ], [ 1, %223 ]
  %241 = phi i8 [ 0, %233 ], [ 0, %235 ], [ 0, %237 ], [ 1, %223 ]
  %242 = phi i8 [ 0, %233 ], [ 1, %235 ], [ 0, %237 ], [ 1, %223 ]
  store i8 %240, i8* %53, align 1
  store i8 %241, i8* %49, align 1
  store i8 %242, i8* %43, align 1
  br label %243

; <label>:243:                                    ; preds = %239, %237
  %244 = phi i8 [ %240, %239 ], [ %207, %237 ]
  %245 = phi i8 [ %242, %239 ], [ %195, %237 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit358

routine_ucomisd__xmm2___xmm1.exit358:             ; preds = %243, %231
  %246 = phi i8 [ %.pre38, %231 ], [ %244, %243 ]
  %247 = phi i8 [ %.pre37, %231 ], [ %245, %243 ]
  %248 = phi i64 [ %.pre36, %231 ], [ %221, %243 ]
  %249 = phi %struct.Memory* [ %232, %231 ], [ %MEMORY.1, %243 ]
  %250 = or i8 %246, %247
  %251 = icmp ne i8 %250, 0
  %.v75 = select i1 %251, i64 38, i64 6
  %252 = add i64 %248, %.v75
  store i64 %252, i64* %3, align 8
  br i1 %251, label %block_.L_421598, label %block_421578

block_421578:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit358
  %253 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %43, align 1
  %254 = and i32 %253, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %259 = icmp eq i32 %253, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %53, align 1
  %261 = lshr i32 %253, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v76 = select i1 %259, i64 32, i64 14
  %263 = add i64 %252, %.v76
  store i64 %263, i64* %3, align 8
  br i1 %259, label %block_.L_421598, label %block_421586

block_421586:                                     ; preds = %block_421578
  %264 = add i64 %263, ptrtoint (%G_0x6e72__rip__type* @G_0x6e72__rip_ to i64)
  %265 = add i64 %263, 8
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -16
  %270 = add i64 %263, 13
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %271, align 8
  %272 = load i64, i64* %3, align 8
  %273 = add i64 %272, 172
  br label %block_.L_42163f

block_.L_421598:                                  ; preds = %block_421578, %routine_ucomisd__xmm2___xmm1.exit358
  %274 = phi i64 [ %263, %block_421578 ], [ %252, %routine_ucomisd__xmm2___xmm1.exit358 ]
  %275 = add i64 %274, ptrtoint (%G_0x6e48__rip__type* @G_0x6e48__rip_ to i64)
  %276 = add i64 %274, 8
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %279 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %280 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %281 = sub i32 %279, %280
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i371.pre-phi, align 8
  %283 = icmp ult i32 %279, %280
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %43, align 1
  %285 = and i32 %281, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %49, align 1
  %290 = xor i32 %280, %279
  %291 = xor i32 %290, %281
  %292 = lshr i32 %291, 4
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %50, align 1
  %295 = icmp eq i32 %281, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %53, align 1
  %297 = lshr i32 %281, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %56, align 1
  %299 = lshr i32 %279, 31
  %300 = lshr i32 %280, 31
  %301 = xor i32 %300, %299
  %302 = xor i32 %297, %299
  %303 = add nuw nsw i32 %302, %301
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %57, align 1
  %306 = sitofp i32 %281 to double
  store double %306, double* %31, align 1
  %307 = sitofp i32 %279 to double
  %308 = bitcast i64 %278 to double
  %309 = fdiv double %307, %308
  store double %309, double* %.pre-phi68, align 1
  %310 = add i64 %274, 43
  store i64 %310, i64* %3, align 8
  %311 = fcmp uno double %306, %309
  br i1 %311, label %312, label %322

; <label>:312:                                    ; preds = %block_.L_421598
  %313 = fadd double %309, %306
  %314 = bitcast double %313 to i64
  %315 = and i64 %314, 9221120237041090560
  %316 = icmp eq i64 %315, 9218868437227405312
  %317 = and i64 %314, 2251799813685247
  %318 = icmp ne i64 %317, 0
  %319 = and i1 %316, %318
  br i1 %319, label %320, label %328

; <label>:320:                                    ; preds = %312
  %321 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %310, %struct.Memory* %249)
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i8, i8* %43, align 1
  %.pre41 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit330

; <label>:322:                                    ; preds = %block_.L_421598
  %323 = fcmp ogt double %306, %309
  br i1 %323, label %328, label %324

; <label>:324:                                    ; preds = %322
  %325 = fcmp olt double %306, %309
  br i1 %325, label %328, label %326

; <label>:326:                                    ; preds = %324
  %327 = fcmp oeq double %306, %309
  br i1 %327, label %328, label %332

; <label>:328:                                    ; preds = %326, %324, %322, %312
  %329 = phi i8 [ 0, %322 ], [ 0, %324 ], [ 1, %326 ], [ 1, %312 ]
  %330 = phi i8 [ 0, %322 ], [ 0, %324 ], [ 0, %326 ], [ 1, %312 ]
  %331 = phi i8 [ 0, %322 ], [ 1, %324 ], [ 0, %326 ], [ 1, %312 ]
  store i8 %329, i8* %53, align 1
  store i8 %330, i8* %49, align 1
  store i8 %331, i8* %43, align 1
  br label %332

; <label>:332:                                    ; preds = %328, %326
  %333 = phi i8 [ %329, %328 ], [ %296, %326 ]
  %334 = phi i8 [ %331, %328 ], [ %284, %326 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit330

routine_ucomisd__xmm2___xmm1.exit330:             ; preds = %332, %320
  %335 = phi i8 [ %.pre41, %320 ], [ %333, %332 ]
  %336 = phi i8 [ %.pre40, %320 ], [ %334, %332 ]
  %337 = phi i64 [ %.pre39, %320 ], [ %310, %332 ]
  %338 = phi %struct.Memory* [ %321, %320 ], [ %249, %332 ]
  %339 = or i8 %335, %336
  %340 = icmp ne i8 %339, 0
  %.v88 = select i1 %340, i64 38, i64 6
  %341 = add i64 %337, %.v88
  store i64 %341, i64* %3, align 8
  br i1 %340, label %block_.L_4215e9, label %block_4215c9

block_4215c9:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit330
  %342 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %43, align 1
  %343 = and i32 %342, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %348 = icmp eq i32 %342, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %53, align 1
  %350 = lshr i32 %342, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v89 = select i1 %348, i64 32, i64 14
  %352 = add i64 %341, %.v89
  store i64 %352, i64* %3, align 8
  br i1 %348, label %block_.L_4215e9, label %block_4215d7

block_4215d7:                                     ; preds = %block_4215c9
  %353 = add i64 %352, ptrtoint (%G_0x6e19__rip__type* @G_0x6e19__rip_ to i64)
  %354 = add i64 %352, 8
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -16
  %359 = add i64 %352, 13
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %360, align 8
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 86
  br label %block_.L_42163a

block_.L_4215e9:                                  ; preds = %block_4215c9, %routine_ucomisd__xmm2___xmm1.exit330
  %363 = phi i64 [ %352, %block_4215c9 ], [ %341, %routine_ucomisd__xmm2___xmm1.exit330 ]
  %364 = add i64 %363, ptrtoint (%G_0x6ddf__rip__type* @G_0x6ddf__rip_ to i64)
  %365 = add i64 %363, 8
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %368 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %369 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %370 = sub i32 %368, %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX.i371.pre-phi, align 8
  %372 = icmp ult i32 %368, %369
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %43, align 1
  %374 = and i32 %370, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %49, align 1
  %379 = xor i32 %369, %368
  %380 = xor i32 %379, %370
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %50, align 1
  %384 = icmp eq i32 %370, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %53, align 1
  %386 = lshr i32 %370, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %56, align 1
  %388 = lshr i32 %368, 31
  %389 = lshr i32 %369, 31
  %390 = xor i32 %389, %388
  %391 = xor i32 %386, %388
  %392 = add nuw nsw i32 %391, %390
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %57, align 1
  %395 = sitofp i32 %370 to double
  store double %395, double* %31, align 1
  %396 = sitofp i32 %368 to double
  %397 = bitcast i64 %367 to double
  %398 = fdiv double %396, %397
  store double %398, double* %.pre-phi68, align 1
  %399 = add i64 %363, 43
  store i64 %399, i64* %3, align 8
  %400 = fcmp uno double %395, %398
  br i1 %400, label %401, label %411

; <label>:401:                                    ; preds = %block_.L_4215e9
  %402 = fadd double %398, %395
  %403 = bitcast double %402 to i64
  %404 = and i64 %403, 9221120237041090560
  %405 = icmp eq i64 %404, 9218868437227405312
  %406 = and i64 %403, 2251799813685247
  %407 = icmp ne i64 %406, 0
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %417

; <label>:409:                                    ; preds = %401
  %410 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %399, %struct.Memory* %338)
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i8, i8* %43, align 1
  %.pre44 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit300

; <label>:411:                                    ; preds = %block_.L_4215e9
  %412 = fcmp ogt double %395, %398
  br i1 %412, label %417, label %413

; <label>:413:                                    ; preds = %411
  %414 = fcmp olt double %395, %398
  br i1 %414, label %417, label %415

; <label>:415:                                    ; preds = %413
  %416 = fcmp oeq double %395, %398
  br i1 %416, label %417, label %421

; <label>:417:                                    ; preds = %415, %413, %411, %401
  %418 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 1, %415 ], [ 1, %401 ]
  %419 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 0, %415 ], [ 1, %401 ]
  %420 = phi i8 [ 0, %411 ], [ 1, %413 ], [ 0, %415 ], [ 1, %401 ]
  store i8 %418, i8* %53, align 1
  store i8 %419, i8* %49, align 1
  store i8 %420, i8* %43, align 1
  br label %421

; <label>:421:                                    ; preds = %417, %415
  %422 = phi i8 [ %418, %417 ], [ %385, %415 ]
  %423 = phi i8 [ %420, %417 ], [ %373, %415 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit300

routine_ucomisd__xmm2___xmm1.exit300:             ; preds = %421, %409
  %424 = phi i8 [ %.pre44, %409 ], [ %422, %421 ]
  %425 = phi i8 [ %.pre43, %409 ], [ %423, %421 ]
  %426 = phi i64 [ %.pre42, %409 ], [ %399, %421 ]
  %427 = phi %struct.Memory* [ %410, %409 ], [ %338, %421 ]
  %428 = or i8 %424, %425
  %429 = icmp ne i8 %428, 0
  %.v90 = select i1 %429, i64 33, i64 6
  %430 = add i64 %426, %.v90
  store i64 %430, i64* %3, align 8
  br i1 %429, label %block_.L_421635, label %block_42161a

block_42161a:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit300
  %431 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %43, align 1
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %437 = icmp eq i32 %431, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %53, align 1
  %439 = lshr i32 %431, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v91 = select i1 %437, i64 27, i64 14
  %441 = add i64 %430, %.v91
  store i64 %441, i64* %3, align 8
  br i1 %437, label %block_.L_421635, label %block_421628

block_421628:                                     ; preds = %block_42161a
  %442 = add i64 %441, ptrtoint (%G_0x6dc0__rip__type* @G_0x6dc0__rip_ to i64)
  %443 = add i64 %441, 8
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -16
  %448 = add i64 %441, 13
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %449, align 8
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_421635

block_.L_421635:                                  ; preds = %block_421628, %block_42161a, %routine_ucomisd__xmm2___xmm1.exit300
  %450 = phi i64 [ %.pre45, %block_421628 ], [ %441, %block_42161a ], [ %430, %routine_ucomisd__xmm2___xmm1.exit300 ]
  %451 = add i64 %450, 5
  store i64 %451, i64* %3, align 8
  br label %block_.L_42163a

block_.L_42163a:                                  ; preds = %block_.L_421635, %block_4215d7
  %storemerge33 = phi i64 [ %362, %block_4215d7 ], [ %451, %block_.L_421635 ]
  %MEMORY.5 = phi %struct.Memory* [ %338, %block_4215d7 ], [ %427, %block_.L_421635 ]
  %452 = add i64 %storemerge33, 5
  store i64 %452, i64* %3, align 8
  br label %block_.L_42163f

block_.L_42163f:                                  ; preds = %block_.L_42163a, %block_421586
  %storemerge = phi i64 [ %273, %block_421586 ], [ %452, %block_.L_42163a ]
  %MEMORY.6 = phi %struct.Memory* [ %249, %block_421586 ], [ %MEMORY.5, %block_.L_42163a ]
  %453 = add i64 %storemerge, 5
  store i64 %453, i64* %3, align 8
  br label %block_.L_421644

block_.L_421644:                                  ; preds = %block_.L_42163f, %routine_ucomisd__xmm2___xmm3.exit
  %454 = phi i64 [ %184, %routine_ucomisd__xmm2___xmm3.exit ], [ %453, %block_.L_42163f ]
  %MEMORY.7 = phi %struct.Memory* [ %181, %routine_ucomisd__xmm2___xmm3.exit ], [ %MEMORY.6, %block_.L_42163f ]
  %455 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %456 = add i32 %455, -3
  %457 = icmp ult i32 %455, 3
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %43, align 1
  %459 = and i32 %456, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %49, align 1
  %464 = xor i32 %456, %455
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %50, align 1
  %468 = icmp eq i32 %456, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %53, align 1
  %470 = lshr i32 %456, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %56, align 1
  %472 = lshr i32 %455, 31
  %473 = xor i32 %470, %472
  %474 = add nuw nsw i32 %473, %472
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %57, align 1
  %.v77 = select i1 %468, i64 213, i64 14
  %477 = add i64 %454, %.v77
  store i64 %477, i64* %3, align 8
  br i1 %468, label %block_.L_421719, label %block_421652

block_421652:                                     ; preds = %block_.L_421644
  %478 = add i32 %455, -4
  %479 = icmp ult i32 %455, 4
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %43, align 1
  %481 = and i32 %478, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %49, align 1
  %486 = xor i32 %478, %455
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %50, align 1
  %490 = icmp eq i32 %478, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %53, align 1
  %492 = lshr i32 %478, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %56, align 1
  %494 = xor i32 %492, %472
  %495 = add nuw nsw i32 %494, %472
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %57, align 1
  %.v78 = select i1 %490, i64 199, i64 14
  %498 = add i64 %477, %.v78
  store i64 %498, i64* %3, align 8
  br i1 %490, label %block_.L_421719, label %block_421660

block_421660:                                     ; preds = %block_421652
  %499 = add i64 %498, ptrtoint (%G_0x6d70__rip__type* @G_0x6d70__rip_ to i64)
  %500 = add i64 %498, 8
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i64*
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %RAX.i279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %503 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %504 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %505 = sub i32 %503, %504
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i279, align 8
  %507 = icmp ult i32 %503, %504
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %43, align 1
  %509 = and i32 %505, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %49, align 1
  %514 = xor i32 %504, %503
  %515 = xor i32 %514, %505
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %50, align 1
  %519 = icmp eq i32 %505, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %53, align 1
  %521 = lshr i32 %505, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %56, align 1
  %523 = lshr i32 %503, 31
  %524 = lshr i32 %504, 31
  %525 = xor i32 %524, %523
  %526 = xor i32 %521, %523
  %527 = add nuw nsw i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %57, align 1
  %530 = sitofp i32 %505 to double
  store double %530, double* %31, align 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %532 = sitofp i32 %503 to double
  %533 = bitcast %union.VectorReg* %531 to double*
  %534 = bitcast i64 %502 to double
  %535 = fdiv double %532, %534
  store double %535, double* %533, align 1
  %536 = add i64 %498, 43
  store i64 %536, i64* %3, align 8
  %537 = fcmp uno double %530, %535
  br i1 %537, label %538, label %548

; <label>:538:                                    ; preds = %block_421660
  %539 = fadd double %535, %530
  %540 = bitcast double %539 to i64
  %541 = and i64 %540, 9221120237041090560
  %542 = icmp eq i64 %541, 9218868437227405312
  %543 = and i64 %540, 2251799813685247
  %544 = icmp ne i64 %543, 0
  %545 = and i1 %542, %544
  br i1 %545, label %546, label %554

; <label>:546:                                    ; preds = %538
  %547 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %536, %struct.Memory* %MEMORY.7)
  %.pre46 = load i64, i64* %3, align 8
  %.pre47 = load i8, i8* %43, align 1
  %.pre48 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit264

; <label>:548:                                    ; preds = %block_421660
  %549 = fcmp ogt double %530, %535
  br i1 %549, label %554, label %550

; <label>:550:                                    ; preds = %548
  %551 = fcmp olt double %530, %535
  br i1 %551, label %554, label %552

; <label>:552:                                    ; preds = %550
  %553 = fcmp oeq double %530, %535
  br i1 %553, label %554, label %558

; <label>:554:                                    ; preds = %552, %550, %548, %538
  %555 = phi i8 [ 0, %548 ], [ 0, %550 ], [ 1, %552 ], [ 1, %538 ]
  %556 = phi i8 [ 0, %548 ], [ 0, %550 ], [ 0, %552 ], [ 1, %538 ]
  %557 = phi i8 [ 0, %548 ], [ 1, %550 ], [ 0, %552 ], [ 1, %538 ]
  store i8 %555, i8* %53, align 1
  store i8 %556, i8* %49, align 1
  store i8 %557, i8* %43, align 1
  br label %558

; <label>:558:                                    ; preds = %554, %552
  %559 = phi i8 [ %555, %554 ], [ %520, %552 ]
  %560 = phi i8 [ %557, %554 ], [ %508, %552 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit264

routine_ucomisd__xmm2___xmm1.exit264:             ; preds = %558, %546
  %561 = phi i8 [ %.pre48, %546 ], [ %559, %558 ]
  %562 = phi i8 [ %.pre47, %546 ], [ %560, %558 ]
  %563 = phi i64 [ %.pre46, %546 ], [ %536, %558 ]
  %564 = phi %struct.Memory* [ %547, %546 ], [ %MEMORY.7, %558 ]
  %565 = or i8 %561, %562
  %566 = icmp ne i8 %565, 0
  %.v79 = select i1 %566, i64 47, i64 6
  %567 = add i64 %563, %.v79
  store i64 %567, i64* %3, align 8
  br i1 %566, label %block_.L_4216ba, label %block_421691

block_421691:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit264
  %568 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %43, align 1
  %569 = and i32 %568, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %574 = icmp eq i32 %568, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %53, align 1
  %576 = lshr i32 %568, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v80 = select i1 %574, i64 41, i64 14
  %578 = add i64 %567, %.v80
  store i64 %578, i64* %3, align 8
  br i1 %574, label %block_.L_4216ba, label %block_42169f

block_42169f:                                     ; preds = %block_421691
  %579 = add i64 %578, ptrtoint (%G_0x6d41__rip__type* @G_0x6d41__rip_ to i64)
  %580 = add i64 %578, 8
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -16
  %585 = add i64 %578, 13
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to double*
  %587 = load double, double* %586, align 8
  %588 = bitcast i64 %582 to double
  %589 = fsub double %587, %588
  store double %589, double* %31, align 1
  store i64 0, i64* %22, align 1
  %590 = add i64 %578, 22
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %584 to double*
  store double %589, double* %591, align 8
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 95
  br label %block_.L_421714

block_.L_4216ba:                                  ; preds = %block_421691, %routine_ucomisd__xmm2___xmm1.exit264
  %594 = phi i64 [ %578, %block_421691 ], [ %567, %routine_ucomisd__xmm2___xmm1.exit264 ]
  %595 = add i64 %594, ptrtoint (%G_0x6d26__rip__type* @G_0x6d26__rip_ to i64)
  %596 = add i64 %594, 8
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %599 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %600 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %601 = sub i32 %599, %600
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX.i279, align 8
  %603 = icmp ult i32 %599, %600
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %43, align 1
  %605 = and i32 %601, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %49, align 1
  %610 = xor i32 %600, %599
  %611 = xor i32 %610, %601
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %50, align 1
  %615 = icmp eq i32 %601, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %53, align 1
  %617 = lshr i32 %601, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %56, align 1
  %619 = lshr i32 %599, 31
  %620 = lshr i32 %600, 31
  %621 = xor i32 %620, %619
  %622 = xor i32 %617, %619
  %623 = add nuw nsw i32 %622, %621
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %57, align 1
  %626 = sitofp i32 %601 to double
  store double %626, double* %31, align 1
  %627 = sitofp i32 %599 to double
  %628 = bitcast i64 %598 to double
  %629 = fdiv double %627, %628
  store double %629, double* %533, align 1
  %630 = add i64 %594, 43
  store i64 %630, i64* %3, align 8
  %631 = fcmp uno double %626, %629
  br i1 %631, label %632, label %642

; <label>:632:                                    ; preds = %block_.L_4216ba
  %633 = fadd double %629, %626
  %634 = bitcast double %633 to i64
  %635 = and i64 %634, 9221120237041090560
  %636 = icmp eq i64 %635, 9218868437227405312
  %637 = and i64 %634, 2251799813685247
  %638 = icmp ne i64 %637, 0
  %639 = and i1 %636, %638
  br i1 %639, label %640, label %648

; <label>:640:                                    ; preds = %632
  %641 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %630, %struct.Memory* %564)
  %.pre49 = load i64, i64* %3, align 8
  %.pre50 = load i8, i8* %43, align 1
  %.pre51 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit

; <label>:642:                                    ; preds = %block_.L_4216ba
  %643 = fcmp ogt double %626, %629
  br i1 %643, label %648, label %644

; <label>:644:                                    ; preds = %642
  %645 = fcmp olt double %626, %629
  br i1 %645, label %648, label %646

; <label>:646:                                    ; preds = %644
  %647 = fcmp oeq double %626, %629
  br i1 %647, label %648, label %652

; <label>:648:                                    ; preds = %646, %644, %642, %632
  %649 = phi i8 [ 0, %642 ], [ 0, %644 ], [ 1, %646 ], [ 1, %632 ]
  %650 = phi i8 [ 0, %642 ], [ 0, %644 ], [ 0, %646 ], [ 1, %632 ]
  %651 = phi i8 [ 0, %642 ], [ 1, %644 ], [ 0, %646 ], [ 1, %632 ]
  store i8 %649, i8* %53, align 1
  store i8 %650, i8* %49, align 1
  store i8 %651, i8* %43, align 1
  br label %652

; <label>:652:                                    ; preds = %648, %646
  %653 = phi i8 [ %649, %648 ], [ %616, %646 ]
  %654 = phi i8 [ %651, %648 ], [ %604, %646 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit

routine_ucomisd__xmm2___xmm1.exit:                ; preds = %652, %640
  %655 = phi i8 [ %.pre51, %640 ], [ %653, %652 ]
  %656 = phi i8 [ %.pre50, %640 ], [ %654, %652 ]
  %657 = phi i64 [ %.pre49, %640 ], [ %630, %652 ]
  %658 = phi %struct.Memory* [ %641, %640 ], [ %564, %652 ]
  %659 = or i8 %655, %656
  %660 = icmp ne i8 %659, 0
  %.v84 = select i1 %660, i64 42, i64 6
  %661 = add i64 %657, %.v84
  store i64 %661, i64* %3, align 8
  br i1 %660, label %block_.L_42170f, label %block_4216eb

block_4216eb:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit
  %662 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %43, align 1
  %663 = and i32 %662, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %668 = icmp eq i32 %662, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %53, align 1
  %670 = lshr i32 %662, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v85 = select i1 %668, i64 36, i64 14
  %672 = add i64 %661, %.v85
  store i64 %672, i64* %3, align 8
  br i1 %668, label %block_.L_42170f, label %block_4216f9

block_4216f9:                                     ; preds = %block_4216eb
  %673 = add i64 %672, ptrtoint (%G_0x6cd7__rip__type* @G_0x6cd7__rip_ to i64)
  %674 = add i64 %672, 8
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -16
  %679 = add i64 %672, 13
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to double*
  %681 = load double, double* %680, align 8
  %682 = bitcast i64 %676 to double
  %683 = fsub double %681, %682
  store double %683, double* %31, align 1
  store i64 0, i64* %22, align 1
  %684 = add i64 %672, 22
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %678 to double*
  store double %683, double* %685, align 8
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_42170f

block_.L_42170f:                                  ; preds = %block_4216f9, %block_4216eb, %routine_ucomisd__xmm2___xmm1.exit
  %686 = phi i64 [ %.pre52, %block_4216f9 ], [ %672, %block_4216eb ], [ %661, %routine_ucomisd__xmm2___xmm1.exit ]
  %687 = add i64 %686, 5
  store i64 %687, i64* %3, align 8
  br label %block_.L_421714

block_.L_421714:                                  ; preds = %block_.L_42170f, %block_42169f
  %storemerge25 = phi i64 [ %593, %block_42169f ], [ %687, %block_.L_42170f ]
  %MEMORY.10 = phi %struct.Memory* [ %564, %block_42169f ], [ %658, %block_.L_42170f ]
  %688 = add i64 %storemerge25, 92
  br label %block_.L_421770

block_.L_421719:                                  ; preds = %block_421652, %block_.L_421644
  %689 = phi i64 [ %498, %block_421652 ], [ %477, %block_.L_421644 ]
  store i8 %458, i8* %43, align 1
  store i8 %463, i8* %49, align 1
  store i8 %467, i8* %50, align 1
  store i8 %469, i8* %53, align 1
  store i8 %471, i8* %56, align 1
  store i8 %476, i8* %57, align 1
  %.v86 = select i1 %468, i64 14, i64 41
  %690 = add i64 %689, %.v86
  store i64 %690, i64* %3, align 8
  br i1 %468, label %block_421727, label %block_.L_421742

block_421727:                                     ; preds = %block_.L_421719
  %691 = add i64 %690, ptrtoint (%G_0x6cb9__rip__type* @G_0x6cb9__rip_ to i64)
  %692 = add i64 %690, 8
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -16
  %697 = add i64 %690, 13
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to double*
  %699 = load double, double* %698, align 8
  %700 = bitcast i64 %694 to double
  %701 = fsub double %699, %700
  store double %701, double* %31, align 1
  store i64 0, i64* %22, align 1
  %702 = add i64 %690, 22
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %696 to double*
  store double %701, double* %703, align 8
  %704 = load i64, i64* %3, align 8
  %705 = add i64 %704, 46
  br label %block_.L_42176b

block_.L_421742:                                  ; preds = %block_.L_421719
  %706 = add i32 %455, -4
  store i8 0, i8* %43, align 1
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %49, align 1
  %712 = xor i32 %706, %455
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %50, align 1
  %716 = icmp eq i32 %706, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %53, align 1
  %718 = lshr i32 %706, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %56, align 1
  %720 = xor i32 %718, %472
  %721 = add nuw nsw i32 %720, %472
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %57, align 1
  %.v87 = select i1 %716, i64 14, i64 36
  %724 = add i64 %690, %.v87
  store i64 %724, i64* %3, align 8
  br i1 %716, label %block_421750, label %block_.L_421766

block_421750:                                     ; preds = %block_.L_421742
  %725 = add i64 %724, ptrtoint (%G_0x6c80__rip__type* @G_0x6c80__rip_ to i64)
  %726 = add i64 %724, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -16
  %731 = add i64 %724, 13
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to double*
  %733 = load double, double* %732, align 8
  %734 = bitcast i64 %728 to double
  %735 = fsub double %733, %734
  store double %735, double* %31, align 1
  store i64 0, i64* %22, align 1
  %736 = add i64 %724, 22
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %730 to double*
  store double %735, double* %737, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_421766

block_.L_421766:                                  ; preds = %block_.L_421742, %block_421750
  %738 = phi i64 [ %.pre53, %block_421750 ], [ %724, %block_.L_421742 ]
  %739 = add i64 %738, 5
  store i64 %739, i64* %3, align 8
  br label %block_.L_42176b

block_.L_42176b:                                  ; preds = %block_.L_421766, %block_421727
  %storemerge31 = phi i64 [ %705, %block_421727 ], [ %739, %block_.L_421766 ]
  %740 = add i64 %storemerge31, 5
  store i64 %740, i64* %3, align 8
  br label %block_.L_421770

block_.L_421770:                                  ; preds = %block_.L_42176b, %block_.L_421714
  %storemerge26 = phi i64 [ %688, %block_.L_421714 ], [ %740, %block_.L_42176b ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.10, %block_.L_421714 ], [ %MEMORY.7, %block_.L_42176b ]
  %741 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %742 = sitofp i32 %741 to double
  store double %742, double* %16, align 1
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -16
  %745 = add i64 %storemerge26, 14
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to double*
  %747 = load double, double* %746, align 8
  %748 = fdiv double %742, %747
  store double %748, double* %16, align 1
  %749 = add i64 %743, -8
  %750 = add i64 %storemerge26, 19
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to double*
  store double %748, double* %751, align 8
  %752 = load i64, i64* %3, align 8
  %753 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  store i8 0, i8* %43, align 1
  %754 = and i32 %753, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %759 = icmp eq i32 %753, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %53, align 1
  %761 = lshr i32 %753, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v81 = select i1 %759, i64 205, i64 14
  %763 = add i64 %752, %.v81
  store i64 %763, i64* %3, align 8
  br i1 %759, label %block_.L_421850, label %block_421791

block_421791:                                     ; preds = %block_.L_421770
  %764 = add i64 %763, ptrtoint (%G_0x6c6f__rip__type* @G_0x6c6f__rip_ to i64)
  %765 = add i64 %763, 8
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  store double %742, double* %31, align 1
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -8
  %770 = add i64 %763, 22
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to double*
  %772 = load double, double* %771, align 8
  %773 = fsub double %742, %772
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %775 = sitofp i32 %753 to double
  %776 = bitcast %union.VectorReg* %774 to double*
  store double %775, double* %776, align 1
  %777 = fsub double %773, %775
  store double %777, double* %31, align 1
  %778 = add i64 %763, 39
  store i64 %778, i64* %3, align 8
  %779 = bitcast i64 %767 to double
  %780 = fcmp uno double %777, %779
  br i1 %780, label %781, label %791

; <label>:781:                                    ; preds = %block_421791
  %782 = fadd double %777, %779
  %783 = bitcast double %782 to i64
  %784 = and i64 %783, 9221120237041090560
  %785 = icmp eq i64 %784, 9218868437227405312
  %786 = and i64 %783, 2251799813685247
  %787 = icmp ne i64 %786, 0
  %788 = and i1 %785, %787
  br i1 %788, label %789, label %797

; <label>:789:                                    ; preds = %781
  %790 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %778, %struct.Memory* %MEMORY.14)
  %.pre54 = load i64, i64* %3, align 8
  %.pre55 = load i8, i8* %43, align 1
  %.pre56 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:791:                                    ; preds = %block_421791
  %792 = fcmp ogt double %777, %779
  br i1 %792, label %797, label %793

; <label>:793:                                    ; preds = %791
  %794 = fcmp olt double %777, %779
  br i1 %794, label %797, label %795

; <label>:795:                                    ; preds = %793
  %796 = fcmp oeq double %777, %779
  br i1 %796, label %797, label %801

; <label>:797:                                    ; preds = %795, %793, %791, %781
  %798 = phi i8 [ 0, %791 ], [ 0, %793 ], [ 1, %795 ], [ 1, %781 ]
  %799 = phi i8 [ 0, %791 ], [ 0, %793 ], [ 0, %795 ], [ 1, %781 ]
  %800 = phi i8 [ 0, %791 ], [ 1, %793 ], [ 0, %795 ], [ 1, %781 ]
  store i8 %798, i8* %53, align 1
  store i8 %799, i8* %49, align 1
  store i8 %800, i8* %43, align 1
  br label %801

; <label>:801:                                    ; preds = %797, %795
  %802 = phi i8 [ %798, %797 ], [ %760, %795 ]
  %803 = phi i8 [ %800, %797 ], [ 0, %795 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %801, %789
  %804 = phi i8 [ %.pre56, %789 ], [ %802, %801 ]
  %805 = phi i8 [ %.pre55, %789 ], [ %803, %801 ]
  %806 = phi i64 [ %.pre54, %789 ], [ %778, %801 ]
  %807 = phi %struct.Memory* [ %790, %789 ], [ %MEMORY.14, %801 ]
  %808 = or i8 %804, %805
  %809 = icmp ne i8 %808, 0
  %.v82 = select i1 %809, i64 30, i64 6
  %810 = add i64 %806, %.v82
  store i64 %810, i64* %3, align 8
  br i1 %809, label %block_.L_4217d6, label %block_4217be

block_4217be:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %811 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %812 = sitofp i32 %811 to double
  store double %812, double* %16, align 1
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -8
  %815 = add i64 %810, 14
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to double*
  %817 = load double, double* %816, align 8
  %818 = fadd double %812, %817
  store double %818, double* %16, align 1
  %819 = add i64 %810, 19
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %814 to double*
  store double %818, double* %820, align 8
  %821 = load i64, i64* %3, align 8
  %822 = add i64 %821, 122
  br label %block_.L_42184b

block_.L_4217d6:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %823 = add i64 %810, ptrtoint (%G_0x6bca__rip__type* @G_0x6bca__rip_ to i64)
  %824 = add i64 %810, 8
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %827 = add i64 %810, add (i64 ptrtoint (%G_0x6bd2__rip__type* @G_0x6bd2__rip_ to i64), i64 8)
  %828 = add i64 %810, 16
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %32, align 1
  %831 = bitcast i64* %22 to double*
  store double 0.000000e+00, double* %831, align 1
  %832 = add i64 %810, add (i64 ptrtoint (%G_0x6c22__rip__type* @G_0x6c22__rip_ to i64), i64 16)
  %833 = add i64 %810, 24
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  %836 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %774, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %835, i64* %836, align 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %838 = bitcast i64* %837 to double*
  store double 0.000000e+00, double* %838, align 1
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %840 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %841 = sitofp i32 %840 to double
  %842 = bitcast %union.VectorReg* %839 to double*
  store double %841, double* %842, align 1
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -8
  %845 = add i64 %810, 38
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to double*
  %847 = load double, double* %846, align 8
  %848 = fsub double %841, %847
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %850 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %851 = sitofp i32 %850 to double
  %852 = bitcast %union.VectorReg* %849 to double*
  %853 = bitcast i64 %835 to double
  %854 = fmul double %851, %853
  %855 = bitcast i64 %830 to double
  %856 = fdiv double %854, %855
  store double %856, double* %852, align 1
  %857 = fsub double %848, %856
  store double %857, double* %842, align 1
  %858 = add i64 %810, 63
  store i64 %858, i64* %3, align 8
  %859 = bitcast i64 %826 to double
  %860 = fcmp uno double %857, %859
  br i1 %860, label %861, label %871

; <label>:861:                                    ; preds = %block_.L_4217d6
  %862 = fadd double %857, %859
  %863 = bitcast double %862 to i64
  %864 = and i64 %863, 9221120237041090560
  %865 = icmp eq i64 %864, 9218868437227405312
  %866 = and i64 %863, 2251799813685247
  %867 = icmp ne i64 %866, 0
  %868 = and i1 %865, %867
  br i1 %868, label %869, label %877

; <label>:869:                                    ; preds = %861
  %870 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %858, %struct.Memory* %807)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i8, i8* %43, align 1
  %.pre59 = load i8, i8* %53, align 1
  br label %routine_ucomisd__xmm0___xmm3.exit

; <label>:871:                                    ; preds = %block_.L_4217d6
  %872 = fcmp ogt double %857, %859
  br i1 %872, label %877, label %873

; <label>:873:                                    ; preds = %871
  %874 = fcmp olt double %857, %859
  br i1 %874, label %877, label %875

; <label>:875:                                    ; preds = %873
  %876 = fcmp oeq double %857, %859
  br i1 %876, label %877, label %881

; <label>:877:                                    ; preds = %875, %873, %871, %861
  %878 = phi i8 [ 0, %871 ], [ 0, %873 ], [ 1, %875 ], [ 1, %861 ]
  %879 = phi i8 [ 0, %871 ], [ 0, %873 ], [ 0, %875 ], [ 1, %861 ]
  %880 = phi i8 [ 0, %871 ], [ 1, %873 ], [ 0, %875 ], [ 1, %861 ]
  store i8 %878, i8* %53, align 1
  store i8 %879, i8* %49, align 1
  store i8 %880, i8* %43, align 1
  br label %881

; <label>:881:                                    ; preds = %877, %875
  %882 = phi i8 [ %878, %877 ], [ %804, %875 ]
  %883 = phi i8 [ %880, %877 ], [ %805, %875 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %50, align 1
  br label %routine_ucomisd__xmm0___xmm3.exit

routine_ucomisd__xmm0___xmm3.exit:                ; preds = %881, %869
  %884 = phi i8 [ %.pre59, %869 ], [ %882, %881 ]
  %885 = phi i8 [ %.pre58, %869 ], [ %883, %881 ]
  %886 = phi i64 [ %.pre57, %869 ], [ %858, %881 ]
  %887 = phi %struct.Memory* [ %870, %869 ], [ %807, %881 ]
  %888 = or i8 %884, %885
  %889 = icmp ne i8 %888, 0
  %.v83 = select i1 %889, i64 49, i64 6
  %890 = add i64 %886, %.v83
  store i64 %890, i64* %3, align 8
  br i1 %889, label %block_.L_421846, label %block_42181b

block_42181b:                                     ; preds = %routine_ucomisd__xmm0___xmm3.exit
  %891 = add i64 %890, ptrtoint (%G_0x6b95__rip__type* @G_0x6b95__rip_ to i64)
  %892 = add i64 %890, 8
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %895 = add i64 %890, add (i64 ptrtoint (%G_0x6be5__rip__type* @G_0x6be5__rip_ to i64), i64 8)
  %896 = add i64 %890, 16
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %32, align 1
  store double 0.000000e+00, double* %831, align 1
  %899 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %900 = sitofp i32 %899 to double
  %901 = bitcast i64 %898 to double
  %902 = fmul double %900, %901
  %903 = bitcast i64 %894 to double
  %904 = fdiv double %902, %903
  store double %904, double* %776, align 1
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -8
  %907 = add i64 %890, 38
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to double*
  %909 = load double, double* %908, align 8
  %910 = fadd double %904, %909
  store double %910, double* %776, align 1
  %911 = add i64 %890, 43
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %906 to double*
  store double %910, double* %912, align 8
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_421846

block_.L_421846:                                  ; preds = %block_42181b, %routine_ucomisd__xmm0___xmm3.exit
  %913 = phi i64 [ %.pre60, %block_42181b ], [ %890, %routine_ucomisd__xmm0___xmm3.exit ]
  %914 = add i64 %913, 5
  store i64 %914, i64* %3, align 8
  br label %block_.L_42184b

block_.L_42184b:                                  ; preds = %block_.L_421846, %block_4217be
  %storemerge27 = phi i64 [ %822, %block_4217be ], [ %914, %block_.L_421846 ]
  %MEMORY.16 = phi %struct.Memory* [ %807, %block_4217be ], [ %887, %block_.L_421846 ]
  %915 = add i64 %storemerge27, 5
  store i64 %915, i64* %3, align 8
  br label %block_.L_421850

block_.L_421850:                                  ; preds = %block_.L_42184b, %block_.L_421770
  %916 = phi i64 [ %763, %block_.L_421770 ], [ %915, %block_.L_42184b ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.14, %block_.L_421770 ], [ %MEMORY.16, %block_.L_42184b ]
  %917 = add i64 %916, 184
  br label %block_.L_421908

block_.L_421855:                                  ; preds = %entry
  %918 = add i64 %58, ptrtoint (%G_0x6b4b__rip__type* @G_0x6b4b__rip_ to i64)
  %919 = add i64 %58, 8
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i64*
  %921 = load i64, i64* %920, align 8
  store i64 %921, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %922 = add i64 %58, add (i64 ptrtoint (%G_0x6bb3__rip__type* @G_0x6bb3__rip_ to i64), i64 8)
  %923 = add i64 %58, 16
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  %925 = load i64, i64* %924, align 8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %927 = bitcast %union.VectorReg* %926 to i8*
  %928 = bitcast %union.VectorReg* %926 to <2 x i32>*
  %929 = load <2 x i32>, <2 x i32>* %928, align 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %931 = bitcast i64* %930 to <2 x i32>*
  %932 = load <2 x i32>, <2 x i32>* %931, align 1
  %933 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*), align 8
  %934 = sitofp i32 %933 to float
  %935 = bitcast %union.VectorReg* %926 to float*
  store float %934, float* %935, align 1
  %936 = extractelement <2 x i32> %929, i32 1
  %937 = getelementptr inbounds i8, i8* %927, i64 4
  %938 = bitcast i8* %937 to i32*
  store i32 %936, i32* %938, align 1
  %939 = extractelement <2 x i32> %932, i32 0
  %940 = bitcast i64* %930 to i32*
  store i32 %939, i32* %940, align 1
  %941 = extractelement <2 x i32> %932, i32 1
  %942 = getelementptr inbounds i8, i8* %927, i64 12
  %943 = bitcast i8* %942 to i32*
  store i32 %941, i32* %943, align 1
  %944 = bitcast %union.VectorReg* %926 to <2 x float>*
  %945 = load <2 x float>, <2 x float>* %944, align 1
  %946 = extractelement <2 x float> %945, i32 0
  %947 = fpext float %946 to double
  %948 = bitcast %union.VectorReg* %926 to double*
  %949 = bitcast i64 %925 to double
  %950 = fmul double %947, %949
  %951 = bitcast i64 %925 to <2 x i32>
  %952 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*), align 8
  %953 = sitofp i32 %952 to float
  %954 = bitcast %union.VectorReg* %20 to float*
  store float %953, float* %954, align 1
  %955 = extractelement <2 x i32> %951, i32 1
  store i32 %955, i32* %24, align 1
  store i32 0, i32* %25, align 1
  store i32 0, i32* %27, align 1
  %956 = bitcast %union.VectorReg* %20 to <2 x float>*
  %957 = load <2 x float>, <2 x float>* %956, align 1
  %958 = extractelement <2 x float> %957, i32 0
  %959 = fpext float %958 to double
  %960 = bitcast i64* %22 to <2 x i32>*
  %961 = load <2 x i32>, <2 x i32>* %960, align 1
  %962 = bitcast i64 %921 to double
  %963 = fmul double %959, %962
  %964 = fadd double %963, %950
  %965 = bitcast double %963 to <2 x i32>
  %966 = sitofp i32 %42 to float
  store float %966, float* %954, align 1
  %967 = extractelement <2 x i32> %965, i32 1
  store i32 %967, i32* %24, align 1
  %968 = extractelement <2 x i32> %961, i32 0
  store i32 %968, i32* %25, align 1
  %969 = extractelement <2 x i32> %961, i32 1
  store i32 %969, i32* %27, align 1
  %970 = load <2 x float>, <2 x float>* %956, align 1
  %971 = extractelement <2 x float> %970, i32 0
  %972 = fpext float %971 to double
  store double %972, double* %31, align 1
  %973 = fdiv double %964, %972
  %974 = load double, double* %16, align 1
  %975 = fsub double %973, %974
  store double %975, double* %948, align 1
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -8
  %978 = add i64 %58, 80
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to double*
  store double %975, double* %979, align 8
  %980 = load i64, i64* %3, align 8
  %981 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  store i8 0, i8* %43, align 1
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %49, align 1
  store i8 0, i8* %50, align 1
  %987 = icmp eq i32 %981, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %53, align 1
  %989 = lshr i32 %981, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v69 = select i1 %987, i64 94, i64 14
  %991 = add i64 %980, %.v69
  store i64 %991, i64* %3, align 8
  br i1 %987, label %block_.L_421903, label %block_4218b3

block_4218b3:                                     ; preds = %block_.L_421855
  %992 = bitcast i64* %22 to double*
  %993 = add i64 %991, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
  %994 = add i64 %991, 8
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %997 = add i64 %991, add (i64 ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64), i64 8)
  %998 = add i64 %991, 16
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %32, align 1
  store double 0.000000e+00, double* %992, align 1
  %1001 = sitofp i32 %981 to double
  %1002 = bitcast i64 %1000 to double
  %1003 = fmul double %1001, %1002
  %1004 = bitcast i64 %996 to double
  %1005 = fdiv double %1003, %1004
  store double %1005, double* %948, align 1
  %1006 = load i64, i64* %RBP.i, align 8
  %1007 = add i64 %1006, -8
  %1008 = add i64 %991, 38
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to double*
  %1010 = load double, double* %1009, align 8
  %1011 = fadd double %1005, %1010
  %1012 = add i64 %991, 43
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1007 to double*
  store double %1011, double* %1013, align 8
  %1014 = load i64, i64* %3, align 8
  %1015 = load double, double* %31, align 1
  %1016 = fmul double %1001, %1015
  %1017 = load double, double* %16, align 1
  %1018 = fdiv double %1016, %1017
  store double %1018, double* %948, align 1
  %RAX.i36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1019 = tail call double @llvm.trunc.f64(double %1018)
  %1020 = tail call double @llvm.fabs.f64(double %1019)
  %1021 = fcmp ogt double %1020, 0x41DFFFFFFFC00000
  %1022 = fptosi double %1019 to i32
  %1023 = zext i32 %1022 to i64
  %1024 = select i1 %1021, i64 2147483648, i64 %1023
  store i64 %1024, i64* %RAX.i36, align 8
  %RCX.i34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %1025 = trunc i64 %1024 to i32
  %1026 = sub i32 %981, %1025
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RCX.i34, align 8
  %1028 = icmp ult i32 %981, %1025
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %43, align 1
  %1030 = and i32 %1026, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %49, align 1
  %1035 = xor i32 %1025, %981
  %1036 = xor i32 %1035, %1026
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %50, align 1
  %1040 = icmp eq i32 %1026, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %53, align 1
  %1042 = lshr i32 %1026, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %56, align 1
  %1044 = lshr i32 %1025, 31
  %1045 = xor i32 %1044, %989
  %1046 = xor i32 %1042, %989
  %1047 = add nuw nsw i32 %1046, %1045
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %57, align 1
  %1050 = add i64 %1014, 37
  store i64 %1050, i64* %3, align 8
  store i32 %1026, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  br label %block_.L_421903

block_.L_421903:                                  ; preds = %block_4218b3, %block_.L_421855
  %1051 = phi i64 [ %1050, %block_4218b3 ], [ %991, %block_.L_421855 ]
  %1052 = add i64 %1051, 5
  store i64 %1052, i64* %3, align 8
  br label %block_.L_421908

block_.L_421908:                                  ; preds = %block_.L_421903, %block_.L_421850
  %storemerge28 = phi i64 [ %917, %block_.L_421850 ], [ %1052, %block_.L_421903 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_421850 ], [ %2, %block_.L_421903 ]
  %1053 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1054 = add i32 %1053, -1
  %1055 = icmp eq i32 %1053, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %43, align 1
  %1057 = and i32 %1054, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %49, align 1
  %1062 = xor i32 %1054, %1053
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %50, align 1
  %1066 = icmp eq i32 %1054, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %53, align 1
  %1068 = lshr i32 %1054, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %56, align 1
  %1070 = lshr i32 %1053, 31
  %1071 = xor i32 %1068, %1070
  %1072 = add nuw nsw i32 %1071, %1070
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %57, align 1
  %.v70 = select i1 %1066, i64 14, i64 92
  %1075 = add i64 %storemerge28, %.v70
  store i64 %1075, i64* %3, align 8
  br i1 %1066, label %block_421916, label %block_.L_421964

block_421916:                                     ; preds = %block_.L_421908
  %1076 = add i64 %1075, ptrtoint (%G_0x6b02__rip__type* @G_0x6b02__rip_ to i64)
  %1077 = add i64 %1075, 8
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -8
  %1082 = add i64 %1075, 13
  store i64 %1082, i64* %3, align 8
  %1083 = bitcast i64 %1079 to double
  %1084 = inttoptr i64 %1081 to double*
  %1085 = load double, double* %1084, align 8
  %1086 = fmul double %1083, %1085
  store double %1086, double* %16, align 1
  store i64 0, i64* %18, align 1
  %1087 = add i64 %1075, 18
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1081 to double*
  store double %1086, double* %1088, align 8
  %RAX.i18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1089 = load i64, i64* %3, align 8
  %1090 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RAX.i18, align 8
  %1092 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %1093 = sub i32 %1090, %1092
  %1094 = icmp ult i32 %1090, %1092
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %43, align 1
  %1096 = and i32 %1093, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %49, align 1
  %1101 = xor i32 %1092, %1090
  %1102 = xor i32 %1101, %1093
  %1103 = lshr i32 %1102, 4
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  store i8 %1105, i8* %50, align 1
  %1106 = icmp eq i32 %1093, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %53, align 1
  %1108 = lshr i32 %1093, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %56, align 1
  %1110 = lshr i32 %1090, 31
  %1111 = lshr i32 %1092, 31
  %1112 = xor i32 %1111, %1110
  %1113 = xor i32 %1108, %1110
  %1114 = add nuw nsw i32 %1113, %1112
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %57, align 1
  %1117 = icmp ne i8 %1109, 0
  %1118 = xor i1 %1117, %1115
  %.demorgan = or i1 %1106, %1118
  %.v71 = select i1 %.demorgan, i64 20, i64 37
  %1119 = add i64 %1089, %.v71
  store i64 %1119, i64* %3, align 8
  br i1 %.demorgan, label %block_42193c, label %block_.L_42194d

block_42193c:                                     ; preds = %block_421916
  %1120 = add i32 %1090, -1500
  %1121 = icmp ult i32 %1090, 1500
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %43, align 1
  %1123 = and i32 %1120, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %49, align 1
  %1128 = xor i32 %1090, 16
  %1129 = xor i32 %1128, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %50, align 1
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %53, align 1
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %56, align 1
  %1137 = xor i32 %1135, %1110
  %1138 = add nuw nsw i32 %1137, %1110
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %57, align 1
  %1141 = icmp ne i8 %1136, 0
  %1142 = xor i1 %1141, %1139
  %.v72 = select i1 %1142, i64 17, i64 35
  %1143 = add i64 %1119, %.v72
  store i64 %1143, i64* %3, align 8
  br i1 %1142, label %block_.L_42194d, label %block_.L_42195f

block_.L_42194d:                                  ; preds = %block_421916, %block_42193c
  %1144 = phi i64 [ %1143, %block_42193c ], [ %1119, %block_421916 ]
  %1145 = add i64 %1144, ptrtoint (%G_0x6ad3__rip__type* @G_0x6ad3__rip_ to i64)
  %1146 = add i64 %1144, 8
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i64 %1148, i64* %17, align 1
  store double 0.000000e+00, double* %19, align 1
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -8
  %1151 = add i64 %1144, 13
  store i64 %1151, i64* %3, align 8
  %1152 = bitcast i64 %1148 to double
  %1153 = inttoptr i64 %1150 to double*
  %1154 = load double, double* %1153, align 8
  %1155 = fmul double %1152, %1154
  store double %1155, double* %16, align 1
  store i64 0, i64* %18, align 1
  %1156 = add i64 %1144, 18
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1150 to double*
  store double %1155, double* %1157, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_42195f

block_.L_42195f:                                  ; preds = %block_42193c, %block_.L_42194d
  %1158 = phi i64 [ %1143, %block_42193c ], [ %.pre61, %block_.L_42194d ]
  %1159 = add i64 %1158, 5
  store i64 %1159, i64* %3, align 8
  br label %block_.L_421964

block_.L_421964:                                  ; preds = %block_.L_421908, %block_.L_42195f
  %1160 = phi i64 [ %1159, %block_.L_42195f ], [ %1075, %block_.L_421908 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -8
  %1163 = add i64 %1160, 5
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to double*
  %1165 = load double, double* %1164, align 8
  %1166 = tail call double @llvm.trunc.f64(double %1165)
  %1167 = tail call double @llvm.fabs.f64(double %1166)
  %1168 = fcmp ogt double %1167, 0x41DFFFFFFFC00000
  %1169 = fptosi double %1166 to i32
  %1170 = zext i32 %1169 to i64
  %1171 = select i1 %1168, i64 2147483648, i64 %1170
  store i64 %1171, i64* %RAX.i, align 8
  %1172 = add i64 %1160, 6
  store i64 %1172, i64* %3, align 8
  %1173 = load i64, i64* %6, align 8
  %1174 = add i64 %1173, 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RBP.i, align 8
  store i64 %1174, i64* %6, align 8
  %1177 = add i64 %1160, 7
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1174 to i64*
  %1179 = load i64, i64* %1178, align 8
  store i64 %1179, i64* %3, align 8
  %1180 = add i64 %1173, 16
  store i64 %1180, i64* %6, align 8
  ret %struct.Memory* %MEMORY.19
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6f04__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6f04__rip__type* @G_0x6f04__rip_ to i64)
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x86bd70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*), align 8
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %5, 6
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_421503(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8a0a78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6ecd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6ecd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x1770__0x86bd70___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*), align 8
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 6000
  %8 = trunc i64 %7 to i32
  %9 = and i64 %7, 4294967280
  store i64 %9, i64* %RAX, align 8
  %10 = mul i64 %6, 25769803776000
  %11 = ashr exact i64 %10, 32
  %12 = icmp ne i64 %11, %7
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 240
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %13, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__0x62ea00___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*), align 8
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 100
  %8 = trunc i64 %7 to i32
  %9 = and i64 %7, 4294967292
  store i64 %9, i64* %RCX, align 8
  %10 = mul i64 %6, 429496729600
  %11 = ashr exact i64 %10, 32
  %12 = icmp ne i64 %11, %7
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 252
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %13, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %3 to double*
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
define %struct.Memory* @routine_jbe_.L_421644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6e89__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6e89__rip__type* @G_0x6e89__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x86bd64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8a05b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x86bd64___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
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
define %struct.Memory* @routine_jbe_.L_421598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6e72__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6e72__rip__type* @G_0x6e72__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42163f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6e48__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6e48__rip__type* @G_0x6e48__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_4215e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4215e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6e19__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6e19__rip__type* @G_0x6e19__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42163a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6ddf__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6ddf__rip__type* @G_0x6ddf__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_421635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6dc0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6dc0__rip__type* @G_0x6dc0__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_421644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d70__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6d70__rip__type* @G_0x6d70__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x8a05b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x86bd64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4216ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4216ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d41__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6d41__rip__type* @G_0x6d41__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d26__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6d26__rip__type* @G_0x6d26__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_42170f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42170f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6cd7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6cd7__rip__type* @G_0x6cd7__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_421770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421742(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6cb9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6cb9__rip__type* @G_0x6cb9__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42176b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421766(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6c80__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6c80__rip__type* @G_0x6c80__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_421850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6c6f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6c6f__rip__type* @G_0x6c6f__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_jbe_.L_4217d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_jmpq_.L_42184b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6bca__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6bca__rip__type* @G_0x6bca__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6bd2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6bd2__rip__type* @G_0x6bd2__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6c22__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6c22__rip__type* @G_0x6c22__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x8__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_jbe_.L_421846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6b95__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6b95__rip__type* @G_0x6b95__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6be5__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6be5__rip__type* @G_0x6be5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421908(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6b4b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6b4b__rip__type* @G_0x6b4b__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6bb3__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6bb3__rip__type* @G_0x6bb3__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x86bd70___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x62ea00___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x8661d8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x86bd88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421903(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6afd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6afd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x86bd88___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd88___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x86bd88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421964(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6b02__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6b02__rip__type* @G_0x6b02__rip_ to i64)
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
define %struct.Memory* @routine_mulsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8a05b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42194d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5dc__0x86bd64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*), align 8
  %6 = add i32 %5, -1500
  %7 = icmp ult i32 %5, 1500
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42195f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6ad3__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6ad3__rip__type* @G_0x6ad3__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_421964(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x41DFFFFFFFC00000
  %12 = fptosi double %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
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
