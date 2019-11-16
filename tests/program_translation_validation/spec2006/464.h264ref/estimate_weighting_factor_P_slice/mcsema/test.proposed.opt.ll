; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x278672__rip__type = type <{ [8 x i8] }>
%G_0x3857__rip__type = type <{ [8 x i8] }>
%G_0x395e__rip__type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x710790_type = type <{ [4 x i8] }>
%G_0x7107a0_type = type <{ [4 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
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
@G_0x278672__rip_ = global %G_0x278672__rip__type zeroinitializer
@G_0x3857__rip_ = global %G_0x3857__rip__type zeroinitializer
@G_0x395e__rip_ = global %G_0x395e__rip__type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4740 = local_unnamed_addr global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = local_unnamed_addr global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = local_unnamed_addr global %G_0x70f6d0_type zeroinitializer
@G_0x710790 = local_unnamed_addr global %G_0x710790_type zeroinitializer
@G_0x7107a0 = local_unnamed_addr global %G_0x7107a0_type zeroinitializer
@G_0x722b20 = local_unnamed_addr global %G_0x722b20_type zeroinitializer
@G_0x7242a0 = local_unnamed_addr global %G_0x7242a0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: alwaysinline
define %struct.Memory* @estimate_weighting_factor_P_slice(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -856
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 848
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
  %EDI.i1668 = bitcast %union.anon* %43 to i32*
  %44 = add i64 %7, -12
  %45 = load i32, i32* %EDI.i1668, align 4
  %46 = add i64 %10, 16
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -24
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %3, align 8
  %52 = bitcast [32 x %union.VectorReg]* %40 to double*
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %49 to i64*
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1663 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %58, i64* %RAX.i1663, align 8
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
  %.v111 = select i1 %68, i64 126, i64 21
  %72 = add i64 %57, %.v111
  store i64 %72, i64* %3, align 8
  br i1 %68, label %entry.block_.L_4adba4_crit_edge, label %block_4adb3b

entry.block_.L_4adba4_crit_edge:                  ; preds = %entry
  %.pre103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre104 = getelementptr inbounds %union.anon, %union.anon* %.pre103, i64 0, i32 0
  br label %block_.L_4adba4

block_4adb3b:                                     ; preds = %entry
  store i64 %58, i64* %RAX.i1663, align 8
  %73 = add i64 %58, 14168
  %74 = add i64 %72, 15
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RAX.i1663, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1654 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  store i64 %58, i64* %RCX.i1654, align 8
  %78 = add i64 %58, 12
  %79 = add i64 %72, 27
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 632
  store i64 %83, i64* %RCX.i1654, align 8
  %84 = lshr i64 %83, 63
  %85 = add i64 %83, %76
  store i64 %85, i64* %RAX.i1663, align 8
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
  %.v112 = select i1 %120, i64 105, i64 50
  %124 = add i64 %72, %.v112
  store i64 %124, i64* %3, align 8
  br i1 %120, label %block_.L_4adba4, label %block_4adb6d

block_4adb6d:                                     ; preds = %block_4adb3b
  store i64 2, i64* %RAX.i1663, align 8
  store i64 4, i64* %RCX.i1654, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1638 = getelementptr inbounds %union.anon, %union.anon* %125, i64 0, i32 0
  %126 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %126, i64* %RDX.i1638, align 8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1636 = getelementptr inbounds %union.anon, %union.anon* %127, i64 0, i32 0
  %128 = add i64 %126, 12
  %129 = add i64 %124, 21
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI.i1636, align 8
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -936
  %135 = add i64 %124, 27
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 2, i32* %136, align 4
  %ESI.i1629 = bitcast %union.anon* %127 to i32*
  %137 = load i32, i32* %ESI.i1629, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %3, align 8
  store i64 %138, i64* %RAX.i1663, align 8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %141 = sext i32 %137 to i64
  %142 = lshr i64 %141, 32
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -936
  %145 = add i64 %139, 9
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RSI.i1636, align 8
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

; <label>:157:                                    ; preds = %block_4adb6d
  %158 = bitcast %union.anon* %125 to i32*
  %159 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %149, %struct.Memory* %2)
  %.pre = load i32, i32* %158, align 4
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i64, i64* %RSI.i1636, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:160:                                    ; preds = %block_4adb6d
  %161 = srem i64 %152, %150
  %162 = and i64 %153, 4294967295
  store i64 %162, i64* %RAX.i1663, align 8
  %163 = and i64 %161, 4294967295
  store i64 %163, i64* %RDX.i1638, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %164 = trunc i64 %161 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %160, %157
  %165 = phi i64 [ %.pre72, %157 ], [ %143, %160 ]
  %166 = phi i64 [ %.pre71, %157 ], [ %148, %160 ]
  %167 = phi i64 [ %.pre70, %157 ], [ %149, %160 ]
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
  %ECX.i1615 = bitcast %union.anon* %77 to i32*
  %179 = load i32, i32* %ECX.i1615, align 4
  %180 = zext i32 %179 to i64
  %181 = select i1 %175, i64 %166, i64 %180
  %182 = and i64 %181, 4294967295
  store i64 %182, i64* %RSI.i1636, align 8
  %183 = add i64 %165, -940
  %184 = trunc i64 %181 to i32
  %185 = add i64 %167, 12
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %183 to i32*
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 18
  br label %block_.L_4adbb1

block_.L_4adba4:                                  ; preds = %entry.block_.L_4adba4_crit_edge, %block_4adb3b
  %.pre101.pre-phi = phi i64* [ %.pre104, %entry.block_.L_4adba4_crit_edge ], [ %RCX.i1654, %block_4adb3b ]
  %.pre100.pre-phi = phi %union.anon* [ %.pre103, %entry.block_.L_4adba4_crit_edge ], [ %77, %block_4adb3b ]
  %189 = phi i64 [ %72, %entry.block_.L_4adba4_crit_edge ], [ %124, %block_4adb3b ]
  store i64 0, i64* %RAX.i1663, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -940
  %192 = add i64 %189, 8
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 0, i32* %193, align 4
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 5
  store i64 %195, i64* %3, align 8
  %.pre102 = bitcast %union.anon* %.pre100.pre-phi to i32*
  br label %block_.L_4adbb1

block_.L_4adbb1:                                  ; preds = %block_.L_4adba4, %routine_idivl__esi.exit
  %ECX.i1587.pre-phi = phi i32* [ %.pre102, %block_.L_4adba4 ], [ %ECX.i1615, %routine_idivl__esi.exit ]
  %RCX.i1599.pre-phi = phi i64* [ %.pre101.pre-phi, %block_.L_4adba4 ], [ %RCX.i1654, %routine_idivl__esi.exit ]
  %.pre-phi = phi %union.anon* [ %.pre100.pre-phi, %block_.L_4adba4 ], [ %77, %routine_idivl__esi.exit ]
  %storemerge = phi i64 [ %195, %block_.L_4adba4 ], [ %188, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_4adba4 ], [ %169, %routine_idivl__esi.exit ]
  %EAX.i1596.pre-phi = bitcast %union.anon* %56 to i32*
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -940
  %198 = add i64 %storemerge, 6
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  store i64 1, i64* %RCX.i1599.pre-phi, align 8
  %201 = add i64 %196, -192
  %202 = add i64 %storemerge, 17
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 %200, i32* %203, align 4
  %204 = load i64, i64* %3, align 8
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  store i64 4, i64* %RAX.i1663, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -944
  %207 = load i32, i32* %ECX.i1587.pre-phi, align 4
  %208 = add i64 %204, 38
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %EAX.i1596.pre-phi, align 4
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* %3, align 8
  store i64 %211, i64* %RCX.i1599.pre-phi, align 8
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -944
  %215 = add i64 %212, 8
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i1663, align 8
  %219 = add i64 %212, 10
  store i64 %219, i64* %3, align 8
  %220 = trunc i32 %210 to i5
  switch i5 %220, label %226 [
    i5 0, label %routine_shll__cl___eax.exit1579
    i5 1, label %221
  ]

; <label>:221:                                    ; preds = %block_.L_4adbb1
  %222 = shl i32 %217, 1
  %223 = icmp slt i32 %217, 0
  %224 = icmp slt i32 %222, 0
  %225 = xor i1 %223, %224
  br label %235

; <label>:226:                                    ; preds = %block_.L_4adbb1
  %227 = and i32 %210, 31
  %228 = zext i32 %227 to i64
  %229 = add nuw nsw i64 %228, 4294967295
  %230 = and i64 %229, 4294967295
  %231 = shl i64 %218, %230
  %232 = trunc i64 %231 to i32
  %233 = icmp slt i32 %232, 0
  %234 = shl i32 %232, 1
  br label %235

; <label>:235:                                    ; preds = %226, %221
  %236 = phi i1 [ %223, %221 ], [ %233, %226 ]
  %237 = phi i1 [ %225, %221 ], [ false, %226 ]
  %238 = phi i32 [ %222, %221 ], [ %234, %226 ]
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX.i1663, align 8
  %240 = zext i1 %236 to i8
  store i8 %240, i8* %14, align 1
  %241 = and i32 %238, 254
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %246 = icmp eq i32 %238, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %30, align 1
  %248 = lshr i32 %238, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %33, align 1
  %250 = zext i1 %237 to i8
  store i8 %250, i8* %39, align 1
  br label %routine_shll__cl___eax.exit1579

routine_shll__cl___eax.exit1579:                  ; preds = %235, %block_.L_4adbb1
  %251 = phi i32 [ %238, %235 ], [ %217, %block_.L_4adbb1 ]
  store i32 %251, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %252 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %253 = add i32 %252, -1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX.i1663, align 8
  %255 = icmp eq i32 %252, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = and i32 %253, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i32 %253, %252
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %27, align 1
  %266 = icmp eq i32 %253, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %30, align 1
  %268 = lshr i32 %253, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %33, align 1
  %270 = lshr i32 %252, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %39, align 1
  store i64 %254, i64* %RCX.i1599.pre-phi, align 8
  %275 = add i64 %212, 35
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %216, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RAX.i1663, align 8
  %278 = add i64 %212, 37
  store i64 %278, i64* %3, align 8
  %279 = trunc i32 %253 to i5
  switch i5 %279, label %285 [
    i5 0, label %routine_shll__cl___eax.exit1563
    i5 1, label %280
  ]

; <label>:280:                                    ; preds = %routine_shll__cl___eax.exit1579
  %281 = shl i32 %276, 1
  %282 = icmp slt i32 %276, 0
  %283 = icmp slt i32 %281, 0
  %284 = xor i1 %282, %283
  br label %294

; <label>:285:                                    ; preds = %routine_shll__cl___eax.exit1579
  %286 = and i32 %253, 31
  %287 = zext i32 %286 to i64
  %288 = add nuw nsw i64 %287, 4294967295
  %289 = and i64 %288, 4294967295
  %290 = shl i64 %277, %289
  %291 = trunc i64 %290 to i32
  %292 = icmp slt i32 %291, 0
  %293 = shl i32 %291, 1
  br label %294

; <label>:294:                                    ; preds = %285, %280
  %295 = phi i1 [ %282, %280 ], [ %292, %285 ]
  %296 = phi i1 [ %284, %280 ], [ false, %285 ]
  %297 = phi i32 [ %281, %280 ], [ %293, %285 ]
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i1663, align 8
  %299 = zext i1 %295 to i8
  store i8 %299, i8* %14, align 1
  %300 = and i32 %297, 254
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %305 = icmp eq i32 %297, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i32 %297, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %33, align 1
  %309 = zext i1 %296 to i8
  store i8 %309, i8* %39, align 1
  br label %routine_shll__cl___eax.exit1563

routine_shll__cl___eax.exit1563:                  ; preds = %294, %routine_shll__cl___eax.exit1579
  %310 = phi i32 [ %297, %294 ], [ %276, %routine_shll__cl___eax.exit1579 ]
  store i32 %310, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %311 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RCX.i1599.pre-phi, align 8
  %313 = add i64 %212, 57
  store i64 %313, i64* %3, align 8
  %314 = load i32, i32* %216, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX.i1663, align 8
  %316 = add i64 %212, 59
  store i64 %316, i64* %3, align 8
  %317 = trunc i32 %311 to i5
  switch i5 %317, label %323 [
    i5 0, label %routine_shll__cl___eax.exit1552
    i5 1, label %318
  ]

; <label>:318:                                    ; preds = %routine_shll__cl___eax.exit1563
  %319 = shl i32 %314, 1
  %320 = icmp slt i32 %314, 0
  %321 = icmp slt i32 %319, 0
  %322 = xor i1 %320, %321
  br label %332

; <label>:323:                                    ; preds = %routine_shll__cl___eax.exit1563
  %324 = and i32 %311, 31
  %325 = zext i32 %324 to i64
  %326 = add nuw nsw i64 %325, 4294967295
  %327 = and i64 %326, 4294967295
  %328 = shl i64 %315, %327
  %329 = trunc i64 %328 to i32
  %330 = icmp slt i32 %329, 0
  %331 = shl i32 %329, 1
  br label %332

; <label>:332:                                    ; preds = %323, %318
  %333 = phi i1 [ %320, %318 ], [ %330, %323 ]
  %334 = phi i1 [ %322, %318 ], [ false, %323 ]
  %335 = phi i32 [ %319, %318 ], [ %331, %323 ]
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i1663, align 8
  %337 = zext i1 %333 to i8
  store i8 %337, i8* %14, align 1
  %338 = and i32 %335, 254
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %343 = icmp eq i32 %335, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %30, align 1
  %345 = lshr i32 %335, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %33, align 1
  %347 = zext i1 %334 to i8
  store i8 %347, i8* %39, align 1
  br label %routine_shll__cl___eax.exit1552

routine_shll__cl___eax.exit1552:                  ; preds = %332, %routine_shll__cl___eax.exit1563
  %348 = phi i32 [ %335, %332 ], [ %314, %routine_shll__cl___eax.exit1563 ]
  %349 = add i64 %213, -188
  %350 = add i64 %212, 65
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  store i32 %348, i32* %351, align 4
  %352 = load i64, i64* %3, align 8
  %353 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RCX.i1599.pre-phi, align 8
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -944
  %357 = add i64 %352, 13
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i1663, align 8
  %361 = add i64 %352, 15
  store i64 %361, i64* %3, align 8
  %362 = trunc i32 %353 to i5
  switch i5 %362, label %368 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %363
  ]

; <label>:363:                                    ; preds = %routine_shll__cl___eax.exit1552
  %364 = shl i32 %359, 1
  %365 = icmp slt i32 %359, 0
  %366 = icmp slt i32 %364, 0
  %367 = xor i1 %365, %366
  br label %377

; <label>:368:                                    ; preds = %routine_shll__cl___eax.exit1552
  %369 = and i32 %353, 31
  %370 = zext i32 %369 to i64
  %371 = add nuw nsw i64 %370, 4294967295
  %372 = and i64 %371, 4294967295
  %373 = shl i64 %360, %372
  %374 = trunc i64 %373 to i32
  %375 = icmp slt i32 %374, 0
  %376 = shl i32 %374, 1
  br label %377

; <label>:377:                                    ; preds = %368, %363
  %378 = phi i1 [ %365, %363 ], [ %375, %368 ]
  %379 = phi i1 [ %367, %363 ], [ false, %368 ]
  %380 = phi i32 [ %364, %363 ], [ %376, %368 ]
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i1663, align 8
  %382 = zext i1 %378 to i8
  store i8 %382, i8* %14, align 1
  %383 = and i32 %380, 254
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %388 = icmp eq i32 %380, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %30, align 1
  %390 = lshr i32 %380, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %33, align 1
  %392 = zext i1 %379 to i8
  store i8 %392, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %377, %routine_shll__cl___eax.exit1552
  %393 = phi i32 [ %380, %377 ], [ %359, %routine_shll__cl___eax.exit1552 ]
  %394 = add i64 %355, -180
  %395 = add i64 %352, 21
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  store i32 %393, i32* %396, align 4
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -184
  %399 = load i32, i32* %EAX.i1596.pre-phi, align 4
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 6
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %402, align 4
  %403 = load i64, i64* %RBP.i, align 8
  %404 = add i64 %403, -8
  %405 = load i64, i64* %3, align 8
  %406 = add i64 %405, 7
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %404 to i32*
  store i32 0, i32* %407, align 4
  %RDX.i1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1490 = getelementptr inbounds %union.anon, %union.anon* %408, i64 0, i32 0
  %ESI.i1466 = bitcast %union.anon* %408 to i32*
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4adc4b

block_.L_4adc4b:                                  ; preds = %block_.L_4add56, %routine_shll__cl___eax.exit
  %409 = phi i64 [ %858, %block_.L_4add56 ], [ %.pre73, %routine_shll__cl___eax.exit ]
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -8
  %412 = add i64 %409, 3
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX.i1663, align 8
  %416 = add i64 %410, -192
  %417 = add i64 %409, 9
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = add i32 %419, 2
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RCX.i1599.pre-phi, align 8
  %422 = lshr i32 %420, 31
  %423 = sub i32 %414, %420
  %424 = icmp ult i32 %414, %420
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %14, align 1
  %426 = and i32 %423, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %21, align 1
  %431 = xor i32 %420, %414
  %432 = xor i32 %431, %423
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %27, align 1
  %436 = icmp eq i32 %423, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %30, align 1
  %438 = lshr i32 %423, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %33, align 1
  %440 = lshr i32 %414, 31
  %441 = xor i32 %422, %440
  %442 = xor i32 %438, %440
  %443 = add nuw nsw i32 %442, %441
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %39, align 1
  %446 = icmp ne i8 %439, 0
  %447 = xor i1 %446, %444
  %.v113 = select i1 %447, i64 20, i64 286
  %448 = add i64 %409, %.v113
  store i64 %448, i64* %3, align 8
  br i1 %447, label %block_4adc5f, label %block_.L_4add69

block_4adc5f:                                     ; preds = %block_.L_4adc4b
  %449 = add i64 %410, -12
  %450 = add i64 %448, 7
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  store i32 0, i32* %451, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_4adc66

block_.L_4adc66:                                  ; preds = %block_.L_4add43, %block_4adc5f
  %452 = phi i64 [ %830, %block_.L_4add43 ], [ %.pre98, %block_4adc5f ]
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -12
  %455 = add i64 %452, 3
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i1663, align 8
  %459 = add i64 %453, -8
  %460 = add i64 %452, 7
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RCX.i1599.pre-phi, align 8
  %464 = shl nsw i64 %463, 2
  %465 = add nsw i64 %464, 7489456
  %466 = add i64 %452, 14
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = sub i32 %457, %468
  %470 = icmp ult i32 %457, %468
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %14, align 1
  %472 = and i32 %469, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %21, align 1
  %477 = xor i32 %468, %457
  %478 = xor i32 %477, %469
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %27, align 1
  %482 = icmp eq i32 %469, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %30, align 1
  %484 = lshr i32 %469, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %33, align 1
  %486 = lshr i32 %457, 31
  %487 = lshr i32 %468, 31
  %488 = xor i32 %487, %486
  %489 = xor i32 %484, %486
  %490 = add nuw nsw i32 %489, %488
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %39, align 1
  %493 = icmp ne i8 %485, 0
  %494 = xor i1 %493, %491
  %.v109 = select i1 %494, i64 20, i64 240
  %495 = add i64 %452, %.v109
  store i64 %495, i64* %3, align 8
  br i1 %494, label %block_4adc7a, label %block_.L_4add56

block_4adc7a:                                     ; preds = %block_.L_4adc66
  %496 = add i64 %453, -16
  %497 = add i64 %495, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 0, i32* %498, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_4adc81

block_.L_4adc81:                                  ; preds = %block_4adc8b, %block_4adc7a
  %499 = phi i64 [ %800, %block_4adc8b ], [ %.pre99, %block_4adc7a ]
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -16
  %502 = add i64 %499, 4
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, -3
  %506 = icmp ult i32 %504, 3
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = and i32 %505, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  %513 = xor i32 %505, %504
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %27, align 1
  %517 = icmp eq i32 %505, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %30, align 1
  %519 = lshr i32 %505, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %33, align 1
  %521 = lshr i32 %504, 31
  %522 = xor i32 %519, %521
  %523 = add nuw nsw i32 %522, %521
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %39, align 1
  %526 = icmp ne i8 %520, 0
  %527 = xor i1 %526, %524
  %.v110 = select i1 %527, i64 10, i64 194
  %528 = add i64 %499, %.v110
  store i64 %528, i64* %3, align 8
  br i1 %527, label %block_4adc8b, label %block_.L_4add43

block_4adc8b:                                     ; preds = %block_.L_4adc81
  %529 = add i64 %500, -928
  store i64 %529, i64* %RAX.i1663, align 8
  %530 = add i64 %500, -560
  store i64 %530, i64* %RCX.i1599.pre-phi, align 8
  %531 = add i64 %528, 18
  store i64 %531, i64* %3, align 8
  %532 = load i32, i32* %503, align 4
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %RDX.i1493, align 8
  %534 = shl nsw i64 %533, 2
  %535 = add i64 %500, -188
  %536 = add i64 %535, %534
  %537 = add i64 %528, 25
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RSI.i1490, align 8
  %541 = add i64 %500, -8
  %542 = add i64 %528, 29
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = mul nsw i64 %545, 180
  store i64 %546, i64* %RDX.i1493, align 8
  %547 = lshr i64 %546, 63
  %548 = add i64 %546, %530
  store i64 %548, i64* %RCX.i1599.pre-phi, align 8
  %549 = icmp ult i64 %548, %530
  %550 = icmp ult i64 %548, %546
  %551 = or i1 %549, %550
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %14, align 1
  %553 = trunc i64 %548 to i32
  %554 = and i32 %553, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  %559 = xor i64 %546, %530
  %560 = xor i64 %559, %548
  %561 = lshr i64 %560, 4
  %562 = trunc i64 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %27, align 1
  %564 = icmp eq i64 %548, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %30, align 1
  %566 = lshr i64 %548, 63
  %567 = trunc i64 %566 to i8
  store i8 %567, i8* %33, align 1
  %568 = lshr i64 %530, 63
  %569 = xor i64 %566, %568
  %570 = xor i64 %566, %547
  %571 = add nuw nsw i64 %569, %570
  %572 = icmp eq i64 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %39, align 1
  %574 = add i64 %500, -12
  %575 = add i64 %528, 43
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = mul nsw i64 %578, 12
  store i64 %579, i64* %RDX.i1493, align 8
  %580 = lshr i64 %579, 63
  %581 = add i64 %579, %548
  store i64 %581, i64* %RCX.i1599.pre-phi, align 8
  %582 = icmp ult i64 %581, %548
  %583 = icmp ult i64 %581, %579
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %14, align 1
  %586 = trunc i64 %581 to i32
  %587 = and i32 %586, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  %592 = xor i64 %579, %548
  %593 = xor i64 %592, %581
  %594 = lshr i64 %593, 4
  %595 = trunc i64 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %27, align 1
  %597 = icmp eq i64 %581, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %30, align 1
  %599 = lshr i64 %581, 63
  %600 = trunc i64 %599 to i8
  store i8 %600, i8* %33, align 1
  %601 = xor i64 %599, %566
  %602 = xor i64 %599, %580
  %603 = add nuw nsw i64 %601, %602
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %39, align 1
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -16
  %608 = add i64 %528, 54
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sext i32 %610 to i64
  store i64 %611, i64* %RDX.i1493, align 8
  %612 = shl nsw i64 %611, 2
  %613 = add i64 %612, %581
  %614 = load i32, i32* %ESI.i1466, align 4
  %615 = add i64 %528, 57
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %613 to i32*
  store i32 %614, i32* %616, align 4
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -16
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = sext i32 %622 to i64
  store i64 %623, i64* %RCX.i1599.pre-phi, align 8
  %624 = shl nsw i64 %623, 2
  %625 = add i64 %617, -188
  %626 = add i64 %625, %624
  %627 = add i64 %619, 11
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RSI.i1490, align 8
  %631 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %631, i64* %RCX.i1599.pre-phi, align 8
  %632 = add i64 %617, -8
  %633 = add i64 %619, 23
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RDX.i1493, align 8
  %637 = shl nsw i64 %636, 3
  %638 = add i64 %637, %631
  %639 = add i64 %619, 27
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RCX.i1599.pre-phi, align 8
  %642 = add i64 %617, -12
  %643 = add i64 %619, 31
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %RDX.i1493, align 8
  %647 = shl nsw i64 %646, 3
  %648 = add i64 %647, %641
  %649 = add i64 %619, 35
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RCX.i1599.pre-phi, align 8
  %652 = add i64 %619, 39
  store i64 %652, i64* %3, align 8
  %653 = load i32, i32* %621, align 4
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RDX.i1493, align 8
  %655 = shl nsw i64 %654, 2
  %656 = add i64 %655, %651
  %657 = add i64 %619, 42
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  store i32 %629, i32* %658, align 4
  %659 = load i64, i64* %3, align 8
  %660 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %660, i64* %RCX.i1599.pre-phi, align 8
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -8
  %663 = add i64 %659, 12
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RDX.i1493, align 8
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %660
  %669 = add i64 %659, 16
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RCX.i1599.pre-phi, align 8
  %672 = add i64 %661, -12
  %673 = add i64 %659, 20
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RDX.i1493, align 8
  %677 = shl nsw i64 %676, 3
  %678 = add i64 %677, %671
  %679 = add i64 %659, 24
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %RCX.i1599.pre-phi, align 8
  %682 = add i64 %661, -16
  %683 = add i64 %659, 28
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = sext i32 %685 to i64
  store i64 %686, i64* %RDX.i1493, align 8
  %687 = shl nsw i64 %686, 2
  %688 = add i64 %687, %681
  %689 = add i64 %659, 35
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  store i32 0, i32* %690, align 4
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -8
  %693 = load i64, i64* %3, align 8
  %694 = add i64 %693, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %692 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = sext i32 %696 to i64
  %698 = mul nsw i64 %697, 180
  store i64 %698, i64* %RCX.i1599.pre-phi, align 8
  %699 = lshr i64 %698, 63
  %700 = load i64, i64* %RAX.i1663, align 8
  %701 = add i64 %698, %700
  store i64 %701, i64* %RAX.i1663, align 8
  %702 = icmp ult i64 %701, %700
  %703 = icmp ult i64 %701, %698
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %14, align 1
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  %712 = xor i64 %698, %700
  %713 = xor i64 %712, %701
  %714 = lshr i64 %713, 4
  %715 = trunc i64 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %27, align 1
  %717 = icmp eq i64 %701, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %30, align 1
  %719 = lshr i64 %701, 63
  %720 = trunc i64 %719 to i8
  store i8 %720, i8* %33, align 1
  %721 = lshr i64 %700, 63
  %722 = xor i64 %719, %721
  %723 = xor i64 %719, %699
  %724 = add nuw nsw i64 %722, %723
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %39, align 1
  %727 = add i64 %691, -12
  %728 = add i64 %693, 18
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = sext i32 %730 to i64
  %732 = mul nsw i64 %731, 12
  store i64 %732, i64* %RCX.i1599.pre-phi, align 8
  %733 = lshr i64 %732, 63
  %734 = add i64 %732, %701
  store i64 %734, i64* %RAX.i1663, align 8
  %735 = icmp ult i64 %734, %701
  %736 = icmp ult i64 %734, %732
  %737 = or i1 %735, %736
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %14, align 1
  %739 = trunc i64 %734 to i32
  %740 = and i32 %739, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  %745 = xor i64 %732, %701
  %746 = xor i64 %745, %734
  %747 = lshr i64 %746, 4
  %748 = trunc i64 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %27, align 1
  %750 = icmp eq i64 %734, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %30, align 1
  %752 = lshr i64 %734, 63
  %753 = trunc i64 %752 to i8
  store i8 %753, i8* %33, align 1
  %754 = xor i64 %752, %719
  %755 = xor i64 %752, %733
  %756 = add nuw nsw i64 %754, %755
  %757 = icmp eq i64 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %39, align 1
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -16
  %761 = add i64 %693, 29
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = sext i32 %763 to i64
  store i64 %764, i64* %RCX.i1599.pre-phi, align 8
  %765 = shl nsw i64 %764, 2
  %766 = add i64 %765, %734
  %767 = add i64 %693, 36
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  store i32 0, i32* %768, align 4
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -16
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 3
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = add i32 %774, 1
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i1663, align 8
  %777 = icmp eq i32 %774, -1
  %778 = icmp eq i32 %775, 0
  %779 = or i1 %777, %778
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = and i32 %775, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  %786 = xor i32 %775, %774
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %27, align 1
  %790 = zext i1 %778 to i8
  store i8 %790, i8* %30, align 1
  %791 = lshr i32 %775, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %33, align 1
  %793 = lshr i32 %774, 31
  %794 = xor i32 %791, %793
  %795 = add nuw nsw i32 %794, %791
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %39, align 1
  %798 = add i64 %771, 9
  store i64 %798, i64* %3, align 8
  store i32 %775, i32* %773, align 4
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, -189
  store i64 %800, i64* %3, align 8
  br label %block_.L_4adc81

block_.L_4add43:                                  ; preds = %block_.L_4adc81
  %801 = add i64 %500, -12
  %802 = add i64 %528, 8
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = add i32 %804, 1
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX.i1663, align 8
  %807 = icmp eq i32 %804, -1
  %808 = icmp eq i32 %805, 0
  %809 = or i1 %807, %808
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %14, align 1
  %811 = and i32 %805, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  %816 = xor i32 %805, %804
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %27, align 1
  %820 = zext i1 %808 to i8
  store i8 %820, i8* %30, align 1
  %821 = lshr i32 %805, 31
  %822 = trunc i32 %821 to i8
  store i8 %822, i8* %33, align 1
  %823 = lshr i32 %804, 31
  %824 = xor i32 %821, %823
  %825 = add nuw nsw i32 %824, %821
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %39, align 1
  %828 = add i64 %528, 14
  store i64 %828, i64* %3, align 8
  store i32 %805, i32* %803, align 4
  %829 = load i64, i64* %3, align 8
  %830 = add i64 %829, -235
  store i64 %830, i64* %3, align 8
  br label %block_.L_4adc66

block_.L_4add56:                                  ; preds = %block_.L_4adc66
  %831 = add i64 %495, 8
  store i64 %831, i64* %3, align 8
  %832 = load i32, i32* %461, align 4
  %833 = add i32 %832, 1
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RAX.i1663, align 8
  %835 = icmp eq i32 %832, -1
  %836 = icmp eq i32 %833, 0
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %14, align 1
  %839 = and i32 %833, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %21, align 1
  %844 = xor i32 %833, %832
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %27, align 1
  %848 = zext i1 %836 to i8
  store i8 %848, i8* %30, align 1
  %849 = lshr i32 %833, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %33, align 1
  %851 = lshr i32 %832, 31
  %852 = xor i32 %849, %851
  %853 = add nuw nsw i32 %852, %849
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %39, align 1
  %856 = add i64 %495, 14
  store i64 %856, i64* %3, align 8
  store i32 %833, i32* %461, align 4
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, -281
  store i64 %858, i64* %3, align 8
  br label %block_.L_4adc4b

block_.L_4add69:                                  ; preds = %block_.L_4adc4b
  %859 = add i64 %448, 7
  store i64 %859, i64* %3, align 8
  store i32 0, i32* %413, align 4
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1332 = getelementptr inbounds %union.anon, %union.anon* %860, i64 0, i32 0
  %EDX.i1327 = bitcast %union.anon* %860 to i32*
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_4add70

block_.L_4add70:                                  ; preds = %block_.L_4addd2, %block_.L_4add69
  %861 = phi i64 [ %1034, %block_.L_4addd2 ], [ %.pre74, %block_.L_4add69 ]
  %862 = load i64, i64* %RBP.i, align 8
  %863 = add i64 %862, -8
  %864 = add i64 %861, 3
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %RAX.i1663, align 8
  %868 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %868, i64* %RCX.i1599.pre-phi, align 8
  %869 = add i64 %868, 60
  %870 = add i64 %861, 14
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = sub i32 %866, %872
  %874 = icmp ult i32 %866, %872
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = and i32 %873, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %21, align 1
  %881 = xor i32 %872, %866
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
  %890 = lshr i32 %866, 31
  %891 = lshr i32 %872, 31
  %892 = xor i32 %891, %890
  %893 = xor i32 %888, %890
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %39, align 1
  %897 = icmp ne i8 %889, 0
  %898 = xor i1 %897, %895
  %.v114 = select i1 %898, i64 20, i64 117
  %899 = add i64 %861, %.v114
  store i64 %899, i64* %3, align 8
  br i1 %898, label %block_4add84, label %block_.L_4adde5

block_4add84:                                     ; preds = %block_.L_4add70
  %900 = add i64 %862, -12
  %901 = add i64 %899, 7
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  store i32 0, i32* %902, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_4add8b

block_.L_4add8b:                                  ; preds = %block_4add9f, %block_4add84
  %903 = phi i64 [ %1004, %block_4add9f ], [ %.pre97, %block_4add84 ]
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -12
  %906 = add i64 %903, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i1663, align 8
  %910 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %910, i64* %RCX.i1599.pre-phi, align 8
  %911 = add i64 %910, 52
  %912 = add i64 %903, 14
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = sub i32 %908, %914
  %916 = icmp ult i32 %908, %914
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %14, align 1
  %918 = and i32 %915, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  %923 = xor i32 %914, %908
  %924 = xor i32 %923, %915
  %925 = lshr i32 %924, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %27, align 1
  %928 = icmp eq i32 %915, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %30, align 1
  %930 = lshr i32 %915, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %33, align 1
  %932 = lshr i32 %908, 31
  %933 = lshr i32 %914, 31
  %934 = xor i32 %933, %932
  %935 = xor i32 %930, %932
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %39, align 1
  %939 = icmp ne i8 %931, 0
  %940 = xor i1 %939, %937
  %.v108 = select i1 %940, i64 20, i64 71
  %941 = add i64 %903, %.v108
  store i64 %941, i64* %3, align 8
  br i1 %940, label %block_4add9f, label %block_.L_4addd2

block_4add9f:                                     ; preds = %block_.L_4add8b
  %942 = add i64 %941, ptrtoint (%G_0x278672__rip__type* @G_0x278672__rip_ to i64)
  %943 = add i64 %941, 7
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX.i1663, align 8
  %946 = add i64 %904, -8
  %947 = add i64 %941, 11
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RCX.i1599.pre-phi, align 8
  %951 = shl nsw i64 %950, 3
  %952 = add i64 %951, %945
  %953 = add i64 %941, 15
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX.i1663, align 8
  %956 = add i64 %941, 19
  store i64 %956, i64* %3, align 8
  %957 = load i32, i32* %907, align 4
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RCX.i1599.pre-phi, align 8
  %959 = shl nsw i64 %958, 1
  %960 = add i64 %959, %955
  %961 = add i64 %941, 23
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i16*
  %963 = load i16, i16* %962, align 2
  %964 = zext i16 %963 to i64
  store i64 %964, i64* %RDX.i1332, align 8
  %965 = uitofp i16 %963 to double
  store double %965, double* %52, align 1
  %966 = add i64 %904, -24
  %967 = add i64 %941, 32
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to double*
  %969 = load double, double* %968, align 8
  %970 = fadd double %965, %969
  store double %970, double* %52, align 1
  %971 = add i64 %941, 37
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %966 to double*
  store double %970, double* %972, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -12
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, 3
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %974 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = add i32 %978, 1
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RAX.i1663, align 8
  %981 = icmp eq i32 %978, -1
  %982 = icmp eq i32 %979, 0
  %983 = or i1 %981, %982
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %14, align 1
  %985 = and i32 %979, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %21, align 1
  %990 = xor i32 %979, %978
  %991 = lshr i32 %990, 4
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %27, align 1
  %994 = zext i1 %982 to i8
  store i8 %994, i8* %30, align 1
  %995 = lshr i32 %979, 31
  %996 = trunc i32 %995 to i8
  store i8 %996, i8* %33, align 1
  %997 = lshr i32 %978, 31
  %998 = xor i32 %995, %997
  %999 = add nuw nsw i32 %998, %995
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %39, align 1
  %1002 = add i64 %975, 9
  store i64 %1002, i64* %3, align 8
  store i32 %979, i32* %977, align 4
  %1003 = load i64, i64* %3, align 8
  %1004 = add i64 %1003, -66
  store i64 %1004, i64* %3, align 8
  br label %block_.L_4add8b

block_.L_4addd2:                                  ; preds = %block_.L_4add8b
  %1005 = add i64 %904, -8
  %1006 = add i64 %941, 8
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = add i32 %1008, 1
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RAX.i1663, align 8
  %1011 = icmp eq i32 %1008, -1
  %1012 = icmp eq i32 %1009, 0
  %1013 = or i1 %1011, %1012
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %14, align 1
  %1015 = and i32 %1009, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %21, align 1
  %1020 = xor i32 %1009, %1008
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %27, align 1
  %1024 = zext i1 %1012 to i8
  store i8 %1024, i8* %30, align 1
  %1025 = lshr i32 %1009, 31
  %1026 = trunc i32 %1025 to i8
  store i8 %1026, i8* %33, align 1
  %1027 = lshr i32 %1008, 31
  %1028 = xor i32 %1025, %1027
  %1029 = add nuw nsw i32 %1028, %1025
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %39, align 1
  %1032 = add i64 %941, 14
  store i64 %1032, i64* %3, align 8
  store i32 %1009, i32* %1007, align 4
  %1033 = load i64, i64* %3, align 8
  %1034 = add i64 %1033, -112
  store i64 %1034, i64* %3, align 8
  br label %block_.L_4add70

block_.L_4adde5:                                  ; preds = %block_.L_4add70
  %1035 = add i64 %862, -932
  %1036 = add i64 %899, 10
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  store i32 0, i32* %1037, align 4
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1039 = bitcast %union.VectorReg* %1038 to double*
  %1040 = bitcast i64* %41 to double*
  %1041 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1038, i64 0, i32 0, i32 0, i32 0, i64 0
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1043 = bitcast i64* %1042 to double*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1045 = bitcast %union.VectorReg* %1044 to double*
  %RSI.i972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i740 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %CX.i529 = bitcast %union.anon* %.pre-phi to i16*
  %.pre75 = load i64, i64* %3, align 8
  %1046 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  %1047 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  %1048 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  br label %block_.L_4addef

block_.L_4addef:                                  ; preds = %block_.L_4ae644, %block_.L_4adde5
  %1049 = phi i64 [ %.pre75, %block_.L_4adde5 ], [ %4608, %block_.L_4ae644 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4adde5 ], [ %MEMORY.8, %block_.L_4ae644 ]
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -932
  %1052 = add i64 %1049, 6
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i1663, align 8
  %1056 = add i64 %1050, -192
  %1057 = add i64 %1049, 12
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, 2
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RCX.i1599.pre-phi, align 8
  %1062 = lshr i32 %1060, 31
  %1063 = sub i32 %1054, %1060
  %1064 = icmp ult i32 %1054, %1060
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %14, align 1
  %1066 = and i32 %1063, 255
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  store i8 %1070, i8* %21, align 1
  %1071 = xor i32 %1060, %1054
  %1072 = xor i32 %1071, %1063
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  store i8 %1075, i8* %27, align 1
  %1076 = icmp eq i32 %1063, 0
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %30, align 1
  %1078 = lshr i32 %1063, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %33, align 1
  %1080 = lshr i32 %1054, 31
  %1081 = xor i32 %1062, %1080
  %1082 = xor i32 %1078, %1080
  %1083 = add nuw nsw i32 %1082, %1081
  %1084 = icmp eq i32 %1083, 2
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %39, align 1
  %1086 = icmp ne i8 %1079, 0
  %1087 = xor i1 %1086, %1084
  %.v115 = select i1 %1087, i64 23, i64 2158
  %1088 = add i64 %1049, %.v115
  store i64 %1088, i64* %3, align 8
  br i1 %1087, label %block_4ade06, label %block_.L_4ae65d

block_4ade06:                                     ; preds = %block_.L_4addef
  %1089 = add i64 %1050, -16
  %1090 = add i64 %1088, 7
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  store i32 0, i32* %1091, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_4ade0d

block_.L_4ade0d:                                  ; preds = %block_.L_4ae631, %block_4ade06
  %1092 = phi i64 [ %.pre79, %block_4ade06 ], [ %4580, %block_.L_4ae631 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_4ade06 ], [ %MEMORY.17, %block_.L_4ae631 ]
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -16
  %1095 = add i64 %1092, 3
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i1663, align 8
  %1099 = add i64 %1093, -932
  %1100 = add i64 %1092, 10
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = sext i32 %1102 to i64
  store i64 %1103, i64* %RCX.i1599.pre-phi, align 8
  %1104 = shl nsw i64 %1103, 2
  %1105 = add nsw i64 %1104, 7489456
  %1106 = add i64 %1092, 17
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = sub i32 %1097, %1108
  %1110 = icmp ult i32 %1097, %1108
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %14, align 1
  %1112 = and i32 %1109, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112)
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %21, align 1
  %1117 = xor i32 %1108, %1097
  %1118 = xor i32 %1117, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %27, align 1
  %1122 = icmp eq i32 %1109, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1109, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  %1126 = lshr i32 %1097, 31
  %1127 = lshr i32 %1108, 31
  %1128 = xor i32 %1127, %1126
  %1129 = xor i32 %1124, %1126
  %1130 = add nuw nsw i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %39, align 1
  %1133 = icmp ne i8 %1125, 0
  %1134 = xor i1 %1133, %1131
  %.v107 = select i1 %1134, i64 23, i64 2103
  %1135 = add i64 %1092, %.v107
  store i64 %1135, i64* %3, align 8
  br i1 %1134, label %block_4ade24, label %block_.L_4ae644

block_4ade24:                                     ; preds = %block_.L_4ade0d
  store <4 x i32> zeroinitializer, <4 x i32>* %1046, align 1
  %1136 = add i64 %1135, 7
  store i64 %1136, i64* %3, align 8
  %1137 = load i32, i32* %1096, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i1663, align 8
  %1139 = shl nsw i64 %1138, 3
  %1140 = add i64 %1093, -160
  %1141 = add i64 %1140, %1139
  %1142 = add i64 %1135, 16
  store i64 %1142, i64* %3, align 8
  %1143 = load i64, i64* %53, align 1
  %1144 = inttoptr i64 %1141 to i64*
  store i64 %1143, i64* %1144, align 8
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -932
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 7
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i1663, align 8
  %1152 = shl nsw i64 %1151, 3
  %1153 = add nsw i64 %1152, 7482144
  %1154 = add i64 %1147, 15
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RAX.i1663, align 8
  %1157 = add i64 %1145, -16
  %1158 = add i64 %1147, 19
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sext i32 %1160 to i64
  store i64 %1161, i64* %RCX.i1599.pre-phi, align 8
  %1162 = shl nsw i64 %1161, 3
  %1163 = add i64 %1162, %1156
  %1164 = add i64 %1147, 23
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i64*
  %1166 = load i64, i64* %1165, align 8
  store i64 %1166, i64* %RAX.i1663, align 8
  %1167 = add i64 %1166, 6432
  %1168 = add i64 %1147, 30
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i1663, align 8
  %1171 = add i64 %1145, -168
  %1172 = add i64 %1147, 37
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  store i64 %1170, i64* %1173, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -932
  %1176 = load i64, i64* %3, align 8
  %1177 = add i64 %1176, 7
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1175 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = sext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i1663, align 8
  %1181 = shl nsw i64 %1180, 3
  %1182 = add nsw i64 %1181, 7482144
  %1183 = add i64 %1176, 15
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %RAX.i1663, align 8
  %1186 = add i64 %1174, -16
  %1187 = add i64 %1176, 19
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = sext i32 %1189 to i64
  store i64 %1190, i64* %RCX.i1599.pre-phi, align 8
  %1191 = shl nsw i64 %1190, 3
  %1192 = add i64 %1191, %1185
  %1193 = add i64 %1176, 23
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RAX.i1663, align 8
  %1196 = add i64 %1195, 6440
  %1197 = add i64 %1176, 30
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RAX.i1663, align 8
  %1200 = add i64 %1174, -176
  %1201 = add i64 %1176, 37
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i64*
  store i64 %1199, i64* %1202, align 8
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -8
  %1205 = load i64, i64* %3, align 8
  %1206 = add i64 %1205, 7
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1204 to i32*
  store i32 0, i32* %1207, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_4ade85

block_.L_4ade85:                                  ; preds = %block_4adea7, %block_4ade24
  %1208 = phi i64 [ %1316, %block_4adea7 ], [ %.pre80, %block_4ade24 ]
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -8
  %1211 = add i64 %1208, 3
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = zext i32 %1213 to i64
  store i64 %1214, i64* %RAX.i1663, align 8
  %1215 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1215, i64* %RCX.i1599.pre-phi, align 8
  %1216 = add i64 %1215, 60
  %1217 = add i64 %1208, 14
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RDX.i1332, align 8
  store i64 %1215, i64* %RCX.i1599.pre-phi, align 8
  %1221 = add i64 %1215, 52
  %1222 = add i64 %1208, 26
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = sext i32 %1219 to i64
  %1226 = sext i32 %1224 to i64
  %1227 = mul nsw i64 %1226, %1225
  %1228 = and i64 %1227, 4294967295
  store i64 %1228, i64* %RDX.i1332, align 8
  %1229 = trunc i64 %1227 to i32
  %1230 = sub i32 %1213, %1229
  %1231 = icmp ult i32 %1213, %1229
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %14, align 1
  %1233 = and i32 %1230, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  %1238 = xor i32 %1229, %1213
  %1239 = xor i32 %1238, %1230
  %1240 = lshr i32 %1239, 4
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %27, align 1
  %1243 = icmp eq i32 %1230, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %30, align 1
  %1245 = lshr i32 %1230, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %33, align 1
  %1247 = lshr i32 %1213, 31
  %1248 = lshr i32 %1229, 31
  %1249 = xor i32 %1248, %1247
  %1250 = xor i32 %1245, %1247
  %1251 = add nuw nsw i32 %1250, %1249
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %39, align 1
  %1254 = icmp ne i8 %1246, 0
  %1255 = xor i1 %1254, %1252
  %.v117 = select i1 %1255, i64 34, i64 89
  %1256 = add i64 %1208, %.v117
  store i64 %1256, i64* %3, align 8
  br i1 %1255, label %block_4adea7, label %block_.L_4adede

block_4adea7:                                     ; preds = %block_.L_4ade85
  %1257 = add i64 %1209, -168
  %1258 = add i64 %1256, 7
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX.i1663, align 8
  %1261 = add i64 %1256, 11
  store i64 %1261, i64* %3, align 8
  %1262 = load i32, i32* %1212, align 4
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX.i1599.pre-phi, align 8
  %1264 = shl nsw i64 %1263, 1
  %1265 = add i64 %1264, %1260
  %1266 = add i64 %1256, 15
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i16*
  %1268 = load i16, i16* %1267, align 2
  %1269 = zext i16 %1268 to i64
  store i64 %1269, i64* %RDX.i1332, align 8
  %1270 = uitofp i16 %1268 to double
  store double %1270, double* %52, align 1
  %1271 = add i64 %1209, -16
  %1272 = add i64 %1256, 23
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = sext i32 %1274 to i64
  store i64 %1275, i64* %RAX.i1663, align 8
  %1276 = shl nsw i64 %1275, 3
  %1277 = add i64 %1209, -160
  %1278 = add i64 %1277, %1276
  %1279 = add i64 %1256, 32
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to double*
  %1281 = load double, double* %1280, align 8
  %1282 = fadd double %1270, %1281
  store double %1282, double* %52, align 1
  %1283 = add i64 %1256, 41
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1278 to double*
  store double %1282, double* %1284, align 8
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -8
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 3
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1286 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = add i32 %1290, 1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i1663, align 8
  %1293 = icmp eq i32 %1290, -1
  %1294 = icmp eq i32 %1291, 0
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %14, align 1
  %1297 = and i32 %1291, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %21, align 1
  %1302 = xor i32 %1291, %1290
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %27, align 1
  %1306 = zext i1 %1294 to i8
  store i8 %1306, i8* %30, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %33, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1307
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %39, align 1
  %1314 = add i64 %1287, 9
  store i64 %1314, i64* %3, align 8
  store i32 %1291, i32* %1289, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, -84
  store i64 %1316, i64* %3, align 8
  br label %block_.L_4ade85

block_.L_4adede:                                  ; preds = %block_.L_4ade85
  store <4 x i32> zeroinitializer, <4 x i32>* %1047, align 1
  %1317 = add i64 %1209, -4
  %1318 = add i64 %1256, 8
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = sitofp i32 %1320 to double
  store double %1321, double* %1039, align 1
  %1322 = add i64 %1256, 12
  store i64 %1322, i64* %3, align 8
  %1323 = load double, double* %52, align 1
  %1324 = fcmp uno double %1321, %1323
  br i1 %1324, label %1325, label %1335

; <label>:1325:                                   ; preds = %block_.L_4adede
  %1326 = fadd double %1321, %1323
  %1327 = bitcast double %1326 to i64
  %1328 = and i64 %1327, 9221120237041090560
  %1329 = icmp eq i64 %1328, 9218868437227405312
  %1330 = and i64 %1327, 2251799813685247
  %1331 = icmp ne i64 %1330, 0
  %1332 = and i1 %1329, %1331
  br i1 %1332, label %1333, label %1341

; <label>:1333:                                   ; preds = %1325
  %1334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1322, %struct.Memory* %MEMORY.8)
  %.pre81 = load i64, i64* %3, align 8
  %.pre82 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1172

; <label>:1335:                                   ; preds = %block_.L_4adede
  %1336 = fcmp ogt double %1321, %1323
  br i1 %1336, label %1341, label %1337

; <label>:1337:                                   ; preds = %1335
  %1338 = fcmp olt double %1321, %1323
  br i1 %1338, label %1341, label %1339

; <label>:1339:                                   ; preds = %1337
  %1340 = fcmp oeq double %1321, %1323
  br i1 %1340, label %1341, label %1345

; <label>:1341:                                   ; preds = %1339, %1337, %1335, %1325
  %1342 = phi i8 [ 0, %1335 ], [ 0, %1337 ], [ 1, %1339 ], [ 1, %1325 ]
  %1343 = phi i8 [ 0, %1335 ], [ 0, %1337 ], [ 0, %1339 ], [ 1, %1325 ]
  %1344 = phi i8 [ 0, %1335 ], [ 1, %1337 ], [ 0, %1339 ], [ 1, %1325 ]
  store i8 %1342, i8* %30, align 1
  store i8 %1343, i8* %21, align 1
  store i8 %1344, i8* %14, align 1
  br label %1345

; <label>:1345:                                   ; preds = %1341, %1339
  %1346 = phi i8 [ %1342, %1341 ], [ %1244, %1339 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1172

routine_ucomisd__xmm0___xmm1.exit1172:            ; preds = %1345, %1333
  %1347 = phi i8 [ %.pre82, %1333 ], [ %1346, %1345 ]
  %1348 = phi i64 [ %.pre81, %1333 ], [ %1322, %1345 ]
  %1349 = phi %struct.Memory* [ %1334, %1333 ], [ %MEMORY.8, %1345 ]
  %1350 = icmp eq i8 %1347, 0
  %.v118 = select i1 %1350, i64 312, i64 6
  %1351 = add i64 %1348, %.v118
  store i64 %1351, i64* %3, align 8
  br i1 %1350, label %block_.L_4ae022, label %block_4adef0

block_4adef0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1172
  %1352 = load i8, i8* %21, align 1
  %1353 = icmp ne i8 %1352, 0
  %.v154 = select i1 %1353, i64 306, i64 6
  %1354 = add i64 %1351, %.v154
  store i64 %1354, i64* %3, align 8
  %cmpBr_4adef0 = icmp eq i8 %1352, 1
  br i1 %cmpBr_4adef0, label %block_.L_4ae022, label %block_4adef6

block_4adef6:                                     ; preds = %block_4adef0
  store <4 x i32> zeroinitializer, <4 x i32>* %1048, align 1
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -16
  %1357 = add i64 %1354, 7
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = sext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i1663, align 8
  %1361 = shl nsw i64 %1360, 3
  %1362 = add i64 %1355, -160
  %1363 = add i64 %1362, %1361
  %1364 = add i64 %1354, 16
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %1041, align 1
  store double 0.000000e+00, double* %1043, align 1
  %1367 = add i64 %1354, 20
  store i64 %1367, i64* %3, align 8
  %.cast = bitcast i64 %1366 to double
  %1368 = load double, double* %52, align 1
  %1369 = fcmp uno double %.cast, %1368
  br i1 %1369, label %1370, label %1380

; <label>:1370:                                   ; preds = %block_4adef6
  %1371 = fadd double %.cast, %1368
  %1372 = bitcast double %1371 to i64
  %1373 = and i64 %1372, 9221120237041090560
  %1374 = icmp eq i64 %1373, 9218868437227405312
  %1375 = and i64 %1372, 2251799813685247
  %1376 = icmp ne i64 %1375, 0
  %1377 = and i1 %1374, %1376
  br i1 %1377, label %1378, label %1386

; <label>:1378:                                   ; preds = %1370
  %1379 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1367, %struct.Memory* %1349)
  %.pre83 = load i64, i64* %3, align 8
  %.pre84 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1380:                                   ; preds = %block_4adef6
  %1381 = fcmp ogt double %.cast, %1368
  br i1 %1381, label %1386, label %1382

; <label>:1382:                                   ; preds = %1380
  %1383 = fcmp olt double %.cast, %1368
  br i1 %1383, label %1386, label %1384

; <label>:1384:                                   ; preds = %1382
  %1385 = fcmp oeq double %.cast, %1368
  br i1 %1385, label %1386, label %1390

; <label>:1386:                                   ; preds = %1384, %1382, %1380, %1370
  %1387 = phi i8 [ 0, %1380 ], [ 0, %1382 ], [ 1, %1384 ], [ 1, %1370 ]
  %1388 = phi i8 [ 0, %1380 ], [ 0, %1382 ], [ 0, %1384 ], [ 1, %1370 ]
  %1389 = phi i8 [ 0, %1380 ], [ 1, %1382 ], [ 0, %1384 ], [ 1, %1370 ]
  store i8 %1387, i8* %30, align 1
  store i8 %1388, i8* %21, align 1
  store i8 %1389, i8* %14, align 1
  br label %1390

; <label>:1390:                                   ; preds = %1386, %1384
  %1391 = phi i8 [ %1387, %1386 ], [ %1347, %1384 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1390, %1378
  %1392 = phi i8 [ %.pre84, %1378 ], [ %1391, %1390 ]
  %1393 = phi i64 [ %.pre83, %1378 ], [ %1367, %1390 ]
  %1394 = phi %struct.Memory* [ %1379, %1378 ], [ %1349, %1390 ]
  %1395 = icmp eq i8 %1392, 0
  %.v119 = select i1 %1395, i64 17, i64 6
  %1396 = add i64 %1393, %.v119
  store i64 %1396, i64* %3, align 8
  br i1 %1395, label %block_.L_4adf1b, label %block_4adf10

block_4adf10:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1397 = load i8, i8* %21, align 1
  %1398 = icmp ne i8 %1397, 0
  %.v155 = select i1 %1398, i64 11, i64 6
  %1399 = add i64 %1396, %.v155
  store i64 %1399, i64* %3, align 8
  %cmpBr_4adf10 = icmp eq i8 %1397, 1
  br i1 %cmpBr_4adf10, label %block_.L_4adf1b, label %block_4adf16

block_4adf16:                                     ; preds = %block_4adf10
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -560
  store i64 %1401, i64* %RAX.i1663, align 8
  %1402 = add i64 %1400, -188
  %1403 = add i64 %1399, 102
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RCX.i1599.pre-phi, align 8
  %1407 = add i64 %1400, -932
  %1408 = add i64 %1399, 109
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = sext i32 %1410 to i64
  %1412 = mul nsw i64 %1411, 180
  store i64 %1412, i64* %RDX.i1332, align 8
  %1413 = lshr i64 %1412, 63
  %1414 = add i64 %1412, %1401
  store i64 %1414, i64* %RAX.i1663, align 8
  %1415 = icmp ult i64 %1414, %1401
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
  %1425 = xor i64 %1412, %1401
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
  %1434 = lshr i64 %1401, 63
  %1435 = xor i64 %1432, %1434
  %1436 = xor i64 %1432, %1413
  %1437 = add nuw nsw i64 %1435, %1436
  %1438 = icmp eq i64 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %39, align 1
  %1440 = add i64 %1400, -16
  %1441 = add i64 %1399, 123
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = mul nsw i64 %1444, 12
  store i64 %1445, i64* %RDX.i1332, align 8
  %1446 = lshr i64 %1445, 63
  %1447 = add i64 %1445, %1414
  store i64 %1447, i64* %RAX.i1663, align 8
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
  %1472 = inttoptr i64 %1447 to i32*
  %1473 = load i32, i32* %ECX.i1587.pre-phi, align 4
  %1474 = add i64 %1399, 132
  store i64 %1474, i64* %3, align 8
  store i32 %1473, i32* %1472, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_4adf9a

block_.L_4adf1b:                                  ; preds = %block_4adf10, %routine_ucomisd__xmm0___xmm1.exit
  %1475 = phi i64 [ %1399, %block_4adf10 ], [ %1396, %routine_ucomisd__xmm0___xmm1.exit ]
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -560
  store i64 %1477, i64* %RAX.i1663, align 8
  %1478 = add i64 %1475, add (i64 ptrtoint (%G_0x395e__rip__type* @G_0x395e__rip_ to i64), i64 7)
  %1479 = add i64 %1475, 15
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i64*
  %1481 = load i64, i64* %1480, align 8
  store i64 %1481, i64* %53, align 1
  store double 0.000000e+00, double* %1040, align 1
  %1482 = add i64 %1476, -188
  %1483 = add i64 %1475, 23
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = sitofp i32 %1485 to double
  store double %1486, double* %1039, align 1
  %1487 = add i64 %1476, -24
  %1488 = add i64 %1475, 28
  store i64 %1488, i64* %3, align 8
  %1489 = load i64, i64* %1042, align 1
  %1490 = inttoptr i64 %1487 to double*
  %1491 = load double, double* %1490, align 8
  %1492 = fmul double %1486, %1491
  store double %1492, double* %1039, align 1
  %1493 = add i64 %1476, -16
  %1494 = add i64 %1475, 32
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i1599.pre-phi, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1476, -160
  %1500 = add i64 %1499, %1498
  %1501 = add i64 %1475, 41
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to double*
  %1503 = load double, double* %1502, align 8
  %1504 = fdiv double %1492, %1503
  %1505 = bitcast i64 %1481 to double
  %1506 = fadd double %1504, %1505
  store double %1506, double* %1039, align 1
  store i64 %1489, i64* %1042, align 1
  %1507 = tail call double @llvm.trunc.f64(double %1506)
  %1508 = tail call double @llvm.fabs.f64(double %1507)
  %1509 = fcmp ogt double %1508, 0x41DFFFFFFFC00000
  %1510 = fptosi double %1507 to i32
  %1511 = zext i32 %1510 to i64
  %1512 = select i1 %1509, i64 2147483648, i64 %1511
  store i64 %1512, i64* %RDX.i1332, align 8
  %1513 = add i64 %1476, -932
  %1514 = add i64 %1475, 56
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = sext i32 %1516 to i64
  %1518 = mul nsw i64 %1517, 180
  store i64 %1518, i64* %RCX.i1599.pre-phi, align 8
  %1519 = lshr i64 %1518, 63
  %1520 = add i64 %1518, %1477
  store i64 %1520, i64* %RAX.i1663, align 8
  %1521 = icmp ult i64 %1520, %1477
  %1522 = icmp ult i64 %1520, %1518
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
  %1531 = xor i64 %1518, %1477
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
  %1540 = lshr i64 %1477, 63
  %1541 = xor i64 %1538, %1540
  %1542 = xor i64 %1538, %1519
  %1543 = add nuw nsw i64 %1541, %1542
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %39, align 1
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -16
  %1548 = add i64 %1475, 70
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = sext i32 %1550 to i64
  %1552 = mul nsw i64 %1551, 12
  store i64 %1552, i64* %RCX.i1599.pre-phi, align 8
  %1553 = lshr i64 %1552, 63
  %1554 = add i64 %1552, %1520
  store i64 %1554, i64* %RAX.i1663, align 8
  %1555 = icmp ult i64 %1554, %1520
  %1556 = icmp ult i64 %1554, %1552
  %1557 = or i1 %1555, %1556
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %14, align 1
  %1559 = trunc i64 %1554 to i32
  %1560 = and i32 %1559, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %21, align 1
  %1565 = xor i64 %1552, %1520
  %1566 = xor i64 %1565, %1554
  %1567 = lshr i64 %1566, 4
  %1568 = trunc i64 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %27, align 1
  %1570 = icmp eq i64 %1554, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %30, align 1
  %1572 = lshr i64 %1554, 63
  %1573 = trunc i64 %1572 to i8
  store i8 %1573, i8* %33, align 1
  %1574 = xor i64 %1572, %1538
  %1575 = xor i64 %1572, %1553
  %1576 = add nuw nsw i64 %1574, %1575
  %1577 = icmp eq i64 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %39, align 1
  %1579 = inttoptr i64 %1554 to i32*
  %1580 = load i32, i32* %EDX.i1327, align 4
  %1581 = add i64 %1475, 79
  store i64 %1581, i64* %3, align 8
  store i32 %1580, i32* %1579, align 4
  %1582 = load i64, i64* %3, align 8
  %1583 = add i64 %1582, 48
  store i64 %1583, i64* %3, align 8
  br label %block_.L_4adf9a

block_.L_4adf9a:                                  ; preds = %block_4adf16, %block_.L_4adf1b
  %1584 = phi i64 [ %.pre85, %block_4adf16 ], [ %1583, %block_.L_4adf1b ]
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -560
  store i64 %1586, i64* %RAX.i1663, align 8
  %1587 = add i64 %1585, -932
  %1588 = add i64 %1584, 14
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = mul nsw i64 %1591, 180
  store i64 %1592, i64* %RCX.i1599.pre-phi, align 8
  %1593 = lshr i64 %1592, 63
  %1594 = add i64 %1592, %1586
  store i64 %1594, i64* %RAX.i1663, align 8
  %1595 = icmp ult i64 %1594, %1586
  %1596 = icmp ult i64 %1594, %1592
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %14, align 1
  %1599 = trunc i64 %1594 to i32
  %1600 = and i32 %1599, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %21, align 1
  %1605 = xor i64 %1592, %1586
  %1606 = xor i64 %1605, %1594
  %1607 = lshr i64 %1606, 4
  %1608 = trunc i64 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %27, align 1
  %1610 = icmp eq i64 %1594, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %30, align 1
  %1612 = lshr i64 %1594, 63
  %1613 = trunc i64 %1612 to i8
  store i8 %1613, i8* %33, align 1
  %1614 = lshr i64 %1586, 63
  %1615 = xor i64 %1612, %1614
  %1616 = xor i64 %1612, %1593
  %1617 = add nuw nsw i64 %1615, %1616
  %1618 = icmp eq i64 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %39, align 1
  %1620 = add i64 %1585, -16
  %1621 = add i64 %1584, 28
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = sext i32 %1623 to i64
  %1625 = mul nsw i64 %1624, 12
  store i64 %1625, i64* %RCX.i1599.pre-phi, align 8
  %1626 = lshr i64 %1625, 63
  %1627 = add i64 %1625, %1594
  store i64 %1627, i64* %RAX.i1663, align 8
  %1628 = icmp ult i64 %1627, %1594
  %1629 = icmp ult i64 %1627, %1625
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %14, align 1
  %1632 = trunc i64 %1627 to i32
  %1633 = and i32 %1632, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %21, align 1
  %1638 = xor i64 %1625, %1594
  %1639 = xor i64 %1638, %1627
  %1640 = lshr i64 %1639, 4
  %1641 = trunc i64 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %27, align 1
  %1643 = icmp eq i64 %1627, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %30, align 1
  %1645 = lshr i64 %1627, 63
  %1646 = trunc i64 %1645 to i8
  store i8 %1646, i8* %33, align 1
  %1647 = xor i64 %1645, %1612
  %1648 = xor i64 %1645, %1626
  %1649 = add nuw nsw i64 %1647, %1648
  %1650 = icmp eq i64 %1649, 2
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %39, align 1
  %1652 = inttoptr i64 %1627 to i32*
  %1653 = add i64 %1584, 38
  store i64 %1653, i64* %3, align 8
  %1654 = load i32, i32* %1652, align 4
  %1655 = add i32 %1654, 64
  %1656 = icmp ult i32 %1654, -64
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %14, align 1
  %1658 = and i32 %1655, 255
  %1659 = tail call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  store i8 %1662, i8* %21, align 1
  %1663 = xor i32 %1655, %1654
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  store i8 %1666, i8* %27, align 1
  %1667 = icmp eq i32 %1655, 0
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %30, align 1
  %1669 = lshr i32 %1655, 31
  %1670 = trunc i32 %1669 to i8
  store i8 %1670, i8* %33, align 1
  %1671 = lshr i32 %1654, 31
  %1672 = xor i32 %1671, 1
  %1673 = xor i32 %1669, %1671
  %1674 = add nuw nsw i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %39, align 1
  %1677 = icmp ne i8 %1670, 0
  %1678 = xor i1 %1677, %1675
  %.v120 = select i1 %1678, i64 88, i64 44
  %1679 = add i64 %1584, %.v120
  store i64 %1679, i64* %3, align 8
  br i1 %1678, label %block_.L_4adff2, label %block_4adfc6

block_4adfc6:                                     ; preds = %block_.L_4adf9a
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -560
  store i64 %1681, i64* %RAX.i1663, align 8
  %1682 = add i64 %1680, -932
  %1683 = add i64 %1679, 14
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = sext i32 %1685 to i64
  %1687 = mul nsw i64 %1686, 180
  store i64 %1687, i64* %RCX.i1599.pre-phi, align 8
  %1688 = lshr i64 %1687, 63
  %1689 = add i64 %1687, %1681
  store i64 %1689, i64* %RAX.i1663, align 8
  %1690 = icmp ult i64 %1689, %1681
  %1691 = icmp ult i64 %1689, %1687
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %14, align 1
  %1694 = trunc i64 %1689 to i32
  %1695 = and i32 %1694, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %21, align 1
  %1700 = xor i64 %1687, %1681
  %1701 = xor i64 %1700, %1689
  %1702 = lshr i64 %1701, 4
  %1703 = trunc i64 %1702 to i8
  %1704 = and i8 %1703, 1
  store i8 %1704, i8* %27, align 1
  %1705 = icmp eq i64 %1689, 0
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %30, align 1
  %1707 = lshr i64 %1689, 63
  %1708 = trunc i64 %1707 to i8
  store i8 %1708, i8* %33, align 1
  %1709 = lshr i64 %1681, 63
  %1710 = xor i64 %1707, %1709
  %1711 = xor i64 %1707, %1688
  %1712 = add nuw nsw i64 %1710, %1711
  %1713 = icmp eq i64 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %39, align 1
  %1715 = add i64 %1680, -16
  %1716 = add i64 %1679, 28
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = sext i32 %1718 to i64
  %1720 = mul nsw i64 %1719, 12
  store i64 %1720, i64* %RCX.i1599.pre-phi, align 8
  %1721 = lshr i64 %1720, 63
  %1722 = add i64 %1720, %1689
  store i64 %1722, i64* %RAX.i1663, align 8
  %1723 = icmp ult i64 %1722, %1689
  %1724 = icmp ult i64 %1722, %1720
  %1725 = or i1 %1723, %1724
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = trunc i64 %1722 to i32
  %1728 = and i32 %1727, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %21, align 1
  %1733 = xor i64 %1720, %1689
  %1734 = xor i64 %1733, %1722
  %1735 = lshr i64 %1734, 4
  %1736 = trunc i64 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %27, align 1
  %1738 = icmp eq i64 %1722, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %30, align 1
  %1740 = lshr i64 %1722, 63
  %1741 = trunc i64 %1740 to i8
  store i8 %1741, i8* %33, align 1
  %1742 = xor i64 %1740, %1707
  %1743 = xor i64 %1740, %1721
  %1744 = add nuw nsw i64 %1742, %1743
  %1745 = icmp eq i64 %1744, 2
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %39, align 1
  %1747 = inttoptr i64 %1722 to i32*
  %1748 = add i64 %1679, 38
  store i64 %1748, i64* %3, align 8
  %1749 = load i32, i32* %1747, align 4
  %1750 = add i32 %1749, -127
  %1751 = icmp ult i32 %1749, 127
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %14, align 1
  %1753 = and i32 %1750, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %21, align 1
  %1758 = xor i32 %1749, 16
  %1759 = xor i32 %1758, %1750
  %1760 = lshr i32 %1759, 4
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %27, align 1
  %1763 = icmp eq i32 %1750, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1750, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %33, align 1
  %1767 = lshr i32 %1749, 31
  %1768 = xor i32 %1765, %1767
  %1769 = add nuw nsw i32 %1768, %1767
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %39, align 1
  %1772 = icmp ne i8 %1766, 0
  %1773 = xor i1 %1772, %1770
  %1774 = or i1 %1763, %1773
  %.v121 = select i1 %1774, i64 87, i64 44
  %1775 = add i64 %1679, %.v121
  store i64 %1775, i64* %3, align 8
  br i1 %1774, label %block_.L_4ae01d, label %block_.L_4adff2

block_.L_4adff2:                                  ; preds = %block_4adfc6, %block_.L_4adf9a
  %1776 = phi i64 [ %1775, %block_4adfc6 ], [ %1679, %block_.L_4adf9a ]
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -560
  store i64 %1778, i64* %RAX.i1663, align 8
  %1779 = add i64 %1777, -188
  %1780 = add i64 %1776, 13
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RCX.i1599.pre-phi, align 8
  %1784 = add i64 %1777, -932
  %1785 = add i64 %1776, 20
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = mul nsw i64 %1788, 180
  store i64 %1789, i64* %RDX.i1332, align 8
  %1790 = lshr i64 %1789, 63
  %1791 = add i64 %1789, %1778
  store i64 %1791, i64* %RAX.i1663, align 8
  %1792 = icmp ult i64 %1791, %1778
  %1793 = icmp ult i64 %1791, %1789
  %1794 = or i1 %1792, %1793
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %14, align 1
  %1796 = trunc i64 %1791 to i32
  %1797 = and i32 %1796, 255
  %1798 = tail call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  store i8 %1801, i8* %21, align 1
  %1802 = xor i64 %1789, %1778
  %1803 = xor i64 %1802, %1791
  %1804 = lshr i64 %1803, 4
  %1805 = trunc i64 %1804 to i8
  %1806 = and i8 %1805, 1
  store i8 %1806, i8* %27, align 1
  %1807 = icmp eq i64 %1791, 0
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %30, align 1
  %1809 = lshr i64 %1791, 63
  %1810 = trunc i64 %1809 to i8
  store i8 %1810, i8* %33, align 1
  %1811 = lshr i64 %1778, 63
  %1812 = xor i64 %1809, %1811
  %1813 = xor i64 %1809, %1790
  %1814 = add nuw nsw i64 %1812, %1813
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %39, align 1
  %1817 = add i64 %1777, -16
  %1818 = add i64 %1776, 34
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = sext i32 %1820 to i64
  %1822 = mul nsw i64 %1821, 12
  store i64 %1822, i64* %RDX.i1332, align 8
  %1823 = lshr i64 %1822, 63
  %1824 = add i64 %1822, %1791
  store i64 %1824, i64* %RAX.i1663, align 8
  %1825 = icmp ult i64 %1824, %1791
  %1826 = icmp ult i64 %1824, %1822
  %1827 = or i1 %1825, %1826
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %14, align 1
  %1829 = trunc i64 %1824 to i32
  %1830 = and i32 %1829, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  %1835 = xor i64 %1822, %1791
  %1836 = xor i64 %1835, %1824
  %1837 = lshr i64 %1836, 4
  %1838 = trunc i64 %1837 to i8
  %1839 = and i8 %1838, 1
  store i8 %1839, i8* %27, align 1
  %1840 = icmp eq i64 %1824, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %30, align 1
  %1842 = lshr i64 %1824, 63
  %1843 = trunc i64 %1842 to i8
  store i8 %1843, i8* %33, align 1
  %1844 = xor i64 %1842, %1809
  %1845 = xor i64 %1842, %1823
  %1846 = add nuw nsw i64 %1844, %1845
  %1847 = icmp eq i64 %1846, 2
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %39, align 1
  %1849 = inttoptr i64 %1824 to i32*
  %1850 = load i32, i32* %ECX.i1587.pre-phi, align 4
  %1851 = add i64 %1776, 43
  store i64 %1851, i64* %3, align 8
  store i32 %1850, i32* %1849, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_4ae01d

block_.L_4ae01d:                                  ; preds = %block_.L_4adff2, %block_4adfc6
  %1852 = phi i64 [ %.pre86, %block_.L_4adff2 ], [ %1775, %block_4adfc6 ]
  %1853 = add i64 %1852, 364
  store i64 %1853, i64* %3, align 8
  br label %block_.L_4ae189

block_.L_4ae022:                                  ; preds = %block_4adef0, %routine_ucomisd__xmm0___xmm1.exit1172
  %1854 = phi i64 [ %1354, %block_4adef0 ], [ %1351, %routine_ucomisd__xmm0___xmm1.exit1172 ]
  %1855 = load i64, i64* %RBP.i, align 8
  %1856 = add i64 %1855, -928
  store i64 %1856, i64* %RAX.i1663, align 8
  %1857 = add i64 %1854, add (i64 ptrtoint (%G_0x3857__rip__type* @G_0x3857__rip_ to i64), i64 7)
  %1858 = add i64 %1854, 15
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i64*
  %1860 = load i64, i64* %1859, align 8
  store i64 %1860, i64* %53, align 1
  store double 0.000000e+00, double* %1040, align 1
  %1861 = add i64 %1855, -24
  %1862 = add i64 %1854, 20
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i64*
  %1864 = load i64, i64* %1863, align 8
  store i64 %1864, i64* %1041, align 1
  store double 0.000000e+00, double* %1043, align 1
  %1865 = add i64 %1855, -16
  %1866 = add i64 %1854, 24
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = sext i32 %1868 to i64
  store i64 %1869, i64* %RCX.i1599.pre-phi, align 8
  %1870 = shl nsw i64 %1869, 3
  %1871 = add i64 %1855, -160
  %1872 = add i64 %1871, %1870
  %1873 = add i64 %1854, 33
  store i64 %1873, i64* %3, align 8
  %1874 = bitcast i64 %1864 to double
  %1875 = inttoptr i64 %1872 to double*
  %1876 = load double, double* %1875, align 8
  %1877 = fsub double %1874, %1876
  store double %1877, double* %1039, align 1
  store i64 0, i64* %1042, align 1
  %1878 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1878, i64* %RCX.i1599.pre-phi, align 8
  %1879 = add i64 %1878, 60
  %1880 = add i64 %1854, 44
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RDX.i1332, align 8
  store i64 %1878, i64* %RCX.i1599.pre-phi, align 8
  %1884 = add i64 %1878, 52
  %1885 = add i64 %1854, 56
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = sext i32 %1882 to i64
  %1889 = sext i32 %1887 to i64
  %1890 = mul nsw i64 %1889, %1888
  %1891 = trunc i64 %1890 to i32
  %1892 = shl i64 %1890, 32
  %1893 = ashr exact i64 %1892, 32
  %1894 = icmp ne i64 %1893, %1890
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %14, align 1
  %1896 = and i32 %1891, 255
  %1897 = tail call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  store i8 %1900, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1901 = lshr i32 %1891, 31
  %1902 = trunc i32 %1901 to i8
  store i8 %1902, i8* %33, align 1
  store i8 %1895, i8* %39, align 1
  %1903 = trunc i64 %1890 to i32
  %1904 = sitofp i32 %1903 to double
  store double %1904, double* %1045, align 1
  %1905 = fdiv double %1877, %1904
  %1906 = bitcast i64 %1860 to double
  %1907 = fadd double %1905, %1906
  store double %1907, double* %1039, align 1
  store i64 0, i64* %1042, align 1
  %1908 = tail call double @llvm.trunc.f64(double %1907)
  %1909 = tail call double @llvm.fabs.f64(double %1908)
  %1910 = fcmp ogt double %1909, 0x41DFFFFFFFC00000
  %1911 = fptosi double %1908 to i32
  %1912 = zext i32 %1911 to i64
  %1913 = select i1 %1910, i64 2147483648, i64 %1912
  store i64 %1913, i64* %RDX.i1332, align 8
  %1914 = load i64, i64* %RBP.i, align 8
  %1915 = add i64 %1914, -932
  %1916 = add i64 %1854, 79
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = sext i32 %1918 to i64
  %1920 = mul nsw i64 %1919, 180
  store i64 %1920, i64* %RCX.i1599.pre-phi, align 8
  %1921 = lshr i64 %1920, 63
  %1922 = load i64, i64* %RAX.i1663, align 8
  %1923 = add i64 %1920, %1922
  store i64 %1923, i64* %RSI.i972, align 8
  %1924 = icmp ult i64 %1923, %1922
  %1925 = icmp ult i64 %1923, %1920
  %1926 = or i1 %1924, %1925
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %14, align 1
  %1928 = trunc i64 %1923 to i32
  %1929 = and i32 %1928, 255
  %1930 = tail call i32 @llvm.ctpop.i32(i32 %1929)
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  store i8 %1933, i8* %21, align 1
  %1934 = xor i64 %1920, %1922
  %1935 = xor i64 %1934, %1923
  %1936 = lshr i64 %1935, 4
  %1937 = trunc i64 %1936 to i8
  %1938 = and i8 %1937, 1
  store i8 %1938, i8* %27, align 1
  %1939 = icmp eq i64 %1923, 0
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %30, align 1
  %1941 = lshr i64 %1923, 63
  %1942 = trunc i64 %1941 to i8
  store i8 %1942, i8* %33, align 1
  %1943 = lshr i64 %1922, 63
  %1944 = xor i64 %1941, %1943
  %1945 = xor i64 %1941, %1921
  %1946 = add nuw nsw i64 %1944, %1945
  %1947 = icmp eq i64 %1946, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %39, align 1
  %1949 = add i64 %1914, -16
  %1950 = add i64 %1854, 96
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = sext i32 %1952 to i64
  %1954 = mul nsw i64 %1953, 12
  store i64 %1954, i64* %RCX.i1599.pre-phi, align 8
  %1955 = lshr i64 %1954, 63
  %1956 = add i64 %1954, %1923
  store i64 %1956, i64* %RSI.i972, align 8
  %1957 = icmp ult i64 %1956, %1923
  %1958 = icmp ult i64 %1956, %1954
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %14, align 1
  %1961 = trunc i64 %1956 to i32
  %1962 = and i32 %1961, 255
  %1963 = tail call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  store i8 %1966, i8* %21, align 1
  %1967 = xor i64 %1954, %1923
  %1968 = xor i64 %1967, %1956
  %1969 = lshr i64 %1968, 4
  %1970 = trunc i64 %1969 to i8
  %1971 = and i8 %1970, 1
  store i8 %1971, i8* %27, align 1
  %1972 = icmp eq i64 %1956, 0
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %30, align 1
  %1974 = lshr i64 %1956, 63
  %1975 = trunc i64 %1974 to i8
  store i8 %1975, i8* %33, align 1
  %1976 = xor i64 %1974, %1941
  %1977 = xor i64 %1974, %1955
  %1978 = add nuw nsw i64 %1976, %1977
  %1979 = icmp eq i64 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %39, align 1
  %1981 = inttoptr i64 %1956 to i32*
  %1982 = load i32, i32* %EDX.i1327, align 4
  %1983 = add i64 %1854, 105
  store i64 %1983, i64* %3, align 8
  store i32 %1982, i32* %1981, align 4
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -932
  %1986 = load i64, i64* %3, align 8
  %1987 = add i64 %1986, 7
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1985 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = sext i32 %1989 to i64
  %1991 = mul nsw i64 %1990, 180
  store i64 %1991, i64* %RCX.i1599.pre-phi, align 8
  %1992 = lshr i64 %1991, 63
  %1993 = load i64, i64* %RAX.i1663, align 8
  %1994 = add i64 %1991, %1993
  store i64 %1994, i64* %RAX.i1663, align 8
  %1995 = icmp ult i64 %1994, %1993
  %1996 = icmp ult i64 %1994, %1991
  %1997 = or i1 %1995, %1996
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %14, align 1
  %1999 = trunc i64 %1994 to i32
  %2000 = and i32 %1999, 255
  %2001 = tail call i32 @llvm.ctpop.i32(i32 %2000)
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = xor i8 %2003, 1
  store i8 %2004, i8* %21, align 1
  %2005 = xor i64 %1991, %1993
  %2006 = xor i64 %2005, %1994
  %2007 = lshr i64 %2006, 4
  %2008 = trunc i64 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %27, align 1
  %2010 = icmp eq i64 %1994, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %30, align 1
  %2012 = lshr i64 %1994, 63
  %2013 = trunc i64 %2012 to i8
  store i8 %2013, i8* %33, align 1
  %2014 = lshr i64 %1993, 63
  %2015 = xor i64 %2012, %2014
  %2016 = xor i64 %2012, %1992
  %2017 = add nuw nsw i64 %2015, %2016
  %2018 = icmp eq i64 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %39, align 1
  %2020 = add i64 %1984, -16
  %2021 = add i64 %1986, 21
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = sext i32 %2023 to i64
  %2025 = mul nsw i64 %2024, 12
  store i64 %2025, i64* %RCX.i1599.pre-phi, align 8
  %2026 = lshr i64 %2025, 63
  %2027 = add i64 %2025, %1994
  store i64 %2027, i64* %RAX.i1663, align 8
  %2028 = icmp ult i64 %2027, %1994
  %2029 = icmp ult i64 %2027, %2025
  %2030 = or i1 %2028, %2029
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %14, align 1
  %2032 = trunc i64 %2027 to i32
  %2033 = and i32 %2032, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %21, align 1
  %2038 = xor i64 %2025, %1994
  %2039 = xor i64 %2038, %2027
  %2040 = lshr i64 %2039, 4
  %2041 = trunc i64 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %27, align 1
  %2043 = icmp eq i64 %2027, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %30, align 1
  %2045 = lshr i64 %2027, 63
  %2046 = trunc i64 %2045 to i8
  store i8 %2046, i8* %33, align 1
  %2047 = xor i64 %2045, %2012
  %2048 = xor i64 %2045, %2026
  %2049 = add nuw nsw i64 %2047, %2048
  %2050 = icmp eq i64 %2049, 2
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %39, align 1
  %2052 = inttoptr i64 %2027 to i32*
  %2053 = add i64 %1986, 31
  store i64 %2053, i64* %3, align 8
  %2054 = load i32, i32* %2052, align 4
  %2055 = add i32 %2054, 128
  %2056 = icmp ult i32 %2054, -128
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %14, align 1
  %2058 = and i32 %2055, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %21, align 1
  %2063 = xor i32 %2055, %2054
  %2064 = lshr i32 %2063, 4
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  store i8 %2066, i8* %27, align 1
  %2067 = icmp eq i32 %2055, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %30, align 1
  %2069 = lshr i32 %2055, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %33, align 1
  %2071 = lshr i32 %2054, 31
  %2072 = xor i32 %2071, 1
  %2073 = xor i32 %2069, %2071
  %2074 = add nuw nsw i32 %2073, %2072
  %2075 = icmp eq i32 %2074, 2
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %39, align 1
  %2077 = icmp ne i8 %2070, 0
  %2078 = xor i1 %2077, %2075
  %.v127 = select i1 %2078, i64 37, i64 53
  %2079 = add i64 %1986, %.v127
  store i64 %2079, i64* %3, align 8
  br i1 %2078, label %block_4ae0b0, label %block_.L_4ae0c0

block_4ae0b0:                                     ; preds = %block_.L_4ae022
  store i64 4294967168, i64* %RAX.i1663, align 8
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -948
  %2082 = add i64 %2079, 11
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  store i32 -128, i32* %2083, align 4
  %2084 = load i64, i64* %3, align 8
  %2085 = add i64 %2084, 120
  store i64 %2085, i64* %3, align 8
  br label %block_.L_4ae133

block_.L_4ae0c0:                                  ; preds = %block_.L_4ae022
  %2086 = load i64, i64* %RBP.i, align 8
  %2087 = add i64 %2086, -928
  store i64 %2087, i64* %RAX.i1663, align 8
  %2088 = add i64 %2086, -932
  %2089 = add i64 %2079, 14
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = sext i32 %2091 to i64
  %2093 = mul nsw i64 %2092, 180
  store i64 %2093, i64* %RCX.i1599.pre-phi, align 8
  %2094 = lshr i64 %2093, 63
  %2095 = add i64 %2093, %2087
  store i64 %2095, i64* %RAX.i1663, align 8
  %2096 = icmp ult i64 %2095, %2087
  %2097 = icmp ult i64 %2095, %2093
  %2098 = or i1 %2096, %2097
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %14, align 1
  %2100 = trunc i64 %2095 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %21, align 1
  %2106 = xor i64 %2093, %2087
  %2107 = xor i64 %2106, %2095
  %2108 = lshr i64 %2107, 4
  %2109 = trunc i64 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %27, align 1
  %2111 = icmp eq i64 %2095, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %30, align 1
  %2113 = lshr i64 %2095, 63
  %2114 = trunc i64 %2113 to i8
  store i8 %2114, i8* %33, align 1
  %2115 = lshr i64 %2087, 63
  %2116 = xor i64 %2113, %2115
  %2117 = xor i64 %2113, %2094
  %2118 = add nuw nsw i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %39, align 1
  %2121 = add i64 %2086, -16
  %2122 = add i64 %2079, 28
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = sext i32 %2124 to i64
  %2126 = mul nsw i64 %2125, 12
  store i64 %2126, i64* %RCX.i1599.pre-phi, align 8
  %2127 = lshr i64 %2126, 63
  %2128 = add i64 %2126, %2095
  store i64 %2128, i64* %RAX.i1663, align 8
  %2129 = icmp ult i64 %2128, %2095
  %2130 = icmp ult i64 %2128, %2126
  %2131 = or i1 %2129, %2130
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %14, align 1
  %2133 = trunc i64 %2128 to i32
  %2134 = and i32 %2133, 255
  %2135 = tail call i32 @llvm.ctpop.i32(i32 %2134)
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = xor i8 %2137, 1
  store i8 %2138, i8* %21, align 1
  %2139 = xor i64 %2126, %2095
  %2140 = xor i64 %2139, %2128
  %2141 = lshr i64 %2140, 4
  %2142 = trunc i64 %2141 to i8
  %2143 = and i8 %2142, 1
  store i8 %2143, i8* %27, align 1
  %2144 = icmp eq i64 %2128, 0
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %30, align 1
  %2146 = lshr i64 %2128, 63
  %2147 = trunc i64 %2146 to i8
  store i8 %2147, i8* %33, align 1
  %2148 = xor i64 %2146, %2113
  %2149 = xor i64 %2146, %2127
  %2150 = add nuw nsw i64 %2148, %2149
  %2151 = icmp eq i64 %2150, 2
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %39, align 1
  %2153 = inttoptr i64 %2128 to i32*
  %2154 = add i64 %2079, 38
  store i64 %2154, i64* %3, align 8
  %2155 = load i32, i32* %2153, align 4
  %2156 = add i32 %2155, -127
  %2157 = icmp ult i32 %2155, 127
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %14, align 1
  %2159 = and i32 %2156, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %21, align 1
  %2164 = xor i32 %2155, 16
  %2165 = xor i32 %2164, %2156
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %27, align 1
  %2169 = icmp eq i32 %2156, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %30, align 1
  %2171 = lshr i32 %2156, 31
  %2172 = trunc i32 %2171 to i8
  store i8 %2172, i8* %33, align 1
  %2173 = lshr i32 %2155, 31
  %2174 = xor i32 %2171, %2173
  %2175 = add nuw nsw i32 %2174, %2173
  %2176 = icmp eq i32 %2175, 2
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %39, align 1
  %2178 = icmp ne i8 %2172, 0
  %2179 = xor i1 %2178, %2176
  %2180 = or i1 %2169, %2179
  %.v128 = select i1 %2180, i64 60, i64 44
  %2181 = add i64 %2079, %.v128
  store i64 %2181, i64* %3, align 8
  br i1 %2180, label %block_.L_4ae0fc, label %block_4ae0ec

block_4ae0ec:                                     ; preds = %block_.L_4ae0c0
  store i64 127, i64* %RAX.i1663, align 8
  %2182 = load i64, i64* %RBP.i, align 8
  %2183 = add i64 %2182, -952
  %2184 = add i64 %2181, 11
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  store i32 127, i32* %2185, align 4
  %2186 = load i64, i64* %3, align 8
  %2187 = add i64 %2186, 48
  store i64 %2187, i64* %3, align 8
  br label %block_.L_4ae127

block_.L_4ae0fc:                                  ; preds = %block_.L_4ae0c0
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -928
  store i64 %2189, i64* %RAX.i1663, align 8
  %2190 = add i64 %2188, -932
  %2191 = add i64 %2181, 14
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = sext i32 %2193 to i64
  %2195 = mul nsw i64 %2194, 180
  store i64 %2195, i64* %RCX.i1599.pre-phi, align 8
  %2196 = lshr i64 %2195, 63
  %2197 = add i64 %2195, %2189
  store i64 %2197, i64* %RAX.i1663, align 8
  %2198 = icmp ult i64 %2197, %2189
  %2199 = icmp ult i64 %2197, %2195
  %2200 = or i1 %2198, %2199
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %14, align 1
  %2202 = trunc i64 %2197 to i32
  %2203 = and i32 %2202, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %21, align 1
  %2208 = xor i64 %2195, %2189
  %2209 = xor i64 %2208, %2197
  %2210 = lshr i64 %2209, 4
  %2211 = trunc i64 %2210 to i8
  %2212 = and i8 %2211, 1
  store i8 %2212, i8* %27, align 1
  %2213 = icmp eq i64 %2197, 0
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %30, align 1
  %2215 = lshr i64 %2197, 63
  %2216 = trunc i64 %2215 to i8
  store i8 %2216, i8* %33, align 1
  %2217 = lshr i64 %2189, 63
  %2218 = xor i64 %2215, %2217
  %2219 = xor i64 %2215, %2196
  %2220 = add nuw nsw i64 %2218, %2219
  %2221 = icmp eq i64 %2220, 2
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %39, align 1
  %2223 = add i64 %2188, -16
  %2224 = add i64 %2181, 28
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = sext i32 %2226 to i64
  %2228 = mul nsw i64 %2227, 12
  store i64 %2228, i64* %RCX.i1599.pre-phi, align 8
  %2229 = lshr i64 %2228, 63
  %2230 = add i64 %2228, %2197
  store i64 %2230, i64* %RAX.i1663, align 8
  %2231 = icmp ult i64 %2230, %2197
  %2232 = icmp ult i64 %2230, %2228
  %2233 = or i1 %2231, %2232
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = trunc i64 %2230 to i32
  %2236 = and i32 %2235, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i64 %2228, %2197
  %2242 = xor i64 %2241, %2230
  %2243 = lshr i64 %2242, 4
  %2244 = trunc i64 %2243 to i8
  %2245 = and i8 %2244, 1
  store i8 %2245, i8* %27, align 1
  %2246 = icmp eq i64 %2230, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %30, align 1
  %2248 = lshr i64 %2230, 63
  %2249 = trunc i64 %2248 to i8
  store i8 %2249, i8* %33, align 1
  %2250 = xor i64 %2248, %2215
  %2251 = xor i64 %2248, %2229
  %2252 = add nuw nsw i64 %2250, %2251
  %2253 = icmp eq i64 %2252, 2
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %39, align 1
  %2255 = inttoptr i64 %2230 to i32*
  %2256 = add i64 %2181, 37
  store i64 %2256, i64* %3, align 8
  %2257 = load i32, i32* %2255, align 4
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RDX.i1332, align 8
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -952
  %2261 = add i64 %2181, 43
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  store i32 %2257, i32* %2262, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_4ae127

block_.L_4ae127:                                  ; preds = %block_.L_4ae0fc, %block_4ae0ec
  %2263 = phi i64 [ %.pre87, %block_.L_4ae0fc ], [ %2187, %block_4ae0ec ]
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -952
  %2266 = add i64 %2263, 6
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RAX.i1663, align 8
  %2270 = add i64 %2264, -948
  %2271 = add i64 %2263, 12
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  store i32 %2268, i32* %2272, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_4ae133

block_.L_4ae133:                                  ; preds = %block_.L_4ae127, %block_4ae0b0
  %2273 = phi i64 [ %.pre88, %block_.L_4ae127 ], [ %2085, %block_4ae0b0 ]
  %2274 = load i64, i64* %RBP.i, align 8
  %2275 = add i64 %2274, -948
  %2276 = add i64 %2273, 6
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i32*
  %2278 = load i32, i32* %2277, align 4
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RAX.i1663, align 8
  %2280 = add i64 %2274, -560
  store i64 %2280, i64* %RCX.i1599.pre-phi, align 8
  %2281 = add i64 %2274, -928
  store i64 %2281, i64* %RDX.i1332, align 8
  %2282 = add i64 %2274, -932
  %2283 = add i64 %2273, 27
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  %2287 = mul nsw i64 %2286, 180
  store i64 %2287, i64* %RSI.i972, align 8
  %2288 = lshr i64 %2287, 63
  %2289 = add i64 %2287, %2281
  store i64 %2289, i64* %RDX.i1332, align 8
  %2290 = icmp ult i64 %2289, %2281
  %2291 = icmp ult i64 %2289, %2287
  %2292 = or i1 %2290, %2291
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %14, align 1
  %2294 = trunc i64 %2289 to i32
  %2295 = and i32 %2294, 255
  %2296 = tail call i32 @llvm.ctpop.i32(i32 %2295)
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = xor i8 %2298, 1
  store i8 %2299, i8* %21, align 1
  %2300 = xor i64 %2287, %2281
  %2301 = xor i64 %2300, %2289
  %2302 = lshr i64 %2301, 4
  %2303 = trunc i64 %2302 to i8
  %2304 = and i8 %2303, 1
  store i8 %2304, i8* %27, align 1
  %2305 = icmp eq i64 %2289, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %30, align 1
  %2307 = lshr i64 %2289, 63
  %2308 = trunc i64 %2307 to i8
  store i8 %2308, i8* %33, align 1
  %2309 = lshr i64 %2281, 63
  %2310 = xor i64 %2307, %2309
  %2311 = xor i64 %2307, %2288
  %2312 = add nuw nsw i64 %2310, %2311
  %2313 = icmp eq i64 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %39, align 1
  %2315 = add i64 %2274, -16
  %2316 = add i64 %2273, 41
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = mul nsw i64 %2319, 12
  store i64 %2320, i64* %RSI.i972, align 8
  %2321 = lshr i64 %2320, 63
  %2322 = add i64 %2320, %2289
  store i64 %2322, i64* %RDX.i1332, align 8
  %2323 = icmp ult i64 %2322, %2289
  %2324 = icmp ult i64 %2322, %2320
  %2325 = or i1 %2323, %2324
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %14, align 1
  %2327 = trunc i64 %2322 to i32
  %2328 = and i32 %2327, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %21, align 1
  %2333 = xor i64 %2320, %2289
  %2334 = xor i64 %2333, %2322
  %2335 = lshr i64 %2334, 4
  %2336 = trunc i64 %2335 to i8
  %2337 = and i8 %2336, 1
  store i8 %2337, i8* %27, align 1
  %2338 = icmp eq i64 %2322, 0
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %30, align 1
  %2340 = lshr i64 %2322, 63
  %2341 = trunc i64 %2340 to i8
  store i8 %2341, i8* %33, align 1
  %2342 = xor i64 %2340, %2307
  %2343 = xor i64 %2340, %2321
  %2344 = add nuw nsw i64 %2342, %2343
  %2345 = icmp eq i64 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %39, align 1
  %2347 = inttoptr i64 %2322 to i32*
  %2348 = load i32, i32* %EAX.i1596.pre-phi, align 4
  %2349 = add i64 %2273, 50
  store i64 %2349, i64* %3, align 8
  store i32 %2348, i32* %2347, align 4
  %2350 = load i64, i64* %RBP.i, align 8
  %2351 = add i64 %2350, -188
  %2352 = load i64, i64* %3, align 8
  %2353 = add i64 %2352, 6
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2351 to i32*
  %2355 = load i32, i32* %2354, align 4
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RAX.i1663, align 8
  %2357 = add i64 %2350, -932
  %2358 = add i64 %2352, 13
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = sext i32 %2360 to i64
  %2362 = add i64 %2352, 20
  store i64 %2362, i64* %3, align 8
  %2363 = sext i32 %2360 to i128
  %2364 = and i128 %2363, -18446744073709551616
  %2365 = zext i64 %2361 to i128
  %2366 = or i128 %2364, %2365
  %2367 = mul nsw i128 %2366, 180
  %2368 = trunc i128 %2367 to i64
  store i64 %2368, i64* %RDX.i1332, align 8
  %2369 = sext i64 %2368 to i128
  %2370 = icmp ne i128 %2369, %2367
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %14, align 1
  %2372 = trunc i128 %2367 to i32
  %2373 = and i32 %2372, 252
  %2374 = tail call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  store i8 %2377, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2378 = lshr i64 %2368, 63
  %2379 = trunc i64 %2378 to i8
  store i8 %2379, i8* %33, align 1
  store i8 %2371, i8* %39, align 1
  %2380 = load i64, i64* %RCX.i1599.pre-phi, align 8
  %2381 = add i64 %2368, %2380
  store i64 %2381, i64* %RCX.i1599.pre-phi, align 8
  %2382 = icmp ult i64 %2381, %2380
  %2383 = icmp ult i64 %2381, %2368
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = trunc i64 %2381 to i32
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %21, align 1
  %2392 = xor i64 %2368, %2380
  %2393 = xor i64 %2392, %2381
  %2394 = lshr i64 %2393, 4
  %2395 = trunc i64 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %27, align 1
  %2397 = icmp eq i64 %2381, 0
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %30, align 1
  %2399 = lshr i64 %2381, 63
  %2400 = trunc i64 %2399 to i8
  store i8 %2400, i8* %33, align 1
  %2401 = lshr i64 %2380, 63
  %2402 = xor i64 %2399, %2401
  %2403 = xor i64 %2399, %2378
  %2404 = add nuw nsw i64 %2402, %2403
  %2405 = icmp eq i64 %2404, 2
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %39, align 1
  %2407 = add i64 %2350, -16
  %2408 = add i64 %2352, 27
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = sext i32 %2410 to i64
  %2412 = mul nsw i64 %2411, 12
  store i64 %2412, i64* %RDX.i1332, align 8
  %2413 = lshr i64 %2412, 63
  %2414 = add i64 %2412, %2381
  store i64 %2414, i64* %RCX.i1599.pre-phi, align 8
  %2415 = icmp ult i64 %2414, %2381
  %2416 = icmp ult i64 %2414, %2412
  %2417 = or i1 %2415, %2416
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %14, align 1
  %2419 = trunc i64 %2414 to i32
  %2420 = and i32 %2419, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i64 %2412, %2381
  %2426 = xor i64 %2425, %2414
  %2427 = lshr i64 %2426, 4
  %2428 = trunc i64 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %27, align 1
  %2430 = icmp eq i64 %2414, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %30, align 1
  %2432 = lshr i64 %2414, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %33, align 1
  %2434 = xor i64 %2432, %2399
  %2435 = xor i64 %2432, %2413
  %2436 = add nuw nsw i64 %2434, %2435
  %2437 = icmp eq i64 %2436, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %39, align 1
  %2439 = inttoptr i64 %2414 to i32*
  %2440 = load i32, i32* %EAX.i1596.pre-phi, align 4
  %2441 = add i64 %2352, 36
  store i64 %2441, i64* %3, align 8
  store i32 %2440, i32* %2439, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_4ae189

block_.L_4ae189:                                  ; preds = %block_.L_4ae133, %block_.L_4ae01d
  %2442 = phi i64 [ %.pre89, %block_.L_4ae133 ], [ %1853, %block_.L_4ae01d ]
  %MEMORY.17 = phi %struct.Memory* [ %1349, %block_.L_4ae133 ], [ %1394, %block_.L_4ae01d ]
  %2443 = load i64, i64* %RBP.i, align 8
  %2444 = add i64 %2443, -560
  store i64 %2444, i64* %RAX.i1663, align 8
  %2445 = add i64 %2443, -184
  %2446 = add i64 %2442, 13
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i1599.pre-phi, align 8
  %2450 = add i64 %2443, -932
  %2451 = add i64 %2442, 20
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = sext i32 %2453 to i64
  %2455 = mul nsw i64 %2454, 180
  store i64 %2455, i64* %RDX.i1332, align 8
  %2456 = lshr i64 %2455, 63
  %2457 = add i64 %2455, %2444
  store i64 %2457, i64* %RSI.i972, align 8
  %2458 = icmp ult i64 %2457, %2444
  %2459 = icmp ult i64 %2457, %2455
  %2460 = or i1 %2458, %2459
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %14, align 1
  %2462 = trunc i64 %2457 to i32
  %2463 = and i32 %2462, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %21, align 1
  %2468 = xor i64 %2455, %2444
  %2469 = xor i64 %2468, %2457
  %2470 = lshr i64 %2469, 4
  %2471 = trunc i64 %2470 to i8
  %2472 = and i8 %2471, 1
  store i8 %2472, i8* %27, align 1
  %2473 = icmp eq i64 %2457, 0
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %30, align 1
  %2475 = lshr i64 %2457, 63
  %2476 = trunc i64 %2475 to i8
  store i8 %2476, i8* %33, align 1
  %2477 = lshr i64 %2444, 63
  %2478 = xor i64 %2475, %2477
  %2479 = xor i64 %2475, %2456
  %2480 = add nuw nsw i64 %2478, %2479
  %2481 = icmp eq i64 %2480, 2
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %39, align 1
  %2483 = add i64 %2443, -16
  %2484 = add i64 %2442, 37
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = sext i32 %2486 to i64
  %2488 = mul nsw i64 %2487, 12
  store i64 %2488, i64* %RDX.i1332, align 8
  %2489 = lshr i64 %2488, 63
  %2490 = add i64 %2488, %2457
  store i64 %2490, i64* %RSI.i972, align 8
  %2491 = icmp ult i64 %2490, %2457
  %2492 = icmp ult i64 %2490, %2488
  %2493 = or i1 %2491, %2492
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %14, align 1
  %2495 = trunc i64 %2490 to i32
  %2496 = and i32 %2495, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %21, align 1
  %2501 = xor i64 %2488, %2457
  %2502 = xor i64 %2501, %2490
  %2503 = lshr i64 %2502, 4
  %2504 = trunc i64 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %27, align 1
  %2506 = icmp eq i64 %2490, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %30, align 1
  %2508 = lshr i64 %2490, 63
  %2509 = trunc i64 %2508 to i8
  store i8 %2509, i8* %33, align 1
  %2510 = xor i64 %2508, %2475
  %2511 = xor i64 %2508, %2489
  %2512 = add nuw nsw i64 %2510, %2511
  %2513 = icmp eq i64 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %39, align 1
  %2515 = add i64 %2490, 4
  %2516 = load i32, i32* %ECX.i1587.pre-phi, align 4
  %2517 = add i64 %2442, 47
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2515 to i32*
  store i32 %2516, i32* %2518, align 4
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -180
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, 6
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RCX.i1599.pre-phi, align 8
  %2526 = add i64 %2519, -932
  %2527 = add i64 %2521, 13
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i32*
  %2529 = load i32, i32* %2528, align 4
  %2530 = sext i32 %2529 to i64
  %2531 = mul nsw i64 %2530, 180
  store i64 %2531, i64* %RDX.i1332, align 8
  %2532 = lshr i64 %2531, 63
  %2533 = load i64, i64* %RAX.i1663, align 8
  %2534 = add i64 %2531, %2533
  store i64 %2534, i64* %RAX.i1663, align 8
  %2535 = icmp ult i64 %2534, %2533
  %2536 = icmp ult i64 %2534, %2531
  %2537 = or i1 %2535, %2536
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %14, align 1
  %2539 = trunc i64 %2534 to i32
  %2540 = and i32 %2539, 255
  %2541 = tail call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  store i8 %2544, i8* %21, align 1
  %2545 = xor i64 %2531, %2533
  %2546 = xor i64 %2545, %2534
  %2547 = lshr i64 %2546, 4
  %2548 = trunc i64 %2547 to i8
  %2549 = and i8 %2548, 1
  store i8 %2549, i8* %27, align 1
  %2550 = icmp eq i64 %2534, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %30, align 1
  %2552 = lshr i64 %2534, 63
  %2553 = trunc i64 %2552 to i8
  store i8 %2553, i8* %33, align 1
  %2554 = lshr i64 %2533, 63
  %2555 = xor i64 %2552, %2554
  %2556 = xor i64 %2552, %2532
  %2557 = add nuw nsw i64 %2555, %2556
  %2558 = icmp eq i64 %2557, 2
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %39, align 1
  %2560 = add i64 %2519, -16
  %2561 = add i64 %2521, 27
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sext i32 %2563 to i64
  %2565 = mul nsw i64 %2564, 12
  store i64 %2565, i64* %RDX.i1332, align 8
  %2566 = lshr i64 %2565, 63
  %2567 = add i64 %2565, %2534
  store i64 %2567, i64* %RAX.i1663, align 8
  %2568 = icmp ult i64 %2567, %2534
  %2569 = icmp ult i64 %2567, %2565
  %2570 = or i1 %2568, %2569
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %14, align 1
  %2572 = trunc i64 %2567 to i32
  %2573 = and i32 %2572, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %21, align 1
  %2578 = xor i64 %2565, %2534
  %2579 = xor i64 %2578, %2567
  %2580 = lshr i64 %2579, 4
  %2581 = trunc i64 %2580 to i8
  %2582 = and i8 %2581, 1
  store i8 %2582, i8* %27, align 1
  %2583 = icmp eq i64 %2567, 0
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %30, align 1
  %2585 = lshr i64 %2567, 63
  %2586 = trunc i64 %2585 to i8
  store i8 %2586, i8* %33, align 1
  %2587 = xor i64 %2585, %2552
  %2588 = xor i64 %2585, %2566
  %2589 = add nuw nsw i64 %2587, %2588
  %2590 = icmp eq i64 %2589, 2
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %39, align 1
  %2592 = add i64 %2567, 8
  %2593 = load i32, i32* %ECX.i1587.pre-phi, align 4
  %2594 = add i64 %2521, 37
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2592 to i32*
  store i32 %2593, i32* %2595, align 4
  %2596 = load i64, i64* %RBP.i, align 8
  %2597 = add i64 %2596, -8
  %2598 = load i64, i64* %3, align 8
  %2599 = add i64 %2598, 7
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2597 to i32*
  store i32 0, i32* %2600, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_4ae1e4

block_.L_4ae1e4:                                  ; preds = %block_.L_4ae399, %block_.L_4ae189
  %2601 = phi i64 [ %3494, %block_.L_4ae399 ], [ %.pre90, %block_.L_4ae189 ]
  %2602 = load i64, i64* %RBP.i, align 8
  %2603 = add i64 %2602, -8
  %2604 = add i64 %2601, 3
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i1663, align 8
  %2608 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2608, i64* %RCX.i1599.pre-phi, align 8
  %2609 = add i64 %2608, 60
  %2610 = add i64 %2601, 14
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RDX.i1332, align 8
  store i64 %2608, i64* %RCX.i1599.pre-phi, align 8
  %2614 = add i64 %2608, 52
  %2615 = add i64 %2601, 26
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i32*
  %2617 = load i32, i32* %2616, align 4
  %2618 = sext i32 %2612 to i64
  %2619 = sext i32 %2617 to i64
  %2620 = mul nsw i64 %2619, %2618
  %2621 = and i64 %2620, 4294967295
  store i64 %2621, i64* %RDX.i1332, align 8
  %2622 = trunc i64 %2620 to i32
  %2623 = sub i32 %2606, %2622
  %2624 = icmp ult i32 %2606, %2622
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = and i32 %2623, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i32 %2622, %2606
  %2632 = xor i32 %2631, %2623
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %27, align 1
  %2636 = icmp eq i32 %2623, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %30, align 1
  %2638 = lshr i32 %2623, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %33, align 1
  %2640 = lshr i32 %2606, 31
  %2641 = lshr i32 %2622, 31
  %2642 = xor i32 %2641, %2640
  %2643 = xor i32 %2638, %2640
  %2644 = add nuw nsw i32 %2643, %2642
  %2645 = icmp eq i32 %2644, 2
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %39, align 1
  %2647 = icmp ne i8 %2639, 0
  %2648 = xor i1 %2647, %2645
  %.v122 = select i1 %2648, i64 34, i64 475
  %2649 = add i64 %2601, %.v122
  store i64 %2649, i64* %3, align 8
  br i1 %2648, label %block_4ae206, label %block_.L_4ae3bf

block_4ae206:                                     ; preds = %block_.L_4ae1e4
  %2650 = add i64 %2602, -928
  store i64 %2650, i64* %RAX.i1663, align 8
  %2651 = add i64 %2602, -560
  store i64 %2651, i64* %RCX.i1599.pre-phi, align 8
  %2652 = add i64 %2602, -168
  %2653 = add i64 %2649, 21
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i64*
  %2655 = load i64, i64* %2654, align 8
  store i64 %2655, i64* %RDX.i1332, align 8
  %2656 = add i64 %2649, 25
  store i64 %2656, i64* %3, align 8
  %2657 = load i32, i32* %2605, align 4
  %2658 = sext i32 %2657 to i64
  store i64 %2658, i64* %RSI.i972, align 8
  %2659 = shl nsw i64 %2658, 1
  %2660 = add i64 %2659, %2655
  %2661 = add i64 %2649, 29
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i16*
  %2663 = load i16, i16* %2662, align 2
  %2664 = zext i16 %2663 to i64
  store i64 %2664, i64* %RDI.i740, align 8
  %2665 = add i64 %2602, -932
  %2666 = add i64 %2649, 36
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  %2668 = load i32, i32* %2667, align 4
  %2669 = sext i32 %2668 to i64
  %2670 = mul nsw i64 %2669, 180
  store i64 %2670, i64* %RDX.i1332, align 8
  %2671 = lshr i64 %2670, 63
  %2672 = add i64 %2670, %2651
  store i64 %2672, i64* %RCX.i1599.pre-phi, align 8
  %2673 = icmp ult i64 %2672, %2651
  %2674 = icmp ult i64 %2672, %2670
  %2675 = or i1 %2673, %2674
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %14, align 1
  %2677 = trunc i64 %2672 to i32
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i64 %2670, %2651
  %2684 = xor i64 %2683, %2672
  %2685 = lshr i64 %2684, 4
  %2686 = trunc i64 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %27, align 1
  %2688 = icmp eq i64 %2672, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %30, align 1
  %2690 = lshr i64 %2672, 63
  %2691 = trunc i64 %2690 to i8
  store i8 %2691, i8* %33, align 1
  %2692 = lshr i64 %2651, 63
  %2693 = xor i64 %2690, %2692
  %2694 = xor i64 %2690, %2671
  %2695 = add nuw nsw i64 %2693, %2694
  %2696 = icmp eq i64 %2695, 2
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %39, align 1
  %2698 = add i64 %2602, -16
  %2699 = add i64 %2649, 50
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sext i32 %2701 to i64
  %2703 = mul nsw i64 %2702, 12
  store i64 %2703, i64* %RDX.i1332, align 8
  %2704 = lshr i64 %2703, 63
  %2705 = add i64 %2703, %2672
  store i64 %2705, i64* %RCX.i1599.pre-phi, align 8
  %2706 = icmp ult i64 %2705, %2672
  %2707 = icmp ult i64 %2705, %2703
  %2708 = or i1 %2706, %2707
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %14, align 1
  %2710 = trunc i64 %2705 to i32
  %2711 = and i32 %2710, 255
  %2712 = tail call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  store i8 %2715, i8* %21, align 1
  %2716 = xor i64 %2703, %2672
  %2717 = xor i64 %2716, %2705
  %2718 = lshr i64 %2717, 4
  %2719 = trunc i64 %2718 to i8
  %2720 = and i8 %2719, 1
  store i8 %2720, i8* %27, align 1
  %2721 = icmp eq i64 %2705, 0
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %30, align 1
  %2723 = lshr i64 %2705, 63
  %2724 = trunc i64 %2723 to i8
  store i8 %2724, i8* %33, align 1
  %2725 = xor i64 %2723, %2690
  %2726 = xor i64 %2723, %2704
  %2727 = add nuw nsw i64 %2725, %2726
  %2728 = icmp eq i64 %2727, 2
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %39, align 1
  %2730 = load i64, i64* %RDI.i740, align 8
  %2731 = inttoptr i64 %2705 to i32*
  %2732 = add i64 %2649, 60
  store i64 %2732, i64* %3, align 8
  %2733 = load i32, i32* %2731, align 4
  %2734 = shl i64 %2730, 32
  %2735 = ashr exact i64 %2734, 32
  %2736 = sext i32 %2733 to i64
  %2737 = mul nsw i64 %2736, %2735
  %2738 = trunc i64 %2737 to i32
  %2739 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %2740 = add i32 %2739, %2738
  %2741 = zext i32 %2740 to i64
  store i64 %2741, i64* %RDI.i740, align 8
  %2742 = icmp ult i32 %2740, %2738
  %2743 = icmp ult i32 %2740, %2739
  %2744 = or i1 %2742, %2743
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %14, align 1
  %2746 = and i32 %2740, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %21, align 1
  %2751 = xor i32 %2739, %2738
  %2752 = xor i32 %2751, %2740
  %2753 = lshr i32 %2752, 4
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  store i8 %2755, i8* %27, align 1
  %2756 = icmp eq i32 %2740, 0
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %30, align 1
  %2758 = lshr i32 %2740, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %33, align 1
  %2760 = lshr i32 %2738, 31
  %2761 = lshr i32 %2739, 31
  %2762 = xor i32 %2758, %2760
  %2763 = xor i32 %2758, %2761
  %2764 = add nuw nsw i32 %2762, %2763
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %39, align 1
  %2767 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RCX.i1599.pre-phi, align 8
  %2769 = add i64 %2649, 76
  store i64 %2769, i64* %3, align 8
  %2770 = trunc i32 %2767 to i5
  switch i5 %2770, label %2774 [
    i5 0, label %routine_sarl__cl___edi.exit713
    i5 1, label %2771
  ]

; <label>:2771:                                   ; preds = %block_4ae206
  %2772 = shl nuw i64 %2741, 32
  %2773 = ashr i64 %2772, 33
  br label %2781

; <label>:2774:                                   ; preds = %block_4ae206
  %2775 = and i32 %2767, 31
  %2776 = zext i32 %2775 to i64
  %2777 = add nsw i64 %2776, -1
  %2778 = sext i32 %2740 to i64
  %2779 = ashr i64 %2778, %2777
  %2780 = lshr i64 %2779, 1
  br label %2781

; <label>:2781:                                   ; preds = %2774, %2771
  %2782 = phi i64 [ %2780, %2774 ], [ %2773, %2771 ]
  %2783 = phi i64 [ %2779, %2774 ], [ %2741, %2771 ]
  %2784 = trunc i64 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = trunc i64 %2782 to i32
  %2787 = and i64 %2782, 4294967295
  store i64 %2787, i64* %RDI.i740, align 8
  store i8 %2785, i8* %14, align 1
  %2788 = and i32 %2786, 255
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2793 = icmp eq i32 %2786, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %30, align 1
  %2795 = lshr i32 %2786, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit713

routine_sarl__cl___edi.exit713:                   ; preds = %2781, %block_4ae206
  %2797 = load i64, i64* %RBP.i, align 8
  %2798 = add i64 %2797, -932
  %2799 = add i64 %2649, 83
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = sext i32 %2801 to i64
  %2803 = mul nsw i64 %2802, 180
  store i64 %2803, i64* %RDX.i1332, align 8
  %2804 = lshr i64 %2803, 63
  %2805 = load i64, i64* %RAX.i1663, align 8
  %2806 = add i64 %2803, %2805
  store i64 %2806, i64* %RAX.i1663, align 8
  %2807 = icmp ult i64 %2806, %2805
  %2808 = icmp ult i64 %2806, %2803
  %2809 = or i1 %2807, %2808
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %14, align 1
  %2811 = trunc i64 %2806 to i32
  %2812 = and i32 %2811, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %21, align 1
  %2817 = xor i64 %2803, %2805
  %2818 = xor i64 %2817, %2806
  %2819 = lshr i64 %2818, 4
  %2820 = trunc i64 %2819 to i8
  %2821 = and i8 %2820, 1
  store i8 %2821, i8* %27, align 1
  %2822 = icmp eq i64 %2806, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %30, align 1
  %2824 = lshr i64 %2806, 63
  %2825 = trunc i64 %2824 to i8
  store i8 %2825, i8* %33, align 1
  %2826 = lshr i64 %2805, 63
  %2827 = xor i64 %2824, %2826
  %2828 = xor i64 %2824, %2804
  %2829 = add nuw nsw i64 %2827, %2828
  %2830 = icmp eq i64 %2829, 2
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %39, align 1
  %2832 = add i64 %2797, -16
  %2833 = add i64 %2649, 97
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = sext i32 %2835 to i64
  %2837 = mul nsw i64 %2836, 12
  store i64 %2837, i64* %RDX.i1332, align 8
  %2838 = lshr i64 %2837, 63
  %2839 = add i64 %2837, %2806
  store i64 %2839, i64* %RAX.i1663, align 8
  %2840 = icmp ult i64 %2839, %2806
  %2841 = icmp ult i64 %2839, %2837
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
  %2850 = xor i64 %2837, %2806
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
  %2859 = xor i64 %2857, %2824
  %2860 = xor i64 %2857, %2838
  %2861 = add nuw nsw i64 %2859, %2860
  %2862 = icmp eq i64 %2861, 2
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %39, align 1
  %2864 = load i64, i64* %RDI.i740, align 8
  %2865 = inttoptr i64 %2839 to i32*
  %2866 = add i64 %2649, 106
  store i64 %2866, i64* %3, align 8
  %2867 = trunc i64 %2864 to i32
  %2868 = load i32, i32* %2865, align 4
  %2869 = add i32 %2868, %2867
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RDI.i740, align 8
  %2871 = and i32 %2869, 255
  %2872 = tail call i32 @llvm.ctpop.i32(i32 %2871)
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  %2876 = icmp eq i32 %2869, 0
  %2877 = zext i1 %2876 to i8
  %2878 = lshr i32 %2869, 31
  %2879 = trunc i32 %2878 to i8
  %2880 = add i64 %2649, 109
  store i8 0, i8* %14, align 1
  store i8 %2875, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %2877, i8* %30, align 1
  store i8 %2879, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2881 = icmp ne i8 %2879, 0
  %.v31 = select i1 %2881, i64 6, i64 19
  %2882 = add i64 %2880, %.v31
  store i64 %2882, i64* %3, align 8
  br i1 %2881, label %block_4ae279, label %block_.L_4ae286

block_4ae279:                                     ; preds = %routine_sarl__cl___edi.exit713
  store i64 0, i64* %RAX.i1663, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2883 = load i64, i64* %RBP.i, align 8
  %2884 = add i64 %2883, -956
  %2885 = add i64 %2882, 8
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  store i32 0, i32* %2886, align 4
  %2887 = load i64, i64* %3, align 8
  %2888 = add i64 %2887, 280
  store i64 %2888, i64* %3, align 8
  br label %block_.L_4ae399

block_.L_4ae286:                                  ; preds = %routine_sarl__cl___edi.exit713
  %2889 = load i64, i64* %RBP.i, align 8
  %2890 = add i64 %2889, -928
  store i64 %2890, i64* %RAX.i1663, align 8
  %2891 = add i64 %2889, -560
  store i64 %2891, i64* %RCX.i1599.pre-phi, align 8
  %2892 = add i64 %2889, -168
  %2893 = add i64 %2882, 21
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i64*
  %2895 = load i64, i64* %2894, align 8
  store i64 %2895, i64* %RDX.i1332, align 8
  %2896 = add i64 %2889, -8
  %2897 = add i64 %2882, 25
  store i64 %2897, i64* %3, align 8
  %2898 = inttoptr i64 %2896 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = sext i32 %2899 to i64
  store i64 %2900, i64* %RSI.i972, align 8
  %2901 = shl nsw i64 %2900, 1
  %2902 = add i64 %2901, %2895
  %2903 = add i64 %2882, 29
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i16*
  %2905 = load i16, i16* %2904, align 2
  %2906 = zext i16 %2905 to i64
  store i64 %2906, i64* %RDI.i740, align 8
  %2907 = add i64 %2889, -932
  %2908 = add i64 %2882, 36
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i32*
  %2910 = load i32, i32* %2909, align 4
  %2911 = sext i32 %2910 to i64
  %2912 = mul nsw i64 %2911, 180
  store i64 %2912, i64* %RDX.i1332, align 8
  %2913 = lshr i64 %2912, 63
  %2914 = add i64 %2912, %2891
  store i64 %2914, i64* %RCX.i1599.pre-phi, align 8
  %2915 = icmp ult i64 %2914, %2891
  %2916 = icmp ult i64 %2914, %2912
  %2917 = or i1 %2915, %2916
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %14, align 1
  %2919 = trunc i64 %2914 to i32
  %2920 = and i32 %2919, 255
  %2921 = tail call i32 @llvm.ctpop.i32(i32 %2920)
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = xor i8 %2923, 1
  store i8 %2924, i8* %21, align 1
  %2925 = xor i64 %2912, %2891
  %2926 = xor i64 %2925, %2914
  %2927 = lshr i64 %2926, 4
  %2928 = trunc i64 %2927 to i8
  %2929 = and i8 %2928, 1
  store i8 %2929, i8* %27, align 1
  %2930 = icmp eq i64 %2914, 0
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %30, align 1
  %2932 = lshr i64 %2914, 63
  %2933 = trunc i64 %2932 to i8
  store i8 %2933, i8* %33, align 1
  %2934 = lshr i64 %2891, 63
  %2935 = xor i64 %2932, %2934
  %2936 = xor i64 %2932, %2913
  %2937 = add nuw nsw i64 %2935, %2936
  %2938 = icmp eq i64 %2937, 2
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %39, align 1
  %2940 = add i64 %2889, -16
  %2941 = add i64 %2882, 50
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = sext i32 %2943 to i64
  %2945 = mul nsw i64 %2944, 12
  store i64 %2945, i64* %RDX.i1332, align 8
  %2946 = lshr i64 %2945, 63
  %2947 = add i64 %2945, %2914
  store i64 %2947, i64* %RCX.i1599.pre-phi, align 8
  %2948 = icmp ult i64 %2947, %2914
  %2949 = icmp ult i64 %2947, %2945
  %2950 = or i1 %2948, %2949
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %14, align 1
  %2952 = trunc i64 %2947 to i32
  %2953 = and i32 %2952, 255
  %2954 = tail call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  store i8 %2957, i8* %21, align 1
  %2958 = xor i64 %2945, %2914
  %2959 = xor i64 %2958, %2947
  %2960 = lshr i64 %2959, 4
  %2961 = trunc i64 %2960 to i8
  %2962 = and i8 %2961, 1
  store i8 %2962, i8* %27, align 1
  %2963 = icmp eq i64 %2947, 0
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %30, align 1
  %2965 = lshr i64 %2947, 63
  %2966 = trunc i64 %2965 to i8
  store i8 %2966, i8* %33, align 1
  %2967 = xor i64 %2965, %2932
  %2968 = xor i64 %2965, %2946
  %2969 = add nuw nsw i64 %2967, %2968
  %2970 = icmp eq i64 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %39, align 1
  %2972 = load i64, i64* %RDI.i740, align 8
  %2973 = inttoptr i64 %2947 to i32*
  %2974 = add i64 %2882, 60
  store i64 %2974, i64* %3, align 8
  %2975 = load i32, i32* %2973, align 4
  %2976 = shl i64 %2972, 32
  %2977 = ashr exact i64 %2976, 32
  %2978 = sext i32 %2975 to i64
  %2979 = mul nsw i64 %2978, %2977
  %2980 = trunc i64 %2979 to i32
  %2981 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %2982 = add i32 %2981, %2980
  %2983 = zext i32 %2982 to i64
  store i64 %2983, i64* %RDI.i740, align 8
  %2984 = icmp ult i32 %2982, %2980
  %2985 = icmp ult i32 %2982, %2981
  %2986 = or i1 %2984, %2985
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %14, align 1
  %2988 = and i32 %2982, 255
  %2989 = tail call i32 @llvm.ctpop.i32(i32 %2988)
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  %2992 = xor i8 %2991, 1
  store i8 %2992, i8* %21, align 1
  %2993 = xor i32 %2981, %2980
  %2994 = xor i32 %2993, %2982
  %2995 = lshr i32 %2994, 4
  %2996 = trunc i32 %2995 to i8
  %2997 = and i8 %2996, 1
  store i8 %2997, i8* %27, align 1
  %2998 = icmp eq i32 %2982, 0
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %30, align 1
  %3000 = lshr i32 %2982, 31
  %3001 = trunc i32 %3000 to i8
  store i8 %3001, i8* %33, align 1
  %3002 = lshr i32 %2980, 31
  %3003 = lshr i32 %2981, 31
  %3004 = xor i32 %3000, %3002
  %3005 = xor i32 %3000, %3003
  %3006 = add nuw nsw i32 %3004, %3005
  %3007 = icmp eq i32 %3006, 2
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %39, align 1
  %3009 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3010 = zext i32 %3009 to i64
  store i64 %3010, i64* %RCX.i1599.pre-phi, align 8
  %3011 = add i64 %2882, 76
  store i64 %3011, i64* %3, align 8
  %3012 = trunc i32 %3009 to i5
  switch i5 %3012, label %3016 [
    i5 0, label %routine_sarl__cl___edi.exit641
    i5 1, label %3013
  ]

; <label>:3013:                                   ; preds = %block_.L_4ae286
  %3014 = shl nuw i64 %2983, 32
  %3015 = ashr i64 %3014, 33
  br label %3023

; <label>:3016:                                   ; preds = %block_.L_4ae286
  %3017 = and i32 %3009, 31
  %3018 = zext i32 %3017 to i64
  %3019 = add nsw i64 %3018, -1
  %3020 = sext i32 %2982 to i64
  %3021 = ashr i64 %3020, %3019
  %3022 = lshr i64 %3021, 1
  br label %3023

; <label>:3023:                                   ; preds = %3016, %3013
  %3024 = phi i64 [ %3022, %3016 ], [ %3015, %3013 ]
  %3025 = phi i64 [ %3021, %3016 ], [ %2983, %3013 ]
  %3026 = trunc i64 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = trunc i64 %3024 to i32
  %3029 = and i64 %3024, 4294967295
  store i64 %3029, i64* %RDI.i740, align 8
  store i8 %3027, i8* %14, align 1
  %3030 = and i32 %3028, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3035 = icmp eq i32 %3028, 0
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %30, align 1
  %3037 = lshr i32 %3028, 31
  %3038 = trunc i32 %3037 to i8
  store i8 %3038, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit641

routine_sarl__cl___edi.exit641:                   ; preds = %3023, %block_.L_4ae286
  %3039 = load i64, i64* %RBP.i, align 8
  %3040 = add i64 %3039, -932
  %3041 = add i64 %2882, 83
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3040 to i32*
  %3043 = load i32, i32* %3042, align 4
  %3044 = sext i32 %3043 to i64
  %3045 = mul nsw i64 %3044, 180
  store i64 %3045, i64* %RDX.i1332, align 8
  %3046 = lshr i64 %3045, 63
  %3047 = load i64, i64* %RAX.i1663, align 8
  %3048 = add i64 %3045, %3047
  store i64 %3048, i64* %RAX.i1663, align 8
  %3049 = icmp ult i64 %3048, %3047
  %3050 = icmp ult i64 %3048, %3045
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
  %3059 = xor i64 %3045, %3047
  %3060 = xor i64 %3059, %3048
  %3061 = lshr i64 %3060, 4
  %3062 = trunc i64 %3061 to i8
  %3063 = and i8 %3062, 1
  store i8 %3063, i8* %27, align 1
  %3064 = icmp eq i64 %3048, 0
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %30, align 1
  %3066 = lshr i64 %3048, 63
  %3067 = trunc i64 %3066 to i8
  store i8 %3067, i8* %33, align 1
  %3068 = lshr i64 %3047, 63
  %3069 = xor i64 %3066, %3068
  %3070 = xor i64 %3066, %3046
  %3071 = add nuw nsw i64 %3069, %3070
  %3072 = icmp eq i64 %3071, 2
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %39, align 1
  %3074 = add i64 %3039, -16
  %3075 = add i64 %2882, 97
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = sext i32 %3077 to i64
  %3079 = mul nsw i64 %3078, 12
  store i64 %3079, i64* %RDX.i1332, align 8
  %3080 = lshr i64 %3079, 63
  %3081 = add i64 %3079, %3048
  store i64 %3081, i64* %RAX.i1663, align 8
  %3082 = icmp ult i64 %3081, %3048
  %3083 = icmp ult i64 %3081, %3079
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
  %3092 = xor i64 %3079, %3048
  %3093 = xor i64 %3092, %3081
  %3094 = lshr i64 %3093, 4
  %3095 = trunc i64 %3094 to i8
  %3096 = and i8 %3095, 1
  store i8 %3096, i8* %27, align 1
  %3097 = icmp eq i64 %3081, 0
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %30, align 1
  %3099 = lshr i64 %3081, 63
  %3100 = trunc i64 %3099 to i8
  store i8 %3100, i8* %33, align 1
  %3101 = xor i64 %3099, %3066
  %3102 = xor i64 %3099, %3080
  %3103 = add nuw nsw i64 %3101, %3102
  %3104 = icmp eq i64 %3103, 2
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %39, align 1
  %3106 = load i64, i64* %RDI.i740, align 8
  %3107 = inttoptr i64 %3081 to i32*
  %3108 = add i64 %2882, 106
  store i64 %3108, i64* %3, align 8
  %3109 = trunc i64 %3106 to i32
  %3110 = load i32, i32* %3107, align 4
  %3111 = add i32 %3110, %3109
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RDI.i740, align 8
  %3113 = icmp ult i32 %3111, %3109
  %3114 = icmp ult i32 %3111, %3110
  %3115 = or i1 %3113, %3114
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %14, align 1
  %3117 = and i32 %3111, 255
  %3118 = tail call i32 @llvm.ctpop.i32(i32 %3117)
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  store i8 %3121, i8* %21, align 1
  %3122 = xor i32 %3110, %3109
  %3123 = xor i32 %3122, %3111
  %3124 = lshr i32 %3123, 4
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  store i8 %3126, i8* %27, align 1
  %3127 = icmp eq i32 %3111, 0
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %30, align 1
  %3129 = lshr i32 %3111, 31
  %3130 = trunc i32 %3129 to i8
  store i8 %3130, i8* %33, align 1
  %3131 = lshr i32 %3109, 31
  %3132 = lshr i32 %3110, 31
  %3133 = xor i32 %3129, %3131
  %3134 = xor i32 %3129, %3132
  %3135 = add nuw nsw i32 %3133, %3134
  %3136 = icmp eq i32 %3135, 2
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %39, align 1
  %3138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3138, i64* %RAX.i1663, align 8
  %3139 = add i64 %3138, 72684
  %3140 = add i64 %2882, 120
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i32*
  %3142 = load i32, i32* %3141, align 4
  %3143 = sub i32 %3111, %3142
  %3144 = icmp ult i32 %3111, %3142
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %14, align 1
  %3146 = and i32 %3143, 255
  %3147 = tail call i32 @llvm.ctpop.i32(i32 %3146)
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  store i8 %3150, i8* %21, align 1
  %3151 = xor i32 %3142, %3111
  %3152 = xor i32 %3151, %3143
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %27, align 1
  %3156 = icmp eq i32 %3143, 0
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %30, align 1
  %3158 = lshr i32 %3143, 31
  %3159 = trunc i32 %3158 to i8
  store i8 %3159, i8* %33, align 1
  %3160 = lshr i32 %3142, 31
  %3161 = xor i32 %3160, %3129
  %3162 = xor i32 %3158, %3129
  %3163 = add nuw nsw i32 %3162, %3161
  %3164 = icmp eq i32 %3163, 2
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %39, align 1
  %3166 = icmp ne i8 %3159, 0
  %3167 = xor i1 %3166, %3164
  %3168 = or i1 %3156, %3167
  %.v126 = select i1 %3168, i64 151, i64 126
  %3169 = add i64 %2882, %.v126
  store i64 %3169, i64* %3, align 8
  br i1 %3168, label %block_.L_4ae31d, label %block_4ae304

block_4ae304:                                     ; preds = %routine_sarl__cl___edi.exit641
  store i64 %3138, i64* %RAX.i1663, align 8
  %3170 = add i64 %3169, 14
  store i64 %3170, i64* %3, align 8
  %3171 = load i32, i32* %3141, align 4
  %3172 = zext i32 %3171 to i64
  store i64 %3172, i64* %RCX.i1599.pre-phi, align 8
  %3173 = load i64, i64* %RBP.i, align 8
  %3174 = add i64 %3173, -960
  %3175 = add i64 %3169, 20
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3174 to i32*
  store i32 %3171, i32* %3176, align 4
  %3177 = load i64, i64* %3, align 8
  %3178 = add i64 %3177, 117
  store i64 %3178, i64* %3, align 8
  br label %block_.L_4ae38d

block_.L_4ae31d:                                  ; preds = %routine_sarl__cl___edi.exit641
  %3179 = load i64, i64* %RBP.i, align 8
  %3180 = add i64 %3179, -928
  store i64 %3180, i64* %RAX.i1663, align 8
  %3181 = add i64 %3179, -560
  store i64 %3181, i64* %RCX.i1599.pre-phi, align 8
  %3182 = add i64 %3179, -168
  %3183 = add i64 %3169, 21
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i64*
  %3185 = load i64, i64* %3184, align 8
  store i64 %3185, i64* %RDX.i1332, align 8
  %3186 = add i64 %3179, -8
  %3187 = add i64 %3169, 25
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = sext i32 %3189 to i64
  store i64 %3190, i64* %RSI.i972, align 8
  %3191 = shl nsw i64 %3190, 1
  %3192 = add i64 %3191, %3185
  %3193 = add i64 %3169, 29
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3192 to i16*
  %3195 = load i16, i16* %3194, align 2
  %3196 = zext i16 %3195 to i64
  store i64 %3196, i64* %RDI.i740, align 8
  %3197 = add i64 %3179, -932
  %3198 = add i64 %3169, 36
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = sext i32 %3200 to i64
  %3202 = mul nsw i64 %3201, 180
  store i64 %3202, i64* %RDX.i1332, align 8
  %3203 = lshr i64 %3202, 63
  %3204 = add i64 %3202, %3181
  store i64 %3204, i64* %RCX.i1599.pre-phi, align 8
  %3205 = icmp ult i64 %3204, %3181
  %3206 = icmp ult i64 %3204, %3202
  %3207 = or i1 %3205, %3206
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %14, align 1
  %3209 = trunc i64 %3204 to i32
  %3210 = and i32 %3209, 255
  %3211 = tail call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  store i8 %3214, i8* %21, align 1
  %3215 = xor i64 %3202, %3181
  %3216 = xor i64 %3215, %3204
  %3217 = lshr i64 %3216, 4
  %3218 = trunc i64 %3217 to i8
  %3219 = and i8 %3218, 1
  store i8 %3219, i8* %27, align 1
  %3220 = icmp eq i64 %3204, 0
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %30, align 1
  %3222 = lshr i64 %3204, 63
  %3223 = trunc i64 %3222 to i8
  store i8 %3223, i8* %33, align 1
  %3224 = lshr i64 %3181, 63
  %3225 = xor i64 %3222, %3224
  %3226 = xor i64 %3222, %3203
  %3227 = add nuw nsw i64 %3225, %3226
  %3228 = icmp eq i64 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %39, align 1
  %3230 = add i64 %3179, -16
  %3231 = add i64 %3169, 50
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = sext i32 %3233 to i64
  %3235 = mul nsw i64 %3234, 12
  store i64 %3235, i64* %RDX.i1332, align 8
  %3236 = lshr i64 %3235, 63
  %3237 = add i64 %3235, %3204
  store i64 %3237, i64* %RCX.i1599.pre-phi, align 8
  %3238 = icmp ult i64 %3237, %3204
  %3239 = icmp ult i64 %3237, %3235
  %3240 = or i1 %3238, %3239
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %14, align 1
  %3242 = trunc i64 %3237 to i32
  %3243 = and i32 %3242, 255
  %3244 = tail call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  store i8 %3247, i8* %21, align 1
  %3248 = xor i64 %3235, %3204
  %3249 = xor i64 %3248, %3237
  %3250 = lshr i64 %3249, 4
  %3251 = trunc i64 %3250 to i8
  %3252 = and i8 %3251, 1
  store i8 %3252, i8* %27, align 1
  %3253 = icmp eq i64 %3237, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %30, align 1
  %3255 = lshr i64 %3237, 63
  %3256 = trunc i64 %3255 to i8
  store i8 %3256, i8* %33, align 1
  %3257 = xor i64 %3255, %3222
  %3258 = xor i64 %3255, %3236
  %3259 = add nuw nsw i64 %3257, %3258
  %3260 = icmp eq i64 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %39, align 1
  %3262 = load i64, i64* %RDI.i740, align 8
  %3263 = inttoptr i64 %3237 to i32*
  %3264 = add i64 %3169, 60
  store i64 %3264, i64* %3, align 8
  %3265 = load i32, i32* %3263, align 4
  %3266 = shl i64 %3262, 32
  %3267 = ashr exact i64 %3266, 32
  %3268 = sext i32 %3265 to i64
  %3269 = mul nsw i64 %3268, %3267
  %3270 = trunc i64 %3269 to i32
  %3271 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %3272 = add i32 %3271, %3270
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RDI.i740, align 8
  %3274 = icmp ult i32 %3272, %3270
  %3275 = icmp ult i32 %3272, %3271
  %3276 = or i1 %3274, %3275
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %14, align 1
  %3278 = and i32 %3272, 255
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %21, align 1
  %3283 = xor i32 %3271, %3270
  %3284 = xor i32 %3283, %3272
  %3285 = lshr i32 %3284, 4
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  store i8 %3287, i8* %27, align 1
  %3288 = icmp eq i32 %3272, 0
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %30, align 1
  %3290 = lshr i32 %3272, 31
  %3291 = trunc i32 %3290 to i8
  store i8 %3291, i8* %33, align 1
  %3292 = lshr i32 %3270, 31
  %3293 = lshr i32 %3271, 31
  %3294 = xor i32 %3290, %3292
  %3295 = xor i32 %3290, %3293
  %3296 = add nuw nsw i32 %3294, %3295
  %3297 = icmp eq i32 %3296, 2
  %3298 = zext i1 %3297 to i8
  store i8 %3298, i8* %39, align 1
  %3299 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RCX.i1599.pre-phi, align 8
  %3301 = add i64 %3169, 76
  store i64 %3301, i64* %3, align 8
  %3302 = trunc i32 %3299 to i5
  switch i5 %3302, label %3306 [
    i5 0, label %routine_sarl__cl___edi.exit564
    i5 1, label %3303
  ]

; <label>:3303:                                   ; preds = %block_.L_4ae31d
  %3304 = shl nuw i64 %3273, 32
  %3305 = ashr i64 %3304, 33
  br label %3313

; <label>:3306:                                   ; preds = %block_.L_4ae31d
  %3307 = and i32 %3299, 31
  %3308 = zext i32 %3307 to i64
  %3309 = add nsw i64 %3308, -1
  %3310 = sext i32 %3272 to i64
  %3311 = ashr i64 %3310, %3309
  %3312 = lshr i64 %3311, 1
  br label %3313

; <label>:3313:                                   ; preds = %3306, %3303
  %3314 = phi i64 [ %3312, %3306 ], [ %3305, %3303 ]
  %3315 = phi i64 [ %3311, %3306 ], [ %3273, %3303 ]
  %3316 = trunc i64 %3315 to i8
  %3317 = and i8 %3316, 1
  %3318 = trunc i64 %3314 to i32
  %3319 = and i64 %3314, 4294967295
  store i64 %3319, i64* %RDI.i740, align 8
  store i8 %3317, i8* %14, align 1
  %3320 = and i32 %3318, 255
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3325 = icmp eq i32 %3318, 0
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %30, align 1
  %3327 = lshr i32 %3318, 31
  %3328 = trunc i32 %3327 to i8
  store i8 %3328, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit564

routine_sarl__cl___edi.exit564:                   ; preds = %3313, %block_.L_4ae31d
  %3329 = load i64, i64* %RBP.i, align 8
  %3330 = add i64 %3329, -932
  %3331 = add i64 %3169, 83
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  %3334 = sext i32 %3333 to i64
  %3335 = mul nsw i64 %3334, 180
  store i64 %3335, i64* %RDX.i1332, align 8
  %3336 = lshr i64 %3335, 63
  %3337 = load i64, i64* %RAX.i1663, align 8
  %3338 = add i64 %3335, %3337
  store i64 %3338, i64* %RAX.i1663, align 8
  %3339 = icmp ult i64 %3338, %3337
  %3340 = icmp ult i64 %3338, %3335
  %3341 = or i1 %3339, %3340
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %14, align 1
  %3343 = trunc i64 %3338 to i32
  %3344 = and i32 %3343, 255
  %3345 = tail call i32 @llvm.ctpop.i32(i32 %3344)
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = xor i8 %3347, 1
  store i8 %3348, i8* %21, align 1
  %3349 = xor i64 %3335, %3337
  %3350 = xor i64 %3349, %3338
  %3351 = lshr i64 %3350, 4
  %3352 = trunc i64 %3351 to i8
  %3353 = and i8 %3352, 1
  store i8 %3353, i8* %27, align 1
  %3354 = icmp eq i64 %3338, 0
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %30, align 1
  %3356 = lshr i64 %3338, 63
  %3357 = trunc i64 %3356 to i8
  store i8 %3357, i8* %33, align 1
  %3358 = lshr i64 %3337, 63
  %3359 = xor i64 %3356, %3358
  %3360 = xor i64 %3356, %3336
  %3361 = add nuw nsw i64 %3359, %3360
  %3362 = icmp eq i64 %3361, 2
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %39, align 1
  %3364 = add i64 %3329, -16
  %3365 = add i64 %3169, 97
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3364 to i32*
  %3367 = load i32, i32* %3366, align 4
  %3368 = sext i32 %3367 to i64
  %3369 = mul nsw i64 %3368, 12
  store i64 %3369, i64* %RDX.i1332, align 8
  %3370 = lshr i64 %3369, 63
  %3371 = add i64 %3369, %3338
  store i64 %3371, i64* %RAX.i1663, align 8
  %3372 = icmp ult i64 %3371, %3338
  %3373 = icmp ult i64 %3371, %3369
  %3374 = or i1 %3372, %3373
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %14, align 1
  %3376 = trunc i64 %3371 to i32
  %3377 = and i32 %3376, 255
  %3378 = tail call i32 @llvm.ctpop.i32(i32 %3377)
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = xor i8 %3380, 1
  store i8 %3381, i8* %21, align 1
  %3382 = xor i64 %3369, %3338
  %3383 = xor i64 %3382, %3371
  %3384 = lshr i64 %3383, 4
  %3385 = trunc i64 %3384 to i8
  %3386 = and i8 %3385, 1
  store i8 %3386, i8* %27, align 1
  %3387 = icmp eq i64 %3371, 0
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %30, align 1
  %3389 = lshr i64 %3371, 63
  %3390 = trunc i64 %3389 to i8
  store i8 %3390, i8* %33, align 1
  %3391 = xor i64 %3389, %3356
  %3392 = xor i64 %3389, %3370
  %3393 = add nuw nsw i64 %3391, %3392
  %3394 = icmp eq i64 %3393, 2
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %39, align 1
  %3396 = load i64, i64* %RDI.i740, align 8
  %3397 = inttoptr i64 %3371 to i32*
  %3398 = add i64 %3169, 106
  store i64 %3398, i64* %3, align 8
  %3399 = trunc i64 %3396 to i32
  %3400 = load i32, i32* %3397, align 4
  %3401 = add i32 %3400, %3399
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RDI.i740, align 8
  %3403 = icmp ult i32 %3401, %3399
  %3404 = icmp ult i32 %3401, %3400
  %3405 = or i1 %3403, %3404
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %14, align 1
  %3407 = and i32 %3401, 255
  %3408 = tail call i32 @llvm.ctpop.i32(i32 %3407)
  %3409 = trunc i32 %3408 to i8
  %3410 = and i8 %3409, 1
  %3411 = xor i8 %3410, 1
  store i8 %3411, i8* %21, align 1
  %3412 = xor i32 %3400, %3399
  %3413 = xor i32 %3412, %3401
  %3414 = lshr i32 %3413, 4
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  store i8 %3416, i8* %27, align 1
  %3417 = icmp eq i32 %3401, 0
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %30, align 1
  %3419 = lshr i32 %3401, 31
  %3420 = trunc i32 %3419 to i8
  store i8 %3420, i8* %33, align 1
  %3421 = lshr i32 %3399, 31
  %3422 = lshr i32 %3400, 31
  %3423 = xor i32 %3419, %3421
  %3424 = xor i32 %3419, %3422
  %3425 = add nuw nsw i32 %3423, %3424
  %3426 = icmp eq i32 %3425, 2
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %39, align 1
  %3428 = load i64, i64* %RBP.i, align 8
  %3429 = add i64 %3428, -960
  %3430 = add i64 %3169, 112
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i32*
  store i32 %3401, i32* %3431, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4ae38d

block_.L_4ae38d:                                  ; preds = %routine_sarl__cl___edi.exit564, %block_4ae304
  %3432 = phi i64 [ %.pre95, %routine_sarl__cl___edi.exit564 ], [ %3178, %block_4ae304 ]
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -960
  %3435 = add i64 %3432, 6
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i1663, align 8
  %3439 = add i64 %3433, -956
  %3440 = add i64 %3432, 12
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  store i32 %3437, i32* %3441, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_4ae399

block_.L_4ae399:                                  ; preds = %block_.L_4ae38d, %block_4ae279
  %3442 = phi i64 [ %.pre96, %block_.L_4ae38d ], [ %2888, %block_4ae279 ]
  %3443 = load i64, i64* %RBP.i, align 8
  %3444 = add i64 %3443, -956
  %3445 = add i64 %3442, 6
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  %3447 = load i32, i32* %3446, align 4
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RAX.i1663, align 8
  %3449 = trunc i32 %3447 to i16
  store i16 %3449, i16* %CX.i529, align 2
  %3450 = add i64 %3443, -176
  %3451 = add i64 %3442, 16
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i64*
  %3453 = load i64, i64* %3452, align 8
  store i64 %3453, i64* %RDX.i1332, align 8
  %3454 = add i64 %3443, -8
  %3455 = add i64 %3442, 20
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = sext i32 %3457 to i64
  store i64 %3458, i64* %RSI.i972, align 8
  %3459 = shl nsw i64 %3458, 1
  %3460 = add i64 %3459, %3453
  %3461 = add i64 %3442, 24
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i16*
  store i16 %3449, i16* %3462, align 2
  %3463 = load i64, i64* %RBP.i, align 8
  %3464 = add i64 %3463, -8
  %3465 = load i64, i64* %3, align 8
  %3466 = add i64 %3465, 3
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3464 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = add i32 %3468, 1
  %3470 = zext i32 %3469 to i64
  store i64 %3470, i64* %RAX.i1663, align 8
  %3471 = icmp eq i32 %3468, -1
  %3472 = icmp eq i32 %3469, 0
  %3473 = or i1 %3471, %3472
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %14, align 1
  %3475 = and i32 %3469, 255
  %3476 = tail call i32 @llvm.ctpop.i32(i32 %3475)
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = xor i8 %3478, 1
  store i8 %3479, i8* %21, align 1
  %3480 = xor i32 %3469, %3468
  %3481 = lshr i32 %3480, 4
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  store i8 %3483, i8* %27, align 1
  %3484 = zext i1 %3472 to i8
  store i8 %3484, i8* %30, align 1
  %3485 = lshr i32 %3469, 31
  %3486 = trunc i32 %3485 to i8
  store i8 %3486, i8* %33, align 1
  %3487 = lshr i32 %3468, 31
  %3488 = xor i32 %3485, %3487
  %3489 = add nuw nsw i32 %3488, %3485
  %3490 = icmp eq i32 %3489, 2
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %39, align 1
  %3492 = add i64 %3465, 9
  store i64 %3492, i64* %3, align 8
  store i32 %3469, i32* %3467, align 4
  %3493 = load i64, i64* %3, align 8
  %3494 = add i64 %3493, -470
  store i64 %3494, i64* %3, align 8
  br label %block_.L_4ae1e4

block_.L_4ae3bf:                                  ; preds = %block_.L_4ae1e4
  %3495 = add i64 %2649, 7
  store i64 %3495, i64* %3, align 8
  store i32 0, i32* %2605, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_4ae3c6

block_.L_4ae3c6:                                  ; preds = %block_.L_4ae61e, %block_.L_4ae3bf
  %3496 = phi i64 [ %4550, %block_.L_4ae61e ], [ %.pre91, %block_.L_4ae3bf ]
  %3497 = load i64, i64* %RBP.i, align 8
  %3498 = add i64 %3497, -8
  %3499 = add i64 %3496, 3
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3498 to i32*
  %3501 = load i32, i32* %3500, align 4
  %3502 = zext i32 %3501 to i64
  store i64 %3502, i64* %RAX.i1663, align 8
  %3503 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3503, i64* %RCX.i1599.pre-phi, align 8
  %3504 = add i64 %3503, 60
  %3505 = add i64 %3496, 14
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3504 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = add i32 %3507, 8
  %3509 = shl i32 %3508, 2
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %RDX.i1332, align 8
  %3511 = sub i32 %3501, %3509
  %3512 = icmp ult i32 %3501, %3509
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %14, align 1
  %3514 = and i32 %3511, 255
  %3515 = tail call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  store i8 %3518, i8* %21, align 1
  %3519 = xor i32 %3509, %3501
  %3520 = xor i32 %3519, %3511
  %3521 = lshr i32 %3520, 4
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  store i8 %3523, i8* %27, align 1
  %3524 = icmp eq i32 %3511, 0
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %30, align 1
  %3526 = lshr i32 %3511, 31
  %3527 = trunc i32 %3526 to i8
  store i8 %3527, i8* %33, align 1
  %3528 = lshr i32 %3501, 31
  %3529 = lshr i32 %3508, 29
  %3530 = and i32 %3529, 1
  %3531 = xor i32 %3530, %3528
  %3532 = xor i32 %3526, %3528
  %3533 = add nuw nsw i32 %3532, %3531
  %3534 = icmp eq i32 %3533, 2
  %3535 = zext i1 %3534 to i8
  store i8 %3535, i8* %39, align 1
  %3536 = icmp ne i8 %3527, 0
  %3537 = xor i1 %3536, %3534
  %.v123 = select i1 %3537, i64 28, i64 619
  %3538 = add i64 %3496, %.v123
  store i64 %3538, i64* %3, align 8
  %3539 = load i64, i64* %RBP.i, align 8
  br i1 %3537, label %block_4ae3e2, label %block_.L_4ae631

block_4ae3e2:                                     ; preds = %block_.L_4ae3c6
  %3540 = add i64 %3539, -12
  %3541 = add i64 %3538, 7
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  store i32 0, i32* %3542, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_4ae3e9

block_.L_4ae3e9:                                  ; preds = %block_.L_4ae5e0, %block_4ae3e2
  %3543 = phi i64 [ %4520, %block_.L_4ae5e0 ], [ %.pre92, %block_4ae3e2 ]
  %3544 = load i64, i64* %RBP.i, align 8
  %3545 = add i64 %3544, -12
  %3546 = add i64 %3543, 3
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  %3548 = load i32, i32* %3547, align 4
  %3549 = zext i32 %3548 to i64
  store i64 %3549, i64* %RAX.i1663, align 8
  %3550 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3550, i64* %RCX.i1599.pre-phi, align 8
  %3551 = add i64 %3550, 52
  %3552 = add i64 %3543, 14
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3551 to i32*
  %3554 = load i32, i32* %3553, align 4
  %3555 = add i32 %3554, 8
  %3556 = shl i32 %3555, 2
  %3557 = zext i32 %3556 to i64
  store i64 %3557, i64* %RDX.i1332, align 8
  %3558 = sub i32 %3548, %3556
  %3559 = icmp ult i32 %3548, %3556
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %14, align 1
  %3561 = and i32 %3558, 255
  %3562 = tail call i32 @llvm.ctpop.i32(i32 %3561)
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = xor i8 %3564, 1
  store i8 %3565, i8* %21, align 1
  %3566 = xor i32 %3556, %3548
  %3567 = xor i32 %3566, %3558
  %3568 = lshr i32 %3567, 4
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  store i8 %3570, i8* %27, align 1
  %3571 = icmp eq i32 %3558, 0
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %30, align 1
  %3573 = lshr i32 %3558, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %33, align 1
  %3575 = lshr i32 %3548, 31
  %3576 = lshr i32 %3555, 29
  %3577 = and i32 %3576, 1
  %3578 = xor i32 %3577, %3575
  %3579 = xor i32 %3573, %3575
  %3580 = add nuw nsw i32 %3579, %3578
  %3581 = icmp eq i32 %3580, 2
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %39, align 1
  %3583 = icmp ne i8 %3574, 0
  %3584 = xor i1 %3583, %3581
  %.v124 = select i1 %3584, i64 28, i64 565
  %3585 = add i64 %3543, %.v124
  store i64 %3585, i64* %3, align 8
  %3586 = load i64, i64* %RBP.i, align 8
  br i1 %3584, label %block_4ae405, label %block_.L_4ae61e

block_4ae405:                                     ; preds = %block_.L_4ae3e9
  %3587 = add i64 %3586, -928
  store i64 %3587, i64* %RAX.i1663, align 8
  %3588 = add i64 %3586, -560
  store i64 %3588, i64* %RCX.i1599.pre-phi, align 8
  %3589 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3589, i64* %RDX.i1332, align 8
  %3590 = add i64 %3586, -16
  %3591 = add i64 %3585, 26
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = sext i32 %3593 to i64
  store i64 %3594, i64* %RSI.i972, align 8
  %3595 = shl nsw i64 %3594, 3
  %3596 = add i64 %3595, %3589
  %3597 = add i64 %3585, 30
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i64*
  %3599 = load i64, i64* %3598, align 8
  store i64 %3599, i64* %RDX.i1332, align 8
  %3600 = add i64 %3599, 6448
  %3601 = add i64 %3585, 37
  store i64 %3601, i64* %3, align 8
  %3602 = inttoptr i64 %3600 to i64*
  %3603 = load i64, i64* %3602, align 8
  store i64 %3603, i64* %RDX.i1332, align 8
  %3604 = add i64 %3586, -8
  %3605 = add i64 %3585, 41
  store i64 %3605, i64* %3, align 8
  %3606 = inttoptr i64 %3604 to i32*
  %3607 = load i32, i32* %3606, align 4
  %3608 = sext i32 %3607 to i64
  store i64 %3608, i64* %RSI.i972, align 8
  %3609 = shl nsw i64 %3608, 3
  %3610 = add i64 %3609, %3603
  %3611 = add i64 %3585, 45
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i64*
  %3613 = load i64, i64* %3612, align 8
  store i64 %3613, i64* %RDX.i1332, align 8
  %3614 = add i64 %3586, -12
  %3615 = add i64 %3585, 49
  store i64 %3615, i64* %3, align 8
  %3616 = inttoptr i64 %3614 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = sext i32 %3617 to i64
  store i64 %3618, i64* %RSI.i972, align 8
  %3619 = shl nsw i64 %3618, 1
  %3620 = add i64 %3619, %3613
  %3621 = add i64 %3585, 53
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i16*
  %3623 = load i16, i16* %3622, align 2
  %3624 = zext i16 %3623 to i64
  store i64 %3624, i64* %RDI.i740, align 8
  %3625 = add i64 %3586, -932
  %3626 = add i64 %3585, 60
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i32*
  %3628 = load i32, i32* %3627, align 4
  %3629 = sext i32 %3628 to i64
  %3630 = mul nsw i64 %3629, 180
  store i64 %3630, i64* %RDX.i1332, align 8
  %3631 = lshr i64 %3630, 63
  %3632 = add i64 %3630, %3588
  store i64 %3632, i64* %RCX.i1599.pre-phi, align 8
  %3633 = icmp ult i64 %3632, %3588
  %3634 = icmp ult i64 %3632, %3630
  %3635 = or i1 %3633, %3634
  %3636 = zext i1 %3635 to i8
  store i8 %3636, i8* %14, align 1
  %3637 = trunc i64 %3632 to i32
  %3638 = and i32 %3637, 255
  %3639 = tail call i32 @llvm.ctpop.i32(i32 %3638)
  %3640 = trunc i32 %3639 to i8
  %3641 = and i8 %3640, 1
  %3642 = xor i8 %3641, 1
  store i8 %3642, i8* %21, align 1
  %3643 = xor i64 %3630, %3588
  %3644 = xor i64 %3643, %3632
  %3645 = lshr i64 %3644, 4
  %3646 = trunc i64 %3645 to i8
  %3647 = and i8 %3646, 1
  store i8 %3647, i8* %27, align 1
  %3648 = icmp eq i64 %3632, 0
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %30, align 1
  %3650 = lshr i64 %3632, 63
  %3651 = trunc i64 %3650 to i8
  store i8 %3651, i8* %33, align 1
  %3652 = lshr i64 %3588, 63
  %3653 = xor i64 %3650, %3652
  %3654 = xor i64 %3650, %3631
  %3655 = add nuw nsw i64 %3653, %3654
  %3656 = icmp eq i64 %3655, 2
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %39, align 1
  %3658 = load i64, i64* %RBP.i, align 8
  %3659 = add i64 %3658, -16
  %3660 = add i64 %3585, 74
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i32*
  %3662 = load i32, i32* %3661, align 4
  %3663 = sext i32 %3662 to i64
  %3664 = mul nsw i64 %3663, 12
  store i64 %3664, i64* %RDX.i1332, align 8
  %3665 = lshr i64 %3664, 63
  %3666 = add i64 %3664, %3632
  store i64 %3666, i64* %RCX.i1599.pre-phi, align 8
  %3667 = icmp ult i64 %3666, %3632
  %3668 = icmp ult i64 %3666, %3664
  %3669 = or i1 %3667, %3668
  %3670 = zext i1 %3669 to i8
  store i8 %3670, i8* %14, align 1
  %3671 = trunc i64 %3666 to i32
  %3672 = and i32 %3671, 255
  %3673 = tail call i32 @llvm.ctpop.i32(i32 %3672)
  %3674 = trunc i32 %3673 to i8
  %3675 = and i8 %3674, 1
  %3676 = xor i8 %3675, 1
  store i8 %3676, i8* %21, align 1
  %3677 = xor i64 %3664, %3632
  %3678 = xor i64 %3677, %3666
  %3679 = lshr i64 %3678, 4
  %3680 = trunc i64 %3679 to i8
  %3681 = and i8 %3680, 1
  store i8 %3681, i8* %27, align 1
  %3682 = icmp eq i64 %3666, 0
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %30, align 1
  %3684 = lshr i64 %3666, 63
  %3685 = trunc i64 %3684 to i8
  store i8 %3685, i8* %33, align 1
  %3686 = xor i64 %3684, %3650
  %3687 = xor i64 %3684, %3665
  %3688 = add nuw nsw i64 %3686, %3687
  %3689 = icmp eq i64 %3688, 2
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %39, align 1
  %3691 = load i64, i64* %RDI.i740, align 8
  %3692 = inttoptr i64 %3666 to i32*
  %3693 = add i64 %3585, 84
  store i64 %3693, i64* %3, align 8
  %3694 = load i32, i32* %3692, align 4
  %3695 = shl i64 %3691, 32
  %3696 = ashr exact i64 %3695, 32
  %3697 = sext i32 %3694 to i64
  %3698 = mul nsw i64 %3697, %3696
  %3699 = trunc i64 %3698 to i32
  %3700 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %3701 = add i32 %3700, %3699
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RDI.i740, align 8
  %3703 = icmp ult i32 %3701, %3699
  %3704 = icmp ult i32 %3701, %3700
  %3705 = or i1 %3703, %3704
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %14, align 1
  %3707 = and i32 %3701, 255
  %3708 = tail call i32 @llvm.ctpop.i32(i32 %3707)
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  store i8 %3711, i8* %21, align 1
  %3712 = xor i32 %3700, %3699
  %3713 = xor i32 %3712, %3701
  %3714 = lshr i32 %3713, 4
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  store i8 %3716, i8* %27, align 1
  %3717 = icmp eq i32 %3701, 0
  %3718 = zext i1 %3717 to i8
  store i8 %3718, i8* %30, align 1
  %3719 = lshr i32 %3701, 31
  %3720 = trunc i32 %3719 to i8
  store i8 %3720, i8* %33, align 1
  %3721 = lshr i32 %3699, 31
  %3722 = lshr i32 %3700, 31
  %3723 = xor i32 %3719, %3721
  %3724 = xor i32 %3719, %3722
  %3725 = add nuw nsw i32 %3723, %3724
  %3726 = icmp eq i32 %3725, 2
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %39, align 1
  %3728 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3729 = zext i32 %3728 to i64
  store i64 %3729, i64* %RCX.i1599.pre-phi, align 8
  %3730 = add i64 %3585, 100
  store i64 %3730, i64* %3, align 8
  %3731 = trunc i32 %3728 to i5
  switch i5 %3731, label %3735 [
    i5 0, label %routine_sarl__cl___edi.exit420
    i5 1, label %3732
  ]

; <label>:3732:                                   ; preds = %block_4ae405
  %3733 = shl nuw i64 %3702, 32
  %3734 = ashr i64 %3733, 33
  br label %3742

; <label>:3735:                                   ; preds = %block_4ae405
  %3736 = and i32 %3728, 31
  %3737 = zext i32 %3736 to i64
  %3738 = add nsw i64 %3737, -1
  %3739 = sext i32 %3701 to i64
  %3740 = ashr i64 %3739, %3738
  %3741 = lshr i64 %3740, 1
  br label %3742

; <label>:3742:                                   ; preds = %3735, %3732
  %3743 = phi i64 [ %3741, %3735 ], [ %3734, %3732 ]
  %3744 = phi i64 [ %3740, %3735 ], [ %3702, %3732 ]
  %3745 = trunc i64 %3744 to i8
  %3746 = and i8 %3745, 1
  %3747 = trunc i64 %3743 to i32
  %3748 = and i64 %3743, 4294967295
  store i64 %3748, i64* %RDI.i740, align 8
  store i8 %3746, i8* %14, align 1
  %3749 = and i32 %3747, 255
  %3750 = tail call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  store i8 %3753, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3754 = icmp eq i32 %3747, 0
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %30, align 1
  %3756 = lshr i32 %3747, 31
  %3757 = trunc i32 %3756 to i8
  store i8 %3757, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit420

routine_sarl__cl___edi.exit420:                   ; preds = %3742, %block_4ae405
  %3758 = load i64, i64* %RBP.i, align 8
  %3759 = add i64 %3758, -932
  %3760 = add i64 %3585, 107
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = sext i32 %3762 to i64
  %3764 = mul nsw i64 %3763, 180
  store i64 %3764, i64* %RDX.i1332, align 8
  %3765 = lshr i64 %3764, 63
  %3766 = load i64, i64* %RAX.i1663, align 8
  %3767 = add i64 %3764, %3766
  store i64 %3767, i64* %RAX.i1663, align 8
  %3768 = icmp ult i64 %3767, %3766
  %3769 = icmp ult i64 %3767, %3764
  %3770 = or i1 %3768, %3769
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %14, align 1
  %3772 = trunc i64 %3767 to i32
  %3773 = and i32 %3772, 255
  %3774 = tail call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  store i8 %3777, i8* %21, align 1
  %3778 = xor i64 %3764, %3766
  %3779 = xor i64 %3778, %3767
  %3780 = lshr i64 %3779, 4
  %3781 = trunc i64 %3780 to i8
  %3782 = and i8 %3781, 1
  store i8 %3782, i8* %27, align 1
  %3783 = icmp eq i64 %3767, 0
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %30, align 1
  %3785 = lshr i64 %3767, 63
  %3786 = trunc i64 %3785 to i8
  store i8 %3786, i8* %33, align 1
  %3787 = lshr i64 %3766, 63
  %3788 = xor i64 %3785, %3787
  %3789 = xor i64 %3785, %3765
  %3790 = add nuw nsw i64 %3788, %3789
  %3791 = icmp eq i64 %3790, 2
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %39, align 1
  %3793 = add i64 %3758, -16
  %3794 = add i64 %3585, 121
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i32*
  %3796 = load i32, i32* %3795, align 4
  %3797 = sext i32 %3796 to i64
  %3798 = mul nsw i64 %3797, 12
  store i64 %3798, i64* %RDX.i1332, align 8
  %3799 = lshr i64 %3798, 63
  %3800 = add i64 %3798, %3767
  store i64 %3800, i64* %RAX.i1663, align 8
  %3801 = icmp ult i64 %3800, %3767
  %3802 = icmp ult i64 %3800, %3798
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %14, align 1
  %3805 = trunc i64 %3800 to i32
  %3806 = and i32 %3805, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %21, align 1
  %3811 = xor i64 %3798, %3767
  %3812 = xor i64 %3811, %3800
  %3813 = lshr i64 %3812, 4
  %3814 = trunc i64 %3813 to i8
  %3815 = and i8 %3814, 1
  store i8 %3815, i8* %27, align 1
  %3816 = icmp eq i64 %3800, 0
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %30, align 1
  %3818 = lshr i64 %3800, 63
  %3819 = trunc i64 %3818 to i8
  store i8 %3819, i8* %33, align 1
  %3820 = xor i64 %3818, %3785
  %3821 = xor i64 %3818, %3799
  %3822 = add nuw nsw i64 %3820, %3821
  %3823 = icmp eq i64 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %39, align 1
  %3825 = load i64, i64* %RDI.i740, align 8
  %3826 = inttoptr i64 %3800 to i32*
  %3827 = add i64 %3585, 130
  store i64 %3827, i64* %3, align 8
  %3828 = trunc i64 %3825 to i32
  %3829 = load i32, i32* %3826, align 4
  %3830 = add i32 %3829, %3828
  %3831 = zext i32 %3830 to i64
  store i64 %3831, i64* %RDI.i740, align 8
  %3832 = and i32 %3830, 255
  %3833 = tail call i32 @llvm.ctpop.i32(i32 %3832)
  %3834 = trunc i32 %3833 to i8
  %3835 = and i8 %3834, 1
  %3836 = xor i8 %3835, 1
  %3837 = icmp eq i32 %3830, 0
  %3838 = zext i1 %3837 to i8
  %3839 = lshr i32 %3830, 31
  %3840 = trunc i32 %3839 to i8
  %3841 = add i64 %3585, 133
  store i8 0, i8* %14, align 1
  store i8 %3836, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %3838, i8* %30, align 1
  store i8 %3840, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3842 = icmp ne i8 %3840, 0
  %.v = select i1 %3842, i64 6, i64 19
  %3843 = add i64 %3841, %.v
  store i64 %3843, i64* %3, align 8
  br i1 %3842, label %block_4ae490, label %block_.L_4ae49d

block_4ae490:                                     ; preds = %routine_sarl__cl___edi.exit420
  store i64 0, i64* %RAX.i1663, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3844 = load i64, i64* %RBP.i, align 8
  %3845 = add i64 %3844, -964
  %3846 = add i64 %3843, 8
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i32*
  store i32 0, i32* %3847, align 4
  %3848 = load i64, i64* %3, align 8
  %3849 = add i64 %3848, 328
  store i64 %3849, i64* %3, align 8
  br label %block_.L_4ae5e0

block_.L_4ae49d:                                  ; preds = %routine_sarl__cl___edi.exit420
  %3850 = load i64, i64* %RBP.i, align 8
  %3851 = add i64 %3850, -928
  store i64 %3851, i64* %RAX.i1663, align 8
  %3852 = add i64 %3850, -560
  store i64 %3852, i64* %RCX.i1599.pre-phi, align 8
  %3853 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %3853, i64* %RDX.i1332, align 8
  %3854 = add i64 %3850, -16
  %3855 = add i64 %3843, 26
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3854 to i32*
  %3857 = load i32, i32* %3856, align 4
  %3858 = sext i32 %3857 to i64
  store i64 %3858, i64* %RSI.i972, align 8
  %3859 = shl nsw i64 %3858, 3
  %3860 = add i64 %3859, %3853
  %3861 = add i64 %3843, 30
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to i64*
  %3863 = load i64, i64* %3862, align 8
  store i64 %3863, i64* %RDX.i1332, align 8
  %3864 = add i64 %3863, 6448
  %3865 = add i64 %3843, 37
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i64*
  %3867 = load i64, i64* %3866, align 8
  store i64 %3867, i64* %RDX.i1332, align 8
  %3868 = add i64 %3850, -8
  %3869 = add i64 %3843, 41
  store i64 %3869, i64* %3, align 8
  %3870 = inttoptr i64 %3868 to i32*
  %3871 = load i32, i32* %3870, align 4
  %3872 = sext i32 %3871 to i64
  store i64 %3872, i64* %RSI.i972, align 8
  %3873 = shl nsw i64 %3872, 3
  %3874 = add i64 %3873, %3867
  %3875 = add i64 %3843, 45
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to i64*
  %3877 = load i64, i64* %3876, align 8
  store i64 %3877, i64* %RDX.i1332, align 8
  %3878 = add i64 %3850, -12
  %3879 = add i64 %3843, 49
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i32*
  %3881 = load i32, i32* %3880, align 4
  %3882 = sext i32 %3881 to i64
  store i64 %3882, i64* %RSI.i972, align 8
  %3883 = shl nsw i64 %3882, 1
  %3884 = add i64 %3883, %3877
  %3885 = add i64 %3843, 53
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i16*
  %3887 = load i16, i16* %3886, align 2
  %3888 = zext i16 %3887 to i64
  store i64 %3888, i64* %RDI.i740, align 8
  %3889 = add i64 %3850, -932
  %3890 = add i64 %3843, 60
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3889 to i32*
  %3892 = load i32, i32* %3891, align 4
  %3893 = sext i32 %3892 to i64
  %3894 = mul nsw i64 %3893, 180
  store i64 %3894, i64* %RDX.i1332, align 8
  %3895 = lshr i64 %3894, 63
  %3896 = add i64 %3894, %3852
  store i64 %3896, i64* %RCX.i1599.pre-phi, align 8
  %3897 = icmp ult i64 %3896, %3852
  %3898 = icmp ult i64 %3896, %3894
  %3899 = or i1 %3897, %3898
  %3900 = zext i1 %3899 to i8
  store i8 %3900, i8* %14, align 1
  %3901 = trunc i64 %3896 to i32
  %3902 = and i32 %3901, 255
  %3903 = tail call i32 @llvm.ctpop.i32(i32 %3902)
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = xor i8 %3905, 1
  store i8 %3906, i8* %21, align 1
  %3907 = xor i64 %3894, %3852
  %3908 = xor i64 %3907, %3896
  %3909 = lshr i64 %3908, 4
  %3910 = trunc i64 %3909 to i8
  %3911 = and i8 %3910, 1
  store i8 %3911, i8* %27, align 1
  %3912 = icmp eq i64 %3896, 0
  %3913 = zext i1 %3912 to i8
  store i8 %3913, i8* %30, align 1
  %3914 = lshr i64 %3896, 63
  %3915 = trunc i64 %3914 to i8
  store i8 %3915, i8* %33, align 1
  %3916 = lshr i64 %3852, 63
  %3917 = xor i64 %3914, %3916
  %3918 = xor i64 %3914, %3895
  %3919 = add nuw nsw i64 %3917, %3918
  %3920 = icmp eq i64 %3919, 2
  %3921 = zext i1 %3920 to i8
  store i8 %3921, i8* %39, align 1
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -16
  %3924 = add i64 %3843, 74
  store i64 %3924, i64* %3, align 8
  %3925 = inttoptr i64 %3923 to i32*
  %3926 = load i32, i32* %3925, align 4
  %3927 = sext i32 %3926 to i64
  %3928 = mul nsw i64 %3927, 12
  store i64 %3928, i64* %RDX.i1332, align 8
  %3929 = lshr i64 %3928, 63
  %3930 = add i64 %3928, %3896
  store i64 %3930, i64* %RCX.i1599.pre-phi, align 8
  %3931 = icmp ult i64 %3930, %3896
  %3932 = icmp ult i64 %3930, %3928
  %3933 = or i1 %3931, %3932
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %14, align 1
  %3935 = trunc i64 %3930 to i32
  %3936 = and i32 %3935, 255
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %21, align 1
  %3941 = xor i64 %3928, %3896
  %3942 = xor i64 %3941, %3930
  %3943 = lshr i64 %3942, 4
  %3944 = trunc i64 %3943 to i8
  %3945 = and i8 %3944, 1
  store i8 %3945, i8* %27, align 1
  %3946 = icmp eq i64 %3930, 0
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %30, align 1
  %3948 = lshr i64 %3930, 63
  %3949 = trunc i64 %3948 to i8
  store i8 %3949, i8* %33, align 1
  %3950 = xor i64 %3948, %3914
  %3951 = xor i64 %3948, %3929
  %3952 = add nuw nsw i64 %3950, %3951
  %3953 = icmp eq i64 %3952, 2
  %3954 = zext i1 %3953 to i8
  store i8 %3954, i8* %39, align 1
  %3955 = load i64, i64* %RDI.i740, align 8
  %3956 = inttoptr i64 %3930 to i32*
  %3957 = add i64 %3843, 84
  store i64 %3957, i64* %3, align 8
  %3958 = load i32, i32* %3956, align 4
  %3959 = shl i64 %3955, 32
  %3960 = ashr exact i64 %3959, 32
  %3961 = sext i32 %3958 to i64
  %3962 = mul nsw i64 %3961, %3960
  %3963 = trunc i64 %3962 to i32
  %3964 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %3965 = add i32 %3964, %3963
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RDI.i740, align 8
  %3967 = icmp ult i32 %3965, %3963
  %3968 = icmp ult i32 %3965, %3964
  %3969 = or i1 %3967, %3968
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %14, align 1
  %3971 = and i32 %3965, 255
  %3972 = tail call i32 @llvm.ctpop.i32(i32 %3971)
  %3973 = trunc i32 %3972 to i8
  %3974 = and i8 %3973, 1
  %3975 = xor i8 %3974, 1
  store i8 %3975, i8* %21, align 1
  %3976 = xor i32 %3964, %3963
  %3977 = xor i32 %3976, %3965
  %3978 = lshr i32 %3977, 4
  %3979 = trunc i32 %3978 to i8
  %3980 = and i8 %3979, 1
  store i8 %3980, i8* %27, align 1
  %3981 = icmp eq i32 %3965, 0
  %3982 = zext i1 %3981 to i8
  store i8 %3982, i8* %30, align 1
  %3983 = lshr i32 %3965, 31
  %3984 = trunc i32 %3983 to i8
  store i8 %3984, i8* %33, align 1
  %3985 = lshr i32 %3963, 31
  %3986 = lshr i32 %3964, 31
  %3987 = xor i32 %3983, %3985
  %3988 = xor i32 %3983, %3986
  %3989 = add nuw nsw i32 %3987, %3988
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %39, align 1
  %3992 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RCX.i1599.pre-phi, align 8
  %3994 = add i64 %3843, 100
  store i64 %3994, i64* %3, align 8
  %3995 = trunc i32 %3992 to i5
  switch i5 %3995, label %3999 [
    i5 0, label %routine_sarl__cl___edi.exit335
    i5 1, label %3996
  ]

; <label>:3996:                                   ; preds = %block_.L_4ae49d
  %3997 = shl nuw i64 %3966, 32
  %3998 = ashr i64 %3997, 33
  br label %4006

; <label>:3999:                                   ; preds = %block_.L_4ae49d
  %4000 = and i32 %3992, 31
  %4001 = zext i32 %4000 to i64
  %4002 = add nsw i64 %4001, -1
  %4003 = sext i32 %3965 to i64
  %4004 = ashr i64 %4003, %4002
  %4005 = lshr i64 %4004, 1
  br label %4006

; <label>:4006:                                   ; preds = %3999, %3996
  %4007 = phi i64 [ %4005, %3999 ], [ %3998, %3996 ]
  %4008 = phi i64 [ %4004, %3999 ], [ %3966, %3996 ]
  %4009 = trunc i64 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = trunc i64 %4007 to i32
  %4012 = and i64 %4007, 4294967295
  store i64 %4012, i64* %RDI.i740, align 8
  store i8 %4010, i8* %14, align 1
  %4013 = and i32 %4011, 255
  %4014 = tail call i32 @llvm.ctpop.i32(i32 %4013)
  %4015 = trunc i32 %4014 to i8
  %4016 = and i8 %4015, 1
  %4017 = xor i8 %4016, 1
  store i8 %4017, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4018 = icmp eq i32 %4011, 0
  %4019 = zext i1 %4018 to i8
  store i8 %4019, i8* %30, align 1
  %4020 = lshr i32 %4011, 31
  %4021 = trunc i32 %4020 to i8
  store i8 %4021, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit335

routine_sarl__cl___edi.exit335:                   ; preds = %4006, %block_.L_4ae49d
  %4022 = load i64, i64* %RBP.i, align 8
  %4023 = add i64 %4022, -932
  %4024 = add i64 %3843, 107
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i32*
  %4026 = load i32, i32* %4025, align 4
  %4027 = sext i32 %4026 to i64
  %4028 = mul nsw i64 %4027, 180
  store i64 %4028, i64* %RDX.i1332, align 8
  %4029 = lshr i64 %4028, 63
  %4030 = load i64, i64* %RAX.i1663, align 8
  %4031 = add i64 %4028, %4030
  store i64 %4031, i64* %RAX.i1663, align 8
  %4032 = icmp ult i64 %4031, %4030
  %4033 = icmp ult i64 %4031, %4028
  %4034 = or i1 %4032, %4033
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %14, align 1
  %4036 = trunc i64 %4031 to i32
  %4037 = and i32 %4036, 255
  %4038 = tail call i32 @llvm.ctpop.i32(i32 %4037)
  %4039 = trunc i32 %4038 to i8
  %4040 = and i8 %4039, 1
  %4041 = xor i8 %4040, 1
  store i8 %4041, i8* %21, align 1
  %4042 = xor i64 %4028, %4030
  %4043 = xor i64 %4042, %4031
  %4044 = lshr i64 %4043, 4
  %4045 = trunc i64 %4044 to i8
  %4046 = and i8 %4045, 1
  store i8 %4046, i8* %27, align 1
  %4047 = icmp eq i64 %4031, 0
  %4048 = zext i1 %4047 to i8
  store i8 %4048, i8* %30, align 1
  %4049 = lshr i64 %4031, 63
  %4050 = trunc i64 %4049 to i8
  store i8 %4050, i8* %33, align 1
  %4051 = lshr i64 %4030, 63
  %4052 = xor i64 %4049, %4051
  %4053 = xor i64 %4049, %4029
  %4054 = add nuw nsw i64 %4052, %4053
  %4055 = icmp eq i64 %4054, 2
  %4056 = zext i1 %4055 to i8
  store i8 %4056, i8* %39, align 1
  %4057 = add i64 %4022, -16
  %4058 = add i64 %3843, 121
  store i64 %4058, i64* %3, align 8
  %4059 = inttoptr i64 %4057 to i32*
  %4060 = load i32, i32* %4059, align 4
  %4061 = sext i32 %4060 to i64
  %4062 = mul nsw i64 %4061, 12
  store i64 %4062, i64* %RDX.i1332, align 8
  %4063 = lshr i64 %4062, 63
  %4064 = add i64 %4062, %4031
  store i64 %4064, i64* %RAX.i1663, align 8
  %4065 = icmp ult i64 %4064, %4031
  %4066 = icmp ult i64 %4064, %4062
  %4067 = or i1 %4065, %4066
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %14, align 1
  %4069 = trunc i64 %4064 to i32
  %4070 = and i32 %4069, 255
  %4071 = tail call i32 @llvm.ctpop.i32(i32 %4070)
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  %4074 = xor i8 %4073, 1
  store i8 %4074, i8* %21, align 1
  %4075 = xor i64 %4062, %4031
  %4076 = xor i64 %4075, %4064
  %4077 = lshr i64 %4076, 4
  %4078 = trunc i64 %4077 to i8
  %4079 = and i8 %4078, 1
  store i8 %4079, i8* %27, align 1
  %4080 = icmp eq i64 %4064, 0
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %30, align 1
  %4082 = lshr i64 %4064, 63
  %4083 = trunc i64 %4082 to i8
  store i8 %4083, i8* %33, align 1
  %4084 = xor i64 %4082, %4049
  %4085 = xor i64 %4082, %4063
  %4086 = add nuw nsw i64 %4084, %4085
  %4087 = icmp eq i64 %4086, 2
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %39, align 1
  %4089 = load i64, i64* %RDI.i740, align 8
  %4090 = inttoptr i64 %4064 to i32*
  %4091 = add i64 %3843, 130
  store i64 %4091, i64* %3, align 8
  %4092 = trunc i64 %4089 to i32
  %4093 = load i32, i32* %4090, align 4
  %4094 = add i32 %4093, %4092
  %4095 = zext i32 %4094 to i64
  store i64 %4095, i64* %RDI.i740, align 8
  %4096 = icmp ult i32 %4094, %4092
  %4097 = icmp ult i32 %4094, %4093
  %4098 = or i1 %4096, %4097
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %14, align 1
  %4100 = and i32 %4094, 255
  %4101 = tail call i32 @llvm.ctpop.i32(i32 %4100)
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = xor i8 %4103, 1
  store i8 %4104, i8* %21, align 1
  %4105 = xor i32 %4093, %4092
  %4106 = xor i32 %4105, %4094
  %4107 = lshr i32 %4106, 4
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  store i8 %4109, i8* %27, align 1
  %4110 = icmp eq i32 %4094, 0
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %30, align 1
  %4112 = lshr i32 %4094, 31
  %4113 = trunc i32 %4112 to i8
  store i8 %4113, i8* %33, align 1
  %4114 = lshr i32 %4092, 31
  %4115 = lshr i32 %4093, 31
  %4116 = xor i32 %4112, %4114
  %4117 = xor i32 %4112, %4115
  %4118 = add nuw nsw i32 %4116, %4117
  %4119 = icmp eq i32 %4118, 2
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %39, align 1
  %4121 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4121, i64* %RAX.i1663, align 8
  %4122 = add i64 %4121, 72684
  %4123 = add i64 %3843, 144
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = sub i32 %4094, %4125
  %4127 = icmp ult i32 %4094, %4125
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %14, align 1
  %4129 = and i32 %4126, 255
  %4130 = tail call i32 @llvm.ctpop.i32(i32 %4129)
  %4131 = trunc i32 %4130 to i8
  %4132 = and i8 %4131, 1
  %4133 = xor i8 %4132, 1
  store i8 %4133, i8* %21, align 1
  %4134 = xor i32 %4125, %4094
  %4135 = xor i32 %4134, %4126
  %4136 = lshr i32 %4135, 4
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  store i8 %4138, i8* %27, align 1
  %4139 = icmp eq i32 %4126, 0
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %30, align 1
  %4141 = lshr i32 %4126, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %33, align 1
  %4143 = lshr i32 %4125, 31
  %4144 = xor i32 %4143, %4112
  %4145 = xor i32 %4141, %4112
  %4146 = add nuw nsw i32 %4145, %4144
  %4147 = icmp eq i32 %4146, 2
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %39, align 1
  %4149 = icmp ne i8 %4142, 0
  %4150 = xor i1 %4149, %4147
  %4151 = or i1 %4139, %4150
  %.v125 = select i1 %4151, i64 175, i64 150
  %4152 = add i64 %3843, %.v125
  store i64 %4152, i64* %3, align 8
  br i1 %4151, label %block_.L_4ae54c, label %block_4ae533

block_4ae533:                                     ; preds = %routine_sarl__cl___edi.exit335
  store i64 %4121, i64* %RAX.i1663, align 8
  %4153 = add i64 %4152, 14
  store i64 %4153, i64* %3, align 8
  %4154 = load i32, i32* %4124, align 4
  %4155 = zext i32 %4154 to i64
  store i64 %4155, i64* %RCX.i1599.pre-phi, align 8
  %4156 = load i64, i64* %RBP.i, align 8
  %4157 = add i64 %4156, -968
  %4158 = add i64 %4152, 20
  store i64 %4158, i64* %3, align 8
  %4159 = inttoptr i64 %4157 to i32*
  store i32 %4154, i32* %4159, align 4
  %4160 = load i64, i64* %3, align 8
  %4161 = add i64 %4160, 141
  store i64 %4161, i64* %3, align 8
  br label %block_.L_4ae5d4

block_.L_4ae54c:                                  ; preds = %routine_sarl__cl___edi.exit335
  %4162 = load i64, i64* %RBP.i, align 8
  %4163 = add i64 %4162, -928
  store i64 %4163, i64* %RAX.i1663, align 8
  %4164 = add i64 %4162, -560
  store i64 %4164, i64* %RCX.i1599.pre-phi, align 8
  %4165 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %4165, i64* %RDX.i1332, align 8
  %4166 = add i64 %4162, -16
  %4167 = add i64 %4152, 26
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4166 to i32*
  %4169 = load i32, i32* %4168, align 4
  %4170 = sext i32 %4169 to i64
  store i64 %4170, i64* %RSI.i972, align 8
  %4171 = shl nsw i64 %4170, 3
  %4172 = add i64 %4171, %4165
  %4173 = add i64 %4152, 30
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4172 to i64*
  %4175 = load i64, i64* %4174, align 8
  store i64 %4175, i64* %RDX.i1332, align 8
  %4176 = add i64 %4175, 6448
  %4177 = add i64 %4152, 37
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i64*
  %4179 = load i64, i64* %4178, align 8
  store i64 %4179, i64* %RDX.i1332, align 8
  %4180 = add i64 %4162, -8
  %4181 = add i64 %4152, 41
  store i64 %4181, i64* %3, align 8
  %4182 = inttoptr i64 %4180 to i32*
  %4183 = load i32, i32* %4182, align 4
  %4184 = sext i32 %4183 to i64
  store i64 %4184, i64* %RSI.i972, align 8
  %4185 = shl nsw i64 %4184, 3
  %4186 = add i64 %4185, %4179
  %4187 = add i64 %4152, 45
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i64*
  %4189 = load i64, i64* %4188, align 8
  store i64 %4189, i64* %RDX.i1332, align 8
  %4190 = add i64 %4162, -12
  %4191 = add i64 %4152, 49
  store i64 %4191, i64* %3, align 8
  %4192 = inttoptr i64 %4190 to i32*
  %4193 = load i32, i32* %4192, align 4
  %4194 = sext i32 %4193 to i64
  store i64 %4194, i64* %RSI.i972, align 8
  %4195 = shl nsw i64 %4194, 1
  %4196 = add i64 %4195, %4189
  %4197 = add i64 %4152, 53
  store i64 %4197, i64* %3, align 8
  %4198 = inttoptr i64 %4196 to i16*
  %4199 = load i16, i16* %4198, align 2
  %4200 = zext i16 %4199 to i64
  store i64 %4200, i64* %RDI.i740, align 8
  %4201 = add i64 %4162, -932
  %4202 = add i64 %4152, 60
  store i64 %4202, i64* %3, align 8
  %4203 = inttoptr i64 %4201 to i32*
  %4204 = load i32, i32* %4203, align 4
  %4205 = sext i32 %4204 to i64
  %4206 = mul nsw i64 %4205, 180
  store i64 %4206, i64* %RDX.i1332, align 8
  %4207 = lshr i64 %4206, 63
  %4208 = add i64 %4206, %4164
  store i64 %4208, i64* %RCX.i1599.pre-phi, align 8
  %4209 = icmp ult i64 %4208, %4164
  %4210 = icmp ult i64 %4208, %4206
  %4211 = or i1 %4209, %4210
  %4212 = zext i1 %4211 to i8
  store i8 %4212, i8* %14, align 1
  %4213 = trunc i64 %4208 to i32
  %4214 = and i32 %4213, 255
  %4215 = tail call i32 @llvm.ctpop.i32(i32 %4214)
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = xor i8 %4217, 1
  store i8 %4218, i8* %21, align 1
  %4219 = xor i64 %4206, %4164
  %4220 = xor i64 %4219, %4208
  %4221 = lshr i64 %4220, 4
  %4222 = trunc i64 %4221 to i8
  %4223 = and i8 %4222, 1
  store i8 %4223, i8* %27, align 1
  %4224 = icmp eq i64 %4208, 0
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %30, align 1
  %4226 = lshr i64 %4208, 63
  %4227 = trunc i64 %4226 to i8
  store i8 %4227, i8* %33, align 1
  %4228 = lshr i64 %4164, 63
  %4229 = xor i64 %4226, %4228
  %4230 = xor i64 %4226, %4207
  %4231 = add nuw nsw i64 %4229, %4230
  %4232 = icmp eq i64 %4231, 2
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %39, align 1
  %4234 = load i64, i64* %RBP.i, align 8
  %4235 = add i64 %4234, -16
  %4236 = add i64 %4152, 74
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i32*
  %4238 = load i32, i32* %4237, align 4
  %4239 = sext i32 %4238 to i64
  %4240 = mul nsw i64 %4239, 12
  store i64 %4240, i64* %RDX.i1332, align 8
  %4241 = lshr i64 %4240, 63
  %4242 = add i64 %4240, %4208
  store i64 %4242, i64* %RCX.i1599.pre-phi, align 8
  %4243 = icmp ult i64 %4242, %4208
  %4244 = icmp ult i64 %4242, %4240
  %4245 = or i1 %4243, %4244
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %14, align 1
  %4247 = trunc i64 %4242 to i32
  %4248 = and i32 %4247, 255
  %4249 = tail call i32 @llvm.ctpop.i32(i32 %4248)
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  %4252 = xor i8 %4251, 1
  store i8 %4252, i8* %21, align 1
  %4253 = xor i64 %4240, %4208
  %4254 = xor i64 %4253, %4242
  %4255 = lshr i64 %4254, 4
  %4256 = trunc i64 %4255 to i8
  %4257 = and i8 %4256, 1
  store i8 %4257, i8* %27, align 1
  %4258 = icmp eq i64 %4242, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %30, align 1
  %4260 = lshr i64 %4242, 63
  %4261 = trunc i64 %4260 to i8
  store i8 %4261, i8* %33, align 1
  %4262 = xor i64 %4260, %4226
  %4263 = xor i64 %4260, %4241
  %4264 = add nuw nsw i64 %4262, %4263
  %4265 = icmp eq i64 %4264, 2
  %4266 = zext i1 %4265 to i8
  store i8 %4266, i8* %39, align 1
  %4267 = load i64, i64* %RDI.i740, align 8
  %4268 = inttoptr i64 %4242 to i32*
  %4269 = add i64 %4152, 84
  store i64 %4269, i64* %3, align 8
  %4270 = load i32, i32* %4268, align 4
  %4271 = shl i64 %4267, 32
  %4272 = ashr exact i64 %4271, 32
  %4273 = sext i32 %4270 to i64
  %4274 = mul nsw i64 %4273, %4272
  %4275 = trunc i64 %4274 to i32
  %4276 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %4277 = add i32 %4276, %4275
  %4278 = zext i32 %4277 to i64
  store i64 %4278, i64* %RDI.i740, align 8
  %4279 = icmp ult i32 %4277, %4275
  %4280 = icmp ult i32 %4277, %4276
  %4281 = or i1 %4279, %4280
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %14, align 1
  %4283 = and i32 %4277, 255
  %4284 = tail call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  store i8 %4287, i8* %21, align 1
  %4288 = xor i32 %4276, %4275
  %4289 = xor i32 %4288, %4277
  %4290 = lshr i32 %4289, 4
  %4291 = trunc i32 %4290 to i8
  %4292 = and i8 %4291, 1
  store i8 %4292, i8* %27, align 1
  %4293 = icmp eq i32 %4277, 0
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %30, align 1
  %4295 = lshr i32 %4277, 31
  %4296 = trunc i32 %4295 to i8
  store i8 %4296, i8* %33, align 1
  %4297 = lshr i32 %4275, 31
  %4298 = lshr i32 %4276, 31
  %4299 = xor i32 %4295, %4297
  %4300 = xor i32 %4295, %4298
  %4301 = add nuw nsw i32 %4299, %4300
  %4302 = icmp eq i32 %4301, 2
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %39, align 1
  %4304 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %4305 = zext i32 %4304 to i64
  store i64 %4305, i64* %RCX.i1599.pre-phi, align 8
  %4306 = add i64 %4152, 100
  store i64 %4306, i64* %3, align 8
  %4307 = trunc i32 %4304 to i5
  switch i5 %4307, label %4311 [
    i5 0, label %routine_sarl__cl___edi.exit
    i5 1, label %4308
  ]

; <label>:4308:                                   ; preds = %block_.L_4ae54c
  %4309 = shl nuw i64 %4278, 32
  %4310 = ashr i64 %4309, 33
  br label %4318

; <label>:4311:                                   ; preds = %block_.L_4ae54c
  %4312 = and i32 %4304, 31
  %4313 = zext i32 %4312 to i64
  %4314 = add nsw i64 %4313, -1
  %4315 = sext i32 %4277 to i64
  %4316 = ashr i64 %4315, %4314
  %4317 = lshr i64 %4316, 1
  br label %4318

; <label>:4318:                                   ; preds = %4311, %4308
  %4319 = phi i64 [ %4317, %4311 ], [ %4310, %4308 ]
  %4320 = phi i64 [ %4316, %4311 ], [ %4278, %4308 ]
  %4321 = trunc i64 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = trunc i64 %4319 to i32
  %4324 = and i64 %4319, 4294967295
  store i64 %4324, i64* %RDI.i740, align 8
  store i8 %4322, i8* %14, align 1
  %4325 = and i32 %4323, 255
  %4326 = tail call i32 @llvm.ctpop.i32(i32 %4325)
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  %4329 = xor i8 %4328, 1
  store i8 %4329, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4330 = icmp eq i32 %4323, 0
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %30, align 1
  %4332 = lshr i32 %4323, 31
  %4333 = trunc i32 %4332 to i8
  store i8 %4333, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit

routine_sarl__cl___edi.exit:                      ; preds = %4318, %block_.L_4ae54c
  %4334 = load i64, i64* %RBP.i, align 8
  %4335 = add i64 %4334, -932
  %4336 = add i64 %4152, 107
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i32*
  %4338 = load i32, i32* %4337, align 4
  %4339 = sext i32 %4338 to i64
  %4340 = mul nsw i64 %4339, 180
  store i64 %4340, i64* %RDX.i1332, align 8
  %4341 = lshr i64 %4340, 63
  %4342 = load i64, i64* %RAX.i1663, align 8
  %4343 = add i64 %4340, %4342
  store i64 %4343, i64* %RAX.i1663, align 8
  %4344 = icmp ult i64 %4343, %4342
  %4345 = icmp ult i64 %4343, %4340
  %4346 = or i1 %4344, %4345
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %14, align 1
  %4348 = trunc i64 %4343 to i32
  %4349 = and i32 %4348, 255
  %4350 = tail call i32 @llvm.ctpop.i32(i32 %4349)
  %4351 = trunc i32 %4350 to i8
  %4352 = and i8 %4351, 1
  %4353 = xor i8 %4352, 1
  store i8 %4353, i8* %21, align 1
  %4354 = xor i64 %4340, %4342
  %4355 = xor i64 %4354, %4343
  %4356 = lshr i64 %4355, 4
  %4357 = trunc i64 %4356 to i8
  %4358 = and i8 %4357, 1
  store i8 %4358, i8* %27, align 1
  %4359 = icmp eq i64 %4343, 0
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %30, align 1
  %4361 = lshr i64 %4343, 63
  %4362 = trunc i64 %4361 to i8
  store i8 %4362, i8* %33, align 1
  %4363 = lshr i64 %4342, 63
  %4364 = xor i64 %4361, %4363
  %4365 = xor i64 %4361, %4341
  %4366 = add nuw nsw i64 %4364, %4365
  %4367 = icmp eq i64 %4366, 2
  %4368 = zext i1 %4367 to i8
  store i8 %4368, i8* %39, align 1
  %4369 = add i64 %4334, -16
  %4370 = add i64 %4152, 121
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4369 to i32*
  %4372 = load i32, i32* %4371, align 4
  %4373 = sext i32 %4372 to i64
  %4374 = mul nsw i64 %4373, 12
  store i64 %4374, i64* %RDX.i1332, align 8
  %4375 = lshr i64 %4374, 63
  %4376 = add i64 %4374, %4343
  store i64 %4376, i64* %RAX.i1663, align 8
  %4377 = icmp ult i64 %4376, %4343
  %4378 = icmp ult i64 %4376, %4374
  %4379 = or i1 %4377, %4378
  %4380 = zext i1 %4379 to i8
  store i8 %4380, i8* %14, align 1
  %4381 = trunc i64 %4376 to i32
  %4382 = and i32 %4381, 255
  %4383 = tail call i32 @llvm.ctpop.i32(i32 %4382)
  %4384 = trunc i32 %4383 to i8
  %4385 = and i8 %4384, 1
  %4386 = xor i8 %4385, 1
  store i8 %4386, i8* %21, align 1
  %4387 = xor i64 %4374, %4343
  %4388 = xor i64 %4387, %4376
  %4389 = lshr i64 %4388, 4
  %4390 = trunc i64 %4389 to i8
  %4391 = and i8 %4390, 1
  store i8 %4391, i8* %27, align 1
  %4392 = icmp eq i64 %4376, 0
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %30, align 1
  %4394 = lshr i64 %4376, 63
  %4395 = trunc i64 %4394 to i8
  store i8 %4395, i8* %33, align 1
  %4396 = xor i64 %4394, %4361
  %4397 = xor i64 %4394, %4375
  %4398 = add nuw nsw i64 %4396, %4397
  %4399 = icmp eq i64 %4398, 2
  %4400 = zext i1 %4399 to i8
  store i8 %4400, i8* %39, align 1
  %4401 = load i64, i64* %RDI.i740, align 8
  %4402 = inttoptr i64 %4376 to i32*
  %4403 = add i64 %4152, 130
  store i64 %4403, i64* %3, align 8
  %4404 = trunc i64 %4401 to i32
  %4405 = load i32, i32* %4402, align 4
  %4406 = add i32 %4405, %4404
  %4407 = zext i32 %4406 to i64
  store i64 %4407, i64* %RDI.i740, align 8
  %4408 = icmp ult i32 %4406, %4404
  %4409 = icmp ult i32 %4406, %4405
  %4410 = or i1 %4408, %4409
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %14, align 1
  %4412 = and i32 %4406, 255
  %4413 = tail call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  store i8 %4416, i8* %21, align 1
  %4417 = xor i32 %4405, %4404
  %4418 = xor i32 %4417, %4406
  %4419 = lshr i32 %4418, 4
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %27, align 1
  %4422 = icmp eq i32 %4406, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %30, align 1
  %4424 = lshr i32 %4406, 31
  %4425 = trunc i32 %4424 to i8
  store i8 %4425, i8* %33, align 1
  %4426 = lshr i32 %4404, 31
  %4427 = lshr i32 %4405, 31
  %4428 = xor i32 %4424, %4426
  %4429 = xor i32 %4424, %4427
  %4430 = add nuw nsw i32 %4428, %4429
  %4431 = icmp eq i32 %4430, 2
  %4432 = zext i1 %4431 to i8
  store i8 %4432, i8* %39, align 1
  %4433 = load i64, i64* %RBP.i, align 8
  %4434 = add i64 %4433, -968
  %4435 = add i64 %4152, 136
  store i64 %4435, i64* %3, align 8
  %4436 = inttoptr i64 %4434 to i32*
  store i32 %4406, i32* %4436, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_4ae5d4

block_.L_4ae5d4:                                  ; preds = %routine_sarl__cl___edi.exit, %block_4ae533
  %4437 = phi i64 [ %.pre93, %routine_sarl__cl___edi.exit ], [ %4161, %block_4ae533 ]
  %4438 = load i64, i64* %RBP.i, align 8
  %4439 = add i64 %4438, -968
  %4440 = add i64 %4437, 6
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i32*
  %4442 = load i32, i32* %4441, align 4
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RAX.i1663, align 8
  %4444 = add i64 %4438, -964
  %4445 = add i64 %4437, 12
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4444 to i32*
  store i32 %4442, i32* %4446, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_4ae5e0

block_.L_4ae5e0:                                  ; preds = %block_.L_4ae5d4, %block_4ae490
  %4447 = phi i64 [ %.pre94, %block_.L_4ae5d4 ], [ %3849, %block_4ae490 ]
  %4448 = load i64, i64* %RBP.i, align 8
  %4449 = add i64 %4448, -964
  %4450 = add i64 %4447, 6
  store i64 %4450, i64* %3, align 8
  %4451 = inttoptr i64 %4449 to i32*
  %4452 = load i32, i32* %4451, align 4
  %4453 = zext i32 %4452 to i64
  store i64 %4453, i64* %RAX.i1663, align 8
  %4454 = trunc i32 %4452 to i16
  store i16 %4454, i16* %CX.i529, align 2
  %4455 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %4455, i64* %RDX.i1332, align 8
  %4456 = add i64 %4448, -16
  %4457 = add i64 %4447, 21
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i32*
  %4459 = load i32, i32* %4458, align 4
  %4460 = sext i32 %4459 to i64
  store i64 %4460, i64* %RSI.i972, align 8
  %4461 = shl nsw i64 %4460, 3
  %4462 = add i64 %4461, %4455
  %4463 = add i64 %4447, 25
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i64*
  %4465 = load i64, i64* %4464, align 8
  store i64 %4465, i64* %RDX.i1332, align 8
  %4466 = add i64 %4465, 6456
  %4467 = add i64 %4447, 32
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i64*
  %4469 = load i64, i64* %4468, align 8
  store i64 %4469, i64* %RDX.i1332, align 8
  %4470 = add i64 %4448, -8
  %4471 = add i64 %4447, 36
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i32*
  %4473 = load i32, i32* %4472, align 4
  %4474 = sext i32 %4473 to i64
  store i64 %4474, i64* %RSI.i972, align 8
  %4475 = shl nsw i64 %4474, 3
  %4476 = add i64 %4475, %4469
  %4477 = add i64 %4447, 40
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4476 to i64*
  %4479 = load i64, i64* %4478, align 8
  store i64 %4479, i64* %RDX.i1332, align 8
  %4480 = add i64 %4448, -12
  %4481 = add i64 %4447, 44
  store i64 %4481, i64* %3, align 8
  %4482 = inttoptr i64 %4480 to i32*
  %4483 = load i32, i32* %4482, align 4
  %4484 = sext i32 %4483 to i64
  store i64 %4484, i64* %RSI.i972, align 8
  %4485 = shl nsw i64 %4484, 1
  %4486 = add i64 %4485, %4479
  %4487 = add i64 %4447, 48
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i16*
  store i16 %4454, i16* %4488, align 2
  %4489 = load i64, i64* %RBP.i, align 8
  %4490 = add i64 %4489, -12
  %4491 = load i64, i64* %3, align 8
  %4492 = add i64 %4491, 3
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4490 to i32*
  %4494 = load i32, i32* %4493, align 4
  %4495 = add i32 %4494, 1
  %4496 = zext i32 %4495 to i64
  store i64 %4496, i64* %RAX.i1663, align 8
  %4497 = icmp eq i32 %4494, -1
  %4498 = icmp eq i32 %4495, 0
  %4499 = or i1 %4497, %4498
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %14, align 1
  %4501 = and i32 %4495, 255
  %4502 = tail call i32 @llvm.ctpop.i32(i32 %4501)
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  %4505 = xor i8 %4504, 1
  store i8 %4505, i8* %21, align 1
  %4506 = xor i32 %4495, %4494
  %4507 = lshr i32 %4506, 4
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  store i8 %4509, i8* %27, align 1
  %4510 = zext i1 %4498 to i8
  store i8 %4510, i8* %30, align 1
  %4511 = lshr i32 %4495, 31
  %4512 = trunc i32 %4511 to i8
  store i8 %4512, i8* %33, align 1
  %4513 = lshr i32 %4494, 31
  %4514 = xor i32 %4511, %4513
  %4515 = add nuw nsw i32 %4514, %4511
  %4516 = icmp eq i32 %4515, 2
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %39, align 1
  %4518 = add i64 %4491, 9
  store i64 %4518, i64* %3, align 8
  store i32 %4495, i32* %4493, align 4
  %4519 = load i64, i64* %3, align 8
  %4520 = add i64 %4519, -560
  store i64 %4520, i64* %3, align 8
  br label %block_.L_4ae3e9

block_.L_4ae61e:                                  ; preds = %block_.L_4ae3e9
  %4521 = add i64 %3586, -8
  %4522 = add i64 %3585, 8
  store i64 %4522, i64* %3, align 8
  %4523 = inttoptr i64 %4521 to i32*
  %4524 = load i32, i32* %4523, align 4
  %4525 = add i32 %4524, 1
  %4526 = zext i32 %4525 to i64
  store i64 %4526, i64* %RAX.i1663, align 8
  %4527 = icmp eq i32 %4524, -1
  %4528 = icmp eq i32 %4525, 0
  %4529 = or i1 %4527, %4528
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %14, align 1
  %4531 = and i32 %4525, 255
  %4532 = tail call i32 @llvm.ctpop.i32(i32 %4531)
  %4533 = trunc i32 %4532 to i8
  %4534 = and i8 %4533, 1
  %4535 = xor i8 %4534, 1
  store i8 %4535, i8* %21, align 1
  %4536 = xor i32 %4525, %4524
  %4537 = lshr i32 %4536, 4
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  store i8 %4539, i8* %27, align 1
  %4540 = zext i1 %4528 to i8
  store i8 %4540, i8* %30, align 1
  %4541 = lshr i32 %4525, 31
  %4542 = trunc i32 %4541 to i8
  store i8 %4542, i8* %33, align 1
  %4543 = lshr i32 %4524, 31
  %4544 = xor i32 %4541, %4543
  %4545 = add nuw nsw i32 %4544, %4541
  %4546 = icmp eq i32 %4545, 2
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %39, align 1
  %4548 = add i64 %3585, 14
  store i64 %4548, i64* %3, align 8
  store i32 %4525, i32* %4523, align 4
  %4549 = load i64, i64* %3, align 8
  %4550 = add i64 %4549, -614
  store i64 %4550, i64* %3, align 8
  br label %block_.L_4ae3c6

block_.L_4ae631:                                  ; preds = %block_.L_4ae3c6
  %4551 = add i64 %3539, -16
  %4552 = add i64 %3538, 8
  store i64 %4552, i64* %3, align 8
  %4553 = inttoptr i64 %4551 to i32*
  %4554 = load i32, i32* %4553, align 4
  %4555 = add i32 %4554, 1
  %4556 = zext i32 %4555 to i64
  store i64 %4556, i64* %RAX.i1663, align 8
  %4557 = icmp eq i32 %4554, -1
  %4558 = icmp eq i32 %4555, 0
  %4559 = or i1 %4557, %4558
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %14, align 1
  %4561 = and i32 %4555, 255
  %4562 = tail call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  store i8 %4565, i8* %21, align 1
  %4566 = xor i32 %4555, %4554
  %4567 = lshr i32 %4566, 4
  %4568 = trunc i32 %4567 to i8
  %4569 = and i8 %4568, 1
  store i8 %4569, i8* %27, align 1
  %4570 = zext i1 %4558 to i8
  store i8 %4570, i8* %30, align 1
  %4571 = lshr i32 %4555, 31
  %4572 = trunc i32 %4571 to i8
  store i8 %4572, i8* %33, align 1
  %4573 = lshr i32 %4554, 31
  %4574 = xor i32 %4571, %4573
  %4575 = add nuw nsw i32 %4574, %4571
  %4576 = icmp eq i32 %4575, 2
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %39, align 1
  %4578 = add i64 %3538, 14
  store i64 %4578, i64* %3, align 8
  store i32 %4555, i32* %4553, align 4
  %4579 = load i64, i64* %3, align 8
  %4580 = add i64 %4579, -2098
  store i64 %4580, i64* %3, align 8
  br label %block_.L_4ade0d

block_.L_4ae644:                                  ; preds = %block_.L_4ade0d
  %4581 = add i64 %1135, 11
  store i64 %4581, i64* %3, align 8
  %4582 = load i32, i32* %1101, align 4
  %4583 = add i32 %4582, 1
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RAX.i1663, align 8
  %4585 = icmp eq i32 %4582, -1
  %4586 = icmp eq i32 %4583, 0
  %4587 = or i1 %4585, %4586
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %14, align 1
  %4589 = and i32 %4583, 255
  %4590 = tail call i32 @llvm.ctpop.i32(i32 %4589)
  %4591 = trunc i32 %4590 to i8
  %4592 = and i8 %4591, 1
  %4593 = xor i8 %4592, 1
  store i8 %4593, i8* %21, align 1
  %4594 = xor i32 %4583, %4582
  %4595 = lshr i32 %4594, 4
  %4596 = trunc i32 %4595 to i8
  %4597 = and i8 %4596, 1
  store i8 %4597, i8* %27, align 1
  %4598 = zext i1 %4586 to i8
  store i8 %4598, i8* %30, align 1
  %4599 = lshr i32 %4583, 31
  %4600 = trunc i32 %4599 to i8
  store i8 %4600, i8* %33, align 1
  %4601 = lshr i32 %4582, 31
  %4602 = xor i32 %4599, %4601
  %4603 = add nuw nsw i32 %4602, %4599
  %4604 = icmp eq i32 %4603, 2
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %39, align 1
  %4606 = add i64 %1135, 20
  store i64 %4606, i64* %3, align 8
  store i32 %4583, i32* %1101, align 4
  %4607 = load i64, i64* %3, align 8
  %4608 = add i64 %4607, -2153
  store i64 %4608, i64* %3, align 8
  br label %block_.L_4addef

block_.L_4ae65d:                                  ; preds = %block_.L_4addef
  %4609 = add i64 %1088, 10
  store i64 %4609, i64* %3, align 8
  store i32 0, i32* %1053, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4ae667

block_.L_4ae667:                                  ; preds = %block_.L_4ae766, %block_.L_4ae65d
  %4610 = phi i64 [ %5034, %block_.L_4ae766 ], [ %.pre76, %block_.L_4ae65d ]
  %4611 = load i64, i64* %RBP.i, align 8
  %4612 = add i64 %4611, -932
  %4613 = add i64 %4610, 6
  store i64 %4613, i64* %3, align 8
  %4614 = inttoptr i64 %4612 to i32*
  %4615 = load i32, i32* %4614, align 4
  %4616 = zext i32 %4615 to i64
  store i64 %4616, i64* %RAX.i1663, align 8
  %4617 = add i64 %4611, -192
  %4618 = add i64 %4610, 12
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i32*
  %4620 = load i32, i32* %4619, align 4
  %4621 = add i32 %4620, 2
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RCX.i1599.pre-phi, align 8
  %4623 = lshr i32 %4621, 31
  %4624 = sub i32 %4615, %4621
  %4625 = icmp ult i32 %4615, %4621
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %14, align 1
  %4627 = and i32 %4624, 255
  %4628 = tail call i32 @llvm.ctpop.i32(i32 %4627)
  %4629 = trunc i32 %4628 to i8
  %4630 = and i8 %4629, 1
  %4631 = xor i8 %4630, 1
  store i8 %4631, i8* %21, align 1
  %4632 = xor i32 %4621, %4615
  %4633 = xor i32 %4632, %4624
  %4634 = lshr i32 %4633, 4
  %4635 = trunc i32 %4634 to i8
  %4636 = and i8 %4635, 1
  store i8 %4636, i8* %27, align 1
  %4637 = icmp eq i32 %4624, 0
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %30, align 1
  %4639 = lshr i32 %4624, 31
  %4640 = trunc i32 %4639 to i8
  store i8 %4640, i8* %33, align 1
  %4641 = lshr i32 %4615, 31
  %4642 = xor i32 %4623, %4641
  %4643 = xor i32 %4639, %4641
  %4644 = add nuw nsw i32 %4643, %4642
  %4645 = icmp eq i32 %4644, 2
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %39, align 1
  %4647 = icmp ne i8 %4640, 0
  %4648 = xor i1 %4647, %4645
  %.v116 = select i1 %4648, i64 23, i64 280
  %4649 = add i64 %4610, %.v116
  store i64 %4649, i64* %3, align 8
  br i1 %4648, label %block_4ae67e, label %block_.L_4ae77f

block_4ae67e:                                     ; preds = %block_.L_4ae667
  %4650 = add i64 %4611, -28
  %4651 = add i64 %4649, 7
  store i64 %4651, i64* %3, align 8
  %4652 = inttoptr i64 %4650 to i32*
  store i32 0, i32* %4652, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_4ae685

block_.L_4ae685:                                  ; preds = %block_.L_4ae753, %block_4ae67e
  %4653 = phi i64 [ %5006, %block_.L_4ae753 ], [ %.pre77, %block_4ae67e ]
  %4654 = load i64, i64* %RBP.i, align 8
  %4655 = add i64 %4654, -28
  %4656 = add i64 %4653, 3
  store i64 %4656, i64* %3, align 8
  %4657 = inttoptr i64 %4655 to i32*
  %4658 = load i32, i32* %4657, align 4
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RAX.i1663, align 8
  %4660 = add i64 %4654, -932
  %4661 = add i64 %4653, 10
  store i64 %4661, i64* %3, align 8
  %4662 = inttoptr i64 %4660 to i32*
  %4663 = load i32, i32* %4662, align 4
  %4664 = sext i32 %4663 to i64
  store i64 %4664, i64* %RCX.i1599.pre-phi, align 8
  %4665 = shl nsw i64 %4664, 2
  %4666 = add nsw i64 %4665, 7489456
  %4667 = add i64 %4653, 17
  store i64 %4667, i64* %3, align 8
  %4668 = inttoptr i64 %4666 to i32*
  %4669 = load i32, i32* %4668, align 4
  %4670 = sub i32 %4658, %4669
  %4671 = icmp ult i32 %4658, %4669
  %4672 = zext i1 %4671 to i8
  store i8 %4672, i8* %14, align 1
  %4673 = and i32 %4670, 255
  %4674 = tail call i32 @llvm.ctpop.i32(i32 %4673)
  %4675 = trunc i32 %4674 to i8
  %4676 = and i8 %4675, 1
  %4677 = xor i8 %4676, 1
  store i8 %4677, i8* %21, align 1
  %4678 = xor i32 %4669, %4658
  %4679 = xor i32 %4678, %4670
  %4680 = lshr i32 %4679, 4
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  store i8 %4682, i8* %27, align 1
  %4683 = icmp eq i32 %4670, 0
  %4684 = zext i1 %4683 to i8
  store i8 %4684, i8* %30, align 1
  %4685 = lshr i32 %4670, 31
  %4686 = trunc i32 %4685 to i8
  store i8 %4686, i8* %33, align 1
  %4687 = lshr i32 %4658, 31
  %4688 = lshr i32 %4669, 31
  %4689 = xor i32 %4688, %4687
  %4690 = xor i32 %4685, %4687
  %4691 = add nuw nsw i32 %4690, %4689
  %4692 = icmp eq i32 %4691, 2
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %39, align 1
  %4694 = icmp ne i8 %4686, 0
  %4695 = xor i1 %4694, %4692
  %.v105 = select i1 %4695, i64 23, i64 225
  %4696 = add i64 %4653, %.v105
  store i64 %4696, i64* %3, align 8
  br i1 %4695, label %block_4ae69c, label %block_.L_4ae766

block_4ae69c:                                     ; preds = %block_.L_4ae685
  %4697 = add i64 %4654, -32
  %4698 = add i64 %4696, 7
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i32*
  store i32 0, i32* %4699, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_4ae6a3

block_.L_4ae6a3:                                  ; preds = %block_4ae6ad, %block_4ae69c
  %4700 = phi i64 [ %4976, %block_4ae6ad ], [ %.pre78, %block_4ae69c ]
  %4701 = load i64, i64* %RBP.i, align 8
  %4702 = add i64 %4701, -32
  %4703 = add i64 %4700, 4
  store i64 %4703, i64* %3, align 8
  %4704 = inttoptr i64 %4702 to i32*
  %4705 = load i32, i32* %4704, align 4
  %4706 = add i32 %4705, -3
  %4707 = icmp ult i32 %4705, 3
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %14, align 1
  %4709 = and i32 %4706, 255
  %4710 = tail call i32 @llvm.ctpop.i32(i32 %4709)
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  store i8 %4713, i8* %21, align 1
  %4714 = xor i32 %4706, %4705
  %4715 = lshr i32 %4714, 4
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  store i8 %4717, i8* %27, align 1
  %4718 = icmp eq i32 %4706, 0
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %30, align 1
  %4720 = lshr i32 %4706, 31
  %4721 = trunc i32 %4720 to i8
  store i8 %4721, i8* %33, align 1
  %4722 = lshr i32 %4705, 31
  %4723 = xor i32 %4720, %4722
  %4724 = add nuw nsw i32 %4723, %4722
  %4725 = icmp eq i32 %4724, 2
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %39, align 1
  %4727 = icmp ne i8 %4721, 0
  %4728 = xor i1 %4727, %4725
  %.v106 = select i1 %4728, i64 10, i64 176
  %4729 = add i64 %4700, %.v106
  store i64 %4729, i64* %3, align 8
  br i1 %4728, label %block_4ae6ad, label %block_.L_4ae753

block_4ae6ad:                                     ; preds = %block_.L_4ae6a3
  %4730 = add i64 %4701, -928
  store i64 %4730, i64* %RAX.i1663, align 8
  %4731 = add i64 %4701, -560
  store i64 %4731, i64* %RCX.i1599.pre-phi, align 8
  %4732 = add i64 %4701, -932
  %4733 = add i64 %4729, 21
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = sext i32 %4735 to i64
  %4737 = mul nsw i64 %4736, 180
  store i64 %4737, i64* %RDX.i1493, align 8
  %4738 = lshr i64 %4737, 63
  %4739 = add i64 %4737, %4731
  store i64 %4739, i64* %RCX.i1599.pre-phi, align 8
  %4740 = icmp ult i64 %4739, %4731
  %4741 = icmp ult i64 %4739, %4737
  %4742 = or i1 %4740, %4741
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %14, align 1
  %4744 = trunc i64 %4739 to i32
  %4745 = and i32 %4744, 255
  %4746 = tail call i32 @llvm.ctpop.i32(i32 %4745)
  %4747 = trunc i32 %4746 to i8
  %4748 = and i8 %4747, 1
  %4749 = xor i8 %4748, 1
  store i8 %4749, i8* %21, align 1
  %4750 = xor i64 %4737, %4731
  %4751 = xor i64 %4750, %4739
  %4752 = lshr i64 %4751, 4
  %4753 = trunc i64 %4752 to i8
  %4754 = and i8 %4753, 1
  store i8 %4754, i8* %27, align 1
  %4755 = icmp eq i64 %4739, 0
  %4756 = zext i1 %4755 to i8
  store i8 %4756, i8* %30, align 1
  %4757 = lshr i64 %4739, 63
  %4758 = trunc i64 %4757 to i8
  store i8 %4758, i8* %33, align 1
  %4759 = lshr i64 %4731, 63
  %4760 = xor i64 %4757, %4759
  %4761 = xor i64 %4757, %4738
  %4762 = add nuw nsw i64 %4760, %4761
  %4763 = icmp eq i64 %4762, 2
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %39, align 1
  %4765 = add i64 %4701, -28
  %4766 = add i64 %4729, 35
  store i64 %4766, i64* %3, align 8
  %4767 = inttoptr i64 %4765 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = sext i32 %4768 to i64
  %4770 = mul nsw i64 %4769, 12
  store i64 %4770, i64* %RDX.i1493, align 8
  %4771 = lshr i64 %4770, 63
  %4772 = add i64 %4770, %4739
  store i64 %4772, i64* %RCX.i1599.pre-phi, align 8
  %4773 = icmp ult i64 %4772, %4739
  %4774 = icmp ult i64 %4772, %4770
  %4775 = or i1 %4773, %4774
  %4776 = zext i1 %4775 to i8
  store i8 %4776, i8* %14, align 1
  %4777 = trunc i64 %4772 to i32
  %4778 = and i32 %4777, 255
  %4779 = tail call i32 @llvm.ctpop.i32(i32 %4778)
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = xor i8 %4781, 1
  store i8 %4782, i8* %21, align 1
  %4783 = xor i64 %4770, %4739
  %4784 = xor i64 %4783, %4772
  %4785 = lshr i64 %4784, 4
  %4786 = trunc i64 %4785 to i8
  %4787 = and i8 %4786, 1
  store i8 %4787, i8* %27, align 1
  %4788 = icmp eq i64 %4772, 0
  %4789 = zext i1 %4788 to i8
  store i8 %4789, i8* %30, align 1
  %4790 = lshr i64 %4772, 63
  %4791 = trunc i64 %4790 to i8
  store i8 %4791, i8* %33, align 1
  %4792 = xor i64 %4790, %4757
  %4793 = xor i64 %4790, %4771
  %4794 = add nuw nsw i64 %4792, %4793
  %4795 = icmp eq i64 %4794, 2
  %4796 = zext i1 %4795 to i8
  store i8 %4796, i8* %39, align 1
  %4797 = load i64, i64* %RBP.i, align 8
  %4798 = add i64 %4797, -32
  %4799 = add i64 %4729, 46
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = sext i32 %4801 to i64
  store i64 %4802, i64* %RDX.i1493, align 8
  %4803 = shl nsw i64 %4802, 2
  %4804 = add i64 %4803, %4772
  %4805 = add i64 %4729, 49
  store i64 %4805, i64* %3, align 8
  %4806 = inttoptr i64 %4804 to i32*
  %4807 = load i32, i32* %4806, align 4
  %4808 = zext i32 %4807 to i64
  store i64 %4808, i64* %RSI.i1490, align 8
  %4809 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %4809, i64* %RCX.i1599.pre-phi, align 8
  %4810 = add i64 %4797, -932
  %4811 = add i64 %4729, 64
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i32*
  %4813 = load i32, i32* %4812, align 4
  %4814 = sext i32 %4813 to i64
  store i64 %4814, i64* %RDX.i1493, align 8
  %4815 = shl nsw i64 %4814, 3
  %4816 = add i64 %4815, %4809
  %4817 = add i64 %4729, 68
  store i64 %4817, i64* %3, align 8
  %4818 = inttoptr i64 %4816 to i64*
  %4819 = load i64, i64* %4818, align 8
  store i64 %4819, i64* %RCX.i1599.pre-phi, align 8
  %4820 = add i64 %4797, -28
  %4821 = add i64 %4729, 72
  store i64 %4821, i64* %3, align 8
  %4822 = inttoptr i64 %4820 to i32*
  %4823 = load i32, i32* %4822, align 4
  %4824 = sext i32 %4823 to i64
  store i64 %4824, i64* %RDX.i1493, align 8
  %4825 = shl nsw i64 %4824, 3
  %4826 = add i64 %4825, %4819
  %4827 = add i64 %4729, 76
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i64*
  %4829 = load i64, i64* %4828, align 8
  store i64 %4829, i64* %RCX.i1599.pre-phi, align 8
  %4830 = add i64 %4729, 80
  store i64 %4830, i64* %3, align 8
  %4831 = load i32, i32* %4800, align 4
  %4832 = sext i32 %4831 to i64
  store i64 %4832, i64* %RDX.i1493, align 8
  %4833 = shl nsw i64 %4832, 2
  %4834 = add i64 %4833, %4829
  %4835 = add i64 %4729, 83
  store i64 %4835, i64* %3, align 8
  %4836 = inttoptr i64 %4834 to i32*
  store i32 %4807, i32* %4836, align 4
  %4837 = load i64, i64* %RBP.i, align 8
  %4838 = add i64 %4837, -932
  %4839 = load i64, i64* %3, align 8
  %4840 = add i64 %4839, 7
  store i64 %4840, i64* %3, align 8
  %4841 = inttoptr i64 %4838 to i32*
  %4842 = load i32, i32* %4841, align 4
  %4843 = sext i32 %4842 to i64
  %4844 = mul nsw i64 %4843, 180
  store i64 %4844, i64* %RCX.i1599.pre-phi, align 8
  %4845 = lshr i64 %4844, 63
  %4846 = load i64, i64* %RAX.i1663, align 8
  %4847 = add i64 %4844, %4846
  store i64 %4847, i64* %RAX.i1663, align 8
  %4848 = icmp ult i64 %4847, %4846
  %4849 = icmp ult i64 %4847, %4844
  %4850 = or i1 %4848, %4849
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %14, align 1
  %4852 = trunc i64 %4847 to i32
  %4853 = and i32 %4852, 255
  %4854 = tail call i32 @llvm.ctpop.i32(i32 %4853)
  %4855 = trunc i32 %4854 to i8
  %4856 = and i8 %4855, 1
  %4857 = xor i8 %4856, 1
  store i8 %4857, i8* %21, align 1
  %4858 = xor i64 %4844, %4846
  %4859 = xor i64 %4858, %4847
  %4860 = lshr i64 %4859, 4
  %4861 = trunc i64 %4860 to i8
  %4862 = and i8 %4861, 1
  store i8 %4862, i8* %27, align 1
  %4863 = icmp eq i64 %4847, 0
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %30, align 1
  %4865 = lshr i64 %4847, 63
  %4866 = trunc i64 %4865 to i8
  store i8 %4866, i8* %33, align 1
  %4867 = lshr i64 %4846, 63
  %4868 = xor i64 %4865, %4867
  %4869 = xor i64 %4865, %4845
  %4870 = add nuw nsw i64 %4868, %4869
  %4871 = icmp eq i64 %4870, 2
  %4872 = zext i1 %4871 to i8
  store i8 %4872, i8* %39, align 1
  %4873 = add i64 %4837, -28
  %4874 = add i64 %4839, 21
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  %4876 = load i32, i32* %4875, align 4
  %4877 = sext i32 %4876 to i64
  %4878 = mul nsw i64 %4877, 12
  store i64 %4878, i64* %RCX.i1599.pre-phi, align 8
  %4879 = lshr i64 %4878, 63
  %4880 = add i64 %4878, %4847
  store i64 %4880, i64* %RAX.i1663, align 8
  %4881 = icmp ult i64 %4880, %4847
  %4882 = icmp ult i64 %4880, %4878
  %4883 = or i1 %4881, %4882
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %14, align 1
  %4885 = trunc i64 %4880 to i32
  %4886 = and i32 %4885, 255
  %4887 = tail call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  store i8 %4890, i8* %21, align 1
  %4891 = xor i64 %4878, %4847
  %4892 = xor i64 %4891, %4880
  %4893 = lshr i64 %4892, 4
  %4894 = trunc i64 %4893 to i8
  %4895 = and i8 %4894, 1
  store i8 %4895, i8* %27, align 1
  %4896 = icmp eq i64 %4880, 0
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %30, align 1
  %4898 = lshr i64 %4880, 63
  %4899 = trunc i64 %4898 to i8
  store i8 %4899, i8* %33, align 1
  %4900 = xor i64 %4898, %4865
  %4901 = xor i64 %4898, %4879
  %4902 = add nuw nsw i64 %4900, %4901
  %4903 = icmp eq i64 %4902, 2
  %4904 = zext i1 %4903 to i8
  store i8 %4904, i8* %39, align 1
  %4905 = load i64, i64* %RBP.i, align 8
  %4906 = add i64 %4905, -32
  %4907 = add i64 %4839, 32
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4906 to i32*
  %4909 = load i32, i32* %4908, align 4
  %4910 = sext i32 %4909 to i64
  store i64 %4910, i64* %RCX.i1599.pre-phi, align 8
  %4911 = shl nsw i64 %4910, 2
  %4912 = add i64 %4911, %4880
  %4913 = add i64 %4839, 35
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4912 to i32*
  %4915 = load i32, i32* %4914, align 4
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RSI.i1490, align 8
  %4917 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %4917, i64* %RAX.i1663, align 8
  %4918 = add i64 %4905, -932
  %4919 = add i64 %4839, 50
  store i64 %4919, i64* %3, align 8
  %4920 = inttoptr i64 %4918 to i32*
  %4921 = load i32, i32* %4920, align 4
  %4922 = sext i32 %4921 to i64
  store i64 %4922, i64* %RCX.i1599.pre-phi, align 8
  %4923 = shl nsw i64 %4922, 3
  %4924 = add i64 %4923, %4917
  %4925 = add i64 %4839, 54
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i64*
  %4927 = load i64, i64* %4926, align 8
  store i64 %4927, i64* %RAX.i1663, align 8
  %4928 = add i64 %4905, -28
  %4929 = add i64 %4839, 58
  store i64 %4929, i64* %3, align 8
  %4930 = inttoptr i64 %4928 to i32*
  %4931 = load i32, i32* %4930, align 4
  %4932 = sext i32 %4931 to i64
  store i64 %4932, i64* %RCX.i1599.pre-phi, align 8
  %4933 = shl nsw i64 %4932, 3
  %4934 = add i64 %4933, %4927
  %4935 = add i64 %4839, 62
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i64*
  %4937 = load i64, i64* %4936, align 8
  store i64 %4937, i64* %RAX.i1663, align 8
  %4938 = add i64 %4839, 66
  store i64 %4938, i64* %3, align 8
  %4939 = load i32, i32* %4908, align 4
  %4940 = sext i32 %4939 to i64
  store i64 %4940, i64* %RCX.i1599.pre-phi, align 8
  %4941 = shl nsw i64 %4940, 2
  %4942 = add i64 %4941, %4937
  %4943 = add i64 %4839, 69
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i32*
  store i32 %4915, i32* %4944, align 4
  %4945 = load i64, i64* %RBP.i, align 8
  %4946 = add i64 %4945, -32
  %4947 = load i64, i64* %3, align 8
  %4948 = add i64 %4947, 3
  store i64 %4948, i64* %3, align 8
  %4949 = inttoptr i64 %4946 to i32*
  %4950 = load i32, i32* %4949, align 4
  %4951 = add i32 %4950, 1
  %4952 = zext i32 %4951 to i64
  store i64 %4952, i64* %RAX.i1663, align 8
  %4953 = icmp eq i32 %4950, -1
  %4954 = icmp eq i32 %4951, 0
  %4955 = or i1 %4953, %4954
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %14, align 1
  %4957 = and i32 %4951, 255
  %4958 = tail call i32 @llvm.ctpop.i32(i32 %4957)
  %4959 = trunc i32 %4958 to i8
  %4960 = and i8 %4959, 1
  %4961 = xor i8 %4960, 1
  store i8 %4961, i8* %21, align 1
  %4962 = xor i32 %4951, %4950
  %4963 = lshr i32 %4962, 4
  %4964 = trunc i32 %4963 to i8
  %4965 = and i8 %4964, 1
  store i8 %4965, i8* %27, align 1
  %4966 = zext i1 %4954 to i8
  store i8 %4966, i8* %30, align 1
  %4967 = lshr i32 %4951, 31
  %4968 = trunc i32 %4967 to i8
  store i8 %4968, i8* %33, align 1
  %4969 = lshr i32 %4950, 31
  %4970 = xor i32 %4967, %4969
  %4971 = add nuw nsw i32 %4970, %4967
  %4972 = icmp eq i32 %4971, 2
  %4973 = zext i1 %4972 to i8
  store i8 %4973, i8* %39, align 1
  %4974 = add i64 %4947, 9
  store i64 %4974, i64* %3, align 8
  store i32 %4951, i32* %4949, align 4
  %4975 = load i64, i64* %3, align 8
  %4976 = add i64 %4975, -171
  store i64 %4976, i64* %3, align 8
  br label %block_.L_4ae6a3

block_.L_4ae753:                                  ; preds = %block_.L_4ae6a3
  %4977 = add i64 %4701, -28
  %4978 = add i64 %4729, 8
  store i64 %4978, i64* %3, align 8
  %4979 = inttoptr i64 %4977 to i32*
  %4980 = load i32, i32* %4979, align 4
  %4981 = add i32 %4980, 1
  %4982 = zext i32 %4981 to i64
  store i64 %4982, i64* %RAX.i1663, align 8
  %4983 = icmp eq i32 %4980, -1
  %4984 = icmp eq i32 %4981, 0
  %4985 = or i1 %4983, %4984
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %14, align 1
  %4987 = and i32 %4981, 255
  %4988 = tail call i32 @llvm.ctpop.i32(i32 %4987)
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  store i8 %4991, i8* %21, align 1
  %4992 = xor i32 %4981, %4980
  %4993 = lshr i32 %4992, 4
  %4994 = trunc i32 %4993 to i8
  %4995 = and i8 %4994, 1
  store i8 %4995, i8* %27, align 1
  %4996 = zext i1 %4984 to i8
  store i8 %4996, i8* %30, align 1
  %4997 = lshr i32 %4981, 31
  %4998 = trunc i32 %4997 to i8
  store i8 %4998, i8* %33, align 1
  %4999 = lshr i32 %4980, 31
  %5000 = xor i32 %4997, %4999
  %5001 = add nuw nsw i32 %5000, %4997
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %39, align 1
  %5004 = add i64 %4729, 14
  store i64 %5004, i64* %3, align 8
  store i32 %4981, i32* %4979, align 4
  %5005 = load i64, i64* %3, align 8
  %5006 = add i64 %5005, -220
  store i64 %5006, i64* %3, align 8
  br label %block_.L_4ae685

block_.L_4ae766:                                  ; preds = %block_.L_4ae685
  %5007 = add i64 %4696, 11
  store i64 %5007, i64* %3, align 8
  %5008 = load i32, i32* %4662, align 4
  %5009 = add i32 %5008, 1
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RAX.i1663, align 8
  %5011 = icmp eq i32 %5008, -1
  %5012 = icmp eq i32 %5009, 0
  %5013 = or i1 %5011, %5012
  %5014 = zext i1 %5013 to i8
  store i8 %5014, i8* %14, align 1
  %5015 = and i32 %5009, 255
  %5016 = tail call i32 @llvm.ctpop.i32(i32 %5015)
  %5017 = trunc i32 %5016 to i8
  %5018 = and i8 %5017, 1
  %5019 = xor i8 %5018, 1
  store i8 %5019, i8* %21, align 1
  %5020 = xor i32 %5009, %5008
  %5021 = lshr i32 %5020, 4
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  store i8 %5023, i8* %27, align 1
  %5024 = zext i1 %5012 to i8
  store i8 %5024, i8* %30, align 1
  %5025 = lshr i32 %5009, 31
  %5026 = trunc i32 %5025 to i8
  store i8 %5026, i8* %33, align 1
  %5027 = lshr i32 %5008, 31
  %5028 = xor i32 %5025, %5027
  %5029 = add nuw nsw i32 %5028, %5025
  %5030 = icmp eq i32 %5029, 2
  %5031 = zext i1 %5030 to i8
  store i8 %5031, i8* %39, align 1
  %5032 = add i64 %4696, 20
  store i64 %5032, i64* %3, align 8
  store i32 %5009, i32* %4662, align 4
  %5033 = load i64, i64* %3, align 8
  %5034 = add i64 %5033, -275
  store i64 %5034, i64* %3, align 8
  br label %block_.L_4ae667

block_.L_4ae77f:                                  ; preds = %block_.L_4ae667
  %5035 = load i64, i64* %6, align 8
  %5036 = add i64 %5035, 848
  store i64 %5036, i64* %6, align 8
  %5037 = icmp ugt i64 %5035, -849
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %14, align 1
  %5039 = trunc i64 %5036 to i32
  %5040 = and i32 %5039, 255
  %5041 = tail call i32 @llvm.ctpop.i32(i32 %5040)
  %5042 = trunc i32 %5041 to i8
  %5043 = and i8 %5042, 1
  %5044 = xor i8 %5043, 1
  store i8 %5044, i8* %21, align 1
  %5045 = xor i64 %5035, 16
  %5046 = xor i64 %5045, %5036
  %5047 = lshr i64 %5046, 4
  %5048 = trunc i64 %5047 to i8
  %5049 = and i8 %5048, 1
  store i8 %5049, i8* %27, align 1
  %5050 = icmp eq i64 %5036, 0
  %5051 = zext i1 %5050 to i8
  store i8 %5051, i8* %30, align 1
  %5052 = lshr i64 %5036, 63
  %5053 = trunc i64 %5052 to i8
  store i8 %5053, i8* %33, align 1
  %5054 = lshr i64 %5035, 63
  %5055 = xor i64 %5052, %5054
  %5056 = add nuw nsw i64 %5055, %5052
  %5057 = icmp eq i64 %5056, 2
  %5058 = zext i1 %5057 to i8
  store i8 %5058, i8* %39, align 1
  %5059 = add i64 %4649, 8
  store i64 %5059, i64* %3, align 8
  %5060 = add i64 %5035, 856
  %5061 = inttoptr i64 %5036 to i64*
  %5062 = load i64, i64* %5061, align 8
  store i64 %5062, i64* %RBP.i, align 8
  store i64 %5060, i64* %6, align 8
  %5063 = add i64 %4649, 9
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5060 to i64*
  %5065 = load i64, i64* %5064, align 8
  store i64 %5065, i64* %3, align 8
  %5066 = add i64 %5035, 864
  store i64 %5066, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x350___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -848
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 848
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
define %struct.Memory* @routine_je_.L_4adba4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -936
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
define %struct.Memory* @routine_movl_MINUS0x3a8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
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
define %struct.Memory* @routine_movl__esi__MINUS0x3ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -940
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4adbb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -940
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
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
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_jge_.L_4add69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4add56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4add43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -188
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -188
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
define %struct.Memory* @routine_jmpq_.L_4adc81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4add48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4adc66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4add5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4adc4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4adde5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4addd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x278672__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x278672__rip__type* @G_0x278672__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_4add8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4addd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4add70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae65d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4adede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ade85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_jne_.L_4ae022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4ae022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4adf1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4adf1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4adf6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x395e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x395e__rip__type* @G_0x395e__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0xbc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
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
define %struct.Memory* @routine_jmpq_.L_4adf9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jl_.L_4adff2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4ae01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ae189(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3857__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3857__rip__type* @G_0x3857__rip_ to i64)
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
define %struct.Memory* @routine_jge_.L_4ae0c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -948
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4ae0fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ae127(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x3b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -952
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_jge_.L_4ae3bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RDI, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_sarl__cl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
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
  store i64 %26, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jge_.L_4ae286(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ae399(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11bec__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jle_.L_4ae31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae38d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x3c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -960
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
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_jmpq_.L_4ae1e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae61e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1930__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_4ae49d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -964
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae5e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4ae54c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae5d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x3c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -968
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
define %struct.Memory* @routine_movl_MINUS0x3c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -964
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
define %struct.Memory* @routine_jmpq_.L_4ae3e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae623(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae3c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae636(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ade0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae649(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4addef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4ae77f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae766(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4ae753(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ae6a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae758(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ae685(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae76b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ae667(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x350___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 848
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -849
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
