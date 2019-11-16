; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x27546c__rip__type = type <{ [8 x i8] }>
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
%G_0x748__rip__type = type <{ [8 x i8] }>
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
@G_0x27546c__rip_ = global %G_0x27546c__rip__type zeroinitializer
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
@G_0x748__rip_ = global %G_0x748__rip__type zeroinitializer

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
define %struct.Memory* @test_wp_B_slice(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %43 to i32*
  %44 = add i64 %7, -12
  %45 = load i32, i32* %EDI.i, align 4
  %46 = add i64 %10, 16
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -32
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %3, align 8
  %52 = bitcast [32 x %union.VectorReg]* %40 to double*
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %49 to i64*
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2337 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %58, i64* %RAX.i2337, align 8
  %59 = add i64 %58, 72400
  %60 = add i64 %57, 15
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  store i8 0, i8* %14, align 1
  %63 = and i32 %62, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %68 = icmp eq i32 %62, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %30, align 1
  %70 = lshr i32 %62, 31
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v188 = select i1 %68, i64 126, i64 21
  %72 = add i64 %57, %.v188
  store i64 %72, i64* %3, align 8
  br i1 %68, label %entry.block_.L_4b0644_crit_edge, label %block_4b05db

entry.block_.L_4b0644_crit_edge:                  ; preds = %entry
  %.pre166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre167 = getelementptr inbounds %union.anon, %union.anon* %.pre166, i64 0, i32 0
  br label %block_.L_4b0644

block_4b05db:                                     ; preds = %entry
  store i64 %58, i64* %RAX.i2337, align 8
  %73 = add i64 %58, 14168
  %74 = add i64 %72, 15
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RAX.i2337, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2328 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  store i64 %58, i64* %RCX.i2328, align 8
  %78 = add i64 %58, 12
  %79 = add i64 %72, 27
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 632
  store i64 %83, i64* %RCX.i2328, align 8
  %84 = lshr i64 %83, 63
  %85 = add i64 %83, %76
  store i64 %85, i64* %RAX.i2337, align 8
  %86 = icmp ult i64 %85, %76
  %87 = icmp ult i64 %85, %83
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %14, align 1
  %90 = trunc i64 %85 to i32
  %91 = and i32 %90, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91)
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %21, align 1
  %96 = xor i64 %83, %76
  %97 = xor i64 %96, %85
  %98 = lshr i64 %97, 4
  %99 = trunc i64 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %27, align 1
  %101 = icmp eq i64 %85, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %30, align 1
  %103 = lshr i64 %85, 63
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %33, align 1
  %105 = lshr i64 %76, 63
  %106 = xor i64 %103, %105
  %107 = xor i64 %103, %84
  %108 = add nuw nsw i64 %106, %107
  %109 = icmp eq i64 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %85, 532
  %112 = add i64 %72, 44
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  store i8 0, i8* %14, align 1
  %115 = and i32 %114, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %120 = icmp eq i32 %114, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %30, align 1
  %122 = lshr i32 %114, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %120, i64 105, i64 50
  %124 = add i64 %72, %.v189
  store i64 %124, i64* %3, align 8
  br i1 %120, label %block_.L_4b0644, label %block_4b060d

block_4b060d:                                     ; preds = %block_4b05db
  store i64 2, i64* %RAX.i2337, align 8
  store i64 4, i64* %RCX.i2328, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2312 = getelementptr inbounds %union.anon, %union.anon* %125, i64 0, i32 0
  %126 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %126, i64* %RDX.i2312, align 8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2310 = getelementptr inbounds %union.anon, %union.anon* %127, i64 0, i32 0
  %128 = add i64 %126, 12
  %129 = add i64 %124, 21
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI.i2310, align 8
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -35420
  %135 = add i64 %124, 27
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 2, i32* %136, align 4
  %ESI.i2303 = bitcast %union.anon* %127 to i32*
  %137 = load i32, i32* %ESI.i2303, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %3, align 8
  store i64 %138, i64* %RAX.i2337, align 8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %141 = sext i32 %137 to i64
  %142 = lshr i64 %141, 32
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -35420
  %145 = add i64 %139, 9
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RSI.i2310, align 8
  %149 = add i64 %139, 11
  store i64 %149, i64* %3, align 8
  %150 = sext i32 %147 to i64
  %151 = shl nuw i64 %142, 32
  %152 = or i64 %151, %138
  %153 = sdiv i64 %152, %150
  %154 = shl i64 %153, 32
  %155 = ashr exact i64 %154, 32
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %160, label %157

; <label>:157:                                    ; preds = %block_4b060d
  %158 = bitcast %union.anon* %125 to i32*
  %159 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %149, %struct.Memory* %2)
  %.pre = load i32, i32* %158, align 4
  %.pre111 = load i64, i64* %3, align 8
  %.pre112 = load i64, i64* %RSI.i2310, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:160:                                    ; preds = %block_4b060d
  %161 = srem i64 %152, %150
  %162 = and i64 %153, 4294967295
  store i64 %162, i64* %RAX.i2337, align 8
  %163 = and i64 %161, 4294967295
  store i64 %163, i64* %RDX.i2312, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %164 = trunc i64 %161 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %160, %157
  %165 = phi i64 [ %.pre113, %157 ], [ %143, %160 ]
  %166 = phi i64 [ %.pre112, %157 ], [ %148, %160 ]
  %167 = phi i64 [ %.pre111, %157 ], [ %149, %160 ]
  %168 = phi i32 [ %.pre, %157 ], [ %164, %160 ]
  %169 = phi %struct.Memory* [ %159, %157 ], [ %2, %160 ]
  store i8 0, i8* %14, align 1
  %170 = and i32 %168, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %175 = icmp eq i32 %168, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %30, align 1
  %177 = lshr i32 %168, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %ECX.i2289 = bitcast %union.anon* %77 to i32*
  %179 = load i32, i32* %ECX.i2289, align 4
  %180 = zext i32 %179 to i64
  %181 = select i1 %175, i64 %166, i64 %180
  %182 = and i64 %181, 4294967295
  store i64 %182, i64* %RSI.i2310, align 8
  %183 = add i64 %165, -35424
  %184 = trunc i64 %181 to i32
  %185 = add i64 %167, 12
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %183 to i32*
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 18
  br label %block_.L_4b0651

block_.L_4b0644:                                  ; preds = %entry.block_.L_4b0644_crit_edge, %block_4b05db
  %.pre164.pre-phi = phi i64* [ %.pre167, %entry.block_.L_4b0644_crit_edge ], [ %RCX.i2328, %block_4b05db ]
  %.pre163.pre-phi = phi %union.anon* [ %.pre166, %entry.block_.L_4b0644_crit_edge ], [ %77, %block_4b05db ]
  %189 = phi i64 [ %72, %entry.block_.L_4b0644_crit_edge ], [ %124, %block_4b05db ]
  store i64 0, i64* %RAX.i2337, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -35424
  %192 = add i64 %189, 8
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 0, i32* %193, align 4
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 5
  store i64 %195, i64* %3, align 8
  %.pre165 = bitcast %union.anon* %.pre163.pre-phi to i32*
  br label %block_.L_4b0651

block_.L_4b0651:                                  ; preds = %block_.L_4b0644, %routine_idivl__esi.exit
  %ECX.i2259.pre-phi = phi i32* [ %.pre165, %block_.L_4b0644 ], [ %ECX.i2289, %routine_idivl__esi.exit ]
  %RCX.i2273.pre-phi = phi i64* [ %.pre164.pre-phi, %block_.L_4b0644 ], [ %RCX.i2328, %routine_idivl__esi.exit ]
  %storemerge = phi i64 [ %195, %block_.L_4b0644 ], [ %188, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_4b0644 ], [ %169, %routine_idivl__esi.exit ]
  %EAX.i2270.pre-phi = bitcast %union.anon* %56 to i32*
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -35424
  %198 = add i64 %storemerge, 6
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  store i64 1, i64* %RCX.i2273.pre-phi, align 8
  %201 = add i64 %196, -804
  %202 = add i64 %storemerge, 17
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 %200, i32* %203, align 4
  %204 = load i64, i64* %RBP.i, align 8
  %205 = add i64 %204, -35408
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 10
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %205 to i32*
  store i32 0, i32* %208, align 4
  %209 = load i64, i64* %3, align 8
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  store i64 4, i64* %RAX.i2337, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -35428
  %212 = load i32, i32* %ECX.i2259.pre-phi, align 4
  %213 = add i64 %209, 38
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %211 to i32*
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %216 = zext i32 %215 to i64
  %217 = load i64, i64* %3, align 8
  store i64 %216, i64* %RCX.i2273.pre-phi, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -35428
  %220 = add i64 %217, 8
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RAX.i2337, align 8
  %224 = add i64 %217, 10
  store i64 %224, i64* %3, align 8
  %225 = trunc i32 %215 to i5
  switch i5 %225, label %231 [
    i5 0, label %routine_shll__cl___eax.exit2251
    i5 1, label %226
  ]

; <label>:226:                                    ; preds = %block_.L_4b0651
  %227 = shl i32 %222, 1
  %228 = icmp slt i32 %222, 0
  %229 = icmp slt i32 %227, 0
  %230 = xor i1 %228, %229
  br label %240

; <label>:231:                                    ; preds = %block_.L_4b0651
  %232 = and i32 %215, 31
  %233 = zext i32 %232 to i64
  %234 = add nuw nsw i64 %233, 4294967295
  %235 = and i64 %234, 4294967295
  %236 = shl i64 %223, %235
  %237 = trunc i64 %236 to i32
  %238 = icmp slt i32 %237, 0
  %239 = shl i32 %237, 1
  br label %240

; <label>:240:                                    ; preds = %231, %226
  %241 = phi i1 [ %228, %226 ], [ %238, %231 ]
  %242 = phi i1 [ %230, %226 ], [ false, %231 ]
  %243 = phi i32 [ %227, %226 ], [ %239, %231 ]
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX.i2337, align 8
  %245 = zext i1 %241 to i8
  store i8 %245, i8* %14, align 1
  %246 = and i32 %243, 254
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %251 = icmp eq i32 %243, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %30, align 1
  %253 = lshr i32 %243, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %33, align 1
  %255 = zext i1 %242 to i8
  store i8 %255, i8* %39, align 1
  br label %routine_shll__cl___eax.exit2251

routine_shll__cl___eax.exit2251:                  ; preds = %240, %block_.L_4b0651
  %256 = phi i32 [ %243, %240 ], [ %222, %block_.L_4b0651 ]
  store i32 %256, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %257 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %258 = add i32 %257, -1
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX.i2337, align 8
  %260 = icmp eq i32 %257, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = and i32 %258, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i32 %258, %257
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %27, align 1
  %271 = icmp eq i32 %258, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %30, align 1
  %273 = lshr i32 %258, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %33, align 1
  %275 = lshr i32 %257, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %39, align 1
  store i64 %259, i64* %RCX.i2273.pre-phi, align 8
  %280 = add i64 %217, 35
  store i64 %280, i64* %3, align 8
  %281 = load i32, i32* %221, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i2337, align 8
  %283 = add i64 %217, 37
  store i64 %283, i64* %3, align 8
  %284 = trunc i32 %258 to i5
  switch i5 %284, label %290 [
    i5 0, label %routine_shll__cl___eax.exit2235
    i5 1, label %285
  ]

; <label>:285:                                    ; preds = %routine_shll__cl___eax.exit2251
  %286 = shl i32 %281, 1
  %287 = icmp slt i32 %281, 0
  %288 = icmp slt i32 %286, 0
  %289 = xor i1 %287, %288
  br label %299

; <label>:290:                                    ; preds = %routine_shll__cl___eax.exit2251
  %291 = and i32 %258, 31
  %292 = zext i32 %291 to i64
  %293 = add nuw nsw i64 %292, 4294967295
  %294 = and i64 %293, 4294967295
  %295 = shl i64 %282, %294
  %296 = trunc i64 %295 to i32
  %297 = icmp slt i32 %296, 0
  %298 = shl i32 %296, 1
  br label %299

; <label>:299:                                    ; preds = %290, %285
  %300 = phi i1 [ %287, %285 ], [ %297, %290 ]
  %301 = phi i1 [ %289, %285 ], [ false, %290 ]
  %302 = phi i32 [ %286, %285 ], [ %298, %290 ]
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i2337, align 8
  %304 = zext i1 %300 to i8
  store i8 %304, i8* %14, align 1
  %305 = and i32 %302, 254
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %310 = icmp eq i32 %302, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %30, align 1
  %312 = lshr i32 %302, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %33, align 1
  %314 = zext i1 %301 to i8
  store i8 %314, i8* %39, align 1
  br label %routine_shll__cl___eax.exit2235

routine_shll__cl___eax.exit2235:                  ; preds = %299, %routine_shll__cl___eax.exit2251
  %315 = phi i32 [ %302, %299 ], [ %281, %routine_shll__cl___eax.exit2251 ]
  store i32 %315, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %316 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RCX.i2273.pre-phi, align 8
  %318 = add i64 %217, 57
  store i64 %318, i64* %3, align 8
  %319 = load i32, i32* %221, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i2337, align 8
  %321 = add i64 %217, 59
  store i64 %321, i64* %3, align 8
  %322 = trunc i32 %316 to i5
  switch i5 %322, label %328 [
    i5 0, label %routine_shll__cl___eax.exit2224
    i5 1, label %323
  ]

; <label>:323:                                    ; preds = %routine_shll__cl___eax.exit2235
  %324 = shl i32 %319, 1
  %325 = icmp slt i32 %319, 0
  %326 = icmp slt i32 %324, 0
  %327 = xor i1 %325, %326
  br label %337

; <label>:328:                                    ; preds = %routine_shll__cl___eax.exit2235
  %329 = and i32 %316, 31
  %330 = zext i32 %329 to i64
  %331 = add nuw nsw i64 %330, 4294967295
  %332 = and i64 %331, 4294967295
  %333 = shl i64 %320, %332
  %334 = trunc i64 %333 to i32
  %335 = icmp slt i32 %334, 0
  %336 = shl i32 %334, 1
  br label %337

; <label>:337:                                    ; preds = %328, %323
  %338 = phi i1 [ %325, %323 ], [ %335, %328 ]
  %339 = phi i1 [ %327, %323 ], [ false, %328 ]
  %340 = phi i32 [ %324, %323 ], [ %336, %328 ]
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX.i2337, align 8
  %342 = zext i1 %338 to i8
  store i8 %342, i8* %14, align 1
  %343 = and i32 %340, 254
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %348 = icmp eq i32 %340, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %30, align 1
  %350 = lshr i32 %340, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %33, align 1
  %352 = zext i1 %339 to i8
  store i8 %352, i8* %39, align 1
  br label %routine_shll__cl___eax.exit2224

routine_shll__cl___eax.exit2224:                  ; preds = %337, %routine_shll__cl___eax.exit2235
  %353 = phi i32 [ %340, %337 ], [ %319, %routine_shll__cl___eax.exit2235 ]
  %354 = add i64 %218, -796
  %355 = add i64 %217, 65
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 %353, i32* %356, align 4
  %357 = load i64, i64* %3, align 8
  %358 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX.i2273.pre-phi, align 8
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -35428
  %362 = add i64 %357, 13
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RAX.i2337, align 8
  %366 = add i64 %357, 15
  store i64 %366, i64* %3, align 8
  %367 = trunc i32 %358 to i5
  switch i5 %367, label %373 [
    i5 0, label %routine_shll__cl___eax.exit2212
    i5 1, label %368
  ]

; <label>:368:                                    ; preds = %routine_shll__cl___eax.exit2224
  %369 = shl i32 %364, 1
  %370 = icmp slt i32 %364, 0
  %371 = icmp slt i32 %369, 0
  %372 = xor i1 %370, %371
  br label %382

; <label>:373:                                    ; preds = %routine_shll__cl___eax.exit2224
  %374 = and i32 %358, 31
  %375 = zext i32 %374 to i64
  %376 = add nuw nsw i64 %375, 4294967295
  %377 = and i64 %376, 4294967295
  %378 = shl i64 %365, %377
  %379 = trunc i64 %378 to i32
  %380 = icmp slt i32 %379, 0
  %381 = shl i32 %379, 1
  br label %382

; <label>:382:                                    ; preds = %373, %368
  %383 = phi i1 [ %370, %368 ], [ %380, %373 ]
  %384 = phi i1 [ %372, %368 ], [ false, %373 ]
  %385 = phi i32 [ %369, %368 ], [ %381, %373 ]
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RAX.i2337, align 8
  %387 = zext i1 %383 to i8
  store i8 %387, i8* %14, align 1
  %388 = and i32 %385, 254
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %393 = icmp eq i32 %385, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %30, align 1
  %395 = lshr i32 %385, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %33, align 1
  %397 = zext i1 %384 to i8
  store i8 %397, i8* %39, align 1
  br label %routine_shll__cl___eax.exit2212

routine_shll__cl___eax.exit2212:                  ; preds = %382, %routine_shll__cl___eax.exit2224
  %398 = phi i32 [ %385, %382 ], [ %364, %routine_shll__cl___eax.exit2224 ]
  %399 = add i64 %360, -800
  %400 = add i64 %357, 21
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  store i32 %398, i32* %401, align 4
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -8
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 7
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %403 to i32*
  store i32 0, i32* %406, align 4
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2167 = getelementptr inbounds %union.anon, %union.anon* %407, i64 0, i32 0
  %RSI.i2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i2162 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %EDX.i2146 = bitcast %union.anon* %407 to i32*
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_4b06ef

block_.L_4b06ef:                                  ; preds = %block_.L_4b07f0, %routine_shll__cl___eax.exit2212
  %408 = phi i64 [ %862, %block_.L_4b07f0 ], [ %.pre114, %routine_shll__cl___eax.exit2212 ]
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -8
  %411 = add i64 %408, 3
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX.i2337, align 8
  %415 = add i64 %409, -804
  %416 = add i64 %408, 9
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = add i32 %418, 2
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RCX.i2273.pre-phi, align 8
  %421 = lshr i32 %419, 31
  %422 = sub i32 %413, %419
  %423 = icmp ult i32 %413, %419
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %14, align 1
  %425 = and i32 %422, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i32 %419, %413
  %431 = xor i32 %430, %422
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %27, align 1
  %435 = icmp eq i32 %422, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %30, align 1
  %437 = lshr i32 %422, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %33, align 1
  %439 = lshr i32 %413, 31
  %440 = xor i32 %421, %439
  %441 = xor i32 %437, %439
  %442 = add nuw nsw i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %39, align 1
  %445 = icmp ne i8 %438, 0
  %446 = xor i1 %445, %443
  %.v190 = select i1 %446, i64 20, i64 276
  %447 = add i64 %408, %.v190
  store i64 %447, i64* %3, align 8
  br i1 %446, label %block_4b0703, label %block_.L_4b0803

block_4b0703:                                     ; preds = %block_.L_4b06ef
  %448 = add i64 %409, -12
  %449 = add i64 %447, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  store i32 0, i32* %450, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_4b070a

block_.L_4b070a:                                  ; preds = %block_.L_4b07dd, %block_4b0703
  %451 = phi i64 [ %834, %block_.L_4b07dd ], [ %.pre161, %block_4b0703 ]
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -12
  %454 = add i64 %451, 3
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX.i2337, align 8
  %458 = add i64 %452, -8
  %459 = add i64 %451, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  store i64 %462, i64* %RCX.i2273.pre-phi, align 8
  %463 = shl nsw i64 %462, 2
  %464 = add nsw i64 %463, 7489456
  %465 = add i64 %451, 14
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %456, %467
  %469 = icmp ult i32 %456, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %467, %456
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %27, align 1
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %30, align 1
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %33, align 1
  %485 = lshr i32 %456, 31
  %486 = lshr i32 %467, 31
  %487 = xor i32 %486, %485
  %488 = xor i32 %483, %485
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %39, align 1
  %492 = icmp ne i8 %484, 0
  %493 = xor i1 %492, %490
  %.v186 = select i1 %493, i64 20, i64 230
  %494 = add i64 %451, %.v186
  store i64 %494, i64* %3, align 8
  br i1 %493, label %block_4b071e, label %block_.L_4b07f0

block_4b071e:                                     ; preds = %block_.L_4b070a
  %495 = add i64 %452, -16
  %496 = add i64 %494, 7
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 0, i32* %497, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_4b0725

block_.L_4b0725:                                  ; preds = %block_4b072f, %block_4b071e
  %498 = phi i64 [ %804, %block_4b072f ], [ %.pre162, %block_4b071e ]
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -16
  %501 = add i64 %498, 4
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i32 %503, -3
  %505 = icmp ult i32 %503, 3
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %14, align 1
  %507 = and i32 %504, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %21, align 1
  %512 = xor i32 %504, %503
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %27, align 1
  %516 = icmp eq i32 %504, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %30, align 1
  %518 = lshr i32 %504, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %33, align 1
  %520 = lshr i32 %503, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %520
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %39, align 1
  %525 = icmp ne i8 %519, 0
  %526 = xor i1 %525, %523
  %.v187 = select i1 %526, i64 10, i64 184
  %527 = add i64 %498, %.v187
  store i64 %527, i64* %3, align 8
  br i1 %526, label %block_4b072f, label %block_.L_4b07dd

block_4b072f:                                     ; preds = %block_.L_4b0725
  %528 = add i64 %499, -1888
  store i64 %528, i64* %RAX.i2337, align 8
  %529 = add i64 %499, -2976
  store i64 %529, i64* %RCX.i2273.pre-phi, align 8
  %530 = add i64 %499, -796
  %531 = add i64 %527, 20
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RDX.i2167, align 8
  %535 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %535, i64* %RSI.i2165, align 8
  %536 = add i64 %499, -8
  %537 = add i64 %527, 32
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %RDI.i2162, align 8
  %541 = shl nsw i64 %540, 3
  %542 = add i64 %541, %535
  %543 = add i64 %527, 36
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RSI.i2165, align 8
  %546 = add i64 %499, -12
  %547 = add i64 %527, 40
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RDI.i2162, align 8
  %551 = shl nsw i64 %550, 3
  %552 = add i64 %551, %545
  %553 = add i64 %527, 44
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RSI.i2165, align 8
  %556 = add i64 %527, 48
  store i64 %556, i64* %3, align 8
  %557 = load i32, i32* %502, align 4
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RDI.i2162, align 8
  %559 = shl nsw i64 %558, 2
  %560 = add i64 %559, %555
  %561 = add i64 %527, 51
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  store i32 %533, i32* %562, align 4
  %563 = load i64, i64* %3, align 8
  %564 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %564, i64* %RSI.i2165, align 8
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -8
  %567 = add i64 %563, 12
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = sext i32 %569 to i64
  store i64 %570, i64* %RDI.i2162, align 8
  %571 = shl nsw i64 %570, 3
  %572 = add i64 %571, %564
  %573 = add i64 %563, 16
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RSI.i2165, align 8
  %576 = add i64 %565, -12
  %577 = add i64 %563, 20
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RDI.i2162, align 8
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %581, %575
  %583 = add i64 %563, 24
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RSI.i2165, align 8
  %586 = add i64 %565, -16
  %587 = add i64 %563, 28
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %RDI.i2162, align 8
  %591 = shl nsw i64 %590, 2
  %592 = add i64 %591, %585
  %593 = add i64 %563, 35
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  store i32 0, i32* %594, align 4
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -8
  %597 = load i64, i64* %3, align 8
  %598 = add i64 %597, 4
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  %602 = add i64 %597, 11
  store i64 %602, i64* %3, align 8
  %603 = sext i32 %600 to i128
  %604 = and i128 %603, -18446744073709551616
  %605 = zext i64 %601 to i128
  %606 = or i128 %604, %605
  %607 = mul nsw i128 %606, 180
  %608 = trunc i128 %607 to i64
  store i64 %608, i64* %RSI.i2165, align 8
  %609 = sext i64 %608 to i128
  %610 = icmp ne i128 %609, %607
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = trunc i128 %607 to i32
  %613 = and i32 %612, 252
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %618 = lshr i64 %608, 63
  %619 = trunc i64 %618 to i8
  store i8 %619, i8* %33, align 1
  store i8 %611, i8* %39, align 1
  %620 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %621 = add i64 %608, %620
  store i64 %621, i64* %RCX.i2273.pre-phi, align 8
  %622 = icmp ult i64 %621, %620
  %623 = icmp ult i64 %621, %608
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = trunc i64 %621 to i32
  %627 = and i32 %626, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i64 %608, %620
  %633 = xor i64 %632, %621
  %634 = lshr i64 %633, 4
  %635 = trunc i64 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %27, align 1
  %637 = icmp eq i64 %621, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %30, align 1
  %639 = lshr i64 %621, 63
  %640 = trunc i64 %639 to i8
  store i8 %640, i8* %33, align 1
  %641 = lshr i64 %620, 63
  %642 = xor i64 %639, %641
  %643 = xor i64 %639, %618
  %644 = add nuw nsw i64 %642, %643
  %645 = icmp eq i64 %644, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %39, align 1
  %647 = add i64 %595, -12
  %648 = add i64 %597, 18
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = mul nsw i64 %651, 12
  store i64 %652, i64* %RSI.i2165, align 8
  %653 = lshr i64 %652, 63
  %654 = add i64 %652, %621
  store i64 %654, i64* %RCX.i2273.pre-phi, align 8
  %655 = icmp ult i64 %654, %621
  %656 = icmp ult i64 %654, %652
  %657 = or i1 %655, %656
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %14, align 1
  %659 = trunc i64 %654 to i32
  %660 = and i32 %659, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  %665 = xor i64 %652, %621
  %666 = xor i64 %665, %654
  %667 = lshr i64 %666, 4
  %668 = trunc i64 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %27, align 1
  %670 = icmp eq i64 %654, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %30, align 1
  %672 = lshr i64 %654, 63
  %673 = trunc i64 %672 to i8
  store i8 %673, i8* %33, align 1
  %674 = xor i64 %672, %639
  %675 = xor i64 %672, %653
  %676 = add nuw nsw i64 %674, %675
  %677 = icmp eq i64 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %39, align 1
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -16
  %681 = add i64 %597, 29
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  store i64 %684, i64* %RSI.i2165, align 8
  %685 = shl nsw i64 %684, 2
  %686 = add i64 %685, %654
  %687 = add i64 %597, 36
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  store i32 0, i32* %688, align 4
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -796
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, 6
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %690 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RDX.i2167, align 8
  %696 = add i64 %689, -8
  %697 = add i64 %691, 10
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  %701 = mul nsw i64 %700, 180
  store i64 %701, i64* %RCX.i2273.pre-phi, align 8
  %702 = lshr i64 %701, 63
  %703 = load i64, i64* %RAX.i2337, align 8
  %704 = add i64 %701, %703
  store i64 %704, i64* %RAX.i2337, align 8
  %705 = icmp ult i64 %704, %703
  %706 = icmp ult i64 %704, %701
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %14, align 1
  %709 = trunc i64 %704 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i64 %701, %703
  %716 = xor i64 %715, %704
  %717 = lshr i64 %716, 4
  %718 = trunc i64 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %27, align 1
  %720 = icmp eq i64 %704, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %30, align 1
  %722 = lshr i64 %704, 63
  %723 = trunc i64 %722 to i8
  store i8 %723, i8* %33, align 1
  %724 = lshr i64 %703, 63
  %725 = xor i64 %722, %724
  %726 = xor i64 %722, %702
  %727 = add nuw nsw i64 %725, %726
  %728 = icmp eq i64 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %39, align 1
  %730 = add i64 %689, -12
  %731 = add i64 %691, 24
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  %735 = mul nsw i64 %734, 12
  store i64 %735, i64* %RCX.i2273.pre-phi, align 8
  %736 = lshr i64 %735, 63
  %737 = add i64 %735, %704
  store i64 %737, i64* %RAX.i2337, align 8
  %738 = icmp ult i64 %737, %704
  %739 = icmp ult i64 %737, %735
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1
  %742 = trunc i64 %737 to i32
  %743 = and i32 %742, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i64 %735, %704
  %749 = xor i64 %748, %737
  %750 = lshr i64 %749, 4
  %751 = trunc i64 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1
  %753 = icmp eq i64 %737, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i64 %737, 63
  %756 = trunc i64 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = xor i64 %755, %722
  %758 = xor i64 %755, %736
  %759 = add nuw nsw i64 %757, %758
  %760 = icmp eq i64 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %39, align 1
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -16
  %764 = add i64 %691, 35
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %766 to i64
  store i64 %767, i64* %RCX.i2273.pre-phi, align 8
  %768 = shl nsw i64 %767, 2
  %769 = add i64 %768, %737
  %770 = load i32, i32* %EDX.i2146, align 4
  %771 = add i64 %691, 38
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %769 to i32*
  store i32 %770, i32* %772, align 4
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -16
  %775 = load i64, i64* %3, align 8
  %776 = add i64 %775, 3
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = add i32 %778, 1
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX.i2337, align 8
  %781 = icmp eq i32 %778, -1
  %782 = icmp eq i32 %779, 0
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %14, align 1
  %785 = and i32 %779, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  %790 = xor i32 %779, %778
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %27, align 1
  %794 = zext i1 %782 to i8
  store i8 %794, i8* %30, align 1
  %795 = lshr i32 %779, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %33, align 1
  %797 = lshr i32 %778, 31
  %798 = xor i32 %795, %797
  %799 = add nuw nsw i32 %798, %795
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %39, align 1
  %802 = add i64 %775, 9
  store i64 %802, i64* %3, align 8
  store i32 %779, i32* %777, align 4
  %803 = load i64, i64* %3, align 8
  %804 = add i64 %803, -179
  store i64 %804, i64* %3, align 8
  br label %block_.L_4b0725

block_.L_4b07dd:                                  ; preds = %block_.L_4b0725
  %805 = add i64 %499, -12
  %806 = add i64 %527, 8
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, 1
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RAX.i2337, align 8
  %811 = icmp eq i32 %808, -1
  %812 = icmp eq i32 %809, 0
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %809, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %809, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %27, align 1
  %824 = zext i1 %812 to i8
  store i8 %824, i8* %30, align 1
  %825 = lshr i32 %809, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %33, align 1
  %827 = lshr i32 %808, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %825
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %39, align 1
  %832 = add i64 %527, 14
  store i64 %832, i64* %3, align 8
  store i32 %809, i32* %807, align 4
  %833 = load i64, i64* %3, align 8
  %834 = add i64 %833, -225
  store i64 %834, i64* %3, align 8
  br label %block_.L_4b070a

block_.L_4b07f0:                                  ; preds = %block_.L_4b070a
  %835 = add i64 %494, 8
  store i64 %835, i64* %3, align 8
  %836 = load i32, i32* %460, align 4
  %837 = add i32 %836, 1
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i2337, align 8
  %839 = icmp eq i32 %836, -1
  %840 = icmp eq i32 %837, 0
  %841 = or i1 %839, %840
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %837, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %837, %836
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %27, align 1
  %852 = zext i1 %840 to i8
  store i8 %852, i8* %30, align 1
  %853 = lshr i32 %837, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %33, align 1
  %855 = lshr i32 %836, 31
  %856 = xor i32 %853, %855
  %857 = add nuw nsw i32 %856, %853
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %39, align 1
  %860 = add i64 %494, 14
  store i64 %860, i64* %3, align 8
  store i32 %837, i32* %460, align 4
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, -271
  store i64 %862, i64* %3, align 8
  br label %block_.L_4b06ef

block_.L_4b0803:                                  ; preds = %block_.L_4b06ef
  %863 = add i64 %447, 7
  store i64 %863, i64* %3, align 8
  store i32 0, i32* %412, align 4
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_4b080a

block_.L_4b080a:                                  ; preds = %block_.L_4b0cc7, %block_.L_4b0803
  %865 = phi i64 [ %.pre115, %block_.L_4b0803 ], [ %2963, %block_.L_4b0cc7 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4b0803 ], [ %MEMORY.6, %block_.L_4b0cc7 ]
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -8
  %868 = add i64 %865, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i2337, align 8
  %872 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %873 = sub i32 %870, %872
  %874 = icmp ult i32 %870, %872
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = and i32 %873, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %21, align 1
  %881 = xor i32 %872, %870
  %882 = xor i32 %881, %873
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %27, align 1
  %886 = icmp eq i32 %873, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %30, align 1
  %888 = lshr i32 %873, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %33, align 1
  %890 = lshr i32 %870, 31
  %891 = lshr i32 %872, 31
  %892 = xor i32 %891, %890
  %893 = xor i32 %888, %890
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %39, align 1
  %897 = icmp ne i8 %889, 0
  %898 = xor i1 %897, %895
  %.v168 = select i1 %898, i64 16, i64 1232
  %899 = add i64 %865, %.v168
  store i64 %899, i64* %3, align 8
  br i1 %898, label %block_4b081a, label %block_.L_4b0cda

block_4b081a:                                     ; preds = %block_.L_4b080a
  %900 = add i64 %866, -12
  %901 = add i64 %899, 7
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  store i32 0, i32* %902, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_4b0821

block_.L_4b0821:                                  ; preds = %block_.L_4b0cb4, %block_4b081a
  %903 = phi i64 [ %.pre145, %block_4b081a ], [ %2933, %block_.L_4b0cb4 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_4b081a ], [ %MEMORY.11, %block_.L_4b0cb4 ]
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -12
  %906 = add i64 %903, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i2337, align 8
  %910 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %911 = sub i32 %908, %910
  %912 = icmp ult i32 %908, %910
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %14, align 1
  %914 = and i32 %911, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  %919 = xor i32 %910, %908
  %920 = xor i32 %919, %911
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %27, align 1
  %924 = icmp eq i32 %911, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %30, align 1
  %926 = lshr i32 %911, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %33, align 1
  %928 = lshr i32 %908, 31
  %929 = lshr i32 %910, 31
  %930 = xor i32 %929, %928
  %931 = xor i32 %926, %928
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %39, align 1
  %935 = icmp ne i8 %927, 0
  %936 = xor i1 %935, %933
  %.v184 = select i1 %936, i64 16, i64 1190
  %937 = add i64 %903, %.v184
  store i64 %937, i64* %3, align 8
  br i1 %936, label %block_4b0831, label %block_.L_4b0cc7

block_4b0831:                                     ; preds = %block_.L_4b0821
  %938 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %938, i64* %RAX.i2337, align 8
  %939 = add i64 %937, 12
  store i64 %939, i64* %3, align 8
  %940 = load i32, i32* %907, align 4
  %941 = sext i32 %940 to i64
  store i64 %941, i64* %RCX.i2273.pre-phi, align 8
  %942 = shl nsw i64 %941, 3
  %943 = add i64 %942, %938
  %944 = add i64 %937, 16
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RAX.i2337, align 8
  %947 = add i64 %946, 4
  %948 = add i64 %937, 19
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RDX.i2167, align 8
  %952 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %952, i64* %RAX.i2337, align 8
  %953 = add i64 %904, -8
  %954 = add i64 %937, 31
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  store i64 %957, i64* %RCX.i2273.pre-phi, align 8
  %958 = shl nsw i64 %957, 3
  %959 = add i64 %958, %952
  %960 = add i64 %937, 35
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RAX.i2337, align 8
  %963 = add i64 %962, 4
  %964 = add i64 %937, 38
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = sub i32 %950, %966
  %968 = zext i32 %967 to i64
  store i64 %968, i64* %RDX.i2167, align 8
  %969 = lshr i32 %967, 31
  %970 = add i32 %967, 128
  %971 = icmp ult i32 %967, -128
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %14, align 1
  %973 = and i32 %970, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973)
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %21, align 1
  %978 = xor i32 %970, %967
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  store i8 %981, i8* %27, align 1
  %982 = icmp eq i32 %970, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %30, align 1
  %984 = lshr i32 %970, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %33, align 1
  %986 = xor i32 %969, 1
  %987 = xor i32 %984, %969
  %988 = add nuw nsw i32 %987, %986
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %39, align 1
  %991 = icmp ne i8 %985, 0
  %992 = xor i1 %991, %989
  %.v207 = select i1 %992, i64 47, i64 63
  %993 = add i64 %937, %.v207
  store i64 %993, i64* %3, align 8
  br i1 %992, label %block_4b0860, label %block_.L_4b0870

block_4b0860:                                     ; preds = %block_4b0831
  store i64 4294967168, i64* %RAX.i2337, align 8
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -35432
  %996 = add i64 %993, 11
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  store i32 -128, i32* %997, align 4
  %998 = load i64, i64* %3, align 8
  %999 = add i64 %998, 124
  store i64 %999, i64* %3, align 8
  br label %block_.L_4b08e7

block_.L_4b0870:                                  ; preds = %block_4b0831
  %1000 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %1000, i64* %RAX.i2337, align 8
  %1001 = load i64, i64* %RBP.i, align 8
  %1002 = add i64 %1001, -12
  %1003 = add i64 %993, 12
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i2273.pre-phi, align 8
  %1007 = shl nsw i64 %1006, 3
  %1008 = add i64 %1007, %1000
  %1009 = add i64 %993, 16
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i64*
  %1011 = load i64, i64* %1010, align 8
  store i64 %1011, i64* %RAX.i2337, align 8
  %1012 = add i64 %1011, 4
  %1013 = add i64 %993, 19
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RDX.i2167, align 8
  store i64 %952, i64* %RAX.i2337, align 8
  %1017 = add i64 %1001, -8
  %1018 = add i64 %993, 31
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  store i64 %1021, i64* %RCX.i2273.pre-phi, align 8
  %1022 = shl nsw i64 %1021, 3
  %1023 = add i64 %1022, %952
  %1024 = add i64 %993, 35
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %RAX.i2337, align 8
  %1027 = add i64 %1026, 4
  %1028 = add i64 %993, 38
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = sub i32 %1015, %1030
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RDX.i2167, align 8
  %1033 = lshr i32 %1031, 31
  %1034 = add i32 %1031, -127
  %1035 = icmp ult i32 %1031, 127
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %14, align 1
  %1037 = and i32 %1034, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %21, align 1
  %1042 = xor i32 %1031, 16
  %1043 = xor i32 %1042, %1034
  %1044 = lshr i32 %1043, 4
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  store i8 %1046, i8* %27, align 1
  %1047 = icmp eq i32 %1034, 0
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %30, align 1
  %1049 = lshr i32 %1034, 31
  %1050 = trunc i32 %1049 to i8
  store i8 %1050, i8* %33, align 1
  %1051 = xor i32 %1049, %1033
  %1052 = add nuw nsw i32 %1051, %1033
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %39, align 1
  %1055 = icmp ne i8 %1050, 0
  %1056 = xor i1 %1055, %1053
  %1057 = or i1 %1047, %1056
  %.v208 = select i1 %1057, i64 63, i64 47
  %1058 = add i64 %993, %.v208
  store i64 %1058, i64* %3, align 8
  br i1 %1057, label %block_.L_4b08af, label %block_4b089f

block_4b089f:                                     ; preds = %block_.L_4b0870
  store i64 127, i64* %RAX.i2337, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -35436
  %1061 = add i64 %1058, 11
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  store i32 127, i32* %1062, align 4
  %1063 = load i64, i64* %3, align 8
  %1064 = add i64 %1063, 49
  store i64 %1064, i64* %3, align 8
  br label %block_.L_4b08db

block_.L_4b08af:                                  ; preds = %block_.L_4b0870
  %1065 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %1065, i64* %RAX.i2337, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -12
  %1068 = add i64 %1058, 12
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = sext i32 %1070 to i64
  store i64 %1071, i64* %RCX.i2273.pre-phi, align 8
  %1072 = shl nsw i64 %1071, 3
  %1073 = add i64 %1072, %1065
  %1074 = add i64 %1058, 16
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %RAX.i2337, align 8
  %1077 = add i64 %1076, 4
  %1078 = add i64 %1058, 19
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RDX.i2167, align 8
  %1082 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1082, i64* %RAX.i2337, align 8
  %1083 = add i64 %1066, -8
  %1084 = add i64 %1058, 31
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = sext i32 %1086 to i64
  store i64 %1087, i64* %RCX.i2273.pre-phi, align 8
  %1088 = shl nsw i64 %1087, 3
  %1089 = add i64 %1088, %1082
  %1090 = add i64 %1058, 35
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %RAX.i2337, align 8
  %1093 = add i64 %1092, 4
  %1094 = add i64 %1058, 38
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = sub i32 %1080, %1096
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RDX.i2167, align 8
  %1099 = icmp ult i32 %1080, %1096
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1
  %1101 = and i32 %1097, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1
  %1106 = xor i32 %1096, %1080
  %1107 = xor i32 %1106, %1097
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %27, align 1
  %1111 = icmp eq i32 %1097, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i32 %1097, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %33, align 1
  %1115 = lshr i32 %1080, 31
  %1116 = lshr i32 %1096, 31
  %1117 = xor i32 %1116, %1115
  %1118 = xor i32 %1113, %1115
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %39, align 1
  %1122 = add i64 %1066, -35436
  %1123 = add i64 %1058, 44
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  store i32 %1097, i32* %1124, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4b08db

block_.L_4b08db:                                  ; preds = %block_.L_4b08af, %block_4b089f
  %1125 = phi i64 [ %.pre146, %block_.L_4b08af ], [ %1064, %block_4b089f ]
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -35436
  %1128 = add i64 %1125, 6
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i2337, align 8
  %1132 = add i64 %1126, -35432
  %1133 = add i64 %1125, 12
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  store i32 %1130, i32* %1134, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_4b08e7

block_.L_4b08e7:                                  ; preds = %block_.L_4b08db, %block_4b0860
  %1135 = phi i64 [ %.pre147, %block_.L_4b08db ], [ %999, %block_4b0860 ]
  %1136 = load i64, i64* %RBP.i, align 8
  %1137 = add i64 %1136, -35432
  %1138 = add i64 %1135, 6
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i2337, align 8
  %1142 = add i64 %1136, -35412
  %1143 = add i64 %1135, 12
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  store i32 %1140, i32* %1144, align 4
  %1145 = load i64, i64* %3, align 8
  %1146 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1146, i64* %RCX.i2273.pre-phi, align 8
  %1147 = add i64 %1146, 4
  %1148 = add i64 %1145, 11
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i2337, align 8
  %1152 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1152, i64* %RCX.i2273.pre-phi, align 8
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -8
  %1155 = add i64 %1145, 23
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RDX.i2167, align 8
  %1159 = shl nsw i64 %1158, 3
  %1160 = add i64 %1159, %1152
  %1161 = add i64 %1145, 27
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RCX.i2273.pre-phi, align 8
  %1164 = add i64 %1163, 4
  %1165 = add i64 %1145, 30
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sub i32 %1150, %1167
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RAX.i2337, align 8
  %1170 = lshr i32 %1168, 31
  %1171 = add i32 %1168, 128
  %1172 = icmp ult i32 %1168, -128
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %14, align 1
  %1174 = and i32 %1171, 255
  %1175 = tail call i32 @llvm.ctpop.i32(i32 %1174)
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  store i8 %1178, i8* %21, align 1
  %1179 = xor i32 %1171, %1168
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %27, align 1
  %1183 = icmp eq i32 %1171, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %30, align 1
  %1185 = lshr i32 %1171, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %33, align 1
  %1187 = xor i32 %1170, 1
  %1188 = xor i32 %1185, %1170
  %1189 = add nuw nsw i32 %1188, %1187
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %39, align 1
  %1192 = icmp ne i8 %1186, 0
  %1193 = xor i1 %1192, %1190
  %.v209 = select i1 %1193, i64 39, i64 55
  %1194 = add i64 %1145, %.v209
  store i64 %1194, i64* %3, align 8
  br i1 %1193, label %block_4b091a, label %block_.L_4b092a

block_4b091a:                                     ; preds = %block_.L_4b08e7
  store i64 4294967168, i64* %RAX.i2337, align 8
  %1195 = add i64 %1153, -35440
  %1196 = add i64 %1194, 11
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  store i32 -128, i32* %1197, align 4
  %1198 = load i64, i64* %3, align 8
  %1199 = add i64 %1198, 108
  store i64 %1199, i64* %3, align 8
  br label %block_.L_4b0991

block_.L_4b092a:                                  ; preds = %block_.L_4b08e7
  %1200 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1200, i64* %RAX.i2337, align 8
  %1201 = add i64 %1200, 4
  %1202 = add i64 %1194, 11
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RCX.i2273.pre-phi, align 8
  store i64 %1152, i64* %RAX.i2337, align 8
  %1206 = add i64 %1194, 23
  store i64 %1206, i64* %3, align 8
  %1207 = load i32, i32* %1156, align 4
  %1208 = sext i32 %1207 to i64
  store i64 %1208, i64* %RDX.i2167, align 8
  %1209 = shl nsw i64 %1208, 3
  %1210 = add i64 %1209, %1152
  %1211 = add i64 %1194, 27
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RAX.i2337, align 8
  %1214 = add i64 %1213, 4
  %1215 = add i64 %1194, 30
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = sub i32 %1204, %1217
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RCX.i2273.pre-phi, align 8
  %1220 = lshr i32 %1218, 31
  %1221 = add i32 %1218, -127
  %1222 = icmp ult i32 %1218, 127
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = and i32 %1221, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = xor i32 %1218, 16
  %1230 = xor i32 %1229, %1221
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %27, align 1
  %1234 = icmp eq i32 %1221, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %30, align 1
  %1236 = lshr i32 %1221, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %33, align 1
  %1238 = xor i32 %1236, %1220
  %1239 = add nuw nsw i32 %1238, %1220
  %1240 = icmp eq i32 %1239, 2
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %39, align 1
  %1242 = icmp ne i8 %1237, 0
  %1243 = xor i1 %1242, %1240
  %1244 = or i1 %1234, %1243
  %.v210 = select i1 %1244, i64 55, i64 39
  %1245 = add i64 %1194, %.v210
  store i64 %1245, i64* %3, align 8
  br i1 %1244, label %block_.L_4b0961, label %block_4b0951

block_4b0951:                                     ; preds = %block_.L_4b092a
  store i64 127, i64* %RAX.i2337, align 8
  %1246 = load i64, i64* %RBP.i, align 8
  %1247 = add i64 %1246, -35444
  %1248 = add i64 %1245, 11
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  store i32 127, i32* %1249, align 4
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 41
  store i64 %1251, i64* %3, align 8
  br label %block_.L_4b0985

block_.L_4b0961:                                  ; preds = %block_.L_4b092a
  %1252 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1252, i64* %RAX.i2337, align 8
  %1253 = add i64 %1252, 4
  %1254 = add i64 %1245, 11
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RCX.i2273.pre-phi, align 8
  %1258 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %1258, i64* %RAX.i2337, align 8
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -8
  %1261 = add i64 %1245, 23
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i32*
  %1263 = load i32, i32* %1262, align 4
  %1264 = sext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i2167, align 8
  %1265 = shl nsw i64 %1264, 3
  %1266 = add i64 %1265, %1258
  %1267 = add i64 %1245, 27
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RAX.i2337, align 8
  %1270 = add i64 %1269, 4
  %1271 = add i64 %1245, 30
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = sub i32 %1256, %1273
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RCX.i2273.pre-phi, align 8
  %1276 = icmp ult i32 %1256, %1273
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %14, align 1
  %1278 = and i32 %1274, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %21, align 1
  %1283 = xor i32 %1273, %1256
  %1284 = xor i32 %1283, %1274
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %27, align 1
  %1288 = icmp eq i32 %1274, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1274, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  %1292 = lshr i32 %1256, 31
  %1293 = lshr i32 %1273, 31
  %1294 = xor i32 %1293, %1292
  %1295 = xor i32 %1290, %1292
  %1296 = add nuw nsw i32 %1295, %1294
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %39, align 1
  %1299 = add i64 %1259, -35444
  %1300 = add i64 %1245, 36
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  store i32 %1274, i32* %1301, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_4b0985

block_.L_4b0985:                                  ; preds = %block_.L_4b0961, %block_4b0951
  %1302 = phi i64 [ %.pre148, %block_.L_4b0961 ], [ %1251, %block_4b0951 ]
  %1303 = load i64, i64* %RBP.i, align 8
  %1304 = add i64 %1303, -35444
  %1305 = add i64 %1302, 6
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RAX.i2337, align 8
  %1309 = add i64 %1303, -35440
  %1310 = add i64 %1302, 12
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  store i32 %1307, i32* %1311, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_4b0991

block_.L_4b0991:                                  ; preds = %block_.L_4b0985, %block_4b091a
  %1312 = phi i64 [ %.pre149, %block_.L_4b0985 ], [ %1199, %block_4b091a ]
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -35440
  %1315 = add i64 %1312, 6
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i2337, align 8
  %1319 = add i64 %1313, -35416
  %1320 = add i64 %1312, 12
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  store i32 %1317, i32* %1321, align 4
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -40
  %1324 = load i64, i64* %3, align 8
  %1325 = add i64 %1324, 7
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1323 to i32*
  store i32 0, i32* %1326, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_4b09a4

block_.L_4b09a4:                                  ; preds = %block_.L_4b0ca1, %block_.L_4b0991
  %1327 = phi i64 [ %.pre150, %block_.L_4b0991 ], [ %2903, %block_.L_4b0ca1 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4b0991 ], [ %MEMORY.16, %block_.L_4b0ca1 ]
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -40
  %1330 = add i64 %1327, 4
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  %1332 = load i32, i32* %1331, align 4
  %1333 = add i32 %1332, -3
  %1334 = icmp ult i32 %1332, 3
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %14, align 1
  %1336 = and i32 %1333, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %21, align 1
  %1341 = xor i32 %1333, %1332
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %27, align 1
  %1345 = icmp eq i32 %1333, 0
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %30, align 1
  %1347 = lshr i32 %1333, 31
  %1348 = trunc i32 %1347 to i8
  store i8 %1348, i8* %33, align 1
  %1349 = lshr i32 %1332, 31
  %1350 = xor i32 %1347, %1349
  %1351 = add nuw nsw i32 %1350, %1349
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %39, align 1
  %1354 = icmp ne i8 %1348, 0
  %1355 = xor i1 %1354, %1352
  %.v185 = select i1 %1355, i64 10, i64 784
  %1356 = add i64 %1327, %.v185
  store i64 %1356, i64* %3, align 8
  br i1 %1355, label %block_4b09ae, label %block_.L_4b0cb4

block_4b09ae:                                     ; preds = %block_.L_4b09a4
  %1357 = add i64 %1328, -35412
  %1358 = add i64 %1356, 7
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  store i8 0, i8* %14, align 1
  %1361 = and i32 %1360, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1366 = icmp eq i32 %1360, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i32 %1360, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v211 = select i1 %1366, i64 13, i64 196
  %1370 = add i64 %1356, %.v211
  store i64 %1370, i64* %3, align 8
  br i1 %1366, label %block_4b09bb, label %block_.L_4b0a72

block_4b09bb:                                     ; preds = %block_4b09ae
  %1371 = add i64 %1328, -35392
  store i64 %1371, i64* %RAX.i2337, align 8
  %1372 = add i64 %1328, -19184
  store i64 %1372, i64* %RCX.i2273.pre-phi, align 8
  %1373 = add i64 %1328, -16484
  store i64 %1373, i64* %RDX.i2167, align 8
  %1374 = icmp ult i64 %1373, %1372
  %1375 = icmp ult i64 %1373, 2700
  %1376 = or i1 %1374, %1375
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %14, align 1
  %1378 = trunc i64 %1373 to i32
  %1379 = and i32 %1378, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %21, align 1
  %1384 = xor i64 %1372, %1373
  %1385 = lshr i64 %1384, 4
  %1386 = trunc i64 %1385 to i8
  %1387 = and i8 %1386, 1
  store i8 %1387, i8* %27, align 1
  %1388 = icmp eq i64 %1373, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %30, align 1
  %1390 = lshr i64 %1373, 63
  %1391 = trunc i64 %1390 to i8
  store i8 %1391, i8* %33, align 1
  %1392 = lshr i64 %1372, 63
  %1393 = xor i64 %1390, %1392
  %1394 = add nuw nsw i64 %1393, %1390
  %1395 = icmp eq i64 %1394, 2
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %39, align 1
  %1397 = add i64 %1328, -8
  %1398 = add i64 %1370, 28
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = sext i32 %1400 to i64
  %1402 = mul nsw i64 %1401, 180
  store i64 %1402, i64* %RSI.i2165, align 8
  %1403 = lshr i64 %1402, 63
  %1404 = add i64 %1402, %1373
  store i64 %1404, i64* %RDX.i2167, align 8
  %1405 = icmp ult i64 %1404, %1373
  %1406 = icmp ult i64 %1404, %1402
  %1407 = or i1 %1405, %1406
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %14, align 1
  %1409 = trunc i64 %1404 to i32
  %1410 = and i32 %1409, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  %1415 = xor i64 %1402, %1373
  %1416 = xor i64 %1415, %1404
  %1417 = lshr i64 %1416, 4
  %1418 = trunc i64 %1417 to i8
  %1419 = and i8 %1418, 1
  store i8 %1419, i8* %27, align 1
  %1420 = icmp eq i64 %1404, 0
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %30, align 1
  %1422 = lshr i64 %1404, 63
  %1423 = trunc i64 %1422 to i8
  store i8 %1423, i8* %33, align 1
  %1424 = xor i64 %1422, %1390
  %1425 = xor i64 %1422, %1403
  %1426 = add nuw nsw i64 %1424, %1425
  %1427 = icmp eq i64 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %39, align 1
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -12
  %1431 = add i64 %1370, 42
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = mul nsw i64 %1434, 12
  store i64 %1435, i64* %RSI.i2165, align 8
  %1436 = lshr i64 %1435, 63
  %1437 = add i64 %1435, %1404
  store i64 %1437, i64* %RDX.i2167, align 8
  %1438 = icmp ult i64 %1437, %1404
  %1439 = icmp ult i64 %1437, %1435
  %1440 = or i1 %1438, %1439
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %14, align 1
  %1442 = trunc i64 %1437 to i32
  %1443 = and i32 %1442, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  %1448 = xor i64 %1435, %1404
  %1449 = xor i64 %1448, %1437
  %1450 = lshr i64 %1449, 4
  %1451 = trunc i64 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %27, align 1
  %1453 = icmp eq i64 %1437, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %30, align 1
  %1455 = lshr i64 %1437, 63
  %1456 = trunc i64 %1455 to i8
  store i8 %1456, i8* %33, align 1
  %1457 = xor i64 %1455, %1422
  %1458 = xor i64 %1455, %1436
  %1459 = add nuw nsw i64 %1457, %1458
  %1460 = icmp eq i64 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %39, align 1
  %1462 = add i64 %1429, -40
  %1463 = add i64 %1370, 53
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = sext i32 %1465 to i64
  store i64 %1466, i64* %RSI.i2165, align 8
  %1467 = shl nsw i64 %1466, 2
  %1468 = add i64 %1467, %1437
  %1469 = add i64 %1370, 60
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  store i32 32, i32* %1470, align 4
  %1471 = load i64, i64* %RBP.i, align 8
  %1472 = add i64 %1471, -8
  %1473 = load i64, i64* %3, align 8
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1472 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = sext i32 %1476 to i64
  %1478 = add i64 %1473, 11
  store i64 %1478, i64* %3, align 8
  %1479 = sext i32 %1476 to i128
  %1480 = and i128 %1479, -18446744073709551616
  %1481 = zext i64 %1477 to i128
  %1482 = or i128 %1480, %1481
  %1483 = mul nsw i128 %1482, 180
  %1484 = trunc i128 %1483 to i64
  store i64 %1484, i64* %RDX.i2167, align 8
  %1485 = sext i64 %1484 to i128
  %1486 = icmp ne i128 %1485, %1483
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = trunc i128 %1483 to i32
  %1489 = and i32 %1488, 252
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1494 = lshr i64 %1484, 63
  %1495 = trunc i64 %1494 to i8
  store i8 %1495, i8* %33, align 1
  store i8 %1487, i8* %39, align 1
  %1496 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %1497 = add i64 %1484, %1496
  store i64 %1497, i64* %RCX.i2273.pre-phi, align 8
  %1498 = icmp ult i64 %1497, %1496
  %1499 = icmp ult i64 %1497, %1484
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = trunc i64 %1497 to i32
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %21, align 1
  %1508 = xor i64 %1484, %1496
  %1509 = xor i64 %1508, %1497
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %27, align 1
  %1513 = icmp eq i64 %1497, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %30, align 1
  %1515 = lshr i64 %1497, 63
  %1516 = trunc i64 %1515 to i8
  store i8 %1516, i8* %33, align 1
  %1517 = lshr i64 %1496, 63
  %1518 = xor i64 %1515, %1517
  %1519 = xor i64 %1515, %1494
  %1520 = add nuw nsw i64 %1518, %1519
  %1521 = icmp eq i64 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %39, align 1
  %1523 = add i64 %1471, -12
  %1524 = add i64 %1473, 18
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = mul nsw i64 %1527, 12
  store i64 %1528, i64* %RDX.i2167, align 8
  %1529 = lshr i64 %1528, 63
  %1530 = add i64 %1528, %1497
  store i64 %1530, i64* %RCX.i2273.pre-phi, align 8
  %1531 = icmp ult i64 %1530, %1497
  %1532 = icmp ult i64 %1530, %1528
  %1533 = or i1 %1531, %1532
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %14, align 1
  %1535 = trunc i64 %1530 to i32
  %1536 = and i32 %1535, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  %1541 = xor i64 %1528, %1497
  %1542 = xor i64 %1541, %1530
  %1543 = lshr i64 %1542, 4
  %1544 = trunc i64 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %27, align 1
  %1546 = icmp eq i64 %1530, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %30, align 1
  %1548 = lshr i64 %1530, 63
  %1549 = trunc i64 %1548 to i8
  store i8 %1549, i8* %33, align 1
  %1550 = xor i64 %1548, %1515
  %1551 = xor i64 %1548, %1529
  %1552 = add nuw nsw i64 %1550, %1551
  %1553 = icmp eq i64 %1552, 2
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %39, align 1
  %1555 = load i64, i64* %RBP.i, align 8
  %1556 = add i64 %1555, -40
  %1557 = add i64 %1473, 29
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RDX.i2167, align 8
  %1561 = shl nsw i64 %1560, 2
  %1562 = add i64 %1561, %1530
  %1563 = add i64 %1473, 36
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  store i32 32, i32* %1564, align 4
  %1565 = load i64, i64* %RAX.i2337, align 8
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1565, 2700
  store i64 %1567, i64* %RCX.i2273.pre-phi, align 8
  %1568 = icmp ugt i64 %1565, -2701
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = trunc i64 %1567 to i32
  %1571 = and i32 %1570, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i64 %1567, %1565
  %1577 = lshr i64 %1576, 4
  %1578 = trunc i64 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %27, align 1
  %1580 = icmp eq i64 %1567, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %30, align 1
  %1582 = lshr i64 %1567, 63
  %1583 = trunc i64 %1582 to i8
  store i8 %1583, i8* %33, align 1
  %1584 = lshr i64 %1565, 63
  %1585 = xor i64 %1582, %1584
  %1586 = add nuw nsw i64 %1585, %1582
  %1587 = icmp eq i64 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %39, align 1
  %1589 = load i64, i64* %RBP.i, align 8
  %1590 = add i64 %1589, -8
  %1591 = add i64 %1566, 14
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = sext i32 %1593 to i64
  %1595 = mul nsw i64 %1594, 180
  store i64 %1595, i64* %RDX.i2167, align 8
  %1596 = lshr i64 %1595, 63
  %1597 = add i64 %1595, %1567
  store i64 %1597, i64* %RCX.i2273.pre-phi, align 8
  %1598 = icmp ult i64 %1597, %1567
  %1599 = icmp ult i64 %1597, %1595
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %14, align 1
  %1602 = trunc i64 %1597 to i32
  %1603 = and i32 %1602, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %21, align 1
  %1608 = xor i64 %1595, %1567
  %1609 = xor i64 %1608, %1597
  %1610 = lshr i64 %1609, 4
  %1611 = trunc i64 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %27, align 1
  %1613 = icmp eq i64 %1597, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %30, align 1
  %1615 = lshr i64 %1597, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %33, align 1
  %1617 = xor i64 %1615, %1582
  %1618 = xor i64 %1615, %1596
  %1619 = add nuw nsw i64 %1617, %1618
  %1620 = icmp eq i64 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %39, align 1
  %1622 = add i64 %1589, -12
  %1623 = add i64 %1566, 28
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = mul nsw i64 %1626, 12
  store i64 %1627, i64* %RDX.i2167, align 8
  %1628 = lshr i64 %1627, 63
  %1629 = add i64 %1627, %1597
  store i64 %1629, i64* %RCX.i2273.pre-phi, align 8
  %1630 = icmp ult i64 %1629, %1597
  %1631 = icmp ult i64 %1629, %1627
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
  %1640 = xor i64 %1627, %1597
  %1641 = xor i64 %1640, %1629
  %1642 = lshr i64 %1641, 4
  %1643 = trunc i64 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %27, align 1
  %1645 = icmp eq i64 %1629, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %30, align 1
  %1647 = lshr i64 %1629, 63
  %1648 = trunc i64 %1647 to i8
  store i8 %1648, i8* %33, align 1
  %1649 = xor i64 %1647, %1615
  %1650 = xor i64 %1647, %1628
  %1651 = add nuw nsw i64 %1649, %1650
  %1652 = icmp eq i64 %1651, 2
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %39, align 1
  %1654 = load i64, i64* %RBP.i, align 8
  %1655 = add i64 %1654, -40
  %1656 = add i64 %1566, 39
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  %1659 = sext i32 %1658 to i64
  store i64 %1659, i64* %RDX.i2167, align 8
  %1660 = shl nsw i64 %1659, 2
  %1661 = add i64 %1660, %1629
  %1662 = add i64 %1566, 46
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  store i32 0, i32* %1663, align 4
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -8
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 4
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1665 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = mul nsw i64 %1670, 180
  store i64 %1671, i64* %RCX.i2273.pre-phi, align 8
  %1672 = lshr i64 %1671, 63
  %1673 = load i64, i64* %RAX.i2337, align 8
  %1674 = add i64 %1671, %1673
  store i64 %1674, i64* %RAX.i2337, align 8
  %1675 = icmp ult i64 %1674, %1673
  %1676 = icmp ult i64 %1674, %1671
  %1677 = or i1 %1675, %1676
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %14, align 1
  %1679 = trunc i64 %1674 to i32
  %1680 = and i32 %1679, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %21, align 1
  %1685 = xor i64 %1671, %1673
  %1686 = xor i64 %1685, %1674
  %1687 = lshr i64 %1686, 4
  %1688 = trunc i64 %1687 to i8
  %1689 = and i8 %1688, 1
  store i8 %1689, i8* %27, align 1
  %1690 = icmp eq i64 %1674, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %30, align 1
  %1692 = lshr i64 %1674, 63
  %1693 = trunc i64 %1692 to i8
  store i8 %1693, i8* %33, align 1
  %1694 = lshr i64 %1673, 63
  %1695 = xor i64 %1692, %1694
  %1696 = xor i64 %1692, %1672
  %1697 = add nuw nsw i64 %1695, %1696
  %1698 = icmp eq i64 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %39, align 1
  %1700 = add i64 %1664, -12
  %1701 = add i64 %1666, 18
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = sext i32 %1703 to i64
  %1705 = mul nsw i64 %1704, 12
  store i64 %1705, i64* %RCX.i2273.pre-phi, align 8
  %1706 = lshr i64 %1705, 63
  %1707 = add i64 %1705, %1674
  store i64 %1707, i64* %RAX.i2337, align 8
  %1708 = icmp ult i64 %1707, %1674
  %1709 = icmp ult i64 %1707, %1705
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = trunc i64 %1707 to i32
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %21, align 1
  %1718 = xor i64 %1705, %1674
  %1719 = xor i64 %1718, %1707
  %1720 = lshr i64 %1719, 4
  %1721 = trunc i64 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %27, align 1
  %1723 = icmp eq i64 %1707, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %30, align 1
  %1725 = lshr i64 %1707, 63
  %1726 = trunc i64 %1725 to i8
  store i8 %1726, i8* %33, align 1
  %1727 = xor i64 %1725, %1692
  %1728 = xor i64 %1725, %1706
  %1729 = add nuw nsw i64 %1727, %1728
  %1730 = icmp eq i64 %1729, 2
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %39, align 1
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -40
  %1734 = add i64 %1666, 29
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  %1736 = load i32, i32* %1735, align 4
  %1737 = sext i32 %1736 to i64
  store i64 %1737, i64* %RCX.i2273.pre-phi, align 8
  %1738 = shl nsw i64 %1737, 2
  %1739 = add i64 %1738, %1707
  %1740 = add i64 %1666, 36
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i32*
  store i32 0, i32* %1741, align 4
  %1742 = load i64, i64* %3, align 8
  %1743 = add i64 %1742, 564
  store i64 %1743, i64* %3, align 8
  br label %block_.L_4b0ca1

block_.L_4b0a72:                                  ; preds = %block_4b09ae
  store i64 2, i64* %RAX.i2337, align 8
  %1744 = add i64 %1370, 11
  store i64 %1744, i64* %3, align 8
  %1745 = load i32, i32* %1359, align 4
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RCX.i2273.pre-phi, align 8
  %1747 = add i64 %1328, -35448
  %1748 = add i64 %1370, 17
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  store i32 2, i32* %1749, align 4
  %1750 = load i32, i32* %ECX.i2259.pre-phi, align 4
  %1751 = zext i32 %1750 to i64
  %1752 = load i64, i64* %3, align 8
  store i64 %1751, i64* %RAX.i2337, align 8
  %1753 = sext i32 %1750 to i64
  %1754 = lshr i64 %1753, 32
  store i64 %1754, i64* %864, align 8
  %1755 = load i64, i64* %RBP.i, align 8
  %1756 = add i64 %1755, -35448
  %1757 = add i64 %1752, 9
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RCX.i2273.pre-phi, align 8
  %1761 = add i64 %1752, 11
  store i64 %1761, i64* %3, align 8
  %1762 = sext i32 %1759 to i64
  %1763 = shl nuw i64 %1754, 32
  %1764 = or i64 %1763, %1751
  %1765 = sdiv i64 %1764, %1762
  %1766 = shl i64 %1765, 32
  %1767 = ashr exact i64 %1766, 32
  %1768 = icmp eq i64 %1765, %1767
  br i1 %1768, label %1771, label %1769

; <label>:1769:                                   ; preds = %block_.L_4b0a72
  %1770 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1761, %struct.Memory* %MEMORY.11)
  %.pre151 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1771:                                   ; preds = %block_.L_4b0a72
  %1772 = srem i64 %1764, %1762
  %1773 = and i64 %1765, 4294967295
  store i64 %1773, i64* %RAX.i2337, align 8
  %1774 = and i64 %1772, 4294967295
  store i64 %1774, i64* %RDX.i2167, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1775 = trunc i64 %1765 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1771, %1769
  %1776 = phi i64 [ %.pre152, %1769 ], [ %1761, %1771 ]
  %1777 = phi i32 [ %.pre151, %1769 ], [ %1775, %1771 ]
  %1778 = phi %struct.Memory* [ %1770, %1769 ], [ %MEMORY.11, %1771 ]
  %1779 = zext i32 %1777 to i64
  store i64 %1779, i64* %RDI.i2162, align 8
  %1780 = add i64 %1776, -719502
  %1781 = add i64 %1776, 7
  %1782 = load i64, i64* %6, align 8
  %1783 = add i64 %1782, -8
  %1784 = inttoptr i64 %1783 to i64*
  store i64 %1781, i64* %1784, align 8
  store i64 %1783, i64* %6, align 8
  store i64 %1780, i64* %3, align 8
  %1785 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1778)
  %1786 = load i64, i64* %RAX.i2337, align 8
  %1787 = load i64, i64* %3, align 8
  %1788 = trunc i64 %1786 to i32
  %1789 = add i32 %1788, 16384
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i2337, align 8
  %1791 = icmp ugt i32 %1788, -16385
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %14, align 1
  %1793 = and i32 %1789, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  %1798 = xor i32 %1789, %1788
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %27, align 1
  %1802 = icmp eq i32 %1789, 0
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %30, align 1
  %1804 = lshr i32 %1789, 31
  %1805 = trunc i32 %1804 to i8
  store i8 %1805, i8* %33, align 1
  %1806 = lshr i32 %1788, 31
  %1807 = xor i32 %1804, %1806
  %1808 = add nuw nsw i32 %1807, %1804
  %1809 = icmp eq i32 %1808, 2
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %39, align 1
  %1811 = sext i32 %1789 to i64
  %1812 = lshr i64 %1811, 32
  store i64 %1812, i64* %864, align 8
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -35412
  %1815 = add i64 %1787, 12
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = sext i32 %1817 to i64
  %1819 = shl nuw i64 %1812, 32
  %1820 = or i64 %1819, %1790
  %1821 = sdiv i64 %1820, %1818
  %1822 = shl i64 %1821, 32
  %1823 = ashr exact i64 %1822, 32
  %1824 = icmp eq i64 %1821, %1823
  br i1 %1824, label %1827, label %1825

; <label>:1825:                                   ; preds = %routine_idivl__ecx.exit
  %1826 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1815, %struct.Memory* %1785)
  %.pre153 = load i64, i64* %RBP.i, align 8
  %.pre154 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x8a54__rbp_.exit

; <label>:1827:                                   ; preds = %routine_idivl__ecx.exit
  %1828 = srem i64 %1820, %1818
  %1829 = and i64 %1821, 4294967295
  store i64 %1829, i64* %RAX.i2337, align 8
  %1830 = and i64 %1828, 4294967295
  store i64 %1830, i64* %RDX.i2167, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1831 = trunc i64 %1821 to i32
  br label %routine_idivl_MINUS0x8a54__rbp_.exit

routine_idivl_MINUS0x8a54__rbp_.exit:             ; preds = %1827, %1825
  %1832 = phi i64 [ %.pre155, %1825 ], [ %1815, %1827 ]
  %1833 = phi i32 [ %.pre154, %1825 ], [ %1831, %1827 ]
  %1834 = phi i64 [ %.pre153, %1825 ], [ %1813, %1827 ]
  %1835 = phi %struct.Memory* [ %1826, %1825 ], [ %1785, %1827 ]
  %1836 = add i64 %1834, -20
  %1837 = add i64 %1832, 3
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  store i32 %1833, i32* %1838, align 4
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -20
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1840 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i2337, align 8
  %1846 = add i64 %1839, -35416
  %1847 = add i64 %1841, 10
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = mul i32 %1849, %1844
  %1851 = add i32 %1850, 32
  %1852 = zext i32 %1851 to i64
  %1853 = shl nuw i64 %1852, 32
  %1854 = ashr i64 %1853, 37
  %1855 = lshr i64 %1854, 1
  %1856 = and i64 %1855, 4294967295
  store i64 %1856, i64* %RAX.i2337, align 8
  %1857 = trunc i64 %1855 to i32
  %1858 = add i32 %1857, 1024
  %1859 = icmp ult i32 %1857, -1024
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %14, align 1
  %1861 = and i32 %1858, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  %1866 = xor i32 %1858, %1857
  %1867 = lshr i32 %1866, 4
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %27, align 1
  %1870 = icmp eq i32 %1858, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %30, align 1
  %1872 = lshr i32 %1858, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %33, align 1
  %1874 = lshr i64 %1854, 32
  %1875 = trunc i64 %1874 to i32
  %1876 = and i32 %1875, 1
  %1877 = xor i32 %1876, 1
  %1878 = xor i32 %1872, %1876
  %1879 = add nuw nsw i32 %1878, %1877
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %39, align 1
  %1882 = icmp ne i8 %1873, 0
  %1883 = xor i1 %1882, %1880
  %.v212 = select i1 %1883, i64 27, i64 43
  %1884 = add i64 %1841, %.v212
  store i64 %1884, i64* %3, align 8
  br i1 %1883, label %block_4b0abf, label %block_.L_4b0acf

block_4b0abf:                                     ; preds = %routine_idivl_MINUS0x8a54__rbp_.exit
  store i64 4294966272, i64* %RAX.i2337, align 8
  %1885 = load i64, i64* %RBP.i, align 8
  %1886 = add i64 %1885, -35452
  %1887 = add i64 %1884, 11
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  store i32 -1024, i32* %1888, align 4
  %1889 = load i64, i64* %3, align 8
  %1890 = add i64 %1889, 82
  store i64 %1890, i64* %3, align 8
  br label %block_.L_4b0b1c

block_.L_4b0acf:                                  ; preds = %routine_idivl_MINUS0x8a54__rbp_.exit
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -20
  %1893 = add i64 %1884, 3
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RAX.i2337, align 8
  %1897 = add i64 %1891, -35416
  %1898 = add i64 %1884, 10
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = mul i32 %1900, %1895
  %1902 = add i32 %1901, 32
  %1903 = zext i32 %1902 to i64
  %1904 = shl nuw i64 %1903, 32
  %1905 = ashr i64 %1904, 37
  %1906 = lshr i64 %1905, 1
  %1907 = and i64 %1906, 4294967295
  store i64 %1907, i64* %RAX.i2337, align 8
  %1908 = trunc i64 %1906 to i32
  %1909 = add i32 %1908, -1023
  %1910 = icmp ult i32 %1908, 1023
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %14, align 1
  %1912 = and i32 %1909, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %21, align 1
  %1917 = xor i32 %1908, 16
  %1918 = xor i32 %1917, %1909
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1909, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1909, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i64 %1905, 32
  %1927 = trunc i64 %1926 to i32
  %1928 = and i32 %1927, 1
  %1929 = xor i32 %1924, %1928
  %1930 = add nuw nsw i32 %1929, %1928
  %1931 = icmp eq i32 %1930, 2
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %39, align 1
  %1933 = icmp ne i8 %1925, 0
  %1934 = xor i1 %1933, %1931
  %1935 = or i1 %1922, %1934
  %.v213 = select i1 %1935, i64 43, i64 27
  %1936 = add i64 %1884, %.v213
  store i64 %1936, i64* %3, align 8
  br i1 %1935, label %block_.L_4b0afa, label %block_4b0aea

block_4b0aea:                                     ; preds = %block_.L_4b0acf
  store i64 1023, i64* %RAX.i2337, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -35456
  %1939 = add i64 %1936, 11
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  store i32 1023, i32* %1940, align 4
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 27
  store i64 %1942, i64* %3, align 8
  br label %block_.L_4b0b10

block_.L_4b0afa:                                  ; preds = %block_.L_4b0acf
  %1943 = load i64, i64* %RBP.i, align 8
  %1944 = add i64 %1943, -20
  %1945 = add i64 %1936, 3
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i32*
  %1947 = load i32, i32* %1946, align 4
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RAX.i2337, align 8
  %1949 = add i64 %1943, -35416
  %1950 = add i64 %1936, 10
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = mul i32 %1952, %1947
  %1954 = add i32 %1953, 32
  %1955 = zext i32 %1954 to i64
  %1956 = shl nuw i64 %1955, 32
  %1957 = ashr i64 %1956, 37
  %1958 = lshr i64 %1957, 1
  %1959 = trunc i64 %1957 to i8
  %1960 = and i8 %1959, 1
  %1961 = trunc i64 %1958 to i32
  %1962 = and i64 %1958, 4294967295
  store i64 %1962, i64* %RAX.i2337, align 8
  store i8 %1960, i8* %14, align 1
  %1963 = and i32 %1961, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1968 = icmp eq i32 %1961, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %30, align 1
  %1970 = lshr i64 %1957, 32
  %1971 = trunc i64 %1970 to i8
  %1972 = and i8 %1971, 1
  store i8 %1972, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1973 = add i64 %1943, -35456
  %1974 = trunc i64 %1958 to i32
  %1975 = add i64 %1936, 22
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1973 to i32*
  store i32 %1974, i32* %1976, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_4b0b10

block_.L_4b0b10:                                  ; preds = %block_.L_4b0afa, %block_4b0aea
  %1977 = phi i64 [ %.pre156, %block_.L_4b0afa ], [ %1942, %block_4b0aea ]
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -35456
  %1980 = add i64 %1977, 6
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = zext i32 %1982 to i64
  store i64 %1983, i64* %RAX.i2337, align 8
  %1984 = add i64 %1978, -35452
  %1985 = add i64 %1977, 12
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  store i32 %1982, i32* %1986, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_4b0b1c

block_.L_4b0b1c:                                  ; preds = %block_.L_4b0b10, %block_4b0abf
  %1987 = phi i64 [ %.pre157, %block_.L_4b0b10 ], [ %1890, %block_4b0abf ]
  %1988 = load i64, i64* %RBP.i, align 8
  %1989 = add i64 %1988, -35452
  %1990 = add i64 %1987, 6
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RAX.i2337, align 8
  %1994 = add i64 %1988, -19184
  store i64 %1994, i64* %RCX.i2273.pre-phi, align 8
  %1995 = add i64 %1988, -24
  %1996 = add i64 %1987, 16
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  store i32 %1992, i32* %1997, align 4
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -24
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = add i64 %2000, 6
  store i64 %2004, i64* %3, align 8
  %2005 = sext i32 %2003 to i64
  %2006 = ashr i64 %2005, 1
  %2007 = lshr i64 %2006, 1
  %2008 = trunc i64 %2006 to i8
  %2009 = and i8 %2008, 1
  %2010 = trunc i64 %2007 to i32
  %2011 = and i64 %2007, 4294967295
  store i64 %2011, i64* %RAX.i2337, align 8
  store i8 %2009, i8* %14, align 1
  %2012 = and i32 %2010, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2017 = icmp eq i32 %2010, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %30, align 1
  %2019 = lshr i64 %2006, 32
  %2020 = trunc i64 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2022 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %2023 = add i64 %2022, 2700
  store i64 %2023, i64* %RDX.i2167, align 8
  %2024 = icmp ugt i64 %2022, -2701
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %14, align 1
  %2026 = trunc i64 %2023 to i32
  %2027 = and i32 %2026, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  %2032 = xor i64 %2023, %2022
  %2033 = lshr i64 %2032, 4
  %2034 = trunc i64 %2033 to i8
  %2035 = and i8 %2034, 1
  store i8 %2035, i8* %27, align 1
  %2036 = icmp eq i64 %2023, 0
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %30, align 1
  %2038 = lshr i64 %2023, 63
  %2039 = trunc i64 %2038 to i8
  store i8 %2039, i8* %33, align 1
  %2040 = lshr i64 %2022, 63
  %2041 = xor i64 %2038, %2040
  %2042 = add nuw nsw i64 %2041, %2038
  %2043 = icmp eq i64 %2042, 2
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %39, align 1
  %2045 = add i64 %1998, -8
  %2046 = add i64 %2000, 20
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = sext i32 %2048 to i64
  %2050 = mul nsw i64 %2049, 180
  store i64 %2050, i64* %RSI.i2165, align 8
  %2051 = lshr i64 %2050, 63
  %2052 = add i64 %2050, %2023
  store i64 %2052, i64* %RDX.i2167, align 8
  %2053 = icmp ult i64 %2052, %2023
  %2054 = icmp ult i64 %2052, %2050
  %2055 = or i1 %2053, %2054
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %14, align 1
  %2057 = trunc i64 %2052 to i32
  %2058 = and i32 %2057, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %21, align 1
  %2063 = xor i64 %2050, %2023
  %2064 = xor i64 %2063, %2052
  %2065 = lshr i64 %2064, 4
  %2066 = trunc i64 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %27, align 1
  %2068 = icmp eq i64 %2052, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %30, align 1
  %2070 = lshr i64 %2052, 63
  %2071 = trunc i64 %2070 to i8
  store i8 %2071, i8* %33, align 1
  %2072 = xor i64 %2070, %2038
  %2073 = xor i64 %2070, %2051
  %2074 = add nuw nsw i64 %2072, %2073
  %2075 = icmp eq i64 %2074, 2
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %39, align 1
  %2077 = load i64, i64* %RBP.i, align 8
  %2078 = add i64 %2077, -12
  %2079 = add i64 %2000, 34
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = sext i32 %2081 to i64
  %2083 = mul nsw i64 %2082, 12
  store i64 %2083, i64* %RSI.i2165, align 8
  %2084 = lshr i64 %2083, 63
  %2085 = add i64 %2083, %2052
  store i64 %2085, i64* %RDX.i2167, align 8
  %2086 = icmp ult i64 %2085, %2052
  %2087 = icmp ult i64 %2085, %2083
  %2088 = or i1 %2086, %2087
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %14, align 1
  %2090 = trunc i64 %2085 to i32
  %2091 = and i32 %2090, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %21, align 1
  %2096 = xor i64 %2083, %2052
  %2097 = xor i64 %2096, %2085
  %2098 = lshr i64 %2097, 4
  %2099 = trunc i64 %2098 to i8
  %2100 = and i8 %2099, 1
  store i8 %2100, i8* %27, align 1
  %2101 = icmp eq i64 %2085, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %30, align 1
  %2103 = lshr i64 %2085, 63
  %2104 = trunc i64 %2103 to i8
  store i8 %2104, i8* %33, align 1
  %2105 = xor i64 %2103, %2070
  %2106 = xor i64 %2103, %2084
  %2107 = add nuw nsw i64 %2105, %2106
  %2108 = icmp eq i64 %2107, 2
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %39, align 1
  %2110 = add i64 %2077, -40
  %2111 = add i64 %2000, 45
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = sext i32 %2113 to i64
  store i64 %2114, i64* %RSI.i2165, align 8
  %2115 = shl nsw i64 %2114, 2
  %2116 = add i64 %2115, %2085
  %2117 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %2118 = add i64 %2000, 48
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2116 to i32*
  store i32 %2117, i32* %2119, align 4
  %2120 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2120, 2700
  store i64 %2122, i64* %RCX.i2273.pre-phi, align 8
  %2123 = icmp ugt i64 %2120, -2701
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %14, align 1
  %2125 = trunc i64 %2122 to i32
  %2126 = and i32 %2125, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i64 %2122, %2120
  %2132 = lshr i64 %2131, 4
  %2133 = trunc i64 %2132 to i8
  %2134 = and i8 %2133, 1
  store i8 %2134, i8* %27, align 1
  %2135 = icmp eq i64 %2122, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %30, align 1
  %2137 = lshr i64 %2122, 63
  %2138 = trunc i64 %2137 to i8
  store i8 %2138, i8* %33, align 1
  %2139 = lshr i64 %2120, 63
  %2140 = xor i64 %2137, %2139
  %2141 = add nuw nsw i64 %2140, %2137
  %2142 = icmp eq i64 %2141, 2
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %39, align 1
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -8
  %2146 = add i64 %2121, 11
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = sext i32 %2148 to i64
  %2150 = mul nsw i64 %2149, 180
  store i64 %2150, i64* %RDX.i2167, align 8
  %2151 = lshr i64 %2150, 63
  %2152 = add i64 %2150, %2122
  store i64 %2152, i64* %RCX.i2273.pre-phi, align 8
  %2153 = icmp ult i64 %2152, %2122
  %2154 = icmp ult i64 %2152, %2150
  %2155 = or i1 %2153, %2154
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %14, align 1
  %2157 = trunc i64 %2152 to i32
  %2158 = and i32 %2157, 255
  %2159 = tail call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  store i8 %2162, i8* %21, align 1
  %2163 = xor i64 %2150, %2122
  %2164 = xor i64 %2163, %2152
  %2165 = lshr i64 %2164, 4
  %2166 = trunc i64 %2165 to i8
  %2167 = and i8 %2166, 1
  store i8 %2167, i8* %27, align 1
  %2168 = icmp eq i64 %2152, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %30, align 1
  %2170 = lshr i64 %2152, 63
  %2171 = trunc i64 %2170 to i8
  store i8 %2171, i8* %33, align 1
  %2172 = xor i64 %2170, %2137
  %2173 = xor i64 %2170, %2151
  %2174 = add nuw nsw i64 %2172, %2173
  %2175 = icmp eq i64 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %39, align 1
  %2177 = add i64 %2144, -12
  %2178 = add i64 %2121, 25
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  %2180 = load i32, i32* %2179, align 4
  %2181 = sext i32 %2180 to i64
  %2182 = mul nsw i64 %2181, 12
  store i64 %2182, i64* %RDX.i2167, align 8
  %2183 = lshr i64 %2182, 63
  %2184 = add i64 %2182, %2152
  store i64 %2184, i64* %RCX.i2273.pre-phi, align 8
  %2185 = icmp ult i64 %2184, %2152
  %2186 = icmp ult i64 %2184, %2182
  %2187 = or i1 %2185, %2186
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %14, align 1
  %2189 = trunc i64 %2184 to i32
  %2190 = and i32 %2189, 255
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  %2195 = xor i64 %2182, %2152
  %2196 = xor i64 %2195, %2184
  %2197 = lshr i64 %2196, 4
  %2198 = trunc i64 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %27, align 1
  %2200 = icmp eq i64 %2184, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %30, align 1
  %2202 = lshr i64 %2184, 63
  %2203 = trunc i64 %2202 to i8
  store i8 %2203, i8* %33, align 1
  %2204 = xor i64 %2202, %2170
  %2205 = xor i64 %2202, %2183
  %2206 = add nuw nsw i64 %2204, %2205
  %2207 = icmp eq i64 %2206, 2
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %39, align 1
  %2209 = load i64, i64* %RBP.i, align 8
  %2210 = add i64 %2209, -40
  %2211 = add i64 %2121, 36
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = sext i32 %2213 to i64
  store i64 %2214, i64* %RDX.i2167, align 8
  %2215 = shl nsw i64 %2214, 2
  %2216 = add i64 %2215, %2184
  %2217 = add i64 %2121, 40
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i32*
  %2219 = load i32, i32* %2218, align 4
  %2220 = add i32 %2219, 64
  %2221 = icmp ult i32 %2219, -64
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %14, align 1
  %2223 = and i32 %2220, 255
  %2224 = tail call i32 @llvm.ctpop.i32(i32 %2223)
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  %2227 = xor i8 %2226, 1
  store i8 %2227, i8* %21, align 1
  %2228 = xor i32 %2220, %2219
  %2229 = lshr i32 %2228, 4
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %27, align 1
  %2232 = icmp eq i32 %2220, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %30, align 1
  %2234 = lshr i32 %2220, 31
  %2235 = trunc i32 %2234 to i8
  store i8 %2235, i8* %33, align 1
  %2236 = lshr i32 %2219, 31
  %2237 = xor i32 %2236, 1
  %2238 = xor i32 %2234, %2236
  %2239 = add nuw nsw i32 %2238, %2237
  %2240 = icmp eq i32 %2239, 2
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %39, align 1
  %2242 = icmp ne i8 %2235, 0
  %2243 = xor i1 %2242, %2240
  %.v214 = select i1 %2243, i64 101, i64 46
  %2244 = add i64 %2121, %.v214
  store i64 %2244, i64* %3, align 8
  br i1 %2243, label %block_.L_4b0bc1, label %block_4b0b8a

block_4b0b8a:                                     ; preds = %block_.L_4b0b1c
  %2245 = add i64 %2209, -19184
  %2246 = add i64 %2209, -16484
  store i64 %2246, i64* %RAX.i2337, align 8
  %2247 = icmp ult i64 %2246, %2245
  %2248 = icmp ult i64 %2246, 2700
  %2249 = or i1 %2247, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %14, align 1
  %2251 = trunc i64 %2246 to i32
  %2252 = and i32 %2251, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252)
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %21, align 1
  %2257 = xor i64 %2245, %2246
  %2258 = lshr i64 %2257, 4
  %2259 = trunc i64 %2258 to i8
  %2260 = and i8 %2259, 1
  store i8 %2260, i8* %27, align 1
  %2261 = icmp eq i64 %2246, 0
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %30, align 1
  %2263 = lshr i64 %2246, 63
  %2264 = trunc i64 %2263 to i8
  store i8 %2264, i8* %33, align 1
  %2265 = lshr i64 %2245, 63
  %2266 = xor i64 %2263, %2265
  %2267 = add nuw nsw i64 %2266, %2263
  %2268 = icmp eq i64 %2267, 2
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %39, align 1
  %2270 = add i64 %2209, -8
  %2271 = add i64 %2244, 17
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  %2274 = sext i32 %2273 to i64
  %2275 = mul nsw i64 %2274, 180
  store i64 %2275, i64* %RCX.i2273.pre-phi, align 8
  %2276 = lshr i64 %2275, 63
  %2277 = add i64 %2275, %2246
  store i64 %2277, i64* %RAX.i2337, align 8
  %2278 = icmp ult i64 %2277, %2246
  %2279 = icmp ult i64 %2277, %2275
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %14, align 1
  %2282 = trunc i64 %2277 to i32
  %2283 = and i32 %2282, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i64 %2275, %2246
  %2289 = xor i64 %2288, %2277
  %2290 = lshr i64 %2289, 4
  %2291 = trunc i64 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %27, align 1
  %2293 = icmp eq i64 %2277, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %30, align 1
  %2295 = lshr i64 %2277, 63
  %2296 = trunc i64 %2295 to i8
  store i8 %2296, i8* %33, align 1
  %2297 = xor i64 %2295, %2263
  %2298 = xor i64 %2295, %2276
  %2299 = add nuw nsw i64 %2297, %2298
  %2300 = icmp eq i64 %2299, 2
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %39, align 1
  %2302 = load i64, i64* %RBP.i, align 8
  %2303 = add i64 %2302, -12
  %2304 = add i64 %2244, 31
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = sext i32 %2306 to i64
  %2308 = mul nsw i64 %2307, 12
  store i64 %2308, i64* %RCX.i2273.pre-phi, align 8
  %2309 = lshr i64 %2308, 63
  %2310 = add i64 %2308, %2277
  store i64 %2310, i64* %RAX.i2337, align 8
  %2311 = icmp ult i64 %2310, %2277
  %2312 = icmp ult i64 %2310, %2308
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %14, align 1
  %2315 = trunc i64 %2310 to i32
  %2316 = and i32 %2315, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %21, align 1
  %2321 = xor i64 %2308, %2277
  %2322 = xor i64 %2321, %2310
  %2323 = lshr i64 %2322, 4
  %2324 = trunc i64 %2323 to i8
  %2325 = and i8 %2324, 1
  store i8 %2325, i8* %27, align 1
  %2326 = icmp eq i64 %2310, 0
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %30, align 1
  %2328 = lshr i64 %2310, 63
  %2329 = trunc i64 %2328 to i8
  store i8 %2329, i8* %33, align 1
  %2330 = xor i64 %2328, %2295
  %2331 = xor i64 %2328, %2309
  %2332 = add nuw nsw i64 %2330, %2331
  %2333 = icmp eq i64 %2332, 2
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %39, align 1
  %2335 = add i64 %2302, -40
  %2336 = add i64 %2244, 42
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RCX.i2273.pre-phi, align 8
  %2340 = shl nsw i64 %2339, 2
  %2341 = add i64 %2340, %2310
  %2342 = add i64 %2244, 49
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = add i32 %2344, -128
  %2346 = icmp ult i32 %2344, 128
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %14, align 1
  %2348 = and i32 %2345, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %21, align 1
  %2353 = xor i32 %2345, %2344
  %2354 = lshr i32 %2353, 4
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  store i8 %2356, i8* %27, align 1
  %2357 = icmp eq i32 %2345, 0
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %30, align 1
  %2359 = lshr i32 %2345, 31
  %2360 = trunc i32 %2359 to i8
  store i8 %2360, i8* %33, align 1
  %2361 = lshr i32 %2344, 31
  %2362 = xor i32 %2359, %2361
  %2363 = add nuw nsw i32 %2362, %2361
  %2364 = icmp eq i32 %2363, 2
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %39, align 1
  %2366 = icmp ne i8 %2360, 0
  %2367 = xor i1 %2366, %2364
  %2368 = or i1 %2357, %2367
  %.v215 = select i1 %2368, i64 104, i64 55
  %2369 = add i64 %2244, %.v215
  store i64 %2369, i64* %3, align 8
  br i1 %2368, label %block_.L_4b0bf2, label %block_4b0b8a.block_.L_4b0bc1_crit_edge

block_4b0b8a.block_.L_4b0bc1_crit_edge:           ; preds = %block_4b0b8a
  %.pre158 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4b0bc1

block_.L_4b0bc1:                                  ; preds = %block_4b0b8a.block_.L_4b0bc1_crit_edge, %block_.L_4b0b1c
  %2370 = phi i64 [ %2369, %block_4b0b8a.block_.L_4b0bc1_crit_edge ], [ %2244, %block_.L_4b0b1c ]
  %2371 = phi i64 [ %.pre158, %block_4b0b8a.block_.L_4b0bc1_crit_edge ], [ %2209, %block_.L_4b0b1c ]
  %2372 = add i64 %2371, -19184
  %2373 = add i64 %2371, -16484
  store i64 %2373, i64* %RAX.i2337, align 8
  %2374 = icmp ult i64 %2373, %2372
  %2375 = icmp ult i64 %2373, 2700
  %2376 = or i1 %2374, %2375
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %14, align 1
  %2378 = trunc i64 %2373 to i32
  %2379 = and i32 %2378, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i64 %2372, %2373
  %2385 = lshr i64 %2384, 4
  %2386 = trunc i64 %2385 to i8
  %2387 = and i8 %2386, 1
  store i8 %2387, i8* %27, align 1
  %2388 = icmp eq i64 %2373, 0
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %30, align 1
  %2390 = lshr i64 %2373, 63
  %2391 = trunc i64 %2390 to i8
  store i8 %2391, i8* %33, align 1
  %2392 = lshr i64 %2372, 63
  %2393 = xor i64 %2390, %2392
  %2394 = add nuw nsw i64 %2393, %2390
  %2395 = icmp eq i64 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %39, align 1
  %2397 = add i64 %2371, -8
  %2398 = add i64 %2370, 17
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = sext i32 %2400 to i64
  %2402 = mul nsw i64 %2401, 180
  store i64 %2402, i64* %RCX.i2273.pre-phi, align 8
  %2403 = lshr i64 %2402, 63
  %2404 = add i64 %2402, %2373
  store i64 %2404, i64* %RAX.i2337, align 8
  %2405 = icmp ult i64 %2404, %2373
  %2406 = icmp ult i64 %2404, %2402
  %2407 = or i1 %2405, %2406
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %14, align 1
  %2409 = trunc i64 %2404 to i32
  %2410 = and i32 %2409, 255
  %2411 = tail call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  store i8 %2414, i8* %21, align 1
  %2415 = xor i64 %2402, %2373
  %2416 = xor i64 %2415, %2404
  %2417 = lshr i64 %2416, 4
  %2418 = trunc i64 %2417 to i8
  %2419 = and i8 %2418, 1
  store i8 %2419, i8* %27, align 1
  %2420 = icmp eq i64 %2404, 0
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %30, align 1
  %2422 = lshr i64 %2404, 63
  %2423 = trunc i64 %2422 to i8
  store i8 %2423, i8* %33, align 1
  %2424 = xor i64 %2422, %2390
  %2425 = xor i64 %2422, %2403
  %2426 = add nuw nsw i64 %2424, %2425
  %2427 = icmp eq i64 %2426, 2
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %39, align 1
  %2429 = load i64, i64* %RBP.i, align 8
  %2430 = add i64 %2429, -12
  %2431 = add i64 %2370, 31
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = sext i32 %2433 to i64
  %2435 = mul nsw i64 %2434, 12
  store i64 %2435, i64* %RCX.i2273.pre-phi, align 8
  %2436 = lshr i64 %2435, 63
  %2437 = add i64 %2435, %2404
  store i64 %2437, i64* %RAX.i2337, align 8
  %2438 = icmp ult i64 %2437, %2404
  %2439 = icmp ult i64 %2437, %2435
  %2440 = or i1 %2438, %2439
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %14, align 1
  %2442 = trunc i64 %2437 to i32
  %2443 = and i32 %2442, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %21, align 1
  %2448 = xor i64 %2435, %2404
  %2449 = xor i64 %2448, %2437
  %2450 = lshr i64 %2449, 4
  %2451 = trunc i64 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %27, align 1
  %2453 = icmp eq i64 %2437, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %30, align 1
  %2455 = lshr i64 %2437, 63
  %2456 = trunc i64 %2455 to i8
  store i8 %2456, i8* %33, align 1
  %2457 = xor i64 %2455, %2422
  %2458 = xor i64 %2455, %2436
  %2459 = add nuw nsw i64 %2457, %2458
  %2460 = icmp eq i64 %2459, 2
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %39, align 1
  %2462 = add i64 %2429, -40
  %2463 = add i64 %2370, 42
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = sext i32 %2465 to i64
  store i64 %2466, i64* %RCX.i2273.pre-phi, align 8
  %2467 = shl nsw i64 %2466, 2
  %2468 = add i64 %2467, %2437
  %2469 = add i64 %2370, 49
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i32*
  store i32 32, i32* %2470, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_4b0bf2

block_.L_4b0bf2:                                  ; preds = %block_.L_4b0bc1, %block_4b0b8a
  %2471 = phi i64 [ %.pre159, %block_.L_4b0bc1 ], [ %2369, %block_4b0b8a ]
  %2472 = load i64, i64* %RBP.i, align 8
  %2473 = add i64 %2472, -35392
  store i64 %2473, i64* %RAX.i2337, align 8
  %2474 = add i64 %2472, -19184
  store i64 %2474, i64* %RCX.i2273.pre-phi, align 8
  store i64 64, i64* %RDX.i2167, align 8
  %2475 = add i64 %2472, -16484
  store i64 %2475, i64* %RSI.i2165, align 8
  %2476 = icmp ult i64 %2475, %2474
  %2477 = icmp ult i64 %2475, 2700
  %2478 = or i1 %2476, %2477
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %14, align 1
  %2480 = trunc i64 %2475 to i32
  %2481 = and i32 %2480, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %21, align 1
  %2486 = xor i64 %2474, %2475
  %2487 = lshr i64 %2486, 4
  %2488 = trunc i64 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %27, align 1
  %2490 = icmp eq i64 %2475, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %30, align 1
  %2492 = lshr i64 %2475, 63
  %2493 = trunc i64 %2492 to i8
  store i8 %2493, i8* %33, align 1
  %2494 = lshr i64 %2474, 63
  %2495 = xor i64 %2492, %2494
  %2496 = add nuw nsw i64 %2495, %2492
  %2497 = icmp eq i64 %2496, 2
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %39, align 1
  %2499 = add i64 %2472, -8
  %2500 = add i64 %2471, 33
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = sext i32 %2502 to i64
  %2504 = mul nsw i64 %2503, 180
  store i64 %2504, i64* %RDI.i2162, align 8
  %2505 = lshr i64 %2504, 63
  %2506 = add i64 %2504, %2475
  store i64 %2506, i64* %RSI.i2165, align 8
  %2507 = icmp ult i64 %2506, %2475
  %2508 = icmp ult i64 %2506, %2504
  %2509 = or i1 %2507, %2508
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %14, align 1
  %2511 = trunc i64 %2506 to i32
  %2512 = and i32 %2511, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %21, align 1
  %2517 = xor i64 %2504, %2475
  %2518 = xor i64 %2517, %2506
  %2519 = lshr i64 %2518, 4
  %2520 = trunc i64 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %27, align 1
  %2522 = icmp eq i64 %2506, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %30, align 1
  %2524 = lshr i64 %2506, 63
  %2525 = trunc i64 %2524 to i8
  store i8 %2525, i8* %33, align 1
  %2526 = xor i64 %2524, %2492
  %2527 = xor i64 %2524, %2505
  %2528 = add nuw nsw i64 %2526, %2527
  %2529 = icmp eq i64 %2528, 2
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %39, align 1
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -12
  %2533 = add i64 %2471, 47
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = sext i32 %2535 to i64
  %2537 = mul nsw i64 %2536, 12
  store i64 %2537, i64* %RDI.i2162, align 8
  %2538 = lshr i64 %2537, 63
  %2539 = add i64 %2537, %2506
  store i64 %2539, i64* %RSI.i2165, align 8
  %2540 = icmp ult i64 %2539, %2506
  %2541 = icmp ult i64 %2539, %2537
  %2542 = or i1 %2540, %2541
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %14, align 1
  %2544 = trunc i64 %2539 to i32
  %2545 = and i32 %2544, 255
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %21, align 1
  %2550 = xor i64 %2537, %2506
  %2551 = xor i64 %2550, %2539
  %2552 = lshr i64 %2551, 4
  %2553 = trunc i64 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %27, align 1
  %2555 = icmp eq i64 %2539, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %30, align 1
  %2557 = lshr i64 %2539, 63
  %2558 = trunc i64 %2557 to i8
  store i8 %2558, i8* %33, align 1
  %2559 = xor i64 %2557, %2524
  %2560 = xor i64 %2557, %2538
  %2561 = add nuw nsw i64 %2559, %2560
  %2562 = icmp eq i64 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = add i64 %2531, -40
  %2565 = add i64 %2471, 58
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = sext i32 %2567 to i64
  store i64 %2568, i64* %RDI.i2162, align 8
  %2569 = load i64, i64* %RDX.i2167, align 8
  %2570 = shl nsw i64 %2568, 2
  %2571 = add i64 %2539, %2570
  %2572 = add i64 %2471, 61
  store i64 %2572, i64* %3, align 8
  %2573 = trunc i64 %2569 to i32
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = sub i32 %2573, %2575
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RDX.i2167, align 8
  %2578 = icmp ult i32 %2573, %2575
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %14, align 1
  %2580 = and i32 %2576, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i32 %2575, %2573
  %2586 = xor i32 %2585, %2576
  %2587 = lshr i32 %2586, 4
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  store i8 %2589, i8* %27, align 1
  %2590 = icmp eq i32 %2576, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %30, align 1
  %2592 = lshr i32 %2576, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %33, align 1
  %2594 = lshr i32 %2573, 31
  %2595 = lshr i32 %2575, 31
  %2596 = xor i32 %2595, %2594
  %2597 = xor i32 %2592, %2594
  %2598 = add nuw nsw i32 %2597, %2596
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %39, align 1
  %2601 = load i64, i64* %RBP.i, align 8
  %2602 = add i64 %2601, -8
  %2603 = add i64 %2471, 65
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = sext i32 %2605 to i64
  %2607 = add i64 %2471, 72
  store i64 %2607, i64* %3, align 8
  %2608 = sext i32 %2605 to i128
  %2609 = and i128 %2608, -18446744073709551616
  %2610 = zext i64 %2606 to i128
  %2611 = or i128 %2609, %2610
  %2612 = mul nsw i128 %2611, 180
  %2613 = trunc i128 %2612 to i64
  store i64 %2613, i64* %RSI.i2165, align 8
  %2614 = sext i64 %2613 to i128
  %2615 = icmp ne i128 %2614, %2612
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %14, align 1
  %2617 = trunc i128 %2612 to i32
  %2618 = and i32 %2617, 252
  %2619 = tail call i32 @llvm.ctpop.i32(i32 %2618)
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  store i8 %2622, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2623 = lshr i64 %2613, 63
  %2624 = trunc i64 %2623 to i8
  store i8 %2624, i8* %33, align 1
  store i8 %2616, i8* %39, align 1
  %2625 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %2626 = add i64 %2613, %2625
  store i64 %2626, i64* %RCX.i2273.pre-phi, align 8
  %2627 = icmp ult i64 %2626, %2625
  %2628 = icmp ult i64 %2626, %2613
  %2629 = or i1 %2627, %2628
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %14, align 1
  %2631 = trunc i64 %2626 to i32
  %2632 = and i32 %2631, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i64 %2613, %2625
  %2638 = xor i64 %2637, %2626
  %2639 = lshr i64 %2638, 4
  %2640 = trunc i64 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %27, align 1
  %2642 = icmp eq i64 %2626, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %30, align 1
  %2644 = lshr i64 %2626, 63
  %2645 = trunc i64 %2644 to i8
  store i8 %2645, i8* %33, align 1
  %2646 = lshr i64 %2625, 63
  %2647 = xor i64 %2644, %2646
  %2648 = xor i64 %2644, %2623
  %2649 = add nuw nsw i64 %2647, %2648
  %2650 = icmp eq i64 %2649, 2
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %39, align 1
  %2652 = add i64 %2601, -12
  %2653 = add i64 %2471, 79
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = sext i32 %2655 to i64
  %2657 = mul nsw i64 %2656, 12
  store i64 %2657, i64* %RSI.i2165, align 8
  %2658 = lshr i64 %2657, 63
  %2659 = add i64 %2657, %2626
  store i64 %2659, i64* %RCX.i2273.pre-phi, align 8
  %2660 = icmp ult i64 %2659, %2626
  %2661 = icmp ult i64 %2659, %2657
  %2662 = or i1 %2660, %2661
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %14, align 1
  %2664 = trunc i64 %2659 to i32
  %2665 = and i32 %2664, 255
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %21, align 1
  %2670 = xor i64 %2657, %2626
  %2671 = xor i64 %2670, %2659
  %2672 = lshr i64 %2671, 4
  %2673 = trunc i64 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %27, align 1
  %2675 = icmp eq i64 %2659, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %30, align 1
  %2677 = lshr i64 %2659, 63
  %2678 = trunc i64 %2677 to i8
  store i8 %2678, i8* %33, align 1
  %2679 = xor i64 %2677, %2644
  %2680 = xor i64 %2677, %2658
  %2681 = add nuw nsw i64 %2679, %2680
  %2682 = icmp eq i64 %2681, 2
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %39, align 1
  %2684 = load i64, i64* %RBP.i, align 8
  %2685 = add i64 %2684, -40
  %2686 = add i64 %2471, 90
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RSI.i2165, align 8
  %2690 = shl nsw i64 %2689, 2
  %2691 = add i64 %2690, %2659
  %2692 = load i32, i32* %EDX.i2146, align 4
  %2693 = add i64 %2471, 93
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2691 to i32*
  store i32 %2692, i32* %2694, align 4
  %2695 = load i64, i64* %RAX.i2337, align 8
  %2696 = load i64, i64* %3, align 8
  %2697 = add i64 %2695, 2700
  store i64 %2697, i64* %RCX.i2273.pre-phi, align 8
  %2698 = icmp ugt i64 %2695, -2701
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %14, align 1
  %2700 = trunc i64 %2697 to i32
  %2701 = and i32 %2700, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701)
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %21, align 1
  %2706 = xor i64 %2697, %2695
  %2707 = lshr i64 %2706, 4
  %2708 = trunc i64 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %27, align 1
  %2710 = icmp eq i64 %2697, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %30, align 1
  %2712 = lshr i64 %2697, 63
  %2713 = trunc i64 %2712 to i8
  store i8 %2713, i8* %33, align 1
  %2714 = lshr i64 %2695, 63
  %2715 = xor i64 %2712, %2714
  %2716 = add nuw nsw i64 %2715, %2712
  %2717 = icmp eq i64 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %39, align 1
  %2719 = load i64, i64* %RBP.i, align 8
  %2720 = add i64 %2719, -8
  %2721 = add i64 %2696, 14
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = sext i32 %2723 to i64
  %2725 = mul nsw i64 %2724, 180
  store i64 %2725, i64* %RSI.i2165, align 8
  %2726 = lshr i64 %2725, 63
  %2727 = add i64 %2725, %2697
  store i64 %2727, i64* %RCX.i2273.pre-phi, align 8
  %2728 = icmp ult i64 %2727, %2697
  %2729 = icmp ult i64 %2727, %2725
  %2730 = or i1 %2728, %2729
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %14, align 1
  %2732 = trunc i64 %2727 to i32
  %2733 = and i32 %2732, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %21, align 1
  %2738 = xor i64 %2725, %2697
  %2739 = xor i64 %2738, %2727
  %2740 = lshr i64 %2739, 4
  %2741 = trunc i64 %2740 to i8
  %2742 = and i8 %2741, 1
  store i8 %2742, i8* %27, align 1
  %2743 = icmp eq i64 %2727, 0
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %30, align 1
  %2745 = lshr i64 %2727, 63
  %2746 = trunc i64 %2745 to i8
  store i8 %2746, i8* %33, align 1
  %2747 = xor i64 %2745, %2712
  %2748 = xor i64 %2745, %2726
  %2749 = add nuw nsw i64 %2747, %2748
  %2750 = icmp eq i64 %2749, 2
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %39, align 1
  %2752 = add i64 %2719, -12
  %2753 = add i64 %2696, 28
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = sext i32 %2755 to i64
  %2757 = mul nsw i64 %2756, 12
  store i64 %2757, i64* %RSI.i2165, align 8
  %2758 = lshr i64 %2757, 63
  %2759 = add i64 %2757, %2727
  store i64 %2759, i64* %RCX.i2273.pre-phi, align 8
  %2760 = icmp ult i64 %2759, %2727
  %2761 = icmp ult i64 %2759, %2757
  %2762 = or i1 %2760, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = trunc i64 %2759 to i32
  %2765 = and i32 %2764, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = xor i64 %2757, %2727
  %2771 = xor i64 %2770, %2759
  %2772 = lshr i64 %2771, 4
  %2773 = trunc i64 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %27, align 1
  %2775 = icmp eq i64 %2759, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %30, align 1
  %2777 = lshr i64 %2759, 63
  %2778 = trunc i64 %2777 to i8
  store i8 %2778, i8* %33, align 1
  %2779 = xor i64 %2777, %2745
  %2780 = xor i64 %2777, %2758
  %2781 = add nuw nsw i64 %2779, %2780
  %2782 = icmp eq i64 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %39, align 1
  %2784 = load i64, i64* %RBP.i, align 8
  %2785 = add i64 %2784, -40
  %2786 = add i64 %2696, 39
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = sext i32 %2788 to i64
  store i64 %2789, i64* %RSI.i2165, align 8
  %2790 = shl nsw i64 %2789, 2
  %2791 = add i64 %2790, %2759
  %2792 = add i64 %2696, 46
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  store i32 0, i32* %2793, align 4
  %2794 = load i64, i64* %RBP.i, align 8
  %2795 = add i64 %2794, -8
  %2796 = load i64, i64* %3, align 8
  %2797 = add i64 %2796, 4
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2795 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = sext i32 %2799 to i64
  %2801 = mul nsw i64 %2800, 180
  store i64 %2801, i64* %RCX.i2273.pre-phi, align 8
  %2802 = lshr i64 %2801, 63
  %2803 = load i64, i64* %RAX.i2337, align 8
  %2804 = add i64 %2801, %2803
  store i64 %2804, i64* %RAX.i2337, align 8
  %2805 = icmp ult i64 %2804, %2803
  %2806 = icmp ult i64 %2804, %2801
  %2807 = or i1 %2805, %2806
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %14, align 1
  %2809 = trunc i64 %2804 to i32
  %2810 = and i32 %2809, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %21, align 1
  %2815 = xor i64 %2801, %2803
  %2816 = xor i64 %2815, %2804
  %2817 = lshr i64 %2816, 4
  %2818 = trunc i64 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %27, align 1
  %2820 = icmp eq i64 %2804, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %30, align 1
  %2822 = lshr i64 %2804, 63
  %2823 = trunc i64 %2822 to i8
  store i8 %2823, i8* %33, align 1
  %2824 = lshr i64 %2803, 63
  %2825 = xor i64 %2822, %2824
  %2826 = xor i64 %2822, %2802
  %2827 = add nuw nsw i64 %2825, %2826
  %2828 = icmp eq i64 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %39, align 1
  %2830 = add i64 %2794, -12
  %2831 = add i64 %2796, 18
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i32*
  %2833 = load i32, i32* %2832, align 4
  %2834 = sext i32 %2833 to i64
  %2835 = mul nsw i64 %2834, 12
  store i64 %2835, i64* %RCX.i2273.pre-phi, align 8
  %2836 = lshr i64 %2835, 63
  %2837 = add i64 %2835, %2804
  store i64 %2837, i64* %RAX.i2337, align 8
  %2838 = icmp ult i64 %2837, %2804
  %2839 = icmp ult i64 %2837, %2835
  %2840 = or i1 %2838, %2839
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %14, align 1
  %2842 = trunc i64 %2837 to i32
  %2843 = and i32 %2842, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843)
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %21, align 1
  %2848 = xor i64 %2835, %2804
  %2849 = xor i64 %2848, %2837
  %2850 = lshr i64 %2849, 4
  %2851 = trunc i64 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %27, align 1
  %2853 = icmp eq i64 %2837, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %30, align 1
  %2855 = lshr i64 %2837, 63
  %2856 = trunc i64 %2855 to i8
  store i8 %2856, i8* %33, align 1
  %2857 = xor i64 %2855, %2822
  %2858 = xor i64 %2855, %2836
  %2859 = add nuw nsw i64 %2857, %2858
  %2860 = icmp eq i64 %2859, 2
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %39, align 1
  %2862 = load i64, i64* %RBP.i, align 8
  %2863 = add i64 %2862, -40
  %2864 = add i64 %2796, 29
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = sext i32 %2866 to i64
  store i64 %2867, i64* %RCX.i2273.pre-phi, align 8
  %2868 = shl nsw i64 %2867, 2
  %2869 = add i64 %2868, %2837
  %2870 = add i64 %2796, 36
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  store i32 0, i32* %2871, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_4b0ca1

block_.L_4b0ca1:                                  ; preds = %block_.L_4b0bf2, %block_4b09bb
  %2872 = phi i64 [ %.pre160, %block_.L_4b0bf2 ], [ %1743, %block_4b09bb ]
  %MEMORY.16 = phi %struct.Memory* [ %1835, %block_.L_4b0bf2 ], [ %MEMORY.11, %block_4b09bb ]
  %2873 = load i64, i64* %RBP.i, align 8
  %2874 = add i64 %2873, -40
  %2875 = add i64 %2872, 8
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i32*
  %2877 = load i32, i32* %2876, align 4
  %2878 = add i32 %2877, 1
  %2879 = zext i32 %2878 to i64
  store i64 %2879, i64* %RAX.i2337, align 8
  %2880 = icmp eq i32 %2877, -1
  %2881 = icmp eq i32 %2878, 0
  %2882 = or i1 %2880, %2881
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %14, align 1
  %2884 = and i32 %2878, 255
  %2885 = tail call i32 @llvm.ctpop.i32(i32 %2884)
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  %2888 = xor i8 %2887, 1
  store i8 %2888, i8* %21, align 1
  %2889 = xor i32 %2878, %2877
  %2890 = lshr i32 %2889, 4
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  store i8 %2892, i8* %27, align 1
  %2893 = zext i1 %2881 to i8
  store i8 %2893, i8* %30, align 1
  %2894 = lshr i32 %2878, 31
  %2895 = trunc i32 %2894 to i8
  store i8 %2895, i8* %33, align 1
  %2896 = lshr i32 %2877, 31
  %2897 = xor i32 %2894, %2896
  %2898 = add nuw nsw i32 %2897, %2894
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %39, align 1
  %2901 = add i64 %2872, 14
  store i64 %2901, i64* %3, align 8
  store i32 %2878, i32* %2876, align 4
  %2902 = load i64, i64* %3, align 8
  %2903 = add i64 %2902, -779
  store i64 %2903, i64* %3, align 8
  br label %block_.L_4b09a4

block_.L_4b0cb4:                                  ; preds = %block_.L_4b09a4
  %2904 = add i64 %1328, -12
  %2905 = add i64 %1356, 8
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = add i32 %2907, 1
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RAX.i2337, align 8
  %2910 = icmp eq i32 %2907, -1
  %2911 = icmp eq i32 %2908, 0
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i32 %2908, %2907
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %27, align 1
  %2923 = zext i1 %2911 to i8
  store i8 %2923, i8* %30, align 1
  %2924 = lshr i32 %2908, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %33, align 1
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2924, %2926
  %2928 = add nuw nsw i32 %2927, %2924
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %39, align 1
  %2931 = add i64 %1356, 14
  store i64 %2931, i64* %3, align 8
  store i32 %2908, i32* %2906, align 4
  %2932 = load i64, i64* %3, align 8
  %2933 = add i64 %2932, -1185
  store i64 %2933, i64* %3, align 8
  br label %block_.L_4b0821

block_.L_4b0cc7:                                  ; preds = %block_.L_4b0821
  %2934 = add i64 %904, -8
  %2935 = add i64 %937, 8
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  %2937 = load i32, i32* %2936, align 4
  %2938 = add i32 %2937, 1
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RAX.i2337, align 8
  %2940 = icmp eq i32 %2937, -1
  %2941 = icmp eq i32 %2938, 0
  %2942 = or i1 %2940, %2941
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %14, align 1
  %2944 = and i32 %2938, 255
  %2945 = tail call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  store i8 %2948, i8* %21, align 1
  %2949 = xor i32 %2938, %2937
  %2950 = lshr i32 %2949, 4
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  store i8 %2952, i8* %27, align 1
  %2953 = zext i1 %2941 to i8
  store i8 %2953, i8* %30, align 1
  %2954 = lshr i32 %2938, 31
  %2955 = trunc i32 %2954 to i8
  store i8 %2955, i8* %33, align 1
  %2956 = lshr i32 %2937, 31
  %2957 = xor i32 %2954, %2956
  %2958 = add nuw nsw i32 %2957, %2954
  %2959 = icmp eq i32 %2958, 2
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %39, align 1
  %2961 = add i64 %937, 14
  store i64 %2961, i64* %3, align 8
  store i32 %2938, i32* %2936, align 4
  %2962 = load i64, i64* %3, align 8
  %2963 = add i64 %2962, -1227
  store i64 %2963, i64* %3, align 8
  br label %block_.L_4b080a

block_.L_4b0cda:                                  ; preds = %block_.L_4b080a
  %2964 = add i64 %866, -4
  %2965 = add i64 %899, 4
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = add i32 %2967, -1
  %2969 = icmp eq i32 %2967, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %14, align 1
  %2971 = and i32 %2968, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %21, align 1
  %2976 = xor i32 %2968, %2967
  %2977 = lshr i32 %2976, 4
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  store i8 %2979, i8* %27, align 1
  %2980 = icmp eq i32 %2968, 0
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %30, align 1
  %2982 = lshr i32 %2968, 31
  %2983 = trunc i32 %2982 to i8
  store i8 %2983, i8* %33, align 1
  %2984 = lshr i32 %2967, 31
  %2985 = xor i32 %2982, %2984
  %2986 = add nuw nsw i32 %2985, %2984
  %2987 = icmp eq i32 %2986, 2
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %39, align 1
  %.v = select i1 %2980, i64 10, i64 661
  %2989 = add i64 %899, %.v
  %2990 = add i64 %2989, 7
  store i64 %2990, i64* %3, align 8
  store i32 0, i32* %869, align 4
  %.pre116 = load i64, i64* %3, align 8
  br i1 %2980, label %block_.L_4b0ceb.preheader, label %block_.L_4b0f76.preheader

block_.L_4b0f76.preheader:                        ; preds = %block_.L_4b0cda
  br label %block_.L_4b0f76

block_.L_4b0ceb.preheader:                        ; preds = %block_.L_4b0cda
  br label %block_.L_4b0ceb

block_.L_4b0ceb:                                  ; preds = %block_.L_4b0ceb.preheader, %block_.L_4b0e0f
  %2991 = phi i64 [ %3484, %block_.L_4b0e0f ], [ %.pre116, %block_.L_4b0ceb.preheader ]
  %2992 = load i64, i64* %RBP.i, align 8
  %2993 = add i64 %2992, -8
  %2994 = add i64 %2991, 3
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = zext i32 %2996 to i64
  store i64 %2997, i64* %RAX.i2337, align 8
  %2998 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %2999 = sub i32 %2996, %2998
  %3000 = icmp ult i32 %2996, %2998
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %14, align 1
  %3002 = and i32 %2999, 255
  %3003 = tail call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  store i8 %3006, i8* %21, align 1
  %3007 = xor i32 %2998, %2996
  %3008 = xor i32 %3007, %2999
  %3009 = lshr i32 %3008, 4
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %27, align 1
  %3012 = icmp eq i32 %2999, 0
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %30, align 1
  %3014 = lshr i32 %2999, 31
  %3015 = trunc i32 %3014 to i8
  store i8 %3015, i8* %33, align 1
  %3016 = lshr i32 %2996, 31
  %3017 = lshr i32 %2998, 31
  %3018 = xor i32 %3017, %3016
  %3019 = xor i32 %3014, %3016
  %3020 = add nuw nsw i32 %3019, %3018
  %3021 = icmp eq i32 %3020, 2
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %39, align 1
  %3023 = icmp ne i8 %3015, 0
  %3024 = xor i1 %3023, %3021
  %.v203 = select i1 %3024, i64 16, i64 311
  %3025 = add i64 %2991, %.v203
  store i64 %3025, i64* %3, align 8
  br i1 %3024, label %block_4b0cfb, label %block_.L_4b0e22

block_4b0cfb:                                     ; preds = %block_.L_4b0ceb
  %3026 = add i64 %2992, -12
  %3027 = add i64 %3025, 7
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  store i32 0, i32* %3028, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_4b0d02

block_.L_4b0d02:                                  ; preds = %block_.L_4b0dfc, %block_4b0cfb
  %3029 = phi i64 [ %3454, %block_.L_4b0dfc ], [ %.pre119, %block_4b0cfb ]
  %3030 = load i64, i64* %RBP.i, align 8
  %3031 = add i64 %3030, -12
  %3032 = add i64 %3029, 3
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RAX.i2337, align 8
  %3036 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %3037 = sub i32 %3034, %3036
  %3038 = icmp ult i32 %3034, %3036
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %14, align 1
  %3040 = and i32 %3037, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040)
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %21, align 1
  %3045 = xor i32 %3036, %3034
  %3046 = xor i32 %3045, %3037
  %3047 = lshr i32 %3046, 4
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  store i8 %3049, i8* %27, align 1
  %3050 = icmp eq i32 %3037, 0
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %30, align 1
  %3052 = lshr i32 %3037, 31
  %3053 = trunc i32 %3052 to i8
  store i8 %3053, i8* %33, align 1
  %3054 = lshr i32 %3034, 31
  %3055 = lshr i32 %3036, 31
  %3056 = xor i32 %3055, %3054
  %3057 = xor i32 %3052, %3054
  %3058 = add nuw nsw i32 %3057, %3056
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %39, align 1
  %3061 = icmp ne i8 %3053, 0
  %3062 = xor i1 %3061, %3059
  %.v174 = select i1 %3062, i64 16, i64 269
  %3063 = add i64 %3029, %.v174
  store i64 %3063, i64* %3, align 8
  br i1 %3062, label %block_4b0d12, label %block_.L_4b0e0f

block_4b0d12:                                     ; preds = %block_.L_4b0d02
  %3064 = add i64 %3030, -40
  %3065 = add i64 %3063, 7
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  store i32 0, i32* %3066, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_4b0d19

block_.L_4b0d19:                                  ; preds = %block_.L_4b0d4c, %block_4b0d12
  %3067 = phi i64 [ %3424, %block_.L_4b0d4c ], [ %.pre120, %block_4b0d12 ]
  %3068 = load i64, i64* %RBP.i, align 8
  %3069 = add i64 %3068, -40
  %3070 = add i64 %3067, 4
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i32*
  %3072 = load i32, i32* %3071, align 4
  %3073 = add i32 %3072, -3
  %3074 = icmp ult i32 %3072, 3
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %14, align 1
  %3076 = and i32 %3073, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1
  %3081 = xor i32 %3073, %3072
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %27, align 1
  %3085 = icmp eq i32 %3073, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %30, align 1
  %3087 = lshr i32 %3073, 31
  %3088 = trunc i32 %3087 to i8
  store i8 %3088, i8* %33, align 1
  %3089 = lshr i32 %3072, 31
  %3090 = xor i32 %3087, %3089
  %3091 = add nuw nsw i32 %3090, %3089
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %39, align 1
  %3094 = icmp ne i8 %3088, 0
  %3095 = xor i1 %3094, %3092
  %.v175 = select i1 %3095, i64 10, i64 227
  %3096 = add i64 %3067, %.v175
  store i64 %3096, i64* %3, align 8
  br i1 %3095, label %block_4b0d23, label %block_.L_4b0dfc

block_4b0d23:                                     ; preds = %block_.L_4b0d19
  %3097 = add i64 %3096, 4
  store i64 %3097, i64* %3, align 8
  %3098 = load i32, i32* %3071, align 4
  store i8 0, i8* %14, align 1
  %3099 = and i32 %3098, 255
  %3100 = tail call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  store i8 %3103, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3104 = icmp eq i32 %3098, 0
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %30, align 1
  %3106 = lshr i32 %3098, 31
  %3107 = trunc i32 %3106 to i8
  store i8 %3107, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v206 = select i1 %3104, i64 10, i64 28
  %3108 = add i64 %3096, %.v206
  %3109 = add i64 %3108, 7
  store i64 %3109, i64* %3, align 8
  br i1 %3104, label %block_4b0d2d, label %block_.L_4b0d3f

block_4b0d2d:                                     ; preds = %block_4b0d23
  %3110 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RAX.i2337, align 8
  %3112 = add i64 %3068, -35460
  %3113 = add i64 %3108, 13
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  store i32 %3110, i32* %3114, align 4
  %3115 = load i64, i64* %3, align 8
  %3116 = add i64 %3115, 18
  store i64 %3116, i64* %3, align 8
  br label %block_.L_4b0d4c

block_.L_4b0d3f:                                  ; preds = %block_4b0d23
  %3117 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RAX.i2337, align 8
  %3119 = add i64 %3068, -35460
  %3120 = add i64 %3108, 13
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3119 to i32*
  store i32 %3117, i32* %3121, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4b0d4c

block_.L_4b0d4c:                                  ; preds = %block_.L_4b0d3f, %block_4b0d2d
  %3122 = phi i64 [ %.pre121, %block_.L_4b0d3f ], [ %3116, %block_4b0d2d ]
  %3123 = load i64, i64* %RBP.i, align 8
  %3124 = add i64 %3123, -35460
  %3125 = add i64 %3122, 6
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i32*
  %3127 = load i32, i32* %3126, align 4
  %3128 = zext i32 %3127 to i64
  store i64 %3128, i64* %RAX.i2337, align 8
  %3129 = add i64 %3123, -19184
  store i64 %3129, i64* %RCX.i2273.pre-phi, align 8
  %3130 = add i64 %3123, -772
  %3131 = add i64 %3122, 19
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  store i32 %3127, i32* %3132, align 4
  %3133 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3133, 2700
  store i64 %3135, i64* %864, align 8
  %3136 = icmp ugt i64 %3133, -2701
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %14, align 1
  %3138 = trunc i64 %3135 to i32
  %3139 = and i32 %3138, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %21, align 1
  %3144 = xor i64 %3135, %3133
  %3145 = lshr i64 %3144, 4
  %3146 = trunc i64 %3145 to i8
  %3147 = and i8 %3146, 1
  store i8 %3147, i8* %27, align 1
  %3148 = icmp eq i64 %3135, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %30, align 1
  %3150 = lshr i64 %3135, 63
  %3151 = trunc i64 %3150 to i8
  store i8 %3151, i8* %33, align 1
  %3152 = lshr i64 %3133, 63
  %3153 = xor i64 %3150, %3152
  %3154 = add nuw nsw i64 %3153, %3150
  %3155 = icmp eq i64 %3154, 2
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %39, align 1
  %3157 = load i64, i64* %RBP.i, align 8
  %3158 = add i64 %3157, -8
  %3159 = add i64 %3134, 14
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i32*
  %3161 = load i32, i32* %3160, align 4
  %3162 = sext i32 %3161 to i64
  %3163 = mul nsw i64 %3162, 180
  store i64 %3163, i64* %RSI.i2165, align 8
  %3164 = lshr i64 %3163, 63
  %3165 = add i64 %3163, %3135
  store i64 %3165, i64* %864, align 8
  %3166 = icmp ult i64 %3165, %3135
  %3167 = icmp ult i64 %3165, %3163
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %14, align 1
  %3170 = trunc i64 %3165 to i32
  %3171 = and i32 %3170, 255
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %21, align 1
  %3176 = xor i64 %3163, %3135
  %3177 = xor i64 %3176, %3165
  %3178 = lshr i64 %3177, 4
  %3179 = trunc i64 %3178 to i8
  %3180 = and i8 %3179, 1
  store i8 %3180, i8* %27, align 1
  %3181 = icmp eq i64 %3165, 0
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %30, align 1
  %3183 = lshr i64 %3165, 63
  %3184 = trunc i64 %3183 to i8
  store i8 %3184, i8* %33, align 1
  %3185 = xor i64 %3183, %3150
  %3186 = xor i64 %3183, %3164
  %3187 = add nuw nsw i64 %3185, %3186
  %3188 = icmp eq i64 %3187, 2
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %39, align 1
  %3190 = add i64 %3157, -12
  %3191 = add i64 %3134, 28
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i32*
  %3193 = load i32, i32* %3192, align 4
  %3194 = sext i32 %3193 to i64
  %3195 = mul nsw i64 %3194, 12
  store i64 %3195, i64* %RSI.i2165, align 8
  %3196 = lshr i64 %3195, 63
  %3197 = add i64 %3195, %3165
  store i64 %3197, i64* %864, align 8
  %3198 = icmp ult i64 %3197, %3165
  %3199 = icmp ult i64 %3197, %3195
  %3200 = or i1 %3198, %3199
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %14, align 1
  %3202 = trunc i64 %3197 to i32
  %3203 = and i32 %3202, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %21, align 1
  %3208 = xor i64 %3195, %3165
  %3209 = xor i64 %3208, %3197
  %3210 = lshr i64 %3209, 4
  %3211 = trunc i64 %3210 to i8
  %3212 = and i8 %3211, 1
  store i8 %3212, i8* %27, align 1
  %3213 = icmp eq i64 %3197, 0
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %30, align 1
  %3215 = lshr i64 %3197, 63
  %3216 = trunc i64 %3215 to i8
  store i8 %3216, i8* %33, align 1
  %3217 = xor i64 %3215, %3183
  %3218 = xor i64 %3215, %3196
  %3219 = add nuw nsw i64 %3217, %3218
  %3220 = icmp eq i64 %3219, 2
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %39, align 1
  %3222 = load i64, i64* %RBP.i, align 8
  %3223 = add i64 %3222, -40
  %3224 = add i64 %3134, 39
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = sext i32 %3226 to i64
  store i64 %3227, i64* %RSI.i2165, align 8
  %3228 = shl nsw i64 %3227, 2
  %3229 = add i64 %3228, %3197
  %3230 = add i64 %3134, 42
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = zext i32 %3232 to i64
  store i64 %3233, i64* %RAX.i2337, align 8
  %3234 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %3234, i64* %864, align 8
  %3235 = add i64 %3234, 8
  %3236 = add i64 %3134, 54
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i64*
  %3238 = load i64, i64* %3237, align 8
  store i64 %3238, i64* %864, align 8
  %3239 = add i64 %3222, -8
  %3240 = add i64 %3134, 58
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = sext i32 %3242 to i64
  store i64 %3243, i64* %RSI.i2165, align 8
  %3244 = shl nsw i64 %3243, 3
  %3245 = add i64 %3244, %3238
  %3246 = add i64 %3134, 62
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i64*
  %3248 = load i64, i64* %3247, align 8
  store i64 %3248, i64* %864, align 8
  %3249 = add i64 %3222, -12
  %3250 = add i64 %3134, 66
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  %3253 = sext i32 %3252 to i64
  store i64 %3253, i64* %RSI.i2165, align 8
  %3254 = shl nsw i64 %3253, 3
  %3255 = add i64 %3254, %3248
  %3256 = add i64 %3134, 70
  store i64 %3256, i64* %3, align 8
  %3257 = inttoptr i64 %3255 to i64*
  %3258 = load i64, i64* %3257, align 8
  store i64 %3258, i64* %864, align 8
  %3259 = add i64 %3134, 74
  store i64 %3259, i64* %3, align 8
  %3260 = load i32, i32* %3225, align 4
  %3261 = sext i32 %3260 to i64
  store i64 %3261, i64* %RSI.i2165, align 8
  %3262 = shl nsw i64 %3261, 2
  %3263 = add i64 %3262, %3258
  %3264 = add i64 %3134, 77
  store i64 %3264, i64* %3, align 8
  %3265 = inttoptr i64 %3263 to i32*
  store i32 %3232, i32* %3265, align 4
  %3266 = load i64, i64* %RBP.i, align 8
  %3267 = add i64 %3266, -8
  %3268 = load i64, i64* %3, align 8
  %3269 = add i64 %3268, 4
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3267 to i32*
  %3271 = load i32, i32* %3270, align 4
  %3272 = sext i32 %3271 to i64
  %3273 = add i64 %3268, 11
  store i64 %3273, i64* %3, align 8
  %3274 = sext i32 %3271 to i128
  %3275 = and i128 %3274, -18446744073709551616
  %3276 = zext i64 %3272 to i128
  %3277 = or i128 %3275, %3276
  %3278 = mul nsw i128 %3277, 180
  %3279 = trunc i128 %3278 to i64
  store i64 %3279, i64* %864, align 8
  %3280 = sext i64 %3279 to i128
  %3281 = icmp ne i128 %3280, %3278
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %14, align 1
  %3283 = trunc i128 %3278 to i32
  %3284 = and i32 %3283, 252
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3289 = lshr i64 %3279, 63
  %3290 = trunc i64 %3289 to i8
  store i8 %3290, i8* %33, align 1
  store i8 %3282, i8* %39, align 1
  %3291 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %3292 = add i64 %3279, %3291
  store i64 %3292, i64* %RCX.i2273.pre-phi, align 8
  %3293 = icmp ult i64 %3292, %3291
  %3294 = icmp ult i64 %3292, %3279
  %3295 = or i1 %3293, %3294
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %14, align 1
  %3297 = trunc i64 %3292 to i32
  %3298 = and i32 %3297, 255
  %3299 = tail call i32 @llvm.ctpop.i32(i32 %3298)
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = xor i8 %3301, 1
  store i8 %3302, i8* %21, align 1
  %3303 = xor i64 %3279, %3291
  %3304 = xor i64 %3303, %3292
  %3305 = lshr i64 %3304, 4
  %3306 = trunc i64 %3305 to i8
  %3307 = and i8 %3306, 1
  store i8 %3307, i8* %27, align 1
  %3308 = icmp eq i64 %3292, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %30, align 1
  %3310 = lshr i64 %3292, 63
  %3311 = trunc i64 %3310 to i8
  store i8 %3311, i8* %33, align 1
  %3312 = lshr i64 %3291, 63
  %3313 = xor i64 %3310, %3312
  %3314 = xor i64 %3310, %3289
  %3315 = add nuw nsw i64 %3313, %3314
  %3316 = icmp eq i64 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %39, align 1
  %3318 = add i64 %3266, -12
  %3319 = add i64 %3268, 18
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i32*
  %3321 = load i32, i32* %3320, align 4
  %3322 = sext i32 %3321 to i64
  %3323 = mul nsw i64 %3322, 12
  store i64 %3323, i64* %864, align 8
  %3324 = lshr i64 %3323, 63
  %3325 = add i64 %3323, %3292
  store i64 %3325, i64* %RCX.i2273.pre-phi, align 8
  %3326 = icmp ult i64 %3325, %3292
  %3327 = icmp ult i64 %3325, %3323
  %3328 = or i1 %3326, %3327
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %14, align 1
  %3330 = trunc i64 %3325 to i32
  %3331 = and i32 %3330, 255
  %3332 = tail call i32 @llvm.ctpop.i32(i32 %3331)
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = xor i8 %3334, 1
  store i8 %3335, i8* %21, align 1
  %3336 = xor i64 %3323, %3292
  %3337 = xor i64 %3336, %3325
  %3338 = lshr i64 %3337, 4
  %3339 = trunc i64 %3338 to i8
  %3340 = and i8 %3339, 1
  store i8 %3340, i8* %27, align 1
  %3341 = icmp eq i64 %3325, 0
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %30, align 1
  %3343 = lshr i64 %3325, 63
  %3344 = trunc i64 %3343 to i8
  store i8 %3344, i8* %33, align 1
  %3345 = xor i64 %3343, %3310
  %3346 = xor i64 %3343, %3324
  %3347 = add nuw nsw i64 %3345, %3346
  %3348 = icmp eq i64 %3347, 2
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %39, align 1
  %3350 = load i64, i64* %RBP.i, align 8
  %3351 = add i64 %3350, -40
  %3352 = add i64 %3268, 29
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = sext i32 %3354 to i64
  store i64 %3355, i64* %864, align 8
  %3356 = shl nsw i64 %3355, 2
  %3357 = add i64 %3356, %3325
  %3358 = add i64 %3268, 32
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RAX.i2337, align 8
  %3362 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %3362, i64* %RCX.i2273.pre-phi, align 8
  %3363 = add i64 %3268, 43
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i64*
  %3365 = load i64, i64* %3364, align 8
  store i64 %3365, i64* %RCX.i2273.pre-phi, align 8
  %3366 = add i64 %3350, -8
  %3367 = add i64 %3268, 47
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3366 to i32*
  %3369 = load i32, i32* %3368, align 4
  %3370 = sext i32 %3369 to i64
  store i64 %3370, i64* %864, align 8
  %3371 = shl nsw i64 %3370, 3
  %3372 = add i64 %3371, %3365
  %3373 = add i64 %3268, 51
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i64*
  %3375 = load i64, i64* %3374, align 8
  store i64 %3375, i64* %RCX.i2273.pre-phi, align 8
  %3376 = add i64 %3350, -12
  %3377 = add i64 %3268, 55
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  store i64 %3380, i64* %864, align 8
  %3381 = shl nsw i64 %3380, 3
  %3382 = add i64 %3381, %3375
  %3383 = add i64 %3268, 59
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %RCX.i2273.pre-phi, align 8
  %3386 = add i64 %3268, 63
  store i64 %3386, i64* %3, align 8
  %3387 = load i32, i32* %3353, align 4
  %3388 = sext i32 %3387 to i64
  store i64 %3388, i64* %864, align 8
  %3389 = shl nsw i64 %3388, 2
  %3390 = add i64 %3389, %3385
  %3391 = add i64 %3268, 66
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i32*
  store i32 %3360, i32* %3392, align 4
  %3393 = load i64, i64* %RBP.i, align 8
  %3394 = add i64 %3393, -40
  %3395 = load i64, i64* %3, align 8
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3394 to i32*
  %3398 = load i32, i32* %3397, align 4
  %3399 = add i32 %3398, 1
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RAX.i2337, align 8
  %3401 = icmp eq i32 %3398, -1
  %3402 = icmp eq i32 %3399, 0
  %3403 = or i1 %3401, %3402
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %14, align 1
  %3405 = and i32 %3399, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %21, align 1
  %3410 = xor i32 %3399, %3398
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %27, align 1
  %3414 = zext i1 %3402 to i8
  store i8 %3414, i8* %30, align 1
  %3415 = lshr i32 %3399, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %33, align 1
  %3417 = lshr i32 %3398, 31
  %3418 = xor i32 %3415, %3417
  %3419 = add nuw nsw i32 %3418, %3415
  %3420 = icmp eq i32 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %39, align 1
  %3422 = add i64 %3395, 9
  store i64 %3422, i64* %3, align 8
  store i32 %3399, i32* %3397, align 4
  %3423 = load i64, i64* %3, align 8
  %3424 = add i64 %3423, -222
  store i64 %3424, i64* %3, align 8
  br label %block_.L_4b0d19

block_.L_4b0dfc:                                  ; preds = %block_.L_4b0d19
  %3425 = add i64 %3068, -12
  %3426 = add i64 %3096, 8
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  %3429 = add i32 %3428, 1
  %3430 = zext i32 %3429 to i64
  store i64 %3430, i64* %RAX.i2337, align 8
  %3431 = icmp eq i32 %3428, -1
  %3432 = icmp eq i32 %3429, 0
  %3433 = or i1 %3431, %3432
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %14, align 1
  %3435 = and i32 %3429, 255
  %3436 = tail call i32 @llvm.ctpop.i32(i32 %3435)
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  %3439 = xor i8 %3438, 1
  store i8 %3439, i8* %21, align 1
  %3440 = xor i32 %3429, %3428
  %3441 = lshr i32 %3440, 4
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  store i8 %3443, i8* %27, align 1
  %3444 = zext i1 %3432 to i8
  store i8 %3444, i8* %30, align 1
  %3445 = lshr i32 %3429, 31
  %3446 = trunc i32 %3445 to i8
  store i8 %3446, i8* %33, align 1
  %3447 = lshr i32 %3428, 31
  %3448 = xor i32 %3445, %3447
  %3449 = add nuw nsw i32 %3448, %3445
  %3450 = icmp eq i32 %3449, 2
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %39, align 1
  %3452 = add i64 %3096, 14
  store i64 %3452, i64* %3, align 8
  store i32 %3429, i32* %3427, align 4
  %3453 = load i64, i64* %3, align 8
  %3454 = add i64 %3453, -264
  store i64 %3454, i64* %3, align 8
  br label %block_.L_4b0d02

block_.L_4b0e0f:                                  ; preds = %block_.L_4b0d02
  %3455 = add i64 %3030, -8
  %3456 = add i64 %3063, 8
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i32*
  %3458 = load i32, i32* %3457, align 4
  %3459 = add i32 %3458, 1
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RAX.i2337, align 8
  %3461 = icmp eq i32 %3458, -1
  %3462 = icmp eq i32 %3459, 0
  %3463 = or i1 %3461, %3462
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %14, align 1
  %3465 = and i32 %3459, 255
  %3466 = tail call i32 @llvm.ctpop.i32(i32 %3465)
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  %3469 = xor i8 %3468, 1
  store i8 %3469, i8* %21, align 1
  %3470 = xor i32 %3459, %3458
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  store i8 %3473, i8* %27, align 1
  %3474 = zext i1 %3462 to i8
  store i8 %3474, i8* %30, align 1
  %3475 = lshr i32 %3459, 31
  %3476 = trunc i32 %3475 to i8
  store i8 %3476, i8* %33, align 1
  %3477 = lshr i32 %3458, 31
  %3478 = xor i32 %3475, %3477
  %3479 = add nuw nsw i32 %3478, %3475
  %3480 = icmp eq i32 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %39, align 1
  %3482 = add i64 %3063, 14
  store i64 %3482, i64* %3, align 8
  store i32 %3459, i32* %3457, align 4
  %3483 = load i64, i64* %3, align 8
  %3484 = add i64 %3483, -306
  store i64 %3484, i64* %3, align 8
  br label %block_.L_4b0ceb

block_.L_4b0e22:                                  ; preds = %block_.L_4b0ceb
  %3485 = add i64 %2992, -35396
  %3486 = add i64 %3025, 10
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3485 to i32*
  store i32 0, i32* %3487, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4b0e2c

block_.L_4b0e2c:                                  ; preds = %block_.L_4b0f51, %block_.L_4b0e22
  %3488 = phi i64 [ %3885, %block_.L_4b0f51 ], [ %.pre117, %block_.L_4b0e22 ]
  %3489 = load i64, i64* %RBP.i, align 8
  %3490 = add i64 %3489, -35396
  %3491 = add i64 %3488, 6
  store i64 %3491, i64* %3, align 8
  %3492 = inttoptr i64 %3490 to i32*
  %3493 = load i32, i32* %3492, align 4
  %3494 = zext i32 %3493 to i64
  store i64 %3494, i64* %RAX.i2337, align 8
  %3495 = add i64 %3489, -804
  %3496 = add i64 %3488, 12
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i32*
  %3498 = load i32, i32* %3497, align 4
  %3499 = add i32 %3498, 2
  %3500 = zext i32 %3499 to i64
  store i64 %3500, i64* %RCX.i2273.pre-phi, align 8
  %3501 = lshr i32 %3499, 31
  %3502 = sub i32 %3493, %3499
  %3503 = icmp ult i32 %3493, %3499
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %14, align 1
  %3505 = and i32 %3502, 255
  %3506 = tail call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  store i8 %3509, i8* %21, align 1
  %3510 = xor i32 %3499, %3493
  %3511 = xor i32 %3510, %3502
  %3512 = lshr i32 %3511, 4
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %27, align 1
  %3515 = icmp eq i32 %3502, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %30, align 1
  %3517 = lshr i32 %3502, 31
  %3518 = trunc i32 %3517 to i8
  store i8 %3518, i8* %33, align 1
  %3519 = lshr i32 %3493, 31
  %3520 = xor i32 %3501, %3519
  %3521 = xor i32 %3517, %3519
  %3522 = add nuw nsw i32 %3521, %3520
  %3523 = icmp eq i32 %3522, 2
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %39, align 1
  %3525 = icmp ne i8 %3518, 0
  %3526 = xor i1 %3525, %3523
  %.v204 = select i1 %3526, i64 23, i64 318
  %3527 = add i64 %3488, %.v204
  store i64 %3527, i64* %3, align 8
  br i1 %3526, label %block_4b0e43, label %block_.L_4b0f6a

block_4b0e43:                                     ; preds = %block_.L_4b0e2c
  %3528 = add i64 %3489, -36
  %3529 = add i64 %3527, 7
  store i64 %3529, i64* %3, align 8
  %3530 = inttoptr i64 %3528 to i32*
  store i32 0, i32* %3530, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_4b0e4a

block_.L_4b0e4a:                                  ; preds = %routine_shll__cl___eax.exit1130, %block_4b0e43
  %3531 = phi i64 [ %3857, %routine_shll__cl___eax.exit1130 ], [ %.pre118, %block_4b0e43 ]
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -36
  %3534 = add i64 %3531, 3
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = zext i32 %3536 to i64
  store i64 %3537, i64* %RAX.i2337, align 8
  %3538 = add i64 %3532, -35396
  %3539 = add i64 %3531, 10
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3538 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = sext i32 %3541 to i64
  store i64 %3542, i64* %RCX.i2273.pre-phi, align 8
  %3543 = shl nsw i64 %3542, 2
  %3544 = add nsw i64 %3543, 7489456
  %3545 = add i64 %3531, 17
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  %3547 = load i32, i32* %3546, align 4
  %3548 = sub i32 %3536, %3547
  %3549 = icmp ult i32 %3536, %3547
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %14, align 1
  %3551 = and i32 %3548, 255
  %3552 = tail call i32 @llvm.ctpop.i32(i32 %3551)
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = xor i8 %3554, 1
  store i8 %3555, i8* %21, align 1
  %3556 = xor i32 %3547, %3536
  %3557 = xor i32 %3556, %3548
  %3558 = lshr i32 %3557, 4
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  store i8 %3560, i8* %27, align 1
  %3561 = icmp eq i32 %3548, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %30, align 1
  %3563 = lshr i32 %3548, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %33, align 1
  %3565 = lshr i32 %3536, 31
  %3566 = lshr i32 %3547, 31
  %3567 = xor i32 %3566, %3565
  %3568 = xor i32 %3563, %3565
  %3569 = add nuw nsw i32 %3568, %3567
  %3570 = icmp eq i32 %3569, 2
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %39, align 1
  %3572 = icmp ne i8 %3564, 0
  %3573 = xor i1 %3572, %3570
  %.v205 = select i1 %3573, i64 23, i64 263
  %3574 = add i64 %3531, %.v205
  %3575 = add i64 %3574, 5
  store i64 %3575, i64* %3, align 8
  br i1 %3573, label %block_4b0e61, label %block_.L_4b0f51

block_4b0e61:                                     ; preds = %block_.L_4b0e4a
  store i64 1, i64* %RAX.i2337, align 8
  %3576 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RCX.i2273.pre-phi, align 8
  store i64 1, i64* %RDX.i2167, align 8
  %3578 = add i64 %3574, 16
  store i64 %3578, i64* %3, align 8
  %3579 = trunc i32 %3576 to i5
  switch i5 %3579, label %3580 [
    i5 0, label %routine_shll__cl___edx.exit1179
    i5 1, label %3589
  ]

; <label>:3580:                                   ; preds = %block_4b0e61
  %3581 = and i32 %3576, 31
  %3582 = zext i32 %3581 to i64
  %3583 = add nuw nsw i64 %3582, 4294967295
  %3584 = and i64 %3583, 4294967295
  %3585 = shl i64 1, %3584
  %3586 = trunc i64 %3585 to i32
  %3587 = icmp slt i32 %3586, 0
  %3588 = shl i32 %3586, 1
  br label %3589

; <label>:3589:                                   ; preds = %block_4b0e61, %3580
  %3590 = phi i1 [ %3587, %3580 ], [ false, %block_4b0e61 ]
  %3591 = phi i32 [ %3588, %3580 ], [ 2, %block_4b0e61 ]
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RDX.i2167, align 8
  %3593 = zext i1 %3590 to i8
  store i8 %3593, i8* %14, align 1
  %3594 = and i32 %3591, 254
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3599 = icmp eq i32 %3591, 0
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %30, align 1
  %3601 = lshr i32 %3591, 31
  %3602 = trunc i32 %3601 to i8
  store i8 %3602, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___edx.exit1179

routine_shll__cl___edx.exit1179:                  ; preds = %3589, %block_4b0e61
  %3603 = phi i32 [ %3591, %3589 ], [ 1, %block_4b0e61 ]
  %3604 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3604, i64* %RSI.i2165, align 8
  %3605 = add i64 %3574, 31
  store i64 %3605, i64* %3, align 8
  %3606 = load i32, i32* %3540, align 4
  %3607 = sext i32 %3606 to i64
  store i64 %3607, i64* %RDI.i2162, align 8
  %3608 = shl nsw i64 %3607, 3
  %3609 = add i64 %3608, %3604
  %3610 = add i64 %3574, 35
  store i64 %3610, i64* %3, align 8
  %3611 = inttoptr i64 %3609 to i64*
  %3612 = load i64, i64* %3611, align 8
  store i64 %3612, i64* %RSI.i2165, align 8
  %3613 = add i64 %3574, 39
  store i64 %3613, i64* %3, align 8
  %3614 = load i32, i32* %3535, align 4
  %3615 = sext i32 %3614 to i64
  store i64 %3615, i64* %RDI.i2162, align 8
  %3616 = shl nsw i64 %3615, 3
  %3617 = add i64 %3616, %3612
  %3618 = add i64 %3574, 43
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i64*
  %3620 = load i64, i64* %3619, align 8
  store i64 %3620, i64* %RSI.i2165, align 8
  %3621 = add i64 %3574, 45
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  store i32 %3603, i32* %3622, align 4
  %3623 = load i64, i64* %3, align 8
  %3624 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RCX.i2273.pre-phi, align 8
  %3626 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RDX.i2167, align 8
  %3628 = add i64 %3623, 11
  store i64 %3628, i64* %3, align 8
  %3629 = trunc i32 %3624 to i5
  switch i5 %3629, label %3635 [
    i5 0, label %routine_shll__cl___edx.exit1153
    i5 1, label %3630
  ]

; <label>:3630:                                   ; preds = %routine_shll__cl___edx.exit1179
  %3631 = shl i32 %3626, 1
  %3632 = icmp slt i32 %3626, 0
  %3633 = icmp slt i32 %3631, 0
  %3634 = xor i1 %3632, %3633
  br label %3644

; <label>:3635:                                   ; preds = %routine_shll__cl___edx.exit1179
  %3636 = and i32 %3624, 31
  %3637 = zext i32 %3636 to i64
  %3638 = add nuw nsw i64 %3637, 4294967295
  %3639 = and i64 %3638, 4294967295
  %3640 = shl i64 %3627, %3639
  %3641 = trunc i64 %3640 to i32
  %3642 = icmp slt i32 %3641, 0
  %3643 = shl i32 %3641, 1
  br label %3644

; <label>:3644:                                   ; preds = %3635, %3630
  %3645 = phi i1 [ %3632, %3630 ], [ %3642, %3635 ]
  %3646 = phi i1 [ %3634, %3630 ], [ false, %3635 ]
  %3647 = phi i32 [ %3631, %3630 ], [ %3643, %3635 ]
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RDX.i2167, align 8
  %3649 = zext i1 %3645 to i8
  store i8 %3649, i8* %14, align 1
  %3650 = and i32 %3647, 254
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3655 = icmp eq i32 %3647, 0
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %30, align 1
  %3657 = lshr i32 %3647, 31
  %3658 = trunc i32 %3657 to i8
  store i8 %3658, i8* %33, align 1
  %3659 = zext i1 %3646 to i8
  store i8 %3659, i8* %39, align 1
  br label %routine_shll__cl___edx.exit1153

routine_shll__cl___edx.exit1153:                  ; preds = %3644, %routine_shll__cl___edx.exit1179
  %3660 = phi i32 [ %3647, %3644 ], [ %3626, %routine_shll__cl___edx.exit1179 ]
  %3661 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3661, i64* %RSI.i2165, align 8
  %3662 = load i64, i64* %RBP.i, align 8
  %3663 = add i64 %3662, -35396
  %3664 = add i64 %3623, 26
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i32*
  %3666 = load i32, i32* %3665, align 4
  %3667 = sext i32 %3666 to i64
  store i64 %3667, i64* %RDI.i2162, align 8
  %3668 = shl nsw i64 %3667, 3
  %3669 = add i64 %3668, %3661
  %3670 = add i64 %3623, 30
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RSI.i2165, align 8
  %3673 = add i64 %3662, -36
  %3674 = add i64 %3623, 34
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = sext i32 %3676 to i64
  store i64 %3677, i64* %RDI.i2162, align 8
  %3678 = shl nsw i64 %3677, 3
  %3679 = add i64 %3678, %3672
  %3680 = add i64 %3623, 38
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i64*
  %3682 = load i64, i64* %3681, align 8
  store i64 %3682, i64* %RSI.i2165, align 8
  %3683 = add i64 %3682, 4
  %3684 = add i64 %3623, 41
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i32*
  store i32 %3660, i32* %3685, align 4
  %3686 = load i64, i64* %3, align 8
  %3687 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %3688 = zext i32 %3687 to i64
  store i64 %3688, i64* %RCX.i2273.pre-phi, align 8
  %3689 = load i64, i64* %RAX.i2337, align 8
  %3690 = add i64 %3686, 9
  store i64 %3690, i64* %3, align 8
  %3691 = trunc i32 %3687 to i5
  %3692 = trunc i64 %3689 to i32
  switch i5 %3691, label %3698 [
    i5 0, label %routine_shll__cl___eax.exit1130
    i5 1, label %3693
  ]

; <label>:3693:                                   ; preds = %routine_shll__cl___edx.exit1153
  %3694 = shl i32 %3692, 1
  %3695 = icmp slt i32 %3692, 0
  %3696 = icmp slt i32 %3694, 0
  %3697 = xor i1 %3695, %3696
  br label %3708

; <label>:3698:                                   ; preds = %routine_shll__cl___edx.exit1153
  %3699 = and i32 %3687, 31
  %3700 = zext i32 %3699 to i64
  %3701 = add nuw nsw i64 %3700, 4294967295
  %3702 = and i64 %3689, 4294967295
  %3703 = and i64 %3701, 4294967295
  %3704 = shl i64 %3702, %3703
  %3705 = trunc i64 %3704 to i32
  %3706 = icmp slt i32 %3705, 0
  %3707 = shl i32 %3705, 1
  br label %3708

; <label>:3708:                                   ; preds = %3698, %3693
  %3709 = phi i1 [ %3695, %3693 ], [ %3706, %3698 ]
  %3710 = phi i1 [ %3697, %3693 ], [ false, %3698 ]
  %3711 = phi i32 [ %3694, %3693 ], [ %3707, %3698 ]
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RAX.i2337, align 8
  %3713 = zext i1 %3709 to i8
  store i8 %3713, i8* %14, align 1
  %3714 = and i32 %3711, 254
  %3715 = tail call i32 @llvm.ctpop.i32(i32 %3714)
  %3716 = trunc i32 %3715 to i8
  %3717 = and i8 %3716, 1
  %3718 = xor i8 %3717, 1
  store i8 %3718, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3719 = icmp eq i32 %3711, 0
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %30, align 1
  %3721 = lshr i32 %3711, 31
  %3722 = trunc i32 %3721 to i8
  store i8 %3722, i8* %33, align 1
  %3723 = zext i1 %3710 to i8
  store i8 %3723, i8* %39, align 1
  br label %routine_shll__cl___eax.exit1130

routine_shll__cl___eax.exit1130:                  ; preds = %3708, %routine_shll__cl___edx.exit1153
  %3724 = phi i32 [ %3711, %3708 ], [ %3692, %routine_shll__cl___edx.exit1153 ]
  %3725 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %3725, i64* %RSI.i2165, align 8
  %3726 = load i64, i64* %RBP.i, align 8
  %3727 = add i64 %3726, -35396
  %3728 = add i64 %3686, 24
  store i64 %3728, i64* %3, align 8
  %3729 = inttoptr i64 %3727 to i32*
  %3730 = load i32, i32* %3729, align 4
  %3731 = sext i32 %3730 to i64
  store i64 %3731, i64* %RDI.i2162, align 8
  %3732 = shl nsw i64 %3731, 3
  %3733 = add i64 %3732, %3725
  %3734 = add i64 %3686, 28
  store i64 %3734, i64* %3, align 8
  %3735 = inttoptr i64 %3733 to i64*
  %3736 = load i64, i64* %3735, align 8
  store i64 %3736, i64* %RSI.i2165, align 8
  %3737 = add i64 %3726, -36
  %3738 = add i64 %3686, 32
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = sext i32 %3740 to i64
  store i64 %3741, i64* %RDI.i2162, align 8
  %3742 = shl nsw i64 %3741, 3
  %3743 = add i64 %3742, %3736
  %3744 = add i64 %3686, 36
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i64*
  %3746 = load i64, i64* %3745, align 8
  %3747 = add i64 %3746, 8
  %3748 = add i64 %3686, 39
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  store i32 %3724, i32* %3749, align 4
  %3750 = load i64, i64* %3, align 8
  %3751 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3751, i64* %RSI.i2165, align 8
  %3752 = load i64, i64* %RBP.i, align 8
  %3753 = add i64 %3752, -35396
  %3754 = add i64 %3750, 15
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i32*
  %3756 = load i32, i32* %3755, align 4
  %3757 = sext i32 %3756 to i64
  store i64 %3757, i64* %RDI.i2162, align 8
  %3758 = shl nsw i64 %3757, 3
  %3759 = add i64 %3758, %3751
  %3760 = add i64 %3750, 19
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i64*
  %3762 = load i64, i64* %3761, align 8
  store i64 %3762, i64* %RSI.i2165, align 8
  %3763 = add i64 %3752, -36
  %3764 = add i64 %3750, 23
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3763 to i32*
  %3766 = load i32, i32* %3765, align 4
  %3767 = sext i32 %3766 to i64
  store i64 %3767, i64* %RDI.i2162, align 8
  %3768 = shl nsw i64 %3767, 3
  %3769 = add i64 %3768, %3762
  %3770 = add i64 %3750, 27
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32**
  %3772 = load i32*, i32** %3771, align 8
  %3773 = add i64 %3750, 33
  store i64 %3773, i64* %3, align 8
  store i32 0, i32* %3772, align 4
  %3774 = load i64, i64* %3, align 8
  %3775 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3775, i64* %RSI.i2165, align 8
  %3776 = load i64, i64* %RBP.i, align 8
  %3777 = add i64 %3776, -35396
  %3778 = add i64 %3774, 15
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = sext i32 %3780 to i64
  store i64 %3781, i64* %RDI.i2162, align 8
  %3782 = shl nsw i64 %3781, 3
  %3783 = add i64 %3782, %3775
  %3784 = add i64 %3774, 19
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  store i64 %3786, i64* %RSI.i2165, align 8
  %3787 = add i64 %3776, -36
  %3788 = add i64 %3774, 23
  store i64 %3788, i64* %3, align 8
  %3789 = inttoptr i64 %3787 to i32*
  %3790 = load i32, i32* %3789, align 4
  %3791 = sext i32 %3790 to i64
  store i64 %3791, i64* %RDI.i2162, align 8
  %3792 = shl nsw i64 %3791, 3
  %3793 = add i64 %3792, %3786
  %3794 = add i64 %3774, 27
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i64*
  %3796 = load i64, i64* %3795, align 8
  %3797 = add i64 %3796, 4
  %3798 = add i64 %3774, 34
  store i64 %3798, i64* %3, align 8
  %3799 = inttoptr i64 %3797 to i32*
  store i32 0, i32* %3799, align 4
  %3800 = load i64, i64* %3, align 8
  %3801 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %3801, i64* %RSI.i2165, align 8
  %3802 = load i64, i64* %RBP.i, align 8
  %3803 = add i64 %3802, -35396
  %3804 = add i64 %3800, 15
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3803 to i32*
  %3806 = load i32, i32* %3805, align 4
  %3807 = sext i32 %3806 to i64
  store i64 %3807, i64* %RDI.i2162, align 8
  %3808 = shl nsw i64 %3807, 3
  %3809 = add i64 %3808, %3801
  %3810 = add i64 %3800, 19
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i64*
  %3812 = load i64, i64* %3811, align 8
  store i64 %3812, i64* %RSI.i2165, align 8
  %3813 = add i64 %3802, -36
  %3814 = add i64 %3800, 23
  store i64 %3814, i64* %3, align 8
  %3815 = inttoptr i64 %3813 to i32*
  %3816 = load i32, i32* %3815, align 4
  %3817 = sext i32 %3816 to i64
  store i64 %3817, i64* %RDI.i2162, align 8
  %3818 = shl nsw i64 %3817, 3
  %3819 = add i64 %3818, %3812
  %3820 = add i64 %3800, 27
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i64*
  %3822 = load i64, i64* %3821, align 8
  store i64 %3822, i64* %RSI.i2165, align 8
  %3823 = add i64 %3822, 8
  %3824 = add i64 %3800, 34
  store i64 %3824, i64* %3, align 8
  %3825 = inttoptr i64 %3823 to i32*
  store i32 0, i32* %3825, align 4
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -36
  %3828 = load i64, i64* %3, align 8
  %3829 = add i64 %3828, 3
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3827 to i32*
  %3831 = load i32, i32* %3830, align 4
  %3832 = add i32 %3831, 1
  %3833 = zext i32 %3832 to i64
  store i64 %3833, i64* %RAX.i2337, align 8
  %3834 = icmp eq i32 %3831, -1
  %3835 = icmp eq i32 %3832, 0
  %3836 = or i1 %3834, %3835
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %14, align 1
  %3838 = and i32 %3832, 255
  %3839 = tail call i32 @llvm.ctpop.i32(i32 %3838)
  %3840 = trunc i32 %3839 to i8
  %3841 = and i8 %3840, 1
  %3842 = xor i8 %3841, 1
  store i8 %3842, i8* %21, align 1
  %3843 = xor i32 %3832, %3831
  %3844 = lshr i32 %3843, 4
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  store i8 %3846, i8* %27, align 1
  %3847 = zext i1 %3835 to i8
  store i8 %3847, i8* %30, align 1
  %3848 = lshr i32 %3832, 31
  %3849 = trunc i32 %3848 to i8
  store i8 %3849, i8* %33, align 1
  %3850 = lshr i32 %3831, 31
  %3851 = xor i32 %3848, %3850
  %3852 = add nuw nsw i32 %3851, %3848
  %3853 = icmp eq i32 %3852, 2
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %39, align 1
  %3855 = add i64 %3828, 9
  store i64 %3855, i64* %3, align 8
  store i32 %3832, i32* %3830, align 4
  %3856 = load i64, i64* %3, align 8
  %3857 = add i64 %3856, -258
  store i64 %3857, i64* %3, align 8
  br label %block_.L_4b0e4a

block_.L_4b0f51:                                  ; preds = %block_.L_4b0e4a
  %3858 = add i64 %3574, 11
  store i64 %3858, i64* %3, align 8
  %3859 = load i32, i32* %3540, align 4
  %3860 = add i32 %3859, 1
  %3861 = zext i32 %3860 to i64
  store i64 %3861, i64* %RAX.i2337, align 8
  %3862 = icmp eq i32 %3859, -1
  %3863 = icmp eq i32 %3860, 0
  %3864 = or i1 %3862, %3863
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %14, align 1
  %3866 = and i32 %3860, 255
  %3867 = tail call i32 @llvm.ctpop.i32(i32 %3866)
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = xor i8 %3869, 1
  store i8 %3870, i8* %21, align 1
  %3871 = xor i32 %3860, %3859
  %3872 = lshr i32 %3871, 4
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  store i8 %3874, i8* %27, align 1
  %3875 = zext i1 %3863 to i8
  store i8 %3875, i8* %30, align 1
  %3876 = lshr i32 %3860, 31
  %3877 = trunc i32 %3876 to i8
  store i8 %3877, i8* %33, align 1
  %3878 = lshr i32 %3859, 31
  %3879 = xor i32 %3876, %3878
  %3880 = add nuw nsw i32 %3879, %3876
  %3881 = icmp eq i32 %3880, 2
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %39, align 1
  %3883 = add i64 %3574, 20
  store i64 %3883, i64* %3, align 8
  store i32 %3860, i32* %3540, align 4
  %3884 = load i64, i64* %3, align 8
  %3885 = add i64 %3884, -313
  store i64 %3885, i64* %3, align 8
  br label %block_.L_4b0e2c

block_.L_4b0f6a:                                  ; preds = %block_.L_4b0e2c
  %3886 = add i64 %3527, 1815
  br label %block_.L_4b1681

block_.L_4b0f76:                                  ; preds = %block_.L_4b0f76.preheader, %block_.L_4b0fd8
  %3887 = phi i64 [ %4060, %block_.L_4b0fd8 ], [ %.pre116, %block_.L_4b0f76.preheader ]
  %3888 = load i64, i64* %RBP.i, align 8
  %3889 = add i64 %3888, -8
  %3890 = add i64 %3887, 3
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3889 to i32*
  %3892 = load i32, i32* %3891, align 4
  %3893 = zext i32 %3892 to i64
  store i64 %3893, i64* %RAX.i2337, align 8
  %3894 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3894, i64* %RCX.i2273.pre-phi, align 8
  %3895 = add i64 %3894, 60
  %3896 = add i64 %3887, 14
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = sub i32 %3892, %3898
  %3900 = icmp ult i32 %3892, %3898
  %3901 = zext i1 %3900 to i8
  store i8 %3901, i8* %14, align 1
  %3902 = and i32 %3899, 255
  %3903 = tail call i32 @llvm.ctpop.i32(i32 %3902)
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = xor i8 %3905, 1
  store i8 %3906, i8* %21, align 1
  %3907 = xor i32 %3898, %3892
  %3908 = xor i32 %3907, %3899
  %3909 = lshr i32 %3908, 4
  %3910 = trunc i32 %3909 to i8
  %3911 = and i8 %3910, 1
  store i8 %3911, i8* %27, align 1
  %3912 = icmp eq i32 %3899, 0
  %3913 = zext i1 %3912 to i8
  store i8 %3913, i8* %30, align 1
  %3914 = lshr i32 %3899, 31
  %3915 = trunc i32 %3914 to i8
  store i8 %3915, i8* %33, align 1
  %3916 = lshr i32 %3892, 31
  %3917 = lshr i32 %3898, 31
  %3918 = xor i32 %3917, %3916
  %3919 = xor i32 %3914, %3916
  %3920 = add nuw nsw i32 %3919, %3918
  %3921 = icmp eq i32 %3920, 2
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %39, align 1
  %3923 = icmp ne i8 %3915, 0
  %3924 = xor i1 %3923, %3921
  %.v191 = select i1 %3924, i64 20, i64 117
  %3925 = add i64 %3887, %.v191
  store i64 %3925, i64* %3, align 8
  br i1 %3924, label %block_4b0f8a, label %block_.L_4b0feb

block_4b0f8a:                                     ; preds = %block_.L_4b0f76
  %3926 = add i64 %3888, -12
  %3927 = add i64 %3925, 7
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  store i32 0, i32* %3928, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_4b0f91

block_.L_4b0f91:                                  ; preds = %block_4b0fa5, %block_4b0f8a
  %3929 = phi i64 [ %4030, %block_4b0fa5 ], [ %.pre144, %block_4b0f8a ]
  %3930 = load i64, i64* %RBP.i, align 8
  %3931 = add i64 %3930, -12
  %3932 = add i64 %3929, 3
  store i64 %3932, i64* %3, align 8
  %3933 = inttoptr i64 %3931 to i32*
  %3934 = load i32, i32* %3933, align 4
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %RAX.i2337, align 8
  %3936 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3936, i64* %RCX.i2273.pre-phi, align 8
  %3937 = add i64 %3936, 52
  %3938 = add i64 %3929, 14
  store i64 %3938, i64* %3, align 8
  %3939 = inttoptr i64 %3937 to i32*
  %3940 = load i32, i32* %3939, align 4
  %3941 = sub i32 %3934, %3940
  %3942 = icmp ult i32 %3934, %3940
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %14, align 1
  %3944 = and i32 %3941, 255
  %3945 = tail call i32 @llvm.ctpop.i32(i32 %3944)
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = xor i8 %3947, 1
  store i8 %3948, i8* %21, align 1
  %3949 = xor i32 %3940, %3934
  %3950 = xor i32 %3949, %3941
  %3951 = lshr i32 %3950, 4
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  store i8 %3953, i8* %27, align 1
  %3954 = icmp eq i32 %3941, 0
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %30, align 1
  %3956 = lshr i32 %3941, 31
  %3957 = trunc i32 %3956 to i8
  store i8 %3957, i8* %33, align 1
  %3958 = lshr i32 %3934, 31
  %3959 = lshr i32 %3940, 31
  %3960 = xor i32 %3959, %3958
  %3961 = xor i32 %3956, %3958
  %3962 = add nuw nsw i32 %3961, %3960
  %3963 = icmp eq i32 %3962, 2
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %39, align 1
  %3965 = icmp ne i8 %3957, 0
  %3966 = xor i1 %3965, %3963
  %.v183 = select i1 %3966, i64 20, i64 71
  %3967 = add i64 %3929, %.v183
  store i64 %3967, i64* %3, align 8
  br i1 %3966, label %block_4b0fa5, label %block_.L_4b0fd8

block_4b0fa5:                                     ; preds = %block_.L_4b0f91
  %3968 = add i64 %3967, ptrtoint (%G_0x27546c__rip__type* @G_0x27546c__rip_ to i64)
  %3969 = add i64 %3967, 7
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3968 to i64*
  %3971 = load i64, i64* %3970, align 8
  store i64 %3971, i64* %RAX.i2337, align 8
  %3972 = add i64 %3930, -8
  %3973 = add i64 %3967, 11
  store i64 %3973, i64* %3, align 8
  %3974 = inttoptr i64 %3972 to i32*
  %3975 = load i32, i32* %3974, align 4
  %3976 = sext i32 %3975 to i64
  store i64 %3976, i64* %RCX.i2273.pre-phi, align 8
  %3977 = shl nsw i64 %3976, 3
  %3978 = add i64 %3977, %3971
  %3979 = add i64 %3967, 15
  store i64 %3979, i64* %3, align 8
  %3980 = inttoptr i64 %3978 to i64*
  %3981 = load i64, i64* %3980, align 8
  store i64 %3981, i64* %RAX.i2337, align 8
  %3982 = add i64 %3967, 19
  store i64 %3982, i64* %3, align 8
  %3983 = load i32, i32* %3933, align 4
  %3984 = sext i32 %3983 to i64
  store i64 %3984, i64* %RCX.i2273.pre-phi, align 8
  %3985 = shl nsw i64 %3984, 1
  %3986 = add i64 %3985, %3981
  %3987 = add i64 %3967, 23
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3986 to i16*
  %3989 = load i16, i16* %3988, align 2
  %3990 = zext i16 %3989 to i64
  store i64 %3990, i64* %RDX.i2167, align 8
  %3991 = uitofp i16 %3989 to double
  store double %3991, double* %52, align 1
  %3992 = add i64 %3930, -32
  %3993 = add i64 %3967, 32
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to double*
  %3995 = load double, double* %3994, align 8
  %3996 = fadd double %3991, %3995
  store double %3996, double* %52, align 1
  %3997 = add i64 %3967, 37
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3992 to double*
  store double %3996, double* %3998, align 8
  %3999 = load i64, i64* %RBP.i, align 8
  %4000 = add i64 %3999, -12
  %4001 = load i64, i64* %3, align 8
  %4002 = add i64 %4001, 3
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003, align 4
  %4005 = add i32 %4004, 1
  %4006 = zext i32 %4005 to i64
  store i64 %4006, i64* %RAX.i2337, align 8
  %4007 = icmp eq i32 %4004, -1
  %4008 = icmp eq i32 %4005, 0
  %4009 = or i1 %4007, %4008
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %14, align 1
  %4011 = and i32 %4005, 255
  %4012 = tail call i32 @llvm.ctpop.i32(i32 %4011)
  %4013 = trunc i32 %4012 to i8
  %4014 = and i8 %4013, 1
  %4015 = xor i8 %4014, 1
  store i8 %4015, i8* %21, align 1
  %4016 = xor i32 %4005, %4004
  %4017 = lshr i32 %4016, 4
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  store i8 %4019, i8* %27, align 1
  %4020 = zext i1 %4008 to i8
  store i8 %4020, i8* %30, align 1
  %4021 = lshr i32 %4005, 31
  %4022 = trunc i32 %4021 to i8
  store i8 %4022, i8* %33, align 1
  %4023 = lshr i32 %4004, 31
  %4024 = xor i32 %4021, %4023
  %4025 = add nuw nsw i32 %4024, %4021
  %4026 = icmp eq i32 %4025, 2
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %39, align 1
  %4028 = add i64 %4001, 9
  store i64 %4028, i64* %3, align 8
  store i32 %4005, i32* %4003, align 4
  %4029 = load i64, i64* %3, align 8
  %4030 = add i64 %4029, -66
  store i64 %4030, i64* %3, align 8
  br label %block_.L_4b0f91

block_.L_4b0fd8:                                  ; preds = %block_.L_4b0f91
  %4031 = add i64 %3930, -8
  %4032 = add i64 %3967, 8
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = add i32 %4034, 1
  %4036 = zext i32 %4035 to i64
  store i64 %4036, i64* %RAX.i2337, align 8
  %4037 = icmp eq i32 %4034, -1
  %4038 = icmp eq i32 %4035, 0
  %4039 = or i1 %4037, %4038
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %14, align 1
  %4041 = and i32 %4035, 255
  %4042 = tail call i32 @llvm.ctpop.i32(i32 %4041)
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  store i8 %4045, i8* %21, align 1
  %4046 = xor i32 %4035, %4034
  %4047 = lshr i32 %4046, 4
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  store i8 %4049, i8* %27, align 1
  %4050 = zext i1 %4038 to i8
  store i8 %4050, i8* %30, align 1
  %4051 = lshr i32 %4035, 31
  %4052 = trunc i32 %4051 to i8
  store i8 %4052, i8* %33, align 1
  %4053 = lshr i32 %4034, 31
  %4054 = xor i32 %4051, %4053
  %4055 = add nuw nsw i32 %4054, %4051
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %39, align 1
  %4058 = add i64 %3967, 14
  store i64 %4058, i64* %3, align 8
  store i32 %4035, i32* %4033, align 4
  %4059 = load i64, i64* %3, align 8
  %4060 = add i64 %4059, -112
  store i64 %4060, i64* %3, align 8
  br label %block_.L_4b0f76

block_.L_4b0feb:                                  ; preds = %block_.L_4b0f76
  %4061 = add i64 %3888, -35396
  %4062 = add i64 %3925, 10
  store i64 %4062, i64* %3, align 8
  %4063 = inttoptr i64 %4061 to i32*
  store i32 0, i32* %4063, align 4
  %RSI.i869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4065 = bitcast %union.VectorReg* %4064 to double*
  %4066 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4064, i64 0, i32 0, i32 0, i32 0, i64 0
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %4068 = bitcast i64* %4067 to double*
  %4069 = bitcast i64* %41 to double*
  %.pre123 = load i64, i64* %3, align 8
  %4070 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  %4071 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  br label %block_.L_4b0ff5

block_.L_4b0ff5:                                  ; preds = %block_.L_4b12b8, %block_.L_4b0feb
  %4072 = phi i64 [ %.pre123, %block_.L_4b0feb ], [ %5189, %block_.L_4b12b8 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.5, %block_.L_4b0feb ], [ %MEMORY.26, %block_.L_4b12b8 ]
  %4073 = load i64, i64* %RBP.i, align 8
  %4074 = add i64 %4073, -35396
  %4075 = add i64 %4072, 6
  store i64 %4075, i64* %3, align 8
  %4076 = inttoptr i64 %4074 to i32*
  %4077 = load i32, i32* %4076, align 4
  %4078 = zext i32 %4077 to i64
  store i64 %4078, i64* %RAX.i2337, align 8
  %4079 = add i64 %4073, -804
  %4080 = add i64 %4072, 12
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i32*
  %4082 = load i32, i32* %4081, align 4
  %4083 = add i32 %4082, 2
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RCX.i2273.pre-phi, align 8
  %4085 = lshr i32 %4083, 31
  %4086 = sub i32 %4077, %4083
  %4087 = icmp ult i32 %4077, %4083
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %14, align 1
  %4089 = and i32 %4086, 255
  %4090 = tail call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  store i8 %4093, i8* %21, align 1
  %4094 = xor i32 %4083, %4077
  %4095 = xor i32 %4094, %4086
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  store i8 %4098, i8* %27, align 1
  %4099 = icmp eq i32 %4086, 0
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %30, align 1
  %4101 = lshr i32 %4086, 31
  %4102 = trunc i32 %4101 to i8
  store i8 %4102, i8* %33, align 1
  %4103 = lshr i32 %4077, 31
  %4104 = xor i32 %4085, %4103
  %4105 = xor i32 %4101, %4103
  %4106 = add nuw nsw i32 %4105, %4104
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %39, align 1
  %4109 = icmp ne i8 %4102, 0
  %4110 = xor i1 %4109, %4107
  %.v177 = select i1 %4110, i64 23, i64 732
  %4111 = add i64 %4072, %.v177
  store i64 %4111, i64* %3, align 8
  br i1 %4110, label %block_4b100c, label %block_.L_4b12d1

block_4b100c:                                     ; preds = %block_.L_4b0ff5
  %4112 = add i64 %4073, -16
  %4113 = add i64 %4111, 7
  store i64 %4113, i64* %3, align 8
  %4114 = inttoptr i64 %4112 to i32*
  store i32 0, i32* %4114, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_4b1013

block_.L_4b1013:                                  ; preds = %block_.L_4b11b0, %block_4b100c
  %4115 = phi i64 [ %.pre137, %block_4b100c ], [ %5161, %block_.L_4b11b0 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_4b100c ], [ %4475, %block_.L_4b11b0 ]
  %4116 = load i64, i64* %RBP.i, align 8
  %4117 = add i64 %4116, -16
  %4118 = add i64 %4115, 3
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  %4120 = load i32, i32* %4119, align 4
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RAX.i2337, align 8
  %4122 = add i64 %4116, -35396
  %4123 = add i64 %4115, 10
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = sext i32 %4125 to i64
  store i64 %4126, i64* %RCX.i2273.pre-phi, align 8
  %4127 = shl nsw i64 %4126, 2
  %4128 = add nsw i64 %4127, 7489456
  %4129 = add i64 %4115, 17
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = sub i32 %4120, %4131
  %4133 = icmp ult i32 %4120, %4131
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %14, align 1
  %4135 = and i32 %4132, 255
  %4136 = tail call i32 @llvm.ctpop.i32(i32 %4135)
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  store i8 %4139, i8* %21, align 1
  %4140 = xor i32 %4131, %4120
  %4141 = xor i32 %4140, %4132
  %4142 = lshr i32 %4141, 4
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  store i8 %4144, i8* %27, align 1
  %4145 = icmp eq i32 %4132, 0
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %30, align 1
  %4147 = lshr i32 %4132, 31
  %4148 = trunc i32 %4147 to i8
  store i8 %4148, i8* %33, align 1
  %4149 = lshr i32 %4120, 31
  %4150 = lshr i32 %4131, 31
  %4151 = xor i32 %4150, %4149
  %4152 = xor i32 %4147, %4149
  %4153 = add nuw nsw i32 %4152, %4151
  %4154 = icmp eq i32 %4153, 2
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %39, align 1
  %4156 = icmp ne i8 %4148, 0
  %4157 = xor i1 %4156, %4154
  %.v182 = select i1 %4157, i64 23, i64 677
  %4158 = add i64 %4115, %.v182
  store i64 %4158, i64* %3, align 8
  br i1 %4157, label %block_4b102a, label %block_.L_4b12b8

block_4b102a:                                     ; preds = %block_.L_4b1013
  store <4 x i32> zeroinitializer, <4 x i32>* %4070, align 1
  %4159 = add i64 %4116, -768
  store i64 %4159, i64* %RAX.i2337, align 8
  %4160 = add i64 %4158, 17
  store i64 %4160, i64* %3, align 8
  %4161 = load i32, i32* %4124, align 4
  %4162 = sext i32 %4161 to i64
  %4163 = mul nsw i64 %4162, 120
  store i64 %4163, i64* %RCX.i2273.pre-phi, align 8
  %4164 = lshr i64 %4163, 63
  %4165 = add i64 %4163, %4159
  store i64 %4165, i64* %RAX.i2337, align 8
  %4166 = icmp ult i64 %4165, %4159
  %4167 = icmp ult i64 %4165, %4163
  %4168 = or i1 %4166, %4167
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %14, align 1
  %4170 = trunc i64 %4165 to i32
  %4171 = and i32 %4170, 255
  %4172 = tail call i32 @llvm.ctpop.i32(i32 %4171)
  %4173 = trunc i32 %4172 to i8
  %4174 = and i8 %4173, 1
  %4175 = xor i8 %4174, 1
  store i8 %4175, i8* %21, align 1
  %4176 = xor i64 %4163, %4159
  %4177 = xor i64 %4176, %4165
  %4178 = lshr i64 %4177, 4
  %4179 = trunc i64 %4178 to i8
  %4180 = and i8 %4179, 1
  store i8 %4180, i8* %27, align 1
  %4181 = icmp eq i64 %4165, 0
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %30, align 1
  %4183 = lshr i64 %4165, 63
  %4184 = trunc i64 %4183 to i8
  store i8 %4184, i8* %33, align 1
  %4185 = lshr i64 %4159, 63
  %4186 = xor i64 %4183, %4185
  %4187 = xor i64 %4183, %4164
  %4188 = add nuw nsw i64 %4186, %4187
  %4189 = icmp eq i64 %4188, 2
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %39, align 1
  %4191 = add i64 %4158, 28
  store i64 %4191, i64* %3, align 8
  %4192 = load i32, i32* %4119, align 4
  %4193 = sext i32 %4192 to i64
  store i64 %4193, i64* %RCX.i2273.pre-phi, align 8
  %4194 = shl nsw i64 %4193, 3
  %4195 = add i64 %4194, %4165
  %4196 = add i64 %4158, 33
  store i64 %4196, i64* %3, align 8
  %4197 = load i64, i64* %53, align 1
  %4198 = inttoptr i64 %4195 to i64*
  store i64 %4197, i64* %4198, align 8
  %4199 = load i64, i64* %RBP.i, align 8
  %4200 = add i64 %4199, -35396
  %4201 = load i64, i64* %3, align 8
  %4202 = add i64 %4201, 7
  store i64 %4202, i64* %3, align 8
  %4203 = inttoptr i64 %4200 to i32*
  %4204 = load i32, i32* %4203, align 4
  %4205 = sext i32 %4204 to i64
  store i64 %4205, i64* %RAX.i2337, align 8
  %4206 = shl nsw i64 %4205, 3
  %4207 = add nsw i64 %4206, 7482144
  %4208 = add i64 %4201, 15
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4207 to i64*
  %4210 = load i64, i64* %4209, align 8
  store i64 %4210, i64* %RAX.i2337, align 8
  %4211 = add i64 %4199, -16
  %4212 = add i64 %4201, 19
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = sext i32 %4214 to i64
  store i64 %4215, i64* %RCX.i2273.pre-phi, align 8
  %4216 = shl nsw i64 %4215, 3
  %4217 = add i64 %4216, %4210
  %4218 = add i64 %4201, 23
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i64*
  %4220 = load i64, i64* %4219, align 8
  store i64 %4220, i64* %RAX.i2337, align 8
  %4221 = add i64 %4220, 6432
  %4222 = add i64 %4201, 30
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i64*
  %4224 = load i64, i64* %4223, align 8
  store i64 %4224, i64* %RAX.i2337, align 8
  %4225 = add i64 %4199, -784
  %4226 = add i64 %4201, 37
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i64*
  store i64 %4224, i64* %4227, align 8
  %4228 = load i64, i64* %RBP.i, align 8
  %4229 = add i64 %4228, -35396
  %4230 = load i64, i64* %3, align 8
  %4231 = add i64 %4230, 7
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4229 to i32*
  %4233 = load i32, i32* %4232, align 4
  %4234 = sext i32 %4233 to i64
  store i64 %4234, i64* %RAX.i2337, align 8
  %4235 = shl nsw i64 %4234, 3
  %4236 = add nsw i64 %4235, 7482144
  %4237 = add i64 %4230, 15
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i64*
  %4239 = load i64, i64* %4238, align 8
  store i64 %4239, i64* %RAX.i2337, align 8
  %4240 = add i64 %4228, -16
  %4241 = add i64 %4230, 19
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = sext i32 %4243 to i64
  store i64 %4244, i64* %RCX.i2273.pre-phi, align 8
  %4245 = shl nsw i64 %4244, 3
  %4246 = add i64 %4245, %4239
  %4247 = add i64 %4230, 23
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i64*
  %4249 = load i64, i64* %4248, align 8
  store i64 %4249, i64* %RAX.i2337, align 8
  %4250 = add i64 %4249, 6440
  %4251 = add i64 %4230, 30
  store i64 %4251, i64* %3, align 8
  %4252 = inttoptr i64 %4250 to i64*
  %4253 = load i64, i64* %4252, align 8
  store i64 %4253, i64* %RAX.i2337, align 8
  %4254 = add i64 %4228, -792
  %4255 = add i64 %4230, 37
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i64*
  store i64 %4253, i64* %4256, align 8
  %4257 = load i64, i64* %RBP.i, align 8
  %4258 = add i64 %4257, -8
  %4259 = load i64, i64* %3, align 8
  %4260 = add i64 %4259, 7
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4258 to i32*
  store i32 0, i32* %4261, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_4b109c

block_.L_4b109c:                                  ; preds = %block_4b10be, %block_4b102a
  %4262 = phi i64 [ %4403, %block_4b10be ], [ %.pre138, %block_4b102a ]
  %4263 = load i64, i64* %RBP.i, align 8
  %4264 = add i64 %4263, -8
  %4265 = add i64 %4262, 3
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  %4267 = load i32, i32* %4266, align 4
  %4268 = zext i32 %4267 to i64
  store i64 %4268, i64* %RAX.i2337, align 8
  %4269 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4269, i64* %RCX.i2273.pre-phi, align 8
  %4270 = add i64 %4269, 60
  %4271 = add i64 %4262, 14
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i32*
  %4273 = load i32, i32* %4272, align 4
  %4274 = zext i32 %4273 to i64
  store i64 %4274, i64* %RDX.i2167, align 8
  store i64 %4269, i64* %RCX.i2273.pre-phi, align 8
  %4275 = add i64 %4269, 52
  %4276 = add i64 %4262, 26
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4275 to i32*
  %4278 = load i32, i32* %4277, align 4
  %4279 = sext i32 %4273 to i64
  %4280 = sext i32 %4278 to i64
  %4281 = mul nsw i64 %4280, %4279
  %4282 = and i64 %4281, 4294967295
  store i64 %4282, i64* %RDX.i2167, align 8
  %4283 = trunc i64 %4281 to i32
  %4284 = sub i32 %4267, %4283
  %4285 = icmp ult i32 %4267, %4283
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %14, align 1
  %4287 = and i32 %4284, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %21, align 1
  %4292 = xor i32 %4283, %4267
  %4293 = xor i32 %4292, %4284
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %27, align 1
  %4297 = icmp eq i32 %4284, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %30, align 1
  %4299 = lshr i32 %4284, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %33, align 1
  %4301 = lshr i32 %4267, 31
  %4302 = lshr i32 %4283, 31
  %4303 = xor i32 %4302, %4301
  %4304 = xor i32 %4299, %4301
  %4305 = add nuw nsw i32 %4304, %4303
  %4306 = icmp eq i32 %4305, 2
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %39, align 1
  %4308 = icmp ne i8 %4300, 0
  %4309 = xor i1 %4308, %4306
  %.v199 = select i1 %4309, i64 34, i64 102
  %4310 = add i64 %4262, %.v199
  store i64 %4310, i64* %3, align 8
  br i1 %4309, label %block_4b10be, label %block_.L_4b1102

block_4b10be:                                     ; preds = %block_.L_4b109c
  %4311 = add i64 %4263, -768
  store i64 %4311, i64* %RAX.i2337, align 8
  %4312 = add i64 %4263, -784
  %4313 = add i64 %4310, 14
  store i64 %4313, i64* %3, align 8
  %4314 = inttoptr i64 %4312 to i64*
  %4315 = load i64, i64* %4314, align 8
  store i64 %4315, i64* %RCX.i2273.pre-phi, align 8
  %4316 = add i64 %4310, 18
  store i64 %4316, i64* %3, align 8
  %4317 = load i32, i32* %4266, align 4
  %4318 = sext i32 %4317 to i64
  store i64 %4318, i64* %RDX.i2167, align 8
  %4319 = shl nsw i64 %4318, 1
  %4320 = add i64 %4319, %4315
  %4321 = add i64 %4310, 22
  store i64 %4321, i64* %3, align 8
  %4322 = inttoptr i64 %4320 to i16*
  %4323 = load i16, i16* %4322, align 2
  %4324 = zext i16 %4323 to i64
  store i64 %4324, i64* %RSI.i869, align 8
  %4325 = uitofp i16 %4323 to double
  store double %4325, double* %52, align 1
  %4326 = add i64 %4263, -35396
  %4327 = add i64 %4310, 33
  store i64 %4327, i64* %3, align 8
  %4328 = inttoptr i64 %4326 to i32*
  %4329 = load i32, i32* %4328, align 4
  %4330 = sext i32 %4329 to i64
  %4331 = mul nsw i64 %4330, 120
  store i64 %4331, i64* %RCX.i2273.pre-phi, align 8
  %4332 = lshr i64 %4331, 63
  %4333 = add i64 %4331, %4311
  store i64 %4333, i64* %RAX.i2337, align 8
  %4334 = icmp ult i64 %4333, %4311
  %4335 = icmp ult i64 %4333, %4331
  %4336 = or i1 %4334, %4335
  %4337 = zext i1 %4336 to i8
  store i8 %4337, i8* %14, align 1
  %4338 = trunc i64 %4333 to i32
  %4339 = and i32 %4338, 255
  %4340 = tail call i32 @llvm.ctpop.i32(i32 %4339)
  %4341 = trunc i32 %4340 to i8
  %4342 = and i8 %4341, 1
  %4343 = xor i8 %4342, 1
  store i8 %4343, i8* %21, align 1
  %4344 = xor i64 %4331, %4311
  %4345 = xor i64 %4344, %4333
  %4346 = lshr i64 %4345, 4
  %4347 = trunc i64 %4346 to i8
  %4348 = and i8 %4347, 1
  store i8 %4348, i8* %27, align 1
  %4349 = icmp eq i64 %4333, 0
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %30, align 1
  %4351 = lshr i64 %4333, 63
  %4352 = trunc i64 %4351 to i8
  store i8 %4352, i8* %33, align 1
  %4353 = lshr i64 %4311, 63
  %4354 = xor i64 %4351, %4353
  %4355 = xor i64 %4351, %4332
  %4356 = add nuw nsw i64 %4354, %4355
  %4357 = icmp eq i64 %4356, 2
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %39, align 1
  %4359 = add i64 %4263, -16
  %4360 = add i64 %4310, 44
  store i64 %4360, i64* %3, align 8
  %4361 = inttoptr i64 %4359 to i32*
  %4362 = load i32, i32* %4361, align 4
  %4363 = sext i32 %4362 to i64
  store i64 %4363, i64* %RCX.i2273.pre-phi, align 8
  %4364 = shl nsw i64 %4363, 3
  %4365 = add i64 %4364, %4333
  %4366 = add i64 %4310, 49
  store i64 %4366, i64* %3, align 8
  %4367 = inttoptr i64 %4365 to double*
  %4368 = load double, double* %4367, align 8
  %4369 = fadd double %4325, %4368
  store double %4369, double* %52, align 1
  %4370 = add i64 %4310, 54
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4365 to double*
  store double %4369, double* %4371, align 8
  %4372 = load i64, i64* %RBP.i, align 8
  %4373 = add i64 %4372, -8
  %4374 = load i64, i64* %3, align 8
  %4375 = add i64 %4374, 3
  store i64 %4375, i64* %3, align 8
  %4376 = inttoptr i64 %4373 to i32*
  %4377 = load i32, i32* %4376, align 4
  %4378 = add i32 %4377, 1
  %4379 = zext i32 %4378 to i64
  store i64 %4379, i64* %RAX.i2337, align 8
  %4380 = icmp eq i32 %4377, -1
  %4381 = icmp eq i32 %4378, 0
  %4382 = or i1 %4380, %4381
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %14, align 1
  %4384 = and i32 %4378, 255
  %4385 = tail call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  store i8 %4388, i8* %21, align 1
  %4389 = xor i32 %4378, %4377
  %4390 = lshr i32 %4389, 4
  %4391 = trunc i32 %4390 to i8
  %4392 = and i8 %4391, 1
  store i8 %4392, i8* %27, align 1
  %4393 = zext i1 %4381 to i8
  store i8 %4393, i8* %30, align 1
  %4394 = lshr i32 %4378, 31
  %4395 = trunc i32 %4394 to i8
  store i8 %4395, i8* %33, align 1
  %4396 = lshr i32 %4377, 31
  %4397 = xor i32 %4394, %4396
  %4398 = add nuw nsw i32 %4397, %4394
  %4399 = icmp eq i32 %4398, 2
  %4400 = zext i1 %4399 to i8
  store i8 %4400, i8* %39, align 1
  %4401 = add i64 %4374, 9
  store i64 %4401, i64* %3, align 8
  store i32 %4378, i32* %4376, align 4
  %4402 = load i64, i64* %3, align 8
  %4403 = add i64 %4402, -97
  store i64 %4403, i64* %3, align 8
  br label %block_.L_4b109c

block_.L_4b1102:                                  ; preds = %block_.L_4b109c
  store <4 x i32> zeroinitializer, <4 x i32>* %4071, align 1
  %4404 = add i64 %4263, -768
  store i64 %4404, i64* %RAX.i2337, align 8
  %4405 = add i64 %4263, -35396
  %4406 = add i64 %4310, 17
  store i64 %4406, i64* %3, align 8
  %4407 = inttoptr i64 %4405 to i32*
  %4408 = load i32, i32* %4407, align 4
  %4409 = sext i32 %4408 to i64
  %4410 = mul nsw i64 %4409, 120
  store i64 %4410, i64* %RCX.i2273.pre-phi, align 8
  %4411 = lshr i64 %4410, 63
  %4412 = add i64 %4410, %4404
  store i64 %4412, i64* %RAX.i2337, align 8
  %4413 = icmp ult i64 %4412, %4404
  %4414 = icmp ult i64 %4412, %4410
  %4415 = or i1 %4413, %4414
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %14, align 1
  %4417 = trunc i64 %4412 to i32
  %4418 = and i32 %4417, 255
  %4419 = tail call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  store i8 %4422, i8* %21, align 1
  %4423 = xor i64 %4410, %4404
  %4424 = xor i64 %4423, %4412
  %4425 = lshr i64 %4424, 4
  %4426 = trunc i64 %4425 to i8
  %4427 = and i8 %4426, 1
  store i8 %4427, i8* %27, align 1
  %4428 = icmp eq i64 %4412, 0
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %30, align 1
  %4430 = lshr i64 %4412, 63
  %4431 = trunc i64 %4430 to i8
  store i8 %4431, i8* %33, align 1
  %4432 = lshr i64 %4404, 63
  %4433 = xor i64 %4430, %4432
  %4434 = xor i64 %4430, %4411
  %4435 = add nuw nsw i64 %4433, %4434
  %4436 = icmp eq i64 %4435, 2
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %39, align 1
  %4438 = add i64 %4263, -16
  %4439 = add i64 %4310, 28
  store i64 %4439, i64* %3, align 8
  %4440 = inttoptr i64 %4438 to i32*
  %4441 = load i32, i32* %4440, align 4
  %4442 = sext i32 %4441 to i64
  store i64 %4442, i64* %RCX.i2273.pre-phi, align 8
  %4443 = shl nsw i64 %4442, 3
  %4444 = add i64 %4443, %4412
  %4445 = add i64 %4310, 33
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4444 to i64*
  %4447 = load i64, i64* %4446, align 8
  store i64 %4447, i64* %4066, align 1
  store double 0.000000e+00, double* %4068, align 1
  %4448 = add i64 %4310, 37
  store i64 %4448, i64* %3, align 8
  %.cast = bitcast i64 %4447 to double
  %4449 = load double, double* %52, align 1
  %4450 = fcmp uno double %.cast, %4449
  br i1 %4450, label %4451, label %4461

; <label>:4451:                                   ; preds = %block_.L_4b1102
  %4452 = fadd double %.cast, %4449
  %4453 = bitcast double %4452 to i64
  %4454 = and i64 %4453, 9221120237041090560
  %4455 = icmp eq i64 %4454, 9218868437227405312
  %4456 = and i64 %4453, 2251799813685247
  %4457 = icmp ne i64 %4456, 0
  %4458 = and i1 %4455, %4457
  br i1 %4458, label %4459, label %4467

; <label>:4459:                                   ; preds = %4451
  %4460 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4448, %struct.Memory* %MEMORY.26)
  %.pre139 = load i64, i64* %3, align 8
  %.pre140 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4461:                                   ; preds = %block_.L_4b1102
  %4462 = fcmp ogt double %.cast, %4449
  br i1 %4462, label %4467, label %4463

; <label>:4463:                                   ; preds = %4461
  %4464 = fcmp olt double %.cast, %4449
  br i1 %4464, label %4467, label %4465

; <label>:4465:                                   ; preds = %4463
  %4466 = fcmp oeq double %.cast, %4449
  br i1 %4466, label %4467, label %4471

; <label>:4467:                                   ; preds = %4465, %4463, %4461, %4451
  %4468 = phi i8 [ 0, %4461 ], [ 0, %4463 ], [ 1, %4465 ], [ 1, %4451 ]
  %4469 = phi i8 [ 0, %4461 ], [ 0, %4463 ], [ 0, %4465 ], [ 1, %4451 ]
  %4470 = phi i8 [ 0, %4461 ], [ 1, %4463 ], [ 0, %4465 ], [ 1, %4451 ]
  store i8 %4468, i8* %30, align 1
  store i8 %4469, i8* %21, align 1
  store i8 %4470, i8* %14, align 1
  br label %4471

; <label>:4471:                                   ; preds = %4467, %4465
  %4472 = phi i8 [ %4468, %4467 ], [ %4429, %4465 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4471, %4459
  %4473 = phi i8 [ %.pre140, %4459 ], [ %4472, %4471 ]
  %4474 = phi i64 [ %.pre139, %4459 ], [ %4448, %4471 ]
  %4475 = phi %struct.Memory* [ %4460, %4459 ], [ %MEMORY.26, %4471 ]
  %4476 = icmp eq i8 %4473, 0
  %.v200 = select i1 %4476, i64 17, i64 6
  %4477 = add i64 %4474, %.v200
  store i64 %4477, i64* %3, align 8
  br i1 %4476, label %block_.L_4b1138, label %block_4b112d

block_4b112d:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %4478 = load i8, i8* %21, align 1
  %4479 = icmp ne i8 %4478, 0
  %.v280 = select i1 %4479, i64 11, i64 6
  %4480 = add i64 %4477, %.v280
  store i64 %4480, i64* %3, align 8
  %cmpBr_4b112d = icmp eq i8 %4478, 1
  br i1 %cmpBr_4b112d, label %block_.L_4b1138, label %block_4b1133

block_4b1133:                                     ; preds = %block_4b112d
  %4481 = load i64, i64* %RBP.i, align 8
  %4482 = add i64 %4481, -796
  %4483 = add i64 %4480, 81
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RAX.i2337, align 8
  %4487 = add i64 %4481, -35400
  %4488 = add i64 %4480, 87
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to i32*
  store i32 %4485, i32* %4489, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_4b118a

block_.L_4b1138:                                  ; preds = %block_4b112d, %routine_ucomisd__xmm0___xmm1.exit
  %4490 = phi i64 [ %4480, %block_4b112d ], [ %4477, %routine_ucomisd__xmm0___xmm1.exit ]
  %4491 = add i64 %4490, ptrtoint (%G_0x748__rip__type* @G_0x748__rip_ to i64)
  %4492 = add i64 %4490, 8
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4491 to i64*
  %4494 = load i64, i64* %4493, align 8
  store i64 %4494, i64* %53, align 1
  store double 0.000000e+00, double* %4069, align 1
  %4495 = load i64, i64* %RBP.i, align 8
  %4496 = add i64 %4495, -768
  store i64 %4496, i64* %RAX.i2337, align 8
  %4497 = add i64 %4495, -796
  %4498 = add i64 %4490, 23
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4497 to i32*
  %4500 = load i32, i32* %4499, align 4
  %4501 = sitofp i32 %4500 to double
  store double %4501, double* %4065, align 1
  %4502 = add i64 %4495, -32
  %4503 = add i64 %4490, 28
  store i64 %4503, i64* %3, align 8
  %4504 = load i64, i64* %4067, align 1
  %4505 = inttoptr i64 %4502 to double*
  %4506 = load double, double* %4505, align 8
  %4507 = fmul double %4501, %4506
  store double %4507, double* %4065, align 1
  %4508 = add i64 %4495, -35396
  %4509 = add i64 %4490, 35
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = sext i32 %4511 to i64
  %4513 = mul nsw i64 %4512, 120
  store i64 %4513, i64* %RCX.i2273.pre-phi, align 8
  %4514 = lshr i64 %4513, 63
  %4515 = add i64 %4513, %4496
  store i64 %4515, i64* %RAX.i2337, align 8
  %4516 = icmp ult i64 %4515, %4496
  %4517 = icmp ult i64 %4515, %4513
  %4518 = or i1 %4516, %4517
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %14, align 1
  %4520 = trunc i64 %4515 to i32
  %4521 = and i32 %4520, 255
  %4522 = tail call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  store i8 %4525, i8* %21, align 1
  %4526 = xor i64 %4513, %4496
  %4527 = xor i64 %4526, %4515
  %4528 = lshr i64 %4527, 4
  %4529 = trunc i64 %4528 to i8
  %4530 = and i8 %4529, 1
  store i8 %4530, i8* %27, align 1
  %4531 = icmp eq i64 %4515, 0
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %30, align 1
  %4533 = lshr i64 %4515, 63
  %4534 = trunc i64 %4533 to i8
  store i8 %4534, i8* %33, align 1
  %4535 = lshr i64 %4496, 63
  %4536 = xor i64 %4533, %4535
  %4537 = xor i64 %4533, %4514
  %4538 = add nuw nsw i64 %4536, %4537
  %4539 = icmp eq i64 %4538, 2
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %39, align 1
  %4541 = add i64 %4495, -16
  %4542 = add i64 %4490, 46
  store i64 %4542, i64* %3, align 8
  %4543 = inttoptr i64 %4541 to i32*
  %4544 = load i32, i32* %4543, align 4
  %4545 = sext i32 %4544 to i64
  store i64 %4545, i64* %RCX.i2273.pre-phi, align 8
  %4546 = shl nsw i64 %4545, 3
  %4547 = add i64 %4546, %4515
  %4548 = add i64 %4490, 51
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to double*
  %4550 = load double, double* %4549, align 8
  %4551 = fdiv double %4507, %4550
  %4552 = load double, double* %52, align 1
  %4553 = fadd double %4551, %4552
  store double %4553, double* %4065, align 1
  store i64 %4504, i64* %4067, align 1
  %4554 = tail call double @llvm.trunc.f64(double %4553)
  %4555 = tail call double @llvm.fabs.f64(double %4554)
  %4556 = fcmp ogt double %4555, 0x41DFFFFFFFC00000
  %4557 = fptosi double %4554 to i32
  %4558 = zext i32 %4557 to i64
  %4559 = select i1 %4556, i64 2147483648, i64 %4558
  store i64 %4559, i64* %RDX.i2167, align 8
  %4560 = load i64, i64* %RBP.i, align 8
  %4561 = add i64 %4560, -35400
  %4562 = trunc i64 %4559 to i32
  %4563 = add i64 %4490, 65
  store i64 %4563, i64* %3, align 8
  %4564 = inttoptr i64 %4561 to i32*
  store i32 %4562, i32* %4564, align 4
  %4565 = load i64, i64* %3, align 8
  %4566 = add i64 %4565, 17
  store i64 %4566, i64* %3, align 8
  br label %block_.L_4b118a

block_.L_4b118a:                                  ; preds = %block_4b1133, %block_.L_4b1138
  %4567 = phi i64 [ %.pre141, %block_4b1133 ], [ %4566, %block_.L_4b1138 ]
  %4568 = load i64, i64* %RBP.i, align 8
  %4569 = add i64 %4568, -35400
  %4570 = add i64 %4567, 7
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = add i32 %4572, 64
  %4574 = icmp ult i32 %4572, -64
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %14, align 1
  %4576 = and i32 %4573, 255
  %4577 = tail call i32 @llvm.ctpop.i32(i32 %4576)
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = xor i8 %4579, 1
  store i8 %4580, i8* %21, align 1
  %4581 = xor i32 %4573, %4572
  %4582 = lshr i32 %4581, 4
  %4583 = trunc i32 %4582 to i8
  %4584 = and i8 %4583, 1
  store i8 %4584, i8* %27, align 1
  %4585 = icmp eq i32 %4573, 0
  %4586 = zext i1 %4585 to i8
  store i8 %4586, i8* %30, align 1
  %4587 = lshr i32 %4573, 31
  %4588 = trunc i32 %4587 to i8
  store i8 %4588, i8* %33, align 1
  %4589 = lshr i32 %4572, 31
  %4590 = xor i32 %4589, 1
  %4591 = xor i32 %4587, %4589
  %4592 = add nuw nsw i32 %4591, %4590
  %4593 = icmp eq i32 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %39, align 1
  %4595 = icmp ne i8 %4588, 0
  %4596 = xor i1 %4595, %4593
  %.v201 = select i1 %4596, i64 26, i64 13
  %4597 = add i64 %4567, %.v201
  store i64 %4597, i64* %3, align 8
  br i1 %4596, label %block_.L_4b11a4, label %block_4b1197

block_4b1197:                                     ; preds = %block_.L_4b118a
  %4598 = add i64 %4597, 7
  store i64 %4598, i64* %3, align 8
  %4599 = load i32, i32* %4571, align 4
  %4600 = add i32 %4599, -127
  %4601 = icmp ult i32 %4599, 127
  %4602 = zext i1 %4601 to i8
  store i8 %4602, i8* %14, align 1
  %4603 = and i32 %4600, 255
  %4604 = tail call i32 @llvm.ctpop.i32(i32 %4603)
  %4605 = trunc i32 %4604 to i8
  %4606 = and i8 %4605, 1
  %4607 = xor i8 %4606, 1
  store i8 %4607, i8* %21, align 1
  %4608 = xor i32 %4599, 16
  %4609 = xor i32 %4608, %4600
  %4610 = lshr i32 %4609, 4
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  store i8 %4612, i8* %27, align 1
  %4613 = icmp eq i32 %4600, 0
  %4614 = zext i1 %4613 to i8
  store i8 %4614, i8* %30, align 1
  %4615 = lshr i32 %4600, 31
  %4616 = trunc i32 %4615 to i8
  store i8 %4616, i8* %33, align 1
  %4617 = lshr i32 %4599, 31
  %4618 = xor i32 %4615, %4617
  %4619 = add nuw nsw i32 %4618, %4617
  %4620 = icmp eq i32 %4619, 2
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %39, align 1
  %4622 = icmp ne i8 %4616, 0
  %4623 = xor i1 %4622, %4620
  %4624 = or i1 %4613, %4623
  %.v202 = select i1 %4624, i64 25, i64 13
  %4625 = add i64 %4597, %.v202
  store i64 %4625, i64* %3, align 8
  br i1 %4624, label %block_.L_4b11b0, label %block_.L_4b11a4

block_.L_4b11a4:                                  ; preds = %block_4b1197, %block_.L_4b118a
  %4626 = phi i64 [ %4625, %block_4b1197 ], [ %4597, %block_.L_4b118a ]
  %4627 = add i64 %4568, -796
  %4628 = add i64 %4626, 6
  store i64 %4628, i64* %3, align 8
  %4629 = inttoptr i64 %4627 to i32*
  %4630 = load i32, i32* %4629, align 4
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RAX.i2337, align 8
  %4632 = add i64 %4626, 12
  store i64 %4632, i64* %3, align 8
  store i32 %4630, i32* %4571, align 4
  %.pre142 = load i64, i64* %RBP.i, align 8
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_4b11b0

block_.L_4b11b0:                                  ; preds = %block_.L_4b11a4, %block_4b1197
  %4633 = phi i64 [ %.pre143, %block_.L_4b11a4 ], [ %4625, %block_4b1197 ]
  %4634 = phi i64 [ %.pre142, %block_.L_4b11a4 ], [ %4568, %block_4b1197 ]
  %4635 = add i64 %4634, -2976
  store i64 %4635, i64* %RAX.i2337, align 8
  %4636 = add i64 %4634, -1888
  store i64 %4636, i64* %RCX.i2273.pre-phi, align 8
  %4637 = add i64 %4634, -35404
  %4638 = add i64 %4633, 24
  store i64 %4638, i64* %3, align 8
  %4639 = inttoptr i64 %4637 to i32*
  store i32 0, i32* %4639, align 4
  %4640 = load i64, i64* %RBP.i, align 8
  %4641 = add i64 %4640, -35400
  %4642 = load i64, i64* %3, align 8
  %4643 = add i64 %4642, 6
  store i64 %4643, i64* %3, align 8
  %4644 = inttoptr i64 %4641 to i32*
  %4645 = load i32, i32* %4644, align 4
  %4646 = zext i32 %4645 to i64
  store i64 %4646, i64* %RDX.i2167, align 8
  %4647 = add i64 %4640, -35396
  %4648 = add i64 %4642, 13
  store i64 %4648, i64* %3, align 8
  %4649 = inttoptr i64 %4647 to i32*
  %4650 = load i32, i32* %4649, align 4
  %4651 = sext i32 %4650 to i64
  %4652 = add i64 %4642, 20
  store i64 %4652, i64* %3, align 8
  %4653 = sext i32 %4650 to i128
  %4654 = and i128 %4653, -18446744073709551616
  %4655 = zext i64 %4651 to i128
  %4656 = or i128 %4654, %4655
  %4657 = mul nsw i128 %4656, 180
  %4658 = trunc i128 %4657 to i64
  store i64 %4658, i64* %RSI.i2165, align 8
  %4659 = sext i64 %4658 to i128
  %4660 = icmp ne i128 %4659, %4657
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %14, align 1
  %4662 = trunc i128 %4657 to i32
  %4663 = and i32 %4662, 252
  %4664 = tail call i32 @llvm.ctpop.i32(i32 %4663)
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = xor i8 %4666, 1
  store i8 %4667, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4668 = lshr i64 %4658, 63
  %4669 = trunc i64 %4668 to i8
  store i8 %4669, i8* %33, align 1
  store i8 %4661, i8* %39, align 1
  %4670 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %4671 = add i64 %4658, %4670
  store i64 %4671, i64* %RDI.i2162, align 8
  %4672 = icmp ult i64 %4671, %4670
  %4673 = icmp ult i64 %4671, %4658
  %4674 = or i1 %4672, %4673
  %4675 = zext i1 %4674 to i8
  store i8 %4675, i8* %14, align 1
  %4676 = trunc i64 %4671 to i32
  %4677 = and i32 %4676, 255
  %4678 = tail call i32 @llvm.ctpop.i32(i32 %4677)
  %4679 = trunc i32 %4678 to i8
  %4680 = and i8 %4679, 1
  %4681 = xor i8 %4680, 1
  store i8 %4681, i8* %21, align 1
  %4682 = xor i64 %4658, %4670
  %4683 = xor i64 %4682, %4671
  %4684 = lshr i64 %4683, 4
  %4685 = trunc i64 %4684 to i8
  %4686 = and i8 %4685, 1
  store i8 %4686, i8* %27, align 1
  %4687 = icmp eq i64 %4671, 0
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %30, align 1
  %4689 = lshr i64 %4671, 63
  %4690 = trunc i64 %4689 to i8
  store i8 %4690, i8* %33, align 1
  %4691 = lshr i64 %4670, 63
  %4692 = xor i64 %4689, %4691
  %4693 = xor i64 %4689, %4668
  %4694 = add nuw nsw i64 %4692, %4693
  %4695 = icmp eq i64 %4694, 2
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %39, align 1
  %4697 = add i64 %4640, -16
  %4698 = add i64 %4642, 30
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i32*
  %4700 = load i32, i32* %4699, align 4
  %4701 = sext i32 %4700 to i64
  %4702 = mul nsw i64 %4701, 12
  store i64 %4702, i64* %RSI.i2165, align 8
  %4703 = lshr i64 %4702, 63
  %4704 = add i64 %4702, %4671
  store i64 %4704, i64* %RDI.i2162, align 8
  %4705 = icmp ult i64 %4704, %4671
  %4706 = icmp ult i64 %4704, %4702
  %4707 = or i1 %4705, %4706
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %14, align 1
  %4709 = trunc i64 %4704 to i32
  %4710 = and i32 %4709, 255
  %4711 = tail call i32 @llvm.ctpop.i32(i32 %4710)
  %4712 = trunc i32 %4711 to i8
  %4713 = and i8 %4712, 1
  %4714 = xor i8 %4713, 1
  store i8 %4714, i8* %21, align 1
  %4715 = xor i64 %4702, %4671
  %4716 = xor i64 %4715, %4704
  %4717 = lshr i64 %4716, 4
  %4718 = trunc i64 %4717 to i8
  %4719 = and i8 %4718, 1
  store i8 %4719, i8* %27, align 1
  %4720 = icmp eq i64 %4704, 0
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %30, align 1
  %4722 = lshr i64 %4704, 63
  %4723 = trunc i64 %4722 to i8
  store i8 %4723, i8* %33, align 1
  %4724 = xor i64 %4722, %4689
  %4725 = xor i64 %4722, %4703
  %4726 = add nuw nsw i64 %4724, %4725
  %4727 = icmp eq i64 %4726, 2
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %39, align 1
  %4729 = inttoptr i64 %4704 to i32*
  %4730 = load i32, i32* %EDX.i2146, align 4
  %4731 = add i64 %4642, 39
  store i64 %4731, i64* %3, align 8
  store i32 %4730, i32* %4729, align 4
  %4732 = load i64, i64* %RBP.i, align 8
  %4733 = add i64 %4732, -800
  %4734 = load i64, i64* %3, align 8
  %4735 = add i64 %4734, 6
  store i64 %4735, i64* %3, align 8
  %4736 = inttoptr i64 %4733 to i32*
  %4737 = load i32, i32* %4736, align 4
  %4738 = zext i32 %4737 to i64
  store i64 %4738, i64* %RDX.i2167, align 8
  %4739 = add i64 %4732, -35396
  %4740 = add i64 %4734, 13
  store i64 %4740, i64* %3, align 8
  %4741 = inttoptr i64 %4739 to i32*
  %4742 = load i32, i32* %4741, align 4
  %4743 = sext i32 %4742 to i64
  %4744 = add i64 %4734, 20
  store i64 %4744, i64* %3, align 8
  %4745 = sext i32 %4742 to i128
  %4746 = and i128 %4745, -18446744073709551616
  %4747 = zext i64 %4743 to i128
  %4748 = or i128 %4746, %4747
  %4749 = mul nsw i128 %4748, 180
  %4750 = trunc i128 %4749 to i64
  store i64 %4750, i64* %RSI.i2165, align 8
  %4751 = sext i64 %4750 to i128
  %4752 = icmp ne i128 %4751, %4749
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %14, align 1
  %4754 = trunc i128 %4749 to i32
  %4755 = and i32 %4754, 252
  %4756 = tail call i32 @llvm.ctpop.i32(i32 %4755)
  %4757 = trunc i32 %4756 to i8
  %4758 = and i8 %4757, 1
  %4759 = xor i8 %4758, 1
  store i8 %4759, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4760 = lshr i64 %4750, 63
  %4761 = trunc i64 %4760 to i8
  store i8 %4761, i8* %33, align 1
  store i8 %4753, i8* %39, align 1
  %4762 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %4763 = add i64 %4750, %4762
  store i64 %4763, i64* %RDI.i2162, align 8
  %4764 = icmp ult i64 %4763, %4762
  %4765 = icmp ult i64 %4763, %4750
  %4766 = or i1 %4764, %4765
  %4767 = zext i1 %4766 to i8
  store i8 %4767, i8* %14, align 1
  %4768 = trunc i64 %4763 to i32
  %4769 = and i32 %4768, 255
  %4770 = tail call i32 @llvm.ctpop.i32(i32 %4769)
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  %4773 = xor i8 %4772, 1
  store i8 %4773, i8* %21, align 1
  %4774 = xor i64 %4750, %4762
  %4775 = xor i64 %4774, %4763
  %4776 = lshr i64 %4775, 4
  %4777 = trunc i64 %4776 to i8
  %4778 = and i8 %4777, 1
  store i8 %4778, i8* %27, align 1
  %4779 = icmp eq i64 %4763, 0
  %4780 = zext i1 %4779 to i8
  store i8 %4780, i8* %30, align 1
  %4781 = lshr i64 %4763, 63
  %4782 = trunc i64 %4781 to i8
  store i8 %4782, i8* %33, align 1
  %4783 = lshr i64 %4762, 63
  %4784 = xor i64 %4781, %4783
  %4785 = xor i64 %4781, %4760
  %4786 = add nuw nsw i64 %4784, %4785
  %4787 = icmp eq i64 %4786, 2
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %39, align 1
  %4789 = add i64 %4732, -16
  %4790 = add i64 %4734, 30
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i32*
  %4792 = load i32, i32* %4791, align 4
  %4793 = sext i32 %4792 to i64
  %4794 = mul nsw i64 %4793, 12
  store i64 %4794, i64* %RSI.i2165, align 8
  %4795 = lshr i64 %4794, 63
  %4796 = add i64 %4794, %4763
  store i64 %4796, i64* %RDI.i2162, align 8
  %4797 = icmp ult i64 %4796, %4763
  %4798 = icmp ult i64 %4796, %4794
  %4799 = or i1 %4797, %4798
  %4800 = zext i1 %4799 to i8
  store i8 %4800, i8* %14, align 1
  %4801 = trunc i64 %4796 to i32
  %4802 = and i32 %4801, 255
  %4803 = tail call i32 @llvm.ctpop.i32(i32 %4802)
  %4804 = trunc i32 %4803 to i8
  %4805 = and i8 %4804, 1
  %4806 = xor i8 %4805, 1
  store i8 %4806, i8* %21, align 1
  %4807 = xor i64 %4794, %4763
  %4808 = xor i64 %4807, %4796
  %4809 = lshr i64 %4808, 4
  %4810 = trunc i64 %4809 to i8
  %4811 = and i8 %4810, 1
  store i8 %4811, i8* %27, align 1
  %4812 = icmp eq i64 %4796, 0
  %4813 = zext i1 %4812 to i8
  store i8 %4813, i8* %30, align 1
  %4814 = lshr i64 %4796, 63
  %4815 = trunc i64 %4814 to i8
  store i8 %4815, i8* %33, align 1
  %4816 = xor i64 %4814, %4781
  %4817 = xor i64 %4814, %4795
  %4818 = add nuw nsw i64 %4816, %4817
  %4819 = icmp eq i64 %4818, 2
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %39, align 1
  %4821 = add i64 %4796, 4
  %4822 = load i32, i32* %EDX.i2146, align 4
  %4823 = add i64 %4734, 40
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4821 to i32*
  store i32 %4822, i32* %4824, align 4
  %4825 = load i64, i64* %RBP.i, align 8
  %4826 = add i64 %4825, -800
  %4827 = load i64, i64* %3, align 8
  %4828 = add i64 %4827, 6
  store i64 %4828, i64* %3, align 8
  %4829 = inttoptr i64 %4826 to i32*
  %4830 = load i32, i32* %4829, align 4
  %4831 = zext i32 %4830 to i64
  store i64 %4831, i64* %RDX.i2167, align 8
  %4832 = add i64 %4825, -35396
  %4833 = add i64 %4827, 13
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i32*
  %4835 = load i32, i32* %4834, align 4
  %4836 = sext i32 %4835 to i64
  %4837 = add i64 %4827, 20
  store i64 %4837, i64* %3, align 8
  %4838 = sext i32 %4835 to i128
  %4839 = and i128 %4838, -18446744073709551616
  %4840 = zext i64 %4836 to i128
  %4841 = or i128 %4839, %4840
  %4842 = mul nsw i128 %4841, 180
  %4843 = trunc i128 %4842 to i64
  store i64 %4843, i64* %RSI.i2165, align 8
  %4844 = sext i64 %4843 to i128
  %4845 = icmp ne i128 %4844, %4842
  %4846 = zext i1 %4845 to i8
  store i8 %4846, i8* %14, align 1
  %4847 = trunc i128 %4842 to i32
  %4848 = and i32 %4847, 252
  %4849 = tail call i32 @llvm.ctpop.i32(i32 %4848)
  %4850 = trunc i32 %4849 to i8
  %4851 = and i8 %4850, 1
  %4852 = xor i8 %4851, 1
  store i8 %4852, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4853 = lshr i64 %4843, 63
  %4854 = trunc i64 %4853 to i8
  store i8 %4854, i8* %33, align 1
  store i8 %4846, i8* %39, align 1
  %4855 = load i64, i64* %RCX.i2273.pre-phi, align 8
  %4856 = add i64 %4843, %4855
  store i64 %4856, i64* %RCX.i2273.pre-phi, align 8
  %4857 = icmp ult i64 %4856, %4855
  %4858 = icmp ult i64 %4856, %4843
  %4859 = or i1 %4857, %4858
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %14, align 1
  %4861 = trunc i64 %4856 to i32
  %4862 = and i32 %4861, 255
  %4863 = tail call i32 @llvm.ctpop.i32(i32 %4862)
  %4864 = trunc i32 %4863 to i8
  %4865 = and i8 %4864, 1
  %4866 = xor i8 %4865, 1
  store i8 %4866, i8* %21, align 1
  %4867 = xor i64 %4843, %4855
  %4868 = xor i64 %4867, %4856
  %4869 = lshr i64 %4868, 4
  %4870 = trunc i64 %4869 to i8
  %4871 = and i8 %4870, 1
  store i8 %4871, i8* %27, align 1
  %4872 = icmp eq i64 %4856, 0
  %4873 = zext i1 %4872 to i8
  store i8 %4873, i8* %30, align 1
  %4874 = lshr i64 %4856, 63
  %4875 = trunc i64 %4874 to i8
  store i8 %4875, i8* %33, align 1
  %4876 = lshr i64 %4855, 63
  %4877 = xor i64 %4874, %4876
  %4878 = xor i64 %4874, %4853
  %4879 = add nuw nsw i64 %4877, %4878
  %4880 = icmp eq i64 %4879, 2
  %4881 = zext i1 %4880 to i8
  store i8 %4881, i8* %39, align 1
  %4882 = add i64 %4825, -16
  %4883 = add i64 %4827, 27
  store i64 %4883, i64* %3, align 8
  %4884 = inttoptr i64 %4882 to i32*
  %4885 = load i32, i32* %4884, align 4
  %4886 = sext i32 %4885 to i64
  %4887 = mul nsw i64 %4886, 12
  store i64 %4887, i64* %RSI.i2165, align 8
  %4888 = lshr i64 %4887, 63
  %4889 = add i64 %4887, %4856
  store i64 %4889, i64* %RCX.i2273.pre-phi, align 8
  %4890 = icmp ult i64 %4889, %4856
  %4891 = icmp ult i64 %4889, %4887
  %4892 = or i1 %4890, %4891
  %4893 = zext i1 %4892 to i8
  store i8 %4893, i8* %14, align 1
  %4894 = trunc i64 %4889 to i32
  %4895 = and i32 %4894, 255
  %4896 = tail call i32 @llvm.ctpop.i32(i32 %4895)
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = xor i8 %4898, 1
  store i8 %4899, i8* %21, align 1
  %4900 = xor i64 %4887, %4856
  %4901 = xor i64 %4900, %4889
  %4902 = lshr i64 %4901, 4
  %4903 = trunc i64 %4902 to i8
  %4904 = and i8 %4903, 1
  store i8 %4904, i8* %27, align 1
  %4905 = icmp eq i64 %4889, 0
  %4906 = zext i1 %4905 to i8
  store i8 %4906, i8* %30, align 1
  %4907 = lshr i64 %4889, 63
  %4908 = trunc i64 %4907 to i8
  store i8 %4908, i8* %33, align 1
  %4909 = xor i64 %4907, %4874
  %4910 = xor i64 %4907, %4888
  %4911 = add nuw nsw i64 %4909, %4910
  %4912 = icmp eq i64 %4911, 2
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %39, align 1
  %4914 = add i64 %4889, 8
  %4915 = load i32, i32* %EDX.i2146, align 4
  %4916 = add i64 %4827, 37
  store i64 %4916, i64* %3, align 8
  %4917 = inttoptr i64 %4914 to i32*
  store i32 %4915, i32* %4917, align 4
  %4918 = load i64, i64* %RBP.i, align 8
  %4919 = add i64 %4918, -35396
  %4920 = load i64, i64* %3, align 8
  %4921 = add i64 %4920, 7
  store i64 %4921, i64* %3, align 8
  %4922 = inttoptr i64 %4919 to i32*
  %4923 = load i32, i32* %4922, align 4
  %4924 = sext i32 %4923 to i64
  %4925 = mul nsw i64 %4924, 180
  store i64 %4925, i64* %RCX.i2273.pre-phi, align 8
  %4926 = lshr i64 %4925, 63
  %4927 = load i64, i64* %RAX.i2337, align 8
  %4928 = add i64 %4925, %4927
  store i64 %4928, i64* %RSI.i2165, align 8
  %4929 = icmp ult i64 %4928, %4927
  %4930 = icmp ult i64 %4928, %4925
  %4931 = or i1 %4929, %4930
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %14, align 1
  %4933 = trunc i64 %4928 to i32
  %4934 = and i32 %4933, 255
  %4935 = tail call i32 @llvm.ctpop.i32(i32 %4934)
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = xor i8 %4937, 1
  store i8 %4938, i8* %21, align 1
  %4939 = xor i64 %4925, %4927
  %4940 = xor i64 %4939, %4928
  %4941 = lshr i64 %4940, 4
  %4942 = trunc i64 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %27, align 1
  %4944 = icmp eq i64 %4928, 0
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %30, align 1
  %4946 = lshr i64 %4928, 63
  %4947 = trunc i64 %4946 to i8
  store i8 %4947, i8* %33, align 1
  %4948 = lshr i64 %4927, 63
  %4949 = xor i64 %4946, %4948
  %4950 = xor i64 %4946, %4926
  %4951 = add nuw nsw i64 %4949, %4950
  %4952 = icmp eq i64 %4951, 2
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %39, align 1
  %4954 = add i64 %4918, -16
  %4955 = add i64 %4920, 24
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4954 to i32*
  %4957 = load i32, i32* %4956, align 4
  %4958 = sext i32 %4957 to i64
  %4959 = mul nsw i64 %4958, 12
  store i64 %4959, i64* %RCX.i2273.pre-phi, align 8
  %4960 = lshr i64 %4959, 63
  %4961 = add i64 %4959, %4928
  store i64 %4961, i64* %RSI.i2165, align 8
  %4962 = icmp ult i64 %4961, %4928
  %4963 = icmp ult i64 %4961, %4959
  %4964 = or i1 %4962, %4963
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %14, align 1
  %4966 = trunc i64 %4961 to i32
  %4967 = and i32 %4966, 255
  %4968 = tail call i32 @llvm.ctpop.i32(i32 %4967)
  %4969 = trunc i32 %4968 to i8
  %4970 = and i8 %4969, 1
  %4971 = xor i8 %4970, 1
  store i8 %4971, i8* %21, align 1
  %4972 = xor i64 %4959, %4928
  %4973 = xor i64 %4972, %4961
  %4974 = lshr i64 %4973, 4
  %4975 = trunc i64 %4974 to i8
  %4976 = and i8 %4975, 1
  store i8 %4976, i8* %27, align 1
  %4977 = icmp eq i64 %4961, 0
  %4978 = zext i1 %4977 to i8
  store i8 %4978, i8* %30, align 1
  %4979 = lshr i64 %4961, 63
  %4980 = trunc i64 %4979 to i8
  store i8 %4980, i8* %33, align 1
  %4981 = xor i64 %4979, %4946
  %4982 = xor i64 %4979, %4960
  %4983 = add nuw nsw i64 %4981, %4982
  %4984 = icmp eq i64 %4983, 2
  %4985 = zext i1 %4984 to i8
  store i8 %4985, i8* %39, align 1
  %4986 = inttoptr i64 %4961 to i32*
  %4987 = add i64 %4920, 37
  store i64 %4987, i64* %3, align 8
  store i32 0, i32* %4986, align 4
  %4988 = load i64, i64* %RBP.i, align 8
  %4989 = add i64 %4988, -35396
  %4990 = load i64, i64* %3, align 8
  %4991 = add i64 %4990, 7
  store i64 %4991, i64* %3, align 8
  %4992 = inttoptr i64 %4989 to i32*
  %4993 = load i32, i32* %4992, align 4
  %4994 = sext i32 %4993 to i64
  %4995 = mul nsw i64 %4994, 180
  store i64 %4995, i64* %RCX.i2273.pre-phi, align 8
  %4996 = lshr i64 %4995, 63
  %4997 = load i64, i64* %RAX.i2337, align 8
  %4998 = add i64 %4995, %4997
  store i64 %4998, i64* %RSI.i2165, align 8
  %4999 = icmp ult i64 %4998, %4997
  %5000 = icmp ult i64 %4998, %4995
  %5001 = or i1 %4999, %5000
  %5002 = zext i1 %5001 to i8
  store i8 %5002, i8* %14, align 1
  %5003 = trunc i64 %4998 to i32
  %5004 = and i32 %5003, 255
  %5005 = tail call i32 @llvm.ctpop.i32(i32 %5004)
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = xor i8 %5007, 1
  store i8 %5008, i8* %21, align 1
  %5009 = xor i64 %4995, %4997
  %5010 = xor i64 %5009, %4998
  %5011 = lshr i64 %5010, 4
  %5012 = trunc i64 %5011 to i8
  %5013 = and i8 %5012, 1
  store i8 %5013, i8* %27, align 1
  %5014 = icmp eq i64 %4998, 0
  %5015 = zext i1 %5014 to i8
  store i8 %5015, i8* %30, align 1
  %5016 = lshr i64 %4998, 63
  %5017 = trunc i64 %5016 to i8
  store i8 %5017, i8* %33, align 1
  %5018 = lshr i64 %4997, 63
  %5019 = xor i64 %5016, %5018
  %5020 = xor i64 %5016, %4996
  %5021 = add nuw nsw i64 %5019, %5020
  %5022 = icmp eq i64 %5021, 2
  %5023 = zext i1 %5022 to i8
  store i8 %5023, i8* %39, align 1
  %5024 = add i64 %4988, -16
  %5025 = add i64 %4990, 24
  store i64 %5025, i64* %3, align 8
  %5026 = inttoptr i64 %5024 to i32*
  %5027 = load i32, i32* %5026, align 4
  %5028 = sext i32 %5027 to i64
  %5029 = mul nsw i64 %5028, 12
  store i64 %5029, i64* %RCX.i2273.pre-phi, align 8
  %5030 = lshr i64 %5029, 63
  %5031 = add i64 %5029, %4998
  store i64 %5031, i64* %RSI.i2165, align 8
  %5032 = icmp ult i64 %5031, %4998
  %5033 = icmp ult i64 %5031, %5029
  %5034 = or i1 %5032, %5033
  %5035 = zext i1 %5034 to i8
  store i8 %5035, i8* %14, align 1
  %5036 = trunc i64 %5031 to i32
  %5037 = and i32 %5036, 255
  %5038 = tail call i32 @llvm.ctpop.i32(i32 %5037)
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  %5041 = xor i8 %5040, 1
  store i8 %5041, i8* %21, align 1
  %5042 = xor i64 %5029, %4998
  %5043 = xor i64 %5042, %5031
  %5044 = lshr i64 %5043, 4
  %5045 = trunc i64 %5044 to i8
  %5046 = and i8 %5045, 1
  store i8 %5046, i8* %27, align 1
  %5047 = icmp eq i64 %5031, 0
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %30, align 1
  %5049 = lshr i64 %5031, 63
  %5050 = trunc i64 %5049 to i8
  store i8 %5050, i8* %33, align 1
  %5051 = xor i64 %5049, %5016
  %5052 = xor i64 %5049, %5030
  %5053 = add nuw nsw i64 %5051, %5052
  %5054 = icmp eq i64 %5053, 2
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %39, align 1
  %5056 = add i64 %5031, 4
  %5057 = add i64 %4990, 38
  store i64 %5057, i64* %3, align 8
  %5058 = inttoptr i64 %5056 to i32*
  store i32 0, i32* %5058, align 4
  %5059 = load i64, i64* %RBP.i, align 8
  %5060 = add i64 %5059, -35396
  %5061 = load i64, i64* %3, align 8
  %5062 = add i64 %5061, 7
  store i64 %5062, i64* %3, align 8
  %5063 = inttoptr i64 %5060 to i32*
  %5064 = load i32, i32* %5063, align 4
  %5065 = sext i32 %5064 to i64
  %5066 = mul nsw i64 %5065, 180
  store i64 %5066, i64* %RCX.i2273.pre-phi, align 8
  %5067 = lshr i64 %5066, 63
  %5068 = load i64, i64* %RAX.i2337, align 8
  %5069 = add i64 %5066, %5068
  store i64 %5069, i64* %RAX.i2337, align 8
  %5070 = icmp ult i64 %5069, %5068
  %5071 = icmp ult i64 %5069, %5066
  %5072 = or i1 %5070, %5071
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %14, align 1
  %5074 = trunc i64 %5069 to i32
  %5075 = and i32 %5074, 255
  %5076 = tail call i32 @llvm.ctpop.i32(i32 %5075)
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  %5079 = xor i8 %5078, 1
  store i8 %5079, i8* %21, align 1
  %5080 = xor i64 %5066, %5068
  %5081 = xor i64 %5080, %5069
  %5082 = lshr i64 %5081, 4
  %5083 = trunc i64 %5082 to i8
  %5084 = and i8 %5083, 1
  store i8 %5084, i8* %27, align 1
  %5085 = icmp eq i64 %5069, 0
  %5086 = zext i1 %5085 to i8
  store i8 %5086, i8* %30, align 1
  %5087 = lshr i64 %5069, 63
  %5088 = trunc i64 %5087 to i8
  store i8 %5088, i8* %33, align 1
  %5089 = lshr i64 %5068, 63
  %5090 = xor i64 %5087, %5089
  %5091 = xor i64 %5087, %5067
  %5092 = add nuw nsw i64 %5090, %5091
  %5093 = icmp eq i64 %5092, 2
  %5094 = zext i1 %5093 to i8
  store i8 %5094, i8* %39, align 1
  %5095 = add i64 %5059, -16
  %5096 = add i64 %5061, 21
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5095 to i32*
  %5098 = load i32, i32* %5097, align 4
  %5099 = sext i32 %5098 to i64
  %5100 = mul nsw i64 %5099, 12
  store i64 %5100, i64* %RCX.i2273.pre-phi, align 8
  %5101 = lshr i64 %5100, 63
  %5102 = add i64 %5100, %5069
  store i64 %5102, i64* %RAX.i2337, align 8
  %5103 = icmp ult i64 %5102, %5069
  %5104 = icmp ult i64 %5102, %5100
  %5105 = or i1 %5103, %5104
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %14, align 1
  %5107 = trunc i64 %5102 to i32
  %5108 = and i32 %5107, 255
  %5109 = tail call i32 @llvm.ctpop.i32(i32 %5108)
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  %5112 = xor i8 %5111, 1
  store i8 %5112, i8* %21, align 1
  %5113 = xor i64 %5100, %5069
  %5114 = xor i64 %5113, %5102
  %5115 = lshr i64 %5114, 4
  %5116 = trunc i64 %5115 to i8
  %5117 = and i8 %5116, 1
  store i8 %5117, i8* %27, align 1
  %5118 = icmp eq i64 %5102, 0
  %5119 = zext i1 %5118 to i8
  store i8 %5119, i8* %30, align 1
  %5120 = lshr i64 %5102, 63
  %5121 = trunc i64 %5120 to i8
  store i8 %5121, i8* %33, align 1
  %5122 = xor i64 %5120, %5087
  %5123 = xor i64 %5120, %5101
  %5124 = add nuw nsw i64 %5122, %5123
  %5125 = icmp eq i64 %5124, 2
  %5126 = zext i1 %5125 to i8
  store i8 %5126, i8* %39, align 1
  %5127 = add i64 %5102, 8
  %5128 = add i64 %5061, 35
  store i64 %5128, i64* %3, align 8
  %5129 = inttoptr i64 %5127 to i32*
  store i32 0, i32* %5129, align 4
  %5130 = load i64, i64* %RBP.i, align 8
  %5131 = add i64 %5130, -16
  %5132 = load i64, i64* %3, align 8
  %5133 = add i64 %5132, 3
  store i64 %5133, i64* %3, align 8
  %5134 = inttoptr i64 %5131 to i32*
  %5135 = load i32, i32* %5134, align 4
  %5136 = add i32 %5135, 1
  %5137 = zext i32 %5136 to i64
  store i64 %5137, i64* %RAX.i2337, align 8
  %5138 = icmp eq i32 %5135, -1
  %5139 = icmp eq i32 %5136, 0
  %5140 = or i1 %5138, %5139
  %5141 = zext i1 %5140 to i8
  store i8 %5141, i8* %14, align 1
  %5142 = and i32 %5136, 255
  %5143 = tail call i32 @llvm.ctpop.i32(i32 %5142)
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  %5146 = xor i8 %5145, 1
  store i8 %5146, i8* %21, align 1
  %5147 = xor i32 %5136, %5135
  %5148 = lshr i32 %5147, 4
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  store i8 %5150, i8* %27, align 1
  %5151 = zext i1 %5139 to i8
  store i8 %5151, i8* %30, align 1
  %5152 = lshr i32 %5136, 31
  %5153 = trunc i32 %5152 to i8
  store i8 %5153, i8* %33, align 1
  %5154 = lshr i32 %5135, 31
  %5155 = xor i32 %5152, %5154
  %5156 = add nuw nsw i32 %5155, %5152
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %39, align 1
  %5159 = add i64 %5132, 9
  store i64 %5159, i64* %3, align 8
  store i32 %5136, i32* %5134, align 4
  %5160 = load i64, i64* %3, align 8
  %5161 = add i64 %5160, -672
  store i64 %5161, i64* %3, align 8
  br label %block_.L_4b1013

block_.L_4b12b8:                                  ; preds = %block_.L_4b1013
  %5162 = add i64 %4158, 11
  store i64 %5162, i64* %3, align 8
  %5163 = load i32, i32* %4124, align 4
  %5164 = add i32 %5163, 1
  %5165 = zext i32 %5164 to i64
  store i64 %5165, i64* %RAX.i2337, align 8
  %5166 = icmp eq i32 %5163, -1
  %5167 = icmp eq i32 %5164, 0
  %5168 = or i1 %5166, %5167
  %5169 = zext i1 %5168 to i8
  store i8 %5169, i8* %14, align 1
  %5170 = and i32 %5164, 255
  %5171 = tail call i32 @llvm.ctpop.i32(i32 %5170)
  %5172 = trunc i32 %5171 to i8
  %5173 = and i8 %5172, 1
  %5174 = xor i8 %5173, 1
  store i8 %5174, i8* %21, align 1
  %5175 = xor i32 %5164, %5163
  %5176 = lshr i32 %5175, 4
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  store i8 %5178, i8* %27, align 1
  %5179 = zext i1 %5167 to i8
  store i8 %5179, i8* %30, align 1
  %5180 = lshr i32 %5164, 31
  %5181 = trunc i32 %5180 to i8
  store i8 %5181, i8* %33, align 1
  %5182 = lshr i32 %5163, 31
  %5183 = xor i32 %5180, %5182
  %5184 = add nuw nsw i32 %5183, %5180
  %5185 = icmp eq i32 %5184, 2
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %39, align 1
  %5187 = add i64 %4158, 20
  store i64 %5187, i64* %3, align 8
  store i32 %5164, i32* %4124, align 4
  %5188 = load i64, i64* %3, align 8
  %5189 = add i64 %5188, -727
  store i64 %5189, i64* %3, align 8
  br label %block_.L_4b0ff5

block_.L_4b12d1:                                  ; preds = %block_.L_4b0ff5
  %5190 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5190, i64* %RAX.i2337, align 8
  %5191 = add i64 %5190, 196
  %5192 = add i64 %4111, 15
  store i64 %5192, i64* %3, align 8
  %5193 = inttoptr i64 %5191 to i32*
  %5194 = load i32, i32* %5193, align 4
  %5195 = add i32 %5194, -1
  %5196 = icmp eq i32 %5194, 0
  %5197 = zext i1 %5196 to i8
  store i8 %5197, i8* %14, align 1
  %5198 = and i32 %5195, 255
  %5199 = tail call i32 @llvm.ctpop.i32(i32 %5198)
  %5200 = trunc i32 %5199 to i8
  %5201 = and i8 %5200, 1
  %5202 = xor i8 %5201, 1
  store i8 %5202, i8* %21, align 1
  %5203 = xor i32 %5195, %5194
  %5204 = lshr i32 %5203, 4
  %5205 = trunc i32 %5204 to i8
  %5206 = and i8 %5205, 1
  store i8 %5206, i8* %27, align 1
  %5207 = icmp eq i32 %5195, 0
  %5208 = zext i1 %5207 to i8
  store i8 %5208, i8* %30, align 1
  %5209 = lshr i32 %5195, 31
  %5210 = trunc i32 %5209 to i8
  store i8 %5210, i8* %33, align 1
  %5211 = lshr i32 %5194, 31
  %5212 = xor i32 %5209, %5211
  %5213 = add nuw nsw i32 %5212, %5211
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %39, align 1
  %.v176 = select i1 %5207, i64 21, i64 316
  %5216 = add i64 %4111, %.v176
  %5217 = add i64 %5216, 10
  store i64 %5217, i64* %3, align 8
  store i32 0, i32* %4076, align 4
  %.pre124 = load i64, i64* %3, align 8
  br i1 %5207, label %block_.L_4b12f0.preheader, label %block_.L_4b1417.preheader

block_.L_4b1417.preheader:                        ; preds = %block_.L_4b12d1
  br label %block_.L_4b1417

block_.L_4b12f0.preheader:                        ; preds = %block_.L_4b12d1
  br label %block_.L_4b12f0

block_.L_4b12f0:                                  ; preds = %block_.L_4b12f0.preheader, %block_.L_4b13ef
  %5218 = phi i64 [ %5642, %block_.L_4b13ef ], [ %.pre124, %block_.L_4b12f0.preheader ]
  %5219 = load i64, i64* %RBP.i, align 8
  %5220 = add i64 %5219, -35396
  %5221 = add i64 %5218, 6
  store i64 %5221, i64* %3, align 8
  %5222 = inttoptr i64 %5220 to i32*
  %5223 = load i32, i32* %5222, align 4
  %5224 = zext i32 %5223 to i64
  store i64 %5224, i64* %RAX.i2337, align 8
  %5225 = add i64 %5219, -804
  %5226 = add i64 %5218, 12
  store i64 %5226, i64* %3, align 8
  %5227 = inttoptr i64 %5225 to i32*
  %5228 = load i32, i32* %5227, align 4
  %5229 = add i32 %5228, 2
  %5230 = zext i32 %5229 to i64
  store i64 %5230, i64* %RCX.i2273.pre-phi, align 8
  %5231 = lshr i32 %5229, 31
  %5232 = sub i32 %5223, %5229
  %5233 = icmp ult i32 %5223, %5229
  %5234 = zext i1 %5233 to i8
  store i8 %5234, i8* %14, align 1
  %5235 = and i32 %5232, 255
  %5236 = tail call i32 @llvm.ctpop.i32(i32 %5235)
  %5237 = trunc i32 %5236 to i8
  %5238 = and i8 %5237, 1
  %5239 = xor i8 %5238, 1
  store i8 %5239, i8* %21, align 1
  %5240 = xor i32 %5229, %5223
  %5241 = xor i32 %5240, %5232
  %5242 = lshr i32 %5241, 4
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  store i8 %5244, i8* %27, align 1
  %5245 = icmp eq i32 %5232, 0
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %30, align 1
  %5247 = lshr i32 %5232, 31
  %5248 = trunc i32 %5247 to i8
  store i8 %5248, i8* %33, align 1
  %5249 = lshr i32 %5223, 31
  %5250 = xor i32 %5231, %5249
  %5251 = xor i32 %5247, %5249
  %5252 = add nuw nsw i32 %5251, %5250
  %5253 = icmp eq i32 %5252, 2
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %39, align 1
  %5255 = icmp ne i8 %5248, 0
  %5256 = xor i1 %5255, %5253
  %.v198 = select i1 %5256, i64 23, i64 280
  %5257 = add i64 %5218, %.v198
  store i64 %5257, i64* %3, align 8
  br i1 %5256, label %block_4b1307, label %block_.L_4b1408

block_4b1307:                                     ; preds = %block_.L_4b12f0
  %5258 = add i64 %5219, -36
  %5259 = add i64 %5257, 7
  store i64 %5259, i64* %3, align 8
  %5260 = inttoptr i64 %5258 to i32*
  store i32 0, i32* %5260, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_4b130e

block_.L_4b130e:                                  ; preds = %block_.L_4b13dc, %block_4b1307
  %5261 = phi i64 [ %5614, %block_.L_4b13dc ], [ %.pre125, %block_4b1307 ]
  %5262 = load i64, i64* %RBP.i, align 8
  %5263 = add i64 %5262, -36
  %5264 = add i64 %5261, 3
  store i64 %5264, i64* %3, align 8
  %5265 = inttoptr i64 %5263 to i32*
  %5266 = load i32, i32* %5265, align 4
  %5267 = zext i32 %5266 to i64
  store i64 %5267, i64* %RAX.i2337, align 8
  %5268 = add i64 %5262, -35396
  %5269 = add i64 %5261, 10
  store i64 %5269, i64* %3, align 8
  %5270 = inttoptr i64 %5268 to i32*
  %5271 = load i32, i32* %5270, align 4
  %5272 = sext i32 %5271 to i64
  store i64 %5272, i64* %RCX.i2273.pre-phi, align 8
  %5273 = shl nsw i64 %5272, 2
  %5274 = add nsw i64 %5273, 7489456
  %5275 = add i64 %5261, 17
  store i64 %5275, i64* %3, align 8
  %5276 = inttoptr i64 %5274 to i32*
  %5277 = load i32, i32* %5276, align 4
  %5278 = sub i32 %5266, %5277
  %5279 = icmp ult i32 %5266, %5277
  %5280 = zext i1 %5279 to i8
  store i8 %5280, i8* %14, align 1
  %5281 = and i32 %5278, 255
  %5282 = tail call i32 @llvm.ctpop.i32(i32 %5281)
  %5283 = trunc i32 %5282 to i8
  %5284 = and i8 %5283, 1
  %5285 = xor i8 %5284, 1
  store i8 %5285, i8* %21, align 1
  %5286 = xor i32 %5277, %5266
  %5287 = xor i32 %5286, %5278
  %5288 = lshr i32 %5287, 4
  %5289 = trunc i32 %5288 to i8
  %5290 = and i8 %5289, 1
  store i8 %5290, i8* %27, align 1
  %5291 = icmp eq i32 %5278, 0
  %5292 = zext i1 %5291 to i8
  store i8 %5292, i8* %30, align 1
  %5293 = lshr i32 %5278, 31
  %5294 = trunc i32 %5293 to i8
  store i8 %5294, i8* %33, align 1
  %5295 = lshr i32 %5266, 31
  %5296 = lshr i32 %5277, 31
  %5297 = xor i32 %5296, %5295
  %5298 = xor i32 %5293, %5295
  %5299 = add nuw nsw i32 %5298, %5297
  %5300 = icmp eq i32 %5299, 2
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %39, align 1
  %5302 = icmp ne i8 %5294, 0
  %5303 = xor i1 %5302, %5300
  %.v180 = select i1 %5303, i64 23, i64 225
  %5304 = add i64 %5261, %.v180
  store i64 %5304, i64* %3, align 8
  br i1 %5303, label %block_4b1325, label %block_.L_4b13ef

block_4b1325:                                     ; preds = %block_.L_4b130e
  %5305 = add i64 %5262, -40
  %5306 = add i64 %5304, 7
  store i64 %5306, i64* %3, align 8
  %5307 = inttoptr i64 %5305 to i32*
  store i32 0, i32* %5307, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_4b132c

block_.L_4b132c:                                  ; preds = %block_4b1336, %block_4b1325
  %5308 = phi i64 [ %5584, %block_4b1336 ], [ %.pre126, %block_4b1325 ]
  %5309 = load i64, i64* %RBP.i, align 8
  %5310 = add i64 %5309, -40
  %5311 = add i64 %5308, 4
  store i64 %5311, i64* %3, align 8
  %5312 = inttoptr i64 %5310 to i32*
  %5313 = load i32, i32* %5312, align 4
  %5314 = add i32 %5313, -3
  %5315 = icmp ult i32 %5313, 3
  %5316 = zext i1 %5315 to i8
  store i8 %5316, i8* %14, align 1
  %5317 = and i32 %5314, 255
  %5318 = tail call i32 @llvm.ctpop.i32(i32 %5317)
  %5319 = trunc i32 %5318 to i8
  %5320 = and i8 %5319, 1
  %5321 = xor i8 %5320, 1
  store i8 %5321, i8* %21, align 1
  %5322 = xor i32 %5314, %5313
  %5323 = lshr i32 %5322, 4
  %5324 = trunc i32 %5323 to i8
  %5325 = and i8 %5324, 1
  store i8 %5325, i8* %27, align 1
  %5326 = icmp eq i32 %5314, 0
  %5327 = zext i1 %5326 to i8
  store i8 %5327, i8* %30, align 1
  %5328 = lshr i32 %5314, 31
  %5329 = trunc i32 %5328 to i8
  store i8 %5329, i8* %33, align 1
  %5330 = lshr i32 %5313, 31
  %5331 = xor i32 %5328, %5330
  %5332 = add nuw nsw i32 %5331, %5330
  %5333 = icmp eq i32 %5332, 2
  %5334 = zext i1 %5333 to i8
  store i8 %5334, i8* %39, align 1
  %5335 = icmp ne i8 %5329, 0
  %5336 = xor i1 %5335, %5333
  %.v181 = select i1 %5336, i64 10, i64 176
  %5337 = add i64 %5308, %.v181
  store i64 %5337, i64* %3, align 8
  br i1 %5336, label %block_4b1336, label %block_.L_4b13dc

block_4b1336:                                     ; preds = %block_.L_4b132c
  %5338 = add i64 %5309, -2976
  store i64 %5338, i64* %RAX.i2337, align 8
  %5339 = add i64 %5309, -1888
  store i64 %5339, i64* %RCX.i2273.pre-phi, align 8
  %5340 = add i64 %5309, -35396
  %5341 = add i64 %5337, 21
  store i64 %5341, i64* %3, align 8
  %5342 = inttoptr i64 %5340 to i32*
  %5343 = load i32, i32* %5342, align 4
  %5344 = sext i32 %5343 to i64
  %5345 = mul nsw i64 %5344, 180
  store i64 %5345, i64* %864, align 8
  %5346 = lshr i64 %5345, 63
  %5347 = add i64 %5345, %5339
  store i64 %5347, i64* %RCX.i2273.pre-phi, align 8
  %5348 = icmp ult i64 %5347, %5339
  %5349 = icmp ult i64 %5347, %5345
  %5350 = or i1 %5348, %5349
  %5351 = zext i1 %5350 to i8
  store i8 %5351, i8* %14, align 1
  %5352 = trunc i64 %5347 to i32
  %5353 = and i32 %5352, 255
  %5354 = tail call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  store i8 %5357, i8* %21, align 1
  %5358 = xor i64 %5345, %5339
  %5359 = xor i64 %5358, %5347
  %5360 = lshr i64 %5359, 4
  %5361 = trunc i64 %5360 to i8
  %5362 = and i8 %5361, 1
  store i8 %5362, i8* %27, align 1
  %5363 = icmp eq i64 %5347, 0
  %5364 = zext i1 %5363 to i8
  store i8 %5364, i8* %30, align 1
  %5365 = lshr i64 %5347, 63
  %5366 = trunc i64 %5365 to i8
  store i8 %5366, i8* %33, align 1
  %5367 = lshr i64 %5339, 63
  %5368 = xor i64 %5365, %5367
  %5369 = xor i64 %5365, %5346
  %5370 = add nuw nsw i64 %5368, %5369
  %5371 = icmp eq i64 %5370, 2
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %39, align 1
  %5373 = add i64 %5309, -36
  %5374 = add i64 %5337, 35
  store i64 %5374, i64* %3, align 8
  %5375 = inttoptr i64 %5373 to i32*
  %5376 = load i32, i32* %5375, align 4
  %5377 = sext i32 %5376 to i64
  %5378 = mul nsw i64 %5377, 12
  store i64 %5378, i64* %864, align 8
  %5379 = lshr i64 %5378, 63
  %5380 = add i64 %5378, %5347
  store i64 %5380, i64* %RCX.i2273.pre-phi, align 8
  %5381 = icmp ult i64 %5380, %5347
  %5382 = icmp ult i64 %5380, %5378
  %5383 = or i1 %5381, %5382
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %14, align 1
  %5385 = trunc i64 %5380 to i32
  %5386 = and i32 %5385, 255
  %5387 = tail call i32 @llvm.ctpop.i32(i32 %5386)
  %5388 = trunc i32 %5387 to i8
  %5389 = and i8 %5388, 1
  %5390 = xor i8 %5389, 1
  store i8 %5390, i8* %21, align 1
  %5391 = xor i64 %5378, %5347
  %5392 = xor i64 %5391, %5380
  %5393 = lshr i64 %5392, 4
  %5394 = trunc i64 %5393 to i8
  %5395 = and i8 %5394, 1
  store i8 %5395, i8* %27, align 1
  %5396 = icmp eq i64 %5380, 0
  %5397 = zext i1 %5396 to i8
  store i8 %5397, i8* %30, align 1
  %5398 = lshr i64 %5380, 63
  %5399 = trunc i64 %5398 to i8
  store i8 %5399, i8* %33, align 1
  %5400 = xor i64 %5398, %5365
  %5401 = xor i64 %5398, %5379
  %5402 = add nuw nsw i64 %5400, %5401
  %5403 = icmp eq i64 %5402, 2
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %39, align 1
  %5405 = load i64, i64* %RBP.i, align 8
  %5406 = add i64 %5405, -40
  %5407 = add i64 %5337, 46
  store i64 %5407, i64* %3, align 8
  %5408 = inttoptr i64 %5406 to i32*
  %5409 = load i32, i32* %5408, align 4
  %5410 = sext i32 %5409 to i64
  store i64 %5410, i64* %864, align 8
  %5411 = shl nsw i64 %5410, 2
  %5412 = add i64 %5411, %5380
  %5413 = add i64 %5337, 49
  store i64 %5413, i64* %3, align 8
  %5414 = inttoptr i64 %5412 to i32*
  %5415 = load i32, i32* %5414, align 4
  %5416 = zext i32 %5415 to i64
  store i64 %5416, i64* %RSI.i869, align 8
  %5417 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5417, i64* %RCX.i2273.pre-phi, align 8
  %5418 = add i64 %5405, -35396
  %5419 = add i64 %5337, 64
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5418 to i32*
  %5421 = load i32, i32* %5420, align 4
  %5422 = sext i32 %5421 to i64
  store i64 %5422, i64* %864, align 8
  %5423 = shl nsw i64 %5422, 3
  %5424 = add i64 %5423, %5417
  %5425 = add i64 %5337, 68
  store i64 %5425, i64* %3, align 8
  %5426 = inttoptr i64 %5424 to i64*
  %5427 = load i64, i64* %5426, align 8
  store i64 %5427, i64* %RCX.i2273.pre-phi, align 8
  %5428 = add i64 %5405, -36
  %5429 = add i64 %5337, 72
  store i64 %5429, i64* %3, align 8
  %5430 = inttoptr i64 %5428 to i32*
  %5431 = load i32, i32* %5430, align 4
  %5432 = sext i32 %5431 to i64
  store i64 %5432, i64* %864, align 8
  %5433 = shl nsw i64 %5432, 3
  %5434 = add i64 %5433, %5427
  %5435 = add i64 %5337, 76
  store i64 %5435, i64* %3, align 8
  %5436 = inttoptr i64 %5434 to i64*
  %5437 = load i64, i64* %5436, align 8
  store i64 %5437, i64* %RCX.i2273.pre-phi, align 8
  %5438 = add i64 %5337, 80
  store i64 %5438, i64* %3, align 8
  %5439 = load i32, i32* %5408, align 4
  %5440 = sext i32 %5439 to i64
  store i64 %5440, i64* %864, align 8
  %5441 = shl nsw i64 %5440, 2
  %5442 = add i64 %5441, %5437
  %5443 = add i64 %5337, 83
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  store i32 %5415, i32* %5444, align 4
  %5445 = load i64, i64* %RBP.i, align 8
  %5446 = add i64 %5445, -35396
  %5447 = load i64, i64* %3, align 8
  %5448 = add i64 %5447, 7
  store i64 %5448, i64* %3, align 8
  %5449 = inttoptr i64 %5446 to i32*
  %5450 = load i32, i32* %5449, align 4
  %5451 = sext i32 %5450 to i64
  %5452 = mul nsw i64 %5451, 180
  store i64 %5452, i64* %RCX.i2273.pre-phi, align 8
  %5453 = lshr i64 %5452, 63
  %5454 = load i64, i64* %RAX.i2337, align 8
  %5455 = add i64 %5452, %5454
  store i64 %5455, i64* %RAX.i2337, align 8
  %5456 = icmp ult i64 %5455, %5454
  %5457 = icmp ult i64 %5455, %5452
  %5458 = or i1 %5456, %5457
  %5459 = zext i1 %5458 to i8
  store i8 %5459, i8* %14, align 1
  %5460 = trunc i64 %5455 to i32
  %5461 = and i32 %5460, 255
  %5462 = tail call i32 @llvm.ctpop.i32(i32 %5461)
  %5463 = trunc i32 %5462 to i8
  %5464 = and i8 %5463, 1
  %5465 = xor i8 %5464, 1
  store i8 %5465, i8* %21, align 1
  %5466 = xor i64 %5452, %5454
  %5467 = xor i64 %5466, %5455
  %5468 = lshr i64 %5467, 4
  %5469 = trunc i64 %5468 to i8
  %5470 = and i8 %5469, 1
  store i8 %5470, i8* %27, align 1
  %5471 = icmp eq i64 %5455, 0
  %5472 = zext i1 %5471 to i8
  store i8 %5472, i8* %30, align 1
  %5473 = lshr i64 %5455, 63
  %5474 = trunc i64 %5473 to i8
  store i8 %5474, i8* %33, align 1
  %5475 = lshr i64 %5454, 63
  %5476 = xor i64 %5473, %5475
  %5477 = xor i64 %5473, %5453
  %5478 = add nuw nsw i64 %5476, %5477
  %5479 = icmp eq i64 %5478, 2
  %5480 = zext i1 %5479 to i8
  store i8 %5480, i8* %39, align 1
  %5481 = add i64 %5445, -36
  %5482 = add i64 %5447, 21
  store i64 %5482, i64* %3, align 8
  %5483 = inttoptr i64 %5481 to i32*
  %5484 = load i32, i32* %5483, align 4
  %5485 = sext i32 %5484 to i64
  %5486 = mul nsw i64 %5485, 12
  store i64 %5486, i64* %RCX.i2273.pre-phi, align 8
  %5487 = lshr i64 %5486, 63
  %5488 = add i64 %5486, %5455
  store i64 %5488, i64* %RAX.i2337, align 8
  %5489 = icmp ult i64 %5488, %5455
  %5490 = icmp ult i64 %5488, %5486
  %5491 = or i1 %5489, %5490
  %5492 = zext i1 %5491 to i8
  store i8 %5492, i8* %14, align 1
  %5493 = trunc i64 %5488 to i32
  %5494 = and i32 %5493, 255
  %5495 = tail call i32 @llvm.ctpop.i32(i32 %5494)
  %5496 = trunc i32 %5495 to i8
  %5497 = and i8 %5496, 1
  %5498 = xor i8 %5497, 1
  store i8 %5498, i8* %21, align 1
  %5499 = xor i64 %5486, %5455
  %5500 = xor i64 %5499, %5488
  %5501 = lshr i64 %5500, 4
  %5502 = trunc i64 %5501 to i8
  %5503 = and i8 %5502, 1
  store i8 %5503, i8* %27, align 1
  %5504 = icmp eq i64 %5488, 0
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %30, align 1
  %5506 = lshr i64 %5488, 63
  %5507 = trunc i64 %5506 to i8
  store i8 %5507, i8* %33, align 1
  %5508 = xor i64 %5506, %5473
  %5509 = xor i64 %5506, %5487
  %5510 = add nuw nsw i64 %5508, %5509
  %5511 = icmp eq i64 %5510, 2
  %5512 = zext i1 %5511 to i8
  store i8 %5512, i8* %39, align 1
  %5513 = load i64, i64* %RBP.i, align 8
  %5514 = add i64 %5513, -40
  %5515 = add i64 %5447, 32
  store i64 %5515, i64* %3, align 8
  %5516 = inttoptr i64 %5514 to i32*
  %5517 = load i32, i32* %5516, align 4
  %5518 = sext i32 %5517 to i64
  store i64 %5518, i64* %RCX.i2273.pre-phi, align 8
  %5519 = shl nsw i64 %5518, 2
  %5520 = add i64 %5519, %5488
  %5521 = add i64 %5447, 35
  store i64 %5521, i64* %3, align 8
  %5522 = inttoptr i64 %5520 to i32*
  %5523 = load i32, i32* %5522, align 4
  %5524 = zext i32 %5523 to i64
  store i64 %5524, i64* %RSI.i869, align 8
  %5525 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5525, i64* %RAX.i2337, align 8
  %5526 = add i64 %5513, -35396
  %5527 = add i64 %5447, 50
  store i64 %5527, i64* %3, align 8
  %5528 = inttoptr i64 %5526 to i32*
  %5529 = load i32, i32* %5528, align 4
  %5530 = sext i32 %5529 to i64
  store i64 %5530, i64* %RCX.i2273.pre-phi, align 8
  %5531 = shl nsw i64 %5530, 3
  %5532 = add i64 %5531, %5525
  %5533 = add i64 %5447, 54
  store i64 %5533, i64* %3, align 8
  %5534 = inttoptr i64 %5532 to i64*
  %5535 = load i64, i64* %5534, align 8
  store i64 %5535, i64* %RAX.i2337, align 8
  %5536 = add i64 %5513, -36
  %5537 = add i64 %5447, 58
  store i64 %5537, i64* %3, align 8
  %5538 = inttoptr i64 %5536 to i32*
  %5539 = load i32, i32* %5538, align 4
  %5540 = sext i32 %5539 to i64
  store i64 %5540, i64* %RCX.i2273.pre-phi, align 8
  %5541 = shl nsw i64 %5540, 3
  %5542 = add i64 %5541, %5535
  %5543 = add i64 %5447, 62
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i64*
  %5545 = load i64, i64* %5544, align 8
  store i64 %5545, i64* %RAX.i2337, align 8
  %5546 = add i64 %5447, 66
  store i64 %5546, i64* %3, align 8
  %5547 = load i32, i32* %5516, align 4
  %5548 = sext i32 %5547 to i64
  store i64 %5548, i64* %RCX.i2273.pre-phi, align 8
  %5549 = shl nsw i64 %5548, 2
  %5550 = add i64 %5549, %5545
  %5551 = add i64 %5447, 69
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i32*
  store i32 %5523, i32* %5552, align 4
  %5553 = load i64, i64* %RBP.i, align 8
  %5554 = add i64 %5553, -40
  %5555 = load i64, i64* %3, align 8
  %5556 = add i64 %5555, 3
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5554 to i32*
  %5558 = load i32, i32* %5557, align 4
  %5559 = add i32 %5558, 1
  %5560 = zext i32 %5559 to i64
  store i64 %5560, i64* %RAX.i2337, align 8
  %5561 = icmp eq i32 %5558, -1
  %5562 = icmp eq i32 %5559, 0
  %5563 = or i1 %5561, %5562
  %5564 = zext i1 %5563 to i8
  store i8 %5564, i8* %14, align 1
  %5565 = and i32 %5559, 255
  %5566 = tail call i32 @llvm.ctpop.i32(i32 %5565)
  %5567 = trunc i32 %5566 to i8
  %5568 = and i8 %5567, 1
  %5569 = xor i8 %5568, 1
  store i8 %5569, i8* %21, align 1
  %5570 = xor i32 %5559, %5558
  %5571 = lshr i32 %5570, 4
  %5572 = trunc i32 %5571 to i8
  %5573 = and i8 %5572, 1
  store i8 %5573, i8* %27, align 1
  %5574 = zext i1 %5562 to i8
  store i8 %5574, i8* %30, align 1
  %5575 = lshr i32 %5559, 31
  %5576 = trunc i32 %5575 to i8
  store i8 %5576, i8* %33, align 1
  %5577 = lshr i32 %5558, 31
  %5578 = xor i32 %5575, %5577
  %5579 = add nuw nsw i32 %5578, %5575
  %5580 = icmp eq i32 %5579, 2
  %5581 = zext i1 %5580 to i8
  store i8 %5581, i8* %39, align 1
  %5582 = add i64 %5555, 9
  store i64 %5582, i64* %3, align 8
  store i32 %5559, i32* %5557, align 4
  %5583 = load i64, i64* %3, align 8
  %5584 = add i64 %5583, -171
  store i64 %5584, i64* %3, align 8
  br label %block_.L_4b132c

block_.L_4b13dc:                                  ; preds = %block_.L_4b132c
  %5585 = add i64 %5309, -36
  %5586 = add i64 %5337, 8
  store i64 %5586, i64* %3, align 8
  %5587 = inttoptr i64 %5585 to i32*
  %5588 = load i32, i32* %5587, align 4
  %5589 = add i32 %5588, 1
  %5590 = zext i32 %5589 to i64
  store i64 %5590, i64* %RAX.i2337, align 8
  %5591 = icmp eq i32 %5588, -1
  %5592 = icmp eq i32 %5589, 0
  %5593 = or i1 %5591, %5592
  %5594 = zext i1 %5593 to i8
  store i8 %5594, i8* %14, align 1
  %5595 = and i32 %5589, 255
  %5596 = tail call i32 @llvm.ctpop.i32(i32 %5595)
  %5597 = trunc i32 %5596 to i8
  %5598 = and i8 %5597, 1
  %5599 = xor i8 %5598, 1
  store i8 %5599, i8* %21, align 1
  %5600 = xor i32 %5589, %5588
  %5601 = lshr i32 %5600, 4
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  store i8 %5603, i8* %27, align 1
  %5604 = zext i1 %5592 to i8
  store i8 %5604, i8* %30, align 1
  %5605 = lshr i32 %5589, 31
  %5606 = trunc i32 %5605 to i8
  store i8 %5606, i8* %33, align 1
  %5607 = lshr i32 %5588, 31
  %5608 = xor i32 %5605, %5607
  %5609 = add nuw nsw i32 %5608, %5605
  %5610 = icmp eq i32 %5609, 2
  %5611 = zext i1 %5610 to i8
  store i8 %5611, i8* %39, align 1
  %5612 = add i64 %5337, 14
  store i64 %5612, i64* %3, align 8
  store i32 %5589, i32* %5587, align 4
  %5613 = load i64, i64* %3, align 8
  %5614 = add i64 %5613, -220
  store i64 %5614, i64* %3, align 8
  br label %block_.L_4b130e

block_.L_4b13ef:                                  ; preds = %block_.L_4b130e
  %5615 = add i64 %5304, 11
  store i64 %5615, i64* %3, align 8
  %5616 = load i32, i32* %5270, align 4
  %5617 = add i32 %5616, 1
  %5618 = zext i32 %5617 to i64
  store i64 %5618, i64* %RAX.i2337, align 8
  %5619 = icmp eq i32 %5616, -1
  %5620 = icmp eq i32 %5617, 0
  %5621 = or i1 %5619, %5620
  %5622 = zext i1 %5621 to i8
  store i8 %5622, i8* %14, align 1
  %5623 = and i32 %5617, 255
  %5624 = tail call i32 @llvm.ctpop.i32(i32 %5623)
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  %5627 = xor i8 %5626, 1
  store i8 %5627, i8* %21, align 1
  %5628 = xor i32 %5617, %5616
  %5629 = lshr i32 %5628, 4
  %5630 = trunc i32 %5629 to i8
  %5631 = and i8 %5630, 1
  store i8 %5631, i8* %27, align 1
  %5632 = zext i1 %5620 to i8
  store i8 %5632, i8* %30, align 1
  %5633 = lshr i32 %5617, 31
  %5634 = trunc i32 %5633 to i8
  store i8 %5634, i8* %33, align 1
  %5635 = lshr i32 %5616, 31
  %5636 = xor i32 %5633, %5635
  %5637 = add nuw nsw i32 %5636, %5633
  %5638 = icmp eq i32 %5637, 2
  %5639 = zext i1 %5638 to i8
  store i8 %5639, i8* %39, align 1
  %5640 = add i64 %5304, 20
  store i64 %5640, i64* %3, align 8
  store i32 %5617, i32* %5270, align 4
  %5641 = load i64, i64* %3, align 8
  %5642 = add i64 %5641, -275
  store i64 %5642, i64* %3, align 8
  br label %block_.L_4b12f0

block_.L_4b1408:                                  ; preds = %block_.L_4b12f0
  %5643 = add i64 %5257, 338
  br label %block_.L_4b155a

block_.L_4b1417:                                  ; preds = %block_.L_4b1417.preheader, %block_.L_4b153c
  %5644 = phi i64 [ %6041, %block_.L_4b153c ], [ %.pre124, %block_.L_4b1417.preheader ]
  %5645 = load i64, i64* %RBP.i, align 8
  %5646 = add i64 %5645, -35396
  %5647 = add i64 %5644, 6
  store i64 %5647, i64* %3, align 8
  %5648 = inttoptr i64 %5646 to i32*
  %5649 = load i32, i32* %5648, align 4
  %5650 = zext i32 %5649 to i64
  store i64 %5650, i64* %RAX.i2337, align 8
  %5651 = add i64 %5645, -804
  %5652 = add i64 %5644, 12
  store i64 %5652, i64* %3, align 8
  %5653 = inttoptr i64 %5651 to i32*
  %5654 = load i32, i32* %5653, align 4
  %5655 = add i32 %5654, 2
  %5656 = zext i32 %5655 to i64
  store i64 %5656, i64* %RCX.i2273.pre-phi, align 8
  %5657 = lshr i32 %5655, 31
  %5658 = sub i32 %5649, %5655
  %5659 = icmp ult i32 %5649, %5655
  %5660 = zext i1 %5659 to i8
  store i8 %5660, i8* %14, align 1
  %5661 = and i32 %5658, 255
  %5662 = tail call i32 @llvm.ctpop.i32(i32 %5661)
  %5663 = trunc i32 %5662 to i8
  %5664 = and i8 %5663, 1
  %5665 = xor i8 %5664, 1
  store i8 %5665, i8* %21, align 1
  %5666 = xor i32 %5655, %5649
  %5667 = xor i32 %5666, %5658
  %5668 = lshr i32 %5667, 4
  %5669 = trunc i32 %5668 to i8
  %5670 = and i8 %5669, 1
  store i8 %5670, i8* %27, align 1
  %5671 = icmp eq i32 %5658, 0
  %5672 = zext i1 %5671 to i8
  store i8 %5672, i8* %30, align 1
  %5673 = lshr i32 %5658, 31
  %5674 = trunc i32 %5673 to i8
  store i8 %5674, i8* %33, align 1
  %5675 = lshr i32 %5649, 31
  %5676 = xor i32 %5657, %5675
  %5677 = xor i32 %5673, %5675
  %5678 = add nuw nsw i32 %5677, %5676
  %5679 = icmp eq i32 %5678, 2
  %5680 = zext i1 %5679 to i8
  store i8 %5680, i8* %39, align 1
  %5681 = icmp ne i8 %5674, 0
  %5682 = xor i1 %5681, %5679
  %.v192 = select i1 %5682, i64 23, i64 318
  %5683 = add i64 %5644, %.v192
  store i64 %5683, i64* %3, align 8
  br i1 %5682, label %block_4b142e, label %block_.L_4b1555

block_4b142e:                                     ; preds = %block_.L_4b1417
  %5684 = add i64 %5645, -36
  %5685 = add i64 %5683, 7
  store i64 %5685, i64* %3, align 8
  %5686 = inttoptr i64 %5684 to i32*
  store i32 0, i32* %5686, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_4b1435

block_.L_4b1435:                                  ; preds = %routine_shll__cl___eax.exit, %block_4b142e
  %5687 = phi i64 [ %6013, %routine_shll__cl___eax.exit ], [ %.pre136, %block_4b142e ]
  %5688 = load i64, i64* %RBP.i, align 8
  %5689 = add i64 %5688, -36
  %5690 = add i64 %5687, 3
  store i64 %5690, i64* %3, align 8
  %5691 = inttoptr i64 %5689 to i32*
  %5692 = load i32, i32* %5691, align 4
  %5693 = zext i32 %5692 to i64
  store i64 %5693, i64* %RAX.i2337, align 8
  %5694 = add i64 %5688, -35396
  %5695 = add i64 %5687, 10
  store i64 %5695, i64* %3, align 8
  %5696 = inttoptr i64 %5694 to i32*
  %5697 = load i32, i32* %5696, align 4
  %5698 = sext i32 %5697 to i64
  store i64 %5698, i64* %RCX.i2273.pre-phi, align 8
  %5699 = shl nsw i64 %5698, 2
  %5700 = add nsw i64 %5699, 7489456
  %5701 = add i64 %5687, 17
  store i64 %5701, i64* %3, align 8
  %5702 = inttoptr i64 %5700 to i32*
  %5703 = load i32, i32* %5702, align 4
  %5704 = sub i32 %5692, %5703
  %5705 = icmp ult i32 %5692, %5703
  %5706 = zext i1 %5705 to i8
  store i8 %5706, i8* %14, align 1
  %5707 = and i32 %5704, 255
  %5708 = tail call i32 @llvm.ctpop.i32(i32 %5707)
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  %5711 = xor i8 %5710, 1
  store i8 %5711, i8* %21, align 1
  %5712 = xor i32 %5703, %5692
  %5713 = xor i32 %5712, %5704
  %5714 = lshr i32 %5713, 4
  %5715 = trunc i32 %5714 to i8
  %5716 = and i8 %5715, 1
  store i8 %5716, i8* %27, align 1
  %5717 = icmp eq i32 %5704, 0
  %5718 = zext i1 %5717 to i8
  store i8 %5718, i8* %30, align 1
  %5719 = lshr i32 %5704, 31
  %5720 = trunc i32 %5719 to i8
  store i8 %5720, i8* %33, align 1
  %5721 = lshr i32 %5692, 31
  %5722 = lshr i32 %5703, 31
  %5723 = xor i32 %5722, %5721
  %5724 = xor i32 %5719, %5721
  %5725 = add nuw nsw i32 %5724, %5723
  %5726 = icmp eq i32 %5725, 2
  %5727 = zext i1 %5726 to i8
  store i8 %5727, i8* %39, align 1
  %5728 = icmp ne i8 %5720, 0
  %5729 = xor i1 %5728, %5726
  %.v197 = select i1 %5729, i64 23, i64 263
  %5730 = add i64 %5687, %.v197
  %5731 = add i64 %5730, 5
  store i64 %5731, i64* %3, align 8
  br i1 %5729, label %block_4b144c, label %block_.L_4b153c

block_4b144c:                                     ; preds = %block_.L_4b1435
  store i64 1, i64* %RAX.i2337, align 8
  %5732 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %5733 = zext i32 %5732 to i64
  store i64 %5733, i64* %RCX.i2273.pre-phi, align 8
  store i64 1, i64* %RDX.i2167, align 8
  %5734 = add i64 %5730, 16
  store i64 %5734, i64* %3, align 8
  %5735 = trunc i32 %5732 to i5
  switch i5 %5735, label %5736 [
    i5 0, label %routine_shll__cl___edx.exit403
    i5 1, label %5745
  ]

; <label>:5736:                                   ; preds = %block_4b144c
  %5737 = and i32 %5732, 31
  %5738 = zext i32 %5737 to i64
  %5739 = add nuw nsw i64 %5738, 4294967295
  %5740 = and i64 %5739, 4294967295
  %5741 = shl i64 1, %5740
  %5742 = trunc i64 %5741 to i32
  %5743 = icmp slt i32 %5742, 0
  %5744 = shl i32 %5742, 1
  br label %5745

; <label>:5745:                                   ; preds = %block_4b144c, %5736
  %5746 = phi i1 [ %5743, %5736 ], [ false, %block_4b144c ]
  %5747 = phi i32 [ %5744, %5736 ], [ 2, %block_4b144c ]
  %5748 = zext i32 %5747 to i64
  store i64 %5748, i64* %RDX.i2167, align 8
  %5749 = zext i1 %5746 to i8
  store i8 %5749, i8* %14, align 1
  %5750 = and i32 %5747, 254
  %5751 = tail call i32 @llvm.ctpop.i32(i32 %5750)
  %5752 = trunc i32 %5751 to i8
  %5753 = and i8 %5752, 1
  %5754 = xor i8 %5753, 1
  store i8 %5754, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5755 = icmp eq i32 %5747, 0
  %5756 = zext i1 %5755 to i8
  store i8 %5756, i8* %30, align 1
  %5757 = lshr i32 %5747, 31
  %5758 = trunc i32 %5757 to i8
  store i8 %5758, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___edx.exit403

routine_shll__cl___edx.exit403:                   ; preds = %5745, %block_4b144c
  %5759 = phi i32 [ %5747, %5745 ], [ 1, %block_4b144c ]
  %5760 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5760, i64* %RSI.i2165, align 8
  %5761 = add i64 %5730, 31
  store i64 %5761, i64* %3, align 8
  %5762 = load i32, i32* %5696, align 4
  %5763 = sext i32 %5762 to i64
  store i64 %5763, i64* %RDI.i2162, align 8
  %5764 = shl nsw i64 %5763, 3
  %5765 = add i64 %5764, %5760
  %5766 = add i64 %5730, 35
  store i64 %5766, i64* %3, align 8
  %5767 = inttoptr i64 %5765 to i64*
  %5768 = load i64, i64* %5767, align 8
  store i64 %5768, i64* %RSI.i2165, align 8
  %5769 = add i64 %5730, 39
  store i64 %5769, i64* %3, align 8
  %5770 = load i32, i32* %5691, align 4
  %5771 = sext i32 %5770 to i64
  store i64 %5771, i64* %RDI.i2162, align 8
  %5772 = shl nsw i64 %5771, 3
  %5773 = add i64 %5772, %5768
  %5774 = add i64 %5730, 43
  store i64 %5774, i64* %3, align 8
  %5775 = inttoptr i64 %5773 to i64*
  %5776 = load i64, i64* %5775, align 8
  store i64 %5776, i64* %RSI.i2165, align 8
  %5777 = add i64 %5730, 45
  store i64 %5777, i64* %3, align 8
  %5778 = inttoptr i64 %5776 to i32*
  store i32 %5759, i32* %5778, align 4
  %5779 = load i64, i64* %3, align 8
  %5780 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %5781 = zext i32 %5780 to i64
  store i64 %5781, i64* %RCX.i2273.pre-phi, align 8
  %5782 = load i32, i32* %EAX.i2270.pre-phi, align 4
  %5783 = zext i32 %5782 to i64
  store i64 %5783, i64* %RDX.i2167, align 8
  %5784 = add i64 %5779, 11
  store i64 %5784, i64* %3, align 8
  %5785 = trunc i32 %5780 to i5
  switch i5 %5785, label %5791 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %5786
  ]

; <label>:5786:                                   ; preds = %routine_shll__cl___edx.exit403
  %5787 = shl i32 %5782, 1
  %5788 = icmp slt i32 %5782, 0
  %5789 = icmp slt i32 %5787, 0
  %5790 = xor i1 %5788, %5789
  br label %5800

; <label>:5791:                                   ; preds = %routine_shll__cl___edx.exit403
  %5792 = and i32 %5780, 31
  %5793 = zext i32 %5792 to i64
  %5794 = add nuw nsw i64 %5793, 4294967295
  %5795 = and i64 %5794, 4294967295
  %5796 = shl i64 %5783, %5795
  %5797 = trunc i64 %5796 to i32
  %5798 = icmp slt i32 %5797, 0
  %5799 = shl i32 %5797, 1
  br label %5800

; <label>:5800:                                   ; preds = %5791, %5786
  %5801 = phi i1 [ %5788, %5786 ], [ %5798, %5791 ]
  %5802 = phi i1 [ %5790, %5786 ], [ false, %5791 ]
  %5803 = phi i32 [ %5787, %5786 ], [ %5799, %5791 ]
  %5804 = zext i32 %5803 to i64
  store i64 %5804, i64* %RDX.i2167, align 8
  %5805 = zext i1 %5801 to i8
  store i8 %5805, i8* %14, align 1
  %5806 = and i32 %5803, 254
  %5807 = tail call i32 @llvm.ctpop.i32(i32 %5806)
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  store i8 %5810, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5811 = icmp eq i32 %5803, 0
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %30, align 1
  %5813 = lshr i32 %5803, 31
  %5814 = trunc i32 %5813 to i8
  store i8 %5814, i8* %33, align 1
  %5815 = zext i1 %5802 to i8
  store i8 %5815, i8* %39, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %5800, %routine_shll__cl___edx.exit403
  %5816 = phi i32 [ %5803, %5800 ], [ %5782, %routine_shll__cl___edx.exit403 ]
  %5817 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5817, i64* %RSI.i2165, align 8
  %5818 = load i64, i64* %RBP.i, align 8
  %5819 = add i64 %5818, -35396
  %5820 = add i64 %5779, 26
  store i64 %5820, i64* %3, align 8
  %5821 = inttoptr i64 %5819 to i32*
  %5822 = load i32, i32* %5821, align 4
  %5823 = sext i32 %5822 to i64
  store i64 %5823, i64* %RDI.i2162, align 8
  %5824 = shl nsw i64 %5823, 3
  %5825 = add i64 %5824, %5817
  %5826 = add i64 %5779, 30
  store i64 %5826, i64* %3, align 8
  %5827 = inttoptr i64 %5825 to i64*
  %5828 = load i64, i64* %5827, align 8
  store i64 %5828, i64* %RSI.i2165, align 8
  %5829 = add i64 %5818, -36
  %5830 = add i64 %5779, 34
  store i64 %5830, i64* %3, align 8
  %5831 = inttoptr i64 %5829 to i32*
  %5832 = load i32, i32* %5831, align 4
  %5833 = sext i32 %5832 to i64
  store i64 %5833, i64* %RDI.i2162, align 8
  %5834 = shl nsw i64 %5833, 3
  %5835 = add i64 %5834, %5828
  %5836 = add i64 %5779, 38
  store i64 %5836, i64* %3, align 8
  %5837 = inttoptr i64 %5835 to i64*
  %5838 = load i64, i64* %5837, align 8
  store i64 %5838, i64* %RSI.i2165, align 8
  %5839 = add i64 %5838, 4
  %5840 = add i64 %5779, 41
  store i64 %5840, i64* %3, align 8
  %5841 = inttoptr i64 %5839 to i32*
  store i32 %5816, i32* %5841, align 4
  %5842 = load i64, i64* %3, align 8
  %5843 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %5844 = zext i32 %5843 to i64
  store i64 %5844, i64* %RCX.i2273.pre-phi, align 8
  %5845 = load i64, i64* %RAX.i2337, align 8
  %5846 = add i64 %5842, 9
  store i64 %5846, i64* %3, align 8
  %5847 = trunc i32 %5843 to i5
  %5848 = trunc i64 %5845 to i32
  switch i5 %5847, label %5854 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %5849
  ]

; <label>:5849:                                   ; preds = %routine_shll__cl___edx.exit
  %5850 = shl i32 %5848, 1
  %5851 = icmp slt i32 %5848, 0
  %5852 = icmp slt i32 %5850, 0
  %5853 = xor i1 %5851, %5852
  br label %5864

; <label>:5854:                                   ; preds = %routine_shll__cl___edx.exit
  %5855 = and i32 %5843, 31
  %5856 = zext i32 %5855 to i64
  %5857 = add nuw nsw i64 %5856, 4294967295
  %5858 = and i64 %5845, 4294967295
  %5859 = and i64 %5857, 4294967295
  %5860 = shl i64 %5858, %5859
  %5861 = trunc i64 %5860 to i32
  %5862 = icmp slt i32 %5861, 0
  %5863 = shl i32 %5861, 1
  br label %5864

; <label>:5864:                                   ; preds = %5854, %5849
  %5865 = phi i1 [ %5851, %5849 ], [ %5862, %5854 ]
  %5866 = phi i1 [ %5853, %5849 ], [ false, %5854 ]
  %5867 = phi i32 [ %5850, %5849 ], [ %5863, %5854 ]
  %5868 = zext i32 %5867 to i64
  store i64 %5868, i64* %RAX.i2337, align 8
  %5869 = zext i1 %5865 to i8
  store i8 %5869, i8* %14, align 1
  %5870 = and i32 %5867, 254
  %5871 = tail call i32 @llvm.ctpop.i32(i32 %5870)
  %5872 = trunc i32 %5871 to i8
  %5873 = and i8 %5872, 1
  %5874 = xor i8 %5873, 1
  store i8 %5874, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5875 = icmp eq i32 %5867, 0
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %30, align 1
  %5877 = lshr i32 %5867, 31
  %5878 = trunc i32 %5877 to i8
  store i8 %5878, i8* %33, align 1
  %5879 = zext i1 %5866 to i8
  store i8 %5879, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %5864, %routine_shll__cl___edx.exit
  %5880 = phi i32 [ %5867, %5864 ], [ %5848, %routine_shll__cl___edx.exit ]
  %5881 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5881, i64* %RSI.i2165, align 8
  %5882 = load i64, i64* %RBP.i, align 8
  %5883 = add i64 %5882, -35396
  %5884 = add i64 %5842, 24
  store i64 %5884, i64* %3, align 8
  %5885 = inttoptr i64 %5883 to i32*
  %5886 = load i32, i32* %5885, align 4
  %5887 = sext i32 %5886 to i64
  store i64 %5887, i64* %RDI.i2162, align 8
  %5888 = shl nsw i64 %5887, 3
  %5889 = add i64 %5888, %5881
  %5890 = add i64 %5842, 28
  store i64 %5890, i64* %3, align 8
  %5891 = inttoptr i64 %5889 to i64*
  %5892 = load i64, i64* %5891, align 8
  store i64 %5892, i64* %RSI.i2165, align 8
  %5893 = add i64 %5882, -36
  %5894 = add i64 %5842, 32
  store i64 %5894, i64* %3, align 8
  %5895 = inttoptr i64 %5893 to i32*
  %5896 = load i32, i32* %5895, align 4
  %5897 = sext i32 %5896 to i64
  store i64 %5897, i64* %RDI.i2162, align 8
  %5898 = shl nsw i64 %5897, 3
  %5899 = add i64 %5898, %5892
  %5900 = add i64 %5842, 36
  store i64 %5900, i64* %3, align 8
  %5901 = inttoptr i64 %5899 to i64*
  %5902 = load i64, i64* %5901, align 8
  %5903 = add i64 %5902, 8
  %5904 = add i64 %5842, 39
  store i64 %5904, i64* %3, align 8
  %5905 = inttoptr i64 %5903 to i32*
  store i32 %5880, i32* %5905, align 4
  %5906 = load i64, i64* %3, align 8
  %5907 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5907, i64* %RSI.i2165, align 8
  %5908 = load i64, i64* %RBP.i, align 8
  %5909 = add i64 %5908, -35396
  %5910 = add i64 %5906, 15
  store i64 %5910, i64* %3, align 8
  %5911 = inttoptr i64 %5909 to i32*
  %5912 = load i32, i32* %5911, align 4
  %5913 = sext i32 %5912 to i64
  store i64 %5913, i64* %RDI.i2162, align 8
  %5914 = shl nsw i64 %5913, 3
  %5915 = add i64 %5914, %5907
  %5916 = add i64 %5906, 19
  store i64 %5916, i64* %3, align 8
  %5917 = inttoptr i64 %5915 to i64*
  %5918 = load i64, i64* %5917, align 8
  store i64 %5918, i64* %RSI.i2165, align 8
  %5919 = add i64 %5908, -36
  %5920 = add i64 %5906, 23
  store i64 %5920, i64* %3, align 8
  %5921 = inttoptr i64 %5919 to i32*
  %5922 = load i32, i32* %5921, align 4
  %5923 = sext i32 %5922 to i64
  store i64 %5923, i64* %RDI.i2162, align 8
  %5924 = shl nsw i64 %5923, 3
  %5925 = add i64 %5924, %5918
  %5926 = add i64 %5906, 27
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i32**
  %5928 = load i32*, i32** %5927, align 8
  %5929 = add i64 %5906, 33
  store i64 %5929, i64* %3, align 8
  store i32 0, i32* %5928, align 4
  %5930 = load i64, i64* %3, align 8
  %5931 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5931, i64* %RSI.i2165, align 8
  %5932 = load i64, i64* %RBP.i, align 8
  %5933 = add i64 %5932, -35396
  %5934 = add i64 %5930, 15
  store i64 %5934, i64* %3, align 8
  %5935 = inttoptr i64 %5933 to i32*
  %5936 = load i32, i32* %5935, align 4
  %5937 = sext i32 %5936 to i64
  store i64 %5937, i64* %RDI.i2162, align 8
  %5938 = shl nsw i64 %5937, 3
  %5939 = add i64 %5938, %5931
  %5940 = add i64 %5930, 19
  store i64 %5940, i64* %3, align 8
  %5941 = inttoptr i64 %5939 to i64*
  %5942 = load i64, i64* %5941, align 8
  store i64 %5942, i64* %RSI.i2165, align 8
  %5943 = add i64 %5932, -36
  %5944 = add i64 %5930, 23
  store i64 %5944, i64* %3, align 8
  %5945 = inttoptr i64 %5943 to i32*
  %5946 = load i32, i32* %5945, align 4
  %5947 = sext i32 %5946 to i64
  store i64 %5947, i64* %RDI.i2162, align 8
  %5948 = shl nsw i64 %5947, 3
  %5949 = add i64 %5948, %5942
  %5950 = add i64 %5930, 27
  store i64 %5950, i64* %3, align 8
  %5951 = inttoptr i64 %5949 to i64*
  %5952 = load i64, i64* %5951, align 8
  %5953 = add i64 %5952, 4
  %5954 = add i64 %5930, 34
  store i64 %5954, i64* %3, align 8
  %5955 = inttoptr i64 %5953 to i32*
  store i32 0, i32* %5955, align 4
  %5956 = load i64, i64* %3, align 8
  %5957 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5957, i64* %RSI.i2165, align 8
  %5958 = load i64, i64* %RBP.i, align 8
  %5959 = add i64 %5958, -35396
  %5960 = add i64 %5956, 15
  store i64 %5960, i64* %3, align 8
  %5961 = inttoptr i64 %5959 to i32*
  %5962 = load i32, i32* %5961, align 4
  %5963 = sext i32 %5962 to i64
  store i64 %5963, i64* %RDI.i2162, align 8
  %5964 = shl nsw i64 %5963, 3
  %5965 = add i64 %5964, %5957
  %5966 = add i64 %5956, 19
  store i64 %5966, i64* %3, align 8
  %5967 = inttoptr i64 %5965 to i64*
  %5968 = load i64, i64* %5967, align 8
  store i64 %5968, i64* %RSI.i2165, align 8
  %5969 = add i64 %5958, -36
  %5970 = add i64 %5956, 23
  store i64 %5970, i64* %3, align 8
  %5971 = inttoptr i64 %5969 to i32*
  %5972 = load i32, i32* %5971, align 4
  %5973 = sext i32 %5972 to i64
  store i64 %5973, i64* %RDI.i2162, align 8
  %5974 = shl nsw i64 %5973, 3
  %5975 = add i64 %5974, %5968
  %5976 = add i64 %5956, 27
  store i64 %5976, i64* %3, align 8
  %5977 = inttoptr i64 %5975 to i64*
  %5978 = load i64, i64* %5977, align 8
  store i64 %5978, i64* %RSI.i2165, align 8
  %5979 = add i64 %5978, 8
  %5980 = add i64 %5956, 34
  store i64 %5980, i64* %3, align 8
  %5981 = inttoptr i64 %5979 to i32*
  store i32 0, i32* %5981, align 4
  %5982 = load i64, i64* %RBP.i, align 8
  %5983 = add i64 %5982, -36
  %5984 = load i64, i64* %3, align 8
  %5985 = add i64 %5984, 3
  store i64 %5985, i64* %3, align 8
  %5986 = inttoptr i64 %5983 to i32*
  %5987 = load i32, i32* %5986, align 4
  %5988 = add i32 %5987, 1
  %5989 = zext i32 %5988 to i64
  store i64 %5989, i64* %RAX.i2337, align 8
  %5990 = icmp eq i32 %5987, -1
  %5991 = icmp eq i32 %5988, 0
  %5992 = or i1 %5990, %5991
  %5993 = zext i1 %5992 to i8
  store i8 %5993, i8* %14, align 1
  %5994 = and i32 %5988, 255
  %5995 = tail call i32 @llvm.ctpop.i32(i32 %5994)
  %5996 = trunc i32 %5995 to i8
  %5997 = and i8 %5996, 1
  %5998 = xor i8 %5997, 1
  store i8 %5998, i8* %21, align 1
  %5999 = xor i32 %5988, %5987
  %6000 = lshr i32 %5999, 4
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  store i8 %6002, i8* %27, align 1
  %6003 = zext i1 %5991 to i8
  store i8 %6003, i8* %30, align 1
  %6004 = lshr i32 %5988, 31
  %6005 = trunc i32 %6004 to i8
  store i8 %6005, i8* %33, align 1
  %6006 = lshr i32 %5987, 31
  %6007 = xor i32 %6004, %6006
  %6008 = add nuw nsw i32 %6007, %6004
  %6009 = icmp eq i32 %6008, 2
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %39, align 1
  %6011 = add i64 %5984, 9
  store i64 %6011, i64* %3, align 8
  store i32 %5988, i32* %5986, align 4
  %6012 = load i64, i64* %3, align 8
  %6013 = add i64 %6012, -258
  store i64 %6013, i64* %3, align 8
  br label %block_.L_4b1435

block_.L_4b153c:                                  ; preds = %block_.L_4b1435
  %6014 = add i64 %5730, 11
  store i64 %6014, i64* %3, align 8
  %6015 = load i32, i32* %5696, align 4
  %6016 = add i32 %6015, 1
  %6017 = zext i32 %6016 to i64
  store i64 %6017, i64* %RAX.i2337, align 8
  %6018 = icmp eq i32 %6015, -1
  %6019 = icmp eq i32 %6016, 0
  %6020 = or i1 %6018, %6019
  %6021 = zext i1 %6020 to i8
  store i8 %6021, i8* %14, align 1
  %6022 = and i32 %6016, 255
  %6023 = tail call i32 @llvm.ctpop.i32(i32 %6022)
  %6024 = trunc i32 %6023 to i8
  %6025 = and i8 %6024, 1
  %6026 = xor i8 %6025, 1
  store i8 %6026, i8* %21, align 1
  %6027 = xor i32 %6016, %6015
  %6028 = lshr i32 %6027, 4
  %6029 = trunc i32 %6028 to i8
  %6030 = and i8 %6029, 1
  store i8 %6030, i8* %27, align 1
  %6031 = zext i1 %6019 to i8
  store i8 %6031, i8* %30, align 1
  %6032 = lshr i32 %6016, 31
  %6033 = trunc i32 %6032 to i8
  store i8 %6033, i8* %33, align 1
  %6034 = lshr i32 %6015, 31
  %6035 = xor i32 %6032, %6034
  %6036 = add nuw nsw i32 %6035, %6032
  %6037 = icmp eq i32 %6036, 2
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %39, align 1
  %6039 = add i64 %5730, 20
  store i64 %6039, i64* %3, align 8
  store i32 %6016, i32* %5696, align 4
  %6040 = load i64, i64* %3, align 8
  %6041 = add i64 %6040, -313
  store i64 %6041, i64* %3, align 8
  br label %block_.L_4b1417

block_.L_4b1555:                                  ; preds = %block_.L_4b1417
  %6042 = add i64 %5683, 5
  store i64 %6042, i64* %3, align 8
  br label %block_.L_4b155a

block_.L_4b155a:                                  ; preds = %block_.L_4b1555, %block_.L_4b1408
  %6043 = phi i64 [ %5219, %block_.L_4b1408 ], [ %5645, %block_.L_4b1555 ]
  %storemerge51 = phi i64 [ %5643, %block_.L_4b1408 ], [ %6042, %block_.L_4b1555 ]
  %6044 = add i64 %6043, -8
  %6045 = add i64 %storemerge51, 7
  store i64 %6045, i64* %3, align 8
  %6046 = inttoptr i64 %6044 to i32*
  store i32 0, i32* %6046, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_4b1561

block_.L_4b1561:                                  ; preds = %block_.L_4b1669, %block_.L_4b155a
  %6047 = phi i64 [ %6393, %block_.L_4b1669 ], [ %.pre128, %block_.L_4b155a ]
  %6048 = load i64, i64* %RBP.i, align 8
  %6049 = add i64 %6048, -8
  %6050 = add i64 %6047, 3
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i32*
  %6052 = load i32, i32* %6051, align 4
  %6053 = zext i32 %6052 to i64
  store i64 %6053, i64* %RAX.i2337, align 8
  %6054 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %6055 = sub i32 %6052, %6054
  %6056 = icmp ult i32 %6052, %6054
  %6057 = zext i1 %6056 to i8
  store i8 %6057, i8* %14, align 1
  %6058 = and i32 %6055, 255
  %6059 = tail call i32 @llvm.ctpop.i32(i32 %6058)
  %6060 = trunc i32 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = xor i8 %6061, 1
  store i8 %6062, i8* %21, align 1
  %6063 = xor i32 %6054, %6052
  %6064 = xor i32 %6063, %6055
  %6065 = lshr i32 %6064, 4
  %6066 = trunc i32 %6065 to i8
  %6067 = and i8 %6066, 1
  store i8 %6067, i8* %27, align 1
  %6068 = icmp eq i32 %6055, 0
  %6069 = zext i1 %6068 to i8
  store i8 %6069, i8* %30, align 1
  %6070 = lshr i32 %6055, 31
  %6071 = trunc i32 %6070 to i8
  store i8 %6071, i8* %33, align 1
  %6072 = lshr i32 %6052, 31
  %6073 = lshr i32 %6054, 31
  %6074 = xor i32 %6073, %6072
  %6075 = xor i32 %6070, %6072
  %6076 = add nuw nsw i32 %6075, %6074
  %6077 = icmp eq i32 %6076, 2
  %6078 = zext i1 %6077 to i8
  store i8 %6078, i8* %39, align 1
  %6079 = icmp ne i8 %6071, 0
  %6080 = xor i1 %6079, %6077
  %.v193 = select i1 %6080, i64 16, i64 283
  %6081 = add i64 %6047, %.v193
  store i64 %6081, i64* %3, align 8
  br i1 %6080, label %block_4b1571, label %block_.L_4b167c

block_4b1571:                                     ; preds = %block_.L_4b1561
  %6082 = add i64 %6048, -12
  %6083 = add i64 %6081, 7
  store i64 %6083, i64* %3, align 8
  %6084 = inttoptr i64 %6082 to i32*
  store i32 0, i32* %6084, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_4b1578

block_.L_4b1578:                                  ; preds = %block_.L_4b1656, %block_4b1571
  %6085 = phi i64 [ %6363, %block_.L_4b1656 ], [ %.pre133, %block_4b1571 ]
  %6086 = load i64, i64* %RBP.i, align 8
  %6087 = add i64 %6086, -12
  %6088 = add i64 %6085, 3
  store i64 %6088, i64* %3, align 8
  %6089 = inttoptr i64 %6087 to i32*
  %6090 = load i32, i32* %6089, align 4
  %6091 = zext i32 %6090 to i64
  store i64 %6091, i64* %RAX.i2337, align 8
  %6092 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %6093 = sub i32 %6090, %6092
  %6094 = icmp ult i32 %6090, %6092
  %6095 = zext i1 %6094 to i8
  store i8 %6095, i8* %14, align 1
  %6096 = and i32 %6093, 255
  %6097 = tail call i32 @llvm.ctpop.i32(i32 %6096)
  %6098 = trunc i32 %6097 to i8
  %6099 = and i8 %6098, 1
  %6100 = xor i8 %6099, 1
  store i8 %6100, i8* %21, align 1
  %6101 = xor i32 %6092, %6090
  %6102 = xor i32 %6101, %6093
  %6103 = lshr i32 %6102, 4
  %6104 = trunc i32 %6103 to i8
  %6105 = and i8 %6104, 1
  store i8 %6105, i8* %27, align 1
  %6106 = icmp eq i32 %6093, 0
  %6107 = zext i1 %6106 to i8
  store i8 %6107, i8* %30, align 1
  %6108 = lshr i32 %6093, 31
  %6109 = trunc i32 %6108 to i8
  store i8 %6109, i8* %33, align 1
  %6110 = lshr i32 %6090, 31
  %6111 = lshr i32 %6092, 31
  %6112 = xor i32 %6111, %6110
  %6113 = xor i32 %6108, %6110
  %6114 = add nuw nsw i32 %6113, %6112
  %6115 = icmp eq i32 %6114, 2
  %6116 = zext i1 %6115 to i8
  store i8 %6116, i8* %39, align 1
  %6117 = icmp ne i8 %6109, 0
  %6118 = xor i1 %6117, %6115
  %.v178 = select i1 %6118, i64 16, i64 241
  %6119 = add i64 %6085, %.v178
  store i64 %6119, i64* %3, align 8
  br i1 %6118, label %block_4b1588, label %block_.L_4b1669

block_4b1588:                                     ; preds = %block_.L_4b1578
  %6120 = add i64 %6086, -40
  %6121 = add i64 %6119, 7
  store i64 %6121, i64* %3, align 8
  %6122 = inttoptr i64 %6120 to i32*
  store i32 0, i32* %6122, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_4b158f

block_.L_4b158f:                                  ; preds = %block_.L_4b15c2, %block_4b1588
  %6123 = phi i64 [ %6333, %block_.L_4b15c2 ], [ %.pre134, %block_4b1588 ]
  %6124 = load i64, i64* %RBP.i, align 8
  %6125 = add i64 %6124, -40
  %6126 = add i64 %6123, 4
  store i64 %6126, i64* %3, align 8
  %6127 = inttoptr i64 %6125 to i32*
  %6128 = load i32, i32* %6127, align 4
  %6129 = add i32 %6128, -3
  %6130 = icmp ult i32 %6128, 3
  %6131 = zext i1 %6130 to i8
  store i8 %6131, i8* %14, align 1
  %6132 = and i32 %6129, 255
  %6133 = tail call i32 @llvm.ctpop.i32(i32 %6132)
  %6134 = trunc i32 %6133 to i8
  %6135 = and i8 %6134, 1
  %6136 = xor i8 %6135, 1
  store i8 %6136, i8* %21, align 1
  %6137 = xor i32 %6129, %6128
  %6138 = lshr i32 %6137, 4
  %6139 = trunc i32 %6138 to i8
  %6140 = and i8 %6139, 1
  store i8 %6140, i8* %27, align 1
  %6141 = icmp eq i32 %6129, 0
  %6142 = zext i1 %6141 to i8
  store i8 %6142, i8* %30, align 1
  %6143 = lshr i32 %6129, 31
  %6144 = trunc i32 %6143 to i8
  store i8 %6144, i8* %33, align 1
  %6145 = lshr i32 %6128, 31
  %6146 = xor i32 %6143, %6145
  %6147 = add nuw nsw i32 %6146, %6145
  %6148 = icmp eq i32 %6147, 2
  %6149 = zext i1 %6148 to i8
  store i8 %6149, i8* %39, align 1
  %6150 = icmp ne i8 %6144, 0
  %6151 = xor i1 %6150, %6148
  %.v179 = select i1 %6151, i64 10, i64 199
  %6152 = add i64 %6123, %.v179
  store i64 %6152, i64* %3, align 8
  br i1 %6151, label %block_4b1599, label %block_.L_4b1656

block_4b1599:                                     ; preds = %block_.L_4b158f
  %6153 = add i64 %6152, 4
  store i64 %6153, i64* %3, align 8
  %6154 = load i32, i32* %6127, align 4
  store i8 0, i8* %14, align 1
  %6155 = and i32 %6154, 255
  %6156 = tail call i32 @llvm.ctpop.i32(i32 %6155)
  %6157 = trunc i32 %6156 to i8
  %6158 = and i8 %6157, 1
  %6159 = xor i8 %6158, 1
  store i8 %6159, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6160 = icmp eq i32 %6154, 0
  %6161 = zext i1 %6160 to i8
  store i8 %6161, i8* %30, align 1
  %6162 = lshr i32 %6154, 31
  %6163 = trunc i32 %6162 to i8
  store i8 %6163, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v196 = select i1 %6160, i64 10, i64 28
  %6164 = add i64 %6152, %.v196
  %6165 = add i64 %6164, 7
  store i64 %6165, i64* %3, align 8
  br i1 %6160, label %block_4b15a3, label %block_.L_4b15b5

block_4b15a3:                                     ; preds = %block_4b1599
  %6166 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6167 = zext i32 %6166 to i64
  store i64 %6167, i64* %RAX.i2337, align 8
  %6168 = add i64 %6124, -35464
  %6169 = add i64 %6164, 13
  store i64 %6169, i64* %3, align 8
  %6170 = inttoptr i64 %6168 to i32*
  store i32 %6166, i32* %6170, align 4
  %6171 = load i64, i64* %3, align 8
  %6172 = add i64 %6171, 18
  store i64 %6172, i64* %3, align 8
  br label %block_.L_4b15c2

block_.L_4b15b5:                                  ; preds = %block_4b1599
  %6173 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6174 = zext i32 %6173 to i64
  store i64 %6174, i64* %RAX.i2337, align 8
  %6175 = add i64 %6124, -35464
  %6176 = add i64 %6164, 13
  store i64 %6176, i64* %3, align 8
  %6177 = inttoptr i64 %6175 to i32*
  store i32 %6173, i32* %6177, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_4b15c2

block_.L_4b15c2:                                  ; preds = %block_.L_4b15b5, %block_4b15a3
  %6178 = phi i64 [ %.pre135, %block_.L_4b15b5 ], [ %6172, %block_4b15a3 ]
  %6179 = load i64, i64* %RBP.i, align 8
  %6180 = add i64 %6179, -35464
  %6181 = add i64 %6178, 6
  store i64 %6181, i64* %3, align 8
  %6182 = inttoptr i64 %6180 to i32*
  %6183 = load i32, i32* %6182, align 4
  %6184 = zext i32 %6183 to i64
  store i64 %6184, i64* %RAX.i2337, align 8
  %6185 = add i64 %6179, -772
  %6186 = add i64 %6178, 12
  store i64 %6186, i64* %3, align 8
  %6187 = inttoptr i64 %6185 to i32*
  store i32 %6183, i32* %6187, align 4
  %6188 = load i64, i64* %3, align 8
  %6189 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %6189, i64* %RCX.i2273.pre-phi, align 8
  %6190 = add i64 %6188, 11
  store i64 %6190, i64* %3, align 8
  %6191 = inttoptr i64 %6189 to i64*
  %6192 = load i64, i64* %6191, align 8
  store i64 %6192, i64* %RCX.i2273.pre-phi, align 8
  %6193 = load i64, i64* %RBP.i, align 8
  %6194 = add i64 %6193, -8
  %6195 = add i64 %6188, 15
  store i64 %6195, i64* %3, align 8
  %6196 = inttoptr i64 %6194 to i32*
  %6197 = load i32, i32* %6196, align 4
  %6198 = sext i32 %6197 to i64
  store i64 %6198, i64* %864, align 8
  %6199 = shl nsw i64 %6198, 3
  %6200 = add i64 %6199, %6192
  %6201 = add i64 %6188, 19
  store i64 %6201, i64* %3, align 8
  %6202 = inttoptr i64 %6200 to i64*
  %6203 = load i64, i64* %6202, align 8
  store i64 %6203, i64* %RCX.i2273.pre-phi, align 8
  %6204 = add i64 %6193, -40
  %6205 = add i64 %6188, 23
  store i64 %6205, i64* %3, align 8
  %6206 = inttoptr i64 %6204 to i32*
  %6207 = load i32, i32* %6206, align 4
  %6208 = sext i32 %6207 to i64
  store i64 %6208, i64* %864, align 8
  %6209 = shl nsw i64 %6208, 2
  %6210 = add i64 %6209, %6203
  %6211 = add i64 %6188, 26
  store i64 %6211, i64* %3, align 8
  %6212 = inttoptr i64 %6210 to i32*
  %6213 = load i32, i32* %6212, align 4
  %6214 = zext i32 %6213 to i64
  store i64 %6214, i64* %RAX.i2337, align 8
  %6215 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %6215, i64* %RCX.i2273.pre-phi, align 8
  %6216 = add i64 %6188, 37
  store i64 %6216, i64* %3, align 8
  %6217 = inttoptr i64 %6215 to i64*
  %6218 = load i64, i64* %6217, align 8
  store i64 %6218, i64* %RCX.i2273.pre-phi, align 8
  %6219 = add i64 %6188, 41
  store i64 %6219, i64* %3, align 8
  %6220 = load i32, i32* %6196, align 4
  %6221 = sext i32 %6220 to i64
  store i64 %6221, i64* %864, align 8
  %6222 = shl nsw i64 %6221, 3
  %6223 = add i64 %6222, %6218
  %6224 = add i64 %6188, 45
  store i64 %6224, i64* %3, align 8
  %6225 = inttoptr i64 %6223 to i64*
  %6226 = load i64, i64* %6225, align 8
  store i64 %6226, i64* %RCX.i2273.pre-phi, align 8
  %6227 = add i64 %6193, -12
  %6228 = add i64 %6188, 49
  store i64 %6228, i64* %3, align 8
  %6229 = inttoptr i64 %6227 to i32*
  %6230 = load i32, i32* %6229, align 4
  %6231 = sext i32 %6230 to i64
  store i64 %6231, i64* %864, align 8
  %6232 = shl nsw i64 %6231, 3
  %6233 = add i64 %6232, %6226
  %6234 = add i64 %6188, 53
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6233 to i64*
  %6236 = load i64, i64* %6235, align 8
  store i64 %6236, i64* %RCX.i2273.pre-phi, align 8
  %6237 = add i64 %6188, 57
  store i64 %6237, i64* %3, align 8
  %6238 = load i32, i32* %6206, align 4
  %6239 = sext i32 %6238 to i64
  store i64 %6239, i64* %864, align 8
  %6240 = shl nsw i64 %6239, 2
  %6241 = add i64 %6240, %6236
  %6242 = add i64 %6188, 60
  store i64 %6242, i64* %3, align 8
  %6243 = inttoptr i64 %6241 to i32*
  store i32 %6213, i32* %6243, align 4
  %6244 = load i64, i64* %3, align 8
  %6245 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %6245, i64* %RCX.i2273.pre-phi, align 8
  %6246 = add i64 %6245, 8
  %6247 = add i64 %6244, 12
  store i64 %6247, i64* %3, align 8
  %6248 = inttoptr i64 %6246 to i64*
  %6249 = load i64, i64* %6248, align 8
  store i64 %6249, i64* %RCX.i2273.pre-phi, align 8
  %6250 = load i64, i64* %RBP.i, align 8
  %6251 = add i64 %6250, -12
  %6252 = add i64 %6244, 16
  store i64 %6252, i64* %3, align 8
  %6253 = inttoptr i64 %6251 to i32*
  %6254 = load i32, i32* %6253, align 4
  %6255 = sext i32 %6254 to i64
  store i64 %6255, i64* %864, align 8
  %6256 = shl nsw i64 %6255, 3
  %6257 = add i64 %6256, %6249
  %6258 = add i64 %6244, 20
  store i64 %6258, i64* %3, align 8
  %6259 = inttoptr i64 %6257 to i64*
  %6260 = load i64, i64* %6259, align 8
  store i64 %6260, i64* %RCX.i2273.pre-phi, align 8
  %6261 = add i64 %6250, -40
  %6262 = add i64 %6244, 24
  store i64 %6262, i64* %3, align 8
  %6263 = inttoptr i64 %6261 to i32*
  %6264 = load i32, i32* %6263, align 4
  %6265 = sext i32 %6264 to i64
  store i64 %6265, i64* %864, align 8
  %6266 = shl nsw i64 %6265, 2
  %6267 = add i64 %6266, %6260
  %6268 = add i64 %6244, 27
  store i64 %6268, i64* %3, align 8
  %6269 = inttoptr i64 %6267 to i32*
  %6270 = load i32, i32* %6269, align 4
  %6271 = zext i32 %6270 to i64
  store i64 %6271, i64* %RAX.i2337, align 8
  %6272 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %6272, i64* %RCX.i2273.pre-phi, align 8
  %6273 = add i64 %6272, 8
  %6274 = add i64 %6244, 39
  store i64 %6274, i64* %3, align 8
  %6275 = inttoptr i64 %6273 to i64*
  %6276 = load i64, i64* %6275, align 8
  store i64 %6276, i64* %RCX.i2273.pre-phi, align 8
  %6277 = add i64 %6250, -8
  %6278 = add i64 %6244, 43
  store i64 %6278, i64* %3, align 8
  %6279 = inttoptr i64 %6277 to i32*
  %6280 = load i32, i32* %6279, align 4
  %6281 = sext i32 %6280 to i64
  store i64 %6281, i64* %864, align 8
  %6282 = shl nsw i64 %6281, 3
  %6283 = add i64 %6282, %6276
  %6284 = add i64 %6244, 47
  store i64 %6284, i64* %3, align 8
  %6285 = inttoptr i64 %6283 to i64*
  %6286 = load i64, i64* %6285, align 8
  store i64 %6286, i64* %RCX.i2273.pre-phi, align 8
  %6287 = add i64 %6244, 51
  store i64 %6287, i64* %3, align 8
  %6288 = load i32, i32* %6253, align 4
  %6289 = sext i32 %6288 to i64
  store i64 %6289, i64* %864, align 8
  %6290 = shl nsw i64 %6289, 3
  %6291 = add i64 %6290, %6286
  %6292 = add i64 %6244, 55
  store i64 %6292, i64* %3, align 8
  %6293 = inttoptr i64 %6291 to i64*
  %6294 = load i64, i64* %6293, align 8
  store i64 %6294, i64* %RCX.i2273.pre-phi, align 8
  %6295 = add i64 %6244, 59
  store i64 %6295, i64* %3, align 8
  %6296 = load i32, i32* %6263, align 4
  %6297 = sext i32 %6296 to i64
  store i64 %6297, i64* %864, align 8
  %6298 = shl nsw i64 %6297, 2
  %6299 = add i64 %6298, %6294
  %6300 = add i64 %6244, 62
  store i64 %6300, i64* %3, align 8
  %6301 = inttoptr i64 %6299 to i32*
  store i32 %6270, i32* %6301, align 4
  %6302 = load i64, i64* %RBP.i, align 8
  %6303 = add i64 %6302, -40
  %6304 = load i64, i64* %3, align 8
  %6305 = add i64 %6304, 3
  store i64 %6305, i64* %3, align 8
  %6306 = inttoptr i64 %6303 to i32*
  %6307 = load i32, i32* %6306, align 4
  %6308 = add i32 %6307, 1
  %6309 = zext i32 %6308 to i64
  store i64 %6309, i64* %RAX.i2337, align 8
  %6310 = icmp eq i32 %6307, -1
  %6311 = icmp eq i32 %6308, 0
  %6312 = or i1 %6310, %6311
  %6313 = zext i1 %6312 to i8
  store i8 %6313, i8* %14, align 1
  %6314 = and i32 %6308, 255
  %6315 = tail call i32 @llvm.ctpop.i32(i32 %6314)
  %6316 = trunc i32 %6315 to i8
  %6317 = and i8 %6316, 1
  %6318 = xor i8 %6317, 1
  store i8 %6318, i8* %21, align 1
  %6319 = xor i32 %6308, %6307
  %6320 = lshr i32 %6319, 4
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  store i8 %6322, i8* %27, align 1
  %6323 = zext i1 %6311 to i8
  store i8 %6323, i8* %30, align 1
  %6324 = lshr i32 %6308, 31
  %6325 = trunc i32 %6324 to i8
  store i8 %6325, i8* %33, align 1
  %6326 = lshr i32 %6307, 31
  %6327 = xor i32 %6324, %6326
  %6328 = add nuw nsw i32 %6327, %6324
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  store i8 %6330, i8* %39, align 1
  %6331 = add i64 %6304, 9
  store i64 %6331, i64* %3, align 8
  store i32 %6308, i32* %6306, align 4
  %6332 = load i64, i64* %3, align 8
  %6333 = add i64 %6332, -194
  store i64 %6333, i64* %3, align 8
  br label %block_.L_4b158f

block_.L_4b1656:                                  ; preds = %block_.L_4b158f
  %6334 = add i64 %6124, -12
  %6335 = add i64 %6152, 8
  store i64 %6335, i64* %3, align 8
  %6336 = inttoptr i64 %6334 to i32*
  %6337 = load i32, i32* %6336, align 4
  %6338 = add i32 %6337, 1
  %6339 = zext i32 %6338 to i64
  store i64 %6339, i64* %RAX.i2337, align 8
  %6340 = icmp eq i32 %6337, -1
  %6341 = icmp eq i32 %6338, 0
  %6342 = or i1 %6340, %6341
  %6343 = zext i1 %6342 to i8
  store i8 %6343, i8* %14, align 1
  %6344 = and i32 %6338, 255
  %6345 = tail call i32 @llvm.ctpop.i32(i32 %6344)
  %6346 = trunc i32 %6345 to i8
  %6347 = and i8 %6346, 1
  %6348 = xor i8 %6347, 1
  store i8 %6348, i8* %21, align 1
  %6349 = xor i32 %6338, %6337
  %6350 = lshr i32 %6349, 4
  %6351 = trunc i32 %6350 to i8
  %6352 = and i8 %6351, 1
  store i8 %6352, i8* %27, align 1
  %6353 = zext i1 %6341 to i8
  store i8 %6353, i8* %30, align 1
  %6354 = lshr i32 %6338, 31
  %6355 = trunc i32 %6354 to i8
  store i8 %6355, i8* %33, align 1
  %6356 = lshr i32 %6337, 31
  %6357 = xor i32 %6354, %6356
  %6358 = add nuw nsw i32 %6357, %6354
  %6359 = icmp eq i32 %6358, 2
  %6360 = zext i1 %6359 to i8
  store i8 %6360, i8* %39, align 1
  %6361 = add i64 %6152, 14
  store i64 %6361, i64* %3, align 8
  store i32 %6338, i32* %6336, align 4
  %6362 = load i64, i64* %3, align 8
  %6363 = add i64 %6362, -236
  store i64 %6363, i64* %3, align 8
  br label %block_.L_4b1578

block_.L_4b1669:                                  ; preds = %block_.L_4b1578
  %6364 = add i64 %6086, -8
  %6365 = add i64 %6119, 8
  store i64 %6365, i64* %3, align 8
  %6366 = inttoptr i64 %6364 to i32*
  %6367 = load i32, i32* %6366, align 4
  %6368 = add i32 %6367, 1
  %6369 = zext i32 %6368 to i64
  store i64 %6369, i64* %RAX.i2337, align 8
  %6370 = icmp eq i32 %6367, -1
  %6371 = icmp eq i32 %6368, 0
  %6372 = or i1 %6370, %6371
  %6373 = zext i1 %6372 to i8
  store i8 %6373, i8* %14, align 1
  %6374 = and i32 %6368, 255
  %6375 = tail call i32 @llvm.ctpop.i32(i32 %6374)
  %6376 = trunc i32 %6375 to i8
  %6377 = and i8 %6376, 1
  %6378 = xor i8 %6377, 1
  store i8 %6378, i8* %21, align 1
  %6379 = xor i32 %6368, %6367
  %6380 = lshr i32 %6379, 4
  %6381 = trunc i32 %6380 to i8
  %6382 = and i8 %6381, 1
  store i8 %6382, i8* %27, align 1
  %6383 = zext i1 %6371 to i8
  store i8 %6383, i8* %30, align 1
  %6384 = lshr i32 %6368, 31
  %6385 = trunc i32 %6384 to i8
  store i8 %6385, i8* %33, align 1
  %6386 = lshr i32 %6367, 31
  %6387 = xor i32 %6384, %6386
  %6388 = add nuw nsw i32 %6387, %6384
  %6389 = icmp eq i32 %6388, 2
  %6390 = zext i1 %6389 to i8
  store i8 %6390, i8* %39, align 1
  %6391 = add i64 %6119, 14
  store i64 %6391, i64* %3, align 8
  store i32 %6368, i32* %6366, align 4
  %6392 = load i64, i64* %3, align 8
  %6393 = add i64 %6392, -278
  store i64 %6393, i64* %3, align 8
  br label %block_.L_4b1561

block_.L_4b167c:                                  ; preds = %block_.L_4b1561
  %6394 = add i64 %6081, 5
  store i64 %6394, i64* %3, align 8
  br label %block_.L_4b1681

block_.L_4b1681:                                  ; preds = %block_.L_4b167c, %block_.L_4b0f6a
  %6395 = phi i64 [ %3489, %block_.L_4b0f6a ], [ %6048, %block_.L_4b167c ]
  %storemerge50 = phi i64 [ %3886, %block_.L_4b0f6a ], [ %6394, %block_.L_4b167c ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.5, %block_.L_4b0f6a ], [ %MEMORY.25, %block_.L_4b167c ]
  %6396 = add i64 %6395, -35396
  %6397 = add i64 %storemerge50, 10
  store i64 %6397, i64* %3, align 8
  %6398 = inttoptr i64 %6396 to i32*
  store i32 0, i32* %6398, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_4b168b

block_.L_4b168b:                                  ; preds = %block_.L_4b1781, %block_.L_4b1681
  %6399 = phi i64 [ %6764, %block_.L_4b1781 ], [ %.pre129, %block_.L_4b1681 ]
  %6400 = load i64, i64* %RBP.i, align 8
  %6401 = add i64 %6400, -35396
  %6402 = add i64 %6399, 6
  store i64 %6402, i64* %3, align 8
  %6403 = inttoptr i64 %6401 to i32*
  %6404 = load i32, i32* %6403, align 4
  %6405 = zext i32 %6404 to i64
  store i64 %6405, i64* %RAX.i2337, align 8
  %6406 = add i64 %6400, -804
  %6407 = add i64 %6399, 12
  store i64 %6407, i64* %3, align 8
  %6408 = inttoptr i64 %6406 to i32*
  %6409 = load i32, i32* %6408, align 4
  %6410 = add i32 %6409, 2
  %6411 = zext i32 %6410 to i64
  store i64 %6411, i64* %RCX.i2273.pre-phi, align 8
  %6412 = lshr i32 %6410, 31
  %6413 = sub i32 %6404, %6410
  %6414 = icmp ult i32 %6404, %6410
  %6415 = zext i1 %6414 to i8
  store i8 %6415, i8* %14, align 1
  %6416 = and i32 %6413, 255
  %6417 = tail call i32 @llvm.ctpop.i32(i32 %6416)
  %6418 = trunc i32 %6417 to i8
  %6419 = and i8 %6418, 1
  %6420 = xor i8 %6419, 1
  store i8 %6420, i8* %21, align 1
  %6421 = xor i32 %6410, %6404
  %6422 = xor i32 %6421, %6413
  %6423 = lshr i32 %6422, 4
  %6424 = trunc i32 %6423 to i8
  %6425 = and i8 %6424, 1
  store i8 %6425, i8* %27, align 1
  %6426 = icmp eq i32 %6413, 0
  %6427 = zext i1 %6426 to i8
  store i8 %6427, i8* %30, align 1
  %6428 = lshr i32 %6413, 31
  %6429 = trunc i32 %6428 to i8
  store i8 %6429, i8* %33, align 1
  %6430 = lshr i32 %6404, 31
  %6431 = xor i32 %6412, %6430
  %6432 = xor i32 %6428, %6430
  %6433 = add nuw nsw i32 %6432, %6431
  %6434 = icmp eq i32 %6433, 2
  %6435 = zext i1 %6434 to i8
  store i8 %6435, i8* %39, align 1
  %6436 = icmp ne i8 %6429, 0
  %6437 = xor i1 %6436, %6434
  %.v194 = select i1 %6437, i64 23, i64 271
  %6438 = add i64 %6399, %.v194
  store i64 %6438, i64* %3, align 8
  br i1 %6437, label %block_4b16a2, label %block_.L_4b179a.loopexit

block_4b16a2:                                     ; preds = %block_.L_4b168b
  %6439 = add i64 %6400, -36
  %6440 = add i64 %6438, 7
  store i64 %6440, i64* %3, align 8
  %6441 = inttoptr i64 %6439 to i32*
  store i32 0, i32* %6441, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_4b16a9

block_.L_4b16a9:                                  ; preds = %block_.L_4b175c, %block_4b16a2
  %6442 = phi i64 [ %6705, %block_.L_4b175c ], [ %.pre130, %block_4b16a2 ]
  %6443 = load i64, i64* %RBP.i, align 8
  %6444 = add i64 %6443, -36
  %6445 = add i64 %6442, 3
  store i64 %6445, i64* %3, align 8
  %6446 = inttoptr i64 %6444 to i32*
  %6447 = load i32, i32* %6446, align 4
  %6448 = zext i32 %6447 to i64
  store i64 %6448, i64* %RAX.i2337, align 8
  %6449 = add i64 %6443, -35396
  %6450 = add i64 %6442, 10
  store i64 %6450, i64* %3, align 8
  %6451 = inttoptr i64 %6449 to i32*
  %6452 = load i32, i32* %6451, align 4
  %6453 = sext i32 %6452 to i64
  store i64 %6453, i64* %RCX.i2273.pre-phi, align 8
  %6454 = shl nsw i64 %6453, 2
  %6455 = add nsw i64 %6454, 7489456
  %6456 = add i64 %6442, 17
  store i64 %6456, i64* %3, align 8
  %6457 = inttoptr i64 %6455 to i32*
  %6458 = load i32, i32* %6457, align 4
  %6459 = sub i32 %6447, %6458
  %6460 = icmp ult i32 %6447, %6458
  %6461 = zext i1 %6460 to i8
  store i8 %6461, i8* %14, align 1
  %6462 = and i32 %6459, 255
  %6463 = tail call i32 @llvm.ctpop.i32(i32 %6462)
  %6464 = trunc i32 %6463 to i8
  %6465 = and i8 %6464, 1
  %6466 = xor i8 %6465, 1
  store i8 %6466, i8* %21, align 1
  %6467 = xor i32 %6458, %6447
  %6468 = xor i32 %6467, %6459
  %6469 = lshr i32 %6468, 4
  %6470 = trunc i32 %6469 to i8
  %6471 = and i8 %6470, 1
  store i8 %6471, i8* %27, align 1
  %6472 = icmp eq i32 %6459, 0
  %6473 = zext i1 %6472 to i8
  store i8 %6473, i8* %30, align 1
  %6474 = lshr i32 %6459, 31
  %6475 = trunc i32 %6474 to i8
  store i8 %6475, i8* %33, align 1
  %6476 = lshr i32 %6447, 31
  %6477 = lshr i32 %6458, 31
  %6478 = xor i32 %6477, %6476
  %6479 = xor i32 %6474, %6476
  %6480 = add nuw nsw i32 %6479, %6478
  %6481 = icmp eq i32 %6480, 2
  %6482 = zext i1 %6481 to i8
  store i8 %6482, i8* %39, align 1
  %6483 = icmp ne i8 %6475, 0
  %6484 = xor i1 %6483, %6481
  %.v195 = select i1 %6484, i64 23, i64 198
  %6485 = add i64 %6442, %.v195
  store i64 %6485, i64* %3, align 8
  br i1 %6484, label %block_4b16c0, label %block_.L_4b176f.loopexit

block_4b16c0:                                     ; preds = %block_.L_4b16a9
  %6486 = add i64 %6443, -40
  %6487 = add i64 %6485, 7
  store i64 %6487, i64* %3, align 8
  %6488 = inttoptr i64 %6486 to i32*
  store i32 0, i32* %6488, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_4b16c7

block_.L_4b16c7:                                  ; preds = %block_.L_4b1737, %block_4b16c0
  %6489 = phi i64 [ %6646, %block_.L_4b1737 ], [ %.pre131, %block_4b16c0 ]
  %6490 = load i64, i64* %RBP.i, align 8
  %6491 = add i64 %6490, -40
  %6492 = add i64 %6489, 4
  store i64 %6492, i64* %3, align 8
  %6493 = inttoptr i64 %6491 to i32*
  %6494 = load i32, i32* %6493, align 4
  %6495 = add i32 %6494, -3
  %6496 = icmp ult i32 %6494, 3
  %6497 = zext i1 %6496 to i8
  store i8 %6497, i8* %14, align 1
  %6498 = and i32 %6495, 255
  %6499 = tail call i32 @llvm.ctpop.i32(i32 %6498)
  %6500 = trunc i32 %6499 to i8
  %6501 = and i8 %6500, 1
  %6502 = xor i8 %6501, 1
  store i8 %6502, i8* %21, align 1
  %6503 = xor i32 %6495, %6494
  %6504 = lshr i32 %6503, 4
  %6505 = trunc i32 %6504 to i8
  %6506 = and i8 %6505, 1
  store i8 %6506, i8* %27, align 1
  %6507 = icmp eq i32 %6495, 0
  %6508 = zext i1 %6507 to i8
  store i8 %6508, i8* %30, align 1
  %6509 = lshr i32 %6495, 31
  %6510 = trunc i32 %6509 to i8
  store i8 %6510, i8* %33, align 1
  %6511 = lshr i32 %6494, 31
  %6512 = xor i32 %6509, %6511
  %6513 = add nuw nsw i32 %6512, %6511
  %6514 = icmp eq i32 %6513, 2
  %6515 = zext i1 %6514 to i8
  store i8 %6515, i8* %39, align 1
  %6516 = icmp ne i8 %6510, 0
  %6517 = xor i1 %6516, %6514
  %.v173 = select i1 %6517, i64 10, i64 131
  %6518 = add i64 %6489, %.v173
  store i64 %6518, i64* %3, align 8
  br i1 %6517, label %block_4b16d1, label %block_.L_4b174a.loopexit

block_4b16d1:                                     ; preds = %block_.L_4b16c7
  %6519 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %6519, i64* %RAX.i2337, align 8
  %6520 = add i64 %6490, -35396
  %6521 = add i64 %6518, 15
  store i64 %6521, i64* %3, align 8
  %6522 = inttoptr i64 %6520 to i32*
  %6523 = load i32, i32* %6522, align 4
  %6524 = sext i32 %6523 to i64
  store i64 %6524, i64* %RCX.i2273.pre-phi, align 8
  %6525 = shl nsw i64 %6524, 3
  %6526 = add i64 %6525, %6519
  %6527 = add i64 %6518, 19
  store i64 %6527, i64* %3, align 8
  %6528 = inttoptr i64 %6526 to i64*
  %6529 = load i64, i64* %6528, align 8
  store i64 %6529, i64* %RAX.i2337, align 8
  %6530 = add i64 %6490, -36
  %6531 = add i64 %6518, 23
  store i64 %6531, i64* %3, align 8
  %6532 = inttoptr i64 %6530 to i32*
  %6533 = load i32, i32* %6532, align 4
  %6534 = sext i32 %6533 to i64
  store i64 %6534, i64* %RCX.i2273.pre-phi, align 8
  %6535 = shl nsw i64 %6534, 3
  %6536 = add i64 %6535, %6529
  %6537 = add i64 %6518, 27
  store i64 %6537, i64* %3, align 8
  %6538 = inttoptr i64 %6536 to i64*
  %6539 = load i64, i64* %6538, align 8
  store i64 %6539, i64* %RAX.i2337, align 8
  %6540 = add i64 %6518, 31
  store i64 %6540, i64* %3, align 8
  %6541 = load i32, i32* %6493, align 4
  %6542 = sext i32 %6541 to i64
  store i64 %6542, i64* %RCX.i2273.pre-phi, align 8
  %6543 = shl nsw i64 %6542, 2
  %6544 = add i64 %6543, %6539
  %6545 = add i64 %6518, 34
  store i64 %6545, i64* %3, align 8
  %6546 = inttoptr i64 %6544 to i32*
  %6547 = load i32, i32* %6546, align 4
  %6548 = zext i32 %6547 to i64
  store i64 %6548, i64* %RDX.i2167, align 8
  %6549 = add i64 %6490, -796
  %6550 = add i64 %6518, 40
  store i64 %6550, i64* %3, align 8
  %6551 = inttoptr i64 %6549 to i32*
  %6552 = load i32, i32* %6551, align 4
  %6553 = sub i32 %6547, %6552
  %6554 = icmp ult i32 %6547, %6552
  %6555 = zext i1 %6554 to i8
  store i8 %6555, i8* %14, align 1
  %6556 = and i32 %6553, 255
  %6557 = tail call i32 @llvm.ctpop.i32(i32 %6556)
  %6558 = trunc i32 %6557 to i8
  %6559 = and i8 %6558, 1
  %6560 = xor i8 %6559, 1
  store i8 %6560, i8* %21, align 1
  %6561 = xor i32 %6552, %6547
  %6562 = xor i32 %6561, %6553
  %6563 = lshr i32 %6562, 4
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  store i8 %6565, i8* %27, align 1
  %6566 = icmp eq i32 %6553, 0
  %6567 = zext i1 %6566 to i8
  store i8 %6567, i8* %30, align 1
  %6568 = lshr i32 %6553, 31
  %6569 = trunc i32 %6568 to i8
  store i8 %6569, i8* %33, align 1
  %6570 = lshr i32 %6547, 31
  %6571 = lshr i32 %6552, 31
  %6572 = xor i32 %6571, %6570
  %6573 = xor i32 %6568, %6570
  %6574 = add nuw nsw i32 %6573, %6572
  %6575 = icmp eq i32 %6574, 2
  %6576 = zext i1 %6575 to i8
  store i8 %6576, i8* %39, align 1
  %.v172 = select i1 %6566, i64 46, i64 87
  %6577 = add i64 %6518, %.v172
  store i64 %6577, i64* %3, align 8
  br i1 %6566, label %block_4b16ff, label %block_.L_4b1728

block_4b16ff:                                     ; preds = %block_4b16d1
  %6578 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %6578, i64* %RAX.i2337, align 8
  %6579 = add i64 %6577, 15
  store i64 %6579, i64* %3, align 8
  %6580 = load i32, i32* %6522, align 4
  %6581 = sext i32 %6580 to i64
  store i64 %6581, i64* %RCX.i2273.pre-phi, align 8
  %6582 = shl nsw i64 %6581, 3
  %6583 = add i64 %6582, %6578
  %6584 = add i64 %6577, 19
  store i64 %6584, i64* %3, align 8
  %6585 = inttoptr i64 %6583 to i64*
  %6586 = load i64, i64* %6585, align 8
  store i64 %6586, i64* %RAX.i2337, align 8
  %6587 = add i64 %6577, 23
  store i64 %6587, i64* %3, align 8
  %6588 = load i32, i32* %6532, align 4
  %6589 = sext i32 %6588 to i64
  store i64 %6589, i64* %RCX.i2273.pre-phi, align 8
  %6590 = shl nsw i64 %6589, 3
  %6591 = add i64 %6590, %6586
  %6592 = add i64 %6577, 27
  store i64 %6592, i64* %3, align 8
  %6593 = inttoptr i64 %6591 to i64*
  %6594 = load i64, i64* %6593, align 8
  store i64 %6594, i64* %RAX.i2337, align 8
  %6595 = add i64 %6577, 31
  store i64 %6595, i64* %3, align 8
  %6596 = load i32, i32* %6493, align 4
  %6597 = sext i32 %6596 to i64
  store i64 %6597, i64* %RCX.i2273.pre-phi, align 8
  %6598 = shl nsw i64 %6597, 2
  %6599 = add i64 %6598, %6594
  %6600 = add i64 %6577, 35
  store i64 %6600, i64* %3, align 8
  %6601 = inttoptr i64 %6599 to i32*
  %6602 = load i32, i32* %6601, align 4
  store i8 0, i8* %14, align 1
  %6603 = and i32 %6602, 255
  %6604 = tail call i32 @llvm.ctpop.i32(i32 %6603)
  %6605 = trunc i32 %6604 to i8
  %6606 = and i8 %6605, 1
  %6607 = xor i8 %6606, 1
  store i8 %6607, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6608 = icmp eq i32 %6602, 0
  %6609 = zext i1 %6608 to i8
  store i8 %6609, i8* %30, align 1
  %6610 = lshr i32 %6602, 31
  %6611 = trunc i32 %6610 to i8
  store i8 %6611, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v171 = select i1 %6608, i64 56, i64 41
  %6612 = add i64 %6577, %.v171
  store i64 %6612, i64* %3, align 8
  br i1 %6608, label %block_.L_4b1737, label %block_.L_4b1728

block_.L_4b1728:                                  ; preds = %block_4b16d1, %block_4b16ff
  %6613 = phi i64 [ %6612, %block_4b16ff ], [ %6577, %block_4b16d1 ]
  %6614 = add i64 %6490, -35408
  %6615 = add i64 %6613, 10
  store i64 %6615, i64* %3, align 8
  %6616 = inttoptr i64 %6614 to i32*
  store i32 1, i32* %6616, align 4
  %6617 = load i64, i64* %3, align 8
  %6618 = add i64 %6617, 24
  store i64 %6618, i64* %3, align 8
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4b174a

block_.L_4b1737:                                  ; preds = %block_4b16ff
  %6619 = add i64 %6612, 8
  store i64 %6619, i64* %3, align 8
  %6620 = load i32, i32* %6493, align 4
  %6621 = add i32 %6620, 1
  %6622 = zext i32 %6621 to i64
  store i64 %6622, i64* %RAX.i2337, align 8
  %6623 = icmp eq i32 %6620, -1
  %6624 = icmp eq i32 %6621, 0
  %6625 = or i1 %6623, %6624
  %6626 = zext i1 %6625 to i8
  store i8 %6626, i8* %14, align 1
  %6627 = and i32 %6621, 255
  %6628 = tail call i32 @llvm.ctpop.i32(i32 %6627)
  %6629 = trunc i32 %6628 to i8
  %6630 = and i8 %6629, 1
  %6631 = xor i8 %6630, 1
  store i8 %6631, i8* %21, align 1
  %6632 = xor i32 %6621, %6620
  %6633 = lshr i32 %6632, 4
  %6634 = trunc i32 %6633 to i8
  %6635 = and i8 %6634, 1
  store i8 %6635, i8* %27, align 1
  %6636 = zext i1 %6624 to i8
  store i8 %6636, i8* %30, align 1
  %6637 = lshr i32 %6621, 31
  %6638 = trunc i32 %6637 to i8
  store i8 %6638, i8* %33, align 1
  %6639 = lshr i32 %6620, 31
  %6640 = xor i32 %6637, %6639
  %6641 = add nuw nsw i32 %6640, %6637
  %6642 = icmp eq i32 %6641, 2
  %6643 = zext i1 %6642 to i8
  store i8 %6643, i8* %39, align 1
  %6644 = add i64 %6612, 14
  store i64 %6644, i64* %3, align 8
  store i32 %6621, i32* %6493, align 4
  %6645 = load i64, i64* %3, align 8
  %6646 = add i64 %6645, -126
  store i64 %6646, i64* %3, align 8
  br label %block_.L_4b16c7

block_.L_4b174a.loopexit:                         ; preds = %block_.L_4b16c7
  br label %block_.L_4b174a

block_.L_4b174a:                                  ; preds = %block_.L_4b174a.loopexit, %block_.L_4b1728
  %6647 = phi i64 [ %6618, %block_.L_4b1728 ], [ %6518, %block_.L_4b174a.loopexit ]
  %6648 = phi i64 [ %.pre132, %block_.L_4b1728 ], [ %6490, %block_.L_4b174a.loopexit ]
  %6649 = add i64 %6648, -35408
  %6650 = add i64 %6647, 7
  store i64 %6650, i64* %3, align 8
  %6651 = inttoptr i64 %6649 to i32*
  %6652 = load i32, i32* %6651, align 4
  %6653 = add i32 %6652, -1
  %6654 = icmp eq i32 %6652, 0
  %6655 = zext i1 %6654 to i8
  store i8 %6655, i8* %14, align 1
  %6656 = and i32 %6653, 255
  %6657 = tail call i32 @llvm.ctpop.i32(i32 %6656)
  %6658 = trunc i32 %6657 to i8
  %6659 = and i8 %6658, 1
  %6660 = xor i8 %6659, 1
  store i8 %6660, i8* %21, align 1
  %6661 = xor i32 %6653, %6652
  %6662 = lshr i32 %6661, 4
  %6663 = trunc i32 %6662 to i8
  %6664 = and i8 %6663, 1
  store i8 %6664, i8* %27, align 1
  %6665 = icmp eq i32 %6653, 0
  %6666 = zext i1 %6665 to i8
  store i8 %6666, i8* %30, align 1
  %6667 = lshr i32 %6653, 31
  %6668 = trunc i32 %6667 to i8
  store i8 %6668, i8* %33, align 1
  %6669 = lshr i32 %6652, 31
  %6670 = xor i32 %6667, %6669
  %6671 = add nuw nsw i32 %6670, %6669
  %6672 = icmp eq i32 %6671, 2
  %6673 = zext i1 %6672 to i8
  store i8 %6673, i8* %39, align 1
  %.v170 = select i1 %6665, i64 13, i64 18
  %6674 = add i64 %6647, %.v170
  store i64 %6674, i64* %3, align 8
  br i1 %6665, label %block_4b1757, label %block_.L_4b175c

block_4b1757:                                     ; preds = %block_.L_4b174a
  %6675 = add i64 %6674, 24
  store i64 %6675, i64* %3, align 8
  br label %block_.L_4b176f

block_.L_4b175c:                                  ; preds = %block_.L_4b174a
  %6676 = add i64 %6648, -36
  %6677 = add i64 %6674, 8
  store i64 %6677, i64* %3, align 8
  %6678 = inttoptr i64 %6676 to i32*
  %6679 = load i32, i32* %6678, align 4
  %6680 = add i32 %6679, 1
  %6681 = zext i32 %6680 to i64
  store i64 %6681, i64* %RAX.i2337, align 8
  %6682 = icmp eq i32 %6679, -1
  %6683 = icmp eq i32 %6680, 0
  %6684 = or i1 %6682, %6683
  %6685 = zext i1 %6684 to i8
  store i8 %6685, i8* %14, align 1
  %6686 = and i32 %6680, 255
  %6687 = tail call i32 @llvm.ctpop.i32(i32 %6686)
  %6688 = trunc i32 %6687 to i8
  %6689 = and i8 %6688, 1
  %6690 = xor i8 %6689, 1
  store i8 %6690, i8* %21, align 1
  %6691 = xor i32 %6680, %6679
  %6692 = lshr i32 %6691, 4
  %6693 = trunc i32 %6692 to i8
  %6694 = and i8 %6693, 1
  store i8 %6694, i8* %27, align 1
  %6695 = zext i1 %6683 to i8
  store i8 %6695, i8* %30, align 1
  %6696 = lshr i32 %6680, 31
  %6697 = trunc i32 %6696 to i8
  store i8 %6697, i8* %33, align 1
  %6698 = lshr i32 %6679, 31
  %6699 = xor i32 %6696, %6698
  %6700 = add nuw nsw i32 %6699, %6696
  %6701 = icmp eq i32 %6700, 2
  %6702 = zext i1 %6701 to i8
  store i8 %6702, i8* %39, align 1
  %6703 = add i64 %6674, 14
  store i64 %6703, i64* %3, align 8
  store i32 %6680, i32* %6678, align 4
  %6704 = load i64, i64* %3, align 8
  %6705 = add i64 %6704, -193
  store i64 %6705, i64* %3, align 8
  br label %block_.L_4b16a9

block_.L_4b176f.loopexit:                         ; preds = %block_.L_4b16a9
  br label %block_.L_4b176f

block_.L_4b176f:                                  ; preds = %block_.L_4b176f.loopexit, %block_4b1757
  %6706 = phi i64 [ %6675, %block_4b1757 ], [ %6485, %block_.L_4b176f.loopexit ]
  %6707 = phi i64 [ %6648, %block_4b1757 ], [ %6443, %block_.L_4b176f.loopexit ]
  %6708 = add i64 %6707, -35408
  %6709 = add i64 %6706, 7
  store i64 %6709, i64* %3, align 8
  %6710 = inttoptr i64 %6708 to i32*
  %6711 = load i32, i32* %6710, align 4
  %6712 = add i32 %6711, -1
  %6713 = icmp eq i32 %6711, 0
  %6714 = zext i1 %6713 to i8
  store i8 %6714, i8* %14, align 1
  %6715 = and i32 %6712, 255
  %6716 = tail call i32 @llvm.ctpop.i32(i32 %6715)
  %6717 = trunc i32 %6716 to i8
  %6718 = and i8 %6717, 1
  %6719 = xor i8 %6718, 1
  store i8 %6719, i8* %21, align 1
  %6720 = xor i32 %6712, %6711
  %6721 = lshr i32 %6720, 4
  %6722 = trunc i32 %6721 to i8
  %6723 = and i8 %6722, 1
  store i8 %6723, i8* %27, align 1
  %6724 = icmp eq i32 %6712, 0
  %6725 = zext i1 %6724 to i8
  store i8 %6725, i8* %30, align 1
  %6726 = lshr i32 %6712, 31
  %6727 = trunc i32 %6726 to i8
  store i8 %6727, i8* %33, align 1
  %6728 = lshr i32 %6711, 31
  %6729 = xor i32 %6726, %6728
  %6730 = add nuw nsw i32 %6729, %6728
  %6731 = icmp eq i32 %6730, 2
  %6732 = zext i1 %6731 to i8
  store i8 %6732, i8* %39, align 1
  %.v169 = select i1 %6724, i64 13, i64 18
  %6733 = add i64 %6706, %.v169
  store i64 %6733, i64* %3, align 8
  br i1 %6724, label %block_4b177c, label %block_.L_4b1781

block_4b177c:                                     ; preds = %block_.L_4b176f
  %6734 = add i64 %6733, 30
  store i64 %6734, i64* %3, align 8
  br label %block_.L_4b179a

block_.L_4b1781:                                  ; preds = %block_.L_4b176f
  %6735 = add i64 %6707, -35396
  %6736 = add i64 %6733, 11
  store i64 %6736, i64* %3, align 8
  %6737 = inttoptr i64 %6735 to i32*
  %6738 = load i32, i32* %6737, align 4
  %6739 = add i32 %6738, 1
  %6740 = zext i32 %6739 to i64
  store i64 %6740, i64* %RAX.i2337, align 8
  %6741 = icmp eq i32 %6738, -1
  %6742 = icmp eq i32 %6739, 0
  %6743 = or i1 %6741, %6742
  %6744 = zext i1 %6743 to i8
  store i8 %6744, i8* %14, align 1
  %6745 = and i32 %6739, 255
  %6746 = tail call i32 @llvm.ctpop.i32(i32 %6745)
  %6747 = trunc i32 %6746 to i8
  %6748 = and i8 %6747, 1
  %6749 = xor i8 %6748, 1
  store i8 %6749, i8* %21, align 1
  %6750 = xor i32 %6739, %6738
  %6751 = lshr i32 %6750, 4
  %6752 = trunc i32 %6751 to i8
  %6753 = and i8 %6752, 1
  store i8 %6753, i8* %27, align 1
  %6754 = zext i1 %6742 to i8
  store i8 %6754, i8* %30, align 1
  %6755 = lshr i32 %6739, 31
  %6756 = trunc i32 %6755 to i8
  store i8 %6756, i8* %33, align 1
  %6757 = lshr i32 %6738, 31
  %6758 = xor i32 %6755, %6757
  %6759 = add nuw nsw i32 %6758, %6755
  %6760 = icmp eq i32 %6759, 2
  %6761 = zext i1 %6760 to i8
  store i8 %6761, i8* %39, align 1
  %6762 = add i64 %6733, 20
  store i64 %6762, i64* %3, align 8
  store i32 %6739, i32* %6737, align 4
  %6763 = load i64, i64* %3, align 8
  %6764 = add i64 %6763, -266
  store i64 %6764, i64* %3, align 8
  br label %block_.L_4b168b

block_.L_4b179a.loopexit:                         ; preds = %block_.L_4b168b
  br label %block_.L_4b179a

block_.L_4b179a:                                  ; preds = %block_.L_4b179a.loopexit, %block_4b177c
  %6765 = phi i64 [ %6734, %block_4b177c ], [ %6438, %block_.L_4b179a.loopexit ]
  %6766 = phi i64 [ %6707, %block_4b177c ], [ %6400, %block_.L_4b179a.loopexit ]
  %6767 = add i64 %6766, -35408
  %6768 = add i64 %6765, 6
  store i64 %6768, i64* %3, align 8
  %6769 = inttoptr i64 %6767 to i32*
  %6770 = load i32, i32* %6769, align 4
  %6771 = zext i32 %6770 to i64
  store i64 %6771, i64* %RAX.i2337, align 8
  %6772 = load i64, i64* %6, align 8
  %6773 = add i64 %6772, 35472
  store i64 %6773, i64* %6, align 8
  %6774 = icmp ugt i64 %6772, -35473
  %6775 = zext i1 %6774 to i8
  store i8 %6775, i8* %14, align 1
  %6776 = trunc i64 %6773 to i32
  %6777 = and i32 %6776, 255
  %6778 = tail call i32 @llvm.ctpop.i32(i32 %6777)
  %6779 = trunc i32 %6778 to i8
  %6780 = and i8 %6779, 1
  %6781 = xor i8 %6780, 1
  store i8 %6781, i8* %21, align 1
  %6782 = xor i64 %6772, 16
  %6783 = xor i64 %6782, %6773
  %6784 = lshr i64 %6783, 4
  %6785 = trunc i64 %6784 to i8
  %6786 = and i8 %6785, 1
  store i8 %6786, i8* %27, align 1
  %6787 = icmp eq i64 %6773, 0
  %6788 = zext i1 %6787 to i8
  store i8 %6788, i8* %30, align 1
  %6789 = lshr i64 %6773, 63
  %6790 = trunc i64 %6789 to i8
  store i8 %6790, i8* %33, align 1
  %6791 = lshr i64 %6772, 63
  %6792 = xor i64 %6789, %6791
  %6793 = add nuw nsw i64 %6792, %6789
  %6794 = icmp eq i64 %6793, 2
  %6795 = zext i1 %6794 to i8
  store i8 %6795, i8* %39, align 1
  %6796 = add i64 %6765, 14
  store i64 %6796, i64* %3, align 8
  %6797 = add i64 %6772, 35480
  %6798 = inttoptr i64 %6773 to i64*
  %6799 = load i64, i64* %6798, align 8
  store i64 %6799, i64* %RBP.i, align 8
  store i64 %6797, i64* %6, align 8
  %6800 = add i64 %6765, 15
  store i64 %6800, i64* %3, align 8
  %6801 = inttoptr i64 %6797 to i64*
  %6802 = load i64, i64* %6801, align 8
  store i64 %6802, i64* %3, align 8
  %6803 = add i64 %6772, 35488
  store i64 %6803, i64* %6, align 8
  ret %struct.Memory* %MEMORY.42
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_4b0644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35420
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
define %struct.Memory* @routine_movl__esi__MINUS0x8a60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35424
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0651(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -804
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8a50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x8a64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35428
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0x710790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x320__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -800
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -804
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
define %struct.Memory* @routine_jge_.L_4b0803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b07f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jge_.L_4b07dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__edx____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x0____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jmpq_.L_4b0725(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b07e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4b070a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b07f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b06ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0cda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0870(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b08e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4b08af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b08db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8a6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35436
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_4b092a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0991(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4b0961(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0985(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8a74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35444
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x8a70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35440
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
define %struct.Memory* @routine_jge_.L_4b0cb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8a54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35412
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
define %struct.Memory* @routine_jne_.L_4b0a72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 32, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x20____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 32, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_4b0ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35412
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
define %struct.Memory* @routine_movl_MINUS0x8a78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35448
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

define %struct.Memory* @routine_idivl_MINUS0x8a54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35412
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
define %struct.Memory* @routine_imull_MINUS0x8a58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35416
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
define %struct.Memory* @routine_jge_.L_4b0acf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0b1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4b0afa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jl_.L_4b0bc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4b0bf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 32, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_4b0ca6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b09a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0cb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0821(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0ccc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b080a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_4b0f6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0e22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0e0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0dfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4b0d3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x8a84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -35460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0d4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4b0d19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0e01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0d02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0e14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0ceb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0f6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0e4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0f56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0e2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1681(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0fd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x27546c__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x27546c__rip__type* @G_0x27546c__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_4b0f91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0fdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0f76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b12d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b12b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b1102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b109c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4b1138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4b1138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b117e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x748__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x748__rip__type* @G_0x748__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x31c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -796
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
define %struct.Memory* @routine_jmpq_.L_4b118a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jl_.L_4b11a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4b11b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b1013(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b12bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4b140d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b1408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b13ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b13dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b132c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b13e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b130e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b13f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b12f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b155a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b1555(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b153c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b1435(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1541(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1417(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b167c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b1669(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b1656(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4b15b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b15c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4b158f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b165b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1578(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b166e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b179a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b176f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b174a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x31c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -796
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
define %struct.Memory* @routine_jne_.L_4b1728(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4b1737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x8a50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b174a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b173c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b16c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8a50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4b175c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b176f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1761(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b16a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4b1781(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b179a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b1786(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b168b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8a50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -35408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
