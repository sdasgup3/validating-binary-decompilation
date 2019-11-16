; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x232c__rip__type = type <{ [8 x i8] }>
%G_0x277050__rip__type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x70fcf8_type = type <{ [8 x i8] }>
%G_0x710790_type = type <{ [4 x i8] }>
%G_0x7107a0_type = type <{ [4 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
%G_0x722b28_type = type <{ [8 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
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
@G_0x232c__rip_ = global %G_0x232c__rip__type zeroinitializer
@G_0x277050__rip_ = global %G_0x277050__rip__type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x6d4740 = local_unnamed_addr global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = local_unnamed_addr global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = local_unnamed_addr global %G_0x70f6d0_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x70fcf8 = local_unnamed_addr global %G_0x70fcf8_type zeroinitializer
@G_0x710790 = local_unnamed_addr global %G_0x710790_type zeroinitializer
@G_0x7107a0 = local_unnamed_addr global %G_0x7107a0_type zeroinitializer
@G_0x722b20 = local_unnamed_addr global %G_0x722b20_type zeroinitializer
@G_0x722b28 = local_unnamed_addr global %G_0x722b28_type zeroinitializer
@G_0x7242a0 = local_unnamed_addr global %G_0x7242a0_type zeroinitializer
@G_0x7247b0 = local_unnamed_addr global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = local_unnamed_addr global %G_0x7247b4_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @estimate_weighting_factor_B_slice(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -35480
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 35472
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %42 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %42, align 1
  %43 = add i64 %7, -40
  %44 = add i64 %10, 18
  store i64 %44, i64* %3, align 8
  %45 = bitcast [32 x %union.VectorReg]* %40 to double*
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %47 = load i64, i64* %46, align 1
  %48 = inttoptr i64 %43 to i64*
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2857 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %51, i64* %RAX.i2857, align 8
  %52 = add i64 %51, 72400
  %53 = add i64 %50, 15
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  store i8 0, i8* %14, align 1
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %61 = icmp eq i32 %55, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %30, align 1
  %63 = lshr i32 %55, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v222 = select i1 %61, i64 126, i64 21
  %65 = add i64 %50, %.v222
  store i64 %65, i64* %3, align 8
  br i1 %61, label %entry.block_.L_4ae821_crit_edge, label %block_4ae7b8

entry.block_.L_4ae821_crit_edge:                  ; preds = %entry
  %.pre200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre201 = getelementptr inbounds %union.anon, %union.anon* %.pre200, i64 0, i32 0
  br label %block_.L_4ae821

block_4ae7b8:                                     ; preds = %entry
  store i64 %51, i64* %RAX.i2857, align 8
  %66 = add i64 %51, 14168
  %67 = add i64 %65, 15
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %RAX.i2857, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2888 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  store i64 %51, i64* %RCX.i2888, align 8
  %71 = add i64 %51, 12
  %72 = add i64 %65, 27
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, 632
  store i64 %76, i64* %RCX.i2888, align 8
  %77 = lshr i64 %76, 63
  %78 = add i64 %76, %69
  store i64 %78, i64* %RAX.i2857, align 8
  %79 = icmp ult i64 %78, %69
  %80 = icmp ult i64 %78, %76
  %81 = or i1 %79, %80
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %14, align 1
  %83 = trunc i64 %78 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %21, align 1
  %89 = xor i64 %76, %69
  %90 = xor i64 %89, %78
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %27, align 1
  %94 = icmp eq i64 %78, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %30, align 1
  %96 = lshr i64 %78, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %33, align 1
  %98 = lshr i64 %69, 63
  %99 = xor i64 %96, %98
  %100 = xor i64 %96, %77
  %101 = add nuw nsw i64 %99, %100
  %102 = icmp eq i64 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %39, align 1
  %104 = add i64 %78, 532
  %105 = add i64 %65, 44
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  store i8 0, i8* %14, align 1
  %108 = and i32 %107, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %113 = icmp eq i32 %107, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %30, align 1
  %115 = lshr i32 %107, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v223 = select i1 %113, i64 105, i64 50
  %117 = add i64 %65, %.v223
  store i64 %117, i64* %3, align 8
  br i1 %113, label %block_.L_4ae821, label %block_4ae7ea

block_4ae7ea:                                     ; preds = %block_4ae7b8
  store i64 2, i64* %RAX.i2857, align 8
  store i64 4, i64* %RCX.i2888, align 8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2872 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  %119 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %119, i64* %RDX.i2872, align 8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2870 = getelementptr inbounds %union.anon, %union.anon* %120, i64 0, i32 0
  %121 = add i64 %119, 12
  %122 = add i64 %117, 21
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RSI.i2870, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -35416
  %128 = add i64 %117, 27
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 2, i32* %129, align 4
  %ESI.i2863 = bitcast %union.anon* %120 to i32*
  %130 = load i32, i32* %ESI.i2863, align 4
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %3, align 8
  store i64 %131, i64* %RAX.i2857, align 8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %134 = sext i32 %130 to i64
  %135 = lshr i64 %134, 32
  store i64 %135, i64* %133, align 8
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -35416
  %138 = add i64 %132, 9
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RSI.i2870, align 8
  %142 = add i64 %132, 11
  store i64 %142, i64* %3, align 8
  %143 = sext i32 %140 to i64
  %144 = shl nuw i64 %135, 32
  %145 = or i64 %144, %131
  %146 = sdiv i64 %145, %143
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %153, label %150

; <label>:150:                                    ; preds = %block_4ae7ea
  %151 = bitcast %union.anon* %118 to i32*
  %152 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %142, %struct.Memory* %2)
  %.pre = load i32, i32* %151, align 4
  %.pre138 = load i64, i64* %3, align 8
  %.pre139 = load i64, i64* %RSI.i2870, align 8
  %.pre140 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:153:                                    ; preds = %block_4ae7ea
  %154 = srem i64 %145, %143
  %155 = and i64 %146, 4294967295
  store i64 %155, i64* %RAX.i2857, align 8
  %156 = and i64 %154, 4294967295
  store i64 %156, i64* %RDX.i2872, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %157 = trunc i64 %154 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %153, %150
  %158 = phi i64 [ %.pre140, %150 ], [ %136, %153 ]
  %159 = phi i64 [ %.pre139, %150 ], [ %141, %153 ]
  %160 = phi i64 [ %.pre138, %150 ], [ %142, %153 ]
  %161 = phi i32 [ %.pre, %150 ], [ %157, %153 ]
  %162 = phi %struct.Memory* [ %152, %150 ], [ %2, %153 ]
  store i8 0, i8* %14, align 1
  %163 = and i32 %161, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %168 = icmp eq i32 %161, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1
  %170 = lshr i32 %161, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %ECX.i2850 = bitcast %union.anon* %70 to i32*
  %172 = load i32, i32* %ECX.i2850, align 4
  %173 = zext i32 %172 to i64
  %174 = select i1 %168, i64 %159, i64 %173
  %175 = and i64 %174, 4294967295
  store i64 %175, i64* %RSI.i2870, align 8
  %176 = add i64 %158, -35420
  %177 = trunc i64 %174 to i32
  %178 = add i64 %160, 12
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %179, align 4
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 18
  br label %block_.L_4ae82e

block_.L_4ae821:                                  ; preds = %entry.block_.L_4ae821_crit_edge, %block_4ae7b8
  %.pre199.pre-phi = phi i64* [ %.pre201, %entry.block_.L_4ae821_crit_edge ], [ %RCX.i2888, %block_4ae7b8 ]
  %.pre198.pre-phi = phi %union.anon* [ %.pre200, %entry.block_.L_4ae821_crit_edge ], [ %70, %block_4ae7b8 ]
  %182 = phi i64 [ %65, %entry.block_.L_4ae821_crit_edge ], [ %117, %block_4ae7b8 ]
  store i64 0, i64* %RAX.i2857, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -35420
  %185 = add i64 %182, 8
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  store i32 0, i32* %186, align 4
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 5
  store i64 %188, i64* %3, align 8
  br label %block_.L_4ae82e

block_.L_4ae82e:                                  ; preds = %block_.L_4ae821, %routine_idivl__esi.exit
  %RCX.i2831.pre-phi = phi i64* [ %.pre199.pre-phi, %block_.L_4ae821 ], [ %RCX.i2888, %routine_idivl__esi.exit ]
  %.pre-phi = phi %union.anon* [ %.pre198.pre-phi, %block_.L_4ae821 ], [ %70, %routine_idivl__esi.exit ]
  %storemerge = phi i64 [ %188, %block_.L_4ae821 ], [ %181, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_4ae821 ], [ %162, %routine_idivl__esi.exit ]
  %EAX.i2833.pre-phi = bitcast %union.anon* %49 to i32*
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -35420
  %191 = add i64 %storemerge, 6
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RAX.i2857, align 8
  %195 = add i64 %189, -808
  %196 = add i64 %storemerge, 12
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 %193, i32* %197, align 4
  %198 = load i64, i64* %3, align 8
  %199 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %199, i64* %RCX.i2831.pre-phi, align 8
  %200 = add i64 %199, 196
  %201 = add i64 %198, 15
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, -2
  %205 = icmp ult i32 %203, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %14, align 1
  %207 = and i32 %204, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %21, align 1
  %212 = xor i32 %204, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %27, align 1
  %216 = icmp eq i32 %204, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %30, align 1
  %218 = lshr i32 %204, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %33, align 1
  %220 = lshr i32 %203, 31
  %221 = xor i32 %218, %220
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %39, align 1
  %.v224 = select i1 %216, i64 21, i64 48
  %225 = add i64 %198, %.v224
  %226 = add i64 %225, 11
  store i64 %226, i64* %3, align 8
  br i1 %216, label %block_4ae84f, label %block_.L_4ae86a

block_4ae84f:                                     ; preds = %block_.L_4ae82e
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %227 = add i64 %225, 49
  store i64 %227, i64* %3, align 8
  br label %block_.L_4ae880

block_.L_4ae86a:                                  ; preds = %block_.L_4ae82e
  store i32 6, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %228 = add i64 %225, 22
  store i64 %228, i64* %3, align 8
  store i32 6, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  br label %block_.L_4ae880

block_.L_4ae880:                                  ; preds = %block_.L_4ae86a, %block_4ae84f
  %229 = phi i32 [ 6, %block_.L_4ae86a ], [ 5, %block_4ae84f ]
  %230 = phi i64 [ %228, %block_.L_4ae86a ], [ %227, %block_4ae84f ]
  store i64 1, i64* %RAX.i2857, align 8
  %231 = zext i32 %229 to i64
  %232 = add nsw i32 %229, -1
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RCX.i2831.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %234 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %238 = icmp eq i32 %232, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2815 = getelementptr inbounds %union.anon, %union.anon* %240, i64 0, i32 0
  store i64 1, i64* %RDX.i2815, align 8
  %241 = add i64 %230, 19
  store i64 %241, i64* %3, align 8
  %trunc = trunc i32 %232 to i3
  switch i3 %trunc, label %242 [
    i3 0, label %routine_shll__cl___edx.exit2812
    i3 1, label %250
  ]

; <label>:242:                                    ; preds = %block_.L_4ae880
  %243 = zext i32 %232 to i64
  %244 = add nuw nsw i64 %243, 4294967295
  %245 = and i64 %244, 4294967295
  %246 = shl i64 1, %245
  %247 = trunc i64 %246 to i32
  %248 = icmp slt i32 %247, 0
  %249 = shl i32 %247, 1
  br label %250

; <label>:250:                                    ; preds = %block_.L_4ae880, %242
  %251 = phi i1 [ %248, %242 ], [ false, %block_.L_4ae880 ]
  %252 = phi i32 [ %249, %242 ], [ 2, %block_.L_4ae880 ]
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDX.i2815, align 8
  %254 = zext i1 %251 to i8
  store i8 %254, i8* %14, align 1
  %255 = and i32 %252, 254
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %260 = icmp eq i32 %252, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1
  %262 = lshr i32 %252, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___edx.exit2812

routine_shll__cl___edx.exit2812:                  ; preds = %250, %block_.L_4ae880
  %264 = phi i32 [ %252, %250 ], [ 1, %block_.L_4ae880 ]
  %EDX.i2808 = bitcast %union.anon* %240 to i32*
  store i32 %264, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  store i8 0, i8* %14, align 1
  store i8 %237, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %239, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %233, i64* %RCX.i2831.pre-phi, align 8
  store i64 1, i64* %RDX.i2815, align 8
  %265 = add i64 %230, 42
  store i64 %265, i64* %3, align 8
  %trunc202 = trunc i32 %232 to i3
  switch i3 %trunc202, label %266 [
    i3 0, label %routine_shll__cl___edx.exit2796
    i3 1, label %274
  ]

; <label>:266:                                    ; preds = %routine_shll__cl___edx.exit2812
  %267 = zext i32 %232 to i64
  %268 = add nuw nsw i64 %267, 4294967295
  %269 = and i64 %268, 4294967295
  %270 = shl i64 1, %269
  %271 = trunc i64 %270 to i32
  %272 = icmp slt i32 %271, 0
  %273 = shl i32 %271, 1
  br label %274

; <label>:274:                                    ; preds = %routine_shll__cl___edx.exit2812, %266
  %275 = phi i1 [ %272, %266 ], [ false, %routine_shll__cl___edx.exit2812 ]
  %276 = phi i32 [ %273, %266 ], [ 2, %routine_shll__cl___edx.exit2812 ]
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDX.i2815, align 8
  %278 = zext i1 %275 to i8
  store i8 %278, i8* %14, align 1
  %279 = and i32 %276, 254
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %284 = icmp eq i32 %276, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %30, align 1
  %286 = lshr i32 %276, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___edx.exit2796

routine_shll__cl___edx.exit2796:                  ; preds = %274, %routine_shll__cl___edx.exit2812
  %288 = phi i32 [ %276, %274 ], [ 1, %routine_shll__cl___edx.exit2812 ]
  store i32 %288, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  store i64 %231, i64* %RCX.i2831.pre-phi, align 8
  store i64 1, i64* %RDX.i2815, align 8
  %289 = add i64 %230, 60
  store i64 %289, i64* %3, align 8
  %addconv = add nuw nsw i32 %229, 7
  %290 = and i32 %addconv, 7
  %291 = zext i32 %290 to i64
  %292 = shl i64 1, %291
  %293 = trunc i64 %292 to i32
  %294 = shl nuw nsw i32 %293, 1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RDX.i2815, align 8
  store i8 0, i8* %14, align 1
  %296 = and i32 %294, 254
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %301 = icmp eq i32 %293, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -804
  %305 = add i64 %230, 66
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  store i32 %294, i32* %306, align 4
  %307 = load i64, i64* %3, align 8
  %308 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RCX.i2831.pre-phi, align 8
  %310 = load i32, i32* %EAX.i2833.pre-phi, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RDX.i2815, align 8
  %312 = add i64 %307, 11
  store i64 %312, i64* %3, align 8
  %313 = trunc i32 %308 to i5
  switch i5 %313, label %319 [
    i5 0, label %routine_shll__cl___edx.exit2773
    i5 1, label %314
  ]

; <label>:314:                                    ; preds = %routine_shll__cl___edx.exit2796
  %315 = shl i32 %310, 1
  %316 = icmp slt i32 %310, 0
  %317 = icmp slt i32 %315, 0
  %318 = xor i1 %316, %317
  br label %328

; <label>:319:                                    ; preds = %routine_shll__cl___edx.exit2796
  %320 = and i32 %308, 31
  %321 = zext i32 %320 to i64
  %322 = add nuw nsw i64 %321, 4294967295
  %323 = and i64 %322, 4294967295
  %324 = shl i64 %311, %323
  %325 = trunc i64 %324 to i32
  %326 = icmp slt i32 %325, 0
  %327 = shl i32 %325, 1
  br label %328

; <label>:328:                                    ; preds = %319, %314
  %329 = phi i1 [ %316, %314 ], [ %326, %319 ]
  %330 = phi i1 [ %318, %314 ], [ false, %319 ]
  %331 = phi i32 [ %315, %314 ], [ %327, %319 ]
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RDX.i2815, align 8
  %333 = zext i1 %329 to i8
  store i8 %333, i8* %14, align 1
  %334 = and i32 %331, 254
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %339 = icmp eq i32 %331, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %30, align 1
  %341 = lshr i32 %331, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %33, align 1
  %343 = zext i1 %330 to i8
  store i8 %343, i8* %39, align 1
  br label %routine_shll__cl___edx.exit2773

routine_shll__cl___edx.exit2773:                  ; preds = %328, %routine_shll__cl___edx.exit2796
  %344 = phi i32 [ %331, %328 ], [ %310, %routine_shll__cl___edx.exit2796 ]
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -800
  %347 = add i64 %307, 17
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  store i32 %344, i32* %348, align 4
  %349 = load i64, i64* %3, align 8
  %350 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RCX.i2831.pre-phi, align 8
  %352 = load i64, i64* %RAX.i2857, align 8
  %353 = add i64 %349, 9
  store i64 %353, i64* %3, align 8
  %354 = trunc i32 %350 to i5
  %355 = trunc i64 %352 to i32
  switch i5 %354, label %361 [
    i5 0, label %routine_shll__cl___eax.exit2764
    i5 1, label %356
  ]

; <label>:356:                                    ; preds = %routine_shll__cl___edx.exit2773
  %357 = shl i32 %355, 1
  %358 = icmp slt i32 %355, 0
  %359 = icmp slt i32 %357, 0
  %360 = xor i1 %358, %359
  br label %371

; <label>:361:                                    ; preds = %routine_shll__cl___edx.exit2773
  %362 = and i32 %350, 31
  %363 = zext i32 %362 to i64
  %364 = add nuw nsw i64 %363, 4294967295
  %365 = and i64 %352, 4294967295
  %366 = and i64 %364, 4294967295
  %367 = shl i64 %365, %366
  %368 = trunc i64 %367 to i32
  %369 = icmp slt i32 %368, 0
  %370 = shl i32 %368, 1
  br label %371

; <label>:371:                                    ; preds = %361, %356
  %372 = phi i1 [ %358, %356 ], [ %369, %361 ]
  %373 = phi i1 [ %360, %356 ], [ false, %361 ]
  %374 = phi i32 [ %357, %356 ], [ %370, %361 ]
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX.i2857, align 8
  %376 = zext i1 %372 to i8
  store i8 %376, i8* %14, align 1
  %377 = and i32 %374, 254
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %382 = icmp eq i32 %374, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %30, align 1
  %384 = lshr i32 %374, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %33, align 1
  %386 = zext i1 %373 to i8
  store i8 %386, i8* %39, align 1
  br label %routine_shll__cl___eax.exit2764

routine_shll__cl___eax.exit2764:                  ; preds = %371, %routine_shll__cl___edx.exit2773
  %387 = phi i32 [ %374, %371 ], [ %355, %routine_shll__cl___edx.exit2773 ]
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -796
  %390 = add i64 %349, 15
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 %387, i32* %391, align 4
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -4
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i32*
  store i32 0, i32* %396, align 4
  %ECX.i2747 = bitcast %union.anon* %.pre-phi to i32*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2716 = getelementptr inbounds %union.anon, %union.anon* %397, i64 0, i32 0
  %RDI.i2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %ESI.i2694 = bitcast %union.anon* %397 to i32*
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_4ae8e9

block_.L_4ae8e9:                                  ; preds = %block_.L_4ae9f4, %routine_shll__cl___eax.exit2764
  %398 = phi i64 [ %864, %block_.L_4ae9f4 ], [ %.pre141, %routine_shll__cl___eax.exit2764 ]
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -4
  %401 = add i64 %398, 3
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX.i2857, align 8
  %405 = add i64 %399, -808
  %406 = add i64 %398, 9
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, 2
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RCX.i2831.pre-phi, align 8
  %411 = lshr i32 %409, 31
  %412 = sub i32 %403, %409
  %413 = icmp ult i32 %403, %409
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %14, align 1
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i32 %409, %403
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %27, align 1
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %30, align 1
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %33, align 1
  %429 = lshr i32 %403, 31
  %430 = xor i32 %411, %429
  %431 = xor i32 %427, %429
  %432 = add nuw nsw i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = icmp ne i8 %428, 0
  %436 = xor i1 %435, %433
  %.v225 = select i1 %436, i64 20, i64 286
  %437 = add i64 %398, %.v225
  store i64 %437, i64* %3, align 8
  br i1 %436, label %block_4ae8fd, label %block_.L_4aea07

block_4ae8fd:                                     ; preds = %block_.L_4ae8e9
  %438 = add i64 %399, -8
  %439 = add i64 %437, 7
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 0, i32* %440, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_4ae904

block_.L_4ae904:                                  ; preds = %block_.L_4ae9e1, %block_4ae8fd
  %441 = phi i64 [ %836, %block_.L_4ae9e1 ], [ %.pre196, %block_4ae8fd ]
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -8
  %444 = add i64 %441, 3
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX.i2857, align 8
  %448 = add i64 %442, -4
  %449 = add i64 %441, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RCX.i2831.pre-phi, align 8
  %453 = shl nsw i64 %452, 2
  %454 = add nsw i64 %453, 7489456
  %455 = add i64 %441, 14
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = sub i32 %446, %457
  %459 = icmp ult i32 %446, %457
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %14, align 1
  %461 = and i32 %458, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  %466 = xor i32 %457, %446
  %467 = xor i32 %466, %458
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %27, align 1
  %471 = icmp eq i32 %458, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %30, align 1
  %473 = lshr i32 %458, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %33, align 1
  %475 = lshr i32 %446, 31
  %476 = lshr i32 %457, 31
  %477 = xor i32 %476, %475
  %478 = xor i32 %473, %475
  %479 = add nuw nsw i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %39, align 1
  %482 = icmp ne i8 %474, 0
  %483 = xor i1 %482, %480
  %.v220 = select i1 %483, i64 20, i64 240
  %484 = add i64 %441, %.v220
  store i64 %484, i64* %3, align 8
  br i1 %483, label %block_4ae918, label %block_.L_4ae9f4

block_4ae918:                                     ; preds = %block_.L_4ae904
  %485 = add i64 %442, -12
  %486 = add i64 %484, 7
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  store i32 0, i32* %487, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_4ae91f

block_.L_4ae91f:                                  ; preds = %block_4ae929, %block_4ae918
  %488 = phi i64 [ %806, %block_4ae929 ], [ %.pre197, %block_4ae918 ]
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -12
  %491 = add i64 %488, 4
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, -3
  %495 = icmp ult i32 %493, 3
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %14, align 1
  %497 = and i32 %494, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %21, align 1
  %502 = xor i32 %494, %493
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %27, align 1
  %506 = icmp eq i32 %494, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %30, align 1
  %508 = lshr i32 %494, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %33, align 1
  %510 = lshr i32 %493, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %510
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %39, align 1
  %515 = icmp ne i8 %509, 0
  %516 = xor i1 %515, %513
  %.v221 = select i1 %516, i64 10, i64 194
  %517 = add i64 %488, %.v221
  store i64 %517, i64* %3, align 8
  br i1 %516, label %block_4ae929, label %block_.L_4ae9e1

block_4ae929:                                     ; preds = %block_.L_4ae91f
  %518 = add i64 %489, -1888
  store i64 %518, i64* %RAX.i2857, align 8
  %519 = add i64 %489, -2976
  store i64 %519, i64* %RCX.i2831.pre-phi, align 8
  %520 = add i64 %517, 18
  store i64 %520, i64* %3, align 8
  %521 = load i32, i32* %492, align 4
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RDX.i2815, align 8
  %523 = shl nsw i64 %522, 2
  %524 = add i64 %489, -804
  %525 = add i64 %524, %523
  %526 = add i64 %517, 25
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RSI.i2716, align 8
  %530 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %530, i64* %RDX.i2815, align 8
  %531 = add i64 %489, -4
  %532 = add i64 %517, 37
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  store i64 %535, i64* %RDI.i2710, align 8
  %536 = shl nsw i64 %535, 3
  %537 = add i64 %536, %530
  %538 = add i64 %517, 41
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RDX.i2815, align 8
  %541 = add i64 %489, -8
  %542 = add i64 %517, 45
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  store i64 %545, i64* %RDI.i2710, align 8
  %546 = shl nsw i64 %545, 3
  %547 = add i64 %546, %540
  %548 = add i64 %517, 49
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RDX.i2815, align 8
  %551 = add i64 %517, 53
  store i64 %551, i64* %3, align 8
  %552 = load i32, i32* %492, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RDI.i2710, align 8
  %554 = shl nsw i64 %553, 2
  %555 = add i64 %554, %550
  %556 = add i64 %517, 56
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %528, i32* %557, align 4
  %558 = load i64, i64* %3, align 8
  %559 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %559, i64* %RDX.i2815, align 8
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -4
  %562 = add i64 %558, 12
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  store i64 %565, i64* %RDI.i2710, align 8
  %566 = shl nsw i64 %565, 3
  %567 = add i64 %566, %559
  %568 = add i64 %558, 16
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RDX.i2815, align 8
  %571 = add i64 %560, -8
  %572 = add i64 %558, 20
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  store i64 %575, i64* %RDI.i2710, align 8
  %576 = shl nsw i64 %575, 3
  %577 = add i64 %576, %570
  %578 = add i64 %558, 24
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RDX.i2815, align 8
  %581 = add i64 %560, -12
  %582 = add i64 %558, 28
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RDI.i2710, align 8
  %586 = shl nsw i64 %585, 2
  %587 = add i64 %586, %580
  %588 = add i64 %558, 35
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  store i32 0, i32* %589, align 4
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -4
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 4
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = add i64 %592, 11
  store i64 %597, i64* %3, align 8
  %598 = sext i32 %595 to i128
  %599 = and i128 %598, -18446744073709551616
  %600 = zext i64 %596 to i128
  %601 = or i128 %599, %600
  %602 = mul nsw i128 %601, 180
  %603 = trunc i128 %602 to i64
  store i64 %603, i64* %RDX.i2815, align 8
  %604 = sext i64 %603 to i128
  %605 = icmp ne i128 %604, %602
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %14, align 1
  %607 = trunc i128 %602 to i32
  %608 = and i32 %607, 252
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %613 = lshr i64 %603, 63
  %614 = trunc i64 %613 to i8
  store i8 %614, i8* %33, align 1
  store i8 %606, i8* %39, align 1
  %615 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %616 = add i64 %603, %615
  store i64 %616, i64* %RCX.i2831.pre-phi, align 8
  %617 = icmp ult i64 %616, %615
  %618 = icmp ult i64 %616, %603
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = trunc i64 %616 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = xor i64 %603, %615
  %628 = xor i64 %627, %616
  %629 = lshr i64 %628, 4
  %630 = trunc i64 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %27, align 1
  %632 = icmp eq i64 %616, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %30, align 1
  %634 = lshr i64 %616, 63
  %635 = trunc i64 %634 to i8
  store i8 %635, i8* %33, align 1
  %636 = lshr i64 %615, 63
  %637 = xor i64 %634, %636
  %638 = xor i64 %634, %613
  %639 = add nuw nsw i64 %637, %638
  %640 = icmp eq i64 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %39, align 1
  %642 = add i64 %590, -8
  %643 = add i64 %592, 18
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = mul nsw i64 %646, 12
  store i64 %647, i64* %RDX.i2815, align 8
  %648 = lshr i64 %647, 63
  %649 = add i64 %647, %616
  store i64 %649, i64* %RCX.i2831.pre-phi, align 8
  %650 = icmp ult i64 %649, %616
  %651 = icmp ult i64 %649, %647
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %14, align 1
  %654 = trunc i64 %649 to i32
  %655 = and i32 %654, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %21, align 1
  %660 = xor i64 %647, %616
  %661 = xor i64 %660, %649
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %27, align 1
  %665 = icmp eq i64 %649, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %30, align 1
  %667 = lshr i64 %649, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %33, align 1
  %669 = xor i64 %667, %634
  %670 = xor i64 %667, %648
  %671 = add nuw nsw i64 %669, %670
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %39, align 1
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -12
  %676 = add i64 %592, 29
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RDX.i2815, align 8
  %680 = shl nsw i64 %679, 2
  %681 = add i64 %680, %649
  %682 = add i64 %592, 36
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  store i32 0, i32* %683, align 4
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -12
  %686 = load i64, i64* %3, align 8
  %687 = add i64 %686, 4
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RCX.i2831.pre-phi, align 8
  %691 = shl nsw i64 %690, 2
  %692 = add i64 %684, -804
  %693 = add i64 %692, %691
  %694 = add i64 %686, 11
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RSI.i2716, align 8
  %698 = add i64 %684, -4
  %699 = add i64 %686, 15
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = sext i32 %701 to i64
  %703 = mul nsw i64 %702, 180
  store i64 %703, i64* %RCX.i2831.pre-phi, align 8
  %704 = lshr i64 %703, 63
  %705 = load i64, i64* %RAX.i2857, align 8
  %706 = add i64 %703, %705
  store i64 %706, i64* %RAX.i2857, align 8
  %707 = icmp ult i64 %706, %705
  %708 = icmp ult i64 %706, %703
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = trunc i64 %706 to i32
  %712 = and i32 %711, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i64 %703, %705
  %718 = xor i64 %717, %706
  %719 = lshr i64 %718, 4
  %720 = trunc i64 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %27, align 1
  %722 = icmp eq i64 %706, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %30, align 1
  %724 = lshr i64 %706, 63
  %725 = trunc i64 %724 to i8
  store i8 %725, i8* %33, align 1
  %726 = lshr i64 %705, 63
  %727 = xor i64 %724, %726
  %728 = xor i64 %724, %704
  %729 = add nuw nsw i64 %727, %728
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %39, align 1
  %732 = add i64 %684, -8
  %733 = add i64 %686, 29
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  %737 = mul nsw i64 %736, 12
  store i64 %737, i64* %RCX.i2831.pre-phi, align 8
  %738 = lshr i64 %737, 63
  %739 = add i64 %737, %706
  store i64 %739, i64* %RAX.i2857, align 8
  %740 = icmp ult i64 %739, %706
  %741 = icmp ult i64 %739, %737
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %14, align 1
  %744 = trunc i64 %739 to i32
  %745 = and i32 %744, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  %750 = xor i64 %737, %706
  %751 = xor i64 %750, %739
  %752 = lshr i64 %751, 4
  %753 = trunc i64 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %27, align 1
  %755 = icmp eq i64 %739, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %30, align 1
  %757 = lshr i64 %739, 63
  %758 = trunc i64 %757 to i8
  store i8 %758, i8* %33, align 1
  %759 = xor i64 %757, %724
  %760 = xor i64 %757, %738
  %761 = add nuw nsw i64 %759, %760
  %762 = icmp eq i64 %761, 2
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %39, align 1
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -12
  %766 = add i64 %686, 40
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %RCX.i2831.pre-phi, align 8
  %770 = shl nsw i64 %769, 2
  %771 = add i64 %770, %739
  %772 = load i32, i32* %ESI.i2694, align 4
  %773 = add i64 %686, 43
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i32*
  store i32 %772, i32* %774, align 4
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -12
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, 3
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %776 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = add i32 %780, 1
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RAX.i2857, align 8
  %783 = icmp eq i32 %780, -1
  %784 = icmp eq i32 %781, 0
  %785 = or i1 %783, %784
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %14, align 1
  %787 = and i32 %781, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %21, align 1
  %792 = xor i32 %781, %780
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %27, align 1
  %796 = zext i1 %784 to i8
  store i8 %796, i8* %30, align 1
  %797 = lshr i32 %781, 31
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %33, align 1
  %799 = lshr i32 %780, 31
  %800 = xor i32 %797, %799
  %801 = add nuw nsw i32 %800, %797
  %802 = icmp eq i32 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %39, align 1
  %804 = add i64 %777, 9
  store i64 %804, i64* %3, align 8
  store i32 %781, i32* %779, align 4
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, -189
  store i64 %806, i64* %3, align 8
  br label %block_.L_4ae91f

block_.L_4ae9e1:                                  ; preds = %block_.L_4ae91f
  %807 = add i64 %489, -8
  %808 = add i64 %517, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = add i32 %810, 1
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RAX.i2857, align 8
  %813 = icmp eq i32 %810, -1
  %814 = icmp eq i32 %811, 0
  %815 = or i1 %813, %814
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = and i32 %811, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = xor i32 %811, %810
  %823 = lshr i32 %822, 4
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %27, align 1
  %826 = zext i1 %814 to i8
  store i8 %826, i8* %30, align 1
  %827 = lshr i32 %811, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %33, align 1
  %829 = lshr i32 %810, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %827
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %39, align 1
  %834 = add i64 %517, 14
  store i64 %834, i64* %3, align 8
  store i32 %811, i32* %809, align 4
  %835 = load i64, i64* %3, align 8
  %836 = add i64 %835, -235
  store i64 %836, i64* %3, align 8
  br label %block_.L_4ae904

block_.L_4ae9f4:                                  ; preds = %block_.L_4ae904
  %837 = add i64 %484, 8
  store i64 %837, i64* %3, align 8
  %838 = load i32, i32* %450, align 4
  %839 = add i32 %838, 1
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i2857, align 8
  %841 = icmp eq i32 %838, -1
  %842 = icmp eq i32 %839, 0
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %14, align 1
  %845 = and i32 %839, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  %850 = xor i32 %839, %838
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %27, align 1
  %854 = zext i1 %842 to i8
  store i8 %854, i8* %30, align 1
  %855 = lshr i32 %839, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %33, align 1
  %857 = lshr i32 %838, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %855
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %39, align 1
  %862 = add i64 %484, 14
  store i64 %862, i64* %3, align 8
  store i32 %839, i32* %450, align 4
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, -281
  store i64 %864, i64* %3, align 8
  br label %block_.L_4ae8e9

block_.L_4aea07:                                  ; preds = %block_.L_4ae8e9
  %865 = add i64 %437, 7
  store i64 %865, i64* %3, align 8
  store i32 0, i32* %402, align 4
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_4aea0e

block_.L_4aea0e:                                  ; preds = %block_.L_4aeee0, %block_.L_4aea07
  %867 = phi i64 [ %.pre142, %block_.L_4aea07 ], [ %2998, %block_.L_4aeee0 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4aea07 ], [ %MEMORY.7, %block_.L_4aeee0 ]
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -4
  %870 = add i64 %867, 3
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i2857, align 8
  %874 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %875 = sub i32 %872, %874
  %876 = icmp ult i32 %872, %874
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %14, align 1
  %878 = and i32 %875, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %21, align 1
  %883 = xor i32 %874, %872
  %884 = xor i32 %883, %875
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %27, align 1
  %888 = icmp eq i32 %875, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %30, align 1
  %890 = lshr i32 %875, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %33, align 1
  %892 = lshr i32 %872, 31
  %893 = lshr i32 %874, 31
  %894 = xor i32 %893, %892
  %895 = xor i32 %890, %892
  %896 = add nuw nsw i32 %895, %894
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %39, align 1
  %899 = icmp ne i8 %891, 0
  %900 = xor i1 %899, %897
  %.v205 = select i1 %900, i64 16, i64 1253
  %901 = add i64 %867, %.v205
  store i64 %901, i64* %3, align 8
  br i1 %900, label %block_4aea1e, label %block_.L_4aeef3

block_4aea1e:                                     ; preds = %block_.L_4aea0e
  %902 = add i64 %868, -8
  %903 = add i64 %901, 7
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  store i32 0, i32* %904, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_4aea25

block_.L_4aea25:                                  ; preds = %block_.L_4aeecd, %block_4aea1e
  %905 = phi i64 [ %.pre180, %block_4aea1e ], [ %2968, %block_.L_4aeecd ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_4aea1e ], [ %MEMORY.12, %block_.L_4aeecd ]
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -8
  %908 = add i64 %905, 3
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RAX.i2857, align 8
  %912 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %913 = sub i32 %910, %912
  %914 = icmp ult i32 %910, %912
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %14, align 1
  %916 = and i32 %913, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %21, align 1
  %921 = xor i32 %912, %910
  %922 = xor i32 %921, %913
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %27, align 1
  %926 = icmp eq i32 %913, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %30, align 1
  %928 = lshr i32 %913, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %33, align 1
  %930 = lshr i32 %910, 31
  %931 = lshr i32 %912, 31
  %932 = xor i32 %931, %930
  %933 = xor i32 %928, %930
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %39, align 1
  %937 = icmp ne i8 %929, 0
  %938 = xor i1 %937, %935
  %.v218 = select i1 %938, i64 16, i64 1211
  %939 = add i64 %905, %.v218
  store i64 %939, i64* %3, align 8
  br i1 %938, label %block_4aea35, label %block_.L_4aeee0

block_4aea35:                                     ; preds = %block_.L_4aea25
  %940 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %940, i64* %RAX.i2857, align 8
  %941 = add i64 %939, 12
  store i64 %941, i64* %3, align 8
  %942 = load i32, i32* %909, align 4
  %943 = sext i32 %942 to i64
  store i64 %943, i64* %RCX.i2831.pre-phi, align 8
  %944 = shl nsw i64 %943, 3
  %945 = add i64 %944, %940
  %946 = add i64 %939, 16
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RAX.i2857, align 8
  %949 = add i64 %948, 4
  %950 = add i64 %939, 19
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RDX.i2815, align 8
  %954 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %954, i64* %RAX.i2857, align 8
  %955 = add i64 %906, -4
  %956 = add i64 %939, 31
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = sext i32 %958 to i64
  store i64 %959, i64* %RCX.i2831.pre-phi, align 8
  %960 = shl nsw i64 %959, 3
  %961 = add i64 %960, %954
  %962 = add i64 %939, 35
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RAX.i2857, align 8
  %965 = add i64 %964, 4
  %966 = add i64 %939, 38
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = sub i32 %952, %968
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RDX.i2815, align 8
  %971 = lshr i32 %969, 31
  %972 = add i32 %969, 128
  %973 = icmp ult i32 %969, -128
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %972, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %972, %969
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %27, align 1
  %984 = icmp eq i32 %972, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %30, align 1
  %986 = lshr i32 %972, 31
  %987 = trunc i32 %986 to i8
  store i8 %987, i8* %33, align 1
  %988 = xor i32 %971, 1
  %989 = xor i32 %986, %971
  %990 = add nuw nsw i32 %989, %988
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %39, align 1
  %993 = icmp ne i8 %987, 0
  %994 = xor i1 %993, %991
  %.v248 = select i1 %994, i64 47, i64 63
  %995 = add i64 %939, %.v248
  store i64 %995, i64* %3, align 8
  br i1 %994, label %block_4aea64, label %block_.L_4aea74

block_4aea64:                                     ; preds = %block_4aea35
  store i64 4294967168, i64* %RAX.i2857, align 8
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -35424
  %998 = add i64 %995, 11
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  store i32 -128, i32* %999, align 4
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 124
  store i64 %1001, i64* %3, align 8
  br label %block_.L_4aeaeb

block_.L_4aea74:                                  ; preds = %block_4aea35
  %1002 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %1002, i64* %RAX.i2857, align 8
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -8
  %1005 = add i64 %995, 12
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i2831.pre-phi, align 8
  %1009 = shl nsw i64 %1008, 3
  %1010 = add i64 %1009, %1002
  %1011 = add i64 %995, 16
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RAX.i2857, align 8
  %1014 = add i64 %1013, 4
  %1015 = add i64 %995, 19
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RDX.i2815, align 8
  store i64 %954, i64* %RAX.i2857, align 8
  %1019 = add i64 %1003, -4
  %1020 = add i64 %995, 31
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RCX.i2831.pre-phi, align 8
  %1024 = shl nsw i64 %1023, 3
  %1025 = add i64 %1024, %954
  %1026 = add i64 %995, 35
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX.i2857, align 8
  %1029 = add i64 %1028, 4
  %1030 = add i64 %995, 38
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = sub i32 %1017, %1032
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RDX.i2815, align 8
  %1035 = lshr i32 %1033, 31
  %1036 = add i32 %1033, -127
  %1037 = icmp ult i32 %1033, 127
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %14, align 1
  %1039 = and i32 %1036, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %21, align 1
  %1044 = xor i32 %1033, 16
  %1045 = xor i32 %1044, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %27, align 1
  %1049 = icmp eq i32 %1036, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %30, align 1
  %1051 = lshr i32 %1036, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %33, align 1
  %1053 = xor i32 %1051, %1035
  %1054 = add nuw nsw i32 %1053, %1035
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %39, align 1
  %1057 = icmp ne i8 %1052, 0
  %1058 = xor i1 %1057, %1055
  %1059 = or i1 %1049, %1058
  %.v249 = select i1 %1059, i64 63, i64 47
  %1060 = add i64 %995, %.v249
  store i64 %1060, i64* %3, align 8
  br i1 %1059, label %block_.L_4aeab3, label %block_4aeaa3

block_4aeaa3:                                     ; preds = %block_.L_4aea74
  store i64 127, i64* %RAX.i2857, align 8
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -35428
  %1063 = add i64 %1060, 11
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  store i32 127, i32* %1064, align 4
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, 49
  store i64 %1066, i64* %3, align 8
  br label %block_.L_4aeadf

block_.L_4aeab3:                                  ; preds = %block_.L_4aea74
  %1067 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %1067, i64* %RAX.i2857, align 8
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -8
  %1070 = add i64 %1060, 12
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sext i32 %1072 to i64
  store i64 %1073, i64* %RCX.i2831.pre-phi, align 8
  %1074 = shl nsw i64 %1073, 3
  %1075 = add i64 %1074, %1067
  %1076 = add i64 %1060, 16
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  %1078 = load i64, i64* %1077, align 8
  store i64 %1078, i64* %RAX.i2857, align 8
  %1079 = add i64 %1078, 4
  %1080 = add i64 %1060, 19
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDX.i2815, align 8
  %1084 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1084, i64* %RAX.i2857, align 8
  %1085 = add i64 %1068, -4
  %1086 = add i64 %1060, 31
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RCX.i2831.pre-phi, align 8
  %1090 = shl nsw i64 %1089, 3
  %1091 = add i64 %1090, %1084
  %1092 = add i64 %1060, 35
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX.i2857, align 8
  %1095 = add i64 %1094, 4
  %1096 = add i64 %1060, 38
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sub i32 %1082, %1098
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RDX.i2815, align 8
  %1101 = icmp ult i32 %1082, %1098
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1099, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1098, %1082
  %1109 = xor i32 %1108, %1099
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %27, align 1
  %1113 = icmp eq i32 %1099, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %30, align 1
  %1115 = lshr i32 %1099, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %33, align 1
  %1117 = lshr i32 %1082, 31
  %1118 = lshr i32 %1098, 31
  %1119 = xor i32 %1118, %1117
  %1120 = xor i32 %1115, %1117
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %39, align 1
  %1124 = add i64 %1068, -35428
  %1125 = add i64 %1060, 44
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  store i32 %1099, i32* %1126, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_4aeadf

block_.L_4aeadf:                                  ; preds = %block_.L_4aeab3, %block_4aeaa3
  %1127 = phi i64 [ %.pre181, %block_.L_4aeab3 ], [ %1066, %block_4aeaa3 ]
  %1128 = load i64, i64* %RBP.i, align 8
  %1129 = add i64 %1128, -35428
  %1130 = add i64 %1127, 6
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RAX.i2857, align 8
  %1134 = add i64 %1128, -35424
  %1135 = add i64 %1127, 12
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  store i32 %1132, i32* %1136, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_4aeaeb

block_.L_4aeaeb:                                  ; preds = %block_.L_4aeadf, %block_4aea64
  %1137 = phi i64 [ %.pre182, %block_.L_4aeadf ], [ %1001, %block_4aea64 ]
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -35424
  %1140 = add i64 %1137, 6
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i2857, align 8
  %1144 = add i64 %1138, -35408
  %1145 = add i64 %1137, 12
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  store i32 %1142, i32* %1146, align 4
  %1147 = load i64, i64* %3, align 8
  %1148 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1148, i64* %RCX.i2831.pre-phi, align 8
  %1149 = add i64 %1148, 4
  %1150 = add i64 %1147, 11
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RAX.i2857, align 8
  %1154 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1154, i64* %RCX.i2831.pre-phi, align 8
  %1155 = load i64, i64* %RBP.i, align 8
  %1156 = add i64 %1155, -4
  %1157 = add i64 %1147, 23
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = sext i32 %1159 to i64
  store i64 %1160, i64* %RDX.i2815, align 8
  %1161 = shl nsw i64 %1160, 3
  %1162 = add i64 %1161, %1154
  %1163 = add i64 %1147, 27
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RCX.i2831.pre-phi, align 8
  %1166 = add i64 %1165, 4
  %1167 = add i64 %1147, 30
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = sub i32 %1152, %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RAX.i2857, align 8
  %1172 = lshr i32 %1170, 31
  %1173 = add i32 %1170, 128
  %1174 = icmp ult i32 %1170, -128
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %14, align 1
  %1176 = and i32 %1173, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %21, align 1
  %1181 = xor i32 %1173, %1170
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %27, align 1
  %1185 = icmp eq i32 %1173, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %30, align 1
  %1187 = lshr i32 %1173, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %33, align 1
  %1189 = xor i32 %1172, 1
  %1190 = xor i32 %1187, %1172
  %1191 = add nuw nsw i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %39, align 1
  %1194 = icmp ne i8 %1188, 0
  %1195 = xor i1 %1194, %1192
  %.v250 = select i1 %1195, i64 39, i64 55
  %1196 = add i64 %1147, %.v250
  store i64 %1196, i64* %3, align 8
  br i1 %1195, label %block_4aeb1e, label %block_.L_4aeb2e

block_4aeb1e:                                     ; preds = %block_.L_4aeaeb
  store i64 4294967168, i64* %RAX.i2857, align 8
  %1197 = add i64 %1155, -35432
  %1198 = add i64 %1196, 11
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  store i32 -128, i32* %1199, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, 108
  store i64 %1201, i64* %3, align 8
  br label %block_.L_4aeb95

block_.L_4aeb2e:                                  ; preds = %block_.L_4aeaeb
  %1202 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1202, i64* %RAX.i2857, align 8
  %1203 = add i64 %1202, 4
  %1204 = add i64 %1196, 11
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RCX.i2831.pre-phi, align 8
  store i64 %1154, i64* %RAX.i2857, align 8
  %1208 = add i64 %1196, 23
  store i64 %1208, i64* %3, align 8
  %1209 = load i32, i32* %1158, align 4
  %1210 = sext i32 %1209 to i64
  store i64 %1210, i64* %RDX.i2815, align 8
  %1211 = shl nsw i64 %1210, 3
  %1212 = add i64 %1211, %1154
  %1213 = add i64 %1196, 27
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RAX.i2857, align 8
  %1216 = add i64 %1215, 4
  %1217 = add i64 %1196, 30
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = sub i32 %1206, %1219
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RCX.i2831.pre-phi, align 8
  %1222 = lshr i32 %1220, 31
  %1223 = add i32 %1220, -127
  %1224 = icmp ult i32 %1220, 127
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %14, align 1
  %1226 = and i32 %1223, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %21, align 1
  %1231 = xor i32 %1220, 16
  %1232 = xor i32 %1231, %1223
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %27, align 1
  %1236 = icmp eq i32 %1223, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %30, align 1
  %1238 = lshr i32 %1223, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %33, align 1
  %1240 = xor i32 %1238, %1222
  %1241 = add nuw nsw i32 %1240, %1222
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %39, align 1
  %1244 = icmp ne i8 %1239, 0
  %1245 = xor i1 %1244, %1242
  %1246 = or i1 %1236, %1245
  %.v251 = select i1 %1246, i64 55, i64 39
  %1247 = add i64 %1196, %.v251
  store i64 %1247, i64* %3, align 8
  br i1 %1246, label %block_.L_4aeb65, label %block_4aeb55

block_4aeb55:                                     ; preds = %block_.L_4aeb2e
  store i64 127, i64* %RAX.i2857, align 8
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -35436
  %1250 = add i64 %1247, 11
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  store i32 127, i32* %1251, align 4
  %1252 = load i64, i64* %3, align 8
  %1253 = add i64 %1252, 41
  store i64 %1253, i64* %3, align 8
  br label %block_.L_4aeb89

block_.L_4aeb65:                                  ; preds = %block_.L_4aeb2e
  %1254 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1254, i64* %RAX.i2857, align 8
  %1255 = add i64 %1254, 4
  %1256 = add i64 %1247, 11
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RCX.i2831.pre-phi, align 8
  %1260 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1260, i64* %RAX.i2857, align 8
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -4
  %1263 = add i64 %1247, 23
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = sext i32 %1265 to i64
  store i64 %1266, i64* %RDX.i2815, align 8
  %1267 = shl nsw i64 %1266, 3
  %1268 = add i64 %1267, %1260
  %1269 = add i64 %1247, 27
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %RAX.i2857, align 8
  %1272 = add i64 %1271, 4
  %1273 = add i64 %1247, 30
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = sub i32 %1258, %1275
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RCX.i2831.pre-phi, align 8
  %1278 = icmp ult i32 %1258, %1275
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %14, align 1
  %1280 = and i32 %1276, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %21, align 1
  %1285 = xor i32 %1275, %1258
  %1286 = xor i32 %1285, %1276
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %27, align 1
  %1290 = icmp eq i32 %1276, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %30, align 1
  %1292 = lshr i32 %1276, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %33, align 1
  %1294 = lshr i32 %1258, 31
  %1295 = lshr i32 %1275, 31
  %1296 = xor i32 %1295, %1294
  %1297 = xor i32 %1292, %1294
  %1298 = add nuw nsw i32 %1297, %1296
  %1299 = icmp eq i32 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %39, align 1
  %1301 = add i64 %1261, -35436
  %1302 = add i64 %1247, 36
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  store i32 %1276, i32* %1303, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_4aeb89

block_.L_4aeb89:                                  ; preds = %block_.L_4aeb65, %block_4aeb55
  %1304 = phi i64 [ %.pre183, %block_.L_4aeb65 ], [ %1253, %block_4aeb55 ]
  %1305 = load i64, i64* %RBP.i, align 8
  %1306 = add i64 %1305, -35436
  %1307 = add i64 %1304, 6
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX.i2857, align 8
  %1311 = add i64 %1305, -35432
  %1312 = add i64 %1304, 12
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  store i32 %1309, i32* %1313, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_4aeb95

block_.L_4aeb95:                                  ; preds = %block_.L_4aeb89, %block_4aeb1e
  %1314 = phi i64 [ %.pre184, %block_.L_4aeb89 ], [ %1201, %block_4aeb1e ]
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -35432
  %1317 = add i64 %1314, 6
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i2857, align 8
  %1321 = add i64 %1315, -35412
  %1322 = add i64 %1314, 12
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  store i32 %1319, i32* %1323, align 4
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -40
  %1326 = load i64, i64* %3, align 8
  %1327 = add i64 %1326, 7
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i32*
  store i32 0, i32* %1328, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_4aeba8

block_.L_4aeba8:                                  ; preds = %block_.L_4aeeba, %block_.L_4aeb95
  %1329 = phi i64 [ %.pre185, %block_.L_4aeb95 ], [ %2938, %block_.L_4aeeba ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.7, %block_.L_4aeb95 ], [ %MEMORY.17, %block_.L_4aeeba ]
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -40
  %1332 = add i64 %1329, 4
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = add i32 %1334, -3
  %1336 = icmp ult i32 %1334, 3
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = and i32 %1335, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %21, align 1
  %1343 = xor i32 %1335, %1334
  %1344 = lshr i32 %1343, 4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %27, align 1
  %1347 = icmp eq i32 %1335, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %30, align 1
  %1349 = lshr i32 %1335, 31
  %1350 = trunc i32 %1349 to i8
  store i8 %1350, i8* %33, align 1
  %1351 = lshr i32 %1334, 31
  %1352 = xor i32 %1349, %1351
  %1353 = add nuw nsw i32 %1352, %1351
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %39, align 1
  %1356 = icmp ne i8 %1350, 0
  %1357 = xor i1 %1356, %1354
  %.v219 = select i1 %1357, i64 10, i64 805
  %1358 = add i64 %1329, %.v219
  store i64 %1358, i64* %3, align 8
  br i1 %1357, label %block_4aebb2, label %block_.L_4aeecd

block_4aebb2:                                     ; preds = %block_.L_4aeba8
  %1359 = add i64 %1330, -35408
  %1360 = add i64 %1358, 7
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  store i8 0, i8* %14, align 1
  %1363 = and i32 %1362, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1368 = icmp eq i32 %1362, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %30, align 1
  %1370 = lshr i32 %1362, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v252 = select i1 %1368, i64 13, i64 210
  %1372 = add i64 %1358, %.v252
  store i64 %1372, i64* %3, align 8
  br i1 %1368, label %block_4aebbf, label %block_.L_4aec84

block_4aebbf:                                     ; preds = %block_4aebb2
  %1373 = add i64 %1330, -35392
  store i64 %1373, i64* %RAX.i2857, align 8
  %1374 = add i64 %1330, -19184
  store i64 %1374, i64* %RCX.i2831.pre-phi, align 8
  %1375 = add i64 %1372, 18
  store i64 %1375, i64* %3, align 8
  %1376 = load i32, i32* %1333, align 4
  %1377 = sext i32 %1376 to i64
  store i64 %1377, i64* %RDX.i2815, align 8
  %1378 = shl nsw i64 %1377, 2
  %1379 = add i64 %1330, -804
  %1380 = add i64 %1379, %1378
  %1381 = add i64 %1372, 25
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RSI.i2716, align 8
  %1385 = add i64 %1330, -16484
  store i64 %1385, i64* %RDX.i2815, align 8
  %1386 = icmp ugt i64 %1374, -2701
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %14, align 1
  %1388 = trunc i64 %1385 to i32
  %1389 = and i32 %1388, 255
  %1390 = tail call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  store i8 %1393, i8* %21, align 1
  %1394 = xor i64 %1385, %1374
  %1395 = lshr i64 %1394, 4
  %1396 = trunc i64 %1395 to i8
  %1397 = and i8 %1396, 1
  store i8 %1397, i8* %27, align 1
  %1398 = icmp eq i64 %1385, 0
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %30, align 1
  %1400 = lshr i64 %1385, 63
  %1401 = trunc i64 %1400 to i8
  store i8 %1401, i8* %33, align 1
  %1402 = lshr i64 %1374, 63
  %1403 = xor i64 %1400, %1402
  %1404 = add nuw nsw i64 %1403, %1400
  %1405 = icmp eq i64 %1404, 2
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %39, align 1
  %1407 = add i64 %1330, -4
  %1408 = add i64 %1372, 39
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = sext i32 %1410 to i64
  %1412 = mul nsw i64 %1411, 180
  store i64 %1412, i64* %RDI.i2710, align 8
  %1413 = lshr i64 %1412, 63
  %1414 = add i64 %1412, %1385
  store i64 %1414, i64* %RDX.i2815, align 8
  %1415 = icmp ult i64 %1414, %1385
  %1416 = icmp ult i64 %1414, %1412
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %14, align 1
  %1419 = trunc i64 %1414 to i32
  %1420 = and i32 %1419, 255
  %1421 = tail call i32 @llvm.ctpop.i32(i32 %1420)
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = xor i8 %1423, 1
  store i8 %1424, i8* %21, align 1
  %1425 = xor i64 %1412, %1385
  %1426 = xor i64 %1425, %1414
  %1427 = lshr i64 %1426, 4
  %1428 = trunc i64 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %27, align 1
  %1430 = icmp eq i64 %1414, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %30, align 1
  %1432 = lshr i64 %1414, 63
  %1433 = trunc i64 %1432 to i8
  store i8 %1433, i8* %33, align 1
  %1434 = xor i64 %1432, %1400
  %1435 = xor i64 %1432, %1413
  %1436 = add nuw nsw i64 %1434, %1435
  %1437 = icmp eq i64 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %39, align 1
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -8
  %1441 = add i64 %1372, 53
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = mul nsw i64 %1444, 12
  store i64 %1445, i64* %RDI.i2710, align 8
  %1446 = lshr i64 %1445, 63
  %1447 = add i64 %1445, %1414
  store i64 %1447, i64* %RDX.i2815, align 8
  %1448 = icmp ult i64 %1447, %1414
  %1449 = icmp ult i64 %1447, %1445
  %1450 = or i1 %1448, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %14, align 1
  %1452 = trunc i64 %1447 to i32
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  %1458 = xor i64 %1445, %1414
  %1459 = xor i64 %1458, %1447
  %1460 = lshr i64 %1459, 4
  %1461 = trunc i64 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %27, align 1
  %1463 = icmp eq i64 %1447, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %30, align 1
  %1465 = lshr i64 %1447, 63
  %1466 = trunc i64 %1465 to i8
  store i8 %1466, i8* %33, align 1
  %1467 = xor i64 %1465, %1432
  %1468 = xor i64 %1465, %1446
  %1469 = add nuw nsw i64 %1467, %1468
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %39, align 1
  %1472 = add i64 %1439, -40
  %1473 = add i64 %1372, 64
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to i32*
  %1475 = load i32, i32* %1474, align 4
  %1476 = sext i32 %1475 to i64
  store i64 %1476, i64* %RDI.i2710, align 8
  %1477 = shl nsw i64 %1476, 2
  %1478 = add i64 %1477, %1447
  %1479 = load i32, i32* %ESI.i2694, align 4
  %1480 = add i64 %1372, 67
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1478 to i32*
  store i32 %1479, i32* %1481, align 4
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -40
  %1484 = load i64, i64* %3, align 8
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RDX.i2815, align 8
  %1489 = shl nsw i64 %1488, 2
  %1490 = add i64 %1482, -804
  %1491 = add i64 %1490, %1489
  %1492 = add i64 %1484, 11
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RSI.i2716, align 8
  %1496 = add i64 %1482, -4
  %1497 = add i64 %1484, 15
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  %1501 = add i64 %1484, 22
  store i64 %1501, i64* %3, align 8
  %1502 = sext i32 %1499 to i128
  %1503 = and i128 %1502, -18446744073709551616
  %1504 = zext i64 %1500 to i128
  %1505 = or i128 %1503, %1504
  %1506 = mul nsw i128 %1505, 180
  %1507 = trunc i128 %1506 to i64
  store i64 %1507, i64* %RDX.i2815, align 8
  %1508 = sext i64 %1507 to i128
  %1509 = icmp ne i128 %1508, %1506
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %14, align 1
  %1511 = trunc i128 %1506 to i32
  %1512 = and i32 %1511, 252
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1517 = lshr i64 %1507, 63
  %1518 = trunc i64 %1517 to i8
  store i8 %1518, i8* %33, align 1
  store i8 %1510, i8* %39, align 1
  %1519 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %1520 = add i64 %1507, %1519
  store i64 %1520, i64* %RCX.i2831.pre-phi, align 8
  %1521 = icmp ult i64 %1520, %1519
  %1522 = icmp ult i64 %1520, %1507
  %1523 = or i1 %1521, %1522
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %14, align 1
  %1525 = trunc i64 %1520 to i32
  %1526 = and i32 %1525, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %21, align 1
  %1531 = xor i64 %1507, %1519
  %1532 = xor i64 %1531, %1520
  %1533 = lshr i64 %1532, 4
  %1534 = trunc i64 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %27, align 1
  %1536 = icmp eq i64 %1520, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %30, align 1
  %1538 = lshr i64 %1520, 63
  %1539 = trunc i64 %1538 to i8
  store i8 %1539, i8* %33, align 1
  %1540 = lshr i64 %1519, 63
  %1541 = xor i64 %1538, %1540
  %1542 = xor i64 %1538, %1517
  %1543 = add nuw nsw i64 %1541, %1542
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %39, align 1
  %1546 = add i64 %1482, -8
  %1547 = add i64 %1484, 29
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = sext i32 %1549 to i64
  %1551 = mul nsw i64 %1550, 12
  store i64 %1551, i64* %RDX.i2815, align 8
  %1552 = lshr i64 %1551, 63
  %1553 = add i64 %1551, %1520
  store i64 %1553, i64* %RCX.i2831.pre-phi, align 8
  %1554 = icmp ult i64 %1553, %1520
  %1555 = icmp ult i64 %1553, %1551
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %14, align 1
  %1558 = trunc i64 %1553 to i32
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  %1564 = xor i64 %1551, %1520
  %1565 = xor i64 %1564, %1553
  %1566 = lshr i64 %1565, 4
  %1567 = trunc i64 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %27, align 1
  %1569 = icmp eq i64 %1553, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %30, align 1
  %1571 = lshr i64 %1553, 63
  %1572 = trunc i64 %1571 to i8
  store i8 %1572, i8* %33, align 1
  %1573 = xor i64 %1571, %1538
  %1574 = xor i64 %1571, %1552
  %1575 = add nuw nsw i64 %1573, %1574
  %1576 = icmp eq i64 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %39, align 1
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -40
  %1580 = add i64 %1484, 40
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RDX.i2815, align 8
  %1584 = shl nsw i64 %1583, 2
  %1585 = add i64 %1584, %1553
  %1586 = load i32, i32* %ESI.i2694, align 4
  %1587 = add i64 %1484, 43
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1585 to i32*
  store i32 %1586, i32* %1588, align 4
  %1589 = load i64, i64* %RAX.i2857, align 8
  %1590 = load i64, i64* %3, align 8
  %1591 = add i64 %1589, 2700
  store i64 %1591, i64* %RCX.i2831.pre-phi, align 8
  %1592 = icmp ugt i64 %1589, -2701
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %14, align 1
  %1594 = trunc i64 %1591 to i32
  %1595 = and i32 %1594, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %21, align 1
  %1600 = xor i64 %1591, %1589
  %1601 = lshr i64 %1600, 4
  %1602 = trunc i64 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %27, align 1
  %1604 = icmp eq i64 %1591, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %30, align 1
  %1606 = lshr i64 %1591, 63
  %1607 = trunc i64 %1606 to i8
  store i8 %1607, i8* %33, align 1
  %1608 = lshr i64 %1589, 63
  %1609 = xor i64 %1606, %1608
  %1610 = add nuw nsw i64 %1609, %1606
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %39, align 1
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -4
  %1615 = add i64 %1590, 14
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = sext i32 %1617 to i64
  %1619 = mul nsw i64 %1618, 180
  store i64 %1619, i64* %RDX.i2815, align 8
  %1620 = lshr i64 %1619, 63
  %1621 = add i64 %1619, %1591
  store i64 %1621, i64* %RCX.i2831.pre-phi, align 8
  %1622 = icmp ult i64 %1621, %1591
  %1623 = icmp ult i64 %1621, %1619
  %1624 = or i1 %1622, %1623
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %14, align 1
  %1626 = trunc i64 %1621 to i32
  %1627 = and i32 %1626, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i64 %1619, %1591
  %1633 = xor i64 %1632, %1621
  %1634 = lshr i64 %1633, 4
  %1635 = trunc i64 %1634 to i8
  %1636 = and i8 %1635, 1
  store i8 %1636, i8* %27, align 1
  %1637 = icmp eq i64 %1621, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %30, align 1
  %1639 = lshr i64 %1621, 63
  %1640 = trunc i64 %1639 to i8
  store i8 %1640, i8* %33, align 1
  %1641 = xor i64 %1639, %1606
  %1642 = xor i64 %1639, %1620
  %1643 = add nuw nsw i64 %1641, %1642
  %1644 = icmp eq i64 %1643, 2
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %39, align 1
  %1646 = add i64 %1613, -8
  %1647 = add i64 %1590, 28
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = sext i32 %1649 to i64
  %1651 = mul nsw i64 %1650, 12
  store i64 %1651, i64* %RDX.i2815, align 8
  %1652 = lshr i64 %1651, 63
  %1653 = add i64 %1651, %1621
  store i64 %1653, i64* %RCX.i2831.pre-phi, align 8
  %1654 = icmp ult i64 %1653, %1621
  %1655 = icmp ult i64 %1653, %1651
  %1656 = or i1 %1654, %1655
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %14, align 1
  %1658 = trunc i64 %1653 to i32
  %1659 = and i32 %1658, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %21, align 1
  %1664 = xor i64 %1651, %1621
  %1665 = xor i64 %1664, %1653
  %1666 = lshr i64 %1665, 4
  %1667 = trunc i64 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %27, align 1
  %1669 = icmp eq i64 %1653, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %30, align 1
  %1671 = lshr i64 %1653, 63
  %1672 = trunc i64 %1671 to i8
  store i8 %1672, i8* %33, align 1
  %1673 = xor i64 %1671, %1639
  %1674 = xor i64 %1671, %1652
  %1675 = add nuw nsw i64 %1673, %1674
  %1676 = icmp eq i64 %1675, 2
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %39, align 1
  %1678 = load i64, i64* %RBP.i, align 8
  %1679 = add i64 %1678, -40
  %1680 = add i64 %1590, 39
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sext i32 %1682 to i64
  store i64 %1683, i64* %RDX.i2815, align 8
  %1684 = shl nsw i64 %1683, 2
  %1685 = add i64 %1684, %1653
  %1686 = add i64 %1590, 46
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  store i32 0, i32* %1687, align 4
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -4
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1689 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = sext i32 %1693 to i64
  %1695 = mul nsw i64 %1694, 180
  store i64 %1695, i64* %RCX.i2831.pre-phi, align 8
  %1696 = lshr i64 %1695, 63
  %1697 = load i64, i64* %RAX.i2857, align 8
  %1698 = add i64 %1695, %1697
  store i64 %1698, i64* %RAX.i2857, align 8
  %1699 = icmp ult i64 %1698, %1697
  %1700 = icmp ult i64 %1698, %1695
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %14, align 1
  %1703 = trunc i64 %1698 to i32
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %21, align 1
  %1709 = xor i64 %1695, %1697
  %1710 = xor i64 %1709, %1698
  %1711 = lshr i64 %1710, 4
  %1712 = trunc i64 %1711 to i8
  %1713 = and i8 %1712, 1
  store i8 %1713, i8* %27, align 1
  %1714 = icmp eq i64 %1698, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %30, align 1
  %1716 = lshr i64 %1698, 63
  %1717 = trunc i64 %1716 to i8
  store i8 %1717, i8* %33, align 1
  %1718 = lshr i64 %1697, 63
  %1719 = xor i64 %1716, %1718
  %1720 = xor i64 %1716, %1696
  %1721 = add nuw nsw i64 %1719, %1720
  %1722 = icmp eq i64 %1721, 2
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %39, align 1
  %1724 = add i64 %1688, -8
  %1725 = add i64 %1690, 18
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = mul nsw i64 %1728, 12
  store i64 %1729, i64* %RCX.i2831.pre-phi, align 8
  %1730 = lshr i64 %1729, 63
  %1731 = add i64 %1729, %1698
  store i64 %1731, i64* %RAX.i2857, align 8
  %1732 = icmp ult i64 %1731, %1698
  %1733 = icmp ult i64 %1731, %1729
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = trunc i64 %1731 to i32
  %1737 = and i32 %1736, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %21, align 1
  %1742 = xor i64 %1729, %1698
  %1743 = xor i64 %1742, %1731
  %1744 = lshr i64 %1743, 4
  %1745 = trunc i64 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %27, align 1
  %1747 = icmp eq i64 %1731, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %30, align 1
  %1749 = lshr i64 %1731, 63
  %1750 = trunc i64 %1749 to i8
  store i8 %1750, i8* %33, align 1
  %1751 = xor i64 %1749, %1716
  %1752 = xor i64 %1749, %1730
  %1753 = add nuw nsw i64 %1751, %1752
  %1754 = icmp eq i64 %1753, 2
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %39, align 1
  %1756 = load i64, i64* %RBP.i, align 8
  %1757 = add i64 %1756, -40
  %1758 = add i64 %1690, 29
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = sext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i2831.pre-phi, align 8
  %1762 = shl nsw i64 %1761, 2
  %1763 = add i64 %1762, %1731
  %1764 = add i64 %1690, 36
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i32*
  store i32 0, i32* %1765, align 4
  %1766 = load i64, i64* %3, align 8
  %1767 = add i64 %1766, 571
  store i64 %1767, i64* %3, align 8
  br label %block_.L_4aeeba

block_.L_4aec84:                                  ; preds = %block_4aebb2
  store i64 2, i64* %RAX.i2857, align 8
  %1768 = add i64 %1372, 11
  store i64 %1768, i64* %3, align 8
  %1769 = load i32, i32* %1361, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RCX.i2831.pre-phi, align 8
  %1771 = add i64 %1330, -35440
  %1772 = add i64 %1372, 17
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  store i32 2, i32* %1773, align 4
  %1774 = load i32, i32* %ECX.i2747, align 4
  %1775 = zext i32 %1774 to i64
  %1776 = load i64, i64* %3, align 8
  store i64 %1775, i64* %RAX.i2857, align 8
  %1777 = sext i32 %1774 to i64
  %1778 = lshr i64 %1777, 32
  store i64 %1778, i64* %866, align 8
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -35440
  %1781 = add i64 %1776, 9
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RCX.i2831.pre-phi, align 8
  %1785 = add i64 %1776, 11
  store i64 %1785, i64* %3, align 8
  %1786 = sext i32 %1783 to i64
  %1787 = shl nuw i64 %1778, 32
  %1788 = or i64 %1787, %1775
  %1789 = sdiv i64 %1788, %1786
  %1790 = shl i64 %1789, 32
  %1791 = ashr exact i64 %1790, 32
  %1792 = icmp eq i64 %1789, %1791
  br i1 %1792, label %1795, label %1793

; <label>:1793:                                   ; preds = %block_.L_4aec84
  %1794 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1785, %struct.Memory* %MEMORY.12)
  %.pre186 = load i32, i32* %EAX.i2833.pre-phi, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1795:                                   ; preds = %block_.L_4aec84
  %1796 = srem i64 %1788, %1786
  %1797 = and i64 %1789, 4294967295
  store i64 %1797, i64* %RAX.i2857, align 8
  %1798 = and i64 %1796, 4294967295
  store i64 %1798, i64* %RDX.i2815, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1799 = trunc i64 %1789 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1795, %1793
  %1800 = phi i64 [ %.pre187, %1793 ], [ %1785, %1795 ]
  %1801 = phi i32 [ %.pre186, %1793 ], [ %1799, %1795 ]
  %1802 = phi %struct.Memory* [ %1794, %1793 ], [ %MEMORY.12, %1795 ]
  %1803 = zext i32 %1801 to i64
  store i64 %1803, i64* %RDI.i2710, align 8
  %1804 = add i64 %1800, -711840
  %1805 = add i64 %1800, 7
  %1806 = load i64, i64* %6, align 8
  %1807 = add i64 %1806, -8
  %1808 = inttoptr i64 %1807 to i64*
  store i64 %1805, i64* %1808, align 8
  store i64 %1807, i64* %6, align 8
  store i64 %1804, i64* %3, align 8
  %1809 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1802)
  %1810 = load i64, i64* %RAX.i2857, align 8
  %1811 = load i64, i64* %3, align 8
  %1812 = trunc i64 %1810 to i32
  %1813 = add i32 %1812, 16384
  %1814 = zext i32 %1813 to i64
  store i64 %1814, i64* %RAX.i2857, align 8
  %1815 = icmp ugt i32 %1812, -16385
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %14, align 1
  %1817 = and i32 %1813, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %21, align 1
  %1822 = xor i32 %1813, %1812
  %1823 = lshr i32 %1822, 4
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  store i8 %1825, i8* %27, align 1
  %1826 = icmp eq i32 %1813, 0
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %30, align 1
  %1828 = lshr i32 %1813, 31
  %1829 = trunc i32 %1828 to i8
  store i8 %1829, i8* %33, align 1
  %1830 = lshr i32 %1812, 31
  %1831 = xor i32 %1828, %1830
  %1832 = add nuw nsw i32 %1831, %1828
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %39, align 1
  %1835 = sext i32 %1813 to i64
  %1836 = lshr i64 %1835, 32
  store i64 %1836, i64* %866, align 8
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -35408
  %1839 = add i64 %1811, 12
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = sext i32 %1841 to i64
  %1843 = shl nuw i64 %1836, 32
  %1844 = or i64 %1843, %1814
  %1845 = sdiv i64 %1844, %1842
  %1846 = shl i64 %1845, 32
  %1847 = ashr exact i64 %1846, 32
  %1848 = icmp eq i64 %1845, %1847
  br i1 %1848, label %1851, label %1849

; <label>:1849:                                   ; preds = %routine_idivl__ecx.exit
  %1850 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1839, %struct.Memory* %1809)
  %.pre188 = load i64, i64* %RBP.i, align 8
  %.pre189 = load i32, i32* %EAX.i2833.pre-phi, align 4
  %.pre190 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x8a50__rbp_.exit

; <label>:1851:                                   ; preds = %routine_idivl__ecx.exit
  %1852 = srem i64 %1844, %1842
  %1853 = and i64 %1845, 4294967295
  store i64 %1853, i64* %RAX.i2857, align 8
  %1854 = and i64 %1852, 4294967295
  store i64 %1854, i64* %RDX.i2815, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1855 = trunc i64 %1845 to i32
  br label %routine_idivl_MINUS0x8a50__rbp_.exit

routine_idivl_MINUS0x8a50__rbp_.exit:             ; preds = %1851, %1849
  %1856 = phi i64 [ %.pre190, %1849 ], [ %1839, %1851 ]
  %1857 = phi i32 [ %.pre189, %1849 ], [ %1855, %1851 ]
  %1858 = phi i64 [ %.pre188, %1849 ], [ %1837, %1851 ]
  %1859 = phi %struct.Memory* [ %1850, %1849 ], [ %1809, %1851 ]
  %1860 = add i64 %1858, -20
  %1861 = add i64 %1856, 3
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  store i32 %1857, i32* %1862, align 4
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -20
  %1865 = load i64, i64* %3, align 8
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1864 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RAX.i2857, align 8
  %1870 = add i64 %1863, -35412
  %1871 = add i64 %1865, 10
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = mul i32 %1873, %1868
  %1875 = add i32 %1874, 32
  %1876 = zext i32 %1875 to i64
  %1877 = shl nuw i64 %1876, 32
  %1878 = ashr i64 %1877, 37
  %1879 = lshr i64 %1878, 1
  %1880 = and i64 %1879, 4294967295
  store i64 %1880, i64* %RAX.i2857, align 8
  %1881 = trunc i64 %1879 to i32
  %1882 = add i32 %1881, 1024
  %1883 = icmp ult i32 %1881, -1024
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %14, align 1
  %1885 = and i32 %1882, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  %1890 = xor i32 %1882, %1881
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %27, align 1
  %1894 = icmp eq i32 %1882, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %30, align 1
  %1896 = lshr i32 %1882, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %33, align 1
  %1898 = lshr i64 %1878, 32
  %1899 = trunc i64 %1898 to i32
  %1900 = and i32 %1899, 1
  %1901 = xor i32 %1900, 1
  %1902 = xor i32 %1896, %1900
  %1903 = add nuw nsw i32 %1902, %1901
  %1904 = icmp eq i32 %1903, 2
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %39, align 1
  %1906 = icmp ne i8 %1897, 0
  %1907 = xor i1 %1906, %1904
  %.v253 = select i1 %1907, i64 27, i64 43
  %1908 = add i64 %1865, %.v253
  store i64 %1908, i64* %3, align 8
  br i1 %1907, label %block_4aecd1, label %block_.L_4aece1

block_4aecd1:                                     ; preds = %routine_idivl_MINUS0x8a50__rbp_.exit
  store i64 4294966272, i64* %RAX.i2857, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -35444
  %1911 = add i64 %1908, 11
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  store i32 -1024, i32* %1912, align 4
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 82
  store i64 %1914, i64* %3, align 8
  br label %block_.L_4aed2e

block_.L_4aece1:                                  ; preds = %routine_idivl_MINUS0x8a50__rbp_.exit
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -20
  %1917 = add i64 %1908, 3
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RAX.i2857, align 8
  %1921 = add i64 %1915, -35412
  %1922 = add i64 %1908, 10
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = mul i32 %1924, %1919
  %1926 = add i32 %1925, 32
  %1927 = zext i32 %1926 to i64
  %1928 = shl nuw i64 %1927, 32
  %1929 = ashr i64 %1928, 37
  %1930 = lshr i64 %1929, 1
  %1931 = and i64 %1930, 4294967295
  store i64 %1931, i64* %RAX.i2857, align 8
  %1932 = trunc i64 %1930 to i32
  %1933 = add i32 %1932, -1023
  %1934 = icmp ult i32 %1932, 1023
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %14, align 1
  %1936 = and i32 %1933, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %21, align 1
  %1941 = xor i32 %1932, 16
  %1942 = xor i32 %1941, %1933
  %1943 = lshr i32 %1942, 4
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  store i8 %1945, i8* %27, align 1
  %1946 = icmp eq i32 %1933, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %30, align 1
  %1948 = lshr i32 %1933, 31
  %1949 = trunc i32 %1948 to i8
  store i8 %1949, i8* %33, align 1
  %1950 = lshr i64 %1929, 32
  %1951 = trunc i64 %1950 to i32
  %1952 = and i32 %1951, 1
  %1953 = xor i32 %1948, %1952
  %1954 = add nuw nsw i32 %1953, %1952
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %39, align 1
  %1957 = icmp ne i8 %1949, 0
  %1958 = xor i1 %1957, %1955
  %1959 = or i1 %1946, %1958
  %.v254 = select i1 %1959, i64 43, i64 27
  %1960 = add i64 %1908, %.v254
  store i64 %1960, i64* %3, align 8
  br i1 %1959, label %block_.L_4aed0c, label %block_4aecfc

block_4aecfc:                                     ; preds = %block_.L_4aece1
  store i64 1023, i64* %RAX.i2857, align 8
  %1961 = load i64, i64* %RBP.i, align 8
  %1962 = add i64 %1961, -35448
  %1963 = add i64 %1960, 11
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  store i32 1023, i32* %1964, align 4
  %1965 = load i64, i64* %3, align 8
  %1966 = add i64 %1965, 27
  store i64 %1966, i64* %3, align 8
  br label %block_.L_4aed22

block_.L_4aed0c:                                  ; preds = %block_.L_4aece1
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -20
  %1969 = add i64 %1960, 3
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RAX.i2857, align 8
  %1973 = add i64 %1967, -35412
  %1974 = add i64 %1960, 10
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = mul i32 %1976, %1971
  %1978 = add i32 %1977, 32
  %1979 = zext i32 %1978 to i64
  %1980 = shl nuw i64 %1979, 32
  %1981 = ashr i64 %1980, 37
  %1982 = lshr i64 %1981, 1
  %1983 = trunc i64 %1981 to i8
  %1984 = and i8 %1983, 1
  %1985 = trunc i64 %1982 to i32
  %1986 = and i64 %1982, 4294967295
  store i64 %1986, i64* %RAX.i2857, align 8
  store i8 %1984, i8* %14, align 1
  %1987 = and i32 %1985, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1992 = icmp eq i32 %1985, 0
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %30, align 1
  %1994 = lshr i64 %1981, 32
  %1995 = trunc i64 %1994 to i8
  %1996 = and i8 %1995, 1
  store i8 %1996, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1997 = add i64 %1967, -35448
  %1998 = trunc i64 %1982 to i32
  %1999 = add i64 %1960, 22
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1997 to i32*
  store i32 %1998, i32* %2000, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_4aed22

block_.L_4aed22:                                  ; preds = %block_.L_4aed0c, %block_4aecfc
  %2001 = phi i64 [ %.pre191, %block_.L_4aed0c ], [ %1966, %block_4aecfc ]
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -35448
  %2004 = add i64 %2001, 6
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RAX.i2857, align 8
  %2008 = add i64 %2002, -35444
  %2009 = add i64 %2001, 12
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i32*
  store i32 %2006, i32* %2010, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_4aed2e

block_.L_4aed2e:                                  ; preds = %block_.L_4aed22, %block_4aecd1
  %2011 = phi i64 [ %.pre192, %block_.L_4aed22 ], [ %1914, %block_4aecd1 ]
  %2012 = load i64, i64* %RBP.i, align 8
  %2013 = add i64 %2012, -35444
  %2014 = add i64 %2011, 6
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RAX.i2857, align 8
  %2018 = add i64 %2012, -19184
  store i64 %2018, i64* %RCX.i2831.pre-phi, align 8
  %2019 = add i64 %2012, -24
  %2020 = add i64 %2011, 16
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  store i32 %2016, i32* %2021, align 4
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -24
  %2024 = load i64, i64* %3, align 8
  %2025 = add i64 %2024, 3
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2023 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = add i64 %2024, 6
  store i64 %2028, i64* %3, align 8
  %2029 = sext i32 %2027 to i64
  %2030 = ashr i64 %2029, 1
  %2031 = lshr i64 %2030, 1
  %2032 = trunc i64 %2030 to i8
  %2033 = and i8 %2032, 1
  %2034 = trunc i64 %2031 to i32
  %2035 = and i64 %2031, 4294967295
  store i64 %2035, i64* %RAX.i2857, align 8
  store i8 %2033, i8* %14, align 1
  %2036 = and i32 %2034, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2041 = icmp eq i32 %2034, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %30, align 1
  %2043 = lshr i64 %2030, 32
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2046 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %2047 = add i64 %2046, 2700
  store i64 %2047, i64* %RDX.i2815, align 8
  %2048 = icmp ugt i64 %2046, -2701
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = trunc i64 %2047 to i32
  %2051 = and i32 %2050, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %21, align 1
  %2056 = xor i64 %2047, %2046
  %2057 = lshr i64 %2056, 4
  %2058 = trunc i64 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %27, align 1
  %2060 = icmp eq i64 %2047, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %30, align 1
  %2062 = lshr i64 %2047, 63
  %2063 = trunc i64 %2062 to i8
  store i8 %2063, i8* %33, align 1
  %2064 = lshr i64 %2046, 63
  %2065 = xor i64 %2062, %2064
  %2066 = add nuw nsw i64 %2065, %2062
  %2067 = icmp eq i64 %2066, 2
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %39, align 1
  %2069 = add i64 %2022, -4
  %2070 = add i64 %2024, 20
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  %2072 = load i32, i32* %2071, align 4
  %2073 = sext i32 %2072 to i64
  %2074 = mul nsw i64 %2073, 180
  store i64 %2074, i64* %RSI.i2152, align 8
  %2075 = lshr i64 %2074, 63
  %2076 = add i64 %2074, %2047
  store i64 %2076, i64* %RDX.i2815, align 8
  %2077 = icmp ult i64 %2076, %2047
  %2078 = icmp ult i64 %2076, %2074
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %14, align 1
  %2081 = trunc i64 %2076 to i32
  %2082 = and i32 %2081, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i64 %2074, %2047
  %2088 = xor i64 %2087, %2076
  %2089 = lshr i64 %2088, 4
  %2090 = trunc i64 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %27, align 1
  %2092 = icmp eq i64 %2076, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %30, align 1
  %2094 = lshr i64 %2076, 63
  %2095 = trunc i64 %2094 to i8
  store i8 %2095, i8* %33, align 1
  %2096 = xor i64 %2094, %2062
  %2097 = xor i64 %2094, %2075
  %2098 = add nuw nsw i64 %2096, %2097
  %2099 = icmp eq i64 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %39, align 1
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -8
  %2103 = add i64 %2024, 34
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = sext i32 %2105 to i64
  %2107 = mul nsw i64 %2106, 12
  store i64 %2107, i64* %RSI.i2152, align 8
  %2108 = lshr i64 %2107, 63
  %2109 = add i64 %2107, %2076
  store i64 %2109, i64* %RDX.i2815, align 8
  %2110 = icmp ult i64 %2109, %2076
  %2111 = icmp ult i64 %2109, %2107
  %2112 = or i1 %2110, %2111
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %14, align 1
  %2114 = trunc i64 %2109 to i32
  %2115 = and i32 %2114, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %21, align 1
  %2120 = xor i64 %2107, %2076
  %2121 = xor i64 %2120, %2109
  %2122 = lshr i64 %2121, 4
  %2123 = trunc i64 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %27, align 1
  %2125 = icmp eq i64 %2109, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %30, align 1
  %2127 = lshr i64 %2109, 63
  %2128 = trunc i64 %2127 to i8
  store i8 %2128, i8* %33, align 1
  %2129 = xor i64 %2127, %2094
  %2130 = xor i64 %2127, %2108
  %2131 = add nuw nsw i64 %2129, %2130
  %2132 = icmp eq i64 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %39, align 1
  %2134 = add i64 %2101, -40
  %2135 = add i64 %2024, 45
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = sext i32 %2137 to i64
  store i64 %2138, i64* %RSI.i2152, align 8
  %2139 = shl nsw i64 %2138, 2
  %2140 = add i64 %2139, %2109
  %2141 = load i32, i32* %EAX.i2833.pre-phi, align 4
  %2142 = add i64 %2024, 48
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i32*
  store i32 %2141, i32* %2143, align 4
  %2144 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2144, 2700
  store i64 %2146, i64* %RCX.i2831.pre-phi, align 8
  %2147 = icmp ugt i64 %2144, -2701
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %14, align 1
  %2149 = trunc i64 %2146 to i32
  %2150 = and i32 %2149, 255
  %2151 = tail call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  store i8 %2154, i8* %21, align 1
  %2155 = xor i64 %2146, %2144
  %2156 = lshr i64 %2155, 4
  %2157 = trunc i64 %2156 to i8
  %2158 = and i8 %2157, 1
  store i8 %2158, i8* %27, align 1
  %2159 = icmp eq i64 %2146, 0
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %30, align 1
  %2161 = lshr i64 %2146, 63
  %2162 = trunc i64 %2161 to i8
  store i8 %2162, i8* %33, align 1
  %2163 = lshr i64 %2144, 63
  %2164 = xor i64 %2161, %2163
  %2165 = add nuw nsw i64 %2164, %2161
  %2166 = icmp eq i64 %2165, 2
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %39, align 1
  %2168 = load i64, i64* %RBP.i, align 8
  %2169 = add i64 %2168, -4
  %2170 = add i64 %2145, 11
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = sext i32 %2172 to i64
  %2174 = mul nsw i64 %2173, 180
  store i64 %2174, i64* %RDX.i2815, align 8
  %2175 = lshr i64 %2174, 63
  %2176 = add i64 %2174, %2146
  store i64 %2176, i64* %RCX.i2831.pre-phi, align 8
  %2177 = icmp ult i64 %2176, %2146
  %2178 = icmp ult i64 %2176, %2174
  %2179 = or i1 %2177, %2178
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %14, align 1
  %2181 = trunc i64 %2176 to i32
  %2182 = and i32 %2181, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  %2187 = xor i64 %2174, %2146
  %2188 = xor i64 %2187, %2176
  %2189 = lshr i64 %2188, 4
  %2190 = trunc i64 %2189 to i8
  %2191 = and i8 %2190, 1
  store i8 %2191, i8* %27, align 1
  %2192 = icmp eq i64 %2176, 0
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %30, align 1
  %2194 = lshr i64 %2176, 63
  %2195 = trunc i64 %2194 to i8
  store i8 %2195, i8* %33, align 1
  %2196 = xor i64 %2194, %2161
  %2197 = xor i64 %2194, %2175
  %2198 = add nuw nsw i64 %2196, %2197
  %2199 = icmp eq i64 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %39, align 1
  %2201 = add i64 %2168, -8
  %2202 = add i64 %2145, 25
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  %2206 = mul nsw i64 %2205, 12
  store i64 %2206, i64* %RDX.i2815, align 8
  %2207 = lshr i64 %2206, 63
  %2208 = add i64 %2206, %2176
  store i64 %2208, i64* %RCX.i2831.pre-phi, align 8
  %2209 = icmp ult i64 %2208, %2176
  %2210 = icmp ult i64 %2208, %2206
  %2211 = or i1 %2209, %2210
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %14, align 1
  %2213 = trunc i64 %2208 to i32
  %2214 = and i32 %2213, 255
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %21, align 1
  %2219 = xor i64 %2206, %2176
  %2220 = xor i64 %2219, %2208
  %2221 = lshr i64 %2220, 4
  %2222 = trunc i64 %2221 to i8
  %2223 = and i8 %2222, 1
  store i8 %2223, i8* %27, align 1
  %2224 = icmp eq i64 %2208, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %30, align 1
  %2226 = lshr i64 %2208, 63
  %2227 = trunc i64 %2226 to i8
  store i8 %2227, i8* %33, align 1
  %2228 = xor i64 %2226, %2194
  %2229 = xor i64 %2226, %2207
  %2230 = add nuw nsw i64 %2228, %2229
  %2231 = icmp eq i64 %2230, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %39, align 1
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -40
  %2235 = add i64 %2145, 36
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = sext i32 %2237 to i64
  store i64 %2238, i64* %RDX.i2815, align 8
  %2239 = shl nsw i64 %2238, 2
  %2240 = add i64 %2239, %2208
  %2241 = add i64 %2145, 40
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, 64
  %2245 = icmp ult i32 %2243, -64
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %14, align 1
  %2247 = and i32 %2244, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %21, align 1
  %2252 = xor i32 %2244, %2243
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %27, align 1
  %2256 = icmp eq i32 %2244, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %30, align 1
  %2258 = lshr i32 %2244, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %33, align 1
  %2260 = lshr i32 %2243, 31
  %2261 = xor i32 %2260, 1
  %2262 = xor i32 %2258, %2260
  %2263 = add nuw nsw i32 %2262, %2261
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %39, align 1
  %2266 = icmp ne i8 %2259, 0
  %2267 = xor i1 %2266, %2264
  %.v255 = select i1 %2267, i64 101, i64 46
  %2268 = add i64 %2145, %.v255
  store i64 %2268, i64* %3, align 8
  br i1 %2267, label %block_.L_4aedd3, label %block_4aed9c

block_4aed9c:                                     ; preds = %block_.L_4aed2e
  %2269 = add i64 %2233, -19184
  %2270 = add i64 %2233, -16484
  store i64 %2270, i64* %RAX.i2857, align 8
  %2271 = icmp ult i64 %2270, %2269
  %2272 = icmp ult i64 %2270, 2700
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = trunc i64 %2270 to i32
  %2276 = and i32 %2275, 255
  %2277 = tail call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  store i8 %2280, i8* %21, align 1
  %2281 = xor i64 %2269, %2270
  %2282 = lshr i64 %2281, 4
  %2283 = trunc i64 %2282 to i8
  %2284 = and i8 %2283, 1
  store i8 %2284, i8* %27, align 1
  %2285 = icmp eq i64 %2270, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %30, align 1
  %2287 = lshr i64 %2270, 63
  %2288 = trunc i64 %2287 to i8
  store i8 %2288, i8* %33, align 1
  %2289 = lshr i64 %2269, 63
  %2290 = xor i64 %2287, %2289
  %2291 = add nuw nsw i64 %2290, %2287
  %2292 = icmp eq i64 %2291, 2
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %39, align 1
  %2294 = add i64 %2233, -4
  %2295 = add i64 %2268, 17
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i32*
  %2297 = load i32, i32* %2296, align 4
  %2298 = sext i32 %2297 to i64
  %2299 = mul nsw i64 %2298, 180
  store i64 %2299, i64* %RCX.i2831.pre-phi, align 8
  %2300 = lshr i64 %2299, 63
  %2301 = add i64 %2299, %2270
  store i64 %2301, i64* %RAX.i2857, align 8
  %2302 = icmp ult i64 %2301, %2270
  %2303 = icmp ult i64 %2301, %2299
  %2304 = or i1 %2302, %2303
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %14, align 1
  %2306 = trunc i64 %2301 to i32
  %2307 = and i32 %2306, 255
  %2308 = tail call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  store i8 %2311, i8* %21, align 1
  %2312 = xor i64 %2299, %2270
  %2313 = xor i64 %2312, %2301
  %2314 = lshr i64 %2313, 4
  %2315 = trunc i64 %2314 to i8
  %2316 = and i8 %2315, 1
  store i8 %2316, i8* %27, align 1
  %2317 = icmp eq i64 %2301, 0
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %30, align 1
  %2319 = lshr i64 %2301, 63
  %2320 = trunc i64 %2319 to i8
  store i8 %2320, i8* %33, align 1
  %2321 = xor i64 %2319, %2287
  %2322 = xor i64 %2319, %2300
  %2323 = add nuw nsw i64 %2321, %2322
  %2324 = icmp eq i64 %2323, 2
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %39, align 1
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -8
  %2328 = add i64 %2268, 31
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = sext i32 %2330 to i64
  %2332 = mul nsw i64 %2331, 12
  store i64 %2332, i64* %RCX.i2831.pre-phi, align 8
  %2333 = lshr i64 %2332, 63
  %2334 = add i64 %2332, %2301
  store i64 %2334, i64* %RAX.i2857, align 8
  %2335 = icmp ult i64 %2334, %2301
  %2336 = icmp ult i64 %2334, %2332
  %2337 = or i1 %2335, %2336
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = trunc i64 %2334 to i32
  %2340 = and i32 %2339, 255
  %2341 = tail call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  store i8 %2344, i8* %21, align 1
  %2345 = xor i64 %2332, %2301
  %2346 = xor i64 %2345, %2334
  %2347 = lshr i64 %2346, 4
  %2348 = trunc i64 %2347 to i8
  %2349 = and i8 %2348, 1
  store i8 %2349, i8* %27, align 1
  %2350 = icmp eq i64 %2334, 0
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %30, align 1
  %2352 = lshr i64 %2334, 63
  %2353 = trunc i64 %2352 to i8
  store i8 %2353, i8* %33, align 1
  %2354 = xor i64 %2352, %2319
  %2355 = xor i64 %2352, %2333
  %2356 = add nuw nsw i64 %2354, %2355
  %2357 = icmp eq i64 %2356, 2
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %39, align 1
  %2359 = add i64 %2326, -40
  %2360 = add i64 %2268, 42
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = sext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i2831.pre-phi, align 8
  %2364 = shl nsw i64 %2363, 2
  %2365 = add i64 %2364, %2334
  %2366 = add i64 %2268, 49
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = add i32 %2368, -128
  %2370 = icmp ult i32 %2368, 128
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %14, align 1
  %2372 = and i32 %2369, 255
  %2373 = tail call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  store i8 %2376, i8* %21, align 1
  %2377 = xor i32 %2369, %2368
  %2378 = lshr i32 %2377, 4
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  store i8 %2380, i8* %27, align 1
  %2381 = icmp eq i32 %2369, 0
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %30, align 1
  %2383 = lshr i32 %2369, 31
  %2384 = trunc i32 %2383 to i8
  store i8 %2384, i8* %33, align 1
  %2385 = lshr i32 %2368, 31
  %2386 = xor i32 %2383, %2385
  %2387 = add nuw nsw i32 %2386, %2385
  %2388 = icmp eq i32 %2387, 2
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %39, align 1
  %2390 = icmp ne i8 %2384, 0
  %2391 = xor i1 %2390, %2388
  %2392 = or i1 %2381, %2391
  %.v256 = select i1 %2392, i64 111, i64 55
  %2393 = add i64 %2268, %.v256
  store i64 %2393, i64* %3, align 8
  br i1 %2392, label %block_.L_4aee0b, label %block_4aed9c.block_.L_4aedd3_crit_edge

block_4aed9c.block_.L_4aedd3_crit_edge:           ; preds = %block_4aed9c
  %.pre193 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4aedd3

block_.L_4aedd3:                                  ; preds = %block_4aed9c.block_.L_4aedd3_crit_edge, %block_.L_4aed2e
  %2394 = phi i64 [ %2393, %block_4aed9c.block_.L_4aedd3_crit_edge ], [ %2268, %block_.L_4aed2e ]
  %2395 = phi i64 [ %.pre193, %block_4aed9c.block_.L_4aedd3_crit_edge ], [ %2233, %block_.L_4aed2e ]
  %2396 = add i64 %2395, -19184
  store i64 %2396, i64* %RAX.i2857, align 8
  %2397 = add i64 %2395, -40
  %2398 = add i64 %2394, 11
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = sext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i2831.pre-phi, align 8
  %2402 = shl nsw i64 %2401, 2
  %2403 = add i64 %2395, -804
  %2404 = add i64 %2403, %2402
  %2405 = add i64 %2394, 18
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RDX.i2815, align 8
  %2409 = add i64 %2395, -16484
  store i64 %2409, i64* %RAX.i2857, align 8
  %2410 = icmp ugt i64 %2396, -2701
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %14, align 1
  %2412 = trunc i64 %2409 to i32
  %2413 = and i32 %2412, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %21, align 1
  %2418 = xor i64 %2409, %2396
  %2419 = lshr i64 %2418, 4
  %2420 = trunc i64 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %27, align 1
  %2422 = icmp eq i64 %2409, 0
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %30, align 1
  %2424 = lshr i64 %2409, 63
  %2425 = trunc i64 %2424 to i8
  store i8 %2425, i8* %33, align 1
  %2426 = lshr i64 %2396, 63
  %2427 = xor i64 %2424, %2426
  %2428 = add nuw nsw i64 %2427, %2424
  %2429 = icmp eq i64 %2428, 2
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %39, align 1
  %2431 = add i64 %2395, -4
  %2432 = add i64 %2394, 28
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = sext i32 %2434 to i64
  %2436 = mul nsw i64 %2435, 180
  store i64 %2436, i64* %RCX.i2831.pre-phi, align 8
  %2437 = lshr i64 %2436, 63
  %2438 = add i64 %2436, %2409
  store i64 %2438, i64* %RAX.i2857, align 8
  %2439 = icmp ult i64 %2438, %2409
  %2440 = icmp ult i64 %2438, %2436
  %2441 = or i1 %2439, %2440
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %14, align 1
  %2443 = trunc i64 %2438 to i32
  %2444 = and i32 %2443, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %21, align 1
  %2449 = xor i64 %2436, %2409
  %2450 = xor i64 %2449, %2438
  %2451 = lshr i64 %2450, 4
  %2452 = trunc i64 %2451 to i8
  %2453 = and i8 %2452, 1
  store i8 %2453, i8* %27, align 1
  %2454 = icmp eq i64 %2438, 0
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %30, align 1
  %2456 = lshr i64 %2438, 63
  %2457 = trunc i64 %2456 to i8
  store i8 %2457, i8* %33, align 1
  %2458 = xor i64 %2456, %2424
  %2459 = xor i64 %2456, %2437
  %2460 = add nuw nsw i64 %2458, %2459
  %2461 = icmp eq i64 %2460, 2
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %39, align 1
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -8
  %2465 = add i64 %2394, 42
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = sext i32 %2467 to i64
  %2469 = mul nsw i64 %2468, 12
  store i64 %2469, i64* %RCX.i2831.pre-phi, align 8
  %2470 = lshr i64 %2469, 63
  %2471 = add i64 %2469, %2438
  store i64 %2471, i64* %RAX.i2857, align 8
  %2472 = icmp ult i64 %2471, %2438
  %2473 = icmp ult i64 %2471, %2469
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %14, align 1
  %2476 = trunc i64 %2471 to i32
  %2477 = and i32 %2476, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %21, align 1
  %2482 = xor i64 %2469, %2438
  %2483 = xor i64 %2482, %2471
  %2484 = lshr i64 %2483, 4
  %2485 = trunc i64 %2484 to i8
  %2486 = and i8 %2485, 1
  store i8 %2486, i8* %27, align 1
  %2487 = icmp eq i64 %2471, 0
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %30, align 1
  %2489 = lshr i64 %2471, 63
  %2490 = trunc i64 %2489 to i8
  store i8 %2490, i8* %33, align 1
  %2491 = xor i64 %2489, %2456
  %2492 = xor i64 %2489, %2470
  %2493 = add nuw nsw i64 %2491, %2492
  %2494 = icmp eq i64 %2493, 2
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %39, align 1
  %2496 = add i64 %2463, -40
  %2497 = add i64 %2394, 53
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = sext i32 %2499 to i64
  store i64 %2500, i64* %RCX.i2831.pre-phi, align 8
  %2501 = shl nsw i64 %2500, 2
  %2502 = add i64 %2501, %2471
  %2503 = load i32, i32* %EDX.i2808, align 4
  %2504 = add i64 %2394, 56
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2502 to i32*
  store i32 %2503, i32* %2505, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_4aee0b

block_.L_4aee0b:                                  ; preds = %block_.L_4aedd3, %block_4aed9c
  %2506 = phi i64 [ %.pre194, %block_.L_4aedd3 ], [ %2393, %block_4aed9c ]
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -35392
  store i64 %2508, i64* %RAX.i2857, align 8
  %2509 = add i64 %2507, -19184
  store i64 %2509, i64* %RCX.i2831.pre-phi, align 8
  store i64 64, i64* %RDX.i2815, align 8
  %2510 = add i64 %2507, -16484
  store i64 %2510, i64* %RSI.i2152, align 8
  %2511 = icmp ult i64 %2510, %2509
  %2512 = icmp ult i64 %2510, 2700
  %2513 = or i1 %2511, %2512
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %14, align 1
  %2515 = trunc i64 %2510 to i32
  %2516 = and i32 %2515, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i64 %2509, %2510
  %2522 = lshr i64 %2521, 4
  %2523 = trunc i64 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = icmp eq i64 %2510, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %30, align 1
  %2527 = lshr i64 %2510, 63
  %2528 = trunc i64 %2527 to i8
  store i8 %2528, i8* %33, align 1
  %2529 = lshr i64 %2509, 63
  %2530 = xor i64 %2527, %2529
  %2531 = add nuw nsw i64 %2530, %2527
  %2532 = icmp eq i64 %2531, 2
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %39, align 1
  %2534 = add i64 %2507, -4
  %2535 = add i64 %2506, 33
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = sext i32 %2537 to i64
  %2539 = mul nsw i64 %2538, 180
  store i64 %2539, i64* %RDI.i2710, align 8
  %2540 = lshr i64 %2539, 63
  %2541 = add i64 %2539, %2510
  store i64 %2541, i64* %RSI.i2152, align 8
  %2542 = icmp ult i64 %2541, %2510
  %2543 = icmp ult i64 %2541, %2539
  %2544 = or i1 %2542, %2543
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %14, align 1
  %2546 = trunc i64 %2541 to i32
  %2547 = and i32 %2546, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %21, align 1
  %2552 = xor i64 %2539, %2510
  %2553 = xor i64 %2552, %2541
  %2554 = lshr i64 %2553, 4
  %2555 = trunc i64 %2554 to i8
  %2556 = and i8 %2555, 1
  store i8 %2556, i8* %27, align 1
  %2557 = icmp eq i64 %2541, 0
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %30, align 1
  %2559 = lshr i64 %2541, 63
  %2560 = trunc i64 %2559 to i8
  store i8 %2560, i8* %33, align 1
  %2561 = xor i64 %2559, %2527
  %2562 = xor i64 %2559, %2540
  %2563 = add nuw nsw i64 %2561, %2562
  %2564 = icmp eq i64 %2563, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %39, align 1
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -8
  %2568 = add i64 %2506, 47
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  %2571 = sext i32 %2570 to i64
  %2572 = mul nsw i64 %2571, 12
  store i64 %2572, i64* %RDI.i2710, align 8
  %2573 = lshr i64 %2572, 63
  %2574 = add i64 %2572, %2541
  store i64 %2574, i64* %RSI.i2152, align 8
  %2575 = icmp ult i64 %2574, %2541
  %2576 = icmp ult i64 %2574, %2572
  %2577 = or i1 %2575, %2576
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %14, align 1
  %2579 = trunc i64 %2574 to i32
  %2580 = and i32 %2579, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i64 %2572, %2541
  %2586 = xor i64 %2585, %2574
  %2587 = lshr i64 %2586, 4
  %2588 = trunc i64 %2587 to i8
  %2589 = and i8 %2588, 1
  store i8 %2589, i8* %27, align 1
  %2590 = icmp eq i64 %2574, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %30, align 1
  %2592 = lshr i64 %2574, 63
  %2593 = trunc i64 %2592 to i8
  store i8 %2593, i8* %33, align 1
  %2594 = xor i64 %2592, %2559
  %2595 = xor i64 %2592, %2573
  %2596 = add nuw nsw i64 %2594, %2595
  %2597 = icmp eq i64 %2596, 2
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %39, align 1
  %2599 = add i64 %2566, -40
  %2600 = add i64 %2506, 58
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i32*
  %2602 = load i32, i32* %2601, align 4
  %2603 = sext i32 %2602 to i64
  store i64 %2603, i64* %RDI.i2710, align 8
  %2604 = load i64, i64* %RDX.i2815, align 8
  %2605 = shl nsw i64 %2603, 2
  %2606 = add i64 %2574, %2605
  %2607 = add i64 %2506, 61
  store i64 %2607, i64* %3, align 8
  %2608 = trunc i64 %2604 to i32
  %2609 = inttoptr i64 %2606 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = sub i32 %2608, %2610
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RDX.i2815, align 8
  %2613 = icmp ult i32 %2608, %2610
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %14, align 1
  %2615 = and i32 %2611, 255
  %2616 = tail call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  store i8 %2619, i8* %21, align 1
  %2620 = xor i32 %2610, %2608
  %2621 = xor i32 %2620, %2611
  %2622 = lshr i32 %2621, 4
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  store i8 %2624, i8* %27, align 1
  %2625 = icmp eq i32 %2611, 0
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %30, align 1
  %2627 = lshr i32 %2611, 31
  %2628 = trunc i32 %2627 to i8
  store i8 %2628, i8* %33, align 1
  %2629 = lshr i32 %2608, 31
  %2630 = lshr i32 %2610, 31
  %2631 = xor i32 %2630, %2629
  %2632 = xor i32 %2627, %2629
  %2633 = add nuw nsw i32 %2632, %2631
  %2634 = icmp eq i32 %2633, 2
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %39, align 1
  %2636 = load i64, i64* %RBP.i, align 8
  %2637 = add i64 %2636, -4
  %2638 = add i64 %2506, 65
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sext i32 %2640 to i64
  %2642 = add i64 %2506, 72
  store i64 %2642, i64* %3, align 8
  %2643 = sext i32 %2640 to i128
  %2644 = and i128 %2643, -18446744073709551616
  %2645 = zext i64 %2641 to i128
  %2646 = or i128 %2644, %2645
  %2647 = mul nsw i128 %2646, 180
  %2648 = trunc i128 %2647 to i64
  store i64 %2648, i64* %RSI.i2152, align 8
  %2649 = sext i64 %2648 to i128
  %2650 = icmp ne i128 %2649, %2647
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %14, align 1
  %2652 = trunc i128 %2647 to i32
  %2653 = and i32 %2652, 252
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2658 = lshr i64 %2648, 63
  %2659 = trunc i64 %2658 to i8
  store i8 %2659, i8* %33, align 1
  store i8 %2651, i8* %39, align 1
  %2660 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %2661 = add i64 %2648, %2660
  store i64 %2661, i64* %RCX.i2831.pre-phi, align 8
  %2662 = icmp ult i64 %2661, %2660
  %2663 = icmp ult i64 %2661, %2648
  %2664 = or i1 %2662, %2663
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %14, align 1
  %2666 = trunc i64 %2661 to i32
  %2667 = and i32 %2666, 255
  %2668 = tail call i32 @llvm.ctpop.i32(i32 %2667)
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  store i8 %2671, i8* %21, align 1
  %2672 = xor i64 %2648, %2660
  %2673 = xor i64 %2672, %2661
  %2674 = lshr i64 %2673, 4
  %2675 = trunc i64 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %27, align 1
  %2677 = icmp eq i64 %2661, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %30, align 1
  %2679 = lshr i64 %2661, 63
  %2680 = trunc i64 %2679 to i8
  store i8 %2680, i8* %33, align 1
  %2681 = lshr i64 %2660, 63
  %2682 = xor i64 %2679, %2681
  %2683 = xor i64 %2679, %2658
  %2684 = add nuw nsw i64 %2682, %2683
  %2685 = icmp eq i64 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %39, align 1
  %2687 = add i64 %2636, -8
  %2688 = add i64 %2506, 79
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = sext i32 %2690 to i64
  %2692 = mul nsw i64 %2691, 12
  store i64 %2692, i64* %RSI.i2152, align 8
  %2693 = lshr i64 %2692, 63
  %2694 = add i64 %2692, %2661
  store i64 %2694, i64* %RCX.i2831.pre-phi, align 8
  %2695 = icmp ult i64 %2694, %2661
  %2696 = icmp ult i64 %2694, %2692
  %2697 = or i1 %2695, %2696
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %14, align 1
  %2699 = trunc i64 %2694 to i32
  %2700 = and i32 %2699, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %21, align 1
  %2705 = xor i64 %2692, %2661
  %2706 = xor i64 %2705, %2694
  %2707 = lshr i64 %2706, 4
  %2708 = trunc i64 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %27, align 1
  %2710 = icmp eq i64 %2694, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %30, align 1
  %2712 = lshr i64 %2694, 63
  %2713 = trunc i64 %2712 to i8
  store i8 %2713, i8* %33, align 1
  %2714 = xor i64 %2712, %2679
  %2715 = xor i64 %2712, %2693
  %2716 = add nuw nsw i64 %2714, %2715
  %2717 = icmp eq i64 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %39, align 1
  %2719 = load i64, i64* %RBP.i, align 8
  %2720 = add i64 %2719, -40
  %2721 = add i64 %2506, 90
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = sext i32 %2723 to i64
  store i64 %2724, i64* %RSI.i2152, align 8
  %2725 = shl nsw i64 %2724, 2
  %2726 = add i64 %2725, %2694
  %2727 = load i32, i32* %EDX.i2808, align 4
  %2728 = add i64 %2506, 93
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2726 to i32*
  store i32 %2727, i32* %2729, align 4
  %2730 = load i64, i64* %RAX.i2857, align 8
  %2731 = load i64, i64* %3, align 8
  %2732 = add i64 %2730, 2700
  store i64 %2732, i64* %RCX.i2831.pre-phi, align 8
  %2733 = icmp ugt i64 %2730, -2701
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %14, align 1
  %2735 = trunc i64 %2732 to i32
  %2736 = and i32 %2735, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %21, align 1
  %2741 = xor i64 %2732, %2730
  %2742 = lshr i64 %2741, 4
  %2743 = trunc i64 %2742 to i8
  %2744 = and i8 %2743, 1
  store i8 %2744, i8* %27, align 1
  %2745 = icmp eq i64 %2732, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %30, align 1
  %2747 = lshr i64 %2732, 63
  %2748 = trunc i64 %2747 to i8
  store i8 %2748, i8* %33, align 1
  %2749 = lshr i64 %2730, 63
  %2750 = xor i64 %2747, %2749
  %2751 = add nuw nsw i64 %2750, %2747
  %2752 = icmp eq i64 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %39, align 1
  %2754 = load i64, i64* %RBP.i, align 8
  %2755 = add i64 %2754, -4
  %2756 = add i64 %2731, 14
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = sext i32 %2758 to i64
  %2760 = mul nsw i64 %2759, 180
  store i64 %2760, i64* %RSI.i2152, align 8
  %2761 = lshr i64 %2760, 63
  %2762 = add i64 %2760, %2732
  store i64 %2762, i64* %RCX.i2831.pre-phi, align 8
  %2763 = icmp ult i64 %2762, %2732
  %2764 = icmp ult i64 %2762, %2760
  %2765 = or i1 %2763, %2764
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %14, align 1
  %2767 = trunc i64 %2762 to i32
  %2768 = and i32 %2767, 255
  %2769 = tail call i32 @llvm.ctpop.i32(i32 %2768)
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = xor i8 %2771, 1
  store i8 %2772, i8* %21, align 1
  %2773 = xor i64 %2760, %2732
  %2774 = xor i64 %2773, %2762
  %2775 = lshr i64 %2774, 4
  %2776 = trunc i64 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %27, align 1
  %2778 = icmp eq i64 %2762, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %30, align 1
  %2780 = lshr i64 %2762, 63
  %2781 = trunc i64 %2780 to i8
  store i8 %2781, i8* %33, align 1
  %2782 = xor i64 %2780, %2747
  %2783 = xor i64 %2780, %2761
  %2784 = add nuw nsw i64 %2782, %2783
  %2785 = icmp eq i64 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %39, align 1
  %2787 = add i64 %2754, -8
  %2788 = add i64 %2731, 28
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = sext i32 %2790 to i64
  %2792 = mul nsw i64 %2791, 12
  store i64 %2792, i64* %RSI.i2152, align 8
  %2793 = lshr i64 %2792, 63
  %2794 = add i64 %2792, %2762
  store i64 %2794, i64* %RCX.i2831.pre-phi, align 8
  %2795 = icmp ult i64 %2794, %2762
  %2796 = icmp ult i64 %2794, %2792
  %2797 = or i1 %2795, %2796
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %14, align 1
  %2799 = trunc i64 %2794 to i32
  %2800 = and i32 %2799, 255
  %2801 = tail call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  store i8 %2804, i8* %21, align 1
  %2805 = xor i64 %2792, %2762
  %2806 = xor i64 %2805, %2794
  %2807 = lshr i64 %2806, 4
  %2808 = trunc i64 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %27, align 1
  %2810 = icmp eq i64 %2794, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %30, align 1
  %2812 = lshr i64 %2794, 63
  %2813 = trunc i64 %2812 to i8
  store i8 %2813, i8* %33, align 1
  %2814 = xor i64 %2812, %2780
  %2815 = xor i64 %2812, %2793
  %2816 = add nuw nsw i64 %2814, %2815
  %2817 = icmp eq i64 %2816, 2
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %39, align 1
  %2819 = load i64, i64* %RBP.i, align 8
  %2820 = add i64 %2819, -40
  %2821 = add i64 %2731, 39
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i32*
  %2823 = load i32, i32* %2822, align 4
  %2824 = sext i32 %2823 to i64
  store i64 %2824, i64* %RSI.i2152, align 8
  %2825 = shl nsw i64 %2824, 2
  %2826 = add i64 %2825, %2794
  %2827 = add i64 %2731, 46
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i32*
  store i32 0, i32* %2828, align 4
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -4
  %2831 = load i64, i64* %3, align 8
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2830 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = sext i32 %2834 to i64
  %2836 = mul nsw i64 %2835, 180
  store i64 %2836, i64* %RCX.i2831.pre-phi, align 8
  %2837 = lshr i64 %2836, 63
  %2838 = load i64, i64* %RAX.i2857, align 8
  %2839 = add i64 %2836, %2838
  store i64 %2839, i64* %RAX.i2857, align 8
  %2840 = icmp ult i64 %2839, %2838
  %2841 = icmp ult i64 %2839, %2836
  %2842 = or i1 %2840, %2841
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %14, align 1
  %2844 = trunc i64 %2839 to i32
  %2845 = and i32 %2844, 255
  %2846 = tail call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  store i8 %2849, i8* %21, align 1
  %2850 = xor i64 %2836, %2838
  %2851 = xor i64 %2850, %2839
  %2852 = lshr i64 %2851, 4
  %2853 = trunc i64 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %27, align 1
  %2855 = icmp eq i64 %2839, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %30, align 1
  %2857 = lshr i64 %2839, 63
  %2858 = trunc i64 %2857 to i8
  store i8 %2858, i8* %33, align 1
  %2859 = lshr i64 %2838, 63
  %2860 = xor i64 %2857, %2859
  %2861 = xor i64 %2857, %2837
  %2862 = add nuw nsw i64 %2860, %2861
  %2863 = icmp eq i64 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %39, align 1
  %2865 = add i64 %2829, -8
  %2866 = add i64 %2831, 18
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i32*
  %2868 = load i32, i32* %2867, align 4
  %2869 = sext i32 %2868 to i64
  %2870 = mul nsw i64 %2869, 12
  store i64 %2870, i64* %RCX.i2831.pre-phi, align 8
  %2871 = lshr i64 %2870, 63
  %2872 = add i64 %2870, %2839
  store i64 %2872, i64* %RAX.i2857, align 8
  %2873 = icmp ult i64 %2872, %2839
  %2874 = icmp ult i64 %2872, %2870
  %2875 = or i1 %2873, %2874
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %14, align 1
  %2877 = trunc i64 %2872 to i32
  %2878 = and i32 %2877, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %21, align 1
  %2883 = xor i64 %2870, %2839
  %2884 = xor i64 %2883, %2872
  %2885 = lshr i64 %2884, 4
  %2886 = trunc i64 %2885 to i8
  %2887 = and i8 %2886, 1
  store i8 %2887, i8* %27, align 1
  %2888 = icmp eq i64 %2872, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %30, align 1
  %2890 = lshr i64 %2872, 63
  %2891 = trunc i64 %2890 to i8
  store i8 %2891, i8* %33, align 1
  %2892 = xor i64 %2890, %2857
  %2893 = xor i64 %2890, %2871
  %2894 = add nuw nsw i64 %2892, %2893
  %2895 = icmp eq i64 %2894, 2
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %39, align 1
  %2897 = load i64, i64* %RBP.i, align 8
  %2898 = add i64 %2897, -40
  %2899 = add i64 %2831, 29
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = sext i32 %2901 to i64
  store i64 %2902, i64* %RCX.i2831.pre-phi, align 8
  %2903 = shl nsw i64 %2902, 2
  %2904 = add i64 %2903, %2872
  %2905 = add i64 %2831, 36
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  store i32 0, i32* %2906, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_4aeeba

block_.L_4aeeba:                                  ; preds = %block_.L_4aee0b, %block_4aebbf
  %2907 = phi i64 [ %.pre195, %block_.L_4aee0b ], [ %1767, %block_4aebbf ]
  %MEMORY.17 = phi %struct.Memory* [ %1859, %block_.L_4aee0b ], [ %MEMORY.12, %block_4aebbf ]
  %2908 = load i64, i64* %RBP.i, align 8
  %2909 = add i64 %2908, -40
  %2910 = add i64 %2907, 8
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i32*
  %2912 = load i32, i32* %2911, align 4
  %2913 = add i32 %2912, 1
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RAX.i2857, align 8
  %2915 = icmp eq i32 %2912, -1
  %2916 = icmp eq i32 %2913, 0
  %2917 = or i1 %2915, %2916
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %14, align 1
  %2919 = and i32 %2913, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %21, align 1
  %2924 = xor i32 %2913, %2912
  %2925 = lshr i32 %2924, 4
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  store i8 %2927, i8* %27, align 1
  %2928 = zext i1 %2916 to i8
  store i8 %2928, i8* %30, align 1
  %2929 = lshr i32 %2913, 31
  %2930 = trunc i32 %2929 to i8
  store i8 %2930, i8* %33, align 1
  %2931 = lshr i32 %2912, 31
  %2932 = xor i32 %2929, %2931
  %2933 = add nuw nsw i32 %2932, %2929
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %39, align 1
  %2936 = add i64 %2907, 14
  store i64 %2936, i64* %3, align 8
  store i32 %2913, i32* %2911, align 4
  %2937 = load i64, i64* %3, align 8
  %2938 = add i64 %2937, -800
  store i64 %2938, i64* %3, align 8
  br label %block_.L_4aeba8

block_.L_4aeecd:                                  ; preds = %block_.L_4aeba8
  %2939 = add i64 %1330, -8
  %2940 = add i64 %1358, 8
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = add i32 %2942, 1
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RAX.i2857, align 8
  %2945 = icmp eq i32 %2942, -1
  %2946 = icmp eq i32 %2943, 0
  %2947 = or i1 %2945, %2946
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %14, align 1
  %2949 = and i32 %2943, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %21, align 1
  %2954 = xor i32 %2943, %2942
  %2955 = lshr i32 %2954, 4
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  store i8 %2957, i8* %27, align 1
  %2958 = zext i1 %2946 to i8
  store i8 %2958, i8* %30, align 1
  %2959 = lshr i32 %2943, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %33, align 1
  %2961 = lshr i32 %2942, 31
  %2962 = xor i32 %2959, %2961
  %2963 = add nuw nsw i32 %2962, %2959
  %2964 = icmp eq i32 %2963, 2
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %39, align 1
  %2966 = add i64 %1358, 14
  store i64 %2966, i64* %3, align 8
  store i32 %2943, i32* %2941, align 4
  %2967 = load i64, i64* %3, align 8
  %2968 = add i64 %2967, -1206
  store i64 %2968, i64* %3, align 8
  br label %block_.L_4aea25

block_.L_4aeee0:                                  ; preds = %block_.L_4aea25
  %2969 = add i64 %906, -4
  %2970 = add i64 %939, 8
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = add i32 %2972, 1
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RAX.i2857, align 8
  %2975 = icmp eq i32 %2972, -1
  %2976 = icmp eq i32 %2973, 0
  %2977 = or i1 %2975, %2976
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %14, align 1
  %2979 = and i32 %2973, 255
  %2980 = tail call i32 @llvm.ctpop.i32(i32 %2979)
  %2981 = trunc i32 %2980 to i8
  %2982 = and i8 %2981, 1
  %2983 = xor i8 %2982, 1
  store i8 %2983, i8* %21, align 1
  %2984 = xor i32 %2973, %2972
  %2985 = lshr i32 %2984, 4
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  store i8 %2987, i8* %27, align 1
  %2988 = zext i1 %2976 to i8
  store i8 %2988, i8* %30, align 1
  %2989 = lshr i32 %2973, 31
  %2990 = trunc i32 %2989 to i8
  store i8 %2990, i8* %33, align 1
  %2991 = lshr i32 %2972, 31
  %2992 = xor i32 %2989, %2991
  %2993 = add nuw nsw i32 %2992, %2989
  %2994 = icmp eq i32 %2993, 2
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %39, align 1
  %2996 = add i64 %939, 14
  store i64 %2996, i64* %3, align 8
  store i32 %2973, i32* %2971, align 4
  %2997 = load i64, i64* %3, align 8
  %2998 = add i64 %2997, -1248
  store i64 %2998, i64* %3, align 8
  br label %block_.L_4aea0e

block_.L_4aeef3:                                  ; preds = %block_.L_4aea0e
  %2999 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %2999, i64* %RAX.i2857, align 8
  %3000 = add i64 %2999, 196
  %3001 = add i64 %901, 15
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = add i32 %3003, -2
  %3005 = icmp ult i32 %3003, 2
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %14, align 1
  %3007 = and i32 %3004, 255
  %3008 = tail call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  store i8 %3011, i8* %21, align 1
  %3012 = xor i32 %3004, %3003
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %27, align 1
  %3016 = icmp eq i32 %3004, 0
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %30, align 1
  %3018 = lshr i32 %3004, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %33, align 1
  %3020 = lshr i32 %3003, 31
  %3021 = xor i32 %3018, %3020
  %3022 = add nuw nsw i32 %3021, %3020
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %39, align 1
  %.v204 = select i1 %3016, i64 21, i64 1176
  %3025 = add i64 %901, %.v204
  %3026 = add i64 %3025, 7
  store i64 %3026, i64* %3, align 8
  store i32 0, i32* %871, align 4
  %.pre143 = load i64, i64* %3, align 8
  br i1 %3016, label %block_.L_4aef0f.preheader, label %block_.L_4af392.preheader

block_.L_4af392.preheader:                        ; preds = %block_.L_4aeef3
  br label %block_.L_4af392

block_.L_4aef0f.preheader:                        ; preds = %block_.L_4aeef3
  br label %block_.L_4aef0f

block_.L_4aef0f:                                  ; preds = %block_.L_4aef0f.preheader, %block_.L_4af033
  %3027 = phi i64 [ %3520, %block_.L_4af033 ], [ %.pre143, %block_.L_4aef0f.preheader ]
  %3028 = load i64, i64* %RBP.i, align 8
  %3029 = add i64 %3028, -4
  %3030 = add i64 %3027, 3
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i32*
  %3032 = load i32, i32* %3031, align 4
  %3033 = zext i32 %3032 to i64
  store i64 %3033, i64* %RAX.i2857, align 8
  %3034 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3035 = sub i32 %3032, %3034
  %3036 = icmp ult i32 %3032, %3034
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %14, align 1
  %3038 = and i32 %3035, 255
  %3039 = tail call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  store i8 %3042, i8* %21, align 1
  %3043 = xor i32 %3034, %3032
  %3044 = xor i32 %3043, %3035
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  store i8 %3047, i8* %27, align 1
  %3048 = icmp eq i32 %3035, 0
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %30, align 1
  %3050 = lshr i32 %3035, 31
  %3051 = trunc i32 %3050 to i8
  store i8 %3051, i8* %33, align 1
  %3052 = lshr i32 %3032, 31
  %3053 = lshr i32 %3034, 31
  %3054 = xor i32 %3053, %3052
  %3055 = xor i32 %3050, %3052
  %3056 = add nuw nsw i32 %3055, %3054
  %3057 = icmp eq i32 %3056, 2
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %39, align 1
  %3059 = icmp ne i8 %3051, 0
  %3060 = xor i1 %3059, %3057
  %.v241 = select i1 %3060, i64 16, i64 311
  %3061 = add i64 %3027, %.v241
  store i64 %3061, i64* %3, align 8
  br i1 %3060, label %block_4aef1f, label %block_.L_4af046

block_4aef1f:                                     ; preds = %block_.L_4aef0f
  %3062 = add i64 %3028, -8
  %3063 = add i64 %3061, 7
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i32*
  store i32 0, i32* %3064, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_4aef26

block_.L_4aef26:                                  ; preds = %block_.L_4af020, %block_4aef1f
  %3065 = phi i64 [ %3490, %block_.L_4af020 ], [ %.pre151, %block_4aef1f ]
  %3066 = load i64, i64* %RBP.i, align 8
  %3067 = add i64 %3066, -8
  %3068 = add i64 %3065, 3
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i32*
  %3070 = load i32, i32* %3069, align 4
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RAX.i2857, align 8
  %3072 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %3073 = sub i32 %3070, %3072
  %3074 = icmp ult i32 %3070, %3072
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %14, align 1
  %3076 = and i32 %3073, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1
  %3081 = xor i32 %3072, %3070
  %3082 = xor i32 %3081, %3073
  %3083 = lshr i32 %3082, 4
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  store i8 %3085, i8* %27, align 1
  %3086 = icmp eq i32 %3073, 0
  %3087 = zext i1 %3086 to i8
  store i8 %3087, i8* %30, align 1
  %3088 = lshr i32 %3073, 31
  %3089 = trunc i32 %3088 to i8
  store i8 %3089, i8* %33, align 1
  %3090 = lshr i32 %3070, 31
  %3091 = lshr i32 %3072, 31
  %3092 = xor i32 %3091, %3090
  %3093 = xor i32 %3088, %3090
  %3094 = add nuw nsw i32 %3093, %3092
  %3095 = icmp eq i32 %3094, 2
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %39, align 1
  %3097 = icmp ne i8 %3089, 0
  %3098 = xor i1 %3097, %3095
  %.v208 = select i1 %3098, i64 16, i64 269
  %3099 = add i64 %3065, %.v208
  store i64 %3099, i64* %3, align 8
  br i1 %3098, label %block_4aef36, label %block_.L_4af033

block_4aef36:                                     ; preds = %block_.L_4aef26
  %3100 = add i64 %3066, -40
  %3101 = add i64 %3099, 7
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  store i32 0, i32* %3102, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_4aef3d

block_.L_4aef3d:                                  ; preds = %block_.L_4aef70, %block_4aef36
  %3103 = phi i64 [ %3460, %block_.L_4aef70 ], [ %.pre152, %block_4aef36 ]
  %3104 = load i64, i64* %RBP.i, align 8
  %3105 = add i64 %3104, -40
  %3106 = add i64 %3103, 4
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = add i32 %3108, -3
  %3110 = icmp ult i32 %3108, 3
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %14, align 1
  %3112 = and i32 %3109, 255
  %3113 = tail call i32 @llvm.ctpop.i32(i32 %3112)
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  %3116 = xor i8 %3115, 1
  store i8 %3116, i8* %21, align 1
  %3117 = xor i32 %3109, %3108
  %3118 = lshr i32 %3117, 4
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  store i8 %3120, i8* %27, align 1
  %3121 = icmp eq i32 %3109, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %30, align 1
  %3123 = lshr i32 %3109, 31
  %3124 = trunc i32 %3123 to i8
  store i8 %3124, i8* %33, align 1
  %3125 = lshr i32 %3108, 31
  %3126 = xor i32 %3123, %3125
  %3127 = add nuw nsw i32 %3126, %3125
  %3128 = icmp eq i32 %3127, 2
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %39, align 1
  %3130 = icmp ne i8 %3124, 0
  %3131 = xor i1 %3130, %3128
  %.v209 = select i1 %3131, i64 10, i64 227
  %3132 = add i64 %3103, %.v209
  store i64 %3132, i64* %3, align 8
  br i1 %3131, label %block_4aef47, label %block_.L_4af020

block_4aef47:                                     ; preds = %block_.L_4aef3d
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %3, align 8
  %3134 = load i32, i32* %3107, align 4
  store i8 0, i8* %14, align 1
  %3135 = and i32 %3134, 255
  %3136 = tail call i32 @llvm.ctpop.i32(i32 %3135)
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = xor i8 %3138, 1
  store i8 %3139, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3140 = icmp eq i32 %3134, 0
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %30, align 1
  %3142 = lshr i32 %3134, 31
  %3143 = trunc i32 %3142 to i8
  store i8 %3143, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v247 = select i1 %3140, i64 10, i64 28
  %3144 = add i64 %3132, %.v247
  %3145 = add i64 %3144, 7
  store i64 %3145, i64* %3, align 8
  br i1 %3140, label %block_4aef51, label %block_.L_4aef63

block_4aef51:                                     ; preds = %block_4aef47
  %3146 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3147 = zext i32 %3146 to i64
  store i64 %3147, i64* %RAX.i2857, align 8
  %3148 = add i64 %3104, -35452
  %3149 = add i64 %3144, 13
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i32*
  store i32 %3146, i32* %3150, align 4
  %3151 = load i64, i64* %3, align 8
  %3152 = add i64 %3151, 18
  store i64 %3152, i64* %3, align 8
  br label %block_.L_4aef70

block_.L_4aef63:                                  ; preds = %block_4aef47
  %3153 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RAX.i2857, align 8
  %3155 = add i64 %3104, -35452
  %3156 = add i64 %3144, 13
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to i32*
  store i32 %3153, i32* %3157, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_4aef70

block_.L_4aef70:                                  ; preds = %block_.L_4aef63, %block_4aef51
  %3158 = phi i64 [ %.pre153, %block_.L_4aef63 ], [ %3152, %block_4aef51 ]
  %3159 = load i64, i64* %RBP.i, align 8
  %3160 = add i64 %3159, -35452
  %3161 = add i64 %3158, 6
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RAX.i2857, align 8
  %3165 = add i64 %3159, -19184
  store i64 %3165, i64* %RCX.i2831.pre-phi, align 8
  %3166 = add i64 %3159, -772
  %3167 = add i64 %3158, 19
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i32*
  store i32 %3163, i32* %3168, align 4
  %3169 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %3170 = load i64, i64* %3, align 8
  %3171 = add i64 %3169, 2700
  store i64 %3171, i64* %RDX.i2815, align 8
  %3172 = icmp ugt i64 %3169, -2701
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %14, align 1
  %3174 = trunc i64 %3171 to i32
  %3175 = and i32 %3174, 255
  %3176 = tail call i32 @llvm.ctpop.i32(i32 %3175)
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = xor i8 %3178, 1
  store i8 %3179, i8* %21, align 1
  %3180 = xor i64 %3171, %3169
  %3181 = lshr i64 %3180, 4
  %3182 = trunc i64 %3181 to i8
  %3183 = and i8 %3182, 1
  store i8 %3183, i8* %27, align 1
  %3184 = icmp eq i64 %3171, 0
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %30, align 1
  %3186 = lshr i64 %3171, 63
  %3187 = trunc i64 %3186 to i8
  store i8 %3187, i8* %33, align 1
  %3188 = lshr i64 %3169, 63
  %3189 = xor i64 %3186, %3188
  %3190 = add nuw nsw i64 %3189, %3186
  %3191 = icmp eq i64 %3190, 2
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %39, align 1
  %3193 = load i64, i64* %RBP.i, align 8
  %3194 = add i64 %3193, -4
  %3195 = add i64 %3170, 14
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3194 to i32*
  %3197 = load i32, i32* %3196, align 4
  %3198 = sext i32 %3197 to i64
  %3199 = mul nsw i64 %3198, 180
  store i64 %3199, i64* %RSI.i2152, align 8
  %3200 = lshr i64 %3199, 63
  %3201 = add i64 %3199, %3171
  store i64 %3201, i64* %RDX.i2815, align 8
  %3202 = icmp ult i64 %3201, %3171
  %3203 = icmp ult i64 %3201, %3199
  %3204 = or i1 %3202, %3203
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %14, align 1
  %3206 = trunc i64 %3201 to i32
  %3207 = and i32 %3206, 255
  %3208 = tail call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  store i8 %3211, i8* %21, align 1
  %3212 = xor i64 %3199, %3171
  %3213 = xor i64 %3212, %3201
  %3214 = lshr i64 %3213, 4
  %3215 = trunc i64 %3214 to i8
  %3216 = and i8 %3215, 1
  store i8 %3216, i8* %27, align 1
  %3217 = icmp eq i64 %3201, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %30, align 1
  %3219 = lshr i64 %3201, 63
  %3220 = trunc i64 %3219 to i8
  store i8 %3220, i8* %33, align 1
  %3221 = xor i64 %3219, %3186
  %3222 = xor i64 %3219, %3200
  %3223 = add nuw nsw i64 %3221, %3222
  %3224 = icmp eq i64 %3223, 2
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %39, align 1
  %3226 = add i64 %3193, -8
  %3227 = add i64 %3170, 28
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3226 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = sext i32 %3229 to i64
  %3231 = mul nsw i64 %3230, 12
  store i64 %3231, i64* %RSI.i2152, align 8
  %3232 = lshr i64 %3231, 63
  %3233 = add i64 %3231, %3201
  store i64 %3233, i64* %RDX.i2815, align 8
  %3234 = icmp ult i64 %3233, %3201
  %3235 = icmp ult i64 %3233, %3231
  %3236 = or i1 %3234, %3235
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %14, align 1
  %3238 = trunc i64 %3233 to i32
  %3239 = and i32 %3238, 255
  %3240 = tail call i32 @llvm.ctpop.i32(i32 %3239)
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = xor i8 %3242, 1
  store i8 %3243, i8* %21, align 1
  %3244 = xor i64 %3231, %3201
  %3245 = xor i64 %3244, %3233
  %3246 = lshr i64 %3245, 4
  %3247 = trunc i64 %3246 to i8
  %3248 = and i8 %3247, 1
  store i8 %3248, i8* %27, align 1
  %3249 = icmp eq i64 %3233, 0
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %30, align 1
  %3251 = lshr i64 %3233, 63
  %3252 = trunc i64 %3251 to i8
  store i8 %3252, i8* %33, align 1
  %3253 = xor i64 %3251, %3219
  %3254 = xor i64 %3251, %3232
  %3255 = add nuw nsw i64 %3253, %3254
  %3256 = icmp eq i64 %3255, 2
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %39, align 1
  %3258 = load i64, i64* %RBP.i, align 8
  %3259 = add i64 %3258, -40
  %3260 = add i64 %3170, 39
  store i64 %3260, i64* %3, align 8
  %3261 = inttoptr i64 %3259 to i32*
  %3262 = load i32, i32* %3261, align 4
  %3263 = sext i32 %3262 to i64
  store i64 %3263, i64* %RSI.i2152, align 8
  %3264 = shl nsw i64 %3263, 2
  %3265 = add i64 %3264, %3233
  %3266 = add i64 %3170, 42
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i32*
  %3268 = load i32, i32* %3267, align 4
  %3269 = zext i32 %3268 to i64
  store i64 %3269, i64* %RAX.i2857, align 8
  %3270 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %3270, i64* %RDX.i2815, align 8
  %3271 = add i64 %3270, 8
  %3272 = add i64 %3170, 54
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i64*
  %3274 = load i64, i64* %3273, align 8
  store i64 %3274, i64* %RDX.i2815, align 8
  %3275 = add i64 %3258, -4
  %3276 = add i64 %3170, 58
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to i32*
  %3278 = load i32, i32* %3277, align 4
  %3279 = sext i32 %3278 to i64
  store i64 %3279, i64* %RSI.i2152, align 8
  %3280 = shl nsw i64 %3279, 3
  %3281 = add i64 %3280, %3274
  %3282 = add i64 %3170, 62
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i64*
  %3284 = load i64, i64* %3283, align 8
  store i64 %3284, i64* %RDX.i2815, align 8
  %3285 = add i64 %3258, -8
  %3286 = add i64 %3170, 66
  store i64 %3286, i64* %3, align 8
  %3287 = inttoptr i64 %3285 to i32*
  %3288 = load i32, i32* %3287, align 4
  %3289 = sext i32 %3288 to i64
  store i64 %3289, i64* %RSI.i2152, align 8
  %3290 = shl nsw i64 %3289, 3
  %3291 = add i64 %3290, %3284
  %3292 = add i64 %3170, 70
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RDX.i2815, align 8
  %3295 = add i64 %3170, 74
  store i64 %3295, i64* %3, align 8
  %3296 = load i32, i32* %3261, align 4
  %3297 = sext i32 %3296 to i64
  store i64 %3297, i64* %RSI.i2152, align 8
  %3298 = shl nsw i64 %3297, 2
  %3299 = add i64 %3298, %3294
  %3300 = add i64 %3170, 77
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  store i32 %3268, i32* %3301, align 4
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -4
  %3304 = load i64, i64* %3, align 8
  %3305 = add i64 %3304, 4
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3303 to i32*
  %3307 = load i32, i32* %3306, align 4
  %3308 = sext i32 %3307 to i64
  %3309 = add i64 %3304, 11
  store i64 %3309, i64* %3, align 8
  %3310 = sext i32 %3307 to i128
  %3311 = and i128 %3310, -18446744073709551616
  %3312 = zext i64 %3308 to i128
  %3313 = or i128 %3311, %3312
  %3314 = mul nsw i128 %3313, 180
  %3315 = trunc i128 %3314 to i64
  store i64 %3315, i64* %RDX.i2815, align 8
  %3316 = sext i64 %3315 to i128
  %3317 = icmp ne i128 %3316, %3314
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %14, align 1
  %3319 = trunc i128 %3314 to i32
  %3320 = and i32 %3319, 252
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3325 = lshr i64 %3315, 63
  %3326 = trunc i64 %3325 to i8
  store i8 %3326, i8* %33, align 1
  store i8 %3318, i8* %39, align 1
  %3327 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %3328 = add i64 %3315, %3327
  store i64 %3328, i64* %RCX.i2831.pre-phi, align 8
  %3329 = icmp ult i64 %3328, %3327
  %3330 = icmp ult i64 %3328, %3315
  %3331 = or i1 %3329, %3330
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %14, align 1
  %3333 = trunc i64 %3328 to i32
  %3334 = and i32 %3333, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %21, align 1
  %3339 = xor i64 %3315, %3327
  %3340 = xor i64 %3339, %3328
  %3341 = lshr i64 %3340, 4
  %3342 = trunc i64 %3341 to i8
  %3343 = and i8 %3342, 1
  store i8 %3343, i8* %27, align 1
  %3344 = icmp eq i64 %3328, 0
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %30, align 1
  %3346 = lshr i64 %3328, 63
  %3347 = trunc i64 %3346 to i8
  store i8 %3347, i8* %33, align 1
  %3348 = lshr i64 %3327, 63
  %3349 = xor i64 %3346, %3348
  %3350 = xor i64 %3346, %3325
  %3351 = add nuw nsw i64 %3349, %3350
  %3352 = icmp eq i64 %3351, 2
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %39, align 1
  %3354 = add i64 %3302, -8
  %3355 = add i64 %3304, 18
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3354 to i32*
  %3357 = load i32, i32* %3356, align 4
  %3358 = sext i32 %3357 to i64
  %3359 = mul nsw i64 %3358, 12
  store i64 %3359, i64* %RDX.i2815, align 8
  %3360 = lshr i64 %3359, 63
  %3361 = add i64 %3359, %3328
  store i64 %3361, i64* %RCX.i2831.pre-phi, align 8
  %3362 = icmp ult i64 %3361, %3328
  %3363 = icmp ult i64 %3361, %3359
  %3364 = or i1 %3362, %3363
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %14, align 1
  %3366 = trunc i64 %3361 to i32
  %3367 = and i32 %3366, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i64 %3359, %3328
  %3373 = xor i64 %3372, %3361
  %3374 = lshr i64 %3373, 4
  %3375 = trunc i64 %3374 to i8
  %3376 = and i8 %3375, 1
  store i8 %3376, i8* %27, align 1
  %3377 = icmp eq i64 %3361, 0
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %30, align 1
  %3379 = lshr i64 %3361, 63
  %3380 = trunc i64 %3379 to i8
  store i8 %3380, i8* %33, align 1
  %3381 = xor i64 %3379, %3346
  %3382 = xor i64 %3379, %3360
  %3383 = add nuw nsw i64 %3381, %3382
  %3384 = icmp eq i64 %3383, 2
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %39, align 1
  %3386 = load i64, i64* %RBP.i, align 8
  %3387 = add i64 %3386, -40
  %3388 = add i64 %3304, 29
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = sext i32 %3390 to i64
  store i64 %3391, i64* %RDX.i2815, align 8
  %3392 = shl nsw i64 %3391, 2
  %3393 = add i64 %3392, %3361
  %3394 = add i64 %3304, 32
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = zext i32 %3396 to i64
  store i64 %3397, i64* %RAX.i2857, align 8
  %3398 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %3398, i64* %RCX.i2831.pre-phi, align 8
  %3399 = add i64 %3304, 43
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to i64*
  %3401 = load i64, i64* %3400, align 8
  store i64 %3401, i64* %RCX.i2831.pre-phi, align 8
  %3402 = add i64 %3386, -4
  %3403 = add i64 %3304, 47
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3402 to i32*
  %3405 = load i32, i32* %3404, align 4
  %3406 = sext i32 %3405 to i64
  store i64 %3406, i64* %RDX.i2815, align 8
  %3407 = shl nsw i64 %3406, 3
  %3408 = add i64 %3407, %3401
  %3409 = add i64 %3304, 51
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i64*
  %3411 = load i64, i64* %3410, align 8
  store i64 %3411, i64* %RCX.i2831.pre-phi, align 8
  %3412 = add i64 %3386, -8
  %3413 = add i64 %3304, 55
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = sext i32 %3415 to i64
  store i64 %3416, i64* %RDX.i2815, align 8
  %3417 = shl nsw i64 %3416, 3
  %3418 = add i64 %3417, %3411
  %3419 = add i64 %3304, 59
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %RCX.i2831.pre-phi, align 8
  %3422 = add i64 %3304, 63
  store i64 %3422, i64* %3, align 8
  %3423 = load i32, i32* %3389, align 4
  %3424 = sext i32 %3423 to i64
  store i64 %3424, i64* %RDX.i2815, align 8
  %3425 = shl nsw i64 %3424, 2
  %3426 = add i64 %3425, %3421
  %3427 = add i64 %3304, 66
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i32*
  store i32 %3396, i32* %3428, align 4
  %3429 = load i64, i64* %RBP.i, align 8
  %3430 = add i64 %3429, -40
  %3431 = load i64, i64* %3, align 8
  %3432 = add i64 %3431, 3
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3430 to i32*
  %3434 = load i32, i32* %3433, align 4
  %3435 = add i32 %3434, 1
  %3436 = zext i32 %3435 to i64
  store i64 %3436, i64* %RAX.i2857, align 8
  %3437 = icmp eq i32 %3434, -1
  %3438 = icmp eq i32 %3435, 0
  %3439 = or i1 %3437, %3438
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %14, align 1
  %3441 = and i32 %3435, 255
  %3442 = tail call i32 @llvm.ctpop.i32(i32 %3441)
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = xor i8 %3444, 1
  store i8 %3445, i8* %21, align 1
  %3446 = xor i32 %3435, %3434
  %3447 = lshr i32 %3446, 4
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  store i8 %3449, i8* %27, align 1
  %3450 = zext i1 %3438 to i8
  store i8 %3450, i8* %30, align 1
  %3451 = lshr i32 %3435, 31
  %3452 = trunc i32 %3451 to i8
  store i8 %3452, i8* %33, align 1
  %3453 = lshr i32 %3434, 31
  %3454 = xor i32 %3451, %3453
  %3455 = add nuw nsw i32 %3454, %3451
  %3456 = icmp eq i32 %3455, 2
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %39, align 1
  %3458 = add i64 %3431, 9
  store i64 %3458, i64* %3, align 8
  store i32 %3435, i32* %3433, align 4
  %3459 = load i64, i64* %3, align 8
  %3460 = add i64 %3459, -222
  store i64 %3460, i64* %3, align 8
  br label %block_.L_4aef3d

block_.L_4af020:                                  ; preds = %block_.L_4aef3d
  %3461 = add i64 %3104, -8
  %3462 = add i64 %3132, 8
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = add i32 %3464, 1
  %3466 = zext i32 %3465 to i64
  store i64 %3466, i64* %RAX.i2857, align 8
  %3467 = icmp eq i32 %3464, -1
  %3468 = icmp eq i32 %3465, 0
  %3469 = or i1 %3467, %3468
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %14, align 1
  %3471 = and i32 %3465, 255
  %3472 = tail call i32 @llvm.ctpop.i32(i32 %3471)
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = xor i8 %3474, 1
  store i8 %3475, i8* %21, align 1
  %3476 = xor i32 %3465, %3464
  %3477 = lshr i32 %3476, 4
  %3478 = trunc i32 %3477 to i8
  %3479 = and i8 %3478, 1
  store i8 %3479, i8* %27, align 1
  %3480 = zext i1 %3468 to i8
  store i8 %3480, i8* %30, align 1
  %3481 = lshr i32 %3465, 31
  %3482 = trunc i32 %3481 to i8
  store i8 %3482, i8* %33, align 1
  %3483 = lshr i32 %3464, 31
  %3484 = xor i32 %3481, %3483
  %3485 = add nuw nsw i32 %3484, %3481
  %3486 = icmp eq i32 %3485, 2
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %39, align 1
  %3488 = add i64 %3132, 14
  store i64 %3488, i64* %3, align 8
  store i32 %3465, i32* %3463, align 4
  %3489 = load i64, i64* %3, align 8
  %3490 = add i64 %3489, -264
  store i64 %3490, i64* %3, align 8
  br label %block_.L_4aef26

block_.L_4af033:                                  ; preds = %block_.L_4aef26
  %3491 = add i64 %3066, -4
  %3492 = add i64 %3099, 8
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3491 to i32*
  %3494 = load i32, i32* %3493, align 4
  %3495 = add i32 %3494, 1
  %3496 = zext i32 %3495 to i64
  store i64 %3496, i64* %RAX.i2857, align 8
  %3497 = icmp eq i32 %3494, -1
  %3498 = icmp eq i32 %3495, 0
  %3499 = or i1 %3497, %3498
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %14, align 1
  %3501 = and i32 %3495, 255
  %3502 = tail call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  store i8 %3505, i8* %21, align 1
  %3506 = xor i32 %3495, %3494
  %3507 = lshr i32 %3506, 4
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  store i8 %3509, i8* %27, align 1
  %3510 = zext i1 %3498 to i8
  store i8 %3510, i8* %30, align 1
  %3511 = lshr i32 %3495, 31
  %3512 = trunc i32 %3511 to i8
  store i8 %3512, i8* %33, align 1
  %3513 = lshr i32 %3494, 31
  %3514 = xor i32 %3511, %3513
  %3515 = add nuw nsw i32 %3514, %3511
  %3516 = icmp eq i32 %3515, 2
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %39, align 1
  %3518 = add i64 %3099, 14
  store i64 %3518, i64* %3, align 8
  store i32 %3495, i32* %3493, align 4
  %3519 = load i64, i64* %3, align 8
  %3520 = add i64 %3519, -306
  store i64 %3520, i64* %3, align 8
  br label %block_.L_4aef0f

block_.L_4af046:                                  ; preds = %block_.L_4aef0f
  %3521 = add i64 %3028, -35396
  %3522 = add i64 %3061, 10
  store i64 %3522, i64* %3, align 8
  %3523 = inttoptr i64 %3521 to i32*
  store i32 0, i32* %3523, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_4af050

block_.L_4af050:                                  ; preds = %block_.L_4af163, %block_.L_4af046
  %3524 = phi i64 [ %3833, %block_.L_4af163 ], [ %.pre144, %block_.L_4af046 ]
  %3525 = load i64, i64* %RBP.i, align 8
  %3526 = add i64 %3525, -35396
  %3527 = add i64 %3524, 6
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i32*
  %3529 = load i32, i32* %3528, align 4
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RAX.i2857, align 8
  %3531 = add i64 %3525, -808
  %3532 = add i64 %3524, 12
  store i64 %3532, i64* %3, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = add i32 %3534, 2
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RCX.i2831.pre-phi, align 8
  %3537 = lshr i32 %3535, 31
  %3538 = sub i32 %3529, %3535
  %3539 = icmp ult i32 %3529, %3535
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %14, align 1
  %3541 = and i32 %3538, 255
  %3542 = tail call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  store i8 %3545, i8* %21, align 1
  %3546 = xor i32 %3535, %3529
  %3547 = xor i32 %3546, %3538
  %3548 = lshr i32 %3547, 4
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  store i8 %3550, i8* %27, align 1
  %3551 = icmp eq i32 %3538, 0
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %30, align 1
  %3553 = lshr i32 %3538, 31
  %3554 = trunc i32 %3553 to i8
  store i8 %3554, i8* %33, align 1
  %3555 = lshr i32 %3529, 31
  %3556 = xor i32 %3537, %3555
  %3557 = xor i32 %3553, %3555
  %3558 = add nuw nsw i32 %3557, %3556
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %39, align 1
  %3561 = icmp ne i8 %3554, 0
  %3562 = xor i1 %3561, %3559
  %.v242 = select i1 %3562, i64 23, i64 300
  %3563 = add i64 %3524, %.v242
  store i64 %3563, i64* %3, align 8
  br i1 %3562, label %block_4af067, label %block_.L_4af17c

block_4af067:                                     ; preds = %block_.L_4af050
  %3564 = add i64 %3525, -36
  %3565 = add i64 %3563, 7
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i32*
  store i32 0, i32* %3566, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_4af06e

block_.L_4af06e:                                  ; preds = %block_4af085, %block_4af067
  %3567 = phi i64 [ %3805, %block_4af085 ], [ %.pre150, %block_4af067 ]
  %3568 = load i64, i64* %RBP.i, align 8
  %3569 = add i64 %3568, -36
  %3570 = add i64 %3567, 3
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i32*
  %3572 = load i32, i32* %3571, align 4
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RAX.i2857, align 8
  %3574 = add i64 %3568, -35396
  %3575 = add i64 %3567, 10
  store i64 %3575, i64* %3, align 8
  %3576 = inttoptr i64 %3574 to i32*
  %3577 = load i32, i32* %3576, align 4
  %3578 = sext i32 %3577 to i64
  store i64 %3578, i64* %RCX.i2831.pre-phi, align 8
  %3579 = shl nsw i64 %3578, 2
  %3580 = add nsw i64 %3579, 7489456
  %3581 = add i64 %3567, 17
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = sub i32 %3572, %3583
  %3585 = icmp ult i32 %3572, %3583
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %14, align 1
  %3587 = and i32 %3584, 255
  %3588 = tail call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  store i8 %3591, i8* %21, align 1
  %3592 = xor i32 %3583, %3572
  %3593 = xor i32 %3592, %3584
  %3594 = lshr i32 %3593, 4
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  store i8 %3596, i8* %27, align 1
  %3597 = icmp eq i32 %3584, 0
  %3598 = zext i1 %3597 to i8
  store i8 %3598, i8* %30, align 1
  %3599 = lshr i32 %3584, 31
  %3600 = trunc i32 %3599 to i8
  store i8 %3600, i8* %33, align 1
  %3601 = lshr i32 %3572, 31
  %3602 = lshr i32 %3583, 31
  %3603 = xor i32 %3602, %3601
  %3604 = xor i32 %3599, %3601
  %3605 = add nuw nsw i32 %3604, %3603
  %3606 = icmp eq i32 %3605, 2
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %39, align 1
  %3608 = icmp ne i8 %3600, 0
  %3609 = xor i1 %3608, %3606
  %.v207 = select i1 %3609, i64 23, i64 245
  %3610 = add i64 %3567, %.v207
  store i64 %3610, i64* %3, align 8
  br i1 %3609, label %block_4af085, label %block_.L_4af163

block_4af085:                                     ; preds = %block_.L_4af06e
  %3611 = add i64 %3568, -804
  %3612 = add i64 %3610, 6
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i32*
  %3614 = load i32, i32* %3613, align 4
  %3615 = zext i32 %3614 to i64
  store i64 %3615, i64* %RAX.i2857, align 8
  %3616 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3616, i64* %RCX.i2831.pre-phi, align 8
  %3617 = add i64 %3610, 21
  store i64 %3617, i64* %3, align 8
  %3618 = load i32, i32* %3576, align 4
  %3619 = sext i32 %3618 to i64
  store i64 %3619, i64* %RDX.i2815, align 8
  %3620 = shl nsw i64 %3619, 3
  %3621 = add i64 %3620, %3616
  %3622 = add i64 %3610, 25
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i64*
  %3624 = load i64, i64* %3623, align 8
  store i64 %3624, i64* %RCX.i2831.pre-phi, align 8
  %3625 = add i64 %3610, 29
  store i64 %3625, i64* %3, align 8
  %3626 = load i32, i32* %3571, align 4
  %3627 = sext i32 %3626 to i64
  store i64 %3627, i64* %RDX.i2815, align 8
  %3628 = shl nsw i64 %3627, 3
  %3629 = add i64 %3628, %3624
  %3630 = add i64 %3610, 33
  store i64 %3630, i64* %3, align 8
  %3631 = inttoptr i64 %3629 to i64*
  %3632 = load i64, i64* %3631, align 8
  store i64 %3632, i64* %RCX.i2831.pre-phi, align 8
  %3633 = add i64 %3610, 35
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  store i32 %3614, i32* %3634, align 4
  %3635 = load i64, i64* %RBP.i, align 8
  %3636 = add i64 %3635, -800
  %3637 = load i64, i64* %3, align 8
  %3638 = add i64 %3637, 6
  store i64 %3638, i64* %3, align 8
  %3639 = inttoptr i64 %3636 to i32*
  %3640 = load i32, i32* %3639, align 4
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RAX.i2857, align 8
  %3642 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3642, i64* %RCX.i2831.pre-phi, align 8
  %3643 = add i64 %3635, -35396
  %3644 = add i64 %3637, 21
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = sext i32 %3646 to i64
  store i64 %3647, i64* %RDX.i2815, align 8
  %3648 = shl nsw i64 %3647, 3
  %3649 = add i64 %3648, %3642
  %3650 = add i64 %3637, 25
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i64*
  %3652 = load i64, i64* %3651, align 8
  store i64 %3652, i64* %RCX.i2831.pre-phi, align 8
  %3653 = add i64 %3635, -36
  %3654 = add i64 %3637, 29
  store i64 %3654, i64* %3, align 8
  %3655 = inttoptr i64 %3653 to i32*
  %3656 = load i32, i32* %3655, align 4
  %3657 = sext i32 %3656 to i64
  store i64 %3657, i64* %RDX.i2815, align 8
  %3658 = shl nsw i64 %3657, 3
  %3659 = add i64 %3658, %3652
  %3660 = add i64 %3637, 33
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i64*
  %3662 = load i64, i64* %3661, align 8
  store i64 %3662, i64* %RCX.i2831.pre-phi, align 8
  %3663 = add i64 %3662, 4
  %3664 = add i64 %3637, 36
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i32*
  store i32 %3640, i32* %3665, align 4
  %3666 = load i64, i64* %RBP.i, align 8
  %3667 = add i64 %3666, -796
  %3668 = load i64, i64* %3, align 8
  %3669 = add i64 %3668, 6
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3667 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RAX.i2857, align 8
  %3673 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3673, i64* %RCX.i2831.pre-phi, align 8
  %3674 = add i64 %3666, -35396
  %3675 = add i64 %3668, 21
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3674 to i32*
  %3677 = load i32, i32* %3676, align 4
  %3678 = sext i32 %3677 to i64
  store i64 %3678, i64* %RDX.i2815, align 8
  %3679 = shl nsw i64 %3678, 3
  %3680 = add i64 %3679, %3673
  %3681 = add i64 %3668, 25
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i64*
  %3683 = load i64, i64* %3682, align 8
  store i64 %3683, i64* %RCX.i2831.pre-phi, align 8
  %3684 = add i64 %3666, -36
  %3685 = add i64 %3668, 29
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = sext i32 %3687 to i64
  store i64 %3688, i64* %RDX.i2815, align 8
  %3689 = shl nsw i64 %3688, 3
  %3690 = add i64 %3689, %3683
  %3691 = add i64 %3668, 33
  store i64 %3691, i64* %3, align 8
  %3692 = inttoptr i64 %3690 to i64*
  %3693 = load i64, i64* %3692, align 8
  store i64 %3693, i64* %RCX.i2831.pre-phi, align 8
  %3694 = add i64 %3693, 8
  %3695 = add i64 %3668, 36
  store i64 %3695, i64* %3, align 8
  %3696 = inttoptr i64 %3694 to i32*
  store i32 %3671, i32* %3696, align 4
  %3697 = load i64, i64* %3, align 8
  %3698 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3698, i64* %RCX.i2831.pre-phi, align 8
  %3699 = load i64, i64* %RBP.i, align 8
  %3700 = add i64 %3699, -35396
  %3701 = add i64 %3697, 15
  store i64 %3701, i64* %3, align 8
  %3702 = inttoptr i64 %3700 to i32*
  %3703 = load i32, i32* %3702, align 4
  %3704 = sext i32 %3703 to i64
  store i64 %3704, i64* %RDX.i2815, align 8
  %3705 = shl nsw i64 %3704, 3
  %3706 = add i64 %3705, %3698
  %3707 = add i64 %3697, 19
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i64*
  %3709 = load i64, i64* %3708, align 8
  store i64 %3709, i64* %RCX.i2831.pre-phi, align 8
  %3710 = add i64 %3699, -36
  %3711 = add i64 %3697, 23
  store i64 %3711, i64* %3, align 8
  %3712 = inttoptr i64 %3710 to i32*
  %3713 = load i32, i32* %3712, align 4
  %3714 = sext i32 %3713 to i64
  store i64 %3714, i64* %RDX.i2815, align 8
  %3715 = shl nsw i64 %3714, 3
  %3716 = add i64 %3715, %3709
  %3717 = add i64 %3697, 27
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i64*
  %3719 = load i64, i64* %3718, align 8
  store i64 %3719, i64* %RCX.i2831.pre-phi, align 8
  %3720 = add i64 %3697, 33
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  store i32 0, i32* %3721, align 4
  %3722 = load i64, i64* %3, align 8
  %3723 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3723, i64* %RCX.i2831.pre-phi, align 8
  %3724 = load i64, i64* %RBP.i, align 8
  %3725 = add i64 %3724, -35396
  %3726 = add i64 %3722, 15
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  %3728 = load i32, i32* %3727, align 4
  %3729 = sext i32 %3728 to i64
  store i64 %3729, i64* %RDX.i2815, align 8
  %3730 = shl nsw i64 %3729, 3
  %3731 = add i64 %3730, %3723
  %3732 = add i64 %3722, 19
  store i64 %3732, i64* %3, align 8
  %3733 = inttoptr i64 %3731 to i64*
  %3734 = load i64, i64* %3733, align 8
  store i64 %3734, i64* %RCX.i2831.pre-phi, align 8
  %3735 = add i64 %3724, -36
  %3736 = add i64 %3722, 23
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i32*
  %3738 = load i32, i32* %3737, align 4
  %3739 = sext i32 %3738 to i64
  store i64 %3739, i64* %RDX.i2815, align 8
  %3740 = shl nsw i64 %3739, 3
  %3741 = add i64 %3740, %3734
  %3742 = add i64 %3722, 27
  store i64 %3742, i64* %3, align 8
  %3743 = inttoptr i64 %3741 to i64*
  %3744 = load i64, i64* %3743, align 8
  store i64 %3744, i64* %RCX.i2831.pre-phi, align 8
  %3745 = add i64 %3744, 4
  %3746 = add i64 %3722, 34
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3745 to i32*
  store i32 0, i32* %3747, align 4
  %3748 = load i64, i64* %3, align 8
  %3749 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3749, i64* %RCX.i2831.pre-phi, align 8
  %3750 = load i64, i64* %RBP.i, align 8
  %3751 = add i64 %3750, -35396
  %3752 = add i64 %3748, 15
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i32*
  %3754 = load i32, i32* %3753, align 4
  %3755 = sext i32 %3754 to i64
  store i64 %3755, i64* %RDX.i2815, align 8
  %3756 = shl nsw i64 %3755, 3
  %3757 = add i64 %3756, %3749
  %3758 = add i64 %3748, 19
  store i64 %3758, i64* %3, align 8
  %3759 = inttoptr i64 %3757 to i64*
  %3760 = load i64, i64* %3759, align 8
  store i64 %3760, i64* %RCX.i2831.pre-phi, align 8
  %3761 = add i64 %3750, -36
  %3762 = add i64 %3748, 23
  store i64 %3762, i64* %3, align 8
  %3763 = inttoptr i64 %3761 to i32*
  %3764 = load i32, i32* %3763, align 4
  %3765 = sext i32 %3764 to i64
  store i64 %3765, i64* %RDX.i2815, align 8
  %3766 = shl nsw i64 %3765, 3
  %3767 = add i64 %3766, %3760
  %3768 = add i64 %3748, 27
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i64*
  %3770 = load i64, i64* %3769, align 8
  store i64 %3770, i64* %RCX.i2831.pre-phi, align 8
  %3771 = add i64 %3770, 8
  %3772 = add i64 %3748, 34
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3771 to i32*
  store i32 0, i32* %3773, align 4
  %3774 = load i64, i64* %RBP.i, align 8
  %3775 = add i64 %3774, -36
  %3776 = load i64, i64* %3, align 8
  %3777 = add i64 %3776, 3
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3775 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = add i32 %3779, 1
  %3781 = zext i32 %3780 to i64
  store i64 %3781, i64* %RAX.i2857, align 8
  %3782 = icmp eq i32 %3779, -1
  %3783 = icmp eq i32 %3780, 0
  %3784 = or i1 %3782, %3783
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %14, align 1
  %3786 = and i32 %3780, 255
  %3787 = tail call i32 @llvm.ctpop.i32(i32 %3786)
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  %3790 = xor i8 %3789, 1
  store i8 %3790, i8* %21, align 1
  %3791 = xor i32 %3780, %3779
  %3792 = lshr i32 %3791, 4
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  store i8 %3794, i8* %27, align 1
  %3795 = zext i1 %3783 to i8
  store i8 %3795, i8* %30, align 1
  %3796 = lshr i32 %3780, 31
  %3797 = trunc i32 %3796 to i8
  store i8 %3797, i8* %33, align 1
  %3798 = lshr i32 %3779, 31
  %3799 = xor i32 %3796, %3798
  %3800 = add nuw nsw i32 %3799, %3796
  %3801 = icmp eq i32 %3800, 2
  %3802 = zext i1 %3801 to i8
  store i8 %3802, i8* %39, align 1
  %3803 = add i64 %3776, 9
  store i64 %3803, i64* %3, align 8
  store i32 %3780, i32* %3778, align 4
  %3804 = load i64, i64* %3, align 8
  %3805 = add i64 %3804, -240
  store i64 %3805, i64* %3, align 8
  br label %block_.L_4af06e

block_.L_4af163:                                  ; preds = %block_.L_4af06e
  %3806 = add i64 %3610, 11
  store i64 %3806, i64* %3, align 8
  %3807 = load i32, i32* %3576, align 4
  %3808 = add i32 %3807, 1
  %3809 = zext i32 %3808 to i64
  store i64 %3809, i64* %RAX.i2857, align 8
  %3810 = icmp eq i32 %3807, -1
  %3811 = icmp eq i32 %3808, 0
  %3812 = or i1 %3810, %3811
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %14, align 1
  %3814 = and i32 %3808, 255
  %3815 = tail call i32 @llvm.ctpop.i32(i32 %3814)
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = xor i8 %3817, 1
  store i8 %3818, i8* %21, align 1
  %3819 = xor i32 %3808, %3807
  %3820 = lshr i32 %3819, 4
  %3821 = trunc i32 %3820 to i8
  %3822 = and i8 %3821, 1
  store i8 %3822, i8* %27, align 1
  %3823 = zext i1 %3811 to i8
  store i8 %3823, i8* %30, align 1
  %3824 = lshr i32 %3808, 31
  %3825 = trunc i32 %3824 to i8
  store i8 %3825, i8* %33, align 1
  %3826 = lshr i32 %3807, 31
  %3827 = xor i32 %3824, %3826
  %3828 = add nuw nsw i32 %3827, %3824
  %3829 = icmp eq i32 %3828, 2
  %3830 = zext i1 %3829 to i8
  store i8 %3830, i8* %39, align 1
  %3831 = add i64 %3610, 20
  store i64 %3831, i64* %3, align 8
  store i32 %3808, i32* %3576, align 4
  %3832 = load i64, i64* %3, align 8
  %3833 = add i64 %3832, -295
  store i64 %3833, i64* %3, align 8
  br label %block_.L_4af050

block_.L_4af17c:                                  ; preds = %block_.L_4af050
  %3834 = add i64 %3525, -4
  %3835 = add i64 %3563, 7
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  store i32 0, i32* %3836, align 4
  %DX.i1526 = bitcast %union.anon* %240 to i16*
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_4af183

block_.L_4af183:                                  ; preds = %block_.L_4af373, %block_.L_4af17c
  %3837 = phi i64 [ %4422, %block_.L_4af373 ], [ %.pre145, %block_.L_4af17c ]
  %3838 = load i64, i64* %RBP.i, align 8
  %3839 = add i64 %3838, -4
  %3840 = add i64 %3837, 3
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  %3842 = load i32, i32* %3841, align 4
  %3843 = zext i32 %3842 to i64
  store i64 %3843, i64* %RAX.i2857, align 8
  %3844 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %3845 = sub i32 %3842, %3844
  %3846 = icmp ult i32 %3842, %3844
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %14, align 1
  %3848 = and i32 %3845, 255
  %3849 = tail call i32 @llvm.ctpop.i32(i32 %3848)
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  %3852 = xor i8 %3851, 1
  store i8 %3852, i8* %21, align 1
  %3853 = xor i32 %3844, %3842
  %3854 = xor i32 %3853, %3845
  %3855 = lshr i32 %3854, 4
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  store i8 %3857, i8* %27, align 1
  %3858 = icmp eq i32 %3845, 0
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %30, align 1
  %3860 = lshr i32 %3845, 31
  %3861 = trunc i32 %3860 to i8
  store i8 %3861, i8* %33, align 1
  %3862 = lshr i32 %3842, 31
  %3863 = lshr i32 %3844, 31
  %3864 = xor i32 %3863, %3862
  %3865 = xor i32 %3860, %3862
  %3866 = add nuw nsw i32 %3865, %3864
  %3867 = icmp eq i32 %3866, 2
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %39, align 1
  %3869 = icmp ne i8 %3861, 0
  %3870 = xor i1 %3869, %3867
  %.v243 = select i1 %3870, i64 16, i64 515
  %3871 = add i64 %3837, %.v243
  store i64 %3871, i64* %3, align 8
  br i1 %3870, label %block_4af193, label %block_.L_4af386

block_4af193:                                     ; preds = %block_.L_4af183
  %3872 = add i64 %3838, -8
  %3873 = add i64 %3871, 7
  store i64 %3873, i64* %3, align 8
  %3874 = inttoptr i64 %3872 to i32*
  store i32 0, i32* %3874, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4af19a

block_.L_4af19a:                                  ; preds = %block_.L_4af360, %block_4af193
  %3875 = phi i64 [ %4392, %block_.L_4af360 ], [ %.pre146, %block_4af193 ]
  %3876 = load i64, i64* %RBP.i, align 8
  %3877 = add i64 %3876, -8
  %3878 = add i64 %3875, 3
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3877 to i32*
  %3880 = load i32, i32* %3879, align 4
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %RAX.i2857, align 8
  %3882 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %3883 = sub i32 %3880, %3882
  %3884 = icmp ult i32 %3880, %3882
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %14, align 1
  %3886 = and i32 %3883, 255
  %3887 = tail call i32 @llvm.ctpop.i32(i32 %3886)
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  %3890 = xor i8 %3889, 1
  store i8 %3890, i8* %21, align 1
  %3891 = xor i32 %3882, %3880
  %3892 = xor i32 %3891, %3883
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  store i8 %3895, i8* %27, align 1
  %3896 = icmp eq i32 %3883, 0
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %30, align 1
  %3898 = lshr i32 %3883, 31
  %3899 = trunc i32 %3898 to i8
  store i8 %3899, i8* %33, align 1
  %3900 = lshr i32 %3880, 31
  %3901 = lshr i32 %3882, 31
  %3902 = xor i32 %3901, %3900
  %3903 = xor i32 %3898, %3900
  %3904 = add nuw nsw i32 %3903, %3902
  %3905 = icmp eq i32 %3904, 2
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %39, align 1
  %3907 = icmp ne i8 %3899, 0
  %3908 = xor i1 %3907, %3905
  %.v206 = select i1 %3908, i64 16, i64 473
  %3909 = add i64 %3875, %.v206
  store i64 %3909, i64* %3, align 8
  br i1 %3908, label %block_4af1aa, label %block_.L_4af373

block_4af1aa:                                     ; preds = %block_.L_4af19a
  %3910 = add i64 %3876, -12
  %3911 = add i64 %3909, 7
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i32*
  store i32 0, i32* %3912, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_4af1b1

block_.L_4af1b1:                                  ; preds = %block_4af1d3, %block_4af1aa
  %3913 = phi i64 [ %4081, %block_4af1d3 ], [ %.pre147, %block_4af1aa ]
  %3914 = load i64, i64* %RBP.i, align 8
  %3915 = add i64 %3914, -12
  %3916 = add i64 %3913, 3
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RAX.i2857, align 8
  %3920 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3920, i64* %RCX.i2831.pre-phi, align 8
  %3921 = add i64 %3920, 60
  %3922 = add i64 %3913, 14
  store i64 %3922, i64* %3, align 8
  %3923 = inttoptr i64 %3921 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RDX.i2815, align 8
  store i64 %3920, i64* %RCX.i2831.pre-phi, align 8
  %3926 = add i64 %3920, 52
  %3927 = add i64 %3913, 26
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = sext i32 %3924 to i64
  %3931 = sext i32 %3929 to i64
  %3932 = mul nsw i64 %3931, %3930
  %3933 = and i64 %3932, 4294967295
  store i64 %3933, i64* %RDX.i2815, align 8
  %3934 = trunc i64 %3932 to i32
  %3935 = sub i32 %3918, %3934
  %3936 = icmp ult i32 %3918, %3934
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = and i32 %3935, 255
  %3939 = tail call i32 @llvm.ctpop.i32(i32 %3938)
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  %3942 = xor i8 %3941, 1
  store i8 %3942, i8* %21, align 1
  %3943 = xor i32 %3934, %3918
  %3944 = xor i32 %3943, %3935
  %3945 = lshr i32 %3944, 4
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  store i8 %3947, i8* %27, align 1
  %3948 = icmp eq i32 %3935, 0
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %30, align 1
  %3950 = lshr i32 %3935, 31
  %3951 = trunc i32 %3950 to i8
  store i8 %3951, i8* %33, align 1
  %3952 = lshr i32 %3918, 31
  %3953 = lshr i32 %3934, 31
  %3954 = xor i32 %3953, %3952
  %3955 = xor i32 %3950, %3952
  %3956 = add nuw nsw i32 %3955, %3954
  %3957 = icmp eq i32 %3956, 2
  %3958 = zext i1 %3957 to i8
  store i8 %3958, i8* %39, align 1
  %3959 = icmp ne i8 %3951, 0
  %3960 = xor i1 %3959, %3957
  %.v244 = select i1 %3960, i64 34, i64 172
  %3961 = add i64 %3913, %.v244
  store i64 %3961, i64* %3, align 8
  br i1 %3960, label %block_4af1d3, label %block_.L_4af25d

block_4af1d3:                                     ; preds = %block_.L_4af1b1
  %3962 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3962, i64* %RAX.i2857, align 8
  %3963 = add i64 %3914, -4
  %3964 = add i64 %3961, 12
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i32*
  %3966 = load i32, i32* %3965, align 4
  %3967 = sext i32 %3966 to i64
  store i64 %3967, i64* %RCX.i2831.pre-phi, align 8
  %3968 = shl nsw i64 %3967, 3
  %3969 = add i64 %3968, %3962
  %3970 = add i64 %3961, 16
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3969 to i64*
  %3972 = load i64, i64* %3971, align 8
  store i64 %3972, i64* %RAX.i2857, align 8
  %3973 = add i64 %3972, 6432
  %3974 = add i64 %3961, 23
  store i64 %3974, i64* %3, align 8
  %3975 = inttoptr i64 %3973 to i64*
  %3976 = load i64, i64* %3975, align 8
  store i64 %3976, i64* %RAX.i2857, align 8
  %3977 = add i64 %3961, 27
  store i64 %3977, i64* %3, align 8
  %3978 = load i32, i32* %3917, align 4
  %3979 = sext i32 %3978 to i64
  store i64 %3979, i64* %RCX.i2831.pre-phi, align 8
  %3980 = shl nsw i64 %3979, 1
  %3981 = add i64 %3980, %3976
  %3982 = add i64 %3961, 31
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3981 to i16*
  %3984 = load i16, i16* %3983, align 2
  store i16 %3984, i16* %DX.i1526, align 2
  store i64 %3962, i64* %RAX.i2857, align 8
  %3985 = add i64 %3961, 43
  store i64 %3985, i64* %3, align 8
  %3986 = load i32, i32* %3965, align 4
  %3987 = sext i32 %3986 to i64
  store i64 %3987, i64* %RCX.i2831.pre-phi, align 8
  %3988 = shl nsw i64 %3987, 3
  %3989 = add i64 %3988, %3962
  %3990 = add i64 %3961, 47
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i64*
  %3992 = load i64, i64* %3991, align 8
  store i64 %3992, i64* %RAX.i2857, align 8
  %3993 = add i64 %3992, 6440
  %3994 = add i64 %3961, 54
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i64*
  %3996 = load i64, i64* %3995, align 8
  store i64 %3996, i64* %RAX.i2857, align 8
  %3997 = add i64 %3961, 58
  store i64 %3997, i64* %3, align 8
  %3998 = load i32, i32* %3917, align 4
  %3999 = sext i32 %3998 to i64
  store i64 %3999, i64* %RCX.i2831.pre-phi, align 8
  %4000 = shl nsw i64 %3999, 1
  %4001 = add i64 %4000, %3996
  %4002 = add i64 %3961, 62
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i16*
  store i16 %3984, i16* %4003, align 2
  %4004 = load i64, i64* %3, align 8
  %4005 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %4005, i64* %RAX.i2857, align 8
  %4006 = load i64, i64* %RBP.i, align 8
  %4007 = add i64 %4006, -8
  %4008 = add i64 %4004, 12
  store i64 %4008, i64* %3, align 8
  %4009 = inttoptr i64 %4007 to i32*
  %4010 = load i32, i32* %4009, align 4
  %4011 = sext i32 %4010 to i64
  store i64 %4011, i64* %RCX.i2831.pre-phi, align 8
  %4012 = shl nsw i64 %4011, 3
  %4013 = add i64 %4012, %4005
  %4014 = add i64 %4004, 16
  store i64 %4014, i64* %3, align 8
  %4015 = inttoptr i64 %4013 to i64*
  %4016 = load i64, i64* %4015, align 8
  store i64 %4016, i64* %RAX.i2857, align 8
  %4017 = add i64 %4016, 6432
  %4018 = add i64 %4004, 23
  store i64 %4018, i64* %3, align 8
  %4019 = inttoptr i64 %4017 to i64*
  %4020 = load i64, i64* %4019, align 8
  store i64 %4020, i64* %RAX.i2857, align 8
  %4021 = add i64 %4006, -12
  %4022 = add i64 %4004, 27
  store i64 %4022, i64* %3, align 8
  %4023 = inttoptr i64 %4021 to i32*
  %4024 = load i32, i32* %4023, align 4
  %4025 = sext i32 %4024 to i64
  store i64 %4025, i64* %RCX.i2831.pre-phi, align 8
  %4026 = shl nsw i64 %4025, 1
  %4027 = add i64 %4026, %4020
  %4028 = add i64 %4004, 31
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i16*
  %4030 = load i16, i16* %4029, align 2
  store i16 %4030, i16* %DX.i1526, align 2
  store i64 %4005, i64* %RAX.i2857, align 8
  %4031 = add i64 %4004, 43
  store i64 %4031, i64* %3, align 8
  %4032 = load i32, i32* %4009, align 4
  %4033 = sext i32 %4032 to i64
  store i64 %4033, i64* %RCX.i2831.pre-phi, align 8
  %4034 = shl nsw i64 %4033, 3
  %4035 = add i64 %4034, %4005
  %4036 = add i64 %4004, 47
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i64*
  %4038 = load i64, i64* %4037, align 8
  store i64 %4038, i64* %RAX.i2857, align 8
  %4039 = add i64 %4038, 6440
  %4040 = add i64 %4004, 54
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i64*
  %4042 = load i64, i64* %4041, align 8
  store i64 %4042, i64* %RAX.i2857, align 8
  %4043 = add i64 %4004, 58
  store i64 %4043, i64* %3, align 8
  %4044 = load i32, i32* %4023, align 4
  %4045 = sext i32 %4044 to i64
  store i64 %4045, i64* %RCX.i2831.pre-phi, align 8
  %4046 = shl nsw i64 %4045, 1
  %4047 = add i64 %4046, %4042
  %4048 = add i64 %4004, 62
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i16*
  store i16 %4030, i16* %4049, align 2
  %4050 = load i64, i64* %RBP.i, align 8
  %4051 = add i64 %4050, -12
  %4052 = load i64, i64* %3, align 8
  %4053 = add i64 %4052, 3
  store i64 %4053, i64* %3, align 8
  %4054 = inttoptr i64 %4051 to i32*
  %4055 = load i32, i32* %4054, align 4
  %4056 = add i32 %4055, 1
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %RAX.i2857, align 8
  %4058 = icmp eq i32 %4055, -1
  %4059 = icmp eq i32 %4056, 0
  %4060 = or i1 %4058, %4059
  %4061 = zext i1 %4060 to i8
  store i8 %4061, i8* %14, align 1
  %4062 = and i32 %4056, 255
  %4063 = tail call i32 @llvm.ctpop.i32(i32 %4062)
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = xor i8 %4065, 1
  store i8 %4066, i8* %21, align 1
  %4067 = xor i32 %4056, %4055
  %4068 = lshr i32 %4067, 4
  %4069 = trunc i32 %4068 to i8
  %4070 = and i8 %4069, 1
  store i8 %4070, i8* %27, align 1
  %4071 = zext i1 %4059 to i8
  store i8 %4071, i8* %30, align 1
  %4072 = lshr i32 %4056, 31
  %4073 = trunc i32 %4072 to i8
  store i8 %4073, i8* %33, align 1
  %4074 = lshr i32 %4055, 31
  %4075 = xor i32 %4072, %4074
  %4076 = add nuw nsw i32 %4075, %4072
  %4077 = icmp eq i32 %4076, 2
  %4078 = zext i1 %4077 to i8
  store i8 %4078, i8* %39, align 1
  %4079 = add i64 %4052, 9
  store i64 %4079, i64* %3, align 8
  store i32 %4056, i32* %4054, align 4
  %4080 = load i64, i64* %3, align 8
  %4081 = add i64 %4080, -167
  store i64 %4081, i64* %3, align 8
  br label %block_.L_4af1b1

block_.L_4af25d:                                  ; preds = %block_.L_4af1b1
  %4082 = add i64 %3961, 7
  store i64 %4082, i64* %3, align 8
  store i32 0, i32* %3917, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_4af264

block_.L_4af264:                                  ; preds = %block_.L_4af34d, %block_.L_4af25d
  %4083 = phi i64 [ %4362, %block_.L_4af34d ], [ %.pre148, %block_.L_4af25d ]
  %4084 = load i64, i64* %RBP.i, align 8
  %4085 = add i64 %4084, -12
  %4086 = add i64 %4083, 3
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = zext i32 %4088 to i64
  store i64 %4089, i64* %RAX.i2857, align 8
  %4090 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4090, i64* %RCX.i2831.pre-phi, align 8
  %4091 = add i64 %4090, 60
  %4092 = add i64 %4083, 14
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4091 to i32*
  %4094 = load i32, i32* %4093, align 4
  %4095 = add i32 %4094, 8
  %4096 = shl i32 %4095, 2
  %4097 = zext i32 %4096 to i64
  store i64 %4097, i64* %RDX.i2815, align 8
  %4098 = sub i32 %4088, %4096
  %4099 = icmp ult i32 %4088, %4096
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %14, align 1
  %4101 = and i32 %4098, 255
  %4102 = tail call i32 @llvm.ctpop.i32(i32 %4101)
  %4103 = trunc i32 %4102 to i8
  %4104 = and i8 %4103, 1
  %4105 = xor i8 %4104, 1
  store i8 %4105, i8* %21, align 1
  %4106 = xor i32 %4096, %4088
  %4107 = xor i32 %4106, %4098
  %4108 = lshr i32 %4107, 4
  %4109 = trunc i32 %4108 to i8
  %4110 = and i8 %4109, 1
  store i8 %4110, i8* %27, align 1
  %4111 = icmp eq i32 %4098, 0
  %4112 = zext i1 %4111 to i8
  store i8 %4112, i8* %30, align 1
  %4113 = lshr i32 %4098, 31
  %4114 = trunc i32 %4113 to i8
  store i8 %4114, i8* %33, align 1
  %4115 = lshr i32 %4088, 31
  %4116 = lshr i32 %4095, 29
  %4117 = and i32 %4116, 1
  %4118 = xor i32 %4117, %4115
  %4119 = xor i32 %4113, %4115
  %4120 = add nuw nsw i32 %4119, %4118
  %4121 = icmp eq i32 %4120, 2
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %39, align 1
  %4123 = icmp ne i8 %4114, 0
  %4124 = xor i1 %4123, %4121
  %.v245 = select i1 %4124, i64 28, i64 252
  %4125 = add i64 %4083, %.v245
  store i64 %4125, i64* %3, align 8
  %4126 = load i64, i64* %RBP.i, align 8
  br i1 %4124, label %block_4af280, label %block_.L_4af360

block_4af280:                                     ; preds = %block_.L_4af264
  %4127 = add i64 %4126, -16
  %4128 = add i64 %4125, 7
  store i64 %4128, i64* %3, align 8
  %4129 = inttoptr i64 %4127 to i32*
  store i32 0, i32* %4129, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_4af287

block_.L_4af287:                                  ; preds = %block_4af2a3, %block_4af280
  %4130 = phi i64 [ %4331, %block_4af2a3 ], [ %.pre149, %block_4af280 ]
  %4131 = load i64, i64* %RBP.i, align 8
  %4132 = add i64 %4131, -16
  %4133 = add i64 %4130, 3
  store i64 %4133, i64* %3, align 8
  %4134 = inttoptr i64 %4132 to i32*
  %4135 = load i32, i32* %4134, align 4
  %4136 = zext i32 %4135 to i64
  store i64 %4136, i64* %RAX.i2857, align 8
  %4137 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4137, i64* %RCX.i2831.pre-phi, align 8
  %4138 = add i64 %4137, 52
  %4139 = add i64 %4130, 14
  store i64 %4139, i64* %3, align 8
  %4140 = inttoptr i64 %4138 to i32*
  %4141 = load i32, i32* %4140, align 4
  %4142 = add i32 %4141, 8
  %4143 = shl i32 %4142, 2
  %4144 = zext i32 %4143 to i64
  store i64 %4144, i64* %RDX.i2815, align 8
  %4145 = sub i32 %4135, %4143
  %4146 = icmp ult i32 %4135, %4143
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %14, align 1
  %4148 = and i32 %4145, 255
  %4149 = tail call i32 @llvm.ctpop.i32(i32 %4148)
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = xor i8 %4151, 1
  store i8 %4152, i8* %21, align 1
  %4153 = xor i32 %4143, %4135
  %4154 = xor i32 %4153, %4145
  %4155 = lshr i32 %4154, 4
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  store i8 %4157, i8* %27, align 1
  %4158 = icmp eq i32 %4145, 0
  %4159 = zext i1 %4158 to i8
  store i8 %4159, i8* %30, align 1
  %4160 = lshr i32 %4145, 31
  %4161 = trunc i32 %4160 to i8
  store i8 %4161, i8* %33, align 1
  %4162 = lshr i32 %4135, 31
  %4163 = lshr i32 %4142, 29
  %4164 = and i32 %4163, 1
  %4165 = xor i32 %4164, %4162
  %4166 = xor i32 %4160, %4162
  %4167 = add nuw nsw i32 %4166, %4165
  %4168 = icmp eq i32 %4167, 2
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %39, align 1
  %4170 = icmp ne i8 %4161, 0
  %4171 = xor i1 %4170, %4168
  %.v246 = select i1 %4171, i64 28, i64 198
  %4172 = add i64 %4130, %.v246
  store i64 %4172, i64* %3, align 8
  br i1 %4171, label %block_4af2a3, label %block_.L_4af34d

block_4af2a3:                                     ; preds = %block_.L_4af287
  %4173 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %4173, i64* %RAX.i2857, align 8
  %4174 = load i64, i64* %RBP.i, align 8
  %4175 = add i64 %4174, -4
  %4176 = add i64 %4172, 12
  store i64 %4176, i64* %3, align 8
  %4177 = inttoptr i64 %4175 to i32*
  %4178 = load i32, i32* %4177, align 4
  %4179 = sext i32 %4178 to i64
  store i64 %4179, i64* %RCX.i2831.pre-phi, align 8
  %4180 = shl nsw i64 %4179, 3
  %4181 = add i64 %4180, %4173
  %4182 = add i64 %4172, 16
  store i64 %4182, i64* %3, align 8
  %4183 = inttoptr i64 %4181 to i64*
  %4184 = load i64, i64* %4183, align 8
  store i64 %4184, i64* %RAX.i2857, align 8
  %4185 = add i64 %4184, 6448
  %4186 = add i64 %4172, 23
  store i64 %4186, i64* %3, align 8
  %4187 = inttoptr i64 %4185 to i64*
  %4188 = load i64, i64* %4187, align 8
  store i64 %4188, i64* %RAX.i2857, align 8
  %4189 = add i64 %4174, -12
  %4190 = add i64 %4172, 27
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i32*
  %4192 = load i32, i32* %4191, align 4
  %4193 = sext i32 %4192 to i64
  store i64 %4193, i64* %RCX.i2831.pre-phi, align 8
  %4194 = shl nsw i64 %4193, 3
  %4195 = add i64 %4194, %4188
  %4196 = add i64 %4172, 31
  store i64 %4196, i64* %3, align 8
  %4197 = inttoptr i64 %4195 to i64*
  %4198 = load i64, i64* %4197, align 8
  store i64 %4198, i64* %RAX.i2857, align 8
  %4199 = add i64 %4174, -16
  %4200 = add i64 %4172, 35
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to i32*
  %4202 = load i32, i32* %4201, align 4
  %4203 = sext i32 %4202 to i64
  store i64 %4203, i64* %RCX.i2831.pre-phi, align 8
  %4204 = shl nsw i64 %4203, 1
  %4205 = add i64 %4204, %4198
  %4206 = add i64 %4172, 39
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4205 to i16*
  %4208 = load i16, i16* %4207, align 2
  store i16 %4208, i16* %DX.i1526, align 2
  store i64 %4173, i64* %RAX.i2857, align 8
  %4209 = add i64 %4172, 51
  store i64 %4209, i64* %3, align 8
  %4210 = load i32, i32* %4177, align 4
  %4211 = sext i32 %4210 to i64
  store i64 %4211, i64* %RCX.i2831.pre-phi, align 8
  %4212 = shl nsw i64 %4211, 3
  %4213 = add i64 %4212, %4173
  %4214 = add i64 %4172, 55
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i64*
  %4216 = load i64, i64* %4215, align 8
  store i64 %4216, i64* %RAX.i2857, align 8
  %4217 = add i64 %4216, 6456
  %4218 = add i64 %4172, 62
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i64*
  %4220 = load i64, i64* %4219, align 8
  store i64 %4220, i64* %RAX.i2857, align 8
  %4221 = add i64 %4172, 66
  store i64 %4221, i64* %3, align 8
  %4222 = load i32, i32* %4191, align 4
  %4223 = sext i32 %4222 to i64
  store i64 %4223, i64* %RCX.i2831.pre-phi, align 8
  %4224 = shl nsw i64 %4223, 3
  %4225 = add i64 %4224, %4220
  %4226 = add i64 %4172, 70
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i64*
  %4228 = load i64, i64* %4227, align 8
  store i64 %4228, i64* %RAX.i2857, align 8
  %4229 = add i64 %4172, 74
  store i64 %4229, i64* %3, align 8
  %4230 = load i32, i32* %4201, align 4
  %4231 = sext i32 %4230 to i64
  store i64 %4231, i64* %RCX.i2831.pre-phi, align 8
  %4232 = shl nsw i64 %4231, 1
  %4233 = add i64 %4232, %4228
  %4234 = add i64 %4172, 78
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i16*
  store i16 %4208, i16* %4235, align 2
  %4236 = load i64, i64* %3, align 8
  %4237 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %4237, i64* %RAX.i2857, align 8
  %4238 = load i64, i64* %RBP.i, align 8
  %4239 = add i64 %4238, -8
  %4240 = add i64 %4236, 12
  store i64 %4240, i64* %3, align 8
  %4241 = inttoptr i64 %4239 to i32*
  %4242 = load i32, i32* %4241, align 4
  %4243 = sext i32 %4242 to i64
  store i64 %4243, i64* %RCX.i2831.pre-phi, align 8
  %4244 = shl nsw i64 %4243, 3
  %4245 = add i64 %4244, %4237
  %4246 = add i64 %4236, 16
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i64*
  %4248 = load i64, i64* %4247, align 8
  store i64 %4248, i64* %RAX.i2857, align 8
  %4249 = add i64 %4248, 6448
  %4250 = add i64 %4236, 23
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i64*
  %4252 = load i64, i64* %4251, align 8
  store i64 %4252, i64* %RAX.i2857, align 8
  %4253 = add i64 %4238, -12
  %4254 = add i64 %4236, 27
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = sext i32 %4256 to i64
  store i64 %4257, i64* %RCX.i2831.pre-phi, align 8
  %4258 = shl nsw i64 %4257, 3
  %4259 = add i64 %4258, %4252
  %4260 = add i64 %4236, 31
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i64*
  %4262 = load i64, i64* %4261, align 8
  store i64 %4262, i64* %RAX.i2857, align 8
  %4263 = add i64 %4238, -16
  %4264 = add i64 %4236, 35
  store i64 %4264, i64* %3, align 8
  %4265 = inttoptr i64 %4263 to i32*
  %4266 = load i32, i32* %4265, align 4
  %4267 = sext i32 %4266 to i64
  store i64 %4267, i64* %RCX.i2831.pre-phi, align 8
  %4268 = shl nsw i64 %4267, 1
  %4269 = add i64 %4268, %4262
  %4270 = add i64 %4236, 39
  store i64 %4270, i64* %3, align 8
  %4271 = inttoptr i64 %4269 to i16*
  %4272 = load i16, i16* %4271, align 2
  store i16 %4272, i16* %DX.i1526, align 2
  store i64 %4237, i64* %RAX.i2857, align 8
  %4273 = add i64 %4236, 51
  store i64 %4273, i64* %3, align 8
  %4274 = load i32, i32* %4241, align 4
  %4275 = sext i32 %4274 to i64
  store i64 %4275, i64* %RCX.i2831.pre-phi, align 8
  %4276 = shl nsw i64 %4275, 3
  %4277 = add i64 %4276, %4237
  %4278 = add i64 %4236, 55
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4277 to i64*
  %4280 = load i64, i64* %4279, align 8
  store i64 %4280, i64* %RAX.i2857, align 8
  %4281 = add i64 %4280, 6456
  %4282 = add i64 %4236, 62
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i64*
  %4284 = load i64, i64* %4283, align 8
  store i64 %4284, i64* %RAX.i2857, align 8
  %4285 = add i64 %4236, 66
  store i64 %4285, i64* %3, align 8
  %4286 = load i32, i32* %4255, align 4
  %4287 = sext i32 %4286 to i64
  store i64 %4287, i64* %RCX.i2831.pre-phi, align 8
  %4288 = shl nsw i64 %4287, 3
  %4289 = add i64 %4288, %4284
  %4290 = add i64 %4236, 70
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4289 to i64*
  %4292 = load i64, i64* %4291, align 8
  store i64 %4292, i64* %RAX.i2857, align 8
  %4293 = add i64 %4236, 74
  store i64 %4293, i64* %3, align 8
  %4294 = load i32, i32* %4265, align 4
  %4295 = sext i32 %4294 to i64
  store i64 %4295, i64* %RCX.i2831.pre-phi, align 8
  %4296 = shl nsw i64 %4295, 1
  %4297 = add i64 %4296, %4292
  %4298 = add i64 %4236, 78
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i16*
  store i16 %4272, i16* %4299, align 2
  %4300 = load i64, i64* %RBP.i, align 8
  %4301 = add i64 %4300, -16
  %4302 = load i64, i64* %3, align 8
  %4303 = add i64 %4302, 3
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4301 to i32*
  %4305 = load i32, i32* %4304, align 4
  %4306 = add i32 %4305, 1
  %4307 = zext i32 %4306 to i64
  store i64 %4307, i64* %RAX.i2857, align 8
  %4308 = icmp eq i32 %4305, -1
  %4309 = icmp eq i32 %4306, 0
  %4310 = or i1 %4308, %4309
  %4311 = zext i1 %4310 to i8
  store i8 %4311, i8* %14, align 1
  %4312 = and i32 %4306, 255
  %4313 = tail call i32 @llvm.ctpop.i32(i32 %4312)
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = xor i8 %4315, 1
  store i8 %4316, i8* %21, align 1
  %4317 = xor i32 %4306, %4305
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  store i8 %4320, i8* %27, align 1
  %4321 = zext i1 %4309 to i8
  store i8 %4321, i8* %30, align 1
  %4322 = lshr i32 %4306, 31
  %4323 = trunc i32 %4322 to i8
  store i8 %4323, i8* %33, align 1
  %4324 = lshr i32 %4305, 31
  %4325 = xor i32 %4322, %4324
  %4326 = add nuw nsw i32 %4325, %4322
  %4327 = icmp eq i32 %4326, 2
  %4328 = zext i1 %4327 to i8
  store i8 %4328, i8* %39, align 1
  %4329 = add i64 %4302, 9
  store i64 %4329, i64* %3, align 8
  store i32 %4306, i32* %4304, align 4
  %4330 = load i64, i64* %3, align 8
  %4331 = add i64 %4330, -193
  store i64 %4331, i64* %3, align 8
  br label %block_.L_4af287

block_.L_4af34d:                                  ; preds = %block_.L_4af287
  %4332 = load i64, i64* %RBP.i, align 8
  %4333 = add i64 %4332, -12
  %4334 = add i64 %4172, 8
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i32*
  %4336 = load i32, i32* %4335, align 4
  %4337 = add i32 %4336, 1
  %4338 = zext i32 %4337 to i64
  store i64 %4338, i64* %RAX.i2857, align 8
  %4339 = icmp eq i32 %4336, -1
  %4340 = icmp eq i32 %4337, 0
  %4341 = or i1 %4339, %4340
  %4342 = zext i1 %4341 to i8
  store i8 %4342, i8* %14, align 1
  %4343 = and i32 %4337, 255
  %4344 = tail call i32 @llvm.ctpop.i32(i32 %4343)
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = xor i8 %4346, 1
  store i8 %4347, i8* %21, align 1
  %4348 = xor i32 %4337, %4336
  %4349 = lshr i32 %4348, 4
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  store i8 %4351, i8* %27, align 1
  %4352 = zext i1 %4340 to i8
  store i8 %4352, i8* %30, align 1
  %4353 = lshr i32 %4337, 31
  %4354 = trunc i32 %4353 to i8
  store i8 %4354, i8* %33, align 1
  %4355 = lshr i32 %4336, 31
  %4356 = xor i32 %4353, %4355
  %4357 = add nuw nsw i32 %4356, %4353
  %4358 = icmp eq i32 %4357, 2
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %39, align 1
  %4360 = add i64 %4172, 14
  store i64 %4360, i64* %3, align 8
  store i32 %4337, i32* %4335, align 4
  %4361 = load i64, i64* %3, align 8
  %4362 = add i64 %4361, -247
  store i64 %4362, i64* %3, align 8
  br label %block_.L_4af264

block_.L_4af360:                                  ; preds = %block_.L_4af264
  %4363 = add i64 %4126, -8
  %4364 = add i64 %4125, 8
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4363 to i32*
  %4366 = load i32, i32* %4365, align 4
  %4367 = add i32 %4366, 1
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RAX.i2857, align 8
  %4369 = icmp eq i32 %4366, -1
  %4370 = icmp eq i32 %4367, 0
  %4371 = or i1 %4369, %4370
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %14, align 1
  %4373 = and i32 %4367, 255
  %4374 = tail call i32 @llvm.ctpop.i32(i32 %4373)
  %4375 = trunc i32 %4374 to i8
  %4376 = and i8 %4375, 1
  %4377 = xor i8 %4376, 1
  store i8 %4377, i8* %21, align 1
  %4378 = xor i32 %4367, %4366
  %4379 = lshr i32 %4378, 4
  %4380 = trunc i32 %4379 to i8
  %4381 = and i8 %4380, 1
  store i8 %4381, i8* %27, align 1
  %4382 = zext i1 %4370 to i8
  store i8 %4382, i8* %30, align 1
  %4383 = lshr i32 %4367, 31
  %4384 = trunc i32 %4383 to i8
  store i8 %4384, i8* %33, align 1
  %4385 = lshr i32 %4366, 31
  %4386 = xor i32 %4383, %4385
  %4387 = add nuw nsw i32 %4386, %4383
  %4388 = icmp eq i32 %4387, 2
  %4389 = zext i1 %4388 to i8
  store i8 %4389, i8* %39, align 1
  %4390 = add i64 %4125, 14
  store i64 %4390, i64* %3, align 8
  store i32 %4367, i32* %4365, align 4
  %4391 = load i64, i64* %3, align 8
  %4392 = add i64 %4391, -468
  store i64 %4392, i64* %3, align 8
  br label %block_.L_4af19a

block_.L_4af373:                                  ; preds = %block_.L_4af19a
  %4393 = add i64 %3876, -4
  %4394 = add i64 %3909, 8
  store i64 %4394, i64* %3, align 8
  %4395 = inttoptr i64 %4393 to i32*
  %4396 = load i32, i32* %4395, align 4
  %4397 = add i32 %4396, 1
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %RAX.i2857, align 8
  %4399 = icmp eq i32 %4396, -1
  %4400 = icmp eq i32 %4397, 0
  %4401 = or i1 %4399, %4400
  %4402 = zext i1 %4401 to i8
  store i8 %4402, i8* %14, align 1
  %4403 = and i32 %4397, 255
  %4404 = tail call i32 @llvm.ctpop.i32(i32 %4403)
  %4405 = trunc i32 %4404 to i8
  %4406 = and i8 %4405, 1
  %4407 = xor i8 %4406, 1
  store i8 %4407, i8* %21, align 1
  %4408 = xor i32 %4397, %4396
  %4409 = lshr i32 %4408, 4
  %4410 = trunc i32 %4409 to i8
  %4411 = and i8 %4410, 1
  store i8 %4411, i8* %27, align 1
  %4412 = zext i1 %4400 to i8
  store i8 %4412, i8* %30, align 1
  %4413 = lshr i32 %4397, 31
  %4414 = trunc i32 %4413 to i8
  store i8 %4414, i8* %33, align 1
  %4415 = lshr i32 %4396, 31
  %4416 = xor i32 %4413, %4415
  %4417 = add nuw nsw i32 %4416, %4413
  %4418 = icmp eq i32 %4417, 2
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %39, align 1
  %4420 = add i64 %3909, 14
  store i64 %4420, i64* %3, align 8
  store i32 %4397, i32* %4395, align 4
  %4421 = load i64, i64* %3, align 8
  %4422 = add i64 %4421, -510
  store i64 %4422, i64* %3, align 8
  br label %block_.L_4af183

block_.L_4af386:                                  ; preds = %block_.L_4af183
  %4423 = add i64 %3871, 2556
  br label %block_.L_4afd82

block_.L_4af392:                                  ; preds = %block_.L_4af392.preheader, %block_.L_4af3f4
  %4424 = phi i64 [ %4597, %block_.L_4af3f4 ], [ %.pre143, %block_.L_4af392.preheader ]
  %4425 = load i64, i64* %RBP.i, align 8
  %4426 = add i64 %4425, -4
  %4427 = add i64 %4424, 3
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4426 to i32*
  %4429 = load i32, i32* %4428, align 4
  %4430 = zext i32 %4429 to i64
  store i64 %4430, i64* %RAX.i2857, align 8
  %4431 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4431, i64* %RCX.i2831.pre-phi, align 8
  %4432 = add i64 %4431, 60
  %4433 = add i64 %4424, 14
  store i64 %4433, i64* %3, align 8
  %4434 = inttoptr i64 %4432 to i32*
  %4435 = load i32, i32* %4434, align 4
  %4436 = sub i32 %4429, %4435
  %4437 = icmp ult i32 %4429, %4435
  %4438 = zext i1 %4437 to i8
  store i8 %4438, i8* %14, align 1
  %4439 = and i32 %4436, 255
  %4440 = tail call i32 @llvm.ctpop.i32(i32 %4439)
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  %4443 = xor i8 %4442, 1
  store i8 %4443, i8* %21, align 1
  %4444 = xor i32 %4435, %4429
  %4445 = xor i32 %4444, %4436
  %4446 = lshr i32 %4445, 4
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  store i8 %4448, i8* %27, align 1
  %4449 = icmp eq i32 %4436, 0
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %30, align 1
  %4451 = lshr i32 %4436, 31
  %4452 = trunc i32 %4451 to i8
  store i8 %4452, i8* %33, align 1
  %4453 = lshr i32 %4429, 31
  %4454 = lshr i32 %4435, 31
  %4455 = xor i32 %4454, %4453
  %4456 = xor i32 %4451, %4453
  %4457 = add nuw nsw i32 %4456, %4455
  %4458 = icmp eq i32 %4457, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %39, align 1
  %4460 = icmp ne i8 %4452, 0
  %4461 = xor i1 %4460, %4458
  %.v226 = select i1 %4461, i64 20, i64 117
  %4462 = add i64 %4424, %.v226
  store i64 %4462, i64* %3, align 8
  br i1 %4461, label %block_4af3a6, label %block_.L_4af407

block_4af3a6:                                     ; preds = %block_.L_4af392
  %4463 = add i64 %4425, -8
  %4464 = add i64 %4462, 7
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i32*
  store i32 0, i32* %4465, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_4af3ad

block_.L_4af3ad:                                  ; preds = %block_4af3c1, %block_4af3a6
  %4466 = phi i64 [ %4567, %block_4af3c1 ], [ %.pre179, %block_4af3a6 ]
  %4467 = load i64, i64* %RBP.i, align 8
  %4468 = add i64 %4467, -8
  %4469 = add i64 %4466, 3
  store i64 %4469, i64* %3, align 8
  %4470 = inttoptr i64 %4468 to i32*
  %4471 = load i32, i32* %4470, align 4
  %4472 = zext i32 %4471 to i64
  store i64 %4472, i64* %RAX.i2857, align 8
  %4473 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4473, i64* %RCX.i2831.pre-phi, align 8
  %4474 = add i64 %4473, 52
  %4475 = add i64 %4466, 14
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = sub i32 %4471, %4477
  %4479 = icmp ult i32 %4471, %4477
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %14, align 1
  %4481 = and i32 %4478, 255
  %4482 = tail call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  store i8 %4485, i8* %21, align 1
  %4486 = xor i32 %4477, %4471
  %4487 = xor i32 %4486, %4478
  %4488 = lshr i32 %4487, 4
  %4489 = trunc i32 %4488 to i8
  %4490 = and i8 %4489, 1
  store i8 %4490, i8* %27, align 1
  %4491 = icmp eq i32 %4478, 0
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %30, align 1
  %4493 = lshr i32 %4478, 31
  %4494 = trunc i32 %4493 to i8
  store i8 %4494, i8* %33, align 1
  %4495 = lshr i32 %4471, 31
  %4496 = lshr i32 %4477, 31
  %4497 = xor i32 %4496, %4495
  %4498 = xor i32 %4493, %4495
  %4499 = add nuw nsw i32 %4498, %4497
  %4500 = icmp eq i32 %4499, 2
  %4501 = zext i1 %4500 to i8
  store i8 %4501, i8* %39, align 1
  %4502 = icmp ne i8 %4494, 0
  %4503 = xor i1 %4502, %4500
  %.v217 = select i1 %4503, i64 20, i64 71
  %4504 = add i64 %4466, %.v217
  store i64 %4504, i64* %3, align 8
  br i1 %4503, label %block_4af3c1, label %block_.L_4af3f4

block_4af3c1:                                     ; preds = %block_.L_4af3ad
  %4505 = add i64 %4504, ptrtoint (%G_0x277050__rip__type* @G_0x277050__rip_ to i64)
  %4506 = add i64 %4504, 7
  store i64 %4506, i64* %3, align 8
  %4507 = inttoptr i64 %4505 to i64*
  %4508 = load i64, i64* %4507, align 8
  store i64 %4508, i64* %RAX.i2857, align 8
  %4509 = add i64 %4467, -4
  %4510 = add i64 %4504, 11
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i32*
  %4512 = load i32, i32* %4511, align 4
  %4513 = sext i32 %4512 to i64
  store i64 %4513, i64* %RCX.i2831.pre-phi, align 8
  %4514 = shl nsw i64 %4513, 3
  %4515 = add i64 %4514, %4508
  %4516 = add i64 %4504, 15
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4515 to i64*
  %4518 = load i64, i64* %4517, align 8
  store i64 %4518, i64* %RAX.i2857, align 8
  %4519 = add i64 %4504, 19
  store i64 %4519, i64* %3, align 8
  %4520 = load i32, i32* %4470, align 4
  %4521 = sext i32 %4520 to i64
  store i64 %4521, i64* %RCX.i2831.pre-phi, align 8
  %4522 = shl nsw i64 %4521, 1
  %4523 = add i64 %4522, %4518
  %4524 = add i64 %4504, 23
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4523 to i16*
  %4526 = load i16, i16* %4525, align 2
  %4527 = zext i16 %4526 to i64
  store i64 %4527, i64* %RDX.i2815, align 8
  %4528 = uitofp i16 %4526 to double
  store double %4528, double* %45, align 1
  %4529 = add i64 %4467, -32
  %4530 = add i64 %4504, 32
  store i64 %4530, i64* %3, align 8
  %4531 = inttoptr i64 %4529 to double*
  %4532 = load double, double* %4531, align 8
  %4533 = fadd double %4528, %4532
  store double %4533, double* %45, align 1
  %4534 = add i64 %4504, 37
  store i64 %4534, i64* %3, align 8
  %4535 = inttoptr i64 %4529 to double*
  store double %4533, double* %4535, align 8
  %4536 = load i64, i64* %RBP.i, align 8
  %4537 = add i64 %4536, -8
  %4538 = load i64, i64* %3, align 8
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4537 to i32*
  %4541 = load i32, i32* %4540, align 4
  %4542 = add i32 %4541, 1
  %4543 = zext i32 %4542 to i64
  store i64 %4543, i64* %RAX.i2857, align 8
  %4544 = icmp eq i32 %4541, -1
  %4545 = icmp eq i32 %4542, 0
  %4546 = or i1 %4544, %4545
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %14, align 1
  %4548 = and i32 %4542, 255
  %4549 = tail call i32 @llvm.ctpop.i32(i32 %4548)
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = xor i8 %4551, 1
  store i8 %4552, i8* %21, align 1
  %4553 = xor i32 %4542, %4541
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  store i8 %4556, i8* %27, align 1
  %4557 = zext i1 %4545 to i8
  store i8 %4557, i8* %30, align 1
  %4558 = lshr i32 %4542, 31
  %4559 = trunc i32 %4558 to i8
  store i8 %4559, i8* %33, align 1
  %4560 = lshr i32 %4541, 31
  %4561 = xor i32 %4558, %4560
  %4562 = add nuw nsw i32 %4561, %4558
  %4563 = icmp eq i32 %4562, 2
  %4564 = zext i1 %4563 to i8
  store i8 %4564, i8* %39, align 1
  %4565 = add i64 %4538, 9
  store i64 %4565, i64* %3, align 8
  store i32 %4542, i32* %4540, align 4
  %4566 = load i64, i64* %3, align 8
  %4567 = add i64 %4566, -66
  store i64 %4567, i64* %3, align 8
  br label %block_.L_4af3ad

block_.L_4af3f4:                                  ; preds = %block_.L_4af3ad
  %4568 = add i64 %4467, -4
  %4569 = add i64 %4504, 8
  store i64 %4569, i64* %3, align 8
  %4570 = inttoptr i64 %4568 to i32*
  %4571 = load i32, i32* %4570, align 4
  %4572 = add i32 %4571, 1
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RAX.i2857, align 8
  %4574 = icmp eq i32 %4571, -1
  %4575 = icmp eq i32 %4572, 0
  %4576 = or i1 %4574, %4575
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %14, align 1
  %4578 = and i32 %4572, 255
  %4579 = tail call i32 @llvm.ctpop.i32(i32 %4578)
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  %4582 = xor i8 %4581, 1
  store i8 %4582, i8* %21, align 1
  %4583 = xor i32 %4572, %4571
  %4584 = lshr i32 %4583, 4
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  store i8 %4586, i8* %27, align 1
  %4587 = zext i1 %4575 to i8
  store i8 %4587, i8* %30, align 1
  %4588 = lshr i32 %4572, 31
  %4589 = trunc i32 %4588 to i8
  store i8 %4589, i8* %33, align 1
  %4590 = lshr i32 %4571, 31
  %4591 = xor i32 %4588, %4590
  %4592 = add nuw nsw i32 %4591, %4588
  %4593 = icmp eq i32 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %39, align 1
  %4595 = add i64 %4504, 14
  store i64 %4595, i64* %3, align 8
  store i32 %4572, i32* %4570, align 4
  %4596 = load i64, i64* %3, align 8
  %4597 = add i64 %4596, -112
  store i64 %4597, i64* %3, align 8
  br label %block_.L_4af392

block_.L_4af407:                                  ; preds = %block_.L_4af392
  %4598 = add i64 %4425, -35396
  %4599 = add i64 %4462, 10
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i32*
  store i32 0, i32* %4600, align 4
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4602 = bitcast %union.VectorReg* %4601 to double*
  %4603 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4601, i64 0, i32 0, i32 0, i32 0, i64 0
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %4605 = bitcast i64* %4604 to double*
  %4606 = bitcast i64* %41 to double*
  %CX.i742 = bitcast %union.anon* %.pre-phi to i16*
  %.pre155 = load i64, i64* %3, align 8
  %4607 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  %4608 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  br label %block_.L_4af411

block_.L_4af411:                                  ; preds = %block_.L_4af9b9, %block_.L_4af407
  %4609 = phi i64 [ %.pre155, %block_.L_4af407 ], [ %6833, %block_.L_4af9b9 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4af407 ], [ %MEMORY.32, %block_.L_4af9b9 ]
  %4610 = load i64, i64* %RBP.i, align 8
  %4611 = add i64 %4610, -35396
  %4612 = add i64 %4609, 6
  store i64 %4612, i64* %3, align 8
  %4613 = inttoptr i64 %4611 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RAX.i2857, align 8
  %4616 = add i64 %4610, -808
  %4617 = add i64 %4609, 12
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = add i32 %4619, 2
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RCX.i2831.pre-phi, align 8
  %4622 = lshr i32 %4620, 31
  %4623 = sub i32 %4614, %4620
  %4624 = icmp ult i32 %4614, %4620
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %14, align 1
  %4626 = and i32 %4623, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %21, align 1
  %4631 = xor i32 %4620, %4614
  %4632 = xor i32 %4631, %4623
  %4633 = lshr i32 %4632, 4
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  store i8 %4635, i8* %27, align 1
  %4636 = icmp eq i32 %4623, 0
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %30, align 1
  %4638 = lshr i32 %4623, 31
  %4639 = trunc i32 %4638 to i8
  store i8 %4639, i8* %33, align 1
  %4640 = lshr i32 %4614, 31
  %4641 = xor i32 %4622, %4640
  %4642 = xor i32 %4638, %4640
  %4643 = add nuw nsw i32 %4642, %4641
  %4644 = icmp eq i32 %4643, 2
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %39, align 1
  %4646 = icmp ne i8 %4639, 0
  %4647 = xor i1 %4646, %4644
  %.v211 = select i1 %4647, i64 23, i64 1473
  %4648 = add i64 %4609, %.v211
  store i64 %4648, i64* %3, align 8
  br i1 %4647, label %block_4af428, label %block_.L_4af9d2

block_4af428:                                     ; preds = %block_.L_4af411
  %4649 = add i64 %4610, -12
  %4650 = add i64 %4648, 7
  store i64 %4650, i64* %3, align 8
  %4651 = inttoptr i64 %4649 to i32*
  store i32 0, i32* %4651, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_4af42f

block_.L_4af42f:                                  ; preds = %block_.L_4af9a6, %block_4af428
  %4652 = phi i64 [ %.pre165, %block_4af428 ], [ %6805, %block_.L_4af9a6 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.31, %block_4af428 ], [ %5012, %block_.L_4af9a6 ]
  %4653 = load i64, i64* %RBP.i, align 8
  %4654 = add i64 %4653, -12
  %4655 = add i64 %4652, 3
  store i64 %4655, i64* %3, align 8
  %4656 = inttoptr i64 %4654 to i32*
  %4657 = load i32, i32* %4656, align 4
  %4658 = zext i32 %4657 to i64
  store i64 %4658, i64* %RAX.i2857, align 8
  %4659 = add i64 %4653, -35396
  %4660 = add i64 %4652, 10
  store i64 %4660, i64* %3, align 8
  %4661 = inttoptr i64 %4659 to i32*
  %4662 = load i32, i32* %4661, align 4
  %4663 = sext i32 %4662 to i64
  store i64 %4663, i64* %RCX.i2831.pre-phi, align 8
  %4664 = shl nsw i64 %4663, 2
  %4665 = add nsw i64 %4664, 7489456
  %4666 = add i64 %4652, 17
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i32*
  %4668 = load i32, i32* %4667, align 4
  %4669 = sub i32 %4657, %4668
  %4670 = icmp ult i32 %4657, %4668
  %4671 = zext i1 %4670 to i8
  store i8 %4671, i8* %14, align 1
  %4672 = and i32 %4669, 255
  %4673 = tail call i32 @llvm.ctpop.i32(i32 %4672)
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  %4676 = xor i8 %4675, 1
  store i8 %4676, i8* %21, align 1
  %4677 = xor i32 %4668, %4657
  %4678 = xor i32 %4677, %4669
  %4679 = lshr i32 %4678, 4
  %4680 = trunc i32 %4679 to i8
  %4681 = and i8 %4680, 1
  store i8 %4681, i8* %27, align 1
  %4682 = icmp eq i32 %4669, 0
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %30, align 1
  %4684 = lshr i32 %4669, 31
  %4685 = trunc i32 %4684 to i8
  store i8 %4685, i8* %33, align 1
  %4686 = lshr i32 %4657, 31
  %4687 = lshr i32 %4668, 31
  %4688 = xor i32 %4687, %4686
  %4689 = xor i32 %4684, %4686
  %4690 = add nuw nsw i32 %4689, %4688
  %4691 = icmp eq i32 %4690, 2
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %39, align 1
  %4693 = icmp ne i8 %4685, 0
  %4694 = xor i1 %4693, %4691
  %.v216 = select i1 %4694, i64 23, i64 1418
  %4695 = add i64 %4652, %.v216
  store i64 %4695, i64* %3, align 8
  br i1 %4694, label %block_4af446, label %block_.L_4af9b9

block_4af446:                                     ; preds = %block_.L_4af42f
  store <4 x i32> zeroinitializer, <4 x i32>* %4607, align 1
  %4696 = add i64 %4653, -768
  store i64 %4696, i64* %RAX.i2857, align 8
  %4697 = add i64 %4695, 17
  store i64 %4697, i64* %3, align 8
  %4698 = load i32, i32* %4661, align 4
  %4699 = sext i32 %4698 to i64
  %4700 = mul nsw i64 %4699, 120
  store i64 %4700, i64* %RCX.i2831.pre-phi, align 8
  %4701 = lshr i64 %4700, 63
  %4702 = add i64 %4700, %4696
  store i64 %4702, i64* %RAX.i2857, align 8
  %4703 = icmp ult i64 %4702, %4696
  %4704 = icmp ult i64 %4702, %4700
  %4705 = or i1 %4703, %4704
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %14, align 1
  %4707 = trunc i64 %4702 to i32
  %4708 = and i32 %4707, 255
  %4709 = tail call i32 @llvm.ctpop.i32(i32 %4708)
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = xor i8 %4711, 1
  store i8 %4712, i8* %21, align 1
  %4713 = xor i64 %4700, %4696
  %4714 = xor i64 %4713, %4702
  %4715 = lshr i64 %4714, 4
  %4716 = trunc i64 %4715 to i8
  %4717 = and i8 %4716, 1
  store i8 %4717, i8* %27, align 1
  %4718 = icmp eq i64 %4702, 0
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %30, align 1
  %4720 = lshr i64 %4702, 63
  %4721 = trunc i64 %4720 to i8
  store i8 %4721, i8* %33, align 1
  %4722 = lshr i64 %4696, 63
  %4723 = xor i64 %4720, %4722
  %4724 = xor i64 %4720, %4701
  %4725 = add nuw nsw i64 %4723, %4724
  %4726 = icmp eq i64 %4725, 2
  %4727 = zext i1 %4726 to i8
  store i8 %4727, i8* %39, align 1
  %4728 = add i64 %4695, 28
  store i64 %4728, i64* %3, align 8
  %4729 = load i32, i32* %4656, align 4
  %4730 = sext i32 %4729 to i64
  store i64 %4730, i64* %RCX.i2831.pre-phi, align 8
  %4731 = shl nsw i64 %4730, 3
  %4732 = add i64 %4731, %4702
  %4733 = add i64 %4695, 33
  store i64 %4733, i64* %3, align 8
  %4734 = load i64, i64* %46, align 1
  %4735 = inttoptr i64 %4732 to i64*
  store i64 %4734, i64* %4735, align 8
  %4736 = load i64, i64* %RBP.i, align 8
  %4737 = add i64 %4736, -35396
  %4738 = load i64, i64* %3, align 8
  %4739 = add i64 %4738, 7
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4737 to i32*
  %4741 = load i32, i32* %4740, align 4
  %4742 = sext i32 %4741 to i64
  store i64 %4742, i64* %RAX.i2857, align 8
  %4743 = shl nsw i64 %4742, 3
  %4744 = add nsw i64 %4743, 7482144
  %4745 = add i64 %4738, 15
  store i64 %4745, i64* %3, align 8
  %4746 = inttoptr i64 %4744 to i64*
  %4747 = load i64, i64* %4746, align 8
  store i64 %4747, i64* %RAX.i2857, align 8
  %4748 = add i64 %4736, -12
  %4749 = add i64 %4738, 19
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4748 to i32*
  %4751 = load i32, i32* %4750, align 4
  %4752 = sext i32 %4751 to i64
  store i64 %4752, i64* %RCX.i2831.pre-phi, align 8
  %4753 = shl nsw i64 %4752, 3
  %4754 = add i64 %4753, %4747
  %4755 = add i64 %4738, 23
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i64*
  %4757 = load i64, i64* %4756, align 8
  store i64 %4757, i64* %RAX.i2857, align 8
  %4758 = add i64 %4757, 6432
  %4759 = add i64 %4738, 30
  store i64 %4759, i64* %3, align 8
  %4760 = inttoptr i64 %4758 to i64*
  %4761 = load i64, i64* %4760, align 8
  store i64 %4761, i64* %RAX.i2857, align 8
  %4762 = add i64 %4736, -784
  %4763 = add i64 %4738, 37
  store i64 %4763, i64* %3, align 8
  %4764 = inttoptr i64 %4762 to i64*
  store i64 %4761, i64* %4764, align 8
  %4765 = load i64, i64* %RBP.i, align 8
  %4766 = add i64 %4765, -35396
  %4767 = load i64, i64* %3, align 8
  %4768 = add i64 %4767, 7
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4766 to i32*
  %4770 = load i32, i32* %4769, align 4
  %4771 = sext i32 %4770 to i64
  store i64 %4771, i64* %RAX.i2857, align 8
  %4772 = shl nsw i64 %4771, 3
  %4773 = add nsw i64 %4772, 7482144
  %4774 = add i64 %4767, 15
  store i64 %4774, i64* %3, align 8
  %4775 = inttoptr i64 %4773 to i64*
  %4776 = load i64, i64* %4775, align 8
  store i64 %4776, i64* %RAX.i2857, align 8
  %4777 = add i64 %4765, -12
  %4778 = add i64 %4767, 19
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i32*
  %4780 = load i32, i32* %4779, align 4
  %4781 = sext i32 %4780 to i64
  store i64 %4781, i64* %RCX.i2831.pre-phi, align 8
  %4782 = shl nsw i64 %4781, 3
  %4783 = add i64 %4782, %4776
  %4784 = add i64 %4767, 23
  store i64 %4784, i64* %3, align 8
  %4785 = inttoptr i64 %4783 to i64*
  %4786 = load i64, i64* %4785, align 8
  store i64 %4786, i64* %RAX.i2857, align 8
  %4787 = add i64 %4786, 6440
  %4788 = add i64 %4767, 30
  store i64 %4788, i64* %3, align 8
  %4789 = inttoptr i64 %4787 to i64*
  %4790 = load i64, i64* %4789, align 8
  store i64 %4790, i64* %RAX.i2857, align 8
  %4791 = add i64 %4765, -792
  %4792 = add i64 %4767, 37
  store i64 %4792, i64* %3, align 8
  %4793 = inttoptr i64 %4791 to i64*
  store i64 %4790, i64* %4793, align 8
  %4794 = load i64, i64* %RBP.i, align 8
  %4795 = add i64 %4794, -4
  %4796 = load i64, i64* %3, align 8
  %4797 = add i64 %4796, 7
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4795 to i32*
  store i32 0, i32* %4798, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_4af4b8

block_.L_4af4b8:                                  ; preds = %block_4af4da, %block_4af446
  %4799 = phi i64 [ %4940, %block_4af4da ], [ %.pre166, %block_4af446 ]
  %4800 = load i64, i64* %RBP.i, align 8
  %4801 = add i64 %4800, -4
  %4802 = add i64 %4799, 3
  store i64 %4802, i64* %3, align 8
  %4803 = inttoptr i64 %4801 to i32*
  %4804 = load i32, i32* %4803, align 4
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %RAX.i2857, align 8
  %4806 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4806, i64* %RCX.i2831.pre-phi, align 8
  %4807 = add i64 %4806, 60
  %4808 = add i64 %4799, 14
  store i64 %4808, i64* %3, align 8
  %4809 = inttoptr i64 %4807 to i32*
  %4810 = load i32, i32* %4809, align 4
  %4811 = zext i32 %4810 to i64
  store i64 %4811, i64* %RDX.i2815, align 8
  store i64 %4806, i64* %RCX.i2831.pre-phi, align 8
  %4812 = add i64 %4806, 52
  %4813 = add i64 %4799, 26
  store i64 %4813, i64* %3, align 8
  %4814 = inttoptr i64 %4812 to i32*
  %4815 = load i32, i32* %4814, align 4
  %4816 = sext i32 %4810 to i64
  %4817 = sext i32 %4815 to i64
  %4818 = mul nsw i64 %4817, %4816
  %4819 = and i64 %4818, 4294967295
  store i64 %4819, i64* %RDX.i2815, align 8
  %4820 = trunc i64 %4818 to i32
  %4821 = sub i32 %4804, %4820
  %4822 = icmp ult i32 %4804, %4820
  %4823 = zext i1 %4822 to i8
  store i8 %4823, i8* %14, align 1
  %4824 = and i32 %4821, 255
  %4825 = tail call i32 @llvm.ctpop.i32(i32 %4824)
  %4826 = trunc i32 %4825 to i8
  %4827 = and i8 %4826, 1
  %4828 = xor i8 %4827, 1
  store i8 %4828, i8* %21, align 1
  %4829 = xor i32 %4820, %4804
  %4830 = xor i32 %4829, %4821
  %4831 = lshr i32 %4830, 4
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  store i8 %4833, i8* %27, align 1
  %4834 = icmp eq i32 %4821, 0
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %30, align 1
  %4836 = lshr i32 %4821, 31
  %4837 = trunc i32 %4836 to i8
  store i8 %4837, i8* %33, align 1
  %4838 = lshr i32 %4804, 31
  %4839 = lshr i32 %4820, 31
  %4840 = xor i32 %4839, %4838
  %4841 = xor i32 %4836, %4838
  %4842 = add nuw nsw i32 %4841, %4840
  %4843 = icmp eq i32 %4842, 2
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %39, align 1
  %4845 = icmp ne i8 %4837, 0
  %4846 = xor i1 %4845, %4843
  %.v232 = select i1 %4846, i64 34, i64 102
  %4847 = add i64 %4799, %.v232
  store i64 %4847, i64* %3, align 8
  br i1 %4846, label %block_4af4da, label %block_.L_4af51e

block_4af4da:                                     ; preds = %block_.L_4af4b8
  %4848 = add i64 %4800, -768
  store i64 %4848, i64* %RAX.i2857, align 8
  %4849 = add i64 %4800, -784
  %4850 = add i64 %4847, 14
  store i64 %4850, i64* %3, align 8
  %4851 = inttoptr i64 %4849 to i64*
  %4852 = load i64, i64* %4851, align 8
  store i64 %4852, i64* %RCX.i2831.pre-phi, align 8
  %4853 = add i64 %4847, 18
  store i64 %4853, i64* %3, align 8
  %4854 = load i32, i32* %4803, align 4
  %4855 = sext i32 %4854 to i64
  store i64 %4855, i64* %RDX.i2815, align 8
  %4856 = shl nsw i64 %4855, 1
  %4857 = add i64 %4856, %4852
  %4858 = add i64 %4847, 22
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i16*
  %4860 = load i16, i16* %4859, align 2
  %4861 = zext i16 %4860 to i64
  store i64 %4861, i64* %RSI.i2716, align 8
  %4862 = uitofp i16 %4860 to double
  store double %4862, double* %45, align 1
  %4863 = add i64 %4800, -35396
  %4864 = add i64 %4847, 33
  store i64 %4864, i64* %3, align 8
  %4865 = inttoptr i64 %4863 to i32*
  %4866 = load i32, i32* %4865, align 4
  %4867 = sext i32 %4866 to i64
  %4868 = mul nsw i64 %4867, 120
  store i64 %4868, i64* %RCX.i2831.pre-phi, align 8
  %4869 = lshr i64 %4868, 63
  %4870 = add i64 %4868, %4848
  store i64 %4870, i64* %RAX.i2857, align 8
  %4871 = icmp ult i64 %4870, %4848
  %4872 = icmp ult i64 %4870, %4868
  %4873 = or i1 %4871, %4872
  %4874 = zext i1 %4873 to i8
  store i8 %4874, i8* %14, align 1
  %4875 = trunc i64 %4870 to i32
  %4876 = and i32 %4875, 255
  %4877 = tail call i32 @llvm.ctpop.i32(i32 %4876)
  %4878 = trunc i32 %4877 to i8
  %4879 = and i8 %4878, 1
  %4880 = xor i8 %4879, 1
  store i8 %4880, i8* %21, align 1
  %4881 = xor i64 %4868, %4848
  %4882 = xor i64 %4881, %4870
  %4883 = lshr i64 %4882, 4
  %4884 = trunc i64 %4883 to i8
  %4885 = and i8 %4884, 1
  store i8 %4885, i8* %27, align 1
  %4886 = icmp eq i64 %4870, 0
  %4887 = zext i1 %4886 to i8
  store i8 %4887, i8* %30, align 1
  %4888 = lshr i64 %4870, 63
  %4889 = trunc i64 %4888 to i8
  store i8 %4889, i8* %33, align 1
  %4890 = lshr i64 %4848, 63
  %4891 = xor i64 %4888, %4890
  %4892 = xor i64 %4888, %4869
  %4893 = add nuw nsw i64 %4891, %4892
  %4894 = icmp eq i64 %4893, 2
  %4895 = zext i1 %4894 to i8
  store i8 %4895, i8* %39, align 1
  %4896 = add i64 %4800, -12
  %4897 = add i64 %4847, 44
  store i64 %4897, i64* %3, align 8
  %4898 = inttoptr i64 %4896 to i32*
  %4899 = load i32, i32* %4898, align 4
  %4900 = sext i32 %4899 to i64
  store i64 %4900, i64* %RCX.i2831.pre-phi, align 8
  %4901 = shl nsw i64 %4900, 3
  %4902 = add i64 %4901, %4870
  %4903 = add i64 %4847, 49
  store i64 %4903, i64* %3, align 8
  %4904 = inttoptr i64 %4902 to double*
  %4905 = load double, double* %4904, align 8
  %4906 = fadd double %4862, %4905
  store double %4906, double* %45, align 1
  %4907 = add i64 %4847, 54
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4902 to double*
  store double %4906, double* %4908, align 8
  %4909 = load i64, i64* %RBP.i, align 8
  %4910 = add i64 %4909, -4
  %4911 = load i64, i64* %3, align 8
  %4912 = add i64 %4911, 3
  store i64 %4912, i64* %3, align 8
  %4913 = inttoptr i64 %4910 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = add i32 %4914, 1
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RAX.i2857, align 8
  %4917 = icmp eq i32 %4914, -1
  %4918 = icmp eq i32 %4915, 0
  %4919 = or i1 %4917, %4918
  %4920 = zext i1 %4919 to i8
  store i8 %4920, i8* %14, align 1
  %4921 = and i32 %4915, 255
  %4922 = tail call i32 @llvm.ctpop.i32(i32 %4921)
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  store i8 %4925, i8* %21, align 1
  %4926 = xor i32 %4915, %4914
  %4927 = lshr i32 %4926, 4
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  store i8 %4929, i8* %27, align 1
  %4930 = zext i1 %4918 to i8
  store i8 %4930, i8* %30, align 1
  %4931 = lshr i32 %4915, 31
  %4932 = trunc i32 %4931 to i8
  store i8 %4932, i8* %33, align 1
  %4933 = lshr i32 %4914, 31
  %4934 = xor i32 %4931, %4933
  %4935 = add nuw nsw i32 %4934, %4931
  %4936 = icmp eq i32 %4935, 2
  %4937 = zext i1 %4936 to i8
  store i8 %4937, i8* %39, align 1
  %4938 = add i64 %4911, 9
  store i64 %4938, i64* %3, align 8
  store i32 %4915, i32* %4913, align 4
  %4939 = load i64, i64* %3, align 8
  %4940 = add i64 %4939, -97
  store i64 %4940, i64* %3, align 8
  br label %block_.L_4af4b8

block_.L_4af51e:                                  ; preds = %block_.L_4af4b8
  store <4 x i32> zeroinitializer, <4 x i32>* %4608, align 1
  %4941 = add i64 %4800, -768
  store i64 %4941, i64* %RAX.i2857, align 8
  %4942 = add i64 %4800, -35396
  %4943 = add i64 %4847, 17
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i32*
  %4945 = load i32, i32* %4944, align 4
  %4946 = sext i32 %4945 to i64
  %4947 = mul nsw i64 %4946, 120
  store i64 %4947, i64* %RCX.i2831.pre-phi, align 8
  %4948 = lshr i64 %4947, 63
  %4949 = add i64 %4947, %4941
  store i64 %4949, i64* %RAX.i2857, align 8
  %4950 = icmp ult i64 %4949, %4941
  %4951 = icmp ult i64 %4949, %4947
  %4952 = or i1 %4950, %4951
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %14, align 1
  %4954 = trunc i64 %4949 to i32
  %4955 = and i32 %4954, 255
  %4956 = tail call i32 @llvm.ctpop.i32(i32 %4955)
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = xor i8 %4958, 1
  store i8 %4959, i8* %21, align 1
  %4960 = xor i64 %4947, %4941
  %4961 = xor i64 %4960, %4949
  %4962 = lshr i64 %4961, 4
  %4963 = trunc i64 %4962 to i8
  %4964 = and i8 %4963, 1
  store i8 %4964, i8* %27, align 1
  %4965 = icmp eq i64 %4949, 0
  %4966 = zext i1 %4965 to i8
  store i8 %4966, i8* %30, align 1
  %4967 = lshr i64 %4949, 63
  %4968 = trunc i64 %4967 to i8
  store i8 %4968, i8* %33, align 1
  %4969 = lshr i64 %4941, 63
  %4970 = xor i64 %4967, %4969
  %4971 = xor i64 %4967, %4948
  %4972 = add nuw nsw i64 %4970, %4971
  %4973 = icmp eq i64 %4972, 2
  %4974 = zext i1 %4973 to i8
  store i8 %4974, i8* %39, align 1
  %4975 = add i64 %4800, -12
  %4976 = add i64 %4847, 28
  store i64 %4976, i64* %3, align 8
  %4977 = inttoptr i64 %4975 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = sext i32 %4978 to i64
  store i64 %4979, i64* %RCX.i2831.pre-phi, align 8
  %4980 = shl nsw i64 %4979, 3
  %4981 = add i64 %4980, %4949
  %4982 = add i64 %4847, 33
  store i64 %4982, i64* %3, align 8
  %4983 = inttoptr i64 %4981 to i64*
  %4984 = load i64, i64* %4983, align 8
  store i64 %4984, i64* %4603, align 1
  store double 0.000000e+00, double* %4605, align 1
  %4985 = add i64 %4847, 37
  store i64 %4985, i64* %3, align 8
  %.cast = bitcast i64 %4984 to double
  %4986 = load double, double* %45, align 1
  %4987 = fcmp uno double %.cast, %4986
  br i1 %4987, label %4988, label %4998

; <label>:4988:                                   ; preds = %block_.L_4af51e
  %4989 = fadd double %.cast, %4986
  %4990 = bitcast double %4989 to i64
  %4991 = and i64 %4990, 9221120237041090560
  %4992 = icmp eq i64 %4991, 9218868437227405312
  %4993 = and i64 %4990, 2251799813685247
  %4994 = icmp ne i64 %4993, 0
  %4995 = and i1 %4992, %4994
  br i1 %4995, label %4996, label %5004

; <label>:4996:                                   ; preds = %4988
  %4997 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4985, %struct.Memory* %MEMORY.32)
  %.pre167 = load i64, i64* %3, align 8
  %.pre168 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4998:                                   ; preds = %block_.L_4af51e
  %4999 = fcmp ogt double %.cast, %4986
  br i1 %4999, label %5004, label %5000

; <label>:5000:                                   ; preds = %4998
  %5001 = fcmp olt double %.cast, %4986
  br i1 %5001, label %5004, label %5002

; <label>:5002:                                   ; preds = %5000
  %5003 = fcmp oeq double %.cast, %4986
  br i1 %5003, label %5004, label %5008

; <label>:5004:                                   ; preds = %5002, %5000, %4998, %4988
  %5005 = phi i8 [ 0, %4998 ], [ 0, %5000 ], [ 1, %5002 ], [ 1, %4988 ]
  %5006 = phi i8 [ 0, %4998 ], [ 0, %5000 ], [ 0, %5002 ], [ 1, %4988 ]
  %5007 = phi i8 [ 0, %4998 ], [ 1, %5000 ], [ 0, %5002 ], [ 1, %4988 ]
  store i8 %5005, i8* %30, align 1
  store i8 %5006, i8* %21, align 1
  store i8 %5007, i8* %14, align 1
  br label %5008

; <label>:5008:                                   ; preds = %5004, %5002
  %5009 = phi i8 [ %5005, %5004 ], [ %4966, %5002 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %5008, %4996
  %5010 = phi i8 [ %.pre168, %4996 ], [ %5009, %5008 ]
  %5011 = phi i64 [ %.pre167, %4996 ], [ %4985, %5008 ]
  %5012 = phi %struct.Memory* [ %4997, %4996 ], [ %MEMORY.32, %5008 ]
  %5013 = icmp eq i8 %5010, 0
  %.v233 = select i1 %5013, i64 17, i64 6
  %5014 = add i64 %5011, %.v233
  store i64 %5014, i64* %3, align 8
  br i1 %5013, label %block_.L_4af554, label %block_4af549

block_4af549:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5015 = load i8, i8* %21, align 1
  %5016 = icmp ne i8 %5015, 0
  %.v314 = select i1 %5016, i64 11, i64 6
  %5017 = add i64 %5014, %.v314
  store i64 %5017, i64* %3, align 8
  %cmpBr_4af549 = icmp eq i8 %5015, 1
  br i1 %cmpBr_4af549, label %block_.L_4af554, label %block_4af54f

block_4af54f:                                     ; preds = %block_4af549
  %5018 = load i64, i64* %RBP.i, align 8
  %5019 = add i64 %5018, -804
  %5020 = add i64 %5017, 81
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RAX.i2857, align 8
  %5024 = add i64 %5018, -35400
  %5025 = add i64 %5017, 87
  store i64 %5025, i64* %3, align 8
  %5026 = inttoptr i64 %5024 to i32*
  store i32 %5022, i32* %5026, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_4af5a6

block_.L_4af554:                                  ; preds = %block_4af549, %routine_ucomisd__xmm0___xmm1.exit
  %5027 = phi i64 [ %5017, %block_4af549 ], [ %5014, %routine_ucomisd__xmm0___xmm1.exit ]
  %5028 = add i64 %5027, ptrtoint (%G_0x232c__rip__type* @G_0x232c__rip_ to i64)
  %5029 = add i64 %5027, 8
  store i64 %5029, i64* %3, align 8
  %5030 = inttoptr i64 %5028 to i64*
  %5031 = load i64, i64* %5030, align 8
  store i64 %5031, i64* %46, align 1
  store double 0.000000e+00, double* %4606, align 1
  %5032 = load i64, i64* %RBP.i, align 8
  %5033 = add i64 %5032, -768
  store i64 %5033, i64* %RAX.i2857, align 8
  %5034 = add i64 %5032, -804
  %5035 = add i64 %5027, 23
  store i64 %5035, i64* %3, align 8
  %5036 = inttoptr i64 %5034 to i32*
  %5037 = load i32, i32* %5036, align 4
  %5038 = sitofp i32 %5037 to double
  store double %5038, double* %4602, align 1
  %5039 = add i64 %5032, -32
  %5040 = add i64 %5027, 28
  store i64 %5040, i64* %3, align 8
  %5041 = load i64, i64* %4604, align 1
  %5042 = inttoptr i64 %5039 to double*
  %5043 = load double, double* %5042, align 8
  %5044 = fmul double %5038, %5043
  store double %5044, double* %4602, align 1
  %5045 = add i64 %5032, -35396
  %5046 = add i64 %5027, 35
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5045 to i32*
  %5048 = load i32, i32* %5047, align 4
  %5049 = sext i32 %5048 to i64
  %5050 = mul nsw i64 %5049, 120
  store i64 %5050, i64* %RCX.i2831.pre-phi, align 8
  %5051 = lshr i64 %5050, 63
  %5052 = add i64 %5050, %5033
  store i64 %5052, i64* %RAX.i2857, align 8
  %5053 = icmp ult i64 %5052, %5033
  %5054 = icmp ult i64 %5052, %5050
  %5055 = or i1 %5053, %5054
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %14, align 1
  %5057 = trunc i64 %5052 to i32
  %5058 = and i32 %5057, 255
  %5059 = tail call i32 @llvm.ctpop.i32(i32 %5058)
  %5060 = trunc i32 %5059 to i8
  %5061 = and i8 %5060, 1
  %5062 = xor i8 %5061, 1
  store i8 %5062, i8* %21, align 1
  %5063 = xor i64 %5050, %5033
  %5064 = xor i64 %5063, %5052
  %5065 = lshr i64 %5064, 4
  %5066 = trunc i64 %5065 to i8
  %5067 = and i8 %5066, 1
  store i8 %5067, i8* %27, align 1
  %5068 = icmp eq i64 %5052, 0
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %30, align 1
  %5070 = lshr i64 %5052, 63
  %5071 = trunc i64 %5070 to i8
  store i8 %5071, i8* %33, align 1
  %5072 = lshr i64 %5033, 63
  %5073 = xor i64 %5070, %5072
  %5074 = xor i64 %5070, %5051
  %5075 = add nuw nsw i64 %5073, %5074
  %5076 = icmp eq i64 %5075, 2
  %5077 = zext i1 %5076 to i8
  store i8 %5077, i8* %39, align 1
  %5078 = add i64 %5032, -12
  %5079 = add i64 %5027, 46
  store i64 %5079, i64* %3, align 8
  %5080 = inttoptr i64 %5078 to i32*
  %5081 = load i32, i32* %5080, align 4
  %5082 = sext i32 %5081 to i64
  store i64 %5082, i64* %RCX.i2831.pre-phi, align 8
  %5083 = shl nsw i64 %5082, 3
  %5084 = add i64 %5083, %5052
  %5085 = add i64 %5027, 51
  store i64 %5085, i64* %3, align 8
  %5086 = inttoptr i64 %5084 to double*
  %5087 = load double, double* %5086, align 8
  %5088 = fdiv double %5044, %5087
  %5089 = load double, double* %45, align 1
  %5090 = fadd double %5088, %5089
  store double %5090, double* %4602, align 1
  store i64 %5041, i64* %4604, align 1
  %5091 = tail call double @llvm.trunc.f64(double %5090)
  %5092 = tail call double @llvm.fabs.f64(double %5091)
  %5093 = fcmp ogt double %5092, 0x41DFFFFFFFC00000
  %5094 = fptosi double %5091 to i32
  %5095 = zext i32 %5094 to i64
  %5096 = select i1 %5093, i64 2147483648, i64 %5095
  store i64 %5096, i64* %RDX.i2815, align 8
  %5097 = load i64, i64* %RBP.i, align 8
  %5098 = add i64 %5097, -35400
  %5099 = trunc i64 %5096 to i32
  %5100 = add i64 %5027, 65
  store i64 %5100, i64* %3, align 8
  %5101 = inttoptr i64 %5098 to i32*
  store i32 %5099, i32* %5101, align 4
  %5102 = load i64, i64* %3, align 8
  %5103 = add i64 %5102, 17
  store i64 %5103, i64* %3, align 8
  br label %block_.L_4af5a6

block_.L_4af5a6:                                  ; preds = %block_4af54f, %block_.L_4af554
  %5104 = phi i64 [ %.pre169, %block_4af54f ], [ %5103, %block_.L_4af554 ]
  %5105 = load i64, i64* %RBP.i, align 8
  %5106 = add i64 %5105, -35400
  %5107 = add i64 %5104, 7
  store i64 %5107, i64* %3, align 8
  %5108 = inttoptr i64 %5106 to i32*
  %5109 = load i32, i32* %5108, align 4
  %5110 = add i32 %5109, 64
  %5111 = icmp ult i32 %5109, -64
  %5112 = zext i1 %5111 to i8
  store i8 %5112, i8* %14, align 1
  %5113 = and i32 %5110, 255
  %5114 = tail call i32 @llvm.ctpop.i32(i32 %5113)
  %5115 = trunc i32 %5114 to i8
  %5116 = and i8 %5115, 1
  %5117 = xor i8 %5116, 1
  store i8 %5117, i8* %21, align 1
  %5118 = xor i32 %5110, %5109
  %5119 = lshr i32 %5118, 4
  %5120 = trunc i32 %5119 to i8
  %5121 = and i8 %5120, 1
  store i8 %5121, i8* %27, align 1
  %5122 = icmp eq i32 %5110, 0
  %5123 = zext i1 %5122 to i8
  store i8 %5123, i8* %30, align 1
  %5124 = lshr i32 %5110, 31
  %5125 = trunc i32 %5124 to i8
  store i8 %5125, i8* %33, align 1
  %5126 = lshr i32 %5109, 31
  %5127 = xor i32 %5126, 1
  %5128 = xor i32 %5124, %5126
  %5129 = add nuw nsw i32 %5128, %5127
  %5130 = icmp eq i32 %5129, 2
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %39, align 1
  %5132 = icmp ne i8 %5125, 0
  %5133 = xor i1 %5132, %5130
  %.v234 = select i1 %5133, i64 26, i64 13
  %5134 = add i64 %5104, %.v234
  store i64 %5134, i64* %3, align 8
  br i1 %5133, label %block_.L_4af5c0, label %block_4af5b3

block_4af5b3:                                     ; preds = %block_.L_4af5a6
  %5135 = add i64 %5134, 7
  store i64 %5135, i64* %3, align 8
  %5136 = load i32, i32* %5108, align 4
  %5137 = add i32 %5136, -127
  %5138 = icmp ult i32 %5136, 127
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %14, align 1
  %5140 = and i32 %5137, 255
  %5141 = tail call i32 @llvm.ctpop.i32(i32 %5140)
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  %5144 = xor i8 %5143, 1
  store i8 %5144, i8* %21, align 1
  %5145 = xor i32 %5136, 16
  %5146 = xor i32 %5145, %5137
  %5147 = lshr i32 %5146, 4
  %5148 = trunc i32 %5147 to i8
  %5149 = and i8 %5148, 1
  store i8 %5149, i8* %27, align 1
  %5150 = icmp eq i32 %5137, 0
  %5151 = zext i1 %5150 to i8
  store i8 %5151, i8* %30, align 1
  %5152 = lshr i32 %5137, 31
  %5153 = trunc i32 %5152 to i8
  store i8 %5153, i8* %33, align 1
  %5154 = lshr i32 %5136, 31
  %5155 = xor i32 %5152, %5154
  %5156 = add nuw nsw i32 %5155, %5154
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %39, align 1
  %5159 = icmp ne i8 %5153, 0
  %5160 = xor i1 %5159, %5157
  %5161 = or i1 %5150, %5160
  %.v235 = select i1 %5161, i64 25, i64 13
  %5162 = add i64 %5134, %.v235
  store i64 %5162, i64* %3, align 8
  br i1 %5161, label %block_.L_4af5cc, label %block_.L_4af5c0

block_.L_4af5c0:                                  ; preds = %block_4af5b3, %block_.L_4af5a6
  %5163 = phi i64 [ %5162, %block_4af5b3 ], [ %5134, %block_.L_4af5a6 ]
  %5164 = add i64 %5105, -804
  %5165 = add i64 %5163, 6
  store i64 %5165, i64* %3, align 8
  %5166 = inttoptr i64 %5164 to i32*
  %5167 = load i32, i32* %5166, align 4
  %5168 = zext i32 %5167 to i64
  store i64 %5168, i64* %RAX.i2857, align 8
  %5169 = add i64 %5163, 12
  store i64 %5169, i64* %3, align 8
  store i32 %5167, i32* %5108, align 4
  %.pre170 = load i64, i64* %RBP.i, align 8
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_4af5cc

block_.L_4af5cc:                                  ; preds = %block_.L_4af5c0, %block_4af5b3
  %5170 = phi i64 [ %.pre171, %block_.L_4af5c0 ], [ %5162, %block_4af5b3 ]
  %5171 = phi i64 [ %.pre170, %block_.L_4af5c0 ], [ %5105, %block_4af5b3 ]
  %5172 = add i64 %5171, -2976
  store i64 %5172, i64* %RAX.i2857, align 8
  %5173 = add i64 %5171, -1888
  store i64 %5173, i64* %RCX.i2831.pre-phi, align 8
  %5174 = add i64 %5171, -35404
  %5175 = add i64 %5170, 24
  store i64 %5175, i64* %3, align 8
  %5176 = inttoptr i64 %5174 to i32*
  store i32 0, i32* %5176, align 4
  %5177 = load i64, i64* %RBP.i, align 8
  %5178 = add i64 %5177, -35400
  %5179 = load i64, i64* %3, align 8
  %5180 = add i64 %5179, 6
  store i64 %5180, i64* %3, align 8
  %5181 = inttoptr i64 %5178 to i32*
  %5182 = load i32, i32* %5181, align 4
  %5183 = zext i32 %5182 to i64
  store i64 %5183, i64* %RDX.i2815, align 8
  %5184 = add i64 %5177, -35396
  %5185 = add i64 %5179, 13
  store i64 %5185, i64* %3, align 8
  %5186 = inttoptr i64 %5184 to i32*
  %5187 = load i32, i32* %5186, align 4
  %5188 = sext i32 %5187 to i64
  %5189 = add i64 %5179, 20
  store i64 %5189, i64* %3, align 8
  %5190 = sext i32 %5187 to i128
  %5191 = and i128 %5190, -18446744073709551616
  %5192 = zext i64 %5188 to i128
  %5193 = or i128 %5191, %5192
  %5194 = mul nsw i128 %5193, 180
  %5195 = trunc i128 %5194 to i64
  store i64 %5195, i64* %RSI.i2152, align 8
  %5196 = sext i64 %5195 to i128
  %5197 = icmp ne i128 %5196, %5194
  %5198 = zext i1 %5197 to i8
  store i8 %5198, i8* %14, align 1
  %5199 = trunc i128 %5194 to i32
  %5200 = and i32 %5199, 252
  %5201 = tail call i32 @llvm.ctpop.i32(i32 %5200)
  %5202 = trunc i32 %5201 to i8
  %5203 = and i8 %5202, 1
  %5204 = xor i8 %5203, 1
  store i8 %5204, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %5205 = lshr i64 %5195, 63
  %5206 = trunc i64 %5205 to i8
  store i8 %5206, i8* %33, align 1
  store i8 %5198, i8* %39, align 1
  %5207 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %5208 = add i64 %5195, %5207
  store i64 %5208, i64* %RDI.i2710, align 8
  %5209 = icmp ult i64 %5208, %5207
  %5210 = icmp ult i64 %5208, %5195
  %5211 = or i1 %5209, %5210
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %14, align 1
  %5213 = trunc i64 %5208 to i32
  %5214 = and i32 %5213, 255
  %5215 = tail call i32 @llvm.ctpop.i32(i32 %5214)
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  %5218 = xor i8 %5217, 1
  store i8 %5218, i8* %21, align 1
  %5219 = xor i64 %5195, %5207
  %5220 = xor i64 %5219, %5208
  %5221 = lshr i64 %5220, 4
  %5222 = trunc i64 %5221 to i8
  %5223 = and i8 %5222, 1
  store i8 %5223, i8* %27, align 1
  %5224 = icmp eq i64 %5208, 0
  %5225 = zext i1 %5224 to i8
  store i8 %5225, i8* %30, align 1
  %5226 = lshr i64 %5208, 63
  %5227 = trunc i64 %5226 to i8
  store i8 %5227, i8* %33, align 1
  %5228 = lshr i64 %5207, 63
  %5229 = xor i64 %5226, %5228
  %5230 = xor i64 %5226, %5205
  %5231 = add nuw nsw i64 %5229, %5230
  %5232 = icmp eq i64 %5231, 2
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %39, align 1
  %5234 = add i64 %5177, -12
  %5235 = add i64 %5179, 30
  store i64 %5235, i64* %3, align 8
  %5236 = inttoptr i64 %5234 to i32*
  %5237 = load i32, i32* %5236, align 4
  %5238 = sext i32 %5237 to i64
  %5239 = mul nsw i64 %5238, 12
  store i64 %5239, i64* %RSI.i2152, align 8
  %5240 = lshr i64 %5239, 63
  %5241 = add i64 %5239, %5208
  store i64 %5241, i64* %RDI.i2710, align 8
  %5242 = icmp ult i64 %5241, %5208
  %5243 = icmp ult i64 %5241, %5239
  %5244 = or i1 %5242, %5243
  %5245 = zext i1 %5244 to i8
  store i8 %5245, i8* %14, align 1
  %5246 = trunc i64 %5241 to i32
  %5247 = and i32 %5246, 255
  %5248 = tail call i32 @llvm.ctpop.i32(i32 %5247)
  %5249 = trunc i32 %5248 to i8
  %5250 = and i8 %5249, 1
  %5251 = xor i8 %5250, 1
  store i8 %5251, i8* %21, align 1
  %5252 = xor i64 %5239, %5208
  %5253 = xor i64 %5252, %5241
  %5254 = lshr i64 %5253, 4
  %5255 = trunc i64 %5254 to i8
  %5256 = and i8 %5255, 1
  store i8 %5256, i8* %27, align 1
  %5257 = icmp eq i64 %5241, 0
  %5258 = zext i1 %5257 to i8
  store i8 %5258, i8* %30, align 1
  %5259 = lshr i64 %5241, 63
  %5260 = trunc i64 %5259 to i8
  store i8 %5260, i8* %33, align 1
  %5261 = xor i64 %5259, %5226
  %5262 = xor i64 %5259, %5240
  %5263 = add nuw nsw i64 %5261, %5262
  %5264 = icmp eq i64 %5263, 2
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %39, align 1
  %5266 = inttoptr i64 %5241 to i32*
  %5267 = load i32, i32* %EDX.i2808, align 4
  %5268 = add i64 %5179, 39
  store i64 %5268, i64* %3, align 8
  store i32 %5267, i32* %5266, align 4
  %5269 = load i64, i64* %RBP.i, align 8
  %5270 = add i64 %5269, -800
  %5271 = load i64, i64* %3, align 8
  %5272 = add i64 %5271, 6
  store i64 %5272, i64* %3, align 8
  %5273 = inttoptr i64 %5270 to i32*
  %5274 = load i32, i32* %5273, align 4
  %5275 = zext i32 %5274 to i64
  store i64 %5275, i64* %RDX.i2815, align 8
  %5276 = add i64 %5269, -35396
  %5277 = add i64 %5271, 13
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = sext i32 %5279 to i64
  %5281 = add i64 %5271, 20
  store i64 %5281, i64* %3, align 8
  %5282 = sext i32 %5279 to i128
  %5283 = and i128 %5282, -18446744073709551616
  %5284 = zext i64 %5280 to i128
  %5285 = or i128 %5283, %5284
  %5286 = mul nsw i128 %5285, 180
  %5287 = trunc i128 %5286 to i64
  store i64 %5287, i64* %RSI.i2152, align 8
  %5288 = sext i64 %5287 to i128
  %5289 = icmp ne i128 %5288, %5286
  %5290 = zext i1 %5289 to i8
  store i8 %5290, i8* %14, align 1
  %5291 = trunc i128 %5286 to i32
  %5292 = and i32 %5291, 252
  %5293 = tail call i32 @llvm.ctpop.i32(i32 %5292)
  %5294 = trunc i32 %5293 to i8
  %5295 = and i8 %5294, 1
  %5296 = xor i8 %5295, 1
  store i8 %5296, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %5297 = lshr i64 %5287, 63
  %5298 = trunc i64 %5297 to i8
  store i8 %5298, i8* %33, align 1
  store i8 %5290, i8* %39, align 1
  %5299 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %5300 = add i64 %5287, %5299
  store i64 %5300, i64* %RDI.i2710, align 8
  %5301 = icmp ult i64 %5300, %5299
  %5302 = icmp ult i64 %5300, %5287
  %5303 = or i1 %5301, %5302
  %5304 = zext i1 %5303 to i8
  store i8 %5304, i8* %14, align 1
  %5305 = trunc i64 %5300 to i32
  %5306 = and i32 %5305, 255
  %5307 = tail call i32 @llvm.ctpop.i32(i32 %5306)
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  %5310 = xor i8 %5309, 1
  store i8 %5310, i8* %21, align 1
  %5311 = xor i64 %5287, %5299
  %5312 = xor i64 %5311, %5300
  %5313 = lshr i64 %5312, 4
  %5314 = trunc i64 %5313 to i8
  %5315 = and i8 %5314, 1
  store i8 %5315, i8* %27, align 1
  %5316 = icmp eq i64 %5300, 0
  %5317 = zext i1 %5316 to i8
  store i8 %5317, i8* %30, align 1
  %5318 = lshr i64 %5300, 63
  %5319 = trunc i64 %5318 to i8
  store i8 %5319, i8* %33, align 1
  %5320 = lshr i64 %5299, 63
  %5321 = xor i64 %5318, %5320
  %5322 = xor i64 %5318, %5297
  %5323 = add nuw nsw i64 %5321, %5322
  %5324 = icmp eq i64 %5323, 2
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %39, align 1
  %5326 = add i64 %5269, -12
  %5327 = add i64 %5271, 30
  store i64 %5327, i64* %3, align 8
  %5328 = inttoptr i64 %5326 to i32*
  %5329 = load i32, i32* %5328, align 4
  %5330 = sext i32 %5329 to i64
  %5331 = mul nsw i64 %5330, 12
  store i64 %5331, i64* %RSI.i2152, align 8
  %5332 = lshr i64 %5331, 63
  %5333 = add i64 %5331, %5300
  store i64 %5333, i64* %RDI.i2710, align 8
  %5334 = icmp ult i64 %5333, %5300
  %5335 = icmp ult i64 %5333, %5331
  %5336 = or i1 %5334, %5335
  %5337 = zext i1 %5336 to i8
  store i8 %5337, i8* %14, align 1
  %5338 = trunc i64 %5333 to i32
  %5339 = and i32 %5338, 255
  %5340 = tail call i32 @llvm.ctpop.i32(i32 %5339)
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  %5343 = xor i8 %5342, 1
  store i8 %5343, i8* %21, align 1
  %5344 = xor i64 %5331, %5300
  %5345 = xor i64 %5344, %5333
  %5346 = lshr i64 %5345, 4
  %5347 = trunc i64 %5346 to i8
  %5348 = and i8 %5347, 1
  store i8 %5348, i8* %27, align 1
  %5349 = icmp eq i64 %5333, 0
  %5350 = zext i1 %5349 to i8
  store i8 %5350, i8* %30, align 1
  %5351 = lshr i64 %5333, 63
  %5352 = trunc i64 %5351 to i8
  store i8 %5352, i8* %33, align 1
  %5353 = xor i64 %5351, %5318
  %5354 = xor i64 %5351, %5332
  %5355 = add nuw nsw i64 %5353, %5354
  %5356 = icmp eq i64 %5355, 2
  %5357 = zext i1 %5356 to i8
  store i8 %5357, i8* %39, align 1
  %5358 = add i64 %5333, 4
  %5359 = load i32, i32* %EDX.i2808, align 4
  %5360 = add i64 %5271, 40
  store i64 %5360, i64* %3, align 8
  %5361 = inttoptr i64 %5358 to i32*
  store i32 %5359, i32* %5361, align 4
  %5362 = load i64, i64* %RBP.i, align 8
  %5363 = add i64 %5362, -796
  %5364 = load i64, i64* %3, align 8
  %5365 = add i64 %5364, 6
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5363 to i32*
  %5367 = load i32, i32* %5366, align 4
  %5368 = zext i32 %5367 to i64
  store i64 %5368, i64* %RDX.i2815, align 8
  %5369 = add i64 %5362, -35396
  %5370 = add i64 %5364, 13
  store i64 %5370, i64* %3, align 8
  %5371 = inttoptr i64 %5369 to i32*
  %5372 = load i32, i32* %5371, align 4
  %5373 = sext i32 %5372 to i64
  %5374 = add i64 %5364, 20
  store i64 %5374, i64* %3, align 8
  %5375 = sext i32 %5372 to i128
  %5376 = and i128 %5375, -18446744073709551616
  %5377 = zext i64 %5373 to i128
  %5378 = or i128 %5376, %5377
  %5379 = mul nsw i128 %5378, 180
  %5380 = trunc i128 %5379 to i64
  store i64 %5380, i64* %RSI.i2152, align 8
  %5381 = sext i64 %5380 to i128
  %5382 = icmp ne i128 %5381, %5379
  %5383 = zext i1 %5382 to i8
  store i8 %5383, i8* %14, align 1
  %5384 = trunc i128 %5379 to i32
  %5385 = and i32 %5384, 252
  %5386 = tail call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %5390 = lshr i64 %5380, 63
  %5391 = trunc i64 %5390 to i8
  store i8 %5391, i8* %33, align 1
  store i8 %5383, i8* %39, align 1
  %5392 = load i64, i64* %RCX.i2831.pre-phi, align 8
  %5393 = add i64 %5380, %5392
  store i64 %5393, i64* %RCX.i2831.pre-phi, align 8
  %5394 = icmp ult i64 %5393, %5392
  %5395 = icmp ult i64 %5393, %5380
  %5396 = or i1 %5394, %5395
  %5397 = zext i1 %5396 to i8
  store i8 %5397, i8* %14, align 1
  %5398 = trunc i64 %5393 to i32
  %5399 = and i32 %5398, 255
  %5400 = tail call i32 @llvm.ctpop.i32(i32 %5399)
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  %5403 = xor i8 %5402, 1
  store i8 %5403, i8* %21, align 1
  %5404 = xor i64 %5380, %5392
  %5405 = xor i64 %5404, %5393
  %5406 = lshr i64 %5405, 4
  %5407 = trunc i64 %5406 to i8
  %5408 = and i8 %5407, 1
  store i8 %5408, i8* %27, align 1
  %5409 = icmp eq i64 %5393, 0
  %5410 = zext i1 %5409 to i8
  store i8 %5410, i8* %30, align 1
  %5411 = lshr i64 %5393, 63
  %5412 = trunc i64 %5411 to i8
  store i8 %5412, i8* %33, align 1
  %5413 = lshr i64 %5392, 63
  %5414 = xor i64 %5411, %5413
  %5415 = xor i64 %5411, %5390
  %5416 = add nuw nsw i64 %5414, %5415
  %5417 = icmp eq i64 %5416, 2
  %5418 = zext i1 %5417 to i8
  store i8 %5418, i8* %39, align 1
  %5419 = add i64 %5362, -12
  %5420 = add i64 %5364, 27
  store i64 %5420, i64* %3, align 8
  %5421 = inttoptr i64 %5419 to i32*
  %5422 = load i32, i32* %5421, align 4
  %5423 = sext i32 %5422 to i64
  %5424 = mul nsw i64 %5423, 12
  store i64 %5424, i64* %RSI.i2152, align 8
  %5425 = lshr i64 %5424, 63
  %5426 = add i64 %5424, %5393
  store i64 %5426, i64* %RCX.i2831.pre-phi, align 8
  %5427 = icmp ult i64 %5426, %5393
  %5428 = icmp ult i64 %5426, %5424
  %5429 = or i1 %5427, %5428
  %5430 = zext i1 %5429 to i8
  store i8 %5430, i8* %14, align 1
  %5431 = trunc i64 %5426 to i32
  %5432 = and i32 %5431, 255
  %5433 = tail call i32 @llvm.ctpop.i32(i32 %5432)
  %5434 = trunc i32 %5433 to i8
  %5435 = and i8 %5434, 1
  %5436 = xor i8 %5435, 1
  store i8 %5436, i8* %21, align 1
  %5437 = xor i64 %5424, %5393
  %5438 = xor i64 %5437, %5426
  %5439 = lshr i64 %5438, 4
  %5440 = trunc i64 %5439 to i8
  %5441 = and i8 %5440, 1
  store i8 %5441, i8* %27, align 1
  %5442 = icmp eq i64 %5426, 0
  %5443 = zext i1 %5442 to i8
  store i8 %5443, i8* %30, align 1
  %5444 = lshr i64 %5426, 63
  %5445 = trunc i64 %5444 to i8
  store i8 %5445, i8* %33, align 1
  %5446 = xor i64 %5444, %5411
  %5447 = xor i64 %5444, %5425
  %5448 = add nuw nsw i64 %5446, %5447
  %5449 = icmp eq i64 %5448, 2
  %5450 = zext i1 %5449 to i8
  store i8 %5450, i8* %39, align 1
  %5451 = add i64 %5426, 8
  %5452 = load i32, i32* %EDX.i2808, align 4
  %5453 = add i64 %5364, 37
  store i64 %5453, i64* %3, align 8
  %5454 = inttoptr i64 %5451 to i32*
  store i32 %5452, i32* %5454, align 4
  %5455 = load i64, i64* %RBP.i, align 8
  %5456 = add i64 %5455, -35396
  %5457 = load i64, i64* %3, align 8
  %5458 = add i64 %5457, 7
  store i64 %5458, i64* %3, align 8
  %5459 = inttoptr i64 %5456 to i32*
  %5460 = load i32, i32* %5459, align 4
  %5461 = sext i32 %5460 to i64
  %5462 = mul nsw i64 %5461, 180
  store i64 %5462, i64* %RCX.i2831.pre-phi, align 8
  %5463 = lshr i64 %5462, 63
  %5464 = load i64, i64* %RAX.i2857, align 8
  %5465 = add i64 %5462, %5464
  store i64 %5465, i64* %RSI.i2152, align 8
  %5466 = icmp ult i64 %5465, %5464
  %5467 = icmp ult i64 %5465, %5462
  %5468 = or i1 %5466, %5467
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %14, align 1
  %5470 = trunc i64 %5465 to i32
  %5471 = and i32 %5470, 255
  %5472 = tail call i32 @llvm.ctpop.i32(i32 %5471)
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  %5475 = xor i8 %5474, 1
  store i8 %5475, i8* %21, align 1
  %5476 = xor i64 %5462, %5464
  %5477 = xor i64 %5476, %5465
  %5478 = lshr i64 %5477, 4
  %5479 = trunc i64 %5478 to i8
  %5480 = and i8 %5479, 1
  store i8 %5480, i8* %27, align 1
  %5481 = icmp eq i64 %5465, 0
  %5482 = zext i1 %5481 to i8
  store i8 %5482, i8* %30, align 1
  %5483 = lshr i64 %5465, 63
  %5484 = trunc i64 %5483 to i8
  store i8 %5484, i8* %33, align 1
  %5485 = lshr i64 %5464, 63
  %5486 = xor i64 %5483, %5485
  %5487 = xor i64 %5483, %5463
  %5488 = add nuw nsw i64 %5486, %5487
  %5489 = icmp eq i64 %5488, 2
  %5490 = zext i1 %5489 to i8
  store i8 %5490, i8* %39, align 1
  %5491 = add i64 %5455, -12
  %5492 = add i64 %5457, 24
  store i64 %5492, i64* %3, align 8
  %5493 = inttoptr i64 %5491 to i32*
  %5494 = load i32, i32* %5493, align 4
  %5495 = sext i32 %5494 to i64
  %5496 = mul nsw i64 %5495, 12
  store i64 %5496, i64* %RCX.i2831.pre-phi, align 8
  %5497 = lshr i64 %5496, 63
  %5498 = add i64 %5496, %5465
  store i64 %5498, i64* %RSI.i2152, align 8
  %5499 = icmp ult i64 %5498, %5465
  %5500 = icmp ult i64 %5498, %5496
  %5501 = or i1 %5499, %5500
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %14, align 1
  %5503 = trunc i64 %5498 to i32
  %5504 = and i32 %5503, 255
  %5505 = tail call i32 @llvm.ctpop.i32(i32 %5504)
  %5506 = trunc i32 %5505 to i8
  %5507 = and i8 %5506, 1
  %5508 = xor i8 %5507, 1
  store i8 %5508, i8* %21, align 1
  %5509 = xor i64 %5496, %5465
  %5510 = xor i64 %5509, %5498
  %5511 = lshr i64 %5510, 4
  %5512 = trunc i64 %5511 to i8
  %5513 = and i8 %5512, 1
  store i8 %5513, i8* %27, align 1
  %5514 = icmp eq i64 %5498, 0
  %5515 = zext i1 %5514 to i8
  store i8 %5515, i8* %30, align 1
  %5516 = lshr i64 %5498, 63
  %5517 = trunc i64 %5516 to i8
  store i8 %5517, i8* %33, align 1
  %5518 = xor i64 %5516, %5483
  %5519 = xor i64 %5516, %5497
  %5520 = add nuw nsw i64 %5518, %5519
  %5521 = icmp eq i64 %5520, 2
  %5522 = zext i1 %5521 to i8
  store i8 %5522, i8* %39, align 1
  %5523 = inttoptr i64 %5498 to i32*
  %5524 = add i64 %5457, 37
  store i64 %5524, i64* %3, align 8
  store i32 0, i32* %5523, align 4
  %5525 = load i64, i64* %RBP.i, align 8
  %5526 = add i64 %5525, -35396
  %5527 = load i64, i64* %3, align 8
  %5528 = add i64 %5527, 7
  store i64 %5528, i64* %3, align 8
  %5529 = inttoptr i64 %5526 to i32*
  %5530 = load i32, i32* %5529, align 4
  %5531 = sext i32 %5530 to i64
  %5532 = mul nsw i64 %5531, 180
  store i64 %5532, i64* %RCX.i2831.pre-phi, align 8
  %5533 = lshr i64 %5532, 63
  %5534 = load i64, i64* %RAX.i2857, align 8
  %5535 = add i64 %5532, %5534
  store i64 %5535, i64* %RSI.i2152, align 8
  %5536 = icmp ult i64 %5535, %5534
  %5537 = icmp ult i64 %5535, %5532
  %5538 = or i1 %5536, %5537
  %5539 = zext i1 %5538 to i8
  store i8 %5539, i8* %14, align 1
  %5540 = trunc i64 %5535 to i32
  %5541 = and i32 %5540, 255
  %5542 = tail call i32 @llvm.ctpop.i32(i32 %5541)
  %5543 = trunc i32 %5542 to i8
  %5544 = and i8 %5543, 1
  %5545 = xor i8 %5544, 1
  store i8 %5545, i8* %21, align 1
  %5546 = xor i64 %5532, %5534
  %5547 = xor i64 %5546, %5535
  %5548 = lshr i64 %5547, 4
  %5549 = trunc i64 %5548 to i8
  %5550 = and i8 %5549, 1
  store i8 %5550, i8* %27, align 1
  %5551 = icmp eq i64 %5535, 0
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %30, align 1
  %5553 = lshr i64 %5535, 63
  %5554 = trunc i64 %5553 to i8
  store i8 %5554, i8* %33, align 1
  %5555 = lshr i64 %5534, 63
  %5556 = xor i64 %5553, %5555
  %5557 = xor i64 %5553, %5533
  %5558 = add nuw nsw i64 %5556, %5557
  %5559 = icmp eq i64 %5558, 2
  %5560 = zext i1 %5559 to i8
  store i8 %5560, i8* %39, align 1
  %5561 = add i64 %5525, -12
  %5562 = add i64 %5527, 24
  store i64 %5562, i64* %3, align 8
  %5563 = inttoptr i64 %5561 to i32*
  %5564 = load i32, i32* %5563, align 4
  %5565 = sext i32 %5564 to i64
  %5566 = mul nsw i64 %5565, 12
  store i64 %5566, i64* %RCX.i2831.pre-phi, align 8
  %5567 = lshr i64 %5566, 63
  %5568 = add i64 %5566, %5535
  store i64 %5568, i64* %RSI.i2152, align 8
  %5569 = icmp ult i64 %5568, %5535
  %5570 = icmp ult i64 %5568, %5566
  %5571 = or i1 %5569, %5570
  %5572 = zext i1 %5571 to i8
  store i8 %5572, i8* %14, align 1
  %5573 = trunc i64 %5568 to i32
  %5574 = and i32 %5573, 255
  %5575 = tail call i32 @llvm.ctpop.i32(i32 %5574)
  %5576 = trunc i32 %5575 to i8
  %5577 = and i8 %5576, 1
  %5578 = xor i8 %5577, 1
  store i8 %5578, i8* %21, align 1
  %5579 = xor i64 %5566, %5535
  %5580 = xor i64 %5579, %5568
  %5581 = lshr i64 %5580, 4
  %5582 = trunc i64 %5581 to i8
  %5583 = and i8 %5582, 1
  store i8 %5583, i8* %27, align 1
  %5584 = icmp eq i64 %5568, 0
  %5585 = zext i1 %5584 to i8
  store i8 %5585, i8* %30, align 1
  %5586 = lshr i64 %5568, 63
  %5587 = trunc i64 %5586 to i8
  store i8 %5587, i8* %33, align 1
  %5588 = xor i64 %5586, %5553
  %5589 = xor i64 %5586, %5567
  %5590 = add nuw nsw i64 %5588, %5589
  %5591 = icmp eq i64 %5590, 2
  %5592 = zext i1 %5591 to i8
  store i8 %5592, i8* %39, align 1
  %5593 = add i64 %5568, 4
  %5594 = add i64 %5527, 38
  store i64 %5594, i64* %3, align 8
  %5595 = inttoptr i64 %5593 to i32*
  store i32 0, i32* %5595, align 4
  %5596 = load i64, i64* %RBP.i, align 8
  %5597 = add i64 %5596, -35396
  %5598 = load i64, i64* %3, align 8
  %5599 = add i64 %5598, 7
  store i64 %5599, i64* %3, align 8
  %5600 = inttoptr i64 %5597 to i32*
  %5601 = load i32, i32* %5600, align 4
  %5602 = sext i32 %5601 to i64
  %5603 = mul nsw i64 %5602, 180
  store i64 %5603, i64* %RCX.i2831.pre-phi, align 8
  %5604 = lshr i64 %5603, 63
  %5605 = load i64, i64* %RAX.i2857, align 8
  %5606 = add i64 %5603, %5605
  store i64 %5606, i64* %RAX.i2857, align 8
  %5607 = icmp ult i64 %5606, %5605
  %5608 = icmp ult i64 %5606, %5603
  %5609 = or i1 %5607, %5608
  %5610 = zext i1 %5609 to i8
  store i8 %5610, i8* %14, align 1
  %5611 = trunc i64 %5606 to i32
  %5612 = and i32 %5611, 255
  %5613 = tail call i32 @llvm.ctpop.i32(i32 %5612)
  %5614 = trunc i32 %5613 to i8
  %5615 = and i8 %5614, 1
  %5616 = xor i8 %5615, 1
  store i8 %5616, i8* %21, align 1
  %5617 = xor i64 %5603, %5605
  %5618 = xor i64 %5617, %5606
  %5619 = lshr i64 %5618, 4
  %5620 = trunc i64 %5619 to i8
  %5621 = and i8 %5620, 1
  store i8 %5621, i8* %27, align 1
  %5622 = icmp eq i64 %5606, 0
  %5623 = zext i1 %5622 to i8
  store i8 %5623, i8* %30, align 1
  %5624 = lshr i64 %5606, 63
  %5625 = trunc i64 %5624 to i8
  store i8 %5625, i8* %33, align 1
  %5626 = lshr i64 %5605, 63
  %5627 = xor i64 %5624, %5626
  %5628 = xor i64 %5624, %5604
  %5629 = add nuw nsw i64 %5627, %5628
  %5630 = icmp eq i64 %5629, 2
  %5631 = zext i1 %5630 to i8
  store i8 %5631, i8* %39, align 1
  %5632 = add i64 %5596, -12
  %5633 = add i64 %5598, 21
  store i64 %5633, i64* %3, align 8
  %5634 = inttoptr i64 %5632 to i32*
  %5635 = load i32, i32* %5634, align 4
  %5636 = sext i32 %5635 to i64
  %5637 = mul nsw i64 %5636, 12
  store i64 %5637, i64* %RCX.i2831.pre-phi, align 8
  %5638 = lshr i64 %5637, 63
  %5639 = add i64 %5637, %5606
  store i64 %5639, i64* %RAX.i2857, align 8
  %5640 = icmp ult i64 %5639, %5606
  %5641 = icmp ult i64 %5639, %5637
  %5642 = or i1 %5640, %5641
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %14, align 1
  %5644 = trunc i64 %5639 to i32
  %5645 = and i32 %5644, 255
  %5646 = tail call i32 @llvm.ctpop.i32(i32 %5645)
  %5647 = trunc i32 %5646 to i8
  %5648 = and i8 %5647, 1
  %5649 = xor i8 %5648, 1
  store i8 %5649, i8* %21, align 1
  %5650 = xor i64 %5637, %5606
  %5651 = xor i64 %5650, %5639
  %5652 = lshr i64 %5651, 4
  %5653 = trunc i64 %5652 to i8
  %5654 = and i8 %5653, 1
  store i8 %5654, i8* %27, align 1
  %5655 = icmp eq i64 %5639, 0
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %30, align 1
  %5657 = lshr i64 %5639, 63
  %5658 = trunc i64 %5657 to i8
  store i8 %5658, i8* %33, align 1
  %5659 = xor i64 %5657, %5624
  %5660 = xor i64 %5657, %5638
  %5661 = add nuw nsw i64 %5659, %5660
  %5662 = icmp eq i64 %5661, 2
  %5663 = zext i1 %5662 to i8
  store i8 %5663, i8* %39, align 1
  %5664 = add i64 %5639, 8
  %5665 = add i64 %5598, 35
  store i64 %5665, i64* %3, align 8
  %5666 = inttoptr i64 %5664 to i32*
  store i32 0, i32* %5666, align 4
  %5667 = load i64, i64* %RBP.i, align 8
  %5668 = add i64 %5667, -4
  %5669 = load i64, i64* %3, align 8
  %5670 = add i64 %5669, 7
  store i64 %5670, i64* %3, align 8
  %5671 = inttoptr i64 %5668 to i32*
  store i32 0, i32* %5671, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_4af6cd

block_.L_4af6cd:                                  ; preds = %block_.L_4af7c8, %block_.L_4af5cc
  %5672 = phi i64 [ %6129, %block_.L_4af7c8 ], [ %.pre172, %block_.L_4af5cc ]
  %5673 = load i64, i64* %RBP.i, align 8
  %5674 = add i64 %5673, -4
  %5675 = add i64 %5672, 3
  store i64 %5675, i64* %3, align 8
  %5676 = inttoptr i64 %5674 to i32*
  %5677 = load i32, i32* %5676, align 4
  %5678 = zext i32 %5677 to i64
  store i64 %5678, i64* %RAX.i2857, align 8
  %5679 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5679, i64* %RCX.i2831.pre-phi, align 8
  %5680 = add i64 %5679, 60
  %5681 = add i64 %5672, 14
  store i64 %5681, i64* %3, align 8
  %5682 = inttoptr i64 %5680 to i32*
  %5683 = load i32, i32* %5682, align 4
  %5684 = zext i32 %5683 to i64
  store i64 %5684, i64* %RDX.i2815, align 8
  store i64 %5679, i64* %RCX.i2831.pre-phi, align 8
  %5685 = add i64 %5679, 52
  %5686 = add i64 %5672, 26
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = sext i32 %5683 to i64
  %5690 = sext i32 %5688 to i64
  %5691 = mul nsw i64 %5690, %5689
  %5692 = and i64 %5691, 4294967295
  store i64 %5692, i64* %RDX.i2815, align 8
  %5693 = trunc i64 %5691 to i32
  %5694 = sub i32 %5677, %5693
  %5695 = icmp ult i32 %5677, %5693
  %5696 = zext i1 %5695 to i8
  store i8 %5696, i8* %14, align 1
  %5697 = and i32 %5694, 255
  %5698 = tail call i32 @llvm.ctpop.i32(i32 %5697)
  %5699 = trunc i32 %5698 to i8
  %5700 = and i8 %5699, 1
  %5701 = xor i8 %5700, 1
  store i8 %5701, i8* %21, align 1
  %5702 = xor i32 %5693, %5677
  %5703 = xor i32 %5702, %5694
  %5704 = lshr i32 %5703, 4
  %5705 = trunc i32 %5704 to i8
  %5706 = and i8 %5705, 1
  store i8 %5706, i8* %27, align 1
  %5707 = icmp eq i32 %5694, 0
  %5708 = zext i1 %5707 to i8
  store i8 %5708, i8* %30, align 1
  %5709 = lshr i32 %5694, 31
  %5710 = trunc i32 %5709 to i8
  store i8 %5710, i8* %33, align 1
  %5711 = lshr i32 %5677, 31
  %5712 = lshr i32 %5693, 31
  %5713 = xor i32 %5712, %5711
  %5714 = xor i32 %5709, %5711
  %5715 = add nuw nsw i32 %5714, %5713
  %5716 = icmp eq i32 %5715, 2
  %5717 = zext i1 %5716 to i8
  store i8 %5717, i8* %39, align 1
  %5718 = icmp ne i8 %5710, 0
  %5719 = xor i1 %5718, %5716
  %.v236 = select i1 %5719, i64 34, i64 289
  %5720 = add i64 %5672, %.v236
  store i64 %5720, i64* %3, align 8
  br i1 %5719, label %block_4af6ef, label %block_.L_4af7ee

block_4af6ef:                                     ; preds = %block_.L_4af6cd
  %5721 = add i64 %5673, -784
  %5722 = add i64 %5720, 7
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5721 to i64*
  %5724 = load i64, i64* %5723, align 8
  store i64 %5724, i64* %RAX.i2857, align 8
  %5725 = add i64 %5720, 11
  store i64 %5725, i64* %3, align 8
  %5726 = load i32, i32* %5676, align 4
  %5727 = sext i32 %5726 to i64
  store i64 %5727, i64* %RCX.i2831.pre-phi, align 8
  %5728 = shl nsw i64 %5727, 1
  %5729 = add i64 %5728, %5724
  %5730 = add i64 %5720, 15
  store i64 %5730, i64* %3, align 8
  %5731 = inttoptr i64 %5729 to i16*
  %5732 = load i16, i16* %5731, align 2
  %5733 = zext i16 %5732 to i64
  store i64 %5733, i64* %RDX.i2815, align 8
  %5734 = add i64 %5673, -35400
  %5735 = add i64 %5720, 22
  store i64 %5735, i64* %3, align 8
  %5736 = inttoptr i64 %5734 to i32*
  %5737 = load i32, i32* %5736, align 4
  %5738 = sext i32 %5737 to i64
  %5739 = mul nsw i64 %5738, %5733
  %5740 = trunc i64 %5739 to i32
  %5741 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %5742 = add i32 %5741, %5740
  %5743 = zext i32 %5742 to i64
  store i64 %5743, i64* %RDX.i2815, align 8
  %5744 = icmp ult i32 %5742, %5740
  %5745 = icmp ult i32 %5742, %5741
  %5746 = or i1 %5744, %5745
  %5747 = zext i1 %5746 to i8
  store i8 %5747, i8* %14, align 1
  %5748 = and i32 %5742, 255
  %5749 = tail call i32 @llvm.ctpop.i32(i32 %5748)
  %5750 = trunc i32 %5749 to i8
  %5751 = and i8 %5750, 1
  %5752 = xor i8 %5751, 1
  store i8 %5752, i8* %21, align 1
  %5753 = xor i32 %5741, %5740
  %5754 = xor i32 %5753, %5742
  %5755 = lshr i32 %5754, 4
  %5756 = trunc i32 %5755 to i8
  %5757 = and i8 %5756, 1
  store i8 %5757, i8* %27, align 1
  %5758 = icmp eq i32 %5742, 0
  %5759 = zext i1 %5758 to i8
  store i8 %5759, i8* %30, align 1
  %5760 = lshr i32 %5742, 31
  %5761 = trunc i32 %5760 to i8
  store i8 %5761, i8* %33, align 1
  %5762 = lshr i32 %5740, 31
  %5763 = lshr i32 %5741, 31
  %5764 = xor i32 %5760, %5762
  %5765 = xor i32 %5760, %5763
  %5766 = add nuw nsw i32 %5764, %5765
  %5767 = icmp eq i32 %5766, 2
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %39, align 1
  %5769 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %5770 = zext i32 %5769 to i64
  store i64 %5770, i64* %RCX.i2831.pre-phi, align 8
  %5771 = trunc i32 %5769 to i8
  %5772 = add i64 %5720, 38
  store i64 %5772, i64* %3, align 8
  %5773 = trunc i32 %5769 to i5
  switch i5 %5773, label %5777 [
    i5 0, label %routine_sarl__cl___edx.exit834
    i5 1, label %5774
  ]

; <label>:5774:                                   ; preds = %block_4af6ef
  %5775 = shl nuw i64 %5743, 32
  %5776 = ashr i64 %5775, 33
  br label %5784

; <label>:5777:                                   ; preds = %block_4af6ef
  %5778 = and i8 %5771, 31
  %5779 = zext i8 %5778 to i64
  %5780 = add nsw i64 %5779, -1
  %5781 = sext i32 %5742 to i64
  %5782 = ashr i64 %5781, %5780
  %5783 = lshr i64 %5782, 1
  br label %5784

; <label>:5784:                                   ; preds = %5777, %5774
  %5785 = phi i64 [ %5783, %5777 ], [ %5776, %5774 ]
  %5786 = phi i64 [ %5782, %5777 ], [ %5743, %5774 ]
  %5787 = trunc i64 %5786 to i8
  %5788 = and i8 %5787, 1
  %5789 = trunc i64 %5785 to i32
  %5790 = and i64 %5785, 4294967295
  store i64 %5790, i64* %RDX.i2815, align 8
  store i8 %5788, i8* %14, align 1
  %5791 = and i32 %5789, 255
  %5792 = tail call i32 @llvm.ctpop.i32(i32 %5791)
  %5793 = trunc i32 %5792 to i8
  %5794 = and i8 %5793, 1
  %5795 = xor i8 %5794, 1
  store i8 %5795, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5796 = icmp eq i32 %5789, 0
  %5797 = zext i1 %5796 to i8
  store i8 %5797, i8* %30, align 1
  %5798 = lshr i32 %5789, 31
  %5799 = trunc i32 %5798 to i8
  store i8 %5799, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit834

routine_sarl__cl___edx.exit834:                   ; preds = %5784, %block_4af6ef
  %5800 = phi i64 [ %5790, %5784 ], [ %5743, %block_4af6ef ]
  %5801 = add i64 %5673, -35404
  %5802 = add i64 %5720, 44
  store i64 %5802, i64* %3, align 8
  %5803 = trunc i64 %5800 to i32
  %5804 = inttoptr i64 %5801 to i32*
  %5805 = load i32, i32* %5804, align 4
  %5806 = add i32 %5805, %5803
  %5807 = zext i32 %5806 to i64
  store i64 %5807, i64* %RDX.i2815, align 8
  %5808 = and i32 %5806, 255
  %5809 = tail call i32 @llvm.ctpop.i32(i32 %5808)
  %5810 = trunc i32 %5809 to i8
  %5811 = and i8 %5810, 1
  %5812 = xor i8 %5811, 1
  %5813 = icmp eq i32 %5806, 0
  %5814 = zext i1 %5813 to i8
  %5815 = lshr i32 %5806, 31
  %5816 = trunc i32 %5815 to i8
  %5817 = add i64 %5720, 47
  store i8 0, i8* %14, align 1
  store i8 %5812, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %5814, i8* %30, align 1
  store i8 %5816, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5818 = icmp ne i8 %5816, 0
  %.v65 = select i1 %5818, i64 6, i64 19
  %5819 = add i64 %5817, %.v65
  store i64 %5819, i64* %3, align 8
  br i1 %5818, label %block_4af724, label %block_.L_4af731

block_4af724:                                     ; preds = %routine_sarl__cl___edx.exit834
  store i64 0, i64* %RAX.i2857, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5820 = add i64 %5673, -35456
  %5821 = add i64 %5819, 8
  store i64 %5821, i64* %3, align 8
  %5822 = inttoptr i64 %5820 to i32*
  store i32 0, i32* %5822, align 4
  %5823 = load i64, i64* %3, align 8
  %5824 = add i64 %5823, 156
  store i64 %5824, i64* %3, align 8
  br label %block_.L_4af7c8

block_.L_4af731:                                  ; preds = %routine_sarl__cl___edx.exit834
  %5825 = add i64 %5819, 7
  store i64 %5825, i64* %3, align 8
  %5826 = load i64, i64* %5723, align 8
  store i64 %5826, i64* %RAX.i2857, align 8
  %5827 = add i64 %5819, 11
  store i64 %5827, i64* %3, align 8
  %5828 = load i32, i32* %5676, align 4
  %5829 = sext i32 %5828 to i64
  store i64 %5829, i64* %RCX.i2831.pre-phi, align 8
  %5830 = shl nsw i64 %5829, 1
  %5831 = add i64 %5830, %5826
  %5832 = add i64 %5819, 15
  store i64 %5832, i64* %3, align 8
  %5833 = inttoptr i64 %5831 to i16*
  %5834 = load i16, i16* %5833, align 2
  %5835 = zext i16 %5834 to i64
  store i64 %5835, i64* %RDX.i2815, align 8
  %5836 = add i64 %5819, 22
  store i64 %5836, i64* %3, align 8
  %5837 = load i32, i32* %5736, align 4
  %5838 = sext i32 %5837 to i64
  %5839 = mul nsw i64 %5838, %5835
  %5840 = trunc i64 %5839 to i32
  %5841 = add i32 %5741, %5840
  %5842 = zext i32 %5841 to i64
  store i64 %5842, i64* %RDX.i2815, align 8
  %5843 = icmp ult i32 %5841, %5840
  %5844 = icmp ult i32 %5841, %5741
  %5845 = or i1 %5843, %5844
  %5846 = zext i1 %5845 to i8
  store i8 %5846, i8* %14, align 1
  %5847 = and i32 %5841, 255
  %5848 = tail call i32 @llvm.ctpop.i32(i32 %5847)
  %5849 = trunc i32 %5848 to i8
  %5850 = and i8 %5849, 1
  %5851 = xor i8 %5850, 1
  store i8 %5851, i8* %21, align 1
  %5852 = xor i32 %5741, %5840
  %5853 = xor i32 %5852, %5841
  %5854 = lshr i32 %5853, 4
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  store i8 %5856, i8* %27, align 1
  %5857 = icmp eq i32 %5841, 0
  %5858 = zext i1 %5857 to i8
  store i8 %5858, i8* %30, align 1
  %5859 = lshr i32 %5841, 31
  %5860 = trunc i32 %5859 to i8
  store i8 %5860, i8* %33, align 1
  %5861 = lshr i32 %5840, 31
  %5862 = xor i32 %5859, %5861
  %5863 = xor i32 %5859, %5763
  %5864 = add nuw nsw i32 %5862, %5863
  %5865 = icmp eq i32 %5864, 2
  %5866 = zext i1 %5865 to i8
  store i8 %5866, i8* %39, align 1
  store i64 %5770, i64* %RCX.i2831.pre-phi, align 8
  %5867 = add i64 %5819, 38
  store i64 %5867, i64* %3, align 8
  switch i5 %5773, label %5871 [
    i5 0, label %routine_sarl__cl___edx.exit800
    i5 1, label %5868
  ]

; <label>:5868:                                   ; preds = %block_.L_4af731
  %5869 = shl nuw i64 %5842, 32
  %5870 = ashr i64 %5869, 33
  br label %5878

; <label>:5871:                                   ; preds = %block_.L_4af731
  %5872 = and i8 %5771, 31
  %5873 = zext i8 %5872 to i64
  %5874 = add nsw i64 %5873, -1
  %5875 = sext i32 %5841 to i64
  %5876 = ashr i64 %5875, %5874
  %5877 = lshr i64 %5876, 1
  br label %5878

; <label>:5878:                                   ; preds = %5871, %5868
  %5879 = phi i64 [ %5877, %5871 ], [ %5870, %5868 ]
  %5880 = phi i64 [ %5876, %5871 ], [ %5842, %5868 ]
  %5881 = trunc i64 %5880 to i8
  %5882 = and i8 %5881, 1
  %5883 = trunc i64 %5879 to i32
  %5884 = and i64 %5879, 4294967295
  store i64 %5884, i64* %RDX.i2815, align 8
  store i8 %5882, i8* %14, align 1
  %5885 = and i32 %5883, 255
  %5886 = tail call i32 @llvm.ctpop.i32(i32 %5885)
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  %5889 = xor i8 %5888, 1
  store i8 %5889, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5890 = icmp eq i32 %5883, 0
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %30, align 1
  %5892 = lshr i32 %5883, 31
  %5893 = trunc i32 %5892 to i8
  store i8 %5893, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit800

routine_sarl__cl___edx.exit800:                   ; preds = %5878, %block_.L_4af731
  %5894 = phi i64 [ %5884, %5878 ], [ %5842, %block_.L_4af731 ]
  %5895 = add i64 %5819, 44
  store i64 %5895, i64* %3, align 8
  %5896 = trunc i64 %5894 to i32
  %5897 = load i32, i32* %5804, align 4
  %5898 = add i32 %5897, %5896
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RDX.i2815, align 8
  %5900 = icmp ult i32 %5898, %5896
  %5901 = icmp ult i32 %5898, %5897
  %5902 = or i1 %5900, %5901
  %5903 = zext i1 %5902 to i8
  store i8 %5903, i8* %14, align 1
  %5904 = and i32 %5898, 255
  %5905 = tail call i32 @llvm.ctpop.i32(i32 %5904)
  %5906 = trunc i32 %5905 to i8
  %5907 = and i8 %5906, 1
  %5908 = xor i8 %5907, 1
  store i8 %5908, i8* %21, align 1
  %5909 = xor i32 %5897, %5896
  %5910 = xor i32 %5909, %5898
  %5911 = lshr i32 %5910, 4
  %5912 = trunc i32 %5911 to i8
  %5913 = and i8 %5912, 1
  store i8 %5913, i8* %27, align 1
  %5914 = icmp eq i32 %5898, 0
  %5915 = zext i1 %5914 to i8
  store i8 %5915, i8* %30, align 1
  %5916 = lshr i32 %5898, 31
  %5917 = trunc i32 %5916 to i8
  store i8 %5917, i8* %33, align 1
  %5918 = lshr i32 %5896, 31
  %5919 = lshr i32 %5897, 31
  %5920 = xor i32 %5916, %5918
  %5921 = xor i32 %5916, %5919
  %5922 = add nuw nsw i32 %5920, %5921
  %5923 = icmp eq i32 %5922, 2
  %5924 = zext i1 %5923 to i8
  store i8 %5924, i8* %39, align 1
  store i64 %5679, i64* %RAX.i2857, align 8
  %5925 = add i64 %5679, 72684
  %5926 = add i64 %5819, 58
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i32*
  %5928 = load i32, i32* %5927, align 4
  %5929 = sub i32 %5898, %5928
  %5930 = icmp ult i32 %5898, %5928
  %5931 = zext i1 %5930 to i8
  store i8 %5931, i8* %14, align 1
  %5932 = and i32 %5929, 255
  %5933 = tail call i32 @llvm.ctpop.i32(i32 %5932)
  %5934 = trunc i32 %5933 to i8
  %5935 = and i8 %5934, 1
  %5936 = xor i8 %5935, 1
  store i8 %5936, i8* %21, align 1
  %5937 = xor i32 %5928, %5898
  %5938 = xor i32 %5937, %5929
  %5939 = lshr i32 %5938, 4
  %5940 = trunc i32 %5939 to i8
  %5941 = and i8 %5940, 1
  store i8 %5941, i8* %27, align 1
  %5942 = icmp eq i32 %5929, 0
  %5943 = zext i1 %5942 to i8
  store i8 %5943, i8* %30, align 1
  %5944 = lshr i32 %5929, 31
  %5945 = trunc i32 %5944 to i8
  store i8 %5945, i8* %33, align 1
  %5946 = lshr i32 %5928, 31
  %5947 = xor i32 %5946, %5916
  %5948 = xor i32 %5944, %5916
  %5949 = add nuw nsw i32 %5948, %5947
  %5950 = icmp eq i32 %5949, 2
  %5951 = zext i1 %5950 to i8
  store i8 %5951, i8* %39, align 1
  %5952 = icmp ne i8 %5945, 0
  %5953 = xor i1 %5952, %5950
  %5954 = or i1 %5942, %5953
  %.v240 = select i1 %5954, i64 89, i64 64
  %5955 = add i64 %5819, %.v240
  store i64 %5955, i64* %3, align 8
  br i1 %5954, label %block_.L_4af78a, label %block_4af771

block_4af771:                                     ; preds = %routine_sarl__cl___edx.exit800
  store i64 %5679, i64* %RAX.i2857, align 8
  %5956 = add i64 %5955, 14
  store i64 %5956, i64* %3, align 8
  %5957 = load i32, i32* %5927, align 4
  %5958 = zext i32 %5957 to i64
  store i64 %5958, i64* %RCX.i2831.pre-phi, align 8
  %5959 = add i64 %5673, -35460
  %5960 = add i64 %5955, 20
  store i64 %5960, i64* %3, align 8
  %5961 = inttoptr i64 %5959 to i32*
  store i32 %5957, i32* %5961, align 4
  %5962 = load i64, i64* %3, align 8
  %5963 = add i64 %5962, 55
  store i64 %5963, i64* %3, align 8
  br label %block_.L_4af7bc

block_.L_4af78a:                                  ; preds = %routine_sarl__cl___edx.exit800
  %5964 = add i64 %5955, 7
  store i64 %5964, i64* %3, align 8
  %5965 = load i64, i64* %5723, align 8
  store i64 %5965, i64* %RAX.i2857, align 8
  %5966 = add i64 %5955, 11
  store i64 %5966, i64* %3, align 8
  %5967 = load i32, i32* %5676, align 4
  %5968 = sext i32 %5967 to i64
  store i64 %5968, i64* %RCX.i2831.pre-phi, align 8
  %5969 = shl nsw i64 %5968, 1
  %5970 = add i64 %5969, %5965
  %5971 = add i64 %5955, 15
  store i64 %5971, i64* %3, align 8
  %5972 = inttoptr i64 %5970 to i16*
  %5973 = load i16, i16* %5972, align 2
  %5974 = zext i16 %5973 to i64
  store i64 %5974, i64* %RDX.i2815, align 8
  %5975 = add i64 %5955, 22
  store i64 %5975, i64* %3, align 8
  %5976 = load i32, i32* %5736, align 4
  %5977 = sext i32 %5976 to i64
  %5978 = mul nsw i64 %5977, %5974
  %5979 = trunc i64 %5978 to i32
  %5980 = add i32 %5741, %5979
  %5981 = zext i32 %5980 to i64
  store i64 %5981, i64* %RDX.i2815, align 8
  %5982 = icmp ult i32 %5980, %5979
  %5983 = icmp ult i32 %5980, %5741
  %5984 = or i1 %5982, %5983
  %5985 = zext i1 %5984 to i8
  store i8 %5985, i8* %14, align 1
  %5986 = and i32 %5980, 255
  %5987 = tail call i32 @llvm.ctpop.i32(i32 %5986)
  %5988 = trunc i32 %5987 to i8
  %5989 = and i8 %5988, 1
  %5990 = xor i8 %5989, 1
  store i8 %5990, i8* %21, align 1
  %5991 = xor i32 %5741, %5979
  %5992 = xor i32 %5991, %5980
  %5993 = lshr i32 %5992, 4
  %5994 = trunc i32 %5993 to i8
  %5995 = and i8 %5994, 1
  store i8 %5995, i8* %27, align 1
  %5996 = icmp eq i32 %5980, 0
  %5997 = zext i1 %5996 to i8
  store i8 %5997, i8* %30, align 1
  %5998 = lshr i32 %5980, 31
  %5999 = trunc i32 %5998 to i8
  store i8 %5999, i8* %33, align 1
  %6000 = lshr i32 %5979, 31
  %6001 = xor i32 %5998, %6000
  %6002 = xor i32 %5998, %5763
  %6003 = add nuw nsw i32 %6001, %6002
  %6004 = icmp eq i32 %6003, 2
  %6005 = zext i1 %6004 to i8
  store i8 %6005, i8* %39, align 1
  store i64 %5770, i64* %RCX.i2831.pre-phi, align 8
  %6006 = add i64 %5955, 38
  store i64 %6006, i64* %3, align 8
  switch i5 %5773, label %6010 [
    i5 0, label %routine_sarl__cl___edx.exit761
    i5 1, label %6007
  ]

; <label>:6007:                                   ; preds = %block_.L_4af78a
  %6008 = shl nuw i64 %5981, 32
  %6009 = ashr i64 %6008, 33
  br label %6017

; <label>:6010:                                   ; preds = %block_.L_4af78a
  %6011 = and i8 %5771, 31
  %6012 = zext i8 %6011 to i64
  %6013 = add nsw i64 %6012, -1
  %6014 = sext i32 %5980 to i64
  %6015 = ashr i64 %6014, %6013
  %6016 = lshr i64 %6015, 1
  br label %6017

; <label>:6017:                                   ; preds = %6010, %6007
  %6018 = phi i64 [ %6016, %6010 ], [ %6009, %6007 ]
  %6019 = phi i64 [ %6015, %6010 ], [ %5981, %6007 ]
  %6020 = trunc i64 %6019 to i8
  %6021 = and i8 %6020, 1
  %6022 = trunc i64 %6018 to i32
  %6023 = and i64 %6018, 4294967295
  store i64 %6023, i64* %RDX.i2815, align 8
  store i8 %6021, i8* %14, align 1
  %6024 = and i32 %6022, 255
  %6025 = tail call i32 @llvm.ctpop.i32(i32 %6024)
  %6026 = trunc i32 %6025 to i8
  %6027 = and i8 %6026, 1
  %6028 = xor i8 %6027, 1
  store i8 %6028, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6029 = icmp eq i32 %6022, 0
  %6030 = zext i1 %6029 to i8
  store i8 %6030, i8* %30, align 1
  %6031 = lshr i32 %6022, 31
  %6032 = trunc i32 %6031 to i8
  store i8 %6032, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit761

routine_sarl__cl___edx.exit761:                   ; preds = %6017, %block_.L_4af78a
  %6033 = phi i64 [ %6023, %6017 ], [ %5981, %block_.L_4af78a ]
  %6034 = add i64 %5955, 44
  store i64 %6034, i64* %3, align 8
  %6035 = trunc i64 %6033 to i32
  %6036 = load i32, i32* %5804, align 4
  %6037 = add i32 %6036, %6035
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RDX.i2815, align 8
  %6039 = icmp ult i32 %6037, %6035
  %6040 = icmp ult i32 %6037, %6036
  %6041 = or i1 %6039, %6040
  %6042 = zext i1 %6041 to i8
  store i8 %6042, i8* %14, align 1
  %6043 = and i32 %6037, 255
  %6044 = tail call i32 @llvm.ctpop.i32(i32 %6043)
  %6045 = trunc i32 %6044 to i8
  %6046 = and i8 %6045, 1
  %6047 = xor i8 %6046, 1
  store i8 %6047, i8* %21, align 1
  %6048 = xor i32 %6036, %6035
  %6049 = xor i32 %6048, %6037
  %6050 = lshr i32 %6049, 4
  %6051 = trunc i32 %6050 to i8
  %6052 = and i8 %6051, 1
  store i8 %6052, i8* %27, align 1
  %6053 = icmp eq i32 %6037, 0
  %6054 = zext i1 %6053 to i8
  store i8 %6054, i8* %30, align 1
  %6055 = lshr i32 %6037, 31
  %6056 = trunc i32 %6055 to i8
  store i8 %6056, i8* %33, align 1
  %6057 = lshr i32 %6035, 31
  %6058 = lshr i32 %6036, 31
  %6059 = xor i32 %6055, %6057
  %6060 = xor i32 %6055, %6058
  %6061 = add nuw nsw i32 %6059, %6060
  %6062 = icmp eq i32 %6061, 2
  %6063 = zext i1 %6062 to i8
  store i8 %6063, i8* %39, align 1
  %6064 = add i64 %5673, -35460
  %6065 = add i64 %5955, 50
  store i64 %6065, i64* %3, align 8
  %6066 = inttoptr i64 %6064 to i32*
  store i32 %6037, i32* %6066, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_4af7bc

block_.L_4af7bc:                                  ; preds = %routine_sarl__cl___edx.exit761, %block_4af771
  %6067 = phi i64 [ %.pre177, %routine_sarl__cl___edx.exit761 ], [ %5963, %block_4af771 ]
  %6068 = load i64, i64* %RBP.i, align 8
  %6069 = add i64 %6068, -35460
  %6070 = add i64 %6067, 6
  store i64 %6070, i64* %3, align 8
  %6071 = inttoptr i64 %6069 to i32*
  %6072 = load i32, i32* %6071, align 4
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RAX.i2857, align 8
  %6074 = add i64 %6068, -35456
  %6075 = add i64 %6067, 12
  store i64 %6075, i64* %3, align 8
  %6076 = inttoptr i64 %6074 to i32*
  store i32 %6072, i32* %6076, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_4af7c8

block_.L_4af7c8:                                  ; preds = %block_.L_4af7bc, %block_4af724
  %6077 = phi i64 [ %.pre178, %block_.L_4af7bc ], [ %5824, %block_4af724 ]
  %6078 = load i64, i64* %RBP.i, align 8
  %6079 = add i64 %6078, -35456
  %6080 = add i64 %6077, 6
  store i64 %6080, i64* %3, align 8
  %6081 = inttoptr i64 %6079 to i32*
  %6082 = load i32, i32* %6081, align 4
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX.i2857, align 8
  %6084 = trunc i32 %6082 to i16
  store i16 %6084, i16* %CX.i742, align 2
  %6085 = add i64 %6078, -792
  %6086 = add i64 %6077, 16
  store i64 %6086, i64* %3, align 8
  %6087 = inttoptr i64 %6085 to i64*
  %6088 = load i64, i64* %6087, align 8
  store i64 %6088, i64* %RDX.i2815, align 8
  %6089 = add i64 %6078, -4
  %6090 = add i64 %6077, 20
  store i64 %6090, i64* %3, align 8
  %6091 = inttoptr i64 %6089 to i32*
  %6092 = load i32, i32* %6091, align 4
  %6093 = sext i32 %6092 to i64
  store i64 %6093, i64* %RSI.i2152, align 8
  %6094 = shl nsw i64 %6093, 1
  %6095 = add i64 %6094, %6088
  %6096 = add i64 %6077, 24
  store i64 %6096, i64* %3, align 8
  %6097 = inttoptr i64 %6095 to i16*
  store i16 %6084, i16* %6097, align 2
  %6098 = load i64, i64* %RBP.i, align 8
  %6099 = add i64 %6098, -4
  %6100 = load i64, i64* %3, align 8
  %6101 = add i64 %6100, 3
  store i64 %6101, i64* %3, align 8
  %6102 = inttoptr i64 %6099 to i32*
  %6103 = load i32, i32* %6102, align 4
  %6104 = add i32 %6103, 1
  %6105 = zext i32 %6104 to i64
  store i64 %6105, i64* %RAX.i2857, align 8
  %6106 = icmp eq i32 %6103, -1
  %6107 = icmp eq i32 %6104, 0
  %6108 = or i1 %6106, %6107
  %6109 = zext i1 %6108 to i8
  store i8 %6109, i8* %14, align 1
  %6110 = and i32 %6104, 255
  %6111 = tail call i32 @llvm.ctpop.i32(i32 %6110)
  %6112 = trunc i32 %6111 to i8
  %6113 = and i8 %6112, 1
  %6114 = xor i8 %6113, 1
  store i8 %6114, i8* %21, align 1
  %6115 = xor i32 %6104, %6103
  %6116 = lshr i32 %6115, 4
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  store i8 %6118, i8* %27, align 1
  %6119 = zext i1 %6107 to i8
  store i8 %6119, i8* %30, align 1
  %6120 = lshr i32 %6104, 31
  %6121 = trunc i32 %6120 to i8
  store i8 %6121, i8* %33, align 1
  %6122 = lshr i32 %6103, 31
  %6123 = xor i32 %6120, %6122
  %6124 = add nuw nsw i32 %6123, %6120
  %6125 = icmp eq i32 %6124, 2
  %6126 = zext i1 %6125 to i8
  store i8 %6126, i8* %39, align 1
  %6127 = add i64 %6100, 9
  store i64 %6127, i64* %3, align 8
  store i32 %6104, i32* %6102, align 4
  %6128 = load i64, i64* %3, align 8
  %6129 = add i64 %6128, -284
  store i64 %6129, i64* %3, align 8
  br label %block_.L_4af6cd

block_.L_4af7ee:                                  ; preds = %block_.L_4af6cd
  %6130 = add i64 %5720, 7
  store i64 %6130, i64* %3, align 8
  store i32 0, i32* %5676, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_4af7f5

block_.L_4af7f5:                                  ; preds = %block_.L_4af993, %block_.L_4af7ee
  %6131 = phi i64 [ %6775, %block_.L_4af993 ], [ %.pre173, %block_.L_4af7ee ]
  %6132 = load i64, i64* %RBP.i, align 8
  %6133 = add i64 %6132, -4
  %6134 = add i64 %6131, 3
  store i64 %6134, i64* %3, align 8
  %6135 = inttoptr i64 %6133 to i32*
  %6136 = load i32, i32* %6135, align 4
  %6137 = zext i32 %6136 to i64
  store i64 %6137, i64* %RAX.i2857, align 8
  %6138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6138, i64* %RCX.i2831.pre-phi, align 8
  %6139 = add i64 %6138, 60
  %6140 = add i64 %6131, 14
  store i64 %6140, i64* %3, align 8
  %6141 = inttoptr i64 %6139 to i32*
  %6142 = load i32, i32* %6141, align 4
  %6143 = add i32 %6142, 8
  %6144 = shl i32 %6143, 2
  %6145 = zext i32 %6144 to i64
  store i64 %6145, i64* %RDX.i2815, align 8
  %6146 = sub i32 %6136, %6144
  %6147 = icmp ult i32 %6136, %6144
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %14, align 1
  %6149 = and i32 %6146, 255
  %6150 = tail call i32 @llvm.ctpop.i32(i32 %6149)
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = xor i8 %6152, 1
  store i8 %6153, i8* %21, align 1
  %6154 = xor i32 %6144, %6136
  %6155 = xor i32 %6154, %6146
  %6156 = lshr i32 %6155, 4
  %6157 = trunc i32 %6156 to i8
  %6158 = and i8 %6157, 1
  store i8 %6158, i8* %27, align 1
  %6159 = icmp eq i32 %6146, 0
  %6160 = zext i1 %6159 to i8
  store i8 %6160, i8* %30, align 1
  %6161 = lshr i32 %6146, 31
  %6162 = trunc i32 %6161 to i8
  store i8 %6162, i8* %33, align 1
  %6163 = lshr i32 %6136, 31
  %6164 = lshr i32 %6143, 29
  %6165 = and i32 %6164, 1
  %6166 = xor i32 %6165, %6163
  %6167 = xor i32 %6161, %6163
  %6168 = add nuw nsw i32 %6167, %6166
  %6169 = icmp eq i32 %6168, 2
  %6170 = zext i1 %6169 to i8
  store i8 %6170, i8* %39, align 1
  %6171 = icmp ne i8 %6162, 0
  %6172 = xor i1 %6171, %6169
  %.v237 = select i1 %6172, i64 28, i64 433
  %6173 = add i64 %6131, %.v237
  store i64 %6173, i64* %3, align 8
  %6174 = load i64, i64* %RBP.i, align 8
  br i1 %6172, label %block_4af811, label %block_.L_4af9a6

block_4af811:                                     ; preds = %block_.L_4af7f5
  %6175 = add i64 %6174, -8
  %6176 = add i64 %6173, 7
  store i64 %6176, i64* %3, align 8
  %6177 = inttoptr i64 %6175 to i32*
  store i32 0, i32* %6177, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_4af818

block_.L_4af818:                                  ; preds = %block_.L_4af955, %block_4af811
  %6178 = phi i64 [ %6744, %block_.L_4af955 ], [ %.pre174, %block_4af811 ]
  %6179 = load i64, i64* %RBP.i, align 8
  %6180 = add i64 %6179, -8
  %6181 = add i64 %6178, 3
  store i64 %6181, i64* %3, align 8
  %6182 = inttoptr i64 %6180 to i32*
  %6183 = load i32, i32* %6182, align 4
  %6184 = zext i32 %6183 to i64
  store i64 %6184, i64* %RAX.i2857, align 8
  %6185 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6185, i64* %RCX.i2831.pre-phi, align 8
  %6186 = add i64 %6185, 52
  %6187 = add i64 %6178, 14
  store i64 %6187, i64* %3, align 8
  %6188 = inttoptr i64 %6186 to i32*
  %6189 = load i32, i32* %6188, align 4
  %6190 = add i32 %6189, 8
  %6191 = shl i32 %6190, 2
  %6192 = zext i32 %6191 to i64
  store i64 %6192, i64* %RDX.i2815, align 8
  %6193 = sub i32 %6183, %6191
  %6194 = icmp ult i32 %6183, %6191
  %6195 = zext i1 %6194 to i8
  store i8 %6195, i8* %14, align 1
  %6196 = and i32 %6193, 255
  %6197 = tail call i32 @llvm.ctpop.i32(i32 %6196)
  %6198 = trunc i32 %6197 to i8
  %6199 = and i8 %6198, 1
  %6200 = xor i8 %6199, 1
  store i8 %6200, i8* %21, align 1
  %6201 = xor i32 %6191, %6183
  %6202 = xor i32 %6201, %6193
  %6203 = lshr i32 %6202, 4
  %6204 = trunc i32 %6203 to i8
  %6205 = and i8 %6204, 1
  store i8 %6205, i8* %27, align 1
  %6206 = icmp eq i32 %6193, 0
  %6207 = zext i1 %6206 to i8
  store i8 %6207, i8* %30, align 1
  %6208 = lshr i32 %6193, 31
  %6209 = trunc i32 %6208 to i8
  store i8 %6209, i8* %33, align 1
  %6210 = lshr i32 %6183, 31
  %6211 = lshr i32 %6190, 29
  %6212 = and i32 %6211, 1
  %6213 = xor i32 %6212, %6210
  %6214 = xor i32 %6208, %6210
  %6215 = add nuw nsw i32 %6214, %6213
  %6216 = icmp eq i32 %6215, 2
  %6217 = zext i1 %6216 to i8
  store i8 %6217, i8* %39, align 1
  %6218 = icmp ne i8 %6209, 0
  %6219 = xor i1 %6218, %6216
  %.v238 = select i1 %6219, i64 28, i64 379
  %6220 = add i64 %6178, %.v238
  store i64 %6220, i64* %3, align 8
  br i1 %6219, label %block_4af834, label %block_.L_4af993

block_4af834:                                     ; preds = %block_.L_4af818
  %6221 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %6221, i64* %RAX.i2857, align 8
  %6222 = load i64, i64* %RBP.i, align 8
  %6223 = add i64 %6222, -12
  %6224 = add i64 %6220, 12
  store i64 %6224, i64* %3, align 8
  %6225 = inttoptr i64 %6223 to i32*
  %6226 = load i32, i32* %6225, align 4
  %6227 = sext i32 %6226 to i64
  store i64 %6227, i64* %RCX.i2831.pre-phi, align 8
  %6228 = shl nsw i64 %6227, 3
  %6229 = add i64 %6228, %6221
  %6230 = add i64 %6220, 16
  store i64 %6230, i64* %3, align 8
  %6231 = inttoptr i64 %6229 to i64*
  %6232 = load i64, i64* %6231, align 8
  store i64 %6232, i64* %RAX.i2857, align 8
  %6233 = add i64 %6232, 6448
  %6234 = add i64 %6220, 23
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6233 to i64*
  %6236 = load i64, i64* %6235, align 8
  store i64 %6236, i64* %RAX.i2857, align 8
  %6237 = add i64 %6222, -4
  %6238 = add i64 %6220, 27
  store i64 %6238, i64* %3, align 8
  %6239 = inttoptr i64 %6237 to i32*
  %6240 = load i32, i32* %6239, align 4
  %6241 = sext i32 %6240 to i64
  store i64 %6241, i64* %RCX.i2831.pre-phi, align 8
  %6242 = shl nsw i64 %6241, 3
  %6243 = add i64 %6242, %6236
  %6244 = add i64 %6220, 31
  store i64 %6244, i64* %3, align 8
  %6245 = inttoptr i64 %6243 to i64*
  %6246 = load i64, i64* %6245, align 8
  store i64 %6246, i64* %RAX.i2857, align 8
  %6247 = add i64 %6222, -8
  %6248 = add i64 %6220, 35
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i32*
  %6250 = load i32, i32* %6249, align 4
  %6251 = sext i32 %6250 to i64
  store i64 %6251, i64* %RCX.i2831.pre-phi, align 8
  %6252 = shl nsw i64 %6251, 1
  %6253 = add i64 %6252, %6246
  %6254 = add i64 %6220, 39
  store i64 %6254, i64* %3, align 8
  %6255 = inttoptr i64 %6253 to i16*
  %6256 = load i16, i16* %6255, align 2
  %6257 = zext i16 %6256 to i64
  store i64 %6257, i64* %RDX.i2815, align 8
  %6258 = add i64 %6222, -35400
  %6259 = add i64 %6220, 46
  store i64 %6259, i64* %3, align 8
  %6260 = inttoptr i64 %6258 to i32*
  %6261 = load i32, i32* %6260, align 4
  %6262 = sext i32 %6261 to i64
  %6263 = mul nsw i64 %6262, %6257
  %6264 = trunc i64 %6263 to i32
  %6265 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %6266 = add i32 %6265, %6264
  %6267 = zext i32 %6266 to i64
  store i64 %6267, i64* %RDX.i2815, align 8
  %6268 = icmp ult i32 %6266, %6264
  %6269 = icmp ult i32 %6266, %6265
  %6270 = or i1 %6268, %6269
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %14, align 1
  %6272 = and i32 %6266, 255
  %6273 = tail call i32 @llvm.ctpop.i32(i32 %6272)
  %6274 = trunc i32 %6273 to i8
  %6275 = and i8 %6274, 1
  %6276 = xor i8 %6275, 1
  store i8 %6276, i8* %21, align 1
  %6277 = xor i32 %6265, %6264
  %6278 = xor i32 %6277, %6266
  %6279 = lshr i32 %6278, 4
  %6280 = trunc i32 %6279 to i8
  %6281 = and i8 %6280, 1
  store i8 %6281, i8* %27, align 1
  %6282 = icmp eq i32 %6266, 0
  %6283 = zext i1 %6282 to i8
  store i8 %6283, i8* %30, align 1
  %6284 = lshr i32 %6266, 31
  %6285 = trunc i32 %6284 to i8
  store i8 %6285, i8* %33, align 1
  %6286 = lshr i32 %6264, 31
  %6287 = lshr i32 %6265, 31
  %6288 = xor i32 %6284, %6286
  %6289 = xor i32 %6284, %6287
  %6290 = add nuw nsw i32 %6288, %6289
  %6291 = icmp eq i32 %6290, 2
  %6292 = zext i1 %6291 to i8
  store i8 %6292, i8* %39, align 1
  %6293 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6294 = zext i32 %6293 to i64
  store i64 %6294, i64* %RCX.i2831.pre-phi, align 8
  %6295 = add i64 %6220, 62
  store i64 %6295, i64* %3, align 8
  %6296 = trunc i32 %6293 to i5
  switch i5 %6296, label %6300 [
    i5 0, label %routine_sarl__cl___edx.exit654
    i5 1, label %6297
  ]

; <label>:6297:                                   ; preds = %block_4af834
  %6298 = shl nuw i64 %6267, 32
  %6299 = ashr i64 %6298, 33
  br label %6307

; <label>:6300:                                   ; preds = %block_4af834
  %6301 = and i32 %6293, 31
  %6302 = zext i32 %6301 to i64
  %6303 = add nsw i64 %6302, -1
  %6304 = sext i32 %6266 to i64
  %6305 = ashr i64 %6304, %6303
  %6306 = lshr i64 %6305, 1
  br label %6307

; <label>:6307:                                   ; preds = %6300, %6297
  %6308 = phi i64 [ %6306, %6300 ], [ %6299, %6297 ]
  %6309 = phi i64 [ %6305, %6300 ], [ %6267, %6297 ]
  %6310 = trunc i64 %6309 to i8
  %6311 = and i8 %6310, 1
  %6312 = trunc i64 %6308 to i32
  %6313 = and i64 %6308, 4294967295
  store i64 %6313, i64* %RDX.i2815, align 8
  store i8 %6311, i8* %14, align 1
  %6314 = and i32 %6312, 255
  %6315 = tail call i32 @llvm.ctpop.i32(i32 %6314)
  %6316 = trunc i32 %6315 to i8
  %6317 = and i8 %6316, 1
  %6318 = xor i8 %6317, 1
  store i8 %6318, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6319 = icmp eq i32 %6312, 0
  %6320 = zext i1 %6319 to i8
  store i8 %6320, i8* %30, align 1
  %6321 = lshr i32 %6312, 31
  %6322 = trunc i32 %6321 to i8
  store i8 %6322, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit654

routine_sarl__cl___edx.exit654:                   ; preds = %6307, %block_4af834
  %6323 = phi i64 [ %6313, %6307 ], [ %6267, %block_4af834 ]
  %6324 = load i64, i64* %RBP.i, align 8
  %6325 = add i64 %6324, -35404
  %6326 = add i64 %6220, 68
  store i64 %6326, i64* %3, align 8
  %6327 = trunc i64 %6323 to i32
  %6328 = inttoptr i64 %6325 to i32*
  %6329 = load i32, i32* %6328, align 4
  %6330 = add i32 %6329, %6327
  %6331 = zext i32 %6330 to i64
  store i64 %6331, i64* %RDX.i2815, align 8
  %6332 = and i32 %6330, 255
  %6333 = tail call i32 @llvm.ctpop.i32(i32 %6332)
  %6334 = trunc i32 %6333 to i8
  %6335 = and i8 %6334, 1
  %6336 = xor i8 %6335, 1
  %6337 = icmp eq i32 %6330, 0
  %6338 = zext i1 %6337 to i8
  %6339 = lshr i32 %6330, 31
  %6340 = trunc i32 %6339 to i8
  %6341 = add i64 %6220, 71
  store i8 0, i8* %14, align 1
  store i8 %6336, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %6338, i8* %30, align 1
  store i8 %6340, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6342 = icmp ne i8 %6340, 0
  %.v = select i1 %6342, i64 6, i64 19
  %6343 = add i64 %6341, %.v
  store i64 %6343, i64* %3, align 8
  br i1 %6342, label %block_4af881, label %block_.L_4af88e

block_4af881:                                     ; preds = %routine_sarl__cl___edx.exit654
  store i64 0, i64* %RAX.i2857, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6344 = add i64 %6324, -35464
  %6345 = add i64 %6343, 8
  store i64 %6345, i64* %3, align 8
  %6346 = inttoptr i64 %6344 to i32*
  store i32 0, i32* %6346, align 4
  %6347 = load i64, i64* %3, align 8
  %6348 = add i64 %6347, 204
  store i64 %6348, i64* %3, align 8
  br label %block_.L_4af955

block_.L_4af88e:                                  ; preds = %routine_sarl__cl___edx.exit654
  %6349 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %6349, i64* %RAX.i2857, align 8
  %6350 = add i64 %6324, -12
  %6351 = add i64 %6343, 12
  store i64 %6351, i64* %3, align 8
  %6352 = inttoptr i64 %6350 to i32*
  %6353 = load i32, i32* %6352, align 4
  %6354 = sext i32 %6353 to i64
  store i64 %6354, i64* %RCX.i2831.pre-phi, align 8
  %6355 = shl nsw i64 %6354, 3
  %6356 = add i64 %6355, %6349
  %6357 = add i64 %6343, 16
  store i64 %6357, i64* %3, align 8
  %6358 = inttoptr i64 %6356 to i64*
  %6359 = load i64, i64* %6358, align 8
  store i64 %6359, i64* %RAX.i2857, align 8
  %6360 = add i64 %6359, 6448
  %6361 = add i64 %6343, 23
  store i64 %6361, i64* %3, align 8
  %6362 = inttoptr i64 %6360 to i64*
  %6363 = load i64, i64* %6362, align 8
  store i64 %6363, i64* %RAX.i2857, align 8
  %6364 = add i64 %6324, -4
  %6365 = add i64 %6343, 27
  store i64 %6365, i64* %3, align 8
  %6366 = inttoptr i64 %6364 to i32*
  %6367 = load i32, i32* %6366, align 4
  %6368 = sext i32 %6367 to i64
  store i64 %6368, i64* %RCX.i2831.pre-phi, align 8
  %6369 = shl nsw i64 %6368, 3
  %6370 = add i64 %6369, %6363
  %6371 = add i64 %6343, 31
  store i64 %6371, i64* %3, align 8
  %6372 = inttoptr i64 %6370 to i64*
  %6373 = load i64, i64* %6372, align 8
  store i64 %6373, i64* %RAX.i2857, align 8
  %6374 = add i64 %6324, -8
  %6375 = add i64 %6343, 35
  store i64 %6375, i64* %3, align 8
  %6376 = inttoptr i64 %6374 to i32*
  %6377 = load i32, i32* %6376, align 4
  %6378 = sext i32 %6377 to i64
  store i64 %6378, i64* %RCX.i2831.pre-phi, align 8
  %6379 = shl nsw i64 %6378, 1
  %6380 = add i64 %6379, %6373
  %6381 = add i64 %6343, 39
  store i64 %6381, i64* %3, align 8
  %6382 = inttoptr i64 %6380 to i16*
  %6383 = load i16, i16* %6382, align 2
  %6384 = zext i16 %6383 to i64
  store i64 %6384, i64* %RDX.i2815, align 8
  %6385 = add i64 %6324, -35400
  %6386 = add i64 %6343, 46
  store i64 %6386, i64* %3, align 8
  %6387 = inttoptr i64 %6385 to i32*
  %6388 = load i32, i32* %6387, align 4
  %6389 = sext i32 %6388 to i64
  %6390 = mul nsw i64 %6389, %6384
  %6391 = trunc i64 %6390 to i32
  %6392 = add i32 %6265, %6391
  %6393 = zext i32 %6392 to i64
  store i64 %6393, i64* %RDX.i2815, align 8
  %6394 = icmp ult i32 %6392, %6391
  %6395 = icmp ult i32 %6392, %6265
  %6396 = or i1 %6394, %6395
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %14, align 1
  %6398 = and i32 %6392, 255
  %6399 = tail call i32 @llvm.ctpop.i32(i32 %6398)
  %6400 = trunc i32 %6399 to i8
  %6401 = and i8 %6400, 1
  %6402 = xor i8 %6401, 1
  store i8 %6402, i8* %21, align 1
  %6403 = xor i32 %6265, %6391
  %6404 = xor i32 %6403, %6392
  %6405 = lshr i32 %6404, 4
  %6406 = trunc i32 %6405 to i8
  %6407 = and i8 %6406, 1
  store i8 %6407, i8* %27, align 1
  %6408 = icmp eq i32 %6392, 0
  %6409 = zext i1 %6408 to i8
  store i8 %6409, i8* %30, align 1
  %6410 = lshr i32 %6392, 31
  %6411 = trunc i32 %6410 to i8
  store i8 %6411, i8* %33, align 1
  %6412 = lshr i32 %6391, 31
  %6413 = xor i32 %6410, %6412
  %6414 = xor i32 %6410, %6287
  %6415 = add nuw nsw i32 %6413, %6414
  %6416 = icmp eq i32 %6415, 2
  %6417 = zext i1 %6416 to i8
  store i8 %6417, i8* %39, align 1
  %6418 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6419 = zext i32 %6418 to i64
  store i64 %6419, i64* %RCX.i2831.pre-phi, align 8
  %6420 = add i64 %6343, 62
  store i64 %6420, i64* %3, align 8
  %6421 = trunc i32 %6418 to i5
  switch i5 %6421, label %6425 [
    i5 0, label %routine_sarl__cl___edx.exit607
    i5 1, label %6422
  ]

; <label>:6422:                                   ; preds = %block_.L_4af88e
  %6423 = shl nuw i64 %6393, 32
  %6424 = ashr i64 %6423, 33
  br label %6432

; <label>:6425:                                   ; preds = %block_.L_4af88e
  %6426 = and i32 %6418, 31
  %6427 = zext i32 %6426 to i64
  %6428 = add nsw i64 %6427, -1
  %6429 = sext i32 %6392 to i64
  %6430 = ashr i64 %6429, %6428
  %6431 = lshr i64 %6430, 1
  br label %6432

; <label>:6432:                                   ; preds = %6425, %6422
  %6433 = phi i64 [ %6431, %6425 ], [ %6424, %6422 ]
  %6434 = phi i64 [ %6430, %6425 ], [ %6393, %6422 ]
  %6435 = trunc i64 %6434 to i8
  %6436 = and i8 %6435, 1
  %6437 = trunc i64 %6433 to i32
  %6438 = and i64 %6433, 4294967295
  store i64 %6438, i64* %RDX.i2815, align 8
  store i8 %6436, i8* %14, align 1
  %6439 = and i32 %6437, 255
  %6440 = tail call i32 @llvm.ctpop.i32(i32 %6439)
  %6441 = trunc i32 %6440 to i8
  %6442 = and i8 %6441, 1
  %6443 = xor i8 %6442, 1
  store i8 %6443, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6444 = icmp eq i32 %6437, 0
  %6445 = zext i1 %6444 to i8
  store i8 %6445, i8* %30, align 1
  %6446 = lshr i32 %6437, 31
  %6447 = trunc i32 %6446 to i8
  store i8 %6447, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit607

routine_sarl__cl___edx.exit607:                   ; preds = %6432, %block_.L_4af88e
  %6448 = phi i64 [ %6438, %6432 ], [ %6393, %block_.L_4af88e ]
  %6449 = load i64, i64* %RBP.i, align 8
  %6450 = add i64 %6449, -35404
  %6451 = add i64 %6343, 68
  store i64 %6451, i64* %3, align 8
  %6452 = trunc i64 %6448 to i32
  %6453 = inttoptr i64 %6450 to i32*
  %6454 = load i32, i32* %6453, align 4
  %6455 = add i32 %6454, %6452
  %6456 = zext i32 %6455 to i64
  store i64 %6456, i64* %RDX.i2815, align 8
  %6457 = icmp ult i32 %6455, %6452
  %6458 = icmp ult i32 %6455, %6454
  %6459 = or i1 %6457, %6458
  %6460 = zext i1 %6459 to i8
  store i8 %6460, i8* %14, align 1
  %6461 = and i32 %6455, 255
  %6462 = tail call i32 @llvm.ctpop.i32(i32 %6461)
  %6463 = trunc i32 %6462 to i8
  %6464 = and i8 %6463, 1
  %6465 = xor i8 %6464, 1
  store i8 %6465, i8* %21, align 1
  %6466 = xor i32 %6454, %6452
  %6467 = xor i32 %6466, %6455
  %6468 = lshr i32 %6467, 4
  %6469 = trunc i32 %6468 to i8
  %6470 = and i8 %6469, 1
  store i8 %6470, i8* %27, align 1
  %6471 = icmp eq i32 %6455, 0
  %6472 = zext i1 %6471 to i8
  store i8 %6472, i8* %30, align 1
  %6473 = lshr i32 %6455, 31
  %6474 = trunc i32 %6473 to i8
  store i8 %6474, i8* %33, align 1
  %6475 = lshr i32 %6452, 31
  %6476 = lshr i32 %6454, 31
  %6477 = xor i32 %6473, %6475
  %6478 = xor i32 %6473, %6476
  %6479 = add nuw nsw i32 %6477, %6478
  %6480 = icmp eq i32 %6479, 2
  %6481 = zext i1 %6480 to i8
  store i8 %6481, i8* %39, align 1
  %6482 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6482, i64* %RAX.i2857, align 8
  %6483 = add i64 %6482, 72684
  %6484 = add i64 %6343, 82
  store i64 %6484, i64* %3, align 8
  %6485 = inttoptr i64 %6483 to i32*
  %6486 = load i32, i32* %6485, align 4
  %6487 = sub i32 %6455, %6486
  %6488 = icmp ult i32 %6455, %6486
  %6489 = zext i1 %6488 to i8
  store i8 %6489, i8* %14, align 1
  %6490 = and i32 %6487, 255
  %6491 = tail call i32 @llvm.ctpop.i32(i32 %6490)
  %6492 = trunc i32 %6491 to i8
  %6493 = and i8 %6492, 1
  %6494 = xor i8 %6493, 1
  store i8 %6494, i8* %21, align 1
  %6495 = xor i32 %6486, %6455
  %6496 = xor i32 %6495, %6487
  %6497 = lshr i32 %6496, 4
  %6498 = trunc i32 %6497 to i8
  %6499 = and i8 %6498, 1
  store i8 %6499, i8* %27, align 1
  %6500 = icmp eq i32 %6487, 0
  %6501 = zext i1 %6500 to i8
  store i8 %6501, i8* %30, align 1
  %6502 = lshr i32 %6487, 31
  %6503 = trunc i32 %6502 to i8
  store i8 %6503, i8* %33, align 1
  %6504 = lshr i32 %6486, 31
  %6505 = xor i32 %6504, %6473
  %6506 = xor i32 %6502, %6473
  %6507 = add nuw nsw i32 %6506, %6505
  %6508 = icmp eq i32 %6507, 2
  %6509 = zext i1 %6508 to i8
  store i8 %6509, i8* %39, align 1
  %6510 = icmp ne i8 %6503, 0
  %6511 = xor i1 %6510, %6508
  %6512 = or i1 %6500, %6511
  %.v239 = select i1 %6512, i64 113, i64 88
  %6513 = add i64 %6343, %.v239
  %6514 = add i64 %6513, 8
  store i64 %6514, i64* %3, align 8
  br i1 %6512, label %block_.L_4af8ff, label %block_4af8e6

block_4af8e6:                                     ; preds = %routine_sarl__cl___edx.exit607
  store i64 %6482, i64* %RAX.i2857, align 8
  %6515 = add i64 %6513, 14
  store i64 %6515, i64* %3, align 8
  %6516 = load i32, i32* %6485, align 4
  %6517 = zext i32 %6516 to i64
  store i64 %6517, i64* %RCX.i2831.pre-phi, align 8
  %6518 = add i64 %6449, -35468
  %6519 = add i64 %6513, 20
  store i64 %6519, i64* %3, align 8
  %6520 = inttoptr i64 %6518 to i32*
  store i32 %6516, i32* %6520, align 4
  %6521 = load i64, i64* %3, align 8
  %6522 = add i64 %6521, 79
  store i64 %6522, i64* %3, align 8
  br label %block_.L_4af949

block_.L_4af8ff:                                  ; preds = %routine_sarl__cl___edx.exit607
  %6523 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %6523, i64* %RAX.i2857, align 8
  %6524 = add i64 %6449, -12
  %6525 = add i64 %6513, 12
  store i64 %6525, i64* %3, align 8
  %6526 = inttoptr i64 %6524 to i32*
  %6527 = load i32, i32* %6526, align 4
  %6528 = sext i32 %6527 to i64
  store i64 %6528, i64* %RCX.i2831.pre-phi, align 8
  %6529 = shl nsw i64 %6528, 3
  %6530 = add i64 %6529, %6523
  %6531 = add i64 %6513, 16
  store i64 %6531, i64* %3, align 8
  %6532 = inttoptr i64 %6530 to i64*
  %6533 = load i64, i64* %6532, align 8
  store i64 %6533, i64* %RAX.i2857, align 8
  %6534 = add i64 %6533, 6448
  %6535 = add i64 %6513, 23
  store i64 %6535, i64* %3, align 8
  %6536 = inttoptr i64 %6534 to i64*
  %6537 = load i64, i64* %6536, align 8
  store i64 %6537, i64* %RAX.i2857, align 8
  %6538 = add i64 %6449, -4
  %6539 = add i64 %6513, 27
  store i64 %6539, i64* %3, align 8
  %6540 = inttoptr i64 %6538 to i32*
  %6541 = load i32, i32* %6540, align 4
  %6542 = sext i32 %6541 to i64
  store i64 %6542, i64* %RCX.i2831.pre-phi, align 8
  %6543 = shl nsw i64 %6542, 3
  %6544 = add i64 %6543, %6537
  %6545 = add i64 %6513, 31
  store i64 %6545, i64* %3, align 8
  %6546 = inttoptr i64 %6544 to i64*
  %6547 = load i64, i64* %6546, align 8
  store i64 %6547, i64* %RAX.i2857, align 8
  %6548 = add i64 %6449, -8
  %6549 = add i64 %6513, 35
  store i64 %6549, i64* %3, align 8
  %6550 = inttoptr i64 %6548 to i32*
  %6551 = load i32, i32* %6550, align 4
  %6552 = sext i32 %6551 to i64
  store i64 %6552, i64* %RCX.i2831.pre-phi, align 8
  %6553 = shl nsw i64 %6552, 1
  %6554 = add i64 %6553, %6547
  %6555 = add i64 %6513, 39
  store i64 %6555, i64* %3, align 8
  %6556 = inttoptr i64 %6554 to i16*
  %6557 = load i16, i16* %6556, align 2
  %6558 = zext i16 %6557 to i64
  store i64 %6558, i64* %RDX.i2815, align 8
  %6559 = add i64 %6449, -35400
  %6560 = add i64 %6513, 46
  store i64 %6560, i64* %3, align 8
  %6561 = inttoptr i64 %6559 to i32*
  %6562 = load i32, i32* %6561, align 4
  %6563 = sext i32 %6562 to i64
  %6564 = mul nsw i64 %6563, %6558
  %6565 = trunc i64 %6564 to i32
  %6566 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %6567 = add i32 %6566, %6565
  %6568 = zext i32 %6567 to i64
  store i64 %6568, i64* %RDX.i2815, align 8
  %6569 = icmp ult i32 %6567, %6565
  %6570 = icmp ult i32 %6567, %6566
  %6571 = or i1 %6569, %6570
  %6572 = zext i1 %6571 to i8
  store i8 %6572, i8* %14, align 1
  %6573 = and i32 %6567, 255
  %6574 = tail call i32 @llvm.ctpop.i32(i32 %6573)
  %6575 = trunc i32 %6574 to i8
  %6576 = and i8 %6575, 1
  %6577 = xor i8 %6576, 1
  store i8 %6577, i8* %21, align 1
  %6578 = xor i32 %6566, %6565
  %6579 = xor i32 %6578, %6567
  %6580 = lshr i32 %6579, 4
  %6581 = trunc i32 %6580 to i8
  %6582 = and i8 %6581, 1
  store i8 %6582, i8* %27, align 1
  %6583 = icmp eq i32 %6567, 0
  %6584 = zext i1 %6583 to i8
  store i8 %6584, i8* %30, align 1
  %6585 = lshr i32 %6567, 31
  %6586 = trunc i32 %6585 to i8
  store i8 %6586, i8* %33, align 1
  %6587 = lshr i32 %6565, 31
  %6588 = lshr i32 %6566, 31
  %6589 = xor i32 %6585, %6587
  %6590 = xor i32 %6585, %6588
  %6591 = add nuw nsw i32 %6589, %6590
  %6592 = icmp eq i32 %6591, 2
  %6593 = zext i1 %6592 to i8
  store i8 %6593, i8* %39, align 1
  %6594 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6595 = zext i32 %6594 to i64
  store i64 %6595, i64* %RCX.i2831.pre-phi, align 8
  %6596 = add i64 %6513, 62
  store i64 %6596, i64* %3, align 8
  %6597 = trunc i32 %6594 to i5
  switch i5 %6597, label %6601 [
    i5 0, label %routine_sarl__cl___edx.exit
    i5 1, label %6598
  ]

; <label>:6598:                                   ; preds = %block_.L_4af8ff
  %6599 = shl nuw i64 %6568, 32
  %6600 = ashr i64 %6599, 33
  br label %6608

; <label>:6601:                                   ; preds = %block_.L_4af8ff
  %6602 = and i32 %6594, 31
  %6603 = zext i32 %6602 to i64
  %6604 = add nsw i64 %6603, -1
  %6605 = sext i32 %6567 to i64
  %6606 = ashr i64 %6605, %6604
  %6607 = lshr i64 %6606, 1
  br label %6608

; <label>:6608:                                   ; preds = %6601, %6598
  %6609 = phi i64 [ %6607, %6601 ], [ %6600, %6598 ]
  %6610 = phi i64 [ %6606, %6601 ], [ %6568, %6598 ]
  %6611 = trunc i64 %6610 to i8
  %6612 = and i8 %6611, 1
  %6613 = trunc i64 %6609 to i32
  %6614 = and i64 %6609, 4294967295
  store i64 %6614, i64* %RDX.i2815, align 8
  store i8 %6612, i8* %14, align 1
  %6615 = and i32 %6613, 255
  %6616 = tail call i32 @llvm.ctpop.i32(i32 %6615)
  %6617 = trunc i32 %6616 to i8
  %6618 = and i8 %6617, 1
  %6619 = xor i8 %6618, 1
  store i8 %6619, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6620 = icmp eq i32 %6613, 0
  %6621 = zext i1 %6620 to i8
  store i8 %6621, i8* %30, align 1
  %6622 = lshr i32 %6613, 31
  %6623 = trunc i32 %6622 to i8
  store i8 %6623, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edx.exit

routine_sarl__cl___edx.exit:                      ; preds = %6608, %block_.L_4af8ff
  %6624 = phi i64 [ %6614, %6608 ], [ %6568, %block_.L_4af8ff ]
  %6625 = load i64, i64* %RBP.i, align 8
  %6626 = add i64 %6625, -35404
  %6627 = add i64 %6513, 68
  store i64 %6627, i64* %3, align 8
  %6628 = trunc i64 %6624 to i32
  %6629 = inttoptr i64 %6626 to i32*
  %6630 = load i32, i32* %6629, align 4
  %6631 = add i32 %6630, %6628
  %6632 = zext i32 %6631 to i64
  store i64 %6632, i64* %RDX.i2815, align 8
  %6633 = icmp ult i32 %6631, %6628
  %6634 = icmp ult i32 %6631, %6630
  %6635 = or i1 %6633, %6634
  %6636 = zext i1 %6635 to i8
  store i8 %6636, i8* %14, align 1
  %6637 = and i32 %6631, 255
  %6638 = tail call i32 @llvm.ctpop.i32(i32 %6637)
  %6639 = trunc i32 %6638 to i8
  %6640 = and i8 %6639, 1
  %6641 = xor i8 %6640, 1
  store i8 %6641, i8* %21, align 1
  %6642 = xor i32 %6630, %6628
  %6643 = xor i32 %6642, %6631
  %6644 = lshr i32 %6643, 4
  %6645 = trunc i32 %6644 to i8
  %6646 = and i8 %6645, 1
  store i8 %6646, i8* %27, align 1
  %6647 = icmp eq i32 %6631, 0
  %6648 = zext i1 %6647 to i8
  store i8 %6648, i8* %30, align 1
  %6649 = lshr i32 %6631, 31
  %6650 = trunc i32 %6649 to i8
  store i8 %6650, i8* %33, align 1
  %6651 = lshr i32 %6628, 31
  %6652 = lshr i32 %6630, 31
  %6653 = xor i32 %6649, %6651
  %6654 = xor i32 %6649, %6652
  %6655 = add nuw nsw i32 %6653, %6654
  %6656 = icmp eq i32 %6655, 2
  %6657 = zext i1 %6656 to i8
  store i8 %6657, i8* %39, align 1
  %6658 = add i64 %6625, -35468
  %6659 = add i64 %6513, 74
  store i64 %6659, i64* %3, align 8
  %6660 = inttoptr i64 %6658 to i32*
  store i32 %6631, i32* %6660, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_4af949

block_.L_4af949:                                  ; preds = %routine_sarl__cl___edx.exit, %block_4af8e6
  %6661 = phi i64 [ %.pre175, %routine_sarl__cl___edx.exit ], [ %6522, %block_4af8e6 ]
  %6662 = load i64, i64* %RBP.i, align 8
  %6663 = add i64 %6662, -35468
  %6664 = add i64 %6661, 6
  store i64 %6664, i64* %3, align 8
  %6665 = inttoptr i64 %6663 to i32*
  %6666 = load i32, i32* %6665, align 4
  %6667 = zext i32 %6666 to i64
  store i64 %6667, i64* %RAX.i2857, align 8
  %6668 = add i64 %6662, -35464
  %6669 = add i64 %6661, 12
  store i64 %6669, i64* %3, align 8
  %6670 = inttoptr i64 %6668 to i32*
  store i32 %6666, i32* %6670, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_4af955

block_.L_4af955:                                  ; preds = %block_.L_4af949, %block_4af881
  %6671 = phi i64 [ %.pre176, %block_.L_4af949 ], [ %6348, %block_4af881 ]
  %6672 = load i64, i64* %RBP.i, align 8
  %6673 = add i64 %6672, -35464
  %6674 = add i64 %6671, 6
  store i64 %6674, i64* %3, align 8
  %6675 = inttoptr i64 %6673 to i32*
  %6676 = load i32, i32* %6675, align 4
  %6677 = zext i32 %6676 to i64
  store i64 %6677, i64* %RAX.i2857, align 8
  %6678 = trunc i32 %6676 to i16
  store i16 %6678, i16* %CX.i742, align 2
  %6679 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %6679, i64* %RDX.i2815, align 8
  %6680 = add i64 %6672, -12
  %6681 = add i64 %6671, 21
  store i64 %6681, i64* %3, align 8
  %6682 = inttoptr i64 %6680 to i32*
  %6683 = load i32, i32* %6682, align 4
  %6684 = sext i32 %6683 to i64
  store i64 %6684, i64* %RSI.i2152, align 8
  %6685 = shl nsw i64 %6684, 3
  %6686 = add i64 %6685, %6679
  %6687 = add i64 %6671, 25
  store i64 %6687, i64* %3, align 8
  %6688 = inttoptr i64 %6686 to i64*
  %6689 = load i64, i64* %6688, align 8
  store i64 %6689, i64* %RDX.i2815, align 8
  %6690 = add i64 %6689, 6456
  %6691 = add i64 %6671, 32
  store i64 %6691, i64* %3, align 8
  %6692 = inttoptr i64 %6690 to i64*
  %6693 = load i64, i64* %6692, align 8
  store i64 %6693, i64* %RDX.i2815, align 8
  %6694 = add i64 %6672, -4
  %6695 = add i64 %6671, 36
  store i64 %6695, i64* %3, align 8
  %6696 = inttoptr i64 %6694 to i32*
  %6697 = load i32, i32* %6696, align 4
  %6698 = sext i32 %6697 to i64
  store i64 %6698, i64* %RSI.i2152, align 8
  %6699 = shl nsw i64 %6698, 3
  %6700 = add i64 %6699, %6693
  %6701 = add i64 %6671, 40
  store i64 %6701, i64* %3, align 8
  %6702 = inttoptr i64 %6700 to i64*
  %6703 = load i64, i64* %6702, align 8
  store i64 %6703, i64* %RDX.i2815, align 8
  %6704 = add i64 %6672, -8
  %6705 = add i64 %6671, 44
  store i64 %6705, i64* %3, align 8
  %6706 = inttoptr i64 %6704 to i32*
  %6707 = load i32, i32* %6706, align 4
  %6708 = sext i32 %6707 to i64
  store i64 %6708, i64* %RSI.i2152, align 8
  %6709 = shl nsw i64 %6708, 1
  %6710 = add i64 %6709, %6703
  %6711 = add i64 %6671, 48
  store i64 %6711, i64* %3, align 8
  %6712 = inttoptr i64 %6710 to i16*
  store i16 %6678, i16* %6712, align 2
  %6713 = load i64, i64* %RBP.i, align 8
  %6714 = add i64 %6713, -8
  %6715 = load i64, i64* %3, align 8
  %6716 = add i64 %6715, 3
  store i64 %6716, i64* %3, align 8
  %6717 = inttoptr i64 %6714 to i32*
  %6718 = load i32, i32* %6717, align 4
  %6719 = add i32 %6718, 1
  %6720 = zext i32 %6719 to i64
  store i64 %6720, i64* %RAX.i2857, align 8
  %6721 = icmp eq i32 %6718, -1
  %6722 = icmp eq i32 %6719, 0
  %6723 = or i1 %6721, %6722
  %6724 = zext i1 %6723 to i8
  store i8 %6724, i8* %14, align 1
  %6725 = and i32 %6719, 255
  %6726 = tail call i32 @llvm.ctpop.i32(i32 %6725)
  %6727 = trunc i32 %6726 to i8
  %6728 = and i8 %6727, 1
  %6729 = xor i8 %6728, 1
  store i8 %6729, i8* %21, align 1
  %6730 = xor i32 %6719, %6718
  %6731 = lshr i32 %6730, 4
  %6732 = trunc i32 %6731 to i8
  %6733 = and i8 %6732, 1
  store i8 %6733, i8* %27, align 1
  %6734 = zext i1 %6722 to i8
  store i8 %6734, i8* %30, align 1
  %6735 = lshr i32 %6719, 31
  %6736 = trunc i32 %6735 to i8
  store i8 %6736, i8* %33, align 1
  %6737 = lshr i32 %6718, 31
  %6738 = xor i32 %6735, %6737
  %6739 = add nuw nsw i32 %6738, %6735
  %6740 = icmp eq i32 %6739, 2
  %6741 = zext i1 %6740 to i8
  store i8 %6741, i8* %39, align 1
  %6742 = add i64 %6715, 9
  store i64 %6742, i64* %3, align 8
  store i32 %6719, i32* %6717, align 4
  %6743 = load i64, i64* %3, align 8
  %6744 = add i64 %6743, -374
  store i64 %6744, i64* %3, align 8
  br label %block_.L_4af818

block_.L_4af993:                                  ; preds = %block_.L_4af818
  %6745 = load i64, i64* %RBP.i, align 8
  %6746 = add i64 %6745, -4
  %6747 = add i64 %6220, 8
  store i64 %6747, i64* %3, align 8
  %6748 = inttoptr i64 %6746 to i32*
  %6749 = load i32, i32* %6748, align 4
  %6750 = add i32 %6749, 1
  %6751 = zext i32 %6750 to i64
  store i64 %6751, i64* %RAX.i2857, align 8
  %6752 = icmp eq i32 %6749, -1
  %6753 = icmp eq i32 %6750, 0
  %6754 = or i1 %6752, %6753
  %6755 = zext i1 %6754 to i8
  store i8 %6755, i8* %14, align 1
  %6756 = and i32 %6750, 255
  %6757 = tail call i32 @llvm.ctpop.i32(i32 %6756)
  %6758 = trunc i32 %6757 to i8
  %6759 = and i8 %6758, 1
  %6760 = xor i8 %6759, 1
  store i8 %6760, i8* %21, align 1
  %6761 = xor i32 %6750, %6749
  %6762 = lshr i32 %6761, 4
  %6763 = trunc i32 %6762 to i8
  %6764 = and i8 %6763, 1
  store i8 %6764, i8* %27, align 1
  %6765 = zext i1 %6753 to i8
  store i8 %6765, i8* %30, align 1
  %6766 = lshr i32 %6750, 31
  %6767 = trunc i32 %6766 to i8
  store i8 %6767, i8* %33, align 1
  %6768 = lshr i32 %6749, 31
  %6769 = xor i32 %6766, %6768
  %6770 = add nuw nsw i32 %6769, %6766
  %6771 = icmp eq i32 %6770, 2
  %6772 = zext i1 %6771 to i8
  store i8 %6772, i8* %39, align 1
  %6773 = add i64 %6220, 14
  store i64 %6773, i64* %3, align 8
  store i32 %6750, i32* %6748, align 4
  %6774 = load i64, i64* %3, align 8
  %6775 = add i64 %6774, -428
  store i64 %6775, i64* %3, align 8
  br label %block_.L_4af7f5

block_.L_4af9a6:                                  ; preds = %block_.L_4af7f5
  %6776 = add i64 %6174, -12
  %6777 = add i64 %6173, 8
  store i64 %6777, i64* %3, align 8
  %6778 = inttoptr i64 %6776 to i32*
  %6779 = load i32, i32* %6778, align 4
  %6780 = add i32 %6779, 1
  %6781 = zext i32 %6780 to i64
  store i64 %6781, i64* %RAX.i2857, align 8
  %6782 = icmp eq i32 %6779, -1
  %6783 = icmp eq i32 %6780, 0
  %6784 = or i1 %6782, %6783
  %6785 = zext i1 %6784 to i8
  store i8 %6785, i8* %14, align 1
  %6786 = and i32 %6780, 255
  %6787 = tail call i32 @llvm.ctpop.i32(i32 %6786)
  %6788 = trunc i32 %6787 to i8
  %6789 = and i8 %6788, 1
  %6790 = xor i8 %6789, 1
  store i8 %6790, i8* %21, align 1
  %6791 = xor i32 %6780, %6779
  %6792 = lshr i32 %6791, 4
  %6793 = trunc i32 %6792 to i8
  %6794 = and i8 %6793, 1
  store i8 %6794, i8* %27, align 1
  %6795 = zext i1 %6783 to i8
  store i8 %6795, i8* %30, align 1
  %6796 = lshr i32 %6780, 31
  %6797 = trunc i32 %6796 to i8
  store i8 %6797, i8* %33, align 1
  %6798 = lshr i32 %6779, 31
  %6799 = xor i32 %6796, %6798
  %6800 = add nuw nsw i32 %6799, %6796
  %6801 = icmp eq i32 %6800, 2
  %6802 = zext i1 %6801 to i8
  store i8 %6802, i8* %39, align 1
  %6803 = add i64 %6173, 14
  store i64 %6803, i64* %3, align 8
  store i32 %6780, i32* %6778, align 4
  %6804 = load i64, i64* %3, align 8
  %6805 = add i64 %6804, -1413
  store i64 %6805, i64* %3, align 8
  br label %block_.L_4af42f

block_.L_4af9b9:                                  ; preds = %block_.L_4af42f
  %6806 = add i64 %4695, 11
  store i64 %6806, i64* %3, align 8
  %6807 = load i32, i32* %4661, align 4
  %6808 = add i32 %6807, 1
  %6809 = zext i32 %6808 to i64
  store i64 %6809, i64* %RAX.i2857, align 8
  %6810 = icmp eq i32 %6807, -1
  %6811 = icmp eq i32 %6808, 0
  %6812 = or i1 %6810, %6811
  %6813 = zext i1 %6812 to i8
  store i8 %6813, i8* %14, align 1
  %6814 = and i32 %6808, 255
  %6815 = tail call i32 @llvm.ctpop.i32(i32 %6814)
  %6816 = trunc i32 %6815 to i8
  %6817 = and i8 %6816, 1
  %6818 = xor i8 %6817, 1
  store i8 %6818, i8* %21, align 1
  %6819 = xor i32 %6808, %6807
  %6820 = lshr i32 %6819, 4
  %6821 = trunc i32 %6820 to i8
  %6822 = and i8 %6821, 1
  store i8 %6822, i8* %27, align 1
  %6823 = zext i1 %6811 to i8
  store i8 %6823, i8* %30, align 1
  %6824 = lshr i32 %6808, 31
  %6825 = trunc i32 %6824 to i8
  store i8 %6825, i8* %33, align 1
  %6826 = lshr i32 %6807, 31
  %6827 = xor i32 %6824, %6826
  %6828 = add nuw nsw i32 %6827, %6824
  %6829 = icmp eq i32 %6828, 2
  %6830 = zext i1 %6829 to i8
  store i8 %6830, i8* %39, align 1
  %6831 = add i64 %4695, 20
  store i64 %6831, i64* %3, align 8
  store i32 %6808, i32* %4661, align 4
  %6832 = load i64, i64* %3, align 8
  %6833 = add i64 %6832, -1468
  store i64 %6833, i64* %3, align 8
  br label %block_.L_4af411

block_.L_4af9d2:                                  ; preds = %block_.L_4af411
  %6834 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %6834, i64* %RAX.i2857, align 8
  %6835 = add i64 %6834, 196
  %6836 = add i64 %4648, 15
  store i64 %6836, i64* %3, align 8
  %6837 = inttoptr i64 %6835 to i32*
  %6838 = load i32, i32* %6837, align 4
  %6839 = add i32 %6838, -1
  %6840 = icmp eq i32 %6838, 0
  %6841 = zext i1 %6840 to i8
  store i8 %6841, i8* %14, align 1
  %6842 = and i32 %6839, 255
  %6843 = tail call i32 @llvm.ctpop.i32(i32 %6842)
  %6844 = trunc i32 %6843 to i8
  %6845 = and i8 %6844, 1
  %6846 = xor i8 %6845, 1
  store i8 %6846, i8* %21, align 1
  %6847 = xor i32 %6839, %6838
  %6848 = lshr i32 %6847, 4
  %6849 = trunc i32 %6848 to i8
  %6850 = and i8 %6849, 1
  store i8 %6850, i8* %27, align 1
  %6851 = icmp eq i32 %6839, 0
  %6852 = zext i1 %6851 to i8
  store i8 %6852, i8* %30, align 1
  %6853 = lshr i32 %6839, 31
  %6854 = trunc i32 %6853 to i8
  store i8 %6854, i8* %33, align 1
  %6855 = lshr i32 %6838, 31
  %6856 = xor i32 %6853, %6855
  %6857 = add nuw nsw i32 %6856, %6855
  %6858 = icmp eq i32 %6857, 2
  %6859 = zext i1 %6858 to i8
  store i8 %6859, i8* %39, align 1
  %.v210 = select i1 %6851, i64 21, i64 316
  %6860 = add i64 %4648, %.v210
  %6861 = add i64 %6860, 10
  store i64 %6861, i64* %3, align 8
  store i32 0, i32* %4613, align 4
  %.pre156 = load i64, i64* %3, align 8
  br i1 %6851, label %block_.L_4af9f1.preheader, label %block_.L_4afb18.preheader

block_.L_4afb18.preheader:                        ; preds = %block_.L_4af9d2
  br label %block_.L_4afb18

block_.L_4af9f1.preheader:                        ; preds = %block_.L_4af9d2
  br label %block_.L_4af9f1

block_.L_4af9f1:                                  ; preds = %block_.L_4af9f1.preheader, %block_.L_4afaf0
  %6862 = phi i64 [ %7286, %block_.L_4afaf0 ], [ %.pre156, %block_.L_4af9f1.preheader ]
  %6863 = load i64, i64* %RBP.i, align 8
  %6864 = add i64 %6863, -35396
  %6865 = add i64 %6862, 6
  store i64 %6865, i64* %3, align 8
  %6866 = inttoptr i64 %6864 to i32*
  %6867 = load i32, i32* %6866, align 4
  %6868 = zext i32 %6867 to i64
  store i64 %6868, i64* %RAX.i2857, align 8
  %6869 = add i64 %6863, -808
  %6870 = add i64 %6862, 12
  store i64 %6870, i64* %3, align 8
  %6871 = inttoptr i64 %6869 to i32*
  %6872 = load i32, i32* %6871, align 4
  %6873 = add i32 %6872, 2
  %6874 = zext i32 %6873 to i64
  store i64 %6874, i64* %RCX.i2831.pre-phi, align 8
  %6875 = lshr i32 %6873, 31
  %6876 = sub i32 %6867, %6873
  %6877 = icmp ult i32 %6867, %6873
  %6878 = zext i1 %6877 to i8
  store i8 %6878, i8* %14, align 1
  %6879 = and i32 %6876, 255
  %6880 = tail call i32 @llvm.ctpop.i32(i32 %6879)
  %6881 = trunc i32 %6880 to i8
  %6882 = and i8 %6881, 1
  %6883 = xor i8 %6882, 1
  store i8 %6883, i8* %21, align 1
  %6884 = xor i32 %6873, %6867
  %6885 = xor i32 %6884, %6876
  %6886 = lshr i32 %6885, 4
  %6887 = trunc i32 %6886 to i8
  %6888 = and i8 %6887, 1
  store i8 %6888, i8* %27, align 1
  %6889 = icmp eq i32 %6876, 0
  %6890 = zext i1 %6889 to i8
  store i8 %6890, i8* %30, align 1
  %6891 = lshr i32 %6876, 31
  %6892 = trunc i32 %6891 to i8
  store i8 %6892, i8* %33, align 1
  %6893 = lshr i32 %6867, 31
  %6894 = xor i32 %6875, %6893
  %6895 = xor i32 %6891, %6893
  %6896 = add nuw nsw i32 %6895, %6894
  %6897 = icmp eq i32 %6896, 2
  %6898 = zext i1 %6897 to i8
  store i8 %6898, i8* %39, align 1
  %6899 = icmp ne i8 %6892, 0
  %6900 = xor i1 %6899, %6897
  %.v231 = select i1 %6900, i64 23, i64 280
  %6901 = add i64 %6862, %.v231
  store i64 %6901, i64* %3, align 8
  br i1 %6900, label %block_4afa08, label %block_.L_4afb09

block_4afa08:                                     ; preds = %block_.L_4af9f1
  %6902 = add i64 %6863, -36
  %6903 = add i64 %6901, 7
  store i64 %6903, i64* %3, align 8
  %6904 = inttoptr i64 %6902 to i32*
  store i32 0, i32* %6904, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_4afa0f

block_.L_4afa0f:                                  ; preds = %block_.L_4afadd, %block_4afa08
  %6905 = phi i64 [ %7258, %block_.L_4afadd ], [ %.pre157, %block_4afa08 ]
  %6906 = load i64, i64* %RBP.i, align 8
  %6907 = add i64 %6906, -36
  %6908 = add i64 %6905, 3
  store i64 %6908, i64* %3, align 8
  %6909 = inttoptr i64 %6907 to i32*
  %6910 = load i32, i32* %6909, align 4
  %6911 = zext i32 %6910 to i64
  store i64 %6911, i64* %RAX.i2857, align 8
  %6912 = add i64 %6906, -35396
  %6913 = add i64 %6905, 10
  store i64 %6913, i64* %3, align 8
  %6914 = inttoptr i64 %6912 to i32*
  %6915 = load i32, i32* %6914, align 4
  %6916 = sext i32 %6915 to i64
  store i64 %6916, i64* %RCX.i2831.pre-phi, align 8
  %6917 = shl nsw i64 %6916, 2
  %6918 = add nsw i64 %6917, 7489456
  %6919 = add i64 %6905, 17
  store i64 %6919, i64* %3, align 8
  %6920 = inttoptr i64 %6918 to i32*
  %6921 = load i32, i32* %6920, align 4
  %6922 = sub i32 %6910, %6921
  %6923 = icmp ult i32 %6910, %6921
  %6924 = zext i1 %6923 to i8
  store i8 %6924, i8* %14, align 1
  %6925 = and i32 %6922, 255
  %6926 = tail call i32 @llvm.ctpop.i32(i32 %6925)
  %6927 = trunc i32 %6926 to i8
  %6928 = and i8 %6927, 1
  %6929 = xor i8 %6928, 1
  store i8 %6929, i8* %21, align 1
  %6930 = xor i32 %6921, %6910
  %6931 = xor i32 %6930, %6922
  %6932 = lshr i32 %6931, 4
  %6933 = trunc i32 %6932 to i8
  %6934 = and i8 %6933, 1
  store i8 %6934, i8* %27, align 1
  %6935 = icmp eq i32 %6922, 0
  %6936 = zext i1 %6935 to i8
  store i8 %6936, i8* %30, align 1
  %6937 = lshr i32 %6922, 31
  %6938 = trunc i32 %6937 to i8
  store i8 %6938, i8* %33, align 1
  %6939 = lshr i32 %6910, 31
  %6940 = lshr i32 %6921, 31
  %6941 = xor i32 %6940, %6939
  %6942 = xor i32 %6937, %6939
  %6943 = add nuw nsw i32 %6942, %6941
  %6944 = icmp eq i32 %6943, 2
  %6945 = zext i1 %6944 to i8
  store i8 %6945, i8* %39, align 1
  %6946 = icmp ne i8 %6938, 0
  %6947 = xor i1 %6946, %6944
  %.v214 = select i1 %6947, i64 23, i64 225
  %6948 = add i64 %6905, %.v214
  store i64 %6948, i64* %3, align 8
  br i1 %6947, label %block_4afa26, label %block_.L_4afaf0

block_4afa26:                                     ; preds = %block_.L_4afa0f
  %6949 = add i64 %6906, -40
  %6950 = add i64 %6948, 7
  store i64 %6950, i64* %3, align 8
  %6951 = inttoptr i64 %6949 to i32*
  store i32 0, i32* %6951, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_4afa2d

block_.L_4afa2d:                                  ; preds = %block_4afa37, %block_4afa26
  %6952 = phi i64 [ %7228, %block_4afa37 ], [ %.pre158, %block_4afa26 ]
  %6953 = load i64, i64* %RBP.i, align 8
  %6954 = add i64 %6953, -40
  %6955 = add i64 %6952, 4
  store i64 %6955, i64* %3, align 8
  %6956 = inttoptr i64 %6954 to i32*
  %6957 = load i32, i32* %6956, align 4
  %6958 = add i32 %6957, -3
  %6959 = icmp ult i32 %6957, 3
  %6960 = zext i1 %6959 to i8
  store i8 %6960, i8* %14, align 1
  %6961 = and i32 %6958, 255
  %6962 = tail call i32 @llvm.ctpop.i32(i32 %6961)
  %6963 = trunc i32 %6962 to i8
  %6964 = and i8 %6963, 1
  %6965 = xor i8 %6964, 1
  store i8 %6965, i8* %21, align 1
  %6966 = xor i32 %6958, %6957
  %6967 = lshr i32 %6966, 4
  %6968 = trunc i32 %6967 to i8
  %6969 = and i8 %6968, 1
  store i8 %6969, i8* %27, align 1
  %6970 = icmp eq i32 %6958, 0
  %6971 = zext i1 %6970 to i8
  store i8 %6971, i8* %30, align 1
  %6972 = lshr i32 %6958, 31
  %6973 = trunc i32 %6972 to i8
  store i8 %6973, i8* %33, align 1
  %6974 = lshr i32 %6957, 31
  %6975 = xor i32 %6972, %6974
  %6976 = add nuw nsw i32 %6975, %6974
  %6977 = icmp eq i32 %6976, 2
  %6978 = zext i1 %6977 to i8
  store i8 %6978, i8* %39, align 1
  %6979 = icmp ne i8 %6973, 0
  %6980 = xor i1 %6979, %6977
  %.v215 = select i1 %6980, i64 10, i64 176
  %6981 = add i64 %6952, %.v215
  store i64 %6981, i64* %3, align 8
  br i1 %6980, label %block_4afa37, label %block_.L_4afadd

block_4afa37:                                     ; preds = %block_.L_4afa2d
  %6982 = add i64 %6953, -2976
  store i64 %6982, i64* %RAX.i2857, align 8
  %6983 = add i64 %6953, -1888
  store i64 %6983, i64* %RCX.i2831.pre-phi, align 8
  %6984 = add i64 %6953, -35396
  %6985 = add i64 %6981, 21
  store i64 %6985, i64* %3, align 8
  %6986 = inttoptr i64 %6984 to i32*
  %6987 = load i32, i32* %6986, align 4
  %6988 = sext i32 %6987 to i64
  %6989 = mul nsw i64 %6988, 180
  store i64 %6989, i64* %RDX.i2815, align 8
  %6990 = lshr i64 %6989, 63
  %6991 = add i64 %6989, %6983
  store i64 %6991, i64* %RCX.i2831.pre-phi, align 8
  %6992 = icmp ult i64 %6991, %6983
  %6993 = icmp ult i64 %6991, %6989
  %6994 = or i1 %6992, %6993
  %6995 = zext i1 %6994 to i8
  store i8 %6995, i8* %14, align 1
  %6996 = trunc i64 %6991 to i32
  %6997 = and i32 %6996, 255
  %6998 = tail call i32 @llvm.ctpop.i32(i32 %6997)
  %6999 = trunc i32 %6998 to i8
  %7000 = and i8 %6999, 1
  %7001 = xor i8 %7000, 1
  store i8 %7001, i8* %21, align 1
  %7002 = xor i64 %6989, %6983
  %7003 = xor i64 %7002, %6991
  %7004 = lshr i64 %7003, 4
  %7005 = trunc i64 %7004 to i8
  %7006 = and i8 %7005, 1
  store i8 %7006, i8* %27, align 1
  %7007 = icmp eq i64 %6991, 0
  %7008 = zext i1 %7007 to i8
  store i8 %7008, i8* %30, align 1
  %7009 = lshr i64 %6991, 63
  %7010 = trunc i64 %7009 to i8
  store i8 %7010, i8* %33, align 1
  %7011 = lshr i64 %6983, 63
  %7012 = xor i64 %7009, %7011
  %7013 = xor i64 %7009, %6990
  %7014 = add nuw nsw i64 %7012, %7013
  %7015 = icmp eq i64 %7014, 2
  %7016 = zext i1 %7015 to i8
  store i8 %7016, i8* %39, align 1
  %7017 = add i64 %6953, -36
  %7018 = add i64 %6981, 35
  store i64 %7018, i64* %3, align 8
  %7019 = inttoptr i64 %7017 to i32*
  %7020 = load i32, i32* %7019, align 4
  %7021 = sext i32 %7020 to i64
  %7022 = mul nsw i64 %7021, 12
  store i64 %7022, i64* %RDX.i2815, align 8
  %7023 = lshr i64 %7022, 63
  %7024 = add i64 %7022, %6991
  store i64 %7024, i64* %RCX.i2831.pre-phi, align 8
  %7025 = icmp ult i64 %7024, %6991
  %7026 = icmp ult i64 %7024, %7022
  %7027 = or i1 %7025, %7026
  %7028 = zext i1 %7027 to i8
  store i8 %7028, i8* %14, align 1
  %7029 = trunc i64 %7024 to i32
  %7030 = and i32 %7029, 255
  %7031 = tail call i32 @llvm.ctpop.i32(i32 %7030)
  %7032 = trunc i32 %7031 to i8
  %7033 = and i8 %7032, 1
  %7034 = xor i8 %7033, 1
  store i8 %7034, i8* %21, align 1
  %7035 = xor i64 %7022, %6991
  %7036 = xor i64 %7035, %7024
  %7037 = lshr i64 %7036, 4
  %7038 = trunc i64 %7037 to i8
  %7039 = and i8 %7038, 1
  store i8 %7039, i8* %27, align 1
  %7040 = icmp eq i64 %7024, 0
  %7041 = zext i1 %7040 to i8
  store i8 %7041, i8* %30, align 1
  %7042 = lshr i64 %7024, 63
  %7043 = trunc i64 %7042 to i8
  store i8 %7043, i8* %33, align 1
  %7044 = xor i64 %7042, %7009
  %7045 = xor i64 %7042, %7023
  %7046 = add nuw nsw i64 %7044, %7045
  %7047 = icmp eq i64 %7046, 2
  %7048 = zext i1 %7047 to i8
  store i8 %7048, i8* %39, align 1
  %7049 = load i64, i64* %RBP.i, align 8
  %7050 = add i64 %7049, -40
  %7051 = add i64 %6981, 46
  store i64 %7051, i64* %3, align 8
  %7052 = inttoptr i64 %7050 to i32*
  %7053 = load i32, i32* %7052, align 4
  %7054 = sext i32 %7053 to i64
  store i64 %7054, i64* %RDX.i2815, align 8
  %7055 = shl nsw i64 %7054, 2
  %7056 = add i64 %7055, %7024
  %7057 = add i64 %6981, 49
  store i64 %7057, i64* %3, align 8
  %7058 = inttoptr i64 %7056 to i32*
  %7059 = load i32, i32* %7058, align 4
  %7060 = zext i32 %7059 to i64
  store i64 %7060, i64* %RSI.i2716, align 8
  %7061 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7061, i64* %RCX.i2831.pre-phi, align 8
  %7062 = add i64 %7049, -35396
  %7063 = add i64 %6981, 64
  store i64 %7063, i64* %3, align 8
  %7064 = inttoptr i64 %7062 to i32*
  %7065 = load i32, i32* %7064, align 4
  %7066 = sext i32 %7065 to i64
  store i64 %7066, i64* %RDX.i2815, align 8
  %7067 = shl nsw i64 %7066, 3
  %7068 = add i64 %7067, %7061
  %7069 = add i64 %6981, 68
  store i64 %7069, i64* %3, align 8
  %7070 = inttoptr i64 %7068 to i64*
  %7071 = load i64, i64* %7070, align 8
  store i64 %7071, i64* %RCX.i2831.pre-phi, align 8
  %7072 = add i64 %7049, -36
  %7073 = add i64 %6981, 72
  store i64 %7073, i64* %3, align 8
  %7074 = inttoptr i64 %7072 to i32*
  %7075 = load i32, i32* %7074, align 4
  %7076 = sext i32 %7075 to i64
  store i64 %7076, i64* %RDX.i2815, align 8
  %7077 = shl nsw i64 %7076, 3
  %7078 = add i64 %7077, %7071
  %7079 = add i64 %6981, 76
  store i64 %7079, i64* %3, align 8
  %7080 = inttoptr i64 %7078 to i64*
  %7081 = load i64, i64* %7080, align 8
  store i64 %7081, i64* %RCX.i2831.pre-phi, align 8
  %7082 = add i64 %6981, 80
  store i64 %7082, i64* %3, align 8
  %7083 = load i32, i32* %7052, align 4
  %7084 = sext i32 %7083 to i64
  store i64 %7084, i64* %RDX.i2815, align 8
  %7085 = shl nsw i64 %7084, 2
  %7086 = add i64 %7085, %7081
  %7087 = add i64 %6981, 83
  store i64 %7087, i64* %3, align 8
  %7088 = inttoptr i64 %7086 to i32*
  store i32 %7059, i32* %7088, align 4
  %7089 = load i64, i64* %RBP.i, align 8
  %7090 = add i64 %7089, -35396
  %7091 = load i64, i64* %3, align 8
  %7092 = add i64 %7091, 7
  store i64 %7092, i64* %3, align 8
  %7093 = inttoptr i64 %7090 to i32*
  %7094 = load i32, i32* %7093, align 4
  %7095 = sext i32 %7094 to i64
  %7096 = mul nsw i64 %7095, 180
  store i64 %7096, i64* %RCX.i2831.pre-phi, align 8
  %7097 = lshr i64 %7096, 63
  %7098 = load i64, i64* %RAX.i2857, align 8
  %7099 = add i64 %7096, %7098
  store i64 %7099, i64* %RAX.i2857, align 8
  %7100 = icmp ult i64 %7099, %7098
  %7101 = icmp ult i64 %7099, %7096
  %7102 = or i1 %7100, %7101
  %7103 = zext i1 %7102 to i8
  store i8 %7103, i8* %14, align 1
  %7104 = trunc i64 %7099 to i32
  %7105 = and i32 %7104, 255
  %7106 = tail call i32 @llvm.ctpop.i32(i32 %7105)
  %7107 = trunc i32 %7106 to i8
  %7108 = and i8 %7107, 1
  %7109 = xor i8 %7108, 1
  store i8 %7109, i8* %21, align 1
  %7110 = xor i64 %7096, %7098
  %7111 = xor i64 %7110, %7099
  %7112 = lshr i64 %7111, 4
  %7113 = trunc i64 %7112 to i8
  %7114 = and i8 %7113, 1
  store i8 %7114, i8* %27, align 1
  %7115 = icmp eq i64 %7099, 0
  %7116 = zext i1 %7115 to i8
  store i8 %7116, i8* %30, align 1
  %7117 = lshr i64 %7099, 63
  %7118 = trunc i64 %7117 to i8
  store i8 %7118, i8* %33, align 1
  %7119 = lshr i64 %7098, 63
  %7120 = xor i64 %7117, %7119
  %7121 = xor i64 %7117, %7097
  %7122 = add nuw nsw i64 %7120, %7121
  %7123 = icmp eq i64 %7122, 2
  %7124 = zext i1 %7123 to i8
  store i8 %7124, i8* %39, align 1
  %7125 = add i64 %7089, -36
  %7126 = add i64 %7091, 21
  store i64 %7126, i64* %3, align 8
  %7127 = inttoptr i64 %7125 to i32*
  %7128 = load i32, i32* %7127, align 4
  %7129 = sext i32 %7128 to i64
  %7130 = mul nsw i64 %7129, 12
  store i64 %7130, i64* %RCX.i2831.pre-phi, align 8
  %7131 = lshr i64 %7130, 63
  %7132 = add i64 %7130, %7099
  store i64 %7132, i64* %RAX.i2857, align 8
  %7133 = icmp ult i64 %7132, %7099
  %7134 = icmp ult i64 %7132, %7130
  %7135 = or i1 %7133, %7134
  %7136 = zext i1 %7135 to i8
  store i8 %7136, i8* %14, align 1
  %7137 = trunc i64 %7132 to i32
  %7138 = and i32 %7137, 255
  %7139 = tail call i32 @llvm.ctpop.i32(i32 %7138)
  %7140 = trunc i32 %7139 to i8
  %7141 = and i8 %7140, 1
  %7142 = xor i8 %7141, 1
  store i8 %7142, i8* %21, align 1
  %7143 = xor i64 %7130, %7099
  %7144 = xor i64 %7143, %7132
  %7145 = lshr i64 %7144, 4
  %7146 = trunc i64 %7145 to i8
  %7147 = and i8 %7146, 1
  store i8 %7147, i8* %27, align 1
  %7148 = icmp eq i64 %7132, 0
  %7149 = zext i1 %7148 to i8
  store i8 %7149, i8* %30, align 1
  %7150 = lshr i64 %7132, 63
  %7151 = trunc i64 %7150 to i8
  store i8 %7151, i8* %33, align 1
  %7152 = xor i64 %7150, %7117
  %7153 = xor i64 %7150, %7131
  %7154 = add nuw nsw i64 %7152, %7153
  %7155 = icmp eq i64 %7154, 2
  %7156 = zext i1 %7155 to i8
  store i8 %7156, i8* %39, align 1
  %7157 = load i64, i64* %RBP.i, align 8
  %7158 = add i64 %7157, -40
  %7159 = add i64 %7091, 32
  store i64 %7159, i64* %3, align 8
  %7160 = inttoptr i64 %7158 to i32*
  %7161 = load i32, i32* %7160, align 4
  %7162 = sext i32 %7161 to i64
  store i64 %7162, i64* %RCX.i2831.pre-phi, align 8
  %7163 = shl nsw i64 %7162, 2
  %7164 = add i64 %7163, %7132
  %7165 = add i64 %7091, 35
  store i64 %7165, i64* %3, align 8
  %7166 = inttoptr i64 %7164 to i32*
  %7167 = load i32, i32* %7166, align 4
  %7168 = zext i32 %7167 to i64
  store i64 %7168, i64* %RSI.i2716, align 8
  %7169 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %7169, i64* %RAX.i2857, align 8
  %7170 = add i64 %7157, -35396
  %7171 = add i64 %7091, 50
  store i64 %7171, i64* %3, align 8
  %7172 = inttoptr i64 %7170 to i32*
  %7173 = load i32, i32* %7172, align 4
  %7174 = sext i32 %7173 to i64
  store i64 %7174, i64* %RCX.i2831.pre-phi, align 8
  %7175 = shl nsw i64 %7174, 3
  %7176 = add i64 %7175, %7169
  %7177 = add i64 %7091, 54
  store i64 %7177, i64* %3, align 8
  %7178 = inttoptr i64 %7176 to i64*
  %7179 = load i64, i64* %7178, align 8
  store i64 %7179, i64* %RAX.i2857, align 8
  %7180 = add i64 %7157, -36
  %7181 = add i64 %7091, 58
  store i64 %7181, i64* %3, align 8
  %7182 = inttoptr i64 %7180 to i32*
  %7183 = load i32, i32* %7182, align 4
  %7184 = sext i32 %7183 to i64
  store i64 %7184, i64* %RCX.i2831.pre-phi, align 8
  %7185 = shl nsw i64 %7184, 3
  %7186 = add i64 %7185, %7179
  %7187 = add i64 %7091, 62
  store i64 %7187, i64* %3, align 8
  %7188 = inttoptr i64 %7186 to i64*
  %7189 = load i64, i64* %7188, align 8
  store i64 %7189, i64* %RAX.i2857, align 8
  %7190 = add i64 %7091, 66
  store i64 %7190, i64* %3, align 8
  %7191 = load i32, i32* %7160, align 4
  %7192 = sext i32 %7191 to i64
  store i64 %7192, i64* %RCX.i2831.pre-phi, align 8
  %7193 = shl nsw i64 %7192, 2
  %7194 = add i64 %7193, %7189
  %7195 = add i64 %7091, 69
  store i64 %7195, i64* %3, align 8
  %7196 = inttoptr i64 %7194 to i32*
  store i32 %7167, i32* %7196, align 4
  %7197 = load i64, i64* %RBP.i, align 8
  %7198 = add i64 %7197, -40
  %7199 = load i64, i64* %3, align 8
  %7200 = add i64 %7199, 3
  store i64 %7200, i64* %3, align 8
  %7201 = inttoptr i64 %7198 to i32*
  %7202 = load i32, i32* %7201, align 4
  %7203 = add i32 %7202, 1
  %7204 = zext i32 %7203 to i64
  store i64 %7204, i64* %RAX.i2857, align 8
  %7205 = icmp eq i32 %7202, -1
  %7206 = icmp eq i32 %7203, 0
  %7207 = or i1 %7205, %7206
  %7208 = zext i1 %7207 to i8
  store i8 %7208, i8* %14, align 1
  %7209 = and i32 %7203, 255
  %7210 = tail call i32 @llvm.ctpop.i32(i32 %7209)
  %7211 = trunc i32 %7210 to i8
  %7212 = and i8 %7211, 1
  %7213 = xor i8 %7212, 1
  store i8 %7213, i8* %21, align 1
  %7214 = xor i32 %7203, %7202
  %7215 = lshr i32 %7214, 4
  %7216 = trunc i32 %7215 to i8
  %7217 = and i8 %7216, 1
  store i8 %7217, i8* %27, align 1
  %7218 = zext i1 %7206 to i8
  store i8 %7218, i8* %30, align 1
  %7219 = lshr i32 %7203, 31
  %7220 = trunc i32 %7219 to i8
  store i8 %7220, i8* %33, align 1
  %7221 = lshr i32 %7202, 31
  %7222 = xor i32 %7219, %7221
  %7223 = add nuw nsw i32 %7222, %7219
  %7224 = icmp eq i32 %7223, 2
  %7225 = zext i1 %7224 to i8
  store i8 %7225, i8* %39, align 1
  %7226 = add i64 %7199, 9
  store i64 %7226, i64* %3, align 8
  store i32 %7203, i32* %7201, align 4
  %7227 = load i64, i64* %3, align 8
  %7228 = add i64 %7227, -171
  store i64 %7228, i64* %3, align 8
  br label %block_.L_4afa2d

block_.L_4afadd:                                  ; preds = %block_.L_4afa2d
  %7229 = add i64 %6953, -36
  %7230 = add i64 %6981, 8
  store i64 %7230, i64* %3, align 8
  %7231 = inttoptr i64 %7229 to i32*
  %7232 = load i32, i32* %7231, align 4
  %7233 = add i32 %7232, 1
  %7234 = zext i32 %7233 to i64
  store i64 %7234, i64* %RAX.i2857, align 8
  %7235 = icmp eq i32 %7232, -1
  %7236 = icmp eq i32 %7233, 0
  %7237 = or i1 %7235, %7236
  %7238 = zext i1 %7237 to i8
  store i8 %7238, i8* %14, align 1
  %7239 = and i32 %7233, 255
  %7240 = tail call i32 @llvm.ctpop.i32(i32 %7239)
  %7241 = trunc i32 %7240 to i8
  %7242 = and i8 %7241, 1
  %7243 = xor i8 %7242, 1
  store i8 %7243, i8* %21, align 1
  %7244 = xor i32 %7233, %7232
  %7245 = lshr i32 %7244, 4
  %7246 = trunc i32 %7245 to i8
  %7247 = and i8 %7246, 1
  store i8 %7247, i8* %27, align 1
  %7248 = zext i1 %7236 to i8
  store i8 %7248, i8* %30, align 1
  %7249 = lshr i32 %7233, 31
  %7250 = trunc i32 %7249 to i8
  store i8 %7250, i8* %33, align 1
  %7251 = lshr i32 %7232, 31
  %7252 = xor i32 %7249, %7251
  %7253 = add nuw nsw i32 %7252, %7249
  %7254 = icmp eq i32 %7253, 2
  %7255 = zext i1 %7254 to i8
  store i8 %7255, i8* %39, align 1
  %7256 = add i64 %6981, 14
  store i64 %7256, i64* %3, align 8
  store i32 %7233, i32* %7231, align 4
  %7257 = load i64, i64* %3, align 8
  %7258 = add i64 %7257, -220
  store i64 %7258, i64* %3, align 8
  br label %block_.L_4afa0f

block_.L_4afaf0:                                  ; preds = %block_.L_4afa0f
  %7259 = add i64 %6948, 11
  store i64 %7259, i64* %3, align 8
  %7260 = load i32, i32* %6914, align 4
  %7261 = add i32 %7260, 1
  %7262 = zext i32 %7261 to i64
  store i64 %7262, i64* %RAX.i2857, align 8
  %7263 = icmp eq i32 %7260, -1
  %7264 = icmp eq i32 %7261, 0
  %7265 = or i1 %7263, %7264
  %7266 = zext i1 %7265 to i8
  store i8 %7266, i8* %14, align 1
  %7267 = and i32 %7261, 255
  %7268 = tail call i32 @llvm.ctpop.i32(i32 %7267)
  %7269 = trunc i32 %7268 to i8
  %7270 = and i8 %7269, 1
  %7271 = xor i8 %7270, 1
  store i8 %7271, i8* %21, align 1
  %7272 = xor i32 %7261, %7260
  %7273 = lshr i32 %7272, 4
  %7274 = trunc i32 %7273 to i8
  %7275 = and i8 %7274, 1
  store i8 %7275, i8* %27, align 1
  %7276 = zext i1 %7264 to i8
  store i8 %7276, i8* %30, align 1
  %7277 = lshr i32 %7261, 31
  %7278 = trunc i32 %7277 to i8
  store i8 %7278, i8* %33, align 1
  %7279 = lshr i32 %7260, 31
  %7280 = xor i32 %7277, %7279
  %7281 = add nuw nsw i32 %7280, %7277
  %7282 = icmp eq i32 %7281, 2
  %7283 = zext i1 %7282 to i8
  store i8 %7283, i8* %39, align 1
  %7284 = add i64 %6948, 20
  store i64 %7284, i64* %3, align 8
  store i32 %7261, i32* %6914, align 4
  %7285 = load i64, i64* %3, align 8
  %7286 = add i64 %7285, -275
  store i64 %7286, i64* %3, align 8
  br label %block_.L_4af9f1

block_.L_4afb09:                                  ; preds = %block_.L_4af9f1
  %7287 = add i64 %6901, 338
  br label %block_.L_4afc5b

block_.L_4afb18:                                  ; preds = %block_.L_4afb18.preheader, %block_.L_4afc3d
  %7288 = phi i64 [ %7685, %block_.L_4afc3d ], [ %.pre156, %block_.L_4afb18.preheader ]
  %7289 = load i64, i64* %RBP.i, align 8
  %7290 = add i64 %7289, -35396
  %7291 = add i64 %7288, 6
  store i64 %7291, i64* %3, align 8
  %7292 = inttoptr i64 %7290 to i32*
  %7293 = load i32, i32* %7292, align 4
  %7294 = zext i32 %7293 to i64
  store i64 %7294, i64* %RAX.i2857, align 8
  %7295 = add i64 %7289, -808
  %7296 = add i64 %7288, 12
  store i64 %7296, i64* %3, align 8
  %7297 = inttoptr i64 %7295 to i32*
  %7298 = load i32, i32* %7297, align 4
  %7299 = add i32 %7298, 2
  %7300 = zext i32 %7299 to i64
  store i64 %7300, i64* %RCX.i2831.pre-phi, align 8
  %7301 = lshr i32 %7299, 31
  %7302 = sub i32 %7293, %7299
  %7303 = icmp ult i32 %7293, %7299
  %7304 = zext i1 %7303 to i8
  store i8 %7304, i8* %14, align 1
  %7305 = and i32 %7302, 255
  %7306 = tail call i32 @llvm.ctpop.i32(i32 %7305)
  %7307 = trunc i32 %7306 to i8
  %7308 = and i8 %7307, 1
  %7309 = xor i8 %7308, 1
  store i8 %7309, i8* %21, align 1
  %7310 = xor i32 %7299, %7293
  %7311 = xor i32 %7310, %7302
  %7312 = lshr i32 %7311, 4
  %7313 = trunc i32 %7312 to i8
  %7314 = and i8 %7313, 1
  store i8 %7314, i8* %27, align 1
  %7315 = icmp eq i32 %7302, 0
  %7316 = zext i1 %7315 to i8
  store i8 %7316, i8* %30, align 1
  %7317 = lshr i32 %7302, 31
  %7318 = trunc i32 %7317 to i8
  store i8 %7318, i8* %33, align 1
  %7319 = lshr i32 %7293, 31
  %7320 = xor i32 %7301, %7319
  %7321 = xor i32 %7317, %7319
  %7322 = add nuw nsw i32 %7321, %7320
  %7323 = icmp eq i32 %7322, 2
  %7324 = zext i1 %7323 to i8
  store i8 %7324, i8* %39, align 1
  %7325 = icmp ne i8 %7318, 0
  %7326 = xor i1 %7325, %7323
  %.v227 = select i1 %7326, i64 23, i64 318
  %7327 = add i64 %7288, %.v227
  store i64 %7327, i64* %3, align 8
  br i1 %7326, label %block_4afb2f, label %block_.L_4afc56

block_4afb2f:                                     ; preds = %block_.L_4afb18
  %7328 = add i64 %7289, -36
  %7329 = add i64 %7327, 7
  store i64 %7329, i64* %3, align 8
  %7330 = inttoptr i64 %7328 to i32*
  store i32 0, i32* %7330, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_4afb36

block_.L_4afb36:                                  ; preds = %routine_shll__cl___eax.exit, %block_4afb2f
  %7331 = phi i64 [ %7657, %routine_shll__cl___eax.exit ], [ %.pre164, %block_4afb2f ]
  %7332 = load i64, i64* %RBP.i, align 8
  %7333 = add i64 %7332, -36
  %7334 = add i64 %7331, 3
  store i64 %7334, i64* %3, align 8
  %7335 = inttoptr i64 %7333 to i32*
  %7336 = load i32, i32* %7335, align 4
  %7337 = zext i32 %7336 to i64
  store i64 %7337, i64* %RAX.i2857, align 8
  %7338 = add i64 %7332, -35396
  %7339 = add i64 %7331, 10
  store i64 %7339, i64* %3, align 8
  %7340 = inttoptr i64 %7338 to i32*
  %7341 = load i32, i32* %7340, align 4
  %7342 = sext i32 %7341 to i64
  store i64 %7342, i64* %RCX.i2831.pre-phi, align 8
  %7343 = shl nsw i64 %7342, 2
  %7344 = add nsw i64 %7343, 7489456
  %7345 = add i64 %7331, 17
  store i64 %7345, i64* %3, align 8
  %7346 = inttoptr i64 %7344 to i32*
  %7347 = load i32, i32* %7346, align 4
  %7348 = sub i32 %7336, %7347
  %7349 = icmp ult i32 %7336, %7347
  %7350 = zext i1 %7349 to i8
  store i8 %7350, i8* %14, align 1
  %7351 = and i32 %7348, 255
  %7352 = tail call i32 @llvm.ctpop.i32(i32 %7351)
  %7353 = trunc i32 %7352 to i8
  %7354 = and i8 %7353, 1
  %7355 = xor i8 %7354, 1
  store i8 %7355, i8* %21, align 1
  %7356 = xor i32 %7347, %7336
  %7357 = xor i32 %7356, %7348
  %7358 = lshr i32 %7357, 4
  %7359 = trunc i32 %7358 to i8
  %7360 = and i8 %7359, 1
  store i8 %7360, i8* %27, align 1
  %7361 = icmp eq i32 %7348, 0
  %7362 = zext i1 %7361 to i8
  store i8 %7362, i8* %30, align 1
  %7363 = lshr i32 %7348, 31
  %7364 = trunc i32 %7363 to i8
  store i8 %7364, i8* %33, align 1
  %7365 = lshr i32 %7336, 31
  %7366 = lshr i32 %7347, 31
  %7367 = xor i32 %7366, %7365
  %7368 = xor i32 %7363, %7365
  %7369 = add nuw nsw i32 %7368, %7367
  %7370 = icmp eq i32 %7369, 2
  %7371 = zext i1 %7370 to i8
  store i8 %7371, i8* %39, align 1
  %7372 = icmp ne i8 %7364, 0
  %7373 = xor i1 %7372, %7370
  %.v230 = select i1 %7373, i64 23, i64 263
  %7374 = add i64 %7331, %.v230
  %7375 = add i64 %7374, 5
  store i64 %7375, i64* %3, align 8
  br i1 %7373, label %block_4afb4d, label %block_.L_4afc3d

block_4afb4d:                                     ; preds = %block_.L_4afb36
  store i64 1, i64* %RAX.i2857, align 8
  %7376 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %7377 = zext i32 %7376 to i64
  store i64 %7377, i64* %RCX.i2831.pre-phi, align 8
  store i64 1, i64* %RDX.i2815, align 8
  %7378 = add i64 %7374, 16
  store i64 %7378, i64* %3, align 8
  %7379 = trunc i32 %7376 to i5
  switch i5 %7379, label %7380 [
    i5 0, label %routine_shll__cl___edx.exit283
    i5 1, label %7389
  ]

; <label>:7380:                                   ; preds = %block_4afb4d
  %7381 = and i32 %7376, 31
  %7382 = zext i32 %7381 to i64
  %7383 = add nuw nsw i64 %7382, 4294967295
  %7384 = and i64 %7383, 4294967295
  %7385 = shl i64 1, %7384
  %7386 = trunc i64 %7385 to i32
  %7387 = icmp slt i32 %7386, 0
  %7388 = shl i32 %7386, 1
  br label %7389

; <label>:7389:                                   ; preds = %block_4afb4d, %7380
  %7390 = phi i1 [ %7387, %7380 ], [ false, %block_4afb4d ]
  %7391 = phi i32 [ %7388, %7380 ], [ 2, %block_4afb4d ]
  %7392 = zext i32 %7391 to i64
  store i64 %7392, i64* %RDX.i2815, align 8
  %7393 = zext i1 %7390 to i8
  store i8 %7393, i8* %14, align 1
  %7394 = and i32 %7391, 254
  %7395 = tail call i32 @llvm.ctpop.i32(i32 %7394)
  %7396 = trunc i32 %7395 to i8
  %7397 = and i8 %7396, 1
  %7398 = xor i8 %7397, 1
  store i8 %7398, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7399 = icmp eq i32 %7391, 0
  %7400 = zext i1 %7399 to i8
  store i8 %7400, i8* %30, align 1
  %7401 = lshr i32 %7391, 31
  %7402 = trunc i32 %7401 to i8
  store i8 %7402, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___edx.exit283

routine_shll__cl___edx.exit283:                   ; preds = %7389, %block_4afb4d
  %7403 = phi i32 [ %7391, %7389 ], [ 1, %block_4afb4d ]
  %7404 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7404, i64* %RSI.i2152, align 8
  %7405 = add i64 %7374, 31
  store i64 %7405, i64* %3, align 8
  %7406 = load i32, i32* %7340, align 4
  %7407 = sext i32 %7406 to i64
  store i64 %7407, i64* %RDI.i2710, align 8
  %7408 = shl nsw i64 %7407, 3
  %7409 = add i64 %7408, %7404
  %7410 = add i64 %7374, 35
  store i64 %7410, i64* %3, align 8
  %7411 = inttoptr i64 %7409 to i64*
  %7412 = load i64, i64* %7411, align 8
  store i64 %7412, i64* %RSI.i2152, align 8
  %7413 = add i64 %7374, 39
  store i64 %7413, i64* %3, align 8
  %7414 = load i32, i32* %7335, align 4
  %7415 = sext i32 %7414 to i64
  store i64 %7415, i64* %RDI.i2710, align 8
  %7416 = shl nsw i64 %7415, 3
  %7417 = add i64 %7416, %7412
  %7418 = add i64 %7374, 43
  store i64 %7418, i64* %3, align 8
  %7419 = inttoptr i64 %7417 to i64*
  %7420 = load i64, i64* %7419, align 8
  store i64 %7420, i64* %RSI.i2152, align 8
  %7421 = add i64 %7374, 45
  store i64 %7421, i64* %3, align 8
  %7422 = inttoptr i64 %7420 to i32*
  store i32 %7403, i32* %7422, align 4
  %7423 = load i64, i64* %3, align 8
  %7424 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %7425 = zext i32 %7424 to i64
  store i64 %7425, i64* %RCX.i2831.pre-phi, align 8
  %7426 = load i32, i32* %EAX.i2833.pre-phi, align 4
  %7427 = zext i32 %7426 to i64
  store i64 %7427, i64* %RDX.i2815, align 8
  %7428 = add i64 %7423, 11
  store i64 %7428, i64* %3, align 8
  %7429 = trunc i32 %7424 to i5
  switch i5 %7429, label %7435 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %7430
  ]

; <label>:7430:                                   ; preds = %routine_shll__cl___edx.exit283
  %7431 = shl i32 %7426, 1
  %7432 = icmp slt i32 %7426, 0
  %7433 = icmp slt i32 %7431, 0
  %7434 = xor i1 %7432, %7433
  br label %7444

; <label>:7435:                                   ; preds = %routine_shll__cl___edx.exit283
  %7436 = and i32 %7424, 31
  %7437 = zext i32 %7436 to i64
  %7438 = add nuw nsw i64 %7437, 4294967295
  %7439 = and i64 %7438, 4294967295
  %7440 = shl i64 %7427, %7439
  %7441 = trunc i64 %7440 to i32
  %7442 = icmp slt i32 %7441, 0
  %7443 = shl i32 %7441, 1
  br label %7444

; <label>:7444:                                   ; preds = %7435, %7430
  %7445 = phi i1 [ %7432, %7430 ], [ %7442, %7435 ]
  %7446 = phi i1 [ %7434, %7430 ], [ false, %7435 ]
  %7447 = phi i32 [ %7431, %7430 ], [ %7443, %7435 ]
  %7448 = zext i32 %7447 to i64
  store i64 %7448, i64* %RDX.i2815, align 8
  %7449 = zext i1 %7445 to i8
  store i8 %7449, i8* %14, align 1
  %7450 = and i32 %7447, 254
  %7451 = tail call i32 @llvm.ctpop.i32(i32 %7450)
  %7452 = trunc i32 %7451 to i8
  %7453 = and i8 %7452, 1
  %7454 = xor i8 %7453, 1
  store i8 %7454, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7455 = icmp eq i32 %7447, 0
  %7456 = zext i1 %7455 to i8
  store i8 %7456, i8* %30, align 1
  %7457 = lshr i32 %7447, 31
  %7458 = trunc i32 %7457 to i8
  store i8 %7458, i8* %33, align 1
  %7459 = zext i1 %7446 to i8
  store i8 %7459, i8* %39, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %7444, %routine_shll__cl___edx.exit283
  %7460 = phi i32 [ %7447, %7444 ], [ %7426, %routine_shll__cl___edx.exit283 ]
  %7461 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7461, i64* %RSI.i2152, align 8
  %7462 = load i64, i64* %RBP.i, align 8
  %7463 = add i64 %7462, -35396
  %7464 = add i64 %7423, 26
  store i64 %7464, i64* %3, align 8
  %7465 = inttoptr i64 %7463 to i32*
  %7466 = load i32, i32* %7465, align 4
  %7467 = sext i32 %7466 to i64
  store i64 %7467, i64* %RDI.i2710, align 8
  %7468 = shl nsw i64 %7467, 3
  %7469 = add i64 %7468, %7461
  %7470 = add i64 %7423, 30
  store i64 %7470, i64* %3, align 8
  %7471 = inttoptr i64 %7469 to i64*
  %7472 = load i64, i64* %7471, align 8
  store i64 %7472, i64* %RSI.i2152, align 8
  %7473 = add i64 %7462, -36
  %7474 = add i64 %7423, 34
  store i64 %7474, i64* %3, align 8
  %7475 = inttoptr i64 %7473 to i32*
  %7476 = load i32, i32* %7475, align 4
  %7477 = sext i32 %7476 to i64
  store i64 %7477, i64* %RDI.i2710, align 8
  %7478 = shl nsw i64 %7477, 3
  %7479 = add i64 %7478, %7472
  %7480 = add i64 %7423, 38
  store i64 %7480, i64* %3, align 8
  %7481 = inttoptr i64 %7479 to i64*
  %7482 = load i64, i64* %7481, align 8
  store i64 %7482, i64* %RSI.i2152, align 8
  %7483 = add i64 %7482, 4
  %7484 = add i64 %7423, 41
  store i64 %7484, i64* %3, align 8
  %7485 = inttoptr i64 %7483 to i32*
  store i32 %7460, i32* %7485, align 4
  %7486 = load i64, i64* %3, align 8
  %7487 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %7488 = zext i32 %7487 to i64
  store i64 %7488, i64* %RCX.i2831.pre-phi, align 8
  %7489 = load i64, i64* %RAX.i2857, align 8
  %7490 = add i64 %7486, 9
  store i64 %7490, i64* %3, align 8
  %7491 = trunc i32 %7487 to i5
  %7492 = trunc i64 %7489 to i32
  switch i5 %7491, label %7498 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %7493
  ]

; <label>:7493:                                   ; preds = %routine_shll__cl___edx.exit
  %7494 = shl i32 %7492, 1
  %7495 = icmp slt i32 %7492, 0
  %7496 = icmp slt i32 %7494, 0
  %7497 = xor i1 %7495, %7496
  br label %7508

; <label>:7498:                                   ; preds = %routine_shll__cl___edx.exit
  %7499 = and i32 %7487, 31
  %7500 = zext i32 %7499 to i64
  %7501 = add nuw nsw i64 %7500, 4294967295
  %7502 = and i64 %7489, 4294967295
  %7503 = and i64 %7501, 4294967295
  %7504 = shl i64 %7502, %7503
  %7505 = trunc i64 %7504 to i32
  %7506 = icmp slt i32 %7505, 0
  %7507 = shl i32 %7505, 1
  br label %7508

; <label>:7508:                                   ; preds = %7498, %7493
  %7509 = phi i1 [ %7495, %7493 ], [ %7506, %7498 ]
  %7510 = phi i1 [ %7497, %7493 ], [ false, %7498 ]
  %7511 = phi i32 [ %7494, %7493 ], [ %7507, %7498 ]
  %7512 = zext i32 %7511 to i64
  store i64 %7512, i64* %RAX.i2857, align 8
  %7513 = zext i1 %7509 to i8
  store i8 %7513, i8* %14, align 1
  %7514 = and i32 %7511, 254
  %7515 = tail call i32 @llvm.ctpop.i32(i32 %7514)
  %7516 = trunc i32 %7515 to i8
  %7517 = and i8 %7516, 1
  %7518 = xor i8 %7517, 1
  store i8 %7518, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7519 = icmp eq i32 %7511, 0
  %7520 = zext i1 %7519 to i8
  store i8 %7520, i8* %30, align 1
  %7521 = lshr i32 %7511, 31
  %7522 = trunc i32 %7521 to i8
  store i8 %7522, i8* %33, align 1
  %7523 = zext i1 %7510 to i8
  store i8 %7523, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %7508, %routine_shll__cl___edx.exit
  %7524 = phi i32 [ %7511, %7508 ], [ %7492, %routine_shll__cl___edx.exit ]
  %7525 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7525, i64* %RSI.i2152, align 8
  %7526 = load i64, i64* %RBP.i, align 8
  %7527 = add i64 %7526, -35396
  %7528 = add i64 %7486, 24
  store i64 %7528, i64* %3, align 8
  %7529 = inttoptr i64 %7527 to i32*
  %7530 = load i32, i32* %7529, align 4
  %7531 = sext i32 %7530 to i64
  store i64 %7531, i64* %RDI.i2710, align 8
  %7532 = shl nsw i64 %7531, 3
  %7533 = add i64 %7532, %7525
  %7534 = add i64 %7486, 28
  store i64 %7534, i64* %3, align 8
  %7535 = inttoptr i64 %7533 to i64*
  %7536 = load i64, i64* %7535, align 8
  store i64 %7536, i64* %RSI.i2152, align 8
  %7537 = add i64 %7526, -36
  %7538 = add i64 %7486, 32
  store i64 %7538, i64* %3, align 8
  %7539 = inttoptr i64 %7537 to i32*
  %7540 = load i32, i32* %7539, align 4
  %7541 = sext i32 %7540 to i64
  store i64 %7541, i64* %RDI.i2710, align 8
  %7542 = shl nsw i64 %7541, 3
  %7543 = add i64 %7542, %7536
  %7544 = add i64 %7486, 36
  store i64 %7544, i64* %3, align 8
  %7545 = inttoptr i64 %7543 to i64*
  %7546 = load i64, i64* %7545, align 8
  %7547 = add i64 %7546, 8
  %7548 = add i64 %7486, 39
  store i64 %7548, i64* %3, align 8
  %7549 = inttoptr i64 %7547 to i32*
  store i32 %7524, i32* %7549, align 4
  %7550 = load i64, i64* %3, align 8
  %7551 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %7551, i64* %RSI.i2152, align 8
  %7552 = load i64, i64* %RBP.i, align 8
  %7553 = add i64 %7552, -35396
  %7554 = add i64 %7550, 15
  store i64 %7554, i64* %3, align 8
  %7555 = inttoptr i64 %7553 to i32*
  %7556 = load i32, i32* %7555, align 4
  %7557 = sext i32 %7556 to i64
  store i64 %7557, i64* %RDI.i2710, align 8
  %7558 = shl nsw i64 %7557, 3
  %7559 = add i64 %7558, %7551
  %7560 = add i64 %7550, 19
  store i64 %7560, i64* %3, align 8
  %7561 = inttoptr i64 %7559 to i64*
  %7562 = load i64, i64* %7561, align 8
  store i64 %7562, i64* %RSI.i2152, align 8
  %7563 = add i64 %7552, -36
  %7564 = add i64 %7550, 23
  store i64 %7564, i64* %3, align 8
  %7565 = inttoptr i64 %7563 to i32*
  %7566 = load i32, i32* %7565, align 4
  %7567 = sext i32 %7566 to i64
  store i64 %7567, i64* %RDI.i2710, align 8
  %7568 = shl nsw i64 %7567, 3
  %7569 = add i64 %7568, %7562
  %7570 = add i64 %7550, 27
  store i64 %7570, i64* %3, align 8
  %7571 = inttoptr i64 %7569 to i32**
  %7572 = load i32*, i32** %7571, align 8
  %7573 = add i64 %7550, 33
  store i64 %7573, i64* %3, align 8
  store i32 0, i32* %7572, align 4
  %7574 = load i64, i64* %3, align 8
  %7575 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %7575, i64* %RSI.i2152, align 8
  %7576 = load i64, i64* %RBP.i, align 8
  %7577 = add i64 %7576, -35396
  %7578 = add i64 %7574, 15
  store i64 %7578, i64* %3, align 8
  %7579 = inttoptr i64 %7577 to i32*
  %7580 = load i32, i32* %7579, align 4
  %7581 = sext i32 %7580 to i64
  store i64 %7581, i64* %RDI.i2710, align 8
  %7582 = shl nsw i64 %7581, 3
  %7583 = add i64 %7582, %7575
  %7584 = add i64 %7574, 19
  store i64 %7584, i64* %3, align 8
  %7585 = inttoptr i64 %7583 to i64*
  %7586 = load i64, i64* %7585, align 8
  store i64 %7586, i64* %RSI.i2152, align 8
  %7587 = add i64 %7576, -36
  %7588 = add i64 %7574, 23
  store i64 %7588, i64* %3, align 8
  %7589 = inttoptr i64 %7587 to i32*
  %7590 = load i32, i32* %7589, align 4
  %7591 = sext i32 %7590 to i64
  store i64 %7591, i64* %RDI.i2710, align 8
  %7592 = shl nsw i64 %7591, 3
  %7593 = add i64 %7592, %7586
  %7594 = add i64 %7574, 27
  store i64 %7594, i64* %3, align 8
  %7595 = inttoptr i64 %7593 to i64*
  %7596 = load i64, i64* %7595, align 8
  %7597 = add i64 %7596, 4
  %7598 = add i64 %7574, 34
  store i64 %7598, i64* %3, align 8
  %7599 = inttoptr i64 %7597 to i32*
  store i32 0, i32* %7599, align 4
  %7600 = load i64, i64* %3, align 8
  %7601 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %7601, i64* %RSI.i2152, align 8
  %7602 = load i64, i64* %RBP.i, align 8
  %7603 = add i64 %7602, -35396
  %7604 = add i64 %7600, 15
  store i64 %7604, i64* %3, align 8
  %7605 = inttoptr i64 %7603 to i32*
  %7606 = load i32, i32* %7605, align 4
  %7607 = sext i32 %7606 to i64
  store i64 %7607, i64* %RDI.i2710, align 8
  %7608 = shl nsw i64 %7607, 3
  %7609 = add i64 %7608, %7601
  %7610 = add i64 %7600, 19
  store i64 %7610, i64* %3, align 8
  %7611 = inttoptr i64 %7609 to i64*
  %7612 = load i64, i64* %7611, align 8
  store i64 %7612, i64* %RSI.i2152, align 8
  %7613 = add i64 %7602, -36
  %7614 = add i64 %7600, 23
  store i64 %7614, i64* %3, align 8
  %7615 = inttoptr i64 %7613 to i32*
  %7616 = load i32, i32* %7615, align 4
  %7617 = sext i32 %7616 to i64
  store i64 %7617, i64* %RDI.i2710, align 8
  %7618 = shl nsw i64 %7617, 3
  %7619 = add i64 %7618, %7612
  %7620 = add i64 %7600, 27
  store i64 %7620, i64* %3, align 8
  %7621 = inttoptr i64 %7619 to i64*
  %7622 = load i64, i64* %7621, align 8
  store i64 %7622, i64* %RSI.i2152, align 8
  %7623 = add i64 %7622, 8
  %7624 = add i64 %7600, 34
  store i64 %7624, i64* %3, align 8
  %7625 = inttoptr i64 %7623 to i32*
  store i32 0, i32* %7625, align 4
  %7626 = load i64, i64* %RBP.i, align 8
  %7627 = add i64 %7626, -36
  %7628 = load i64, i64* %3, align 8
  %7629 = add i64 %7628, 3
  store i64 %7629, i64* %3, align 8
  %7630 = inttoptr i64 %7627 to i32*
  %7631 = load i32, i32* %7630, align 4
  %7632 = add i32 %7631, 1
  %7633 = zext i32 %7632 to i64
  store i64 %7633, i64* %RAX.i2857, align 8
  %7634 = icmp eq i32 %7631, -1
  %7635 = icmp eq i32 %7632, 0
  %7636 = or i1 %7634, %7635
  %7637 = zext i1 %7636 to i8
  store i8 %7637, i8* %14, align 1
  %7638 = and i32 %7632, 255
  %7639 = tail call i32 @llvm.ctpop.i32(i32 %7638)
  %7640 = trunc i32 %7639 to i8
  %7641 = and i8 %7640, 1
  %7642 = xor i8 %7641, 1
  store i8 %7642, i8* %21, align 1
  %7643 = xor i32 %7632, %7631
  %7644 = lshr i32 %7643, 4
  %7645 = trunc i32 %7644 to i8
  %7646 = and i8 %7645, 1
  store i8 %7646, i8* %27, align 1
  %7647 = zext i1 %7635 to i8
  store i8 %7647, i8* %30, align 1
  %7648 = lshr i32 %7632, 31
  %7649 = trunc i32 %7648 to i8
  store i8 %7649, i8* %33, align 1
  %7650 = lshr i32 %7631, 31
  %7651 = xor i32 %7648, %7650
  %7652 = add nuw nsw i32 %7651, %7648
  %7653 = icmp eq i32 %7652, 2
  %7654 = zext i1 %7653 to i8
  store i8 %7654, i8* %39, align 1
  %7655 = add i64 %7628, 9
  store i64 %7655, i64* %3, align 8
  store i32 %7632, i32* %7630, align 4
  %7656 = load i64, i64* %3, align 8
  %7657 = add i64 %7656, -258
  store i64 %7657, i64* %3, align 8
  br label %block_.L_4afb36

block_.L_4afc3d:                                  ; preds = %block_.L_4afb36
  %7658 = add i64 %7374, 11
  store i64 %7658, i64* %3, align 8
  %7659 = load i32, i32* %7340, align 4
  %7660 = add i32 %7659, 1
  %7661 = zext i32 %7660 to i64
  store i64 %7661, i64* %RAX.i2857, align 8
  %7662 = icmp eq i32 %7659, -1
  %7663 = icmp eq i32 %7660, 0
  %7664 = or i1 %7662, %7663
  %7665 = zext i1 %7664 to i8
  store i8 %7665, i8* %14, align 1
  %7666 = and i32 %7660, 255
  %7667 = tail call i32 @llvm.ctpop.i32(i32 %7666)
  %7668 = trunc i32 %7667 to i8
  %7669 = and i8 %7668, 1
  %7670 = xor i8 %7669, 1
  store i8 %7670, i8* %21, align 1
  %7671 = xor i32 %7660, %7659
  %7672 = lshr i32 %7671, 4
  %7673 = trunc i32 %7672 to i8
  %7674 = and i8 %7673, 1
  store i8 %7674, i8* %27, align 1
  %7675 = zext i1 %7663 to i8
  store i8 %7675, i8* %30, align 1
  %7676 = lshr i32 %7660, 31
  %7677 = trunc i32 %7676 to i8
  store i8 %7677, i8* %33, align 1
  %7678 = lshr i32 %7659, 31
  %7679 = xor i32 %7676, %7678
  %7680 = add nuw nsw i32 %7679, %7676
  %7681 = icmp eq i32 %7680, 2
  %7682 = zext i1 %7681 to i8
  store i8 %7682, i8* %39, align 1
  %7683 = add i64 %7374, 20
  store i64 %7683, i64* %3, align 8
  store i32 %7660, i32* %7340, align 4
  %7684 = load i64, i64* %3, align 8
  %7685 = add i64 %7684, -313
  store i64 %7685, i64* %3, align 8
  br label %block_.L_4afb18

block_.L_4afc56:                                  ; preds = %block_.L_4afb18
  %7686 = add i64 %7327, 5
  store i64 %7686, i64* %3, align 8
  br label %block_.L_4afc5b

block_.L_4afc5b:                                  ; preds = %block_.L_4afc56, %block_.L_4afb09
  %7687 = phi i64 [ %6863, %block_.L_4afb09 ], [ %7289, %block_.L_4afc56 ]
  %storemerge64 = phi i64 [ %7287, %block_.L_4afb09 ], [ %7686, %block_.L_4afc56 ]
  %7688 = add i64 %7687, -4
  %7689 = add i64 %storemerge64, 7
  store i64 %7689, i64* %3, align 8
  %7690 = inttoptr i64 %7688 to i32*
  store i32 0, i32* %7690, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_4afc62

block_.L_4afc62:                                  ; preds = %block_.L_4afd6a, %block_.L_4afc5b
  %7691 = phi i64 [ %8037, %block_.L_4afd6a ], [ %.pre160, %block_.L_4afc5b ]
  %7692 = load i64, i64* %RBP.i, align 8
  %7693 = add i64 %7692, -4
  %7694 = add i64 %7691, 3
  store i64 %7694, i64* %3, align 8
  %7695 = inttoptr i64 %7693 to i32*
  %7696 = load i32, i32* %7695, align 4
  %7697 = zext i32 %7696 to i64
  store i64 %7697, i64* %RAX.i2857, align 8
  %7698 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %7699 = sub i32 %7696, %7698
  %7700 = icmp ult i32 %7696, %7698
  %7701 = zext i1 %7700 to i8
  store i8 %7701, i8* %14, align 1
  %7702 = and i32 %7699, 255
  %7703 = tail call i32 @llvm.ctpop.i32(i32 %7702)
  %7704 = trunc i32 %7703 to i8
  %7705 = and i8 %7704, 1
  %7706 = xor i8 %7705, 1
  store i8 %7706, i8* %21, align 1
  %7707 = xor i32 %7698, %7696
  %7708 = xor i32 %7707, %7699
  %7709 = lshr i32 %7708, 4
  %7710 = trunc i32 %7709 to i8
  %7711 = and i8 %7710, 1
  store i8 %7711, i8* %27, align 1
  %7712 = icmp eq i32 %7699, 0
  %7713 = zext i1 %7712 to i8
  store i8 %7713, i8* %30, align 1
  %7714 = lshr i32 %7699, 31
  %7715 = trunc i32 %7714 to i8
  store i8 %7715, i8* %33, align 1
  %7716 = lshr i32 %7696, 31
  %7717 = lshr i32 %7698, 31
  %7718 = xor i32 %7717, %7716
  %7719 = xor i32 %7714, %7716
  %7720 = add nuw nsw i32 %7719, %7718
  %7721 = icmp eq i32 %7720, 2
  %7722 = zext i1 %7721 to i8
  store i8 %7722, i8* %39, align 1
  %7723 = icmp ne i8 %7715, 0
  %7724 = xor i1 %7723, %7721
  %.v228 = select i1 %7724, i64 16, i64 283
  %7725 = add i64 %7691, %.v228
  store i64 %7725, i64* %3, align 8
  br i1 %7724, label %block_4afc72, label %block_.L_4afd7d

block_4afc72:                                     ; preds = %block_.L_4afc62
  %7726 = add i64 %7692, -8
  %7727 = add i64 %7725, 7
  store i64 %7727, i64* %3, align 8
  %7728 = inttoptr i64 %7726 to i32*
  store i32 0, i32* %7728, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_4afc79

block_.L_4afc79:                                  ; preds = %block_.L_4afd57, %block_4afc72
  %7729 = phi i64 [ %8007, %block_.L_4afd57 ], [ %.pre161, %block_4afc72 ]
  %7730 = load i64, i64* %RBP.i, align 8
  %7731 = add i64 %7730, -8
  %7732 = add i64 %7729, 3
  store i64 %7732, i64* %3, align 8
  %7733 = inttoptr i64 %7731 to i32*
  %7734 = load i32, i32* %7733, align 4
  %7735 = zext i32 %7734 to i64
  store i64 %7735, i64* %RAX.i2857, align 8
  %7736 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %7737 = sub i32 %7734, %7736
  %7738 = icmp ult i32 %7734, %7736
  %7739 = zext i1 %7738 to i8
  store i8 %7739, i8* %14, align 1
  %7740 = and i32 %7737, 255
  %7741 = tail call i32 @llvm.ctpop.i32(i32 %7740)
  %7742 = trunc i32 %7741 to i8
  %7743 = and i8 %7742, 1
  %7744 = xor i8 %7743, 1
  store i8 %7744, i8* %21, align 1
  %7745 = xor i32 %7736, %7734
  %7746 = xor i32 %7745, %7737
  %7747 = lshr i32 %7746, 4
  %7748 = trunc i32 %7747 to i8
  %7749 = and i8 %7748, 1
  store i8 %7749, i8* %27, align 1
  %7750 = icmp eq i32 %7737, 0
  %7751 = zext i1 %7750 to i8
  store i8 %7751, i8* %30, align 1
  %7752 = lshr i32 %7737, 31
  %7753 = trunc i32 %7752 to i8
  store i8 %7753, i8* %33, align 1
  %7754 = lshr i32 %7734, 31
  %7755 = lshr i32 %7736, 31
  %7756 = xor i32 %7755, %7754
  %7757 = xor i32 %7752, %7754
  %7758 = add nuw nsw i32 %7757, %7756
  %7759 = icmp eq i32 %7758, 2
  %7760 = zext i1 %7759 to i8
  store i8 %7760, i8* %39, align 1
  %7761 = icmp ne i8 %7753, 0
  %7762 = xor i1 %7761, %7759
  %.v212 = select i1 %7762, i64 16, i64 241
  %7763 = add i64 %7729, %.v212
  store i64 %7763, i64* %3, align 8
  br i1 %7762, label %block_4afc89, label %block_.L_4afd6a

block_4afc89:                                     ; preds = %block_.L_4afc79
  %7764 = add i64 %7730, -40
  %7765 = add i64 %7763, 7
  store i64 %7765, i64* %3, align 8
  %7766 = inttoptr i64 %7764 to i32*
  store i32 0, i32* %7766, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_4afc90

block_.L_4afc90:                                  ; preds = %block_.L_4afcc3, %block_4afc89
  %7767 = phi i64 [ %7977, %block_.L_4afcc3 ], [ %.pre162, %block_4afc89 ]
  %7768 = load i64, i64* %RBP.i, align 8
  %7769 = add i64 %7768, -40
  %7770 = add i64 %7767, 4
  store i64 %7770, i64* %3, align 8
  %7771 = inttoptr i64 %7769 to i32*
  %7772 = load i32, i32* %7771, align 4
  %7773 = add i32 %7772, -3
  %7774 = icmp ult i32 %7772, 3
  %7775 = zext i1 %7774 to i8
  store i8 %7775, i8* %14, align 1
  %7776 = and i32 %7773, 255
  %7777 = tail call i32 @llvm.ctpop.i32(i32 %7776)
  %7778 = trunc i32 %7777 to i8
  %7779 = and i8 %7778, 1
  %7780 = xor i8 %7779, 1
  store i8 %7780, i8* %21, align 1
  %7781 = xor i32 %7773, %7772
  %7782 = lshr i32 %7781, 4
  %7783 = trunc i32 %7782 to i8
  %7784 = and i8 %7783, 1
  store i8 %7784, i8* %27, align 1
  %7785 = icmp eq i32 %7773, 0
  %7786 = zext i1 %7785 to i8
  store i8 %7786, i8* %30, align 1
  %7787 = lshr i32 %7773, 31
  %7788 = trunc i32 %7787 to i8
  store i8 %7788, i8* %33, align 1
  %7789 = lshr i32 %7772, 31
  %7790 = xor i32 %7787, %7789
  %7791 = add nuw nsw i32 %7790, %7789
  %7792 = icmp eq i32 %7791, 2
  %7793 = zext i1 %7792 to i8
  store i8 %7793, i8* %39, align 1
  %7794 = icmp ne i8 %7788, 0
  %7795 = xor i1 %7794, %7792
  %.v213 = select i1 %7795, i64 10, i64 199
  %7796 = add i64 %7767, %.v213
  store i64 %7796, i64* %3, align 8
  br i1 %7795, label %block_4afc9a, label %block_.L_4afd57

block_4afc9a:                                     ; preds = %block_.L_4afc90
  %7797 = add i64 %7796, 4
  store i64 %7797, i64* %3, align 8
  %7798 = load i32, i32* %7771, align 4
  store i8 0, i8* %14, align 1
  %7799 = and i32 %7798, 255
  %7800 = tail call i32 @llvm.ctpop.i32(i32 %7799)
  %7801 = trunc i32 %7800 to i8
  %7802 = and i8 %7801, 1
  %7803 = xor i8 %7802, 1
  store i8 %7803, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7804 = icmp eq i32 %7798, 0
  %7805 = zext i1 %7804 to i8
  store i8 %7805, i8* %30, align 1
  %7806 = lshr i32 %7798, 31
  %7807 = trunc i32 %7806 to i8
  store i8 %7807, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v229 = select i1 %7804, i64 10, i64 28
  %7808 = add i64 %7796, %.v229
  %7809 = add i64 %7808, 7
  store i64 %7809, i64* %3, align 8
  br i1 %7804, label %block_4afca4, label %block_.L_4afcb6

block_4afca4:                                     ; preds = %block_4afc9a
  %7810 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %7811 = zext i32 %7810 to i64
  store i64 %7811, i64* %RAX.i2857, align 8
  %7812 = add i64 %7768, -35472
  %7813 = add i64 %7808, 13
  store i64 %7813, i64* %3, align 8
  %7814 = inttoptr i64 %7812 to i32*
  store i32 %7810, i32* %7814, align 4
  %7815 = load i64, i64* %3, align 8
  %7816 = add i64 %7815, 18
  store i64 %7816, i64* %3, align 8
  br label %block_.L_4afcc3

block_.L_4afcb6:                                  ; preds = %block_4afc9a
  %7817 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %7818 = zext i32 %7817 to i64
  store i64 %7818, i64* %RAX.i2857, align 8
  %7819 = add i64 %7768, -35472
  %7820 = add i64 %7808, 13
  store i64 %7820, i64* %3, align 8
  %7821 = inttoptr i64 %7819 to i32*
  store i32 %7817, i32* %7821, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_4afcc3

block_.L_4afcc3:                                  ; preds = %block_.L_4afcb6, %block_4afca4
  %7822 = phi i64 [ %.pre163, %block_.L_4afcb6 ], [ %7816, %block_4afca4 ]
  %7823 = load i64, i64* %RBP.i, align 8
  %7824 = add i64 %7823, -35472
  %7825 = add i64 %7822, 6
  store i64 %7825, i64* %3, align 8
  %7826 = inttoptr i64 %7824 to i32*
  %7827 = load i32, i32* %7826, align 4
  %7828 = zext i32 %7827 to i64
  store i64 %7828, i64* %RAX.i2857, align 8
  %7829 = add i64 %7823, -772
  %7830 = add i64 %7822, 12
  store i64 %7830, i64* %3, align 8
  %7831 = inttoptr i64 %7829 to i32*
  store i32 %7827, i32* %7831, align 4
  %7832 = load i64, i64* %3, align 8
  %7833 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7833, i64* %RCX.i2831.pre-phi, align 8
  %7834 = add i64 %7832, 11
  store i64 %7834, i64* %3, align 8
  %7835 = inttoptr i64 %7833 to i64*
  %7836 = load i64, i64* %7835, align 8
  store i64 %7836, i64* %RCX.i2831.pre-phi, align 8
  %7837 = load i64, i64* %RBP.i, align 8
  %7838 = add i64 %7837, -4
  %7839 = add i64 %7832, 15
  store i64 %7839, i64* %3, align 8
  %7840 = inttoptr i64 %7838 to i32*
  %7841 = load i32, i32* %7840, align 4
  %7842 = sext i32 %7841 to i64
  store i64 %7842, i64* %RDX.i2815, align 8
  %7843 = shl nsw i64 %7842, 3
  %7844 = add i64 %7843, %7836
  %7845 = add i64 %7832, 19
  store i64 %7845, i64* %3, align 8
  %7846 = inttoptr i64 %7844 to i64*
  %7847 = load i64, i64* %7846, align 8
  store i64 %7847, i64* %RCX.i2831.pre-phi, align 8
  %7848 = add i64 %7837, -40
  %7849 = add i64 %7832, 23
  store i64 %7849, i64* %3, align 8
  %7850 = inttoptr i64 %7848 to i32*
  %7851 = load i32, i32* %7850, align 4
  %7852 = sext i32 %7851 to i64
  store i64 %7852, i64* %RDX.i2815, align 8
  %7853 = shl nsw i64 %7852, 2
  %7854 = add i64 %7853, %7847
  %7855 = add i64 %7832, 26
  store i64 %7855, i64* %3, align 8
  %7856 = inttoptr i64 %7854 to i32*
  %7857 = load i32, i32* %7856, align 4
  %7858 = zext i32 %7857 to i64
  store i64 %7858, i64* %RAX.i2857, align 8
  %7859 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %7859, i64* %RCX.i2831.pre-phi, align 8
  %7860 = add i64 %7832, 37
  store i64 %7860, i64* %3, align 8
  %7861 = inttoptr i64 %7859 to i64*
  %7862 = load i64, i64* %7861, align 8
  store i64 %7862, i64* %RCX.i2831.pre-phi, align 8
  %7863 = add i64 %7832, 41
  store i64 %7863, i64* %3, align 8
  %7864 = load i32, i32* %7840, align 4
  %7865 = sext i32 %7864 to i64
  store i64 %7865, i64* %RDX.i2815, align 8
  %7866 = shl nsw i64 %7865, 3
  %7867 = add i64 %7866, %7862
  %7868 = add i64 %7832, 45
  store i64 %7868, i64* %3, align 8
  %7869 = inttoptr i64 %7867 to i64*
  %7870 = load i64, i64* %7869, align 8
  store i64 %7870, i64* %RCX.i2831.pre-phi, align 8
  %7871 = add i64 %7837, -8
  %7872 = add i64 %7832, 49
  store i64 %7872, i64* %3, align 8
  %7873 = inttoptr i64 %7871 to i32*
  %7874 = load i32, i32* %7873, align 4
  %7875 = sext i32 %7874 to i64
  store i64 %7875, i64* %RDX.i2815, align 8
  %7876 = shl nsw i64 %7875, 3
  %7877 = add i64 %7876, %7870
  %7878 = add i64 %7832, 53
  store i64 %7878, i64* %3, align 8
  %7879 = inttoptr i64 %7877 to i64*
  %7880 = load i64, i64* %7879, align 8
  store i64 %7880, i64* %RCX.i2831.pre-phi, align 8
  %7881 = add i64 %7832, 57
  store i64 %7881, i64* %3, align 8
  %7882 = load i32, i32* %7850, align 4
  %7883 = sext i32 %7882 to i64
  store i64 %7883, i64* %RDX.i2815, align 8
  %7884 = shl nsw i64 %7883, 2
  %7885 = add i64 %7884, %7880
  %7886 = add i64 %7832, 60
  store i64 %7886, i64* %3, align 8
  %7887 = inttoptr i64 %7885 to i32*
  store i32 %7857, i32* %7887, align 4
  %7888 = load i64, i64* %3, align 8
  %7889 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %7889, i64* %RCX.i2831.pre-phi, align 8
  %7890 = add i64 %7889, 8
  %7891 = add i64 %7888, 12
  store i64 %7891, i64* %3, align 8
  %7892 = inttoptr i64 %7890 to i64*
  %7893 = load i64, i64* %7892, align 8
  store i64 %7893, i64* %RCX.i2831.pre-phi, align 8
  %7894 = load i64, i64* %RBP.i, align 8
  %7895 = add i64 %7894, -8
  %7896 = add i64 %7888, 16
  store i64 %7896, i64* %3, align 8
  %7897 = inttoptr i64 %7895 to i32*
  %7898 = load i32, i32* %7897, align 4
  %7899 = sext i32 %7898 to i64
  store i64 %7899, i64* %RDX.i2815, align 8
  %7900 = shl nsw i64 %7899, 3
  %7901 = add i64 %7900, %7893
  %7902 = add i64 %7888, 20
  store i64 %7902, i64* %3, align 8
  %7903 = inttoptr i64 %7901 to i64*
  %7904 = load i64, i64* %7903, align 8
  store i64 %7904, i64* %RCX.i2831.pre-phi, align 8
  %7905 = add i64 %7894, -40
  %7906 = add i64 %7888, 24
  store i64 %7906, i64* %3, align 8
  %7907 = inttoptr i64 %7905 to i32*
  %7908 = load i32, i32* %7907, align 4
  %7909 = sext i32 %7908 to i64
  store i64 %7909, i64* %RDX.i2815, align 8
  %7910 = shl nsw i64 %7909, 2
  %7911 = add i64 %7910, %7904
  %7912 = add i64 %7888, 27
  store i64 %7912, i64* %3, align 8
  %7913 = inttoptr i64 %7911 to i32*
  %7914 = load i32, i32* %7913, align 4
  %7915 = zext i32 %7914 to i64
  store i64 %7915, i64* %RAX.i2857, align 8
  %7916 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %7916, i64* %RCX.i2831.pre-phi, align 8
  %7917 = add i64 %7916, 8
  %7918 = add i64 %7888, 39
  store i64 %7918, i64* %3, align 8
  %7919 = inttoptr i64 %7917 to i64*
  %7920 = load i64, i64* %7919, align 8
  store i64 %7920, i64* %RCX.i2831.pre-phi, align 8
  %7921 = add i64 %7894, -4
  %7922 = add i64 %7888, 43
  store i64 %7922, i64* %3, align 8
  %7923 = inttoptr i64 %7921 to i32*
  %7924 = load i32, i32* %7923, align 4
  %7925 = sext i32 %7924 to i64
  store i64 %7925, i64* %RDX.i2815, align 8
  %7926 = shl nsw i64 %7925, 3
  %7927 = add i64 %7926, %7920
  %7928 = add i64 %7888, 47
  store i64 %7928, i64* %3, align 8
  %7929 = inttoptr i64 %7927 to i64*
  %7930 = load i64, i64* %7929, align 8
  store i64 %7930, i64* %RCX.i2831.pre-phi, align 8
  %7931 = add i64 %7888, 51
  store i64 %7931, i64* %3, align 8
  %7932 = load i32, i32* %7897, align 4
  %7933 = sext i32 %7932 to i64
  store i64 %7933, i64* %RDX.i2815, align 8
  %7934 = shl nsw i64 %7933, 3
  %7935 = add i64 %7934, %7930
  %7936 = add i64 %7888, 55
  store i64 %7936, i64* %3, align 8
  %7937 = inttoptr i64 %7935 to i64*
  %7938 = load i64, i64* %7937, align 8
  store i64 %7938, i64* %RCX.i2831.pre-phi, align 8
  %7939 = add i64 %7888, 59
  store i64 %7939, i64* %3, align 8
  %7940 = load i32, i32* %7907, align 4
  %7941 = sext i32 %7940 to i64
  store i64 %7941, i64* %RDX.i2815, align 8
  %7942 = shl nsw i64 %7941, 2
  %7943 = add i64 %7942, %7938
  %7944 = add i64 %7888, 62
  store i64 %7944, i64* %3, align 8
  %7945 = inttoptr i64 %7943 to i32*
  store i32 %7914, i32* %7945, align 4
  %7946 = load i64, i64* %RBP.i, align 8
  %7947 = add i64 %7946, -40
  %7948 = load i64, i64* %3, align 8
  %7949 = add i64 %7948, 3
  store i64 %7949, i64* %3, align 8
  %7950 = inttoptr i64 %7947 to i32*
  %7951 = load i32, i32* %7950, align 4
  %7952 = add i32 %7951, 1
  %7953 = zext i32 %7952 to i64
  store i64 %7953, i64* %RAX.i2857, align 8
  %7954 = icmp eq i32 %7951, -1
  %7955 = icmp eq i32 %7952, 0
  %7956 = or i1 %7954, %7955
  %7957 = zext i1 %7956 to i8
  store i8 %7957, i8* %14, align 1
  %7958 = and i32 %7952, 255
  %7959 = tail call i32 @llvm.ctpop.i32(i32 %7958)
  %7960 = trunc i32 %7959 to i8
  %7961 = and i8 %7960, 1
  %7962 = xor i8 %7961, 1
  store i8 %7962, i8* %21, align 1
  %7963 = xor i32 %7952, %7951
  %7964 = lshr i32 %7963, 4
  %7965 = trunc i32 %7964 to i8
  %7966 = and i8 %7965, 1
  store i8 %7966, i8* %27, align 1
  %7967 = zext i1 %7955 to i8
  store i8 %7967, i8* %30, align 1
  %7968 = lshr i32 %7952, 31
  %7969 = trunc i32 %7968 to i8
  store i8 %7969, i8* %33, align 1
  %7970 = lshr i32 %7951, 31
  %7971 = xor i32 %7968, %7970
  %7972 = add nuw nsw i32 %7971, %7968
  %7973 = icmp eq i32 %7972, 2
  %7974 = zext i1 %7973 to i8
  store i8 %7974, i8* %39, align 1
  %7975 = add i64 %7948, 9
  store i64 %7975, i64* %3, align 8
  store i32 %7952, i32* %7950, align 4
  %7976 = load i64, i64* %3, align 8
  %7977 = add i64 %7976, -194
  store i64 %7977, i64* %3, align 8
  br label %block_.L_4afc90

block_.L_4afd57:                                  ; preds = %block_.L_4afc90
  %7978 = add i64 %7768, -8
  %7979 = add i64 %7796, 8
  store i64 %7979, i64* %3, align 8
  %7980 = inttoptr i64 %7978 to i32*
  %7981 = load i32, i32* %7980, align 4
  %7982 = add i32 %7981, 1
  %7983 = zext i32 %7982 to i64
  store i64 %7983, i64* %RAX.i2857, align 8
  %7984 = icmp eq i32 %7981, -1
  %7985 = icmp eq i32 %7982, 0
  %7986 = or i1 %7984, %7985
  %7987 = zext i1 %7986 to i8
  store i8 %7987, i8* %14, align 1
  %7988 = and i32 %7982, 255
  %7989 = tail call i32 @llvm.ctpop.i32(i32 %7988)
  %7990 = trunc i32 %7989 to i8
  %7991 = and i8 %7990, 1
  %7992 = xor i8 %7991, 1
  store i8 %7992, i8* %21, align 1
  %7993 = xor i32 %7982, %7981
  %7994 = lshr i32 %7993, 4
  %7995 = trunc i32 %7994 to i8
  %7996 = and i8 %7995, 1
  store i8 %7996, i8* %27, align 1
  %7997 = zext i1 %7985 to i8
  store i8 %7997, i8* %30, align 1
  %7998 = lshr i32 %7982, 31
  %7999 = trunc i32 %7998 to i8
  store i8 %7999, i8* %33, align 1
  %8000 = lshr i32 %7981, 31
  %8001 = xor i32 %7998, %8000
  %8002 = add nuw nsw i32 %8001, %7998
  %8003 = icmp eq i32 %8002, 2
  %8004 = zext i1 %8003 to i8
  store i8 %8004, i8* %39, align 1
  %8005 = add i64 %7796, 14
  store i64 %8005, i64* %3, align 8
  store i32 %7982, i32* %7980, align 4
  %8006 = load i64, i64* %3, align 8
  %8007 = add i64 %8006, -236
  store i64 %8007, i64* %3, align 8
  br label %block_.L_4afc79

block_.L_4afd6a:                                  ; preds = %block_.L_4afc79
  %8008 = add i64 %7730, -4
  %8009 = add i64 %7763, 8
  store i64 %8009, i64* %3, align 8
  %8010 = inttoptr i64 %8008 to i32*
  %8011 = load i32, i32* %8010, align 4
  %8012 = add i32 %8011, 1
  %8013 = zext i32 %8012 to i64
  store i64 %8013, i64* %RAX.i2857, align 8
  %8014 = icmp eq i32 %8011, -1
  %8015 = icmp eq i32 %8012, 0
  %8016 = or i1 %8014, %8015
  %8017 = zext i1 %8016 to i8
  store i8 %8017, i8* %14, align 1
  %8018 = and i32 %8012, 255
  %8019 = tail call i32 @llvm.ctpop.i32(i32 %8018)
  %8020 = trunc i32 %8019 to i8
  %8021 = and i8 %8020, 1
  %8022 = xor i8 %8021, 1
  store i8 %8022, i8* %21, align 1
  %8023 = xor i32 %8012, %8011
  %8024 = lshr i32 %8023, 4
  %8025 = trunc i32 %8024 to i8
  %8026 = and i8 %8025, 1
  store i8 %8026, i8* %27, align 1
  %8027 = zext i1 %8015 to i8
  store i8 %8027, i8* %30, align 1
  %8028 = lshr i32 %8012, 31
  %8029 = trunc i32 %8028 to i8
  store i8 %8029, i8* %33, align 1
  %8030 = lshr i32 %8011, 31
  %8031 = xor i32 %8028, %8030
  %8032 = add nuw nsw i32 %8031, %8028
  %8033 = icmp eq i32 %8032, 2
  %8034 = zext i1 %8033 to i8
  store i8 %8034, i8* %39, align 1
  %8035 = add i64 %7763, 14
  store i64 %8035, i64* %3, align 8
  store i32 %8012, i32* %8010, align 4
  %8036 = load i64, i64* %3, align 8
  %8037 = add i64 %8036, -278
  store i64 %8037, i64* %3, align 8
  br label %block_.L_4afc62

block_.L_4afd7d:                                  ; preds = %block_.L_4afc62
  %8038 = add i64 %7725, 5
  store i64 %8038, i64* %3, align 8
  br label %block_.L_4afd82

block_.L_4afd82:                                  ; preds = %block_.L_4afd7d, %block_.L_4af386
  %storemerge59 = phi i64 [ %4423, %block_.L_4af386 ], [ %8038, %block_.L_4afd7d ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4af386 ], [ %MEMORY.31, %block_.L_4afd7d ]
  %8039 = load i64, i64* %6, align 8
  %8040 = add i64 %8039, 35472
  store i64 %8040, i64* %6, align 8
  %8041 = icmp ugt i64 %8039, -35473
  %8042 = zext i1 %8041 to i8
  store i8 %8042, i8* %14, align 1
  %8043 = trunc i64 %8040 to i32
  %8044 = and i32 %8043, 255
  %8045 = tail call i32 @llvm.ctpop.i32(i32 %8044)
  %8046 = trunc i32 %8045 to i8
  %8047 = and i8 %8046, 1
  %8048 = xor i8 %8047, 1
  store i8 %8048, i8* %21, align 1
  %8049 = xor i64 %8039, 16
  %8050 = xor i64 %8049, %8040
  %8051 = lshr i64 %8050, 4
  %8052 = trunc i64 %8051 to i8
  %8053 = and i8 %8052, 1
  store i8 %8053, i8* %27, align 1
  %8054 = icmp eq i64 %8040, 0
  %8055 = zext i1 %8054 to i8
  store i8 %8055, i8* %30, align 1
  %8056 = lshr i64 %8040, 63
  %8057 = trunc i64 %8056 to i8
  store i8 %8057, i8* %33, align 1
  %8058 = lshr i64 %8039, 63
  %8059 = xor i64 %8056, %8058
  %8060 = add nuw nsw i64 %8059, %8056
  %8061 = icmp eq i64 %8060, 2
  %8062 = zext i1 %8061 to i8
  store i8 %8062, i8* %39, align 1
  %8063 = add i64 %storemerge59, 8
  store i64 %8063, i64* %3, align 8
  %8064 = add i64 %8039, 35480
  %8065 = inttoptr i64 %8040 to i64*
  %8066 = load i64, i64* %8065, align 8
  store i64 %8066, i64* %RBP.i, align 8
  store i64 %8064, i64* %6, align 8
  %8067 = add i64 %storemerge59, 9
  store i64 %8067, i64* %3, align 8
  %8068 = inttoptr i64 %8064 to i64*
  %8069 = load i64, i64* %8068, align 8
  store i64 %8069, i64* %3, align 8
  %8070 = add i64 %8039, 35488
  store i64 %8070, i64* %6, align 8
  ret %struct.Memory* %MEMORY.55
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
define %struct.Memory* @routine_subq__0x8a90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -35472
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 35472
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
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ae821(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8a5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35420
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae82e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x328__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -808
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4690___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xc4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4ae86a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae880(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6__0x70f6d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 6, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6__0x7242a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 6, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x7107a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7242a0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x710790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -804
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x320__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -800
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x31c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -796
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -808
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
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
define %struct.Memory* @routine_jge_.L_4aea07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 7489456
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jge_.L_4ae9f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jge_.L_4ae9e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x760__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1888
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2976
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x324__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rdx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rdx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 180
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 12
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 180
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 12
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae91f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae9e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae9f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae8e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4aeef3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4aeee0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffff80___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 128
  %8 = icmp ult i32 %4, -128
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4aea74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967168, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeaeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -127
  %8 = icmp ult i32 %4, 127
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4aeab3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 127, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeadf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8a64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35428
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffff80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 128
  %8 = icmp ult i32 %4, -128
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4aeb2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35432
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeb95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -127
  %8 = icmp ult i32 %4, 127
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4aeb65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeb89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8a6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35436
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_4aeecd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8a50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4aec84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -19184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2700
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -2701
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
define %struct.Memory* @routine_imulq__0xb4___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 180
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_imulq__0xc___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 12
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2700
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -2701
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeeba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16384
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -16385
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x8a50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imull_MINUS0x8a54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35412
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -33
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfffffc00___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 1024
  %8 = icmp ult i32 %4, -1024
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4aece1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xfffffc00___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294966272, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aed2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3ff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1023
  %8 = icmp ult i32 %4, 1023
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4aed0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3ff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1023, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aed22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35444
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_sarl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 180
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 12
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffc0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 64
  %12 = icmp ult i32 %10, -64
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4aedd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -19184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2700
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -2701
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
define %struct.Memory* @routine_cmpl__0x80____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -128
  %12 = icmp ult i32 %10, 128
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4aee0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 64, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2700
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -2701
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
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl___rsi__rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeebf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_4aeba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeed2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aea25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aeee5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aea0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xc4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4af38b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af046(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af033(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4aef63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aef70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -772
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aef3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af025(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aef26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4aef0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af17c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af163(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -804
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x320__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x31c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -796
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jmpq_.L_4af06e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af168(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af386(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af373(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
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
define %struct.Memory* @routine_jge_.L_4af25d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af1b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -9
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af34d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1938__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af352(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af264(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af365(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af19a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af183(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afd82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 60
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
define %struct.Memory* @routine_jge_.L_4af407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 52
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
define %struct.Memory* @routine_jge_.L_4af3f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x277050__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x277050__rip__type* @G_0x277050__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_jmpq_.L_4af3ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af3f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af392(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af9d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af9b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 120
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x310__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x318__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -792
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af51e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x310__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__esi___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af4b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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
define %struct.Memory* @routine_jne_.L_4af554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4af554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af59a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x232c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x232c__rip__type* @G_0x232c__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x324__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -804
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8a48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35400
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af5a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35400
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffc0__MINUS0x8a48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 64
  %10 = icmp ult i32 %8, -64
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4af5c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7f__MINUS0x8a48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -127
  %10 = icmp ult i32 %8, 127
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
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4af5cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2976
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1888
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8a4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x320__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x31c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -796
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af7ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x310__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35400
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RDX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35404
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
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
define %struct.Memory* @routine_jge_.L_4af731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af7c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11bec__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72684
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jle_.L_4af78a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8a84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35460
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af7bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8a84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35460
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x318__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -792
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %CX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af6cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4af9a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af993(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4af88e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af955(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4af8ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8a8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35468
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af949(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8a8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35468
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35468
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1938__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af818(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af998(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af7f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af9ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af42f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af9be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af411(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xc4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jne_.L_4afb0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afb09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afaf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afadd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afa2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afa0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afaf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4af9f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afc5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4afc56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afc3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afb36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afc42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afb18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4afd7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afd6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4afd57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4afcb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x8a90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afcc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afc90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afd5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afd6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afc62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8a90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 35472
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -35473
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
