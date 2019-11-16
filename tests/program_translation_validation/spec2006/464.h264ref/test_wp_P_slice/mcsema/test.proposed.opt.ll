; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x15ed__rip__type = type <{ [8 x i8] }>
%G_0x16f2__rip__type = type <{ [8 x i8] }>
%G_0x2763f8__rip__type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x710790_type = type <{ [4 x i8] }>
%G_0x7107a0_type = type <{ [4 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
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
@G_0x15ed__rip_ = global %G_0x15ed__rip__type zeroinitializer
@G_0x16f2__rip_ = global %G_0x16f2__rip__type zeroinitializer
@G_0x2763f8__rip_ = global %G_0x2763f8__rip__type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4740 = local_unnamed_addr global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = local_unnamed_addr global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = local_unnamed_addr global %G_0x70f6d0_type zeroinitializer
@G_0x710790 = local_unnamed_addr global %G_0x710790_type zeroinitializer
@G_0x7107a0 = local_unnamed_addr global %G_0x7107a0_type zeroinitializer
@G_0x7242a0 = local_unnamed_addr global %G_0x7242a0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: alwaysinline
define %struct.Memory* @test_wp_P_slice(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -840
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 832
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %41 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = add i64 %7, -12
  %44 = load i32, i32* %EDI.i, align 4
  %45 = add i64 %10, 16
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -24
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 5
  store i64 %50, i64* %3, align 8
  %51 = bitcast [32 x %union.VectorReg]* %39 to double*
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %53 = load i64, i64* %52, align 1
  %54 = inttoptr i64 %48 to i64*
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1012 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %57, i64* %RAX.i1012, align 8
  %58 = add i64 %57, 72400
  %59 = add i64 %56, 15
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  store i8 0, i8* %14, align 1
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %67 = icmp eq i32 %61, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %29, align 1
  %69 = lshr i32 %61, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v87 = select i1 %67, i64 126, i64 21
  %71 = add i64 %56, %.v87
  store i64 %71, i64* %3, align 8
  br i1 %67, label %entry.block_.L_4afe24_crit_edge, label %block_4afdbb

entry.block_.L_4afe24_crit_edge:                  ; preds = %entry
  %.pre77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre78 = getelementptr inbounds %union.anon, %union.anon* %.pre77, i64 0, i32 0
  br label %block_.L_4afe24

block_4afdbb:                                     ; preds = %entry
  store i64 %57, i64* %RAX.i1012, align 8
  %72 = add i64 %57, 14168
  %73 = add i64 %71, 15
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RAX.i1012, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1003 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  store i64 %57, i64* %RCX.i1003, align 8
  %77 = add i64 %57, 12
  %78 = add i64 %71, 27
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, 632
  store i64 %82, i64* %RCX.i1003, align 8
  %83 = lshr i64 %82, 63
  %84 = add i64 %82, %75
  store i64 %84, i64* %RAX.i1012, align 8
  %85 = icmp ult i64 %84, %75
  %86 = icmp ult i64 %84, %82
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %14, align 1
  %89 = trunc i64 %84 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %21, align 1
  %95 = xor i64 %82, %75
  %96 = xor i64 %95, %84
  %97 = lshr i64 %96, 4
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %26, align 1
  %100 = icmp eq i64 %84, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %29, align 1
  %102 = lshr i64 %84, 63
  %103 = trunc i64 %102 to i8
  store i8 %103, i8* %32, align 1
  %104 = lshr i64 %75, 63
  %105 = xor i64 %102, %104
  %106 = xor i64 %102, %83
  %107 = add nuw nsw i64 %105, %106
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %38, align 1
  %110 = add i64 %84, 532
  %111 = add i64 %71, 44
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  store i8 0, i8* %14, align 1
  %114 = and i32 %113, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %119 = icmp eq i32 %113, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %29, align 1
  %121 = lshr i32 %113, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %119, i64 105, i64 50
  %123 = add i64 %71, %.v88
  store i64 %123, i64* %3, align 8
  br i1 %119, label %block_.L_4afe24, label %block_4afded

block_4afded:                                     ; preds = %block_4afdbb
  store i64 2, i64* %RAX.i1012, align 8
  store i64 4, i64* %RCX.i1003, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i987 = getelementptr inbounds %union.anon, %union.anon* %124, i64 0, i32 0
  %125 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %125, i64* %RDX.i987, align 8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i985 = getelementptr inbounds %union.anon, %union.anon* %126, i64 0, i32 0
  %127 = add i64 %125, 12
  %128 = add i64 %123, 21
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RSI.i985, align 8
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -940
  %134 = add i64 %123, 27
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  store i32 2, i32* %135, align 4
  %ESI.i978 = bitcast %union.anon* %126 to i32*
  %136 = load i32, i32* %ESI.i978, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %3, align 8
  store i64 %137, i64* %RAX.i1012, align 8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %140 = sext i32 %136 to i64
  %141 = lshr i64 %140, 32
  store i64 %141, i64* %139, align 8
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -940
  %144 = add i64 %138, 9
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RSI.i985, align 8
  %148 = add i64 %138, 11
  store i64 %148, i64* %3, align 8
  %149 = sext i32 %146 to i64
  %150 = shl nuw i64 %141, 32
  %151 = or i64 %150, %137
  %152 = sdiv i64 %151, %149
  %153 = shl i64 %152, 32
  %154 = ashr exact i64 %153, 32
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %159, label %156

; <label>:156:                                    ; preds = %block_4afded
  %157 = bitcast %union.anon* %124 to i32*
  %158 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %148, %struct.Memory* %2)
  %.pre = load i32, i32* %157, align 4
  %.pre52 = load i64, i64* %3, align 8
  %.pre53 = load i64, i64* %RSI.i985, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:159:                                    ; preds = %block_4afded
  %160 = srem i64 %151, %149
  %161 = and i64 %152, 4294967295
  store i64 %161, i64* %RAX.i1012, align 8
  %162 = and i64 %160, 4294967295
  store i64 %162, i64* %RDX.i987, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %163 = trunc i64 %160 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %159, %156
  %164 = phi i64 [ %.pre54, %156 ], [ %142, %159 ]
  %165 = phi i64 [ %.pre53, %156 ], [ %147, %159 ]
  %166 = phi i64 [ %.pre52, %156 ], [ %148, %159 ]
  %167 = phi i32 [ %.pre, %156 ], [ %163, %159 ]
  %168 = phi %struct.Memory* [ %158, %156 ], [ %2, %159 ]
  store i8 0, i8* %14, align 1
  %169 = and i32 %167, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %174 = icmp eq i32 %167, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %29, align 1
  %176 = lshr i32 %167, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %ECX.i965 = bitcast %union.anon* %76 to i32*
  %178 = load i32, i32* %ECX.i965, align 4
  %179 = zext i32 %178 to i64
  %180 = select i1 %174, i64 %165, i64 %179
  %181 = and i64 %180, 4294967295
  store i64 %181, i64* %RSI.i985, align 8
  %182 = add i64 %164, -944
  %183 = trunc i64 %180 to i32
  %184 = add i64 %166, 12
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i32*
  store i32 %183, i32* %185, align 4
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 18
  br label %block_.L_4afe31

block_.L_4afe24:                                  ; preds = %entry.block_.L_4afe24_crit_edge, %block_4afdbb
  %.pre75.pre-phi = phi i64* [ %.pre78, %entry.block_.L_4afe24_crit_edge ], [ %RCX.i1003, %block_4afdbb ]
  %.pre74.pre-phi = phi %union.anon* [ %.pre77, %entry.block_.L_4afe24_crit_edge ], [ %76, %block_4afdbb ]
  %188 = phi i64 [ %71, %entry.block_.L_4afe24_crit_edge ], [ %123, %block_4afdbb ]
  store i64 0, i64* %RAX.i1012, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -944
  %191 = add i64 %188, 8
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  store i32 0, i32* %192, align 4
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 5
  store i64 %194, i64* %3, align 8
  %.pre76 = bitcast %union.anon* %.pre74.pre-phi to i32*
  br label %block_.L_4afe31

block_.L_4afe31:                                  ; preds = %block_.L_4afe24, %routine_idivl__esi.exit
  %ECX.i936.pre-phi = phi i32* [ %.pre76, %block_.L_4afe24 ], [ %ECX.i965, %routine_idivl__esi.exit ]
  %RCX.i950.pre-phi = phi i64* [ %.pre75.pre-phi, %block_.L_4afe24 ], [ %RCX.i1003, %routine_idivl__esi.exit ]
  %storemerge = phi i64 [ %194, %block_.L_4afe24 ], [ %187, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_4afe24 ], [ %168, %routine_idivl__esi.exit ]
  %EAX.i947.pre-phi = bitcast %union.anon* %55 to i32*
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -944
  %197 = add i64 %storemerge, 6
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  store i64 1, i64* %RCX.i950.pre-phi, align 8
  %200 = add i64 %195, -188
  %201 = add i64 %storemerge, 17
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  store i32 %199, i32* %202, align 4
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -936
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 10
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i32*
  store i32 0, i32* %207, align 4
  %208 = load i64, i64* %3, align 8
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  store i64 4, i64* %RAX.i1012, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -948
  %211 = load i32, i32* %ECX.i936.pre-phi, align 4
  %212 = add i64 %208, 38
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %EAX.i947.pre-phi, align 4
  %215 = zext i32 %214 to i64
  %216 = load i64, i64* %3, align 8
  store i64 %215, i64* %RCX.i950.pre-phi, align 8
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -948
  %219 = add i64 %216, 8
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX.i1012, align 8
  %223 = add i64 %216, 10
  store i64 %223, i64* %3, align 8
  %224 = trunc i32 %214 to i5
  switch i5 %224, label %230 [
    i5 0, label %routine_shll__cl___eax.exit928
    i5 1, label %225
  ]

; <label>:225:                                    ; preds = %block_.L_4afe31
  %226 = shl i32 %221, 1
  %227 = icmp slt i32 %221, 0
  %228 = icmp slt i32 %226, 0
  %229 = xor i1 %227, %228
  br label %239

; <label>:230:                                    ; preds = %block_.L_4afe31
  %231 = and i32 %214, 31
  %232 = zext i32 %231 to i64
  %233 = add nuw nsw i64 %232, 4294967295
  %234 = and i64 %233, 4294967295
  %235 = shl i64 %222, %234
  %236 = trunc i64 %235 to i32
  %237 = icmp slt i32 %236, 0
  %238 = shl i32 %236, 1
  br label %239

; <label>:239:                                    ; preds = %230, %225
  %240 = phi i1 [ %227, %225 ], [ %237, %230 ]
  %241 = phi i1 [ %229, %225 ], [ false, %230 ]
  %242 = phi i32 [ %226, %225 ], [ %238, %230 ]
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX.i1012, align 8
  %244 = zext i1 %240 to i8
  store i8 %244, i8* %14, align 1
  %245 = and i32 %242, 254
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %250 = icmp eq i32 %242, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %29, align 1
  %252 = lshr i32 %242, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %32, align 1
  %254 = zext i1 %241 to i8
  store i8 %254, i8* %38, align 1
  br label %routine_shll__cl___eax.exit928

routine_shll__cl___eax.exit928:                   ; preds = %239, %block_.L_4afe31
  %255 = phi i32 [ %242, %239 ], [ %221, %block_.L_4afe31 ]
  store i32 %255, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %256 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %257 = add i32 %256, -1
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX.i1012, align 8
  %259 = icmp eq i32 %256, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %14, align 1
  %261 = and i32 %257, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %21, align 1
  %266 = xor i32 %257, %256
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %26, align 1
  %270 = icmp eq i32 %257, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  %274 = lshr i32 %256, 31
  %275 = xor i32 %272, %274
  %276 = add nuw nsw i32 %275, %274
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %38, align 1
  store i64 %258, i64* %RCX.i950.pre-phi, align 8
  %279 = add i64 %216, 35
  store i64 %279, i64* %3, align 8
  %280 = load i32, i32* %220, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i1012, align 8
  %282 = add i64 %216, 37
  store i64 %282, i64* %3, align 8
  %283 = trunc i32 %257 to i5
  switch i5 %283, label %289 [
    i5 0, label %routine_shll__cl___eax.exit912
    i5 1, label %284
  ]

; <label>:284:                                    ; preds = %routine_shll__cl___eax.exit928
  %285 = shl i32 %280, 1
  %286 = icmp slt i32 %280, 0
  %287 = icmp slt i32 %285, 0
  %288 = xor i1 %286, %287
  br label %298

; <label>:289:                                    ; preds = %routine_shll__cl___eax.exit928
  %290 = and i32 %257, 31
  %291 = zext i32 %290 to i64
  %292 = add nuw nsw i64 %291, 4294967295
  %293 = and i64 %292, 4294967295
  %294 = shl i64 %281, %293
  %295 = trunc i64 %294 to i32
  %296 = icmp slt i32 %295, 0
  %297 = shl i32 %295, 1
  br label %298

; <label>:298:                                    ; preds = %289, %284
  %299 = phi i1 [ %286, %284 ], [ %296, %289 ]
  %300 = phi i1 [ %288, %284 ], [ false, %289 ]
  %301 = phi i32 [ %285, %284 ], [ %297, %289 ]
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i1012, align 8
  %303 = zext i1 %299 to i8
  store i8 %303, i8* %14, align 1
  %304 = and i32 %301, 254
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %309 = icmp eq i32 %301, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %29, align 1
  %311 = lshr i32 %301, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %32, align 1
  %313 = zext i1 %300 to i8
  store i8 %313, i8* %38, align 1
  br label %routine_shll__cl___eax.exit912

routine_shll__cl___eax.exit912:                   ; preds = %298, %routine_shll__cl___eax.exit928
  %314 = phi i32 [ %301, %298 ], [ %280, %routine_shll__cl___eax.exit928 ]
  store i32 %314, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %315 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RCX.i950.pre-phi, align 8
  %317 = add i64 %216, 57
  store i64 %317, i64* %3, align 8
  %318 = load i32, i32* %220, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX.i1012, align 8
  %320 = add i64 %216, 59
  store i64 %320, i64* %3, align 8
  %321 = trunc i32 %315 to i5
  switch i5 %321, label %327 [
    i5 0, label %routine_shll__cl___eax.exit901
    i5 1, label %322
  ]

; <label>:322:                                    ; preds = %routine_shll__cl___eax.exit912
  %323 = shl i32 %318, 1
  %324 = icmp slt i32 %318, 0
  %325 = icmp slt i32 %323, 0
  %326 = xor i1 %324, %325
  br label %336

; <label>:327:                                    ; preds = %routine_shll__cl___eax.exit912
  %328 = and i32 %315, 31
  %329 = zext i32 %328 to i64
  %330 = add nuw nsw i64 %329, 4294967295
  %331 = and i64 %330, 4294967295
  %332 = shl i64 %319, %331
  %333 = trunc i64 %332 to i32
  %334 = icmp slt i32 %333, 0
  %335 = shl i32 %333, 1
  br label %336

; <label>:336:                                    ; preds = %327, %322
  %337 = phi i1 [ %324, %322 ], [ %334, %327 ]
  %338 = phi i1 [ %326, %322 ], [ false, %327 ]
  %339 = phi i32 [ %323, %322 ], [ %335, %327 ]
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX.i1012, align 8
  %341 = zext i1 %337 to i8
  store i8 %341, i8* %14, align 1
  %342 = and i32 %339, 254
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %347 = icmp eq i32 %339, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %29, align 1
  %349 = lshr i32 %339, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %32, align 1
  %351 = zext i1 %338 to i8
  store i8 %351, i8* %38, align 1
  br label %routine_shll__cl___eax.exit901

routine_shll__cl___eax.exit901:                   ; preds = %336, %routine_shll__cl___eax.exit912
  %352 = phi i32 [ %339, %336 ], [ %318, %routine_shll__cl___eax.exit912 ]
  %353 = add i64 %217, -180
  %354 = add i64 %216, 65
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 %352, i32* %355, align 4
  %356 = load i64, i64* %3, align 8
  %357 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RCX.i950.pre-phi, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -948
  %361 = add i64 %356, 13
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i1012, align 8
  %365 = add i64 %356, 15
  store i64 %365, i64* %3, align 8
  %366 = trunc i32 %357 to i5
  switch i5 %366, label %372 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %367
  ]

; <label>:367:                                    ; preds = %routine_shll__cl___eax.exit901
  %368 = shl i32 %363, 1
  %369 = icmp slt i32 %363, 0
  %370 = icmp slt i32 %368, 0
  %371 = xor i1 %369, %370
  br label %381

; <label>:372:                                    ; preds = %routine_shll__cl___eax.exit901
  %373 = and i32 %357, 31
  %374 = zext i32 %373 to i64
  %375 = add nuw nsw i64 %374, 4294967295
  %376 = and i64 %375, 4294967295
  %377 = shl i64 %364, %376
  %378 = trunc i64 %377 to i32
  %379 = icmp slt i32 %378, 0
  %380 = shl i32 %378, 1
  br label %381

; <label>:381:                                    ; preds = %372, %367
  %382 = phi i1 [ %369, %367 ], [ %379, %372 ]
  %383 = phi i1 [ %371, %367 ], [ false, %372 ]
  %384 = phi i32 [ %368, %367 ], [ %380, %372 ]
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX.i1012, align 8
  %386 = zext i1 %382 to i8
  store i8 %386, i8* %14, align 1
  %387 = and i32 %384, 254
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %392 = icmp eq i32 %384, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %29, align 1
  %394 = lshr i32 %384, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %32, align 1
  %396 = zext i1 %383 to i8
  store i8 %396, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %381, %routine_shll__cl___eax.exit901
  %397 = phi i32 [ %384, %381 ], [ %363, %routine_shll__cl___eax.exit901 ]
  %398 = add i64 %359, -184
  %399 = add i64 %356, 21
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  store i32 %397, i32* %400, align 4
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -8
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 7
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %402 to i32*
  store i32 0, i32* %405, align 4
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i846 = getelementptr inbounds %union.anon, %union.anon* %406, i64 0, i32 0
  %RSI.i843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %EDX.i823 = bitcast %union.anon* %406 to i32*
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4afecf

block_.L_4afecf:                                  ; preds = %block_.L_4affd0, %routine_shll__cl___eax.exit
  %407 = phi i64 [ %846, %block_.L_4affd0 ], [ %.pre55, %routine_shll__cl___eax.exit ]
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -8
  %410 = add i64 %407, 3
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i1012, align 8
  %414 = add i64 %408, -188
  %415 = add i64 %407, 9
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, 2
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RCX.i950.pre-phi, align 8
  %420 = lshr i32 %418, 31
  %421 = sub i32 %412, %418
  %422 = icmp ult i32 %412, %418
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = and i32 %421, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  %429 = xor i32 %418, %412
  %430 = xor i32 %429, %421
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %26, align 1
  %434 = icmp eq i32 %421, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %29, align 1
  %436 = lshr i32 %421, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %32, align 1
  %438 = lshr i32 %412, 31
  %439 = xor i32 %420, %438
  %440 = xor i32 %436, %438
  %441 = add nuw nsw i32 %440, %439
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %38, align 1
  %444 = icmp ne i8 %437, 0
  %445 = xor i1 %444, %442
  %.v89 = select i1 %445, i64 20, i64 276
  %446 = add i64 %407, %.v89
  store i64 %446, i64* %3, align 8
  br i1 %445, label %block_4afee3, label %block_.L_4affe3

block_4afee3:                                     ; preds = %block_.L_4afecf
  %447 = add i64 %408, -12
  %448 = add i64 %446, 7
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 0, i32* %449, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4afeea

block_.L_4afeea:                                  ; preds = %block_.L_4affbd, %block_4afee3
  %450 = phi i64 [ %818, %block_.L_4affbd ], [ %.pre72, %block_4afee3 ]
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -12
  %453 = add i64 %450, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX.i1012, align 8
  %457 = add i64 %451, -8
  %458 = add i64 %450, 7
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  store i64 %461, i64* %RCX.i950.pre-phi, align 8
  %462 = shl nsw i64 %461, 2
  %463 = add nsw i64 %462, 7489456
  %464 = add i64 %450, 14
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = sub i32 %455, %466
  %468 = icmp ult i32 %455, %466
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = and i32 %467, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i32 %466, %455
  %476 = xor i32 %475, %467
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %26, align 1
  %480 = icmp eq i32 %467, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %29, align 1
  %482 = lshr i32 %467, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %32, align 1
  %484 = lshr i32 %455, 31
  %485 = lshr i32 %466, 31
  %486 = xor i32 %485, %484
  %487 = xor i32 %482, %484
  %488 = add nuw nsw i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %38, align 1
  %491 = icmp ne i8 %483, 0
  %492 = xor i1 %491, %489
  %.v85 = select i1 %492, i64 20, i64 230
  %493 = add i64 %450, %.v85
  store i64 %493, i64* %3, align 8
  br i1 %492, label %block_4afefe, label %block_.L_4affd0

block_4afefe:                                     ; preds = %block_.L_4afeea
  %494 = add i64 %451, -16
  %495 = add i64 %493, 7
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  store i32 0, i32* %496, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4aff05

block_.L_4aff05:                                  ; preds = %block_4aff0f, %block_4afefe
  %497 = phi i64 [ %788, %block_4aff0f ], [ %.pre73, %block_4afefe ]
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -16
  %500 = add i64 %497, 4
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, -3
  %504 = icmp ult i32 %502, 3
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %14, align 1
  %506 = and i32 %503, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %21, align 1
  %511 = xor i32 %503, %502
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %26, align 1
  %515 = icmp eq i32 %503, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %29, align 1
  %517 = lshr i32 %503, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %32, align 1
  %519 = lshr i32 %502, 31
  %520 = xor i32 %517, %519
  %521 = add nuw nsw i32 %520, %519
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %38, align 1
  %524 = icmp ne i8 %518, 0
  %525 = xor i1 %524, %522
  %.v86 = select i1 %525, i64 10, i64 184
  %526 = add i64 %497, %.v86
  store i64 %526, i64* %3, align 8
  br i1 %525, label %block_4aff0f, label %block_.L_4affbd

block_4aff0f:                                     ; preds = %block_.L_4aff05
  %527 = add i64 %498, -928
  store i64 %527, i64* %RAX.i1012, align 8
  %528 = add i64 %498, -560
  store i64 %528, i64* %RCX.i950.pre-phi, align 8
  %529 = add i64 %498, -180
  %530 = add i64 %526, 20
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RDX.i846, align 8
  %534 = add i64 %498, -8
  %535 = add i64 %526, 24
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  %539 = mul nsw i64 %538, 180
  store i64 %539, i64* %RSI.i843, align 8
  %540 = lshr i64 %539, 63
  %541 = add i64 %539, %528
  store i64 %541, i64* %RCX.i950.pre-phi, align 8
  %542 = icmp ult i64 %541, %528
  %543 = icmp ult i64 %541, %539
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %14, align 1
  %546 = trunc i64 %541 to i32
  %547 = and i32 %546, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %21, align 1
  %552 = xor i64 %539, %528
  %553 = xor i64 %552, %541
  %554 = lshr i64 %553, 4
  %555 = trunc i64 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %26, align 1
  %557 = icmp eq i64 %541, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %29, align 1
  %559 = lshr i64 %541, 63
  %560 = trunc i64 %559 to i8
  store i8 %560, i8* %32, align 1
  %561 = lshr i64 %528, 63
  %562 = xor i64 %559, %561
  %563 = xor i64 %559, %540
  %564 = add nuw nsw i64 %562, %563
  %565 = icmp eq i64 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %567 = add i64 %498, -12
  %568 = add i64 %526, 38
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = sext i32 %570 to i64
  %572 = mul nsw i64 %571, 12
  store i64 %572, i64* %RSI.i843, align 8
  %573 = lshr i64 %572, 63
  %574 = add i64 %572, %541
  store i64 %574, i64* %RCX.i950.pre-phi, align 8
  %575 = icmp ult i64 %574, %541
  %576 = icmp ult i64 %574, %572
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = trunc i64 %574 to i32
  %580 = and i32 %579, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %21, align 1
  %585 = xor i64 %572, %541
  %586 = xor i64 %585, %574
  %587 = lshr i64 %586, 4
  %588 = trunc i64 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %26, align 1
  %590 = icmp eq i64 %574, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %29, align 1
  %592 = lshr i64 %574, 63
  %593 = trunc i64 %592 to i8
  store i8 %593, i8* %32, align 1
  %594 = xor i64 %592, %559
  %595 = xor i64 %592, %573
  %596 = add nuw nsw i64 %594, %595
  %597 = icmp eq i64 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %38, align 1
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -16
  %601 = add i64 %526, 49
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RSI.i843, align 8
  %605 = shl nsw i64 %604, 2
  %606 = add i64 %605, %574
  %607 = load i32, i32* %EDX.i823, align 4
  %608 = add i64 %526, 52
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %606 to i32*
  store i32 %607, i32* %609, align 4
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -180
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, 6
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RDX.i846, align 8
  %617 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %617, i64* %RCX.i950.pre-phi, align 8
  %618 = add i64 %610, -8
  %619 = add i64 %612, 18
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  store i64 %622, i64* %RSI.i843, align 8
  %623 = shl nsw i64 %622, 3
  %624 = add i64 %623, %617
  %625 = add i64 %612, 22
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RCX.i950.pre-phi, align 8
  %628 = add i64 %610, -12
  %629 = add i64 %612, 26
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RSI.i843, align 8
  %633 = shl nsw i64 %632, 3
  %634 = add i64 %633, %627
  %635 = add i64 %612, 30
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %RCX.i950.pre-phi, align 8
  %638 = add i64 %610, -16
  %639 = add i64 %612, 34
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RSI.i843, align 8
  %643 = shl nsw i64 %642, 2
  %644 = add i64 %643, %637
  %645 = add i64 %612, 37
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  store i32 %615, i32* %646, align 4
  %647 = load i64, i64* %3, align 8
  %648 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %648, i64* %RCX.i950.pre-phi, align 8
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -8
  %651 = add i64 %647, 12
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RSI.i843, align 8
  %655 = shl nsw i64 %654, 3
  %656 = add i64 %655, %648
  %657 = add i64 %647, 16
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i64*
  %659 = load i64, i64* %658, align 8
  store i64 %659, i64* %RCX.i950.pre-phi, align 8
  %660 = add i64 %649, -12
  %661 = add i64 %647, 20
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = sext i32 %663 to i64
  store i64 %664, i64* %RSI.i843, align 8
  %665 = shl nsw i64 %664, 3
  %666 = add i64 %665, %659
  %667 = add i64 %647, 24
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RCX.i950.pre-phi, align 8
  %670 = add i64 %649, -16
  %671 = add i64 %647, 28
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = sext i32 %673 to i64
  store i64 %674, i64* %RSI.i843, align 8
  %675 = shl nsw i64 %674, 2
  %676 = add i64 %675, %669
  %677 = add i64 %647, 35
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  store i32 0, i32* %678, align 4
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -8
  %681 = load i64, i64* %3, align 8
  %682 = add i64 %681, 4
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %680 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  %686 = mul nsw i64 %685, 180
  store i64 %686, i64* %RCX.i950.pre-phi, align 8
  %687 = lshr i64 %686, 63
  %688 = load i64, i64* %RAX.i1012, align 8
  %689 = add i64 %686, %688
  store i64 %689, i64* %RAX.i1012, align 8
  %690 = icmp ult i64 %689, %688
  %691 = icmp ult i64 %689, %686
  %692 = or i1 %690, %691
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %14, align 1
  %694 = trunc i64 %689 to i32
  %695 = and i32 %694, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  %700 = xor i64 %686, %688
  %701 = xor i64 %700, %689
  %702 = lshr i64 %701, 4
  %703 = trunc i64 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %26, align 1
  %705 = icmp eq i64 %689, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %29, align 1
  %707 = lshr i64 %689, 63
  %708 = trunc i64 %707 to i8
  store i8 %708, i8* %32, align 1
  %709 = lshr i64 %688, 63
  %710 = xor i64 %707, %709
  %711 = xor i64 %707, %687
  %712 = add nuw nsw i64 %710, %711
  %713 = icmp eq i64 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %38, align 1
  %715 = add i64 %679, -12
  %716 = add i64 %681, 18
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  %720 = mul nsw i64 %719, 12
  store i64 %720, i64* %RCX.i950.pre-phi, align 8
  %721 = lshr i64 %720, 63
  %722 = add i64 %720, %689
  store i64 %722, i64* %RAX.i1012, align 8
  %723 = icmp ult i64 %722, %689
  %724 = icmp ult i64 %722, %720
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %14, align 1
  %727 = trunc i64 %722 to i32
  %728 = and i32 %727, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i64 %720, %689
  %734 = xor i64 %733, %722
  %735 = lshr i64 %734, 4
  %736 = trunc i64 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %26, align 1
  %738 = icmp eq i64 %722, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %29, align 1
  %740 = lshr i64 %722, 63
  %741 = trunc i64 %740 to i8
  store i8 %741, i8* %32, align 1
  %742 = xor i64 %740, %707
  %743 = xor i64 %740, %721
  %744 = add nuw nsw i64 %742, %743
  %745 = icmp eq i64 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %38, align 1
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -16
  %749 = add i64 %681, 29
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RCX.i950.pre-phi, align 8
  %753 = shl nsw i64 %752, 2
  %754 = add i64 %753, %722
  %755 = add i64 %681, 36
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  store i32 0, i32* %756, align 4
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -16
  %759 = load i64, i64* %3, align 8
  %760 = add i64 %759, 3
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, 1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i1012, align 8
  %765 = icmp eq i32 %762, -1
  %766 = icmp eq i32 %763, 0
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %763, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i32 %763, %762
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %26, align 1
  %778 = zext i1 %766 to i8
  store i8 %778, i8* %29, align 1
  %779 = lshr i32 %763, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %32, align 1
  %781 = lshr i32 %762, 31
  %782 = xor i32 %779, %781
  %783 = add nuw nsw i32 %782, %779
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %38, align 1
  %786 = add i64 %759, 9
  store i64 %786, i64* %3, align 8
  store i32 %763, i32* %761, align 4
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, -179
  store i64 %788, i64* %3, align 8
  br label %block_.L_4aff05

block_.L_4affbd:                                  ; preds = %block_.L_4aff05
  %789 = add i64 %498, -12
  %790 = add i64 %526, 8
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = add i32 %792, 1
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i1012, align 8
  %795 = icmp eq i32 %792, -1
  %796 = icmp eq i32 %793, 0
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = and i32 %793, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i32 %793, %792
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %26, align 1
  %808 = zext i1 %796 to i8
  store i8 %808, i8* %29, align 1
  %809 = lshr i32 %793, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %32, align 1
  %811 = lshr i32 %792, 31
  %812 = xor i32 %809, %811
  %813 = add nuw nsw i32 %812, %809
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %38, align 1
  %816 = add i64 %526, 14
  store i64 %816, i64* %3, align 8
  store i32 %793, i32* %791, align 4
  %817 = load i64, i64* %3, align 8
  %818 = add i64 %817, -225
  store i64 %818, i64* %3, align 8
  br label %block_.L_4afeea

block_.L_4affd0:                                  ; preds = %block_.L_4afeea
  %819 = add i64 %493, 8
  store i64 %819, i64* %3, align 8
  %820 = load i32, i32* %459, align 4
  %821 = add i32 %820, 1
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i1012, align 8
  %823 = icmp eq i32 %820, -1
  %824 = icmp eq i32 %821, 0
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i32 %821, %820
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %26, align 1
  %836 = zext i1 %824 to i8
  store i8 %836, i8* %29, align 1
  %837 = lshr i32 %821, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %32, align 1
  %839 = lshr i32 %820, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %837
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %38, align 1
  %844 = add i64 %493, 14
  store i64 %844, i64* %3, align 8
  store i32 %821, i32* %459, align 4
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, -271
  store i64 %846, i64* %3, align 8
  br label %block_.L_4afecf

block_.L_4affe3:                                  ; preds = %block_.L_4afecf
  %847 = add i64 %446, 7
  store i64 %847, i64* %3, align 8
  store i32 0, i32* %411, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_4affea

block_.L_4affea:                                  ; preds = %block_.L_4b004c, %block_.L_4affe3
  %848 = phi i64 [ %1021, %block_.L_4b004c ], [ %.pre56, %block_.L_4affe3 ]
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -8
  %851 = add i64 %848, 3
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i1012, align 8
  %855 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %855, i64* %RCX.i950.pre-phi, align 8
  %856 = add i64 %855, 60
  %857 = add i64 %848, 14
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sub i32 %853, %859
  %861 = icmp ult i32 %853, %859
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %14, align 1
  %863 = and i32 %860, 255
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863)
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %21, align 1
  %868 = xor i32 %859, %853
  %869 = xor i32 %868, %860
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  store i8 %872, i8* %26, align 1
  %873 = icmp eq i32 %860, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %29, align 1
  %875 = lshr i32 %860, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %32, align 1
  %877 = lshr i32 %853, 31
  %878 = lshr i32 %859, 31
  %879 = xor i32 %878, %877
  %880 = xor i32 %875, %877
  %881 = add nuw nsw i32 %880, %879
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %38, align 1
  %884 = icmp ne i8 %876, 0
  %885 = xor i1 %884, %882
  %.v90 = select i1 %885, i64 20, i64 117
  %886 = add i64 %848, %.v90
  store i64 %886, i64* %3, align 8
  br i1 %885, label %block_4afffe, label %block_.L_4b005f

block_4afffe:                                     ; preds = %block_.L_4affea
  %887 = add i64 %849, -12
  %888 = add i64 %886, 7
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  store i32 0, i32* %889, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_4b0005

block_.L_4b0005:                                  ; preds = %block_4b0019, %block_4afffe
  %890 = phi i64 [ %991, %block_4b0019 ], [ %.pre71, %block_4afffe ]
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -12
  %893 = add i64 %890, 3
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i1012, align 8
  %897 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %897, i64* %RCX.i950.pre-phi, align 8
  %898 = add i64 %897, 52
  %899 = add i64 %890, 14
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = sub i32 %895, %901
  %903 = icmp ult i32 %895, %901
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %14, align 1
  %905 = and i32 %902, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  %910 = xor i32 %901, %895
  %911 = xor i32 %910, %902
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %26, align 1
  %915 = icmp eq i32 %902, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %29, align 1
  %917 = lshr i32 %902, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %32, align 1
  %919 = lshr i32 %895, 31
  %920 = lshr i32 %901, 31
  %921 = xor i32 %920, %919
  %922 = xor i32 %917, %919
  %923 = add nuw nsw i32 %922, %921
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %38, align 1
  %926 = icmp ne i8 %918, 0
  %927 = xor i1 %926, %924
  %.v84 = select i1 %927, i64 20, i64 71
  %928 = add i64 %890, %.v84
  store i64 %928, i64* %3, align 8
  br i1 %927, label %block_4b0019, label %block_.L_4b004c

block_4b0019:                                     ; preds = %block_.L_4b0005
  %929 = add i64 %928, ptrtoint (%G_0x2763f8__rip__type* @G_0x2763f8__rip_ to i64)
  %930 = add i64 %928, 7
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RAX.i1012, align 8
  %933 = add i64 %891, -8
  %934 = add i64 %928, 11
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = sext i32 %936 to i64
  store i64 %937, i64* %RCX.i950.pre-phi, align 8
  %938 = shl nsw i64 %937, 3
  %939 = add i64 %938, %932
  %940 = add i64 %928, 15
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RAX.i1012, align 8
  %943 = add i64 %928, 19
  store i64 %943, i64* %3, align 8
  %944 = load i32, i32* %894, align 4
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX.i950.pre-phi, align 8
  %946 = shl nsw i64 %945, 1
  %947 = add i64 %946, %942
  %948 = add i64 %928, 23
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i16*
  %950 = load i16, i16* %949, align 2
  %951 = zext i16 %950 to i64
  store i64 %951, i64* %RDX.i846, align 8
  %952 = uitofp i16 %950 to double
  store double %952, double* %51, align 1
  %953 = add i64 %891, -24
  %954 = add i64 %928, 32
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to double*
  %956 = load double, double* %955, align 8
  %957 = fadd double %952, %956
  store double %957, double* %51, align 1
  %958 = add i64 %928, 37
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %953 to double*
  store double %957, double* %959, align 8
  %960 = load i64, i64* %RBP.i, align 8
  %961 = add i64 %960, -12
  %962 = load i64, i64* %3, align 8
  %963 = add i64 %962, 3
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = add i32 %965, 1
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX.i1012, align 8
  %968 = icmp eq i32 %965, -1
  %969 = icmp eq i32 %966, 0
  %970 = or i1 %968, %969
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %14, align 1
  %972 = and i32 %966, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %21, align 1
  %977 = xor i32 %966, %965
  %978 = lshr i32 %977, 4
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  store i8 %980, i8* %26, align 1
  %981 = zext i1 %969 to i8
  store i8 %981, i8* %29, align 1
  %982 = lshr i32 %966, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %32, align 1
  %984 = lshr i32 %965, 31
  %985 = xor i32 %982, %984
  %986 = add nuw nsw i32 %985, %982
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %38, align 1
  %989 = add i64 %962, 9
  store i64 %989, i64* %3, align 8
  store i32 %966, i32* %964, align 4
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, -66
  store i64 %991, i64* %3, align 8
  br label %block_.L_4b0005

block_.L_4b004c:                                  ; preds = %block_.L_4b0005
  %992 = add i64 %891, -8
  %993 = add i64 %928, 8
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i32*
  %995 = load i32, i32* %994, align 4
  %996 = add i32 %995, 1
  %997 = zext i32 %996 to i64
  store i64 %997, i64* %RAX.i1012, align 8
  %998 = icmp eq i32 %995, -1
  %999 = icmp eq i32 %996, 0
  %1000 = or i1 %998, %999
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = and i32 %996, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i32 %996, %995
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %26, align 1
  %1011 = zext i1 %999 to i8
  store i8 %1011, i8* %29, align 1
  %1012 = lshr i32 %996, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %32, align 1
  %1014 = lshr i32 %995, 31
  %1015 = xor i32 %1012, %1014
  %1016 = add nuw nsw i32 %1015, %1012
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %38, align 1
  %1019 = add i64 %928, 14
  store i64 %1019, i64* %3, align 8
  store i32 %996, i32* %994, align 4
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, -112
  store i64 %1021, i64* %3, align 8
  br label %block_.L_4affea

block_.L_4b005f:                                  ; preds = %block_.L_4affea
  %1022 = add i64 %849, -932
  %1023 = add i64 %886, 10
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  store i32 0, i32* %1024, align 4
  %1025 = bitcast i64* %40 to double*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1027 = bitcast %union.VectorReg* %1026 to double*
  %1028 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1026, i64 0, i32 0, i32 0, i32 0, i64 0
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1030 = bitcast i64* %1029 to double*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1032 = bitcast %union.VectorReg* %1031 to double*
  %.pre57 = load i64, i64* %3, align 8
  %1033 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  %1034 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_4b0069

block_.L_4b0069:                                  ; preds = %block_.L_4b0455, %block_.L_4b005f
  %1035 = phi i64 [ %.pre57, %block_.L_4b005f ], [ %2603, %block_.L_4b0455 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4b005f ], [ %MEMORY.8, %block_.L_4b0455 ]
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -932
  %1038 = add i64 %1035, 6
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i1012, align 8
  %1042 = add i64 %1036, -188
  %1043 = add i64 %1035, 12
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = add i32 %1045, 2
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RCX.i950.pre-phi, align 8
  %1048 = lshr i32 %1046, 31
  %1049 = sub i32 %1040, %1046
  %1050 = icmp ult i32 %1040, %1046
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %14, align 1
  %1052 = and i32 %1049, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %21, align 1
  %1057 = xor i32 %1046, %1040
  %1058 = xor i32 %1057, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %26, align 1
  %1062 = icmp eq i32 %1049, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %29, align 1
  %1064 = lshr i32 %1049, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %32, align 1
  %1066 = lshr i32 %1040, 31
  %1067 = xor i32 %1048, %1066
  %1068 = xor i32 %1064, %1066
  %1069 = add nuw nsw i32 %1068, %1067
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %38, align 1
  %1072 = icmp ne i8 %1065, 0
  %1073 = xor i1 %1072, %1070
  %.v91 = select i1 %1073, i64 23, i64 1029
  %1074 = add i64 %1035, %.v91
  store i64 %1074, i64* %3, align 8
  br i1 %1073, label %block_4b0080, label %block_.L_4b046e

block_4b0080:                                     ; preds = %block_.L_4b0069
  %1075 = add i64 %1036, -16
  %1076 = add i64 %1074, 7
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  store i32 0, i32* %1077, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_4b0087

block_.L_4b0087:                                  ; preds = %block_.L_4b03f3, %block_4b0080
  %1078 = phi i64 [ %.pre62, %block_4b0080 ], [ %2575, %block_.L_4b03f3 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_4b0080 ], [ %MEMORY.16, %block_.L_4b03f3 ]
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -16
  %1081 = add i64 %1078, 3
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i1012, align 8
  %1085 = add i64 %1079, -932
  %1086 = add i64 %1078, 10
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RCX.i950.pre-phi, align 8
  %1090 = shl nsw i64 %1089, 2
  %1091 = add nsw i64 %1090, 7489456
  %1092 = add i64 %1078, 17
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = sub i32 %1083, %1094
  %1096 = icmp ult i32 %1083, %1094
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1095, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1094, %1083
  %1104 = xor i32 %1103, %1095
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %26, align 1
  %1108 = icmp eq i32 %1095, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %29, align 1
  %1110 = lshr i32 %1095, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %32, align 1
  %1112 = lshr i32 %1083, 31
  %1113 = lshr i32 %1094, 31
  %1114 = xor i32 %1113, %1112
  %1115 = xor i32 %1110, %1112
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %38, align 1
  %1119 = icmp ne i8 %1111, 0
  %1120 = xor i1 %1119, %1117
  %.v83 = select i1 %1120, i64 23, i64 974
  %1121 = add i64 %1078, %.v83
  store i64 %1121, i64* %3, align 8
  br i1 %1120, label %block_4b009e, label %block_.L_4b0455

block_4b009e:                                     ; preds = %block_.L_4b0087
  store <4 x i32> zeroinitializer, <4 x i32>* %1033, align 1
  %1122 = add i64 %1121, 7
  store i64 %1122, i64* %3, align 8
  %1123 = load i32, i32* %1082, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RAX.i1012, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1079, -160
  %1127 = add i64 %1126, %1125
  %1128 = add i64 %1121, 16
  store i64 %1128, i64* %3, align 8
  %1129 = load i64, i64* %52, align 1
  %1130 = inttoptr i64 %1127 to i64*
  store i64 %1129, i64* %1130, align 8
  %1131 = load i64, i64* %RBP.i, align 8
  %1132 = add i64 %1131, -932
  %1133 = load i64, i64* %3, align 8
  %1134 = add i64 %1133, 7
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i1012, align 8
  %1138 = shl nsw i64 %1137, 3
  %1139 = add nsw i64 %1138, 7482144
  %1140 = add i64 %1133, 15
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i64*
  %1142 = load i64, i64* %1141, align 8
  store i64 %1142, i64* %RAX.i1012, align 8
  %1143 = add i64 %1131, -16
  %1144 = add i64 %1133, 19
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = sext i32 %1146 to i64
  store i64 %1147, i64* %RCX.i950.pre-phi, align 8
  %1148 = shl nsw i64 %1147, 3
  %1149 = add i64 %1148, %1142
  %1150 = add i64 %1133, 23
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RAX.i1012, align 8
  %1153 = add i64 %1152, 6432
  %1154 = add i64 %1133, 30
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RAX.i1012, align 8
  %1157 = add i64 %1131, -168
  %1158 = add i64 %1133, 37
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i64*
  store i64 %1156, i64* %1159, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -932
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 7
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = sext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i1012, align 8
  %1167 = shl nsw i64 %1166, 3
  %1168 = add nsw i64 %1167, 7482144
  %1169 = add i64 %1162, 15
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RAX.i1012, align 8
  %1172 = add i64 %1160, -16
  %1173 = add i64 %1162, 19
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %RCX.i950.pre-phi, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1177, %1171
  %1179 = add i64 %1162, 23
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  %1181 = load i64, i64* %1180, align 8
  store i64 %1181, i64* %RAX.i1012, align 8
  %1182 = add i64 %1181, 6440
  %1183 = add i64 %1162, 30
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %RAX.i1012, align 8
  %1186 = add i64 %1160, -176
  %1187 = add i64 %1162, 37
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  store i64 %1185, i64* %1188, align 8
  %1189 = load i64, i64* %RBP.i, align 8
  %1190 = add i64 %1189, -8
  %1191 = load i64, i64* %3, align 8
  %1192 = add i64 %1191, 7
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1190 to i32*
  store i32 0, i32* %1193, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4b00ff

block_.L_4b00ff:                                  ; preds = %block_4b0121, %block_4b009e
  %1194 = phi i64 [ %1302, %block_4b0121 ], [ %.pre63, %block_4b009e ]
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -8
  %1197 = add i64 %1194, 3
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i1012, align 8
  %1201 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1201, i64* %RCX.i950.pre-phi, align 8
  %1202 = add i64 %1201, 60
  %1203 = add i64 %1194, 14
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RDX.i846, align 8
  store i64 %1201, i64* %RCX.i950.pre-phi, align 8
  %1207 = add i64 %1201, 52
  %1208 = add i64 %1194, 26
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1205 to i64
  %1212 = sext i32 %1210 to i64
  %1213 = mul nsw i64 %1212, %1211
  %1214 = and i64 %1213, 4294967295
  store i64 %1214, i64* %RDX.i846, align 8
  %1215 = trunc i64 %1213 to i32
  %1216 = sub i32 %1199, %1215
  %1217 = icmp ult i32 %1199, %1215
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %14, align 1
  %1219 = and i32 %1216, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %21, align 1
  %1224 = xor i32 %1215, %1199
  %1225 = xor i32 %1224, %1216
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %26, align 1
  %1229 = icmp eq i32 %1216, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1216, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  %1233 = lshr i32 %1199, 31
  %1234 = lshr i32 %1215, 31
  %1235 = xor i32 %1234, %1233
  %1236 = xor i32 %1231, %1233
  %1237 = add nuw nsw i32 %1236, %1235
  %1238 = icmp eq i32 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %38, align 1
  %1240 = icmp ne i8 %1232, 0
  %1241 = xor i1 %1240, %1238
  %.v94 = select i1 %1241, i64 34, i64 89
  %1242 = add i64 %1194, %.v94
  store i64 %1242, i64* %3, align 8
  br i1 %1241, label %block_4b0121, label %block_.L_4b0158

block_4b0121:                                     ; preds = %block_.L_4b00ff
  %1243 = add i64 %1195, -168
  %1244 = add i64 %1242, 7
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245, align 8
  store i64 %1246, i64* %RAX.i1012, align 8
  %1247 = add i64 %1242, 11
  store i64 %1247, i64* %3, align 8
  %1248 = load i32, i32* %1198, align 4
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RCX.i950.pre-phi, align 8
  %1250 = shl nsw i64 %1249, 1
  %1251 = add i64 %1250, %1246
  %1252 = add i64 %1242, 15
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i16*
  %1254 = load i16, i16* %1253, align 2
  %1255 = zext i16 %1254 to i64
  store i64 %1255, i64* %RDX.i846, align 8
  %1256 = uitofp i16 %1254 to double
  store double %1256, double* %51, align 1
  %1257 = add i64 %1195, -16
  %1258 = add i64 %1242, 23
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i1012, align 8
  %1262 = shl nsw i64 %1261, 3
  %1263 = add i64 %1195, -160
  %1264 = add i64 %1263, %1262
  %1265 = add i64 %1242, 32
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to double*
  %1267 = load double, double* %1266, align 8
  %1268 = fadd double %1256, %1267
  store double %1268, double* %51, align 1
  %1269 = add i64 %1242, 41
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1264 to double*
  store double %1268, double* %1270, align 8
  %1271 = load i64, i64* %RBP.i, align 8
  %1272 = add i64 %1271, -8
  %1273 = load i64, i64* %3, align 8
  %1274 = add i64 %1273, 3
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1272 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = add i32 %1276, 1
  %1278 = zext i32 %1277 to i64
  store i64 %1278, i64* %RAX.i1012, align 8
  %1279 = icmp eq i32 %1276, -1
  %1280 = icmp eq i32 %1277, 0
  %1281 = or i1 %1279, %1280
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %14, align 1
  %1283 = and i32 %1277, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %21, align 1
  %1288 = xor i32 %1277, %1276
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %26, align 1
  %1292 = zext i1 %1280 to i8
  store i8 %1292, i8* %29, align 1
  %1293 = lshr i32 %1277, 31
  %1294 = trunc i32 %1293 to i8
  store i8 %1294, i8* %32, align 1
  %1295 = lshr i32 %1276, 31
  %1296 = xor i32 %1293, %1295
  %1297 = add nuw nsw i32 %1296, %1293
  %1298 = icmp eq i32 %1297, 2
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %38, align 1
  %1300 = add i64 %1273, 9
  store i64 %1300, i64* %3, align 8
  store i32 %1277, i32* %1275, align 4
  %1301 = load i64, i64* %3, align 8
  %1302 = add i64 %1301, -84
  store i64 %1302, i64* %3, align 8
  br label %block_.L_4b00ff

block_.L_4b0158:                                  ; preds = %block_.L_4b00ff
  %1303 = add i64 %1195, -4
  %1304 = add i64 %1242, 4
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  store i8 0, i8* %14, align 1
  %1307 = and i32 %1306, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1312 = icmp eq i32 %1306, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i32 %1306, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %1312, i64 10, i64 308
  %1316 = add i64 %1242, %.v95
  store i64 %1316, i64* %3, align 8
  br i1 %1312, label %block_4b0162, label %block_.L_4b028c

block_4b0162:                                     ; preds = %block_.L_4b0158
  store <4 x i32> zeroinitializer, <4 x i32>* %1034, align 1
  %1317 = add i64 %1195, -16
  %1318 = add i64 %1316, 7
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = sext i32 %1320 to i64
  store i64 %1321, i64* %RAX.i1012, align 8
  %1322 = shl nsw i64 %1321, 3
  %1323 = add i64 %1195, -160
  %1324 = add i64 %1323, %1322
  %1325 = add i64 %1316, 16
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %1028, align 1
  store double 0.000000e+00, double* %1030, align 1
  %1328 = add i64 %1316, 20
  store i64 %1328, i64* %3, align 8
  %.cast = bitcast i64 %1327 to double
  %1329 = load double, double* %51, align 1
  %1330 = fcmp uno double %.cast, %1329
  br i1 %1330, label %1331, label %1341

; <label>:1331:                                   ; preds = %block_4b0162
  %1332 = fadd double %.cast, %1329
  %1333 = bitcast double %1332 to i64
  %1334 = and i64 %1333, 9221120237041090560
  %1335 = icmp eq i64 %1334, 9218868437227405312
  %1336 = and i64 %1333, 2251799813685247
  %1337 = icmp ne i64 %1336, 0
  %1338 = and i1 %1335, %1337
  br i1 %1338, label %1339, label %1347

; <label>:1339:                                   ; preds = %1331
  %1340 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1328, %struct.Memory* %MEMORY.8)
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1341:                                   ; preds = %block_4b0162
  %1342 = fcmp ogt double %.cast, %1329
  br i1 %1342, label %1347, label %1343

; <label>:1343:                                   ; preds = %1341
  %1344 = fcmp olt double %.cast, %1329
  br i1 %1344, label %1347, label %1345

; <label>:1345:                                   ; preds = %1343
  %1346 = fcmp oeq double %.cast, %1329
  br i1 %1346, label %1347, label %1351

; <label>:1347:                                   ; preds = %1345, %1343, %1341, %1331
  %1348 = phi i8 [ 0, %1341 ], [ 0, %1343 ], [ 1, %1345 ], [ 1, %1331 ]
  %1349 = phi i8 [ 0, %1341 ], [ 0, %1343 ], [ 0, %1345 ], [ 1, %1331 ]
  %1350 = phi i8 [ 0, %1341 ], [ 1, %1343 ], [ 0, %1345 ], [ 1, %1331 ]
  store i8 %1348, i8* %29, align 1
  store i8 %1349, i8* %21, align 1
  store i8 %1350, i8* %14, align 1
  br label %1351

; <label>:1351:                                   ; preds = %1347, %1345
  %1352 = phi i8 [ %1348, %1347 ], [ %1313, %1345 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1351, %1339
  %1353 = phi i8 [ %.pre65, %1339 ], [ %1352, %1351 ]
  %1354 = phi i64 [ %.pre64, %1339 ], [ %1328, %1351 ]
  %1355 = phi %struct.Memory* [ %1340, %1339 ], [ %MEMORY.8, %1351 ]
  %1356 = icmp eq i8 %1353, 0
  %.v98 = select i1 %1356, i64 17, i64 6
  %1357 = add i64 %1354, %.v98
  store i64 %1357, i64* %3, align 8
  br i1 %1356, label %block_.L_4b0187, label %block_4b017c

block_4b017c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1358 = load i8, i8* %21, align 1
  %1359 = icmp ne i8 %1358, 0
  %.v135 = select i1 %1359, i64 11, i64 6
  %1360 = add i64 %1357, %.v135
  store i64 %1360, i64* %3, align 8
  %cmpBr_4b017c = icmp eq i8 %1358, 1
  br i1 %cmpBr_4b017c, label %block_.L_4b0187, label %block_4b0182

block_4b0182:                                     ; preds = %block_4b017c
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -560
  store i64 %1362, i64* %RAX.i1012, align 8
  %1363 = add i64 %1361, -180
  %1364 = add i64 %1360, 102
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RCX.i950.pre-phi, align 8
  %1368 = add i64 %1361, -932
  %1369 = add i64 %1360, 109
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = sext i32 %1371 to i64
  %1373 = mul nsw i64 %1372, 180
  store i64 %1373, i64* %RDX.i846, align 8
  %1374 = lshr i64 %1373, 63
  %1375 = add i64 %1373, %1362
  store i64 %1375, i64* %RAX.i1012, align 8
  %1376 = icmp ult i64 %1375, %1362
  %1377 = icmp ult i64 %1375, %1373
  %1378 = or i1 %1376, %1377
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %14, align 1
  %1380 = trunc i64 %1375 to i32
  %1381 = and i32 %1380, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %21, align 1
  %1386 = xor i64 %1373, %1362
  %1387 = xor i64 %1386, %1375
  %1388 = lshr i64 %1387, 4
  %1389 = trunc i64 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %26, align 1
  %1391 = icmp eq i64 %1375, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %29, align 1
  %1393 = lshr i64 %1375, 63
  %1394 = trunc i64 %1393 to i8
  store i8 %1394, i8* %32, align 1
  %1395 = lshr i64 %1362, 63
  %1396 = xor i64 %1393, %1395
  %1397 = xor i64 %1393, %1374
  %1398 = add nuw nsw i64 %1396, %1397
  %1399 = icmp eq i64 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %38, align 1
  %1401 = add i64 %1361, -16
  %1402 = add i64 %1360, 123
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  %1406 = mul nsw i64 %1405, 12
  store i64 %1406, i64* %RDX.i846, align 8
  %1407 = lshr i64 %1406, 63
  %1408 = add i64 %1406, %1375
  store i64 %1408, i64* %RAX.i1012, align 8
  %1409 = icmp ult i64 %1408, %1375
  %1410 = icmp ult i64 %1408, %1406
  %1411 = or i1 %1409, %1410
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %14, align 1
  %1413 = trunc i64 %1408 to i32
  %1414 = and i32 %1413, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %21, align 1
  %1419 = xor i64 %1406, %1375
  %1420 = xor i64 %1419, %1408
  %1421 = lshr i64 %1420, 4
  %1422 = trunc i64 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %26, align 1
  %1424 = icmp eq i64 %1408, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %29, align 1
  %1426 = lshr i64 %1408, 63
  %1427 = trunc i64 %1426 to i8
  store i8 %1427, i8* %32, align 1
  %1428 = xor i64 %1426, %1393
  %1429 = xor i64 %1426, %1407
  %1430 = add nuw nsw i64 %1428, %1429
  %1431 = icmp eq i64 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %38, align 1
  %1433 = inttoptr i64 %1408 to i32*
  %1434 = load i32, i32* %ECX.i936.pre-phi, align 4
  %1435 = add i64 %1360, 132
  store i64 %1435, i64* %3, align 8
  store i32 %1434, i32* %1433, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_4b0206

block_.L_4b0187:                                  ; preds = %block_4b017c, %routine_ucomisd__xmm0___xmm1.exit
  %1436 = phi i64 [ %1360, %block_4b017c ], [ %1357, %routine_ucomisd__xmm0___xmm1.exit ]
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -560
  store i64 %1438, i64* %RAX.i1012, align 8
  %1439 = add i64 %1436, add (i64 ptrtoint (%G_0x16f2__rip__type* @G_0x16f2__rip_ to i64), i64 7)
  %1440 = add i64 %1436, 15
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i64*
  %1442 = load i64, i64* %1441, align 8
  store i64 %1442, i64* %52, align 1
  store double 0.000000e+00, double* %1025, align 1
  %1443 = add i64 %1437, -180
  %1444 = add i64 %1436, 23
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = sitofp i32 %1446 to double
  store double %1447, double* %1027, align 1
  %1448 = add i64 %1437, -24
  %1449 = add i64 %1436, 28
  store i64 %1449, i64* %3, align 8
  %1450 = load i64, i64* %1029, align 1
  %1451 = inttoptr i64 %1448 to double*
  %1452 = load double, double* %1451, align 8
  %1453 = fmul double %1447, %1452
  store double %1453, double* %1027, align 1
  %1454 = add i64 %1437, -16
  %1455 = add i64 %1436, 32
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i950.pre-phi, align 8
  %1459 = shl nsw i64 %1458, 3
  %1460 = add i64 %1437, -160
  %1461 = add i64 %1460, %1459
  %1462 = add i64 %1436, 41
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to double*
  %1464 = load double, double* %1463, align 8
  %1465 = fdiv double %1453, %1464
  %1466 = bitcast i64 %1442 to double
  %1467 = fadd double %1465, %1466
  store double %1467, double* %1027, align 1
  store i64 %1450, i64* %1029, align 1
  %1468 = tail call double @llvm.trunc.f64(double %1467)
  %1469 = tail call double @llvm.fabs.f64(double %1468)
  %1470 = fcmp ogt double %1469, 0x41DFFFFFFFC00000
  %1471 = fptosi double %1468 to i32
  %1472 = zext i32 %1471 to i64
  %1473 = select i1 %1470, i64 2147483648, i64 %1472
  store i64 %1473, i64* %RDX.i846, align 8
  %1474 = add i64 %1437, -932
  %1475 = add i64 %1436, 56
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = sext i32 %1477 to i64
  %1479 = mul nsw i64 %1478, 180
  store i64 %1479, i64* %RCX.i950.pre-phi, align 8
  %1480 = lshr i64 %1479, 63
  %1481 = add i64 %1479, %1438
  store i64 %1481, i64* %RAX.i1012, align 8
  %1482 = icmp ult i64 %1481, %1438
  %1483 = icmp ult i64 %1481, %1479
  %1484 = or i1 %1482, %1483
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %14, align 1
  %1486 = trunc i64 %1481 to i32
  %1487 = and i32 %1486, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %21, align 1
  %1492 = xor i64 %1479, %1438
  %1493 = xor i64 %1492, %1481
  %1494 = lshr i64 %1493, 4
  %1495 = trunc i64 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %26, align 1
  %1497 = icmp eq i64 %1481, 0
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %29, align 1
  %1499 = lshr i64 %1481, 63
  %1500 = trunc i64 %1499 to i8
  store i8 %1500, i8* %32, align 1
  %1501 = lshr i64 %1438, 63
  %1502 = xor i64 %1499, %1501
  %1503 = xor i64 %1499, %1480
  %1504 = add nuw nsw i64 %1502, %1503
  %1505 = icmp eq i64 %1504, 2
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %38, align 1
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -16
  %1509 = add i64 %1436, 70
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = sext i32 %1511 to i64
  %1513 = mul nsw i64 %1512, 12
  store i64 %1513, i64* %RCX.i950.pre-phi, align 8
  %1514 = lshr i64 %1513, 63
  %1515 = add i64 %1513, %1481
  store i64 %1515, i64* %RAX.i1012, align 8
  %1516 = icmp ult i64 %1515, %1481
  %1517 = icmp ult i64 %1515, %1513
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %14, align 1
  %1520 = trunc i64 %1515 to i32
  %1521 = and i32 %1520, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i64 %1513, %1481
  %1527 = xor i64 %1526, %1515
  %1528 = lshr i64 %1527, 4
  %1529 = trunc i64 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %26, align 1
  %1531 = icmp eq i64 %1515, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %29, align 1
  %1533 = lshr i64 %1515, 63
  %1534 = trunc i64 %1533 to i8
  store i8 %1534, i8* %32, align 1
  %1535 = xor i64 %1533, %1499
  %1536 = xor i64 %1533, %1514
  %1537 = add nuw nsw i64 %1535, %1536
  %1538 = icmp eq i64 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %38, align 1
  %1540 = inttoptr i64 %1515 to i32*
  %1541 = load i32, i32* %EDX.i823, align 4
  %1542 = add i64 %1436, 79
  store i64 %1542, i64* %3, align 8
  store i32 %1541, i32* %1540, align 4
  %1543 = load i64, i64* %3, align 8
  %1544 = add i64 %1543, 48
  store i64 %1544, i64* %3, align 8
  br label %block_.L_4b0206

block_.L_4b0206:                                  ; preds = %block_4b0182, %block_.L_4b0187
  %1545 = phi i64 [ %.pre66, %block_4b0182 ], [ %1544, %block_.L_4b0187 ]
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -560
  store i64 %1547, i64* %RAX.i1012, align 8
  %1548 = add i64 %1546, -932
  %1549 = add i64 %1545, 14
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = sext i32 %1551 to i64
  %1553 = mul nsw i64 %1552, 180
  store i64 %1553, i64* %RCX.i950.pre-phi, align 8
  %1554 = lshr i64 %1553, 63
  %1555 = add i64 %1553, %1547
  store i64 %1555, i64* %RAX.i1012, align 8
  %1556 = icmp ult i64 %1555, %1547
  %1557 = icmp ult i64 %1555, %1553
  %1558 = or i1 %1556, %1557
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %14, align 1
  %1560 = trunc i64 %1555 to i32
  %1561 = and i32 %1560, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %21, align 1
  %1566 = xor i64 %1553, %1547
  %1567 = xor i64 %1566, %1555
  %1568 = lshr i64 %1567, 4
  %1569 = trunc i64 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %26, align 1
  %1571 = icmp eq i64 %1555, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %29, align 1
  %1573 = lshr i64 %1555, 63
  %1574 = trunc i64 %1573 to i8
  store i8 %1574, i8* %32, align 1
  %1575 = lshr i64 %1547, 63
  %1576 = xor i64 %1573, %1575
  %1577 = xor i64 %1573, %1554
  %1578 = add nuw nsw i64 %1576, %1577
  %1579 = icmp eq i64 %1578, 2
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %38, align 1
  %1581 = add i64 %1546, -16
  %1582 = add i64 %1545, 28
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = sext i32 %1584 to i64
  %1586 = mul nsw i64 %1585, 12
  store i64 %1586, i64* %RCX.i950.pre-phi, align 8
  %1587 = lshr i64 %1586, 63
  %1588 = add i64 %1586, %1555
  store i64 %1588, i64* %RAX.i1012, align 8
  %1589 = icmp ult i64 %1588, %1555
  %1590 = icmp ult i64 %1588, %1586
  %1591 = or i1 %1589, %1590
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %14, align 1
  %1593 = trunc i64 %1588 to i32
  %1594 = and i32 %1593, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %21, align 1
  %1599 = xor i64 %1586, %1555
  %1600 = xor i64 %1599, %1588
  %1601 = lshr i64 %1600, 4
  %1602 = trunc i64 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %26, align 1
  %1604 = icmp eq i64 %1588, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %29, align 1
  %1606 = lshr i64 %1588, 63
  %1607 = trunc i64 %1606 to i8
  store i8 %1607, i8* %32, align 1
  %1608 = xor i64 %1606, %1573
  %1609 = xor i64 %1606, %1587
  %1610 = add nuw nsw i64 %1608, %1609
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %38, align 1
  %1613 = inttoptr i64 %1588 to i32*
  %1614 = add i64 %1545, 38
  store i64 %1614, i64* %3, align 8
  %1615 = load i32, i32* %1613, align 4
  %1616 = add i32 %1615, 64
  %1617 = icmp ult i32 %1615, -64
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1616, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1616, %1615
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %26, align 1
  %1628 = icmp eq i32 %1616, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %29, align 1
  %1630 = lshr i32 %1616, 31
  %1631 = trunc i32 %1630 to i8
  store i8 %1631, i8* %32, align 1
  %1632 = lshr i32 %1615, 31
  %1633 = xor i32 %1632, 1
  %1634 = xor i32 %1630, %1632
  %1635 = add nuw nsw i32 %1634, %1633
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %38, align 1
  %1638 = icmp ne i8 %1631, 0
  %1639 = xor i1 %1638, %1636
  %.v99 = select i1 %1639, i64 88, i64 44
  %1640 = add i64 %1545, %.v99
  store i64 %1640, i64* %3, align 8
  br i1 %1639, label %block_.L_4b025e, label %block_4b0232

block_4b0232:                                     ; preds = %block_.L_4b0206
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -560
  store i64 %1642, i64* %RAX.i1012, align 8
  %1643 = add i64 %1641, -932
  %1644 = add i64 %1640, 14
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = sext i32 %1646 to i64
  %1648 = mul nsw i64 %1647, 180
  store i64 %1648, i64* %RCX.i950.pre-phi, align 8
  %1649 = lshr i64 %1648, 63
  %1650 = add i64 %1648, %1642
  store i64 %1650, i64* %RAX.i1012, align 8
  %1651 = icmp ult i64 %1650, %1642
  %1652 = icmp ult i64 %1650, %1648
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %14, align 1
  %1655 = trunc i64 %1650 to i32
  %1656 = and i32 %1655, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %21, align 1
  %1661 = xor i64 %1648, %1642
  %1662 = xor i64 %1661, %1650
  %1663 = lshr i64 %1662, 4
  %1664 = trunc i64 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %26, align 1
  %1666 = icmp eq i64 %1650, 0
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %29, align 1
  %1668 = lshr i64 %1650, 63
  %1669 = trunc i64 %1668 to i8
  store i8 %1669, i8* %32, align 1
  %1670 = lshr i64 %1642, 63
  %1671 = xor i64 %1668, %1670
  %1672 = xor i64 %1668, %1649
  %1673 = add nuw nsw i64 %1671, %1672
  %1674 = icmp eq i64 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %38, align 1
  %1676 = add i64 %1641, -16
  %1677 = add i64 %1640, 28
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sext i32 %1679 to i64
  %1681 = mul nsw i64 %1680, 12
  store i64 %1681, i64* %RCX.i950.pre-phi, align 8
  %1682 = lshr i64 %1681, 63
  %1683 = add i64 %1681, %1650
  store i64 %1683, i64* %RAX.i1012, align 8
  %1684 = icmp ult i64 %1683, %1650
  %1685 = icmp ult i64 %1683, %1681
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %14, align 1
  %1688 = trunc i64 %1683 to i32
  %1689 = and i32 %1688, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %21, align 1
  %1694 = xor i64 %1681, %1650
  %1695 = xor i64 %1694, %1683
  %1696 = lshr i64 %1695, 4
  %1697 = trunc i64 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %26, align 1
  %1699 = icmp eq i64 %1683, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %29, align 1
  %1701 = lshr i64 %1683, 63
  %1702 = trunc i64 %1701 to i8
  store i8 %1702, i8* %32, align 1
  %1703 = xor i64 %1701, %1668
  %1704 = xor i64 %1701, %1682
  %1705 = add nuw nsw i64 %1703, %1704
  %1706 = icmp eq i64 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %38, align 1
  %1708 = inttoptr i64 %1683 to i32*
  %1709 = add i64 %1640, 38
  store i64 %1709, i64* %3, align 8
  %1710 = load i32, i32* %1708, align 4
  %1711 = add i32 %1710, -127
  %1712 = icmp ult i32 %1710, 127
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %14, align 1
  %1714 = and i32 %1711, 255
  %1715 = tail call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  store i8 %1718, i8* %21, align 1
  %1719 = xor i32 %1710, 16
  %1720 = xor i32 %1719, %1711
  %1721 = lshr i32 %1720, 4
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  store i8 %1723, i8* %26, align 1
  %1724 = icmp eq i32 %1711, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %29, align 1
  %1726 = lshr i32 %1711, 31
  %1727 = trunc i32 %1726 to i8
  store i8 %1727, i8* %32, align 1
  %1728 = lshr i32 %1710, 31
  %1729 = xor i32 %1726, %1728
  %1730 = add nuw nsw i32 %1729, %1728
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %38, align 1
  %1733 = icmp ne i8 %1727, 0
  %1734 = xor i1 %1733, %1731
  %1735 = or i1 %1724, %1734
  %.v100 = select i1 %1735, i64 85, i64 44
  %1736 = add i64 %1640, %.v100
  store i64 %1736, i64* %3, align 8
  br i1 %1735, label %block_.L_4b0287, label %block_.L_4b025e

block_.L_4b025e:                                  ; preds = %block_4b0232, %block_.L_4b0206
  %1737 = phi i64 [ %1736, %block_4b0232 ], [ %1640, %block_.L_4b0206 ]
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -560
  store i64 %1739, i64* %RAX.i1012, align 8
  %1740 = add i64 %1738, -932
  %1741 = add i64 %1737, 14
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i32*
  %1743 = load i32, i32* %1742, align 4
  %1744 = sext i32 %1743 to i64
  %1745 = mul nsw i64 %1744, 180
  store i64 %1745, i64* %RCX.i950.pre-phi, align 8
  %1746 = lshr i64 %1745, 63
  %1747 = add i64 %1745, %1739
  store i64 %1747, i64* %RAX.i1012, align 8
  %1748 = icmp ult i64 %1747, %1739
  %1749 = icmp ult i64 %1747, %1745
  %1750 = or i1 %1748, %1749
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %14, align 1
  %1752 = trunc i64 %1747 to i32
  %1753 = and i32 %1752, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %21, align 1
  %1758 = xor i64 %1745, %1739
  %1759 = xor i64 %1758, %1747
  %1760 = lshr i64 %1759, 4
  %1761 = trunc i64 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %26, align 1
  %1763 = icmp eq i64 %1747, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %29, align 1
  %1765 = lshr i64 %1747, 63
  %1766 = trunc i64 %1765 to i8
  store i8 %1766, i8* %32, align 1
  %1767 = lshr i64 %1739, 63
  %1768 = xor i64 %1765, %1767
  %1769 = xor i64 %1765, %1746
  %1770 = add nuw nsw i64 %1768, %1769
  %1771 = icmp eq i64 %1770, 2
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %38, align 1
  %1773 = add i64 %1738, -16
  %1774 = add i64 %1737, 28
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = sext i32 %1776 to i64
  %1778 = mul nsw i64 %1777, 12
  store i64 %1778, i64* %RCX.i950.pre-phi, align 8
  %1779 = lshr i64 %1778, 63
  %1780 = add i64 %1778, %1747
  store i64 %1780, i64* %RAX.i1012, align 8
  %1781 = icmp ult i64 %1780, %1747
  %1782 = icmp ult i64 %1780, %1778
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %14, align 1
  %1785 = trunc i64 %1780 to i32
  %1786 = and i32 %1785, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1
  %1791 = xor i64 %1778, %1747
  %1792 = xor i64 %1791, %1780
  %1793 = lshr i64 %1792, 4
  %1794 = trunc i64 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %26, align 1
  %1796 = icmp eq i64 %1780, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %29, align 1
  %1798 = lshr i64 %1780, 63
  %1799 = trunc i64 %1798 to i8
  store i8 %1799, i8* %32, align 1
  %1800 = xor i64 %1798, %1765
  %1801 = xor i64 %1798, %1779
  %1802 = add nuw nsw i64 %1800, %1801
  %1803 = icmp eq i64 %1802, 2
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %38, align 1
  %1805 = inttoptr i64 %1780 to i32*
  %1806 = add i64 %1737, 41
  store i64 %1806, i64* %3, align 8
  store i32 32, i32* %1805, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_4b0287

block_.L_4b0287:                                  ; preds = %block_.L_4b025e, %block_4b0232
  %1807 = phi i64 [ %.pre67, %block_.L_4b025e ], [ %1736, %block_4b0232 ]
  %1808 = add i64 %1807, 364
  store i64 %1808, i64* %3, align 8
  br label %block_.L_4b03f3

block_.L_4b028c:                                  ; preds = %block_.L_4b0158
  %1809 = add i64 %1195, -928
  store i64 %1809, i64* %RAX.i1012, align 8
  %1810 = add i64 %1316, add (i64 ptrtoint (%G_0x15ed__rip__type* @G_0x15ed__rip_ to i64), i64 7)
  %1811 = add i64 %1316, 15
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i64*
  %1813 = load i64, i64* %1812, align 8
  store i64 %1813, i64* %52, align 1
  store double 0.000000e+00, double* %1025, align 1
  %1814 = add i64 %1195, -24
  %1815 = add i64 %1316, 20
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %1028, align 1
  store double 0.000000e+00, double* %1030, align 1
  %1818 = add i64 %1195, -16
  %1819 = add i64 %1316, 24
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = sext i32 %1821 to i64
  store i64 %1822, i64* %RCX.i950.pre-phi, align 8
  %1823 = shl nsw i64 %1822, 3
  %1824 = add i64 %1195, -160
  %1825 = add i64 %1824, %1823
  %1826 = add i64 %1316, 33
  store i64 %1826, i64* %3, align 8
  %1827 = bitcast i64 %1817 to double
  %1828 = inttoptr i64 %1825 to double*
  %1829 = load double, double* %1828, align 8
  %1830 = fsub double %1827, %1829
  store double %1830, double* %1027, align 1
  store i64 0, i64* %1029, align 1
  store i64 %1201, i64* %RCX.i950.pre-phi, align 8
  %1831 = add i64 %1316, 44
  store i64 %1831, i64* %3, align 8
  %1832 = load i32, i32* %1204, align 4
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RDX.i846, align 8
  store i64 %1201, i64* %RCX.i950.pre-phi, align 8
  %1834 = add i64 %1316, 56
  store i64 %1834, i64* %3, align 8
  %1835 = load i32, i32* %1209, align 4
  %1836 = sext i32 %1832 to i64
  %1837 = sext i32 %1835 to i64
  %1838 = mul nsw i64 %1837, %1836
  %1839 = trunc i64 %1838 to i32
  %1840 = shl i64 %1838, 32
  %1841 = ashr exact i64 %1840, 32
  %1842 = icmp ne i64 %1841, %1838
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = and i32 %1839, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1849 = lshr i32 %1839, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %32, align 1
  store i8 %1843, i8* %38, align 1
  %1851 = trunc i64 %1838 to i32
  %1852 = sitofp i32 %1851 to double
  store double %1852, double* %1032, align 1
  %1853 = fdiv double %1830, %1852
  %1854 = bitcast i64 %1813 to double
  %1855 = fadd double %1853, %1854
  store double %1855, double* %1027, align 1
  store i64 0, i64* %1029, align 1
  %1856 = tail call double @llvm.trunc.f64(double %1855)
  %1857 = tail call double @llvm.fabs.f64(double %1856)
  %1858 = fcmp ogt double %1857, 0x41DFFFFFFFC00000
  %1859 = fptosi double %1856 to i32
  %1860 = zext i32 %1859 to i64
  %1861 = select i1 %1858, i64 2147483648, i64 %1860
  store i64 %1861, i64* %RDX.i846, align 8
  %1862 = add i64 %1195, -932
  %1863 = add i64 %1316, 79
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = mul nsw i64 %1866, 180
  store i64 %1867, i64* %RCX.i950.pre-phi, align 8
  %1868 = lshr i64 %1867, 63
  %1869 = load i64, i64* %RAX.i1012, align 8
  %1870 = add i64 %1867, %1869
  store i64 %1870, i64* %RSI.i843, align 8
  %1871 = icmp ult i64 %1870, %1869
  %1872 = icmp ult i64 %1870, %1867
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = trunc i64 %1870 to i32
  %1876 = and i32 %1875, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i64 %1867, %1869
  %1882 = xor i64 %1881, %1870
  %1883 = lshr i64 %1882, 4
  %1884 = trunc i64 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %26, align 1
  %1886 = icmp eq i64 %1870, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %29, align 1
  %1888 = lshr i64 %1870, 63
  %1889 = trunc i64 %1888 to i8
  store i8 %1889, i8* %32, align 1
  %1890 = lshr i64 %1869, 63
  %1891 = xor i64 %1888, %1890
  %1892 = xor i64 %1888, %1868
  %1893 = add nuw nsw i64 %1891, %1892
  %1894 = icmp eq i64 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %38, align 1
  %1896 = load i64, i64* %RBP.i, align 8
  %1897 = add i64 %1896, -16
  %1898 = add i64 %1316, 96
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = mul nsw i64 %1901, 12
  store i64 %1902, i64* %RCX.i950.pre-phi, align 8
  %1903 = lshr i64 %1902, 63
  %1904 = add i64 %1902, %1870
  store i64 %1904, i64* %RSI.i843, align 8
  %1905 = icmp ult i64 %1904, %1870
  %1906 = icmp ult i64 %1904, %1902
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %14, align 1
  %1909 = trunc i64 %1904 to i32
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %21, align 1
  %1915 = xor i64 %1902, %1870
  %1916 = xor i64 %1915, %1904
  %1917 = lshr i64 %1916, 4
  %1918 = trunc i64 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %26, align 1
  %1920 = icmp eq i64 %1904, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %29, align 1
  %1922 = lshr i64 %1904, 63
  %1923 = trunc i64 %1922 to i8
  store i8 %1923, i8* %32, align 1
  %1924 = xor i64 %1922, %1888
  %1925 = xor i64 %1922, %1903
  %1926 = add nuw nsw i64 %1924, %1925
  %1927 = icmp eq i64 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %38, align 1
  %1929 = inttoptr i64 %1904 to i32*
  %1930 = load i32, i32* %EDX.i823, align 4
  %1931 = add i64 %1316, 105
  store i64 %1931, i64* %3, align 8
  store i32 %1930, i32* %1929, align 4
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -932
  %1934 = load i64, i64* %3, align 8
  %1935 = add i64 %1934, 7
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1933 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = sext i32 %1937 to i64
  %1939 = mul nsw i64 %1938, 180
  store i64 %1939, i64* %RCX.i950.pre-phi, align 8
  %1940 = lshr i64 %1939, 63
  %1941 = load i64, i64* %RAX.i1012, align 8
  %1942 = add i64 %1939, %1941
  store i64 %1942, i64* %RAX.i1012, align 8
  %1943 = icmp ult i64 %1942, %1941
  %1944 = icmp ult i64 %1942, %1939
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = trunc i64 %1942 to i32
  %1948 = and i32 %1947, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i64 %1939, %1941
  %1954 = xor i64 %1953, %1942
  %1955 = lshr i64 %1954, 4
  %1956 = trunc i64 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %26, align 1
  %1958 = icmp eq i64 %1942, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %29, align 1
  %1960 = lshr i64 %1942, 63
  %1961 = trunc i64 %1960 to i8
  store i8 %1961, i8* %32, align 1
  %1962 = lshr i64 %1941, 63
  %1963 = xor i64 %1960, %1962
  %1964 = xor i64 %1960, %1940
  %1965 = add nuw nsw i64 %1963, %1964
  %1966 = icmp eq i64 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %38, align 1
  %1968 = add i64 %1932, -16
  %1969 = add i64 %1934, 21
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = sext i32 %1971 to i64
  %1973 = mul nsw i64 %1972, 12
  store i64 %1973, i64* %RCX.i950.pre-phi, align 8
  %1974 = lshr i64 %1973, 63
  %1975 = add i64 %1973, %1942
  store i64 %1975, i64* %RAX.i1012, align 8
  %1976 = icmp ult i64 %1975, %1942
  %1977 = icmp ult i64 %1975, %1973
  %1978 = or i1 %1976, %1977
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %14, align 1
  %1980 = trunc i64 %1975 to i32
  %1981 = and i32 %1980, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %21, align 1
  %1986 = xor i64 %1973, %1942
  %1987 = xor i64 %1986, %1975
  %1988 = lshr i64 %1987, 4
  %1989 = trunc i64 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %26, align 1
  %1991 = icmp eq i64 %1975, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %29, align 1
  %1993 = lshr i64 %1975, 63
  %1994 = trunc i64 %1993 to i8
  store i8 %1994, i8* %32, align 1
  %1995 = xor i64 %1993, %1960
  %1996 = xor i64 %1993, %1974
  %1997 = add nuw nsw i64 %1995, %1996
  %1998 = icmp eq i64 %1997, 2
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %38, align 1
  %2000 = inttoptr i64 %1975 to i32*
  %2001 = add i64 %1934, 31
  store i64 %2001, i64* %3, align 8
  %2002 = load i32, i32* %2000, align 4
  %2003 = add i32 %2002, 128
  %2004 = icmp ult i32 %2002, -128
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %14, align 1
  %2006 = and i32 %2003, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1
  %2011 = xor i32 %2003, %2002
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %26, align 1
  %2015 = icmp eq i32 %2003, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %29, align 1
  %2017 = lshr i32 %2003, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %32, align 1
  %2019 = lshr i32 %2002, 31
  %2020 = xor i32 %2019, 1
  %2021 = xor i32 %2017, %2019
  %2022 = add nuw nsw i32 %2021, %2020
  %2023 = icmp eq i32 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %38, align 1
  %2025 = icmp ne i8 %2018, 0
  %2026 = xor i1 %2025, %2023
  %.v96 = select i1 %2026, i64 37, i64 53
  %2027 = add i64 %1934, %.v96
  store i64 %2027, i64* %3, align 8
  br i1 %2026, label %block_4b031a, label %block_.L_4b032a

block_4b031a:                                     ; preds = %block_.L_4b028c
  store i64 4294967168, i64* %RAX.i1012, align 8
  %2028 = load i64, i64* %RBP.i, align 8
  %2029 = add i64 %2028, -952
  %2030 = add i64 %2027, 11
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  store i32 -128, i32* %2031, align 4
  %2032 = load i64, i64* %3, align 8
  %2033 = add i64 %2032, 120
  store i64 %2033, i64* %3, align 8
  br label %block_.L_4b039d

block_.L_4b032a:                                  ; preds = %block_.L_4b028c
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, -928
  store i64 %2035, i64* %RAX.i1012, align 8
  %2036 = add i64 %2034, -932
  %2037 = add i64 %2027, 14
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = sext i32 %2039 to i64
  %2041 = mul nsw i64 %2040, 180
  store i64 %2041, i64* %RCX.i950.pre-phi, align 8
  %2042 = lshr i64 %2041, 63
  %2043 = add i64 %2041, %2035
  store i64 %2043, i64* %RAX.i1012, align 8
  %2044 = icmp ult i64 %2043, %2035
  %2045 = icmp ult i64 %2043, %2041
  %2046 = or i1 %2044, %2045
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %14, align 1
  %2048 = trunc i64 %2043 to i32
  %2049 = and i32 %2048, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  %2054 = xor i64 %2041, %2035
  %2055 = xor i64 %2054, %2043
  %2056 = lshr i64 %2055, 4
  %2057 = trunc i64 %2056 to i8
  %2058 = and i8 %2057, 1
  store i8 %2058, i8* %26, align 1
  %2059 = icmp eq i64 %2043, 0
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %29, align 1
  %2061 = lshr i64 %2043, 63
  %2062 = trunc i64 %2061 to i8
  store i8 %2062, i8* %32, align 1
  %2063 = lshr i64 %2035, 63
  %2064 = xor i64 %2061, %2063
  %2065 = xor i64 %2061, %2042
  %2066 = add nuw nsw i64 %2064, %2065
  %2067 = icmp eq i64 %2066, 2
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %38, align 1
  %2069 = add i64 %2034, -16
  %2070 = add i64 %2027, 28
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  %2072 = load i32, i32* %2071, align 4
  %2073 = sext i32 %2072 to i64
  %2074 = mul nsw i64 %2073, 12
  store i64 %2074, i64* %RCX.i950.pre-phi, align 8
  %2075 = lshr i64 %2074, 63
  %2076 = add i64 %2074, %2043
  store i64 %2076, i64* %RAX.i1012, align 8
  %2077 = icmp ult i64 %2076, %2043
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
  %2087 = xor i64 %2074, %2043
  %2088 = xor i64 %2087, %2076
  %2089 = lshr i64 %2088, 4
  %2090 = trunc i64 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i64 %2076, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i64 %2076, 63
  %2095 = trunc i64 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = xor i64 %2094, %2061
  %2097 = xor i64 %2094, %2075
  %2098 = add nuw nsw i64 %2096, %2097
  %2099 = icmp eq i64 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %38, align 1
  %2101 = inttoptr i64 %2076 to i32*
  %2102 = add i64 %2027, 38
  store i64 %2102, i64* %3, align 8
  %2103 = load i32, i32* %2101, align 4
  %2104 = add i32 %2103, -127
  %2105 = icmp ult i32 %2103, 127
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %14, align 1
  %2107 = and i32 %2104, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i32 %2103, 16
  %2113 = xor i32 %2112, %2104
  %2114 = lshr i32 %2113, 4
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  store i8 %2116, i8* %26, align 1
  %2117 = icmp eq i32 %2104, 0
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %29, align 1
  %2119 = lshr i32 %2104, 31
  %2120 = trunc i32 %2119 to i8
  store i8 %2120, i8* %32, align 1
  %2121 = lshr i32 %2103, 31
  %2122 = xor i32 %2119, %2121
  %2123 = add nuw nsw i32 %2122, %2121
  %2124 = icmp eq i32 %2123, 2
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %38, align 1
  %2126 = icmp ne i8 %2120, 0
  %2127 = xor i1 %2126, %2124
  %2128 = or i1 %2117, %2127
  %.v97 = select i1 %2128, i64 60, i64 44
  %2129 = add i64 %2027, %.v97
  store i64 %2129, i64* %3, align 8
  br i1 %2128, label %block_.L_4b0366, label %block_4b0356

block_4b0356:                                     ; preds = %block_.L_4b032a
  store i64 127, i64* %RAX.i1012, align 8
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -956
  %2132 = add i64 %2129, 11
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  store i32 127, i32* %2133, align 4
  %2134 = load i64, i64* %3, align 8
  %2135 = add i64 %2134, 48
  store i64 %2135, i64* %3, align 8
  br label %block_.L_4b0391

block_.L_4b0366:                                  ; preds = %block_.L_4b032a
  %2136 = load i64, i64* %RBP.i, align 8
  %2137 = add i64 %2136, -928
  store i64 %2137, i64* %RAX.i1012, align 8
  %2138 = add i64 %2136, -932
  %2139 = add i64 %2129, 14
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = sext i32 %2141 to i64
  %2143 = mul nsw i64 %2142, 180
  store i64 %2143, i64* %RCX.i950.pre-phi, align 8
  %2144 = lshr i64 %2143, 63
  %2145 = add i64 %2143, %2137
  store i64 %2145, i64* %RAX.i1012, align 8
  %2146 = icmp ult i64 %2145, %2137
  %2147 = icmp ult i64 %2145, %2143
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = trunc i64 %2145 to i32
  %2151 = and i32 %2150, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %21, align 1
  %2156 = xor i64 %2143, %2137
  %2157 = xor i64 %2156, %2145
  %2158 = lshr i64 %2157, 4
  %2159 = trunc i64 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %26, align 1
  %2161 = icmp eq i64 %2145, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %29, align 1
  %2163 = lshr i64 %2145, 63
  %2164 = trunc i64 %2163 to i8
  store i8 %2164, i8* %32, align 1
  %2165 = lshr i64 %2137, 63
  %2166 = xor i64 %2163, %2165
  %2167 = xor i64 %2163, %2144
  %2168 = add nuw nsw i64 %2166, %2167
  %2169 = icmp eq i64 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %38, align 1
  %2171 = add i64 %2136, -16
  %2172 = add i64 %2129, 28
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = sext i32 %2174 to i64
  %2176 = mul nsw i64 %2175, 12
  store i64 %2176, i64* %RCX.i950.pre-phi, align 8
  %2177 = lshr i64 %2176, 63
  %2178 = add i64 %2176, %2145
  store i64 %2178, i64* %RAX.i1012, align 8
  %2179 = icmp ult i64 %2178, %2145
  %2180 = icmp ult i64 %2178, %2176
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %14, align 1
  %2183 = trunc i64 %2178 to i32
  %2184 = and i32 %2183, 255
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %21, align 1
  %2189 = xor i64 %2176, %2145
  %2190 = xor i64 %2189, %2178
  %2191 = lshr i64 %2190, 4
  %2192 = trunc i64 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %26, align 1
  %2194 = icmp eq i64 %2178, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %29, align 1
  %2196 = lshr i64 %2178, 63
  %2197 = trunc i64 %2196 to i8
  store i8 %2197, i8* %32, align 1
  %2198 = xor i64 %2196, %2163
  %2199 = xor i64 %2196, %2177
  %2200 = add nuw nsw i64 %2198, %2199
  %2201 = icmp eq i64 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %38, align 1
  %2203 = inttoptr i64 %2178 to i32*
  %2204 = add i64 %2129, 37
  store i64 %2204, i64* %3, align 8
  %2205 = load i32, i32* %2203, align 4
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RDX.i846, align 8
  %2207 = load i64, i64* %RBP.i, align 8
  %2208 = add i64 %2207, -956
  %2209 = add i64 %2129, 43
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  store i32 %2205, i32* %2210, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_4b0391

block_.L_4b0391:                                  ; preds = %block_.L_4b0366, %block_4b0356
  %2211 = phi i64 [ %.pre68, %block_.L_4b0366 ], [ %2135, %block_4b0356 ]
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -956
  %2214 = add i64 %2211, 6
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RAX.i1012, align 8
  %2218 = add i64 %2212, -952
  %2219 = add i64 %2211, 12
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i32*
  store i32 %2216, i32* %2220, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4b039d

block_.L_4b039d:                                  ; preds = %block_.L_4b0391, %block_4b031a
  %2221 = phi i64 [ %.pre69, %block_.L_4b0391 ], [ %2033, %block_4b031a ]
  %2222 = load i64, i64* %RBP.i, align 8
  %2223 = add i64 %2222, -952
  %2224 = add i64 %2221, 6
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX.i1012, align 8
  %2228 = add i64 %2222, -560
  store i64 %2228, i64* %RCX.i950.pre-phi, align 8
  %2229 = add i64 %2222, -928
  store i64 %2229, i64* %RDX.i846, align 8
  %2230 = add i64 %2222, -932
  %2231 = add i64 %2221, 27
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = sext i32 %2233 to i64
  %2235 = mul nsw i64 %2234, 180
  store i64 %2235, i64* %RSI.i843, align 8
  %2236 = lshr i64 %2235, 63
  %2237 = add i64 %2235, %2229
  store i64 %2237, i64* %RDX.i846, align 8
  %2238 = icmp ult i64 %2237, %2229
  %2239 = icmp ult i64 %2237, %2235
  %2240 = or i1 %2238, %2239
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %14, align 1
  %2242 = trunc i64 %2237 to i32
  %2243 = and i32 %2242, 255
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %21, align 1
  %2248 = xor i64 %2235, %2229
  %2249 = xor i64 %2248, %2237
  %2250 = lshr i64 %2249, 4
  %2251 = trunc i64 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %26, align 1
  %2253 = icmp eq i64 %2237, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %29, align 1
  %2255 = lshr i64 %2237, 63
  %2256 = trunc i64 %2255 to i8
  store i8 %2256, i8* %32, align 1
  %2257 = lshr i64 %2229, 63
  %2258 = xor i64 %2255, %2257
  %2259 = xor i64 %2255, %2236
  %2260 = add nuw nsw i64 %2258, %2259
  %2261 = icmp eq i64 %2260, 2
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %38, align 1
  %2263 = add i64 %2222, -16
  %2264 = add i64 %2221, 41
  store i64 %2264, i64* %3, align 8
  %2265 = inttoptr i64 %2263 to i32*
  %2266 = load i32, i32* %2265, align 4
  %2267 = sext i32 %2266 to i64
  %2268 = mul nsw i64 %2267, 12
  store i64 %2268, i64* %RSI.i843, align 8
  %2269 = lshr i64 %2268, 63
  %2270 = add i64 %2268, %2237
  store i64 %2270, i64* %RDX.i846, align 8
  %2271 = icmp ult i64 %2270, %2237
  %2272 = icmp ult i64 %2270, %2268
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
  %2281 = xor i64 %2268, %2237
  %2282 = xor i64 %2281, %2270
  %2283 = lshr i64 %2282, 4
  %2284 = trunc i64 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %26, align 1
  %2286 = icmp eq i64 %2270, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %29, align 1
  %2288 = lshr i64 %2270, 63
  %2289 = trunc i64 %2288 to i8
  store i8 %2289, i8* %32, align 1
  %2290 = xor i64 %2288, %2255
  %2291 = xor i64 %2288, %2269
  %2292 = add nuw nsw i64 %2290, %2291
  %2293 = icmp eq i64 %2292, 2
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %38, align 1
  %2295 = inttoptr i64 %2270 to i32*
  %2296 = load i32, i32* %EAX.i947.pre-phi, align 4
  %2297 = add i64 %2221, 50
  store i64 %2297, i64* %3, align 8
  store i32 %2296, i32* %2295, align 4
  %2298 = load i64, i64* %RBP.i, align 8
  %2299 = add i64 %2298, -180
  %2300 = load i64, i64* %3, align 8
  %2301 = add i64 %2300, 6
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i1012, align 8
  %2305 = add i64 %2298, -932
  %2306 = add i64 %2300, 13
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = sext i32 %2308 to i64
  %2310 = add i64 %2300, 20
  store i64 %2310, i64* %3, align 8
  %2311 = sext i32 %2308 to i128
  %2312 = and i128 %2311, -18446744073709551616
  %2313 = zext i64 %2309 to i128
  %2314 = or i128 %2312, %2313
  %2315 = mul nsw i128 %2314, 180
  %2316 = trunc i128 %2315 to i64
  store i64 %2316, i64* %RDX.i846, align 8
  %2317 = sext i64 %2316 to i128
  %2318 = icmp ne i128 %2317, %2315
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %14, align 1
  %2320 = trunc i128 %2315 to i32
  %2321 = and i32 %2320, 252
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2326 = lshr i64 %2316, 63
  %2327 = trunc i64 %2326 to i8
  store i8 %2327, i8* %32, align 1
  store i8 %2319, i8* %38, align 1
  %2328 = load i64, i64* %RCX.i950.pre-phi, align 8
  %2329 = add i64 %2316, %2328
  store i64 %2329, i64* %RCX.i950.pre-phi, align 8
  %2330 = icmp ult i64 %2329, %2328
  %2331 = icmp ult i64 %2329, %2316
  %2332 = or i1 %2330, %2331
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %14, align 1
  %2334 = trunc i64 %2329 to i32
  %2335 = and i32 %2334, 255
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %21, align 1
  %2340 = xor i64 %2316, %2328
  %2341 = xor i64 %2340, %2329
  %2342 = lshr i64 %2341, 4
  %2343 = trunc i64 %2342 to i8
  %2344 = and i8 %2343, 1
  store i8 %2344, i8* %26, align 1
  %2345 = icmp eq i64 %2329, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %29, align 1
  %2347 = lshr i64 %2329, 63
  %2348 = trunc i64 %2347 to i8
  store i8 %2348, i8* %32, align 1
  %2349 = lshr i64 %2328, 63
  %2350 = xor i64 %2347, %2349
  %2351 = xor i64 %2347, %2326
  %2352 = add nuw nsw i64 %2350, %2351
  %2353 = icmp eq i64 %2352, 2
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %38, align 1
  %2355 = add i64 %2298, -16
  %2356 = add i64 %2300, 27
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = sext i32 %2358 to i64
  %2360 = mul nsw i64 %2359, 12
  store i64 %2360, i64* %RDX.i846, align 8
  %2361 = lshr i64 %2360, 63
  %2362 = add i64 %2360, %2329
  store i64 %2362, i64* %RCX.i950.pre-phi, align 8
  %2363 = icmp ult i64 %2362, %2329
  %2364 = icmp ult i64 %2362, %2360
  %2365 = or i1 %2363, %2364
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %14, align 1
  %2367 = trunc i64 %2362 to i32
  %2368 = and i32 %2367, 255
  %2369 = tail call i32 @llvm.ctpop.i32(i32 %2368)
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  store i8 %2372, i8* %21, align 1
  %2373 = xor i64 %2360, %2329
  %2374 = xor i64 %2373, %2362
  %2375 = lshr i64 %2374, 4
  %2376 = trunc i64 %2375 to i8
  %2377 = and i8 %2376, 1
  store i8 %2377, i8* %26, align 1
  %2378 = icmp eq i64 %2362, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %29, align 1
  %2380 = lshr i64 %2362, 63
  %2381 = trunc i64 %2380 to i8
  store i8 %2381, i8* %32, align 1
  %2382 = xor i64 %2380, %2347
  %2383 = xor i64 %2380, %2361
  %2384 = add nuw nsw i64 %2382, %2383
  %2385 = icmp eq i64 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %38, align 1
  %2387 = inttoptr i64 %2362 to i32*
  %2388 = load i32, i32* %EAX.i947.pre-phi, align 4
  %2389 = add i64 %2300, 36
  store i64 %2389, i64* %3, align 8
  store i32 %2388, i32* %2387, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4b03f3

block_.L_4b03f3:                                  ; preds = %block_.L_4b039d, %block_.L_4b0287
  %2390 = phi i64 [ %.pre70, %block_.L_4b039d ], [ %1808, %block_.L_4b0287 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.8, %block_.L_4b039d ], [ %1355, %block_.L_4b0287 ]
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -560
  store i64 %2392, i64* %RAX.i1012, align 8
  %2393 = add i64 %2391, -184
  %2394 = add i64 %2390, 13
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RCX.i950.pre-phi, align 8
  %2398 = add i64 %2391, -932
  %2399 = add i64 %2390, 20
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = sext i32 %2401 to i64
  %2403 = mul nsw i64 %2402, 180
  store i64 %2403, i64* %RDX.i846, align 8
  %2404 = lshr i64 %2403, 63
  %2405 = add i64 %2403, %2392
  store i64 %2405, i64* %RSI.i843, align 8
  %2406 = icmp ult i64 %2405, %2392
  %2407 = icmp ult i64 %2405, %2403
  %2408 = or i1 %2406, %2407
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %14, align 1
  %2410 = trunc i64 %2405 to i32
  %2411 = and i32 %2410, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %21, align 1
  %2416 = xor i64 %2403, %2392
  %2417 = xor i64 %2416, %2405
  %2418 = lshr i64 %2417, 4
  %2419 = trunc i64 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %26, align 1
  %2421 = icmp eq i64 %2405, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %29, align 1
  %2423 = lshr i64 %2405, 63
  %2424 = trunc i64 %2423 to i8
  store i8 %2424, i8* %32, align 1
  %2425 = lshr i64 %2392, 63
  %2426 = xor i64 %2423, %2425
  %2427 = xor i64 %2423, %2404
  %2428 = add nuw nsw i64 %2426, %2427
  %2429 = icmp eq i64 %2428, 2
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %38, align 1
  %2431 = add i64 %2391, -16
  %2432 = add i64 %2390, 37
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = sext i32 %2434 to i64
  %2436 = mul nsw i64 %2435, 12
  store i64 %2436, i64* %RDX.i846, align 8
  %2437 = lshr i64 %2436, 63
  %2438 = add i64 %2436, %2405
  store i64 %2438, i64* %RSI.i843, align 8
  %2439 = icmp ult i64 %2438, %2405
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
  %2449 = xor i64 %2436, %2405
  %2450 = xor i64 %2449, %2438
  %2451 = lshr i64 %2450, 4
  %2452 = trunc i64 %2451 to i8
  %2453 = and i8 %2452, 1
  store i8 %2453, i8* %26, align 1
  %2454 = icmp eq i64 %2438, 0
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %29, align 1
  %2456 = lshr i64 %2438, 63
  %2457 = trunc i64 %2456 to i8
  store i8 %2457, i8* %32, align 1
  %2458 = xor i64 %2456, %2423
  %2459 = xor i64 %2456, %2437
  %2460 = add nuw nsw i64 %2458, %2459
  %2461 = icmp eq i64 %2460, 2
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %38, align 1
  %2463 = add i64 %2438, 4
  %2464 = load i32, i32* %ECX.i936.pre-phi, align 4
  %2465 = add i64 %2390, 47
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2463 to i32*
  store i32 %2464, i32* %2466, align 4
  %2467 = load i64, i64* %RBP.i, align 8
  %2468 = add i64 %2467, -184
  %2469 = load i64, i64* %3, align 8
  %2470 = add i64 %2469, 6
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2468 to i32*
  %2472 = load i32, i32* %2471, align 4
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RCX.i950.pre-phi, align 8
  %2474 = add i64 %2467, -932
  %2475 = add i64 %2469, 13
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = sext i32 %2477 to i64
  %2479 = mul nsw i64 %2478, 180
  store i64 %2479, i64* %RDX.i846, align 8
  %2480 = lshr i64 %2479, 63
  %2481 = load i64, i64* %RAX.i1012, align 8
  %2482 = add i64 %2479, %2481
  store i64 %2482, i64* %RAX.i1012, align 8
  %2483 = icmp ult i64 %2482, %2481
  %2484 = icmp ult i64 %2482, %2479
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %14, align 1
  %2487 = trunc i64 %2482 to i32
  %2488 = and i32 %2487, 255
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i64 %2479, %2481
  %2494 = xor i64 %2493, %2482
  %2495 = lshr i64 %2494, 4
  %2496 = trunc i64 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %26, align 1
  %2498 = icmp eq i64 %2482, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %29, align 1
  %2500 = lshr i64 %2482, 63
  %2501 = trunc i64 %2500 to i8
  store i8 %2501, i8* %32, align 1
  %2502 = lshr i64 %2481, 63
  %2503 = xor i64 %2500, %2502
  %2504 = xor i64 %2500, %2480
  %2505 = add nuw nsw i64 %2503, %2504
  %2506 = icmp eq i64 %2505, 2
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %38, align 1
  %2508 = add i64 %2467, -16
  %2509 = add i64 %2469, 27
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = sext i32 %2511 to i64
  %2513 = mul nsw i64 %2512, 12
  store i64 %2513, i64* %RDX.i846, align 8
  %2514 = lshr i64 %2513, 63
  %2515 = add i64 %2513, %2482
  store i64 %2515, i64* %RAX.i1012, align 8
  %2516 = icmp ult i64 %2515, %2482
  %2517 = icmp ult i64 %2515, %2513
  %2518 = or i1 %2516, %2517
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %14, align 1
  %2520 = trunc i64 %2515 to i32
  %2521 = and i32 %2520, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %21, align 1
  %2526 = xor i64 %2513, %2482
  %2527 = xor i64 %2526, %2515
  %2528 = lshr i64 %2527, 4
  %2529 = trunc i64 %2528 to i8
  %2530 = and i8 %2529, 1
  store i8 %2530, i8* %26, align 1
  %2531 = icmp eq i64 %2515, 0
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %29, align 1
  %2533 = lshr i64 %2515, 63
  %2534 = trunc i64 %2533 to i8
  store i8 %2534, i8* %32, align 1
  %2535 = xor i64 %2533, %2500
  %2536 = xor i64 %2533, %2514
  %2537 = add nuw nsw i64 %2535, %2536
  %2538 = icmp eq i64 %2537, 2
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %38, align 1
  %2540 = add i64 %2515, 8
  %2541 = load i32, i32* %ECX.i936.pre-phi, align 4
  %2542 = add i64 %2469, 37
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2540 to i32*
  store i32 %2541, i32* %2543, align 4
  %2544 = load i64, i64* %RBP.i, align 8
  %2545 = add i64 %2544, -16
  %2546 = load i64, i64* %3, align 8
  %2547 = add i64 %2546, 3
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2545 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = add i32 %2549, 1
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RAX.i1012, align 8
  %2552 = icmp eq i32 %2549, -1
  %2553 = icmp eq i32 %2550, 0
  %2554 = or i1 %2552, %2553
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %14, align 1
  %2556 = and i32 %2550, 255
  %2557 = tail call i32 @llvm.ctpop.i32(i32 %2556)
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  store i8 %2560, i8* %21, align 1
  %2561 = xor i32 %2550, %2549
  %2562 = lshr i32 %2561, 4
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  store i8 %2564, i8* %26, align 1
  %2565 = zext i1 %2553 to i8
  store i8 %2565, i8* %29, align 1
  %2566 = lshr i32 %2550, 31
  %2567 = trunc i32 %2566 to i8
  store i8 %2567, i8* %32, align 1
  %2568 = lshr i32 %2549, 31
  %2569 = xor i32 %2566, %2568
  %2570 = add nuw nsw i32 %2569, %2566
  %2571 = icmp eq i32 %2570, 2
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %38, align 1
  %2573 = add i64 %2546, 9
  store i64 %2573, i64* %3, align 8
  store i32 %2550, i32* %2548, align 4
  %2574 = load i64, i64* %3, align 8
  %2575 = add i64 %2574, -969
  store i64 %2575, i64* %3, align 8
  br label %block_.L_4b0087

block_.L_4b0455:                                  ; preds = %block_.L_4b0087
  %2576 = add i64 %1121, 11
  store i64 %2576, i64* %3, align 8
  %2577 = load i32, i32* %1087, align 4
  %2578 = add i32 %2577, 1
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RAX.i1012, align 8
  %2580 = icmp eq i32 %2577, -1
  %2581 = icmp eq i32 %2578, 0
  %2582 = or i1 %2580, %2581
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %14, align 1
  %2584 = and i32 %2578, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  %2589 = xor i32 %2578, %2577
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  store i8 %2592, i8* %26, align 1
  %2593 = zext i1 %2581 to i8
  store i8 %2593, i8* %29, align 1
  %2594 = lshr i32 %2578, 31
  %2595 = trunc i32 %2594 to i8
  store i8 %2595, i8* %32, align 1
  %2596 = lshr i32 %2577, 31
  %2597 = xor i32 %2594, %2596
  %2598 = add nuw nsw i32 %2597, %2594
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %38, align 1
  %2601 = add i64 %1121, 20
  store i64 %2601, i64* %3, align 8
  store i32 %2578, i32* %1087, align 4
  %2602 = load i64, i64* %3, align 8
  %2603 = add i64 %2602, -1024
  store i64 %2603, i64* %3, align 8
  br label %block_.L_4b0069

block_.L_4b046e:                                  ; preds = %block_.L_4b0069
  %2604 = add i64 %1074, 10
  store i64 %2604, i64* %3, align 8
  store i32 0, i32* %1039, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_4b0478

block_.L_4b0478:                                  ; preds = %block_.L_4b057e, %block_.L_4b046e
  %2605 = phi i64 [ %3071, %block_.L_4b057e ], [ %.pre58, %block_.L_4b046e ]
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -932
  %2608 = add i64 %2605, 6
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i1012, align 8
  %2612 = add i64 %2606, -188
  %2613 = add i64 %2605, 12
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = add i32 %2615, 2
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RCX.i950.pre-phi, align 8
  %2618 = lshr i32 %2616, 31
  %2619 = sub i32 %2610, %2616
  %2620 = icmp ult i32 %2610, %2616
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %14, align 1
  %2622 = and i32 %2619, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %21, align 1
  %2627 = xor i32 %2616, %2610
  %2628 = xor i32 %2627, %2619
  %2629 = lshr i32 %2628, 4
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  store i8 %2631, i8* %26, align 1
  %2632 = icmp eq i32 %2619, 0
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %29, align 1
  %2634 = lshr i32 %2619, 31
  %2635 = trunc i32 %2634 to i8
  store i8 %2635, i8* %32, align 1
  %2636 = lshr i32 %2610, 31
  %2637 = xor i32 %2618, %2636
  %2638 = xor i32 %2634, %2636
  %2639 = add nuw nsw i32 %2638, %2637
  %2640 = icmp eq i32 %2639, 2
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %38, align 1
  %2642 = icmp ne i8 %2635, 0
  %2643 = xor i1 %2642, %2640
  %.v92 = select i1 %2643, i64 23, i64 287
  %2644 = add i64 %2605, %.v92
  store i64 %2644, i64* %3, align 8
  br i1 %2643, label %block_4b048f, label %block_.L_4b0597.loopexit

block_4b048f:                                     ; preds = %block_.L_4b0478
  %2645 = add i64 %2606, -28
  %2646 = add i64 %2644, 7
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i32*
  store i32 0, i32* %2647, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_4b0496

block_.L_4b0496:                                  ; preds = %block_.L_4b0559, %block_4b048f
  %2648 = phi i64 [ %3012, %block_.L_4b0559 ], [ %.pre59, %block_4b048f ]
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -28
  %2651 = add i64 %2648, 3
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = zext i32 %2653 to i64
  store i64 %2654, i64* %RAX.i1012, align 8
  %2655 = add i64 %2649, -932
  %2656 = add i64 %2648, 10
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i32*
  %2658 = load i32, i32* %2657, align 4
  %2659 = sext i32 %2658 to i64
  store i64 %2659, i64* %RCX.i950.pre-phi, align 8
  %2660 = shl nsw i64 %2659, 2
  %2661 = add nsw i64 %2660, 7489456
  %2662 = add i64 %2648, 17
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = sub i32 %2653, %2664
  %2666 = icmp ult i32 %2653, %2664
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %14, align 1
  %2668 = and i32 %2665, 255
  %2669 = tail call i32 @llvm.ctpop.i32(i32 %2668)
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  %2672 = xor i8 %2671, 1
  store i8 %2672, i8* %21, align 1
  %2673 = xor i32 %2664, %2653
  %2674 = xor i32 %2673, %2665
  %2675 = lshr i32 %2674, 4
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  store i8 %2677, i8* %26, align 1
  %2678 = icmp eq i32 %2665, 0
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %29, align 1
  %2680 = lshr i32 %2665, 31
  %2681 = trunc i32 %2680 to i8
  store i8 %2681, i8* %32, align 1
  %2682 = lshr i32 %2653, 31
  %2683 = lshr i32 %2664, 31
  %2684 = xor i32 %2683, %2682
  %2685 = xor i32 %2680, %2682
  %2686 = add nuw nsw i32 %2685, %2684
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %38, align 1
  %2689 = icmp ne i8 %2681, 0
  %2690 = xor i1 %2689, %2687
  %.v93 = select i1 %2690, i64 23, i64 214
  %2691 = add i64 %2648, %.v93
  store i64 %2691, i64* %3, align 8
  br i1 %2690, label %block_4b04ad, label %block_.L_4b056c.loopexit

block_4b04ad:                                     ; preds = %block_.L_4b0496
  %2692 = add i64 %2649, -32
  %2693 = add i64 %2691, 7
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  store i32 0, i32* %2694, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_4b04b4

block_.L_4b04b4:                                  ; preds = %block_.L_4b0534, %block_4b04ad
  %2695 = phi i64 [ %2953, %block_.L_4b0534 ], [ %.pre60, %block_4b04ad ]
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -32
  %2698 = add i64 %2695, 4
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = add i32 %2700, -3
  %2702 = icmp ult i32 %2700, 3
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %14, align 1
  %2704 = and i32 %2701, 255
  %2705 = tail call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  store i8 %2708, i8* %21, align 1
  %2709 = xor i32 %2701, %2700
  %2710 = lshr i32 %2709, 4
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  store i8 %2712, i8* %26, align 1
  %2713 = icmp eq i32 %2701, 0
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %29, align 1
  %2715 = lshr i32 %2701, 31
  %2716 = trunc i32 %2715 to i8
  store i8 %2716, i8* %32, align 1
  %2717 = lshr i32 %2700, 31
  %2718 = xor i32 %2715, %2717
  %2719 = add nuw nsw i32 %2718, %2717
  %2720 = icmp eq i32 %2719, 2
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %38, align 1
  %2722 = icmp ne i8 %2716, 0
  %2723 = xor i1 %2722, %2720
  %.v82 = select i1 %2723, i64 10, i64 147
  %2724 = add i64 %2695, %.v82
  store i64 %2724, i64* %3, align 8
  br i1 %2723, label %block_4b04be, label %block_.L_4b0547.loopexit

block_4b04be:                                     ; preds = %block_.L_4b04b4
  %2725 = add i64 %2696, -560
  store i64 %2725, i64* %RAX.i1012, align 8
  %2726 = add i64 %2696, -932
  %2727 = add i64 %2724, 14
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = sext i32 %2729 to i64
  %2731 = mul nsw i64 %2730, 180
  store i64 %2731, i64* %RCX.i950.pre-phi, align 8
  %2732 = lshr i64 %2731, 63
  %2733 = add i64 %2731, %2725
  store i64 %2733, i64* %RAX.i1012, align 8
  %2734 = icmp ult i64 %2733, %2725
  %2735 = icmp ult i64 %2733, %2731
  %2736 = or i1 %2734, %2735
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %14, align 1
  %2738 = trunc i64 %2733 to i32
  %2739 = and i32 %2738, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %21, align 1
  %2744 = xor i64 %2731, %2725
  %2745 = xor i64 %2744, %2733
  %2746 = lshr i64 %2745, 4
  %2747 = trunc i64 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %26, align 1
  %2749 = icmp eq i64 %2733, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %29, align 1
  %2751 = lshr i64 %2733, 63
  %2752 = trunc i64 %2751 to i8
  store i8 %2752, i8* %32, align 1
  %2753 = lshr i64 %2725, 63
  %2754 = xor i64 %2751, %2753
  %2755 = xor i64 %2751, %2732
  %2756 = add nuw nsw i64 %2754, %2755
  %2757 = icmp eq i64 %2756, 2
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %38, align 1
  %2759 = add i64 %2696, -28
  %2760 = add i64 %2724, 28
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = sext i32 %2762 to i64
  %2764 = mul nsw i64 %2763, 12
  store i64 %2764, i64* %RCX.i950.pre-phi, align 8
  %2765 = lshr i64 %2764, 63
  %2766 = add i64 %2764, %2733
  store i64 %2766, i64* %RAX.i1012, align 8
  %2767 = icmp ult i64 %2766, %2733
  %2768 = icmp ult i64 %2766, %2764
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %14, align 1
  %2771 = trunc i64 %2766 to i32
  %2772 = and i32 %2771, 255
  %2773 = tail call i32 @llvm.ctpop.i32(i32 %2772)
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = xor i8 %2775, 1
  store i8 %2776, i8* %21, align 1
  %2777 = xor i64 %2764, %2733
  %2778 = xor i64 %2777, %2766
  %2779 = lshr i64 %2778, 4
  %2780 = trunc i64 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %26, align 1
  %2782 = icmp eq i64 %2766, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %29, align 1
  %2784 = lshr i64 %2766, 63
  %2785 = trunc i64 %2784 to i8
  store i8 %2785, i8* %32, align 1
  %2786 = xor i64 %2784, %2751
  %2787 = xor i64 %2784, %2765
  %2788 = add nuw nsw i64 %2786, %2787
  %2789 = icmp eq i64 %2788, 2
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %38, align 1
  %2791 = load i64, i64* %RBP.i, align 8
  %2792 = add i64 %2791, -32
  %2793 = add i64 %2724, 39
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i32*
  %2795 = load i32, i32* %2794, align 4
  %2796 = sext i32 %2795 to i64
  store i64 %2796, i64* %RCX.i950.pre-phi, align 8
  %2797 = shl nsw i64 %2796, 2
  %2798 = add i64 %2797, %2766
  %2799 = add i64 %2724, 42
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RDX.i846, align 8
  %2803 = add i64 %2791, -180
  %2804 = add i64 %2724, 48
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = sub i32 %2801, %2806
  %2808 = icmp ult i32 %2801, %2806
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %14, align 1
  %2810 = and i32 %2807, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %21, align 1
  %2815 = xor i32 %2806, %2801
  %2816 = xor i32 %2815, %2807
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %26, align 1
  %2820 = icmp eq i32 %2807, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %29, align 1
  %2822 = lshr i32 %2807, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %32, align 1
  %2824 = lshr i32 %2801, 31
  %2825 = lshr i32 %2806, 31
  %2826 = xor i32 %2825, %2824
  %2827 = xor i32 %2822, %2824
  %2828 = add nuw nsw i32 %2827, %2826
  %2829 = icmp eq i32 %2828, 2
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %38, align 1
  %.v81 = select i1 %2820, i64 54, i64 103
  %2831 = add i64 %2724, %.v81
  store i64 %2831, i64* %3, align 8
  br i1 %2820, label %block_4b04f4, label %block_.L_4b0525

block_4b04f4:                                     ; preds = %block_4b04be
  %2832 = add i64 %2791, -928
  store i64 %2832, i64* %RAX.i1012, align 8
  %2833 = add i64 %2791, -932
  %2834 = add i64 %2831, 14
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sext i32 %2836 to i64
  %2838 = mul nsw i64 %2837, 180
  store i64 %2838, i64* %RCX.i950.pre-phi, align 8
  %2839 = lshr i64 %2838, 63
  %2840 = add i64 %2838, %2832
  store i64 %2840, i64* %RAX.i1012, align 8
  %2841 = icmp ult i64 %2840, %2832
  %2842 = icmp ult i64 %2840, %2838
  %2843 = or i1 %2841, %2842
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %14, align 1
  %2845 = trunc i64 %2840 to i32
  %2846 = and i32 %2845, 255
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846)
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %21, align 1
  %2851 = xor i64 %2838, %2832
  %2852 = xor i64 %2851, %2840
  %2853 = lshr i64 %2852, 4
  %2854 = trunc i64 %2853 to i8
  %2855 = and i8 %2854, 1
  store i8 %2855, i8* %26, align 1
  %2856 = icmp eq i64 %2840, 0
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %29, align 1
  %2858 = lshr i64 %2840, 63
  %2859 = trunc i64 %2858 to i8
  store i8 %2859, i8* %32, align 1
  %2860 = lshr i64 %2832, 63
  %2861 = xor i64 %2858, %2860
  %2862 = xor i64 %2858, %2839
  %2863 = add nuw nsw i64 %2861, %2862
  %2864 = icmp eq i64 %2863, 2
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %38, align 1
  %2866 = add i64 %2791, -28
  %2867 = add i64 %2831, 28
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = sext i32 %2869 to i64
  %2871 = mul nsw i64 %2870, 12
  store i64 %2871, i64* %RCX.i950.pre-phi, align 8
  %2872 = lshr i64 %2871, 63
  %2873 = add i64 %2871, %2840
  store i64 %2873, i64* %RAX.i1012, align 8
  %2874 = icmp ult i64 %2873, %2840
  %2875 = icmp ult i64 %2873, %2871
  %2876 = or i1 %2874, %2875
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %14, align 1
  %2878 = trunc i64 %2873 to i32
  %2879 = and i32 %2878, 255
  %2880 = tail call i32 @llvm.ctpop.i32(i32 %2879)
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = xor i8 %2882, 1
  store i8 %2883, i8* %21, align 1
  %2884 = xor i64 %2871, %2840
  %2885 = xor i64 %2884, %2873
  %2886 = lshr i64 %2885, 4
  %2887 = trunc i64 %2886 to i8
  %2888 = and i8 %2887, 1
  store i8 %2888, i8* %26, align 1
  %2889 = icmp eq i64 %2873, 0
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %29, align 1
  %2891 = lshr i64 %2873, 63
  %2892 = trunc i64 %2891 to i8
  store i8 %2892, i8* %32, align 1
  %2893 = xor i64 %2891, %2858
  %2894 = xor i64 %2891, %2872
  %2895 = add nuw nsw i64 %2893, %2894
  %2896 = icmp eq i64 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %38, align 1
  %2898 = load i64, i64* %RBP.i, align 8
  %2899 = add i64 %2898, -32
  %2900 = add i64 %2831, 39
  store i64 %2900, i64* %3, align 8
  %2901 = inttoptr i64 %2899 to i32*
  %2902 = load i32, i32* %2901, align 4
  %2903 = sext i32 %2902 to i64
  store i64 %2903, i64* %RCX.i950.pre-phi, align 8
  %2904 = shl nsw i64 %2903, 2
  %2905 = add i64 %2904, %2873
  %2906 = add i64 %2831, 43
  store i64 %2906, i64* %3, align 8
  %2907 = inttoptr i64 %2905 to i32*
  %2908 = load i32, i32* %2907, align 4
  store i8 0, i8* %14, align 1
  %2909 = and i32 %2908, 255
  %2910 = tail call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  store i8 %2913, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2914 = icmp eq i32 %2908, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %29, align 1
  %2916 = lshr i32 %2908, 31
  %2917 = trunc i32 %2916 to i8
  store i8 %2917, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v80 = select i1 %2914, i64 64, i64 49
  %2918 = add i64 %2831, %.v80
  store i64 %2918, i64* %3, align 8
  br i1 %2914, label %block_.L_4b0534, label %block_.L_4b0525

block_.L_4b0525:                                  ; preds = %block_4b04be, %block_4b04f4
  %2919 = phi i64 [ %2918, %block_4b04f4 ], [ %2831, %block_4b04be ]
  %2920 = phi i64 [ %2898, %block_4b04f4 ], [ %2791, %block_4b04be ]
  %2921 = add i64 %2920, -936
  %2922 = add i64 %2919, 10
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  store i32 1, i32* %2923, align 4
  %2924 = load i64, i64* %3, align 8
  %2925 = add i64 %2924, 24
  store i64 %2925, i64* %3, align 8
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4b0547

block_.L_4b0534:                                  ; preds = %block_4b04f4
  %2926 = add i64 %2918, 8
  store i64 %2926, i64* %3, align 8
  %2927 = load i32, i32* %2901, align 4
  %2928 = add i32 %2927, 1
  %2929 = zext i32 %2928 to i64
  store i64 %2929, i64* %RAX.i1012, align 8
  %2930 = icmp eq i32 %2927, -1
  %2931 = icmp eq i32 %2928, 0
  %2932 = or i1 %2930, %2931
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %14, align 1
  %2934 = and i32 %2928, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %21, align 1
  %2939 = xor i32 %2928, %2927
  %2940 = lshr i32 %2939, 4
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  store i8 %2942, i8* %26, align 1
  %2943 = zext i1 %2931 to i8
  store i8 %2943, i8* %29, align 1
  %2944 = lshr i32 %2928, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %32, align 1
  %2946 = lshr i32 %2927, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2944
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %38, align 1
  %2951 = add i64 %2918, 14
  store i64 %2951, i64* %3, align 8
  store i32 %2928, i32* %2901, align 4
  %2952 = load i64, i64* %3, align 8
  %2953 = add i64 %2952, -142
  store i64 %2953, i64* %3, align 8
  br label %block_.L_4b04b4

block_.L_4b0547.loopexit:                         ; preds = %block_.L_4b04b4
  br label %block_.L_4b0547

block_.L_4b0547:                                  ; preds = %block_.L_4b0547.loopexit, %block_.L_4b0525
  %2954 = phi i64 [ %2925, %block_.L_4b0525 ], [ %2724, %block_.L_4b0547.loopexit ]
  %2955 = phi i64 [ %.pre61, %block_.L_4b0525 ], [ %2696, %block_.L_4b0547.loopexit ]
  %2956 = add i64 %2955, -936
  %2957 = add i64 %2954, 7
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = add i32 %2959, -1
  %2961 = icmp eq i32 %2959, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %14, align 1
  %2963 = and i32 %2960, 255
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %21, align 1
  %2968 = xor i32 %2960, %2959
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %26, align 1
  %2972 = icmp eq i32 %2960, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %29, align 1
  %2974 = lshr i32 %2960, 31
  %2975 = trunc i32 %2974 to i8
  store i8 %2975, i8* %32, align 1
  %2976 = lshr i32 %2959, 31
  %2977 = xor i32 %2974, %2976
  %2978 = add nuw nsw i32 %2977, %2976
  %2979 = icmp eq i32 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %38, align 1
  %.v79 = select i1 %2972, i64 13, i64 18
  %2981 = add i64 %2954, %.v79
  store i64 %2981, i64* %3, align 8
  br i1 %2972, label %block_4b0554, label %block_.L_4b0559

block_4b0554:                                     ; preds = %block_.L_4b0547
  %2982 = add i64 %2981, 24
  store i64 %2982, i64* %3, align 8
  br label %block_.L_4b056c

block_.L_4b0559:                                  ; preds = %block_.L_4b0547
  %2983 = add i64 %2955, -28
  %2984 = add i64 %2981, 8
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = add i32 %2986, 1
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RAX.i1012, align 8
  %2989 = icmp eq i32 %2986, -1
  %2990 = icmp eq i32 %2987, 0
  %2991 = or i1 %2989, %2990
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %14, align 1
  %2993 = and i32 %2987, 255
  %2994 = tail call i32 @llvm.ctpop.i32(i32 %2993)
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = xor i8 %2996, 1
  store i8 %2997, i8* %21, align 1
  %2998 = xor i32 %2987, %2986
  %2999 = lshr i32 %2998, 4
  %3000 = trunc i32 %2999 to i8
  %3001 = and i8 %3000, 1
  store i8 %3001, i8* %26, align 1
  %3002 = zext i1 %2990 to i8
  store i8 %3002, i8* %29, align 1
  %3003 = lshr i32 %2987, 31
  %3004 = trunc i32 %3003 to i8
  store i8 %3004, i8* %32, align 1
  %3005 = lshr i32 %2986, 31
  %3006 = xor i32 %3003, %3005
  %3007 = add nuw nsw i32 %3006, %3003
  %3008 = icmp eq i32 %3007, 2
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %38, align 1
  %3010 = add i64 %2981, 14
  store i64 %3010, i64* %3, align 8
  store i32 %2987, i32* %2985, align 4
  %3011 = load i64, i64* %3, align 8
  %3012 = add i64 %3011, -209
  store i64 %3012, i64* %3, align 8
  br label %block_.L_4b0496

block_.L_4b056c.loopexit:                         ; preds = %block_.L_4b0496
  br label %block_.L_4b056c

block_.L_4b056c:                                  ; preds = %block_.L_4b056c.loopexit, %block_4b0554
  %3013 = phi i64 [ %2982, %block_4b0554 ], [ %2691, %block_.L_4b056c.loopexit ]
  %3014 = phi i64 [ %2955, %block_4b0554 ], [ %2649, %block_.L_4b056c.loopexit ]
  %3015 = add i64 %3014, -936
  %3016 = add i64 %3013, 7
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = add i32 %3018, -1
  %3020 = icmp eq i32 %3018, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %14, align 1
  %3022 = and i32 %3019, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %21, align 1
  %3027 = xor i32 %3019, %3018
  %3028 = lshr i32 %3027, 4
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  store i8 %3030, i8* %26, align 1
  %3031 = icmp eq i32 %3019, 0
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %29, align 1
  %3033 = lshr i32 %3019, 31
  %3034 = trunc i32 %3033 to i8
  store i8 %3034, i8* %32, align 1
  %3035 = lshr i32 %3018, 31
  %3036 = xor i32 %3033, %3035
  %3037 = add nuw nsw i32 %3036, %3035
  %3038 = icmp eq i32 %3037, 2
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %38, align 1
  %.v = select i1 %3031, i64 13, i64 18
  %3040 = add i64 %3013, %.v
  store i64 %3040, i64* %3, align 8
  br i1 %3031, label %block_4b0579, label %block_.L_4b057e

block_4b0579:                                     ; preds = %block_.L_4b056c
  %3041 = add i64 %3040, 30
  store i64 %3041, i64* %3, align 8
  br label %block_.L_4b0597

block_.L_4b057e:                                  ; preds = %block_.L_4b056c
  %3042 = add i64 %3014, -932
  %3043 = add i64 %3040, 11
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = add i32 %3045, 1
  %3047 = zext i32 %3046 to i64
  store i64 %3047, i64* %RAX.i1012, align 8
  %3048 = icmp eq i32 %3045, -1
  %3049 = icmp eq i32 %3046, 0
  %3050 = or i1 %3048, %3049
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %14, align 1
  %3052 = and i32 %3046, 255
  %3053 = tail call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  store i8 %3056, i8* %21, align 1
  %3057 = xor i32 %3046, %3045
  %3058 = lshr i32 %3057, 4
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  store i8 %3060, i8* %26, align 1
  %3061 = zext i1 %3049 to i8
  store i8 %3061, i8* %29, align 1
  %3062 = lshr i32 %3046, 31
  %3063 = trunc i32 %3062 to i8
  store i8 %3063, i8* %32, align 1
  %3064 = lshr i32 %3045, 31
  %3065 = xor i32 %3062, %3064
  %3066 = add nuw nsw i32 %3065, %3062
  %3067 = icmp eq i32 %3066, 2
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %38, align 1
  %3069 = add i64 %3040, 20
  store i64 %3069, i64* %3, align 8
  store i32 %3046, i32* %3044, align 4
  %3070 = load i64, i64* %3, align 8
  %3071 = add i64 %3070, -282
  store i64 %3071, i64* %3, align 8
  br label %block_.L_4b0478

block_.L_4b0597.loopexit:                         ; preds = %block_.L_4b0478
  br label %block_.L_4b0597

block_.L_4b0597:                                  ; preds = %block_.L_4b0597.loopexit, %block_4b0579
  %3072 = phi i64 [ %3041, %block_4b0579 ], [ %2644, %block_.L_4b0597.loopexit ]
  %3073 = phi i64 [ %3014, %block_4b0579 ], [ %2606, %block_.L_4b0597.loopexit ]
  %3074 = add i64 %3073, -936
  %3075 = add i64 %3072, 6
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RAX.i1012, align 8
  %3079 = load i64, i64* %6, align 8
  %3080 = add i64 %3079, 832
  store i64 %3080, i64* %6, align 8
  %3081 = icmp ugt i64 %3079, -833
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %14, align 1
  %3083 = trunc i64 %3080 to i32
  %3084 = and i32 %3083, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %21, align 1
  %3089 = xor i64 %3080, %3079
  %3090 = lshr i64 %3089, 4
  %3091 = trunc i64 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %26, align 1
  %3093 = icmp eq i64 %3080, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %29, align 1
  %3095 = lshr i64 %3080, 63
  %3096 = trunc i64 %3095 to i8
  store i8 %3096, i8* %32, align 1
  %3097 = lshr i64 %3079, 63
  %3098 = xor i64 %3095, %3097
  %3099 = add nuw nsw i64 %3098, %3095
  %3100 = icmp eq i64 %3099, 2
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %38, align 1
  %3102 = add i64 %3072, 14
  store i64 %3102, i64* %3, align 8
  %3103 = add i64 %3079, 840
  %3104 = inttoptr i64 %3080 to i64*
  %3105 = load i64, i64* %3104, align 8
  store i64 %3105, i64* %RBP.i, align 8
  store i64 %3103, i64* %6, align 8
  %3106 = add i64 %3072, 15
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3103 to i64*
  %3108 = load i64, i64* %3107, align 8
  store i64 %3108, i64* %3, align 8
  %3109 = add i64 %3079, 848
  store i64 %3109, i64* %6, align 8
  ret %struct.Memory* %MEMORY.7
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
define %struct.Memory* @routine_subq__0x340___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -832
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 832
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_4afe24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -940
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
define %struct.Memory* @routine_movl_MINUS0x3ac__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -940
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
define %struct.Memory* @routine_movl__esi__MINUS0x3b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afe31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -944
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -948
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
define %struct.Memory* @routine_movl_MINUS0x3b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -948
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_jge_.L_4affe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4affd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4affbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4aff05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4affc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4afeea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4affd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4afecf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b005f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b004c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x2763f8__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2763f8__rip__type* @G_0x2763f8__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_jmpq_.L_4b0005(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0051(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4affea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
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
define %struct.Memory* @routine_jge_.L_4b046e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
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
define %struct.Memory* @routine_jge_.L_4b0455(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp__rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %11 = load i64, i64* %10, align 1
  %12 = inttoptr i64 %7 to i64*
  store i64 %11, i64* %12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
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
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_jge_.L_4b0158(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0xa0__rbp__rax_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -160
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to double*
  %12 = load double, double* %11, align 1
  %13 = inttoptr i64 %8 to double*
  %14 = load double, double* %13, align 8
  %15 = fadd double %12, %14
  store double %15, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b00ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4b028c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rax_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %11, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to double*
  store double 0.000000e+00, double* %14, align 1
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
define %struct.Memory* @routine_jne_.L_4b0187(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4b0187(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b01db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x16f2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x16f2__rip__type* @G_0x16f2__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0xb4__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_divsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -160
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to double*
  %12 = load double, double* %11, align 1
  %13 = inttoptr i64 %8 to double*
  %14 = load double, double* %13, align 8
  %15 = fdiv double %12, %14
  store double %15, double* %11, align 1
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0206(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffc0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 64
  %9 = icmp ult i32 %7, -64
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %29, 1
  %31 = xor i32 %26, %29
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4b025e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -127
  %9 = icmp ult i32 %7, 127
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4b0287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 32, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b03f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x15ed__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x15ed__rip__type* @G_0x15ed__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_subsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -160
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to double*
  %12 = load double, double* %11, align 1
  %13 = inttoptr i64 %8 to double*
  %14 = load double, double* %13, align 8
  %15 = fsub double %12, %14
  store double %15, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffff80____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 128
  %9 = icmp ult i32 %7, -128
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %29, 1
  %31 = xor i32 %26, %29
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b032a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -952
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b039d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4b0366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -956
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0391(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -956
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -956
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
define %struct.Memory* @routine_movl_MINUS0x3b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -952
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
define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0087(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b045a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b0597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4b056c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4b0547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmpl_MINUS0xb4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -180
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
define %struct.Memory* @routine_jne_.L_4b0525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4b0534(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0539(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b04b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
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
define %struct.Memory* @routine_jne_.L_4b0559(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b056c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b055e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0496(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4b057e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4b0597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0583(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4b0478(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
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
define %struct.Memory* @routine_addq__0x340___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 832
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -833
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
