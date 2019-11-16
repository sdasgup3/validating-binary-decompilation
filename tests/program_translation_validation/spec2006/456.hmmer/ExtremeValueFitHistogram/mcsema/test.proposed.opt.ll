; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3a637__rip__type = type <{ [8 x i8] }>
%G_0x3a6a9__rip__type = type <{ [8 x i8] }>
%G_0x3a6f1__rip__type = type <{ [8 x i8] }>
%G_0x3a7ac__rip__type = type <{ [8 x i8] }>
%G_0x3a7e9__rip__type = type <{ [8 x i8] }>
%G_0x3a819__rip__type = type <{ [8 x i8] }>
%G__0x456e97_type = type <{ [8 x i8] }>
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
@G_0x3a637__rip_ = global %G_0x3a637__rip__type zeroinitializer
@G_0x3a6a9__rip_ = global %G_0x3a6a9__rip__type zeroinitializer
@G_0x3a6f1__rip_ = global %G_0x3a6f1__rip__type zeroinitializer
@G_0x3a7ac__rip_ = global %G_0x3a7ac__rip__type zeroinitializer
@G_0x3a7e9__rip_ = global %G_0x3a7e9__rip__type zeroinitializer
@G_0x3a819__rip_ = global %G_0x3a819__rip__type zeroinitializer
@G__0x456e97 = global %G__0x456e97_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a2e0.EVDDistribution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a340.EVDCensoredFit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a7c0.EVDMaxLikelyFit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @ExtremeValueFitHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %RDI.i76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI.i76, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -20
  %46 = load i32, i32* %ESI.i, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 5
  store i64 %54, i64* %3, align 8
  %55 = bitcast [32 x %union.VectorReg]* %50 to <2 x float>*
  %56 = load <2 x float>, <2 x float>* %55, align 1
  %57 = extractelement <2 x float> %56, i32 0
  %58 = inttoptr i64 %52 to float*
  store float %57, float* %58, align 4
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RDI.i76, align 8
  %RSI.i563 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %65 = add i64 %64, 20
  %66 = add i64 %61, 7
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RSI.i563, align 8
  %70 = add i64 %59, -68
  %71 = add i64 %61, 10
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  store i32 %68, i32* %72, align 4
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -20
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i32*
  %78 = load i32, i32* %77, align 4
  store i8 0, i8* %14, align 1
  %79 = and i32 %78, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %84 = icmp eq i32 %78, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %29, align 1
  %86 = lshr i32 %78, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %84, i64 131, i64 10
  %88 = add i64 %75, %.v96
  store i64 %88, i64* %3, align 8
  br i1 %84, label %entry.block_.L_419ef4_crit_edge, label %block_419e7b

entry.block_.L_419ef4_crit_edge:                  ; preds = %entry
  %.pre92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre94 = getelementptr inbounds %union.anon, %union.anon* %.pre92, i64 0, i32 0
  br label %block_.L_419ef4

block_419e7b:                                     ; preds = %entry
  %89 = add i64 %73, -84
  %90 = add i64 %88, 7
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 -1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i657 = getelementptr inbounds %union.anon, %union.anon* %92, i64 0, i32 0
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -16
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RAX.i657, align 8
  %RCX.i655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %99 = add i64 %98, 20
  %100 = add i64 %95, 7
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX.i655, align 8
  %104 = add i64 %93, -64
  %105 = add i64 %95, 10
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %102, i32* %106, align 4
  %RDX.i630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_419e8c

block_.L_419e8c:                                  ; preds = %block_.L_419edc, %block_419e7b
  %107 = phi i64 [ %322, %block_.L_419edc ], [ %.pre, %block_419e7b ]
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -64
  %110 = add i64 %107, 3
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX.i657, align 8
  %114 = add i64 %108, -16
  %115 = add i64 %107, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RCX.i655, align 8
  %118 = add i64 %117, 16
  %119 = add i64 %107, 10
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %112, %121
  %123 = icmp ult i32 %112, %121
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %121, %112
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %26, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %32, align 1
  %139 = lshr i32 %112, 31
  %140 = lshr i32 %121, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %38, align 1
  %146 = icmp ne i8 %138, 0
  %147 = xor i1 %146, %144
  %.demorgan = or i1 %135, %147
  %.v97 = select i1 %.demorgan, i64 16, i64 99
  %148 = add i64 %107, %.v97
  store i64 %148, i64* %3, align 8
  br i1 %.demorgan, label %block_419e9c, label %block_.L_419eef

block_419e9c:                                     ; preds = %block_.L_419e8c
  %149 = add i64 %148, 4
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %116, align 8
  store i64 %150, i64* %RAX.i657, align 8
  %151 = add i64 %148, 7
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i657, align 8
  %154 = add i64 %148, 10
  store i64 %154, i64* %3, align 8
  %155 = load i32, i32* %111, align 4
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RCX.i655, align 8
  %157 = add i64 %148, 14
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %116, align 8
  store i64 %158, i64* %RDX.i630, align 8
  %159 = add i64 %158, 8
  %160 = add i64 %148, 17
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sub i32 %155, %162
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RCX.i655, align 8
  %165 = icmp ult i32 %155, %162
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %14, align 1
  %167 = and i32 %163, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %21, align 1
  %172 = xor i32 %162, %155
  %173 = xor i32 %172, %163
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %26, align 1
  %177 = icmp eq i32 %163, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %29, align 1
  %179 = lshr i32 %163, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %32, align 1
  %181 = lshr i32 %155, 31
  %182 = lshr i32 %162, 31
  %183 = xor i32 %182, %181
  %184 = xor i32 %179, %181
  %185 = add nuw nsw i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %38, align 1
  %188 = sext i32 %163 to i64
  store i64 %188, i64* %RDX.i630, align 8
  %189 = shl nsw i64 %188, 2
  %190 = add i64 %153, %189
  %191 = add i64 %148, 23
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RCX.i655, align 8
  %195 = add i64 %108, -84
  %196 = add i64 %148, 26
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = sub i32 %193, %198
  %200 = icmp ult i32 %193, %198
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %14, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i32 %198, %193
  %208 = xor i32 %207, %199
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  store i8 %211, i8* %26, align 1
  %212 = icmp eq i32 %199, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %29, align 1
  %214 = lshr i32 %199, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %32, align 1
  %216 = lshr i32 %193, 31
  %217 = lshr i32 %198, 31
  %218 = xor i32 %217, %216
  %219 = xor i32 %214, %216
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %38, align 1
  %223 = icmp ne i8 %215, 0
  %224 = xor i1 %223, %221
  %225 = or i1 %212, %224
  %.v112 = select i1 %225, i64 64, i64 32
  %226 = add i64 %148, %.v112
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_.L_419edc, label %block_419ebc

block_419ebc:                                     ; preds = %block_419e9c
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -16
  %229 = add i64 %226, 4
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX.i657, align 8
  %232 = add i64 %226, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX.i657, align 8
  %235 = add i64 %227, -64
  %236 = add i64 %226, 10
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RCX.i655, align 8
  %240 = add i64 %226, 14
  store i64 %240, i64* %3, align 8
  %241 = load i64, i64* %230, align 8
  store i64 %241, i64* %RDX.i630, align 8
  %242 = add i64 %241, 8
  %243 = add i64 %226, 17
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %238, %245
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX.i655, align 8
  %248 = icmp ult i32 %238, %245
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %14, align 1
  %250 = and i32 %246, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %21, align 1
  %255 = xor i32 %245, %238
  %256 = xor i32 %255, %246
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %26, align 1
  %260 = icmp eq i32 %246, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %29, align 1
  %262 = lshr i32 %246, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %32, align 1
  %264 = lshr i32 %238, 31
  %265 = lshr i32 %245, 31
  %266 = xor i32 %265, %264
  %267 = xor i32 %262, %264
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %38, align 1
  %271 = sext i32 %246 to i64
  store i64 %271, i64* %RDX.i630, align 8
  %272 = shl nsw i64 %271, 2
  %273 = add i64 %234, %272
  %274 = add i64 %226, 23
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RCX.i655, align 8
  %278 = add i64 %227, -84
  %279 = add i64 %226, 26
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  store i32 %276, i32* %280, align 4
  %281 = load i64, i64* %RBP.i, align 8
  %282 = add i64 %281, -64
  %283 = load i64, i64* %3, align 8
  %284 = add i64 %283, 3
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RCX.i655, align 8
  %288 = add i64 %281, -68
  %289 = add i64 %283, 6
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %286, i32* %290, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_419edc

block_.L_419edc:                                  ; preds = %block_419ebc, %block_419e9c
  %291 = phi i64 [ %.pre66, %block_419ebc ], [ %226, %block_419e9c ]
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -64
  %294 = add i64 %291, 8
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = add i32 %296, 1
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i657, align 8
  %299 = icmp eq i32 %296, -1
  %300 = icmp eq i32 %297, 0
  %301 = or i1 %299, %300
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %14, align 1
  %303 = and i32 %297, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %21, align 1
  %308 = xor i32 %297, %296
  %309 = lshr i32 %308, 4
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %26, align 1
  %312 = zext i1 %300 to i8
  store i8 %312, i8* %29, align 1
  %313 = lshr i32 %297, 31
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* %32, align 1
  %315 = lshr i32 %296, 31
  %316 = xor i32 %313, %315
  %317 = add nuw nsw i32 %316, %313
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %38, align 1
  %320 = add i64 %291, 14
  store i64 %320, i64* %3, align 8
  store i32 %297, i32* %295, align 4
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, -94
  store i64 %322, i64* %3, align 8
  br label %block_.L_419e8c

block_.L_419eef:                                  ; preds = %block_.L_419e8c
  %323 = add i64 %148, 5
  store i64 %323, i64* %3, align 8
  br label %block_.L_419ef4

block_.L_419ef4:                                  ; preds = %entry.block_.L_419ef4_crit_edge, %block_.L_419eef
  %RAX.i569.pre-phi = phi i64* [ %.pre94, %entry.block_.L_419ef4_crit_edge ], [ %RAX.i657, %block_.L_419eef ]
  %.pre-phi93 = phi %union.anon* [ %.pre92, %entry.block_.L_419ef4_crit_edge ], [ %92, %block_.L_419eef ]
  %324 = phi i8 [ %85, %entry.block_.L_419ef4_crit_edge ], [ 0, %block_.L_419eef ]
  %325 = phi i8 [ 0, %entry.block_.L_419ef4_crit_edge ], [ %124, %block_.L_419eef ]
  %326 = phi i64 [ %88, %entry.block_.L_419ef4_crit_edge ], [ %323, %block_.L_419eef ]
  %327 = phi i64 [ %73, %entry.block_.L_419ef4_crit_edge ], [ %108, %block_.L_419eef ]
  %328 = bitcast [32 x %union.VectorReg]* %50 to i8*
  %329 = add i64 %327, -24
  %330 = add i64 %326, 5
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = bitcast [32 x %union.VectorReg]* %50 to float*
  %334 = bitcast [32 x %union.VectorReg]* %50 to i32*
  store i32 %332, i32* %334, align 1
  %335 = getelementptr inbounds i8, i8* %328, i64 4
  %336 = bitcast i8* %335 to float*
  store float 0.000000e+00, float* %336, align 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %338 = bitcast i64* %337 to float*
  store float 0.000000e+00, float* %338, align 1
  %339 = getelementptr inbounds i8, i8* %328, i64 12
  %340 = bitcast i8* %339 to float*
  store float 0.000000e+00, float* %340, align 1
  %341 = add i64 %327, -16
  %342 = add i64 %326, 9
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX.i569.pre-phi, align 8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %346 = bitcast %union.VectorReg* %345 to i8*
  %347 = add i64 %344, 16
  %348 = add i64 %326, 14
  store i64 %348, i64* %3, align 8
  %349 = bitcast %union.VectorReg* %345 to <2 x i32>*
  %350 = load <2 x i32>, <2 x i32>* %349, align 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %352 = bitcast i64* %351 to <2 x i32>*
  %353 = load <2 x i32>, <2 x i32>* %352, align 1
  %354 = inttoptr i64 %347 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sitofp i32 %355 to float
  %357 = bitcast %union.VectorReg* %345 to float*
  store float %356, float* %357, align 1
  %358 = extractelement <2 x i32> %350, i32 1
  %359 = getelementptr inbounds i8, i8* %346, i64 4
  %360 = bitcast i8* %359 to i32*
  store i32 %358, i32* %360, align 1
  %361 = extractelement <2 x i32> %353, i32 0
  %362 = bitcast i64* %351 to i32*
  store i32 %361, i32* %362, align 1
  %363 = extractelement <2 x i32> %353, i32 1
  %364 = getelementptr inbounds i8, i8* %346, i64 12
  %365 = bitcast i8* %364 to i32*
  store i32 %363, i32* %365, align 1
  %366 = add i64 %326, 17
  store i64 %366, i64* %3, align 8
  %367 = bitcast %union.VectorReg* %345 to <2 x float>*
  %368 = load <2 x float>, <2 x float>* %367, align 1
  %369 = extractelement <2 x float> %368, i32 0
  %370 = load <2 x float>, <2 x float>* %55, align 1
  %371 = extractelement <2 x float> %370, i32 0
  %372 = fcmp uno float %369, %371
  br i1 %372, label %373, label %383

; <label>:373:                                    ; preds = %block_.L_419ef4
  %374 = fadd float %369, %371
  %375 = bitcast float %374 to i32
  %376 = and i32 %375, 2143289344
  %377 = icmp eq i32 %376, 2139095040
  %378 = and i32 %375, 4194303
  %379 = icmp ne i32 %378, 0
  %380 = and i1 %377, %379
  br i1 %380, label %381, label %389

; <label>:381:                                    ; preds = %373
  %382 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %366, %struct.Memory* %2)
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i8, i8* %14, align 1
  %.pre69 = load i8, i8* %29, align 1
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:383:                                    ; preds = %block_.L_419ef4
  %384 = fcmp ogt float %369, %371
  br i1 %384, label %389, label %385

; <label>:385:                                    ; preds = %383
  %386 = fcmp olt float %369, %371
  br i1 %386, label %389, label %387

; <label>:387:                                    ; preds = %385
  %388 = fcmp oeq float %369, %371
  br i1 %388, label %389, label %393

; <label>:389:                                    ; preds = %387, %385, %383, %373
  %390 = phi i8 [ 0, %383 ], [ 0, %385 ], [ 1, %387 ], [ 1, %373 ]
  %391 = phi i8 [ 0, %383 ], [ 0, %385 ], [ 0, %387 ], [ 1, %373 ]
  %392 = phi i8 [ 0, %383 ], [ 1, %385 ], [ 0, %387 ], [ 1, %373 ]
  store i8 %390, i8* %29, align 1
  store i8 %391, i8* %21, align 1
  store i8 %392, i8* %14, align 1
  br label %393

; <label>:393:                                    ; preds = %389, %387
  %394 = phi i8 [ %390, %389 ], [ %324, %387 ]
  %395 = phi i8 [ %392, %389 ], [ %325, %387 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %393, %381
  %396 = phi i64 [ %.pre70, %381 ], [ %327, %393 ]
  %397 = phi i8 [ %.pre69, %381 ], [ %394, %393 ]
  %398 = phi i8 [ %.pre68, %381 ], [ %395, %393 ]
  %399 = phi i64 [ %.pre67, %381 ], [ %366, %393 ]
  %400 = phi %struct.Memory* [ %382, %381 ], [ %2, %393 ]
  %401 = or i8 %397, %398
  %402 = icmp ne i8 %401, 0
  %.v98 = select i1 %402, i64 21, i64 6
  %403 = add i64 %399, %.v98
  store i64 %403, i64* %3, align 8
  br i1 %402, label %block_.L_419f1a, label %block_419f0b

block_419f0b:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %404 = add i64 %396, -24
  %405 = add i64 %403, 5
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %334, align 1
  store float 0.000000e+00, float* %336, align 1
  store float 0.000000e+00, float* %338, align 1
  store float 0.000000e+00, float* %340, align 1
  %408 = add i64 %396, -100
  %409 = add i64 %403, 10
  store i64 %409, i64* %3, align 8
  %410 = load <2 x float>, <2 x float>* %55, align 1
  %411 = extractelement <2 x float> %410, i32 0
  %412 = inttoptr i64 %408 to float*
  store float %411, float* %412, align 4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 19
  store i64 %414, i64* %3, align 8
  %.pre83 = bitcast i64* %337 to <2 x i32>*
  %.pre84 = bitcast i8* %335 to i32*
  %.pre86 = bitcast i64* %337 to i32*
  %.pre88 = bitcast i8* %339 to i32*
  %.pre90 = bitcast [32 x %union.VectorReg]* %50 to <2 x i32>*
  br label %block_.L_419f28

block_.L_419f1a:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %415 = add i64 %396, -16
  %416 = add i64 %403, 4
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RAX.i569.pre-phi, align 8
  %419 = add i64 %418, 16
  %420 = add i64 %403, 9
  store i64 %420, i64* %3, align 8
  %421 = bitcast [32 x %union.VectorReg]* %50 to <2 x i32>*
  %422 = load <2 x i32>, <2 x i32>* %421, align 1
  %423 = bitcast i64* %337 to <2 x i32>*
  %424 = load <2 x i32>, <2 x i32>* %423, align 1
  %425 = inttoptr i64 %419 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sitofp i32 %426 to float
  store float %427, float* %333, align 1
  %428 = extractelement <2 x i32> %422, i32 1
  %429 = bitcast i8* %335 to i32*
  store i32 %428, i32* %429, align 1
  %430 = extractelement <2 x i32> %424, i32 0
  %431 = bitcast i64* %337 to i32*
  store i32 %430, i32* %431, align 1
  %432 = extractelement <2 x i32> %424, i32 1
  %433 = bitcast i8* %339 to i32*
  store i32 %432, i32* %433, align 1
  %434 = add i64 %396, -100
  %435 = add i64 %403, 14
  store i64 %435, i64* %3, align 8
  %436 = load <2 x float>, <2 x float>* %55, align 1
  %437 = extractelement <2 x float> %436, i32 0
  %438 = inttoptr i64 %434 to float*
  store float %437, float* %438, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_419f28

block_.L_419f28:                                  ; preds = %block_.L_419f1a, %block_419f0b
  %.pre-phi91 = phi <2 x i32>* [ %421, %block_.L_419f1a ], [ %.pre90, %block_419f0b ]
  %.pre-phi89 = phi i32* [ %433, %block_.L_419f1a ], [ %.pre88, %block_419f0b ]
  %.pre-phi87 = phi i32* [ %431, %block_.L_419f1a ], [ %.pre86, %block_419f0b ]
  %.pre-phi85 = phi i32* [ %429, %block_.L_419f1a ], [ %.pre84, %block_419f0b ]
  %.pre-phi = phi <2 x i32>* [ %423, %block_.L_419f1a ], [ %.pre83, %block_419f0b ]
  %439 = phi i64 [ %.pre71, %block_.L_419f1a ], [ %414, %block_419f0b ]
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -100
  %442 = add i64 %439, 5
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %334, align 1
  store float 0.000000e+00, float* %336, align 1
  store float 0.000000e+00, float* %338, align 1
  store float 0.000000e+00, float* %340, align 1
  %445 = load <2 x float>, <2 x float>* %55, align 1
  %446 = extractelement <2 x float> %445, i32 0
  %447 = tail call float @llvm.trunc.f32(float %446)
  %448 = tail call float @llvm.fabs.f32(float %447)
  %449 = fcmp ogt float %448, 0x41E0000000000000
  %450 = fptosi float %447 to i32
  %451 = zext i32 %450 to i64
  %452 = select i1 %449, i64 2147483648, i64 %451
  store i64 %452, i64* %RAX.i569.pre-phi, align 8
  %EAX.i534 = bitcast %union.anon* %.pre-phi93 to i32*
  %453 = add i64 %440, -72
  %454 = trunc i64 %452 to i32
  %455 = add i64 %439, 12
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i32*
  store i32 %454, i32* %456, align 4
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -80
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 7
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i32*
  store i32 0, i32* %461, align 4
  %RDX.i499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %463 = bitcast i64* %337 to double*
  %464 = bitcast %union.VectorReg* %345 to double*
  %465 = bitcast [32 x %union.VectorReg]* %50 to double*
  %RCX.i443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RCX.i173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %467 = bitcast %union.VectorReg* %466 to double*
  %468 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %345, i64 0, i32 0, i32 0, i32 0, i64 0
  %469 = bitcast i64* %351 to double*
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %470 = bitcast %union.VectorReg* %345 to i32*
  %471 = bitcast i8* %359 to float*
  %472 = bitcast i64* %351 to float*
  %473 = bitcast i8* %364 to float*
  %474 = bitcast %union.VectorReg* %466 to i8*
  %475 = bitcast %union.VectorReg* %466 to i32*
  %476 = getelementptr inbounds i8, i8* %474, i64 4
  %477 = bitcast i8* %476 to float*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %479 = bitcast i64* %478 to float*
  %480 = getelementptr inbounds i8, i8* %474, i64 12
  %481 = bitcast i8* %480 to float*
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_419f3b

block_.L_419f3b:                                  ; preds = %block_.L_41a247, %block_.L_419f28
  %482 = phi i64 [ %.pre72, %block_.L_419f28 ], [ %1735, %block_.L_41a247 ]
  %MEMORY.4 = phi %struct.Memory* [ %400, %block_.L_419f28 ], [ %1660, %block_.L_41a247 ]
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -80
  %485 = add i64 %482, 4
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, -100
  %489 = icmp ult i32 %487, 100
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = and i32 %488, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %21, align 1
  %496 = xor i32 %488, %487
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %26, align 1
  %500 = icmp eq i32 %488, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %29, align 1
  %502 = lshr i32 %488, 31
  %503 = trunc i32 %502 to i8
  store i8 %503, i8* %32, align 1
  %504 = lshr i32 %487, 31
  %505 = xor i32 %502, %504
  %506 = add nuw nsw i32 %505, %504
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %38, align 1
  %509 = icmp ne i8 %503, 0
  %510 = xor i1 %509, %507
  %.v99 = select i1 %510, i64 10, i64 800
  %511 = add i64 %482, %.v99
  store i64 %511, i64* %3, align 8
  br i1 %510, label %block_419f45, label %block_.L_41a25b.loopexit

block_419f45:                                     ; preds = %block_.L_419f3b
  %512 = add i64 %483, -32
  %513 = add i64 %511, 8
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  store i64 0, i64* %514, align 8
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -40
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 8
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %516 to i64*
  store i64 0, i64* %519, align 8
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -72
  %522 = load i64, i64* %3, align 8
  %523 = add i64 %522, 3
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %521 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX.i569.pre-phi, align 8
  %527 = add i64 %520, -68
  %528 = add i64 %522, 6
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sub i32 %525, %530
  %532 = lshr i32 %531, 31
  %533 = add i32 %531, 1
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i569.pre-phi, align 8
  %535 = icmp eq i32 %531, -1
  %536 = icmp eq i32 %533, 0
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %14, align 1
  %539 = and i32 %533, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539)
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %21, align 1
  %544 = xor i32 %533, %531
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %26, align 1
  %548 = zext i1 %536 to i8
  store i8 %548, i8* %29, align 1
  %549 = lshr i32 %533, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %32, align 1
  %551 = xor i32 %549, %532
  %552 = add nuw nsw i32 %551, %549
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %38, align 1
  %555 = add i64 %520, -52
  %556 = add i64 %522, 12
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %533, i32* %557, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -52
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 4
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, -5
  %565 = icmp ult i32 %563, 5
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %564, %563
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %26, align 1
  %576 = icmp eq i32 %564, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %29, align 1
  %578 = lshr i32 %564, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %32, align 1
  %580 = lshr i32 %563, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %580
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %38, align 1
  %585 = icmp ne i8 %579, 0
  %586 = xor i1 %585, %583
  %.v100 = select i1 %586, i64 10, i64 15
  %587 = add i64 %560, %.v100
  store i64 %587, i64* %3, align 8
  br i1 %586, label %block_419f6b, label %block_.L_419f70

block_419f6b:                                     ; preds = %block_419f45
  %588 = add i64 %587, 798
  br label %block_.L_41a289

block_.L_419f70:                                  ; preds = %block_419f45
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i76, align 8
  store i64 600, i64* %RSI.i563, align 8
  %589 = add i64 %587, 19
  store i64 %589, i64* %3, align 8
  %590 = load i32, i32* %562, align 4
  %591 = sext i32 %590 to i64
  %592 = shl nsw i64 %591, 2
  store i64 %592, i64* %RAX.i569.pre-phi, align 8
  %.lobit = lshr i32 %590, 31
  %593 = trunc i32 %.lobit to i8
  store i8 %593, i8* %14, align 1
  %594 = trunc i64 %592 to i32
  %595 = and i32 %594, 252
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %600 = icmp eq i32 %590, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %29, align 1
  %602 = lshr i64 %591, 61
  %603 = trunc i64 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %592, i64* %RDX.i499, align 8
  %605 = add i64 %587, 180464
  %606 = add i64 %587, 31
  %607 = load i64, i64* %6, align 8
  %608 = add i64 %607, -8
  %609 = inttoptr i64 %608 to i64*
  store i64 %606, i64* %609, align 8
  store i64 %608, i64* %6, align 8
  store i64 %605, i64* %3, align 8
  %call2_419f8a = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %605, %struct.Memory* %MEMORY.4)
  %610 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i76, align 8
  store i64 601, i64* %RSI.i563, align 8
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -32
  %613 = load i64, i64* %RAX.i569.pre-phi, align 8
  %614 = add i64 %610, 19
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %612 to i64*
  store i64 %613, i64* %615, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -52
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 4
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  %623 = shl nsw i64 %622, 2
  store i64 %623, i64* %RAX.i569.pre-phi, align 8
  %.lobit18 = lshr i32 %621, 31
  %624 = trunc i32 %.lobit18 to i8
  store i8 %624, i8* %14, align 1
  %625 = trunc i64 %623 to i32
  %626 = and i32 %625, 252
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %631 = icmp eq i32 %621, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i64 %622, 61
  %634 = trunc i64 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %623, i64* %RDX.i499, align 8
  %636 = add i64 %618, 180414
  %637 = add i64 %618, 16
  %638 = load i64, i64* %6, align 8
  %639 = add i64 %638, -8
  %640 = inttoptr i64 %639 to i64*
  store i64 %637, i64* %640, align 8
  store i64 %639, i64* %6, align 8
  store i64 %636, i64* %3, align 8
  %call2_419fad = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %636, %struct.Memory* %MEMORY.4)
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -40
  %643 = load i64, i64* %RAX.i569.pre-phi, align 8
  %644 = load i64, i64* %3, align 8
  %645 = add i64 %644, 4
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %642 to i64*
  store i64 %643, i64* %646, align 8
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -44
  %649 = load i64, i64* %3, align 8
  %650 = add i64 %649, 7
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %648 to i32*
  store i32 0, i32* %651, align 4
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -68
  %654 = load i64, i64* %3, align 8
  %655 = add i64 %654, 3
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RSI.i563, align 8
  %659 = add i64 %652, -64
  %660 = add i64 %654, 6
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 %657, i32* %661, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_419fc3

block_.L_419fc3:                                  ; preds = %block_419fcf, %block_.L_419f70
  %662 = phi i64 [ %973, %block_419fcf ], [ %.pre73, %block_.L_419f70 ]
  %663 = load i64, i64* %RBP.i, align 8
  %664 = add i64 %663, -64
  %665 = add i64 %662, 3
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i569.pre-phi, align 8
  %669 = add i64 %663, -72
  %670 = add i64 %662, 6
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = sub i32 %667, %672
  %674 = icmp ult i32 %667, %672
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %14, align 1
  %676 = and i32 %673, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  %681 = xor i32 %672, %667
  %682 = xor i32 %681, %673
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %26, align 1
  %686 = icmp eq i32 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %29, align 1
  %688 = lshr i32 %673, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %32, align 1
  %690 = lshr i32 %667, 31
  %691 = lshr i32 %672, 31
  %692 = xor i32 %691, %690
  %693 = xor i32 %688, %690
  %694 = add nuw nsw i32 %693, %692
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %38, align 1
  %697 = icmp ne i8 %689, 0
  %698 = xor i1 %697, %695
  %.demorgan95 = or i1 %686, %698
  %.v101 = select i1 %.demorgan95, i64 12, i64 137
  %699 = add i64 %662, %.v101
  store i64 %699, i64* %3, align 8
  br i1 %.demorgan95, label %block_419fcf, label %block_.L_41a04c

block_419fcf:                                     ; preds = %block_.L_419fc3
  %700 = add i64 %699, ptrtoint (%G_0x3a819__rip__type* @G_0x3a819__rip_ to i64)
  %701 = add i64 %699, 8
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %462, align 1
  store double 0.000000e+00, double* %463, align 1
  %704 = add i64 %699, 13
  store i64 %704, i64* %3, align 8
  %705 = load <2 x i32>, <2 x i32>* %349, align 1
  %706 = load <2 x i32>, <2 x i32>* %352, align 1
  %707 = load i32, i32* %666, align 4
  %708 = sitofp i32 %707 to float
  store float %708, float* %357, align 1
  %709 = extractelement <2 x i32> %705, i32 1
  store i32 %709, i32* %360, align 1
  %710 = extractelement <2 x i32> %706, i32 0
  store i32 %710, i32* %362, align 1
  %711 = extractelement <2 x i32> %706, i32 1
  store i32 %711, i32* %365, align 1
  %712 = load <2 x float>, <2 x float>* %367, align 1
  %713 = extractelement <2 x float> %712, i32 0
  %714 = fpext float %713 to double
  %715 = bitcast i64 %703 to double
  %716 = fadd double %714, %715
  store double %716, double* %464, align 1
  %.cast43 = bitcast i64 %703 to <2 x i32>
  %717 = fptrunc double %716 to float
  store float %717, float* %333, align 1
  %718 = extractelement <2 x i32> %.cast43, i32 1
  store i32 %718, i32* %.pre-phi85, align 1
  store i32 0, i32* %.pre-phi87, align 1
  store i32 0, i32* %.pre-phi89, align 1
  %719 = add i64 %663, -32
  %720 = add i64 %699, 29
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %RAX.i569.pre-phi, align 8
  %723 = add i64 %699, 32
  store i64 %723, i64* %3, align 8
  %724 = load i32, i32* %666, align 4
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RCX.i443, align 8
  %726 = add i64 %663, -68
  %727 = add i64 %699, 35
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sub i32 %724, %729
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RCX.i443, align 8
  %732 = icmp ult i32 %724, %729
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %14, align 1
  %734 = and i32 %730, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %21, align 1
  %739 = xor i32 %729, %724
  %740 = xor i32 %739, %730
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %26, align 1
  %744 = icmp eq i32 %730, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %29, align 1
  %746 = lshr i32 %730, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %32, align 1
  %748 = lshr i32 %724, 31
  %749 = lshr i32 %729, 31
  %750 = xor i32 %749, %748
  %751 = xor i32 %746, %748
  %752 = add nuw nsw i32 %751, %750
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %38, align 1
  %755 = sext i32 %730 to i64
  store i64 %755, i64* %RDX.i499, align 8
  %756 = shl nsw i64 %755, 2
  %757 = add i64 %722, %756
  %758 = add i64 %699, 43
  store i64 %758, i64* %3, align 8
  %759 = load <2 x float>, <2 x float>* %55, align 1
  %760 = extractelement <2 x float> %759, i32 0
  %761 = inttoptr i64 %757 to float*
  store float %760, float* %761, align 4
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -16
  %764 = load i64, i64* %3, align 8
  %765 = add i64 %764, 4
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %763 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RAX.i569.pre-phi, align 8
  %768 = add i64 %764, 7
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %RAX.i569.pre-phi, align 8
  %771 = add i64 %762, -64
  %772 = add i64 %764, 10
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RCX.i443, align 8
  %776 = add i64 %764, 14
  store i64 %776, i64* %3, align 8
  %777 = load i64, i64* %766, align 8
  store i64 %777, i64* %RDX.i499, align 8
  %778 = add i64 %777, 8
  %779 = add i64 %764, 17
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = sub i32 %774, %781
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RCX.i443, align 8
  %784 = icmp ult i32 %774, %781
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %14, align 1
  %786 = and i32 %782, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %21, align 1
  %791 = xor i32 %781, %774
  %792 = xor i32 %791, %782
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %26, align 1
  %796 = icmp eq i32 %782, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %29, align 1
  %798 = lshr i32 %782, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %32, align 1
  %800 = lshr i32 %774, 31
  %801 = lshr i32 %781, 31
  %802 = xor i32 %801, %800
  %803 = xor i32 %798, %800
  %804 = add nuw nsw i32 %803, %802
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %38, align 1
  %807 = sext i32 %782 to i64
  store i64 %807, i64* %RDX.i499, align 8
  %808 = shl nsw i64 %807, 2
  %809 = add i64 %770, %808
  %810 = add i64 %764, 23
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RCX.i443, align 8
  %814 = add i64 %762, -40
  %815 = add i64 %764, 27
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RAX.i569.pre-phi, align 8
  %818 = add i64 %764, 30
  store i64 %818, i64* %3, align 8
  %819 = load i32, i32* %773, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RSI.i563, align 8
  %821 = add i64 %762, -68
  %822 = add i64 %764, 33
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = sub i32 %819, %824
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RSI.i563, align 8
  %827 = icmp ult i32 %819, %824
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %825, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %824, %819
  %835 = xor i32 %834, %825
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %26, align 1
  %839 = icmp eq i32 %825, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %29, align 1
  %841 = lshr i32 %825, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %32, align 1
  %843 = lshr i32 %819, 31
  %844 = lshr i32 %824, 31
  %845 = xor i32 %844, %843
  %846 = xor i32 %841, %843
  %847 = add nuw nsw i32 %846, %845
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %38, align 1
  %850 = sext i32 %825 to i64
  store i64 %850, i64* %RDX.i499, align 8
  %851 = shl nsw i64 %850, 2
  %852 = add i64 %817, %851
  %853 = add i64 %764, 39
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  store i32 %812, i32* %854, align 4
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -16
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %856 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i569.pre-phi, align 8
  %861 = add i64 %857, 7
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX.i569.pre-phi, align 8
  %864 = add i64 %855, -64
  %865 = add i64 %857, 10
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RCX.i443, align 8
  %869 = add i64 %857, 14
  store i64 %869, i64* %3, align 8
  %870 = load i64, i64* %859, align 8
  store i64 %870, i64* %RDX.i499, align 8
  %871 = add i64 %870, 8
  %872 = add i64 %857, 17
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = sub i32 %867, %874
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RCX.i443, align 8
  %877 = icmp ult i32 %867, %874
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %14, align 1
  %879 = and i32 %875, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %21, align 1
  %884 = xor i32 %874, %867
  %885 = xor i32 %884, %875
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %26, align 1
  %889 = icmp eq i32 %875, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %29, align 1
  %891 = lshr i32 %875, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = lshr i32 %867, 31
  %894 = lshr i32 %874, 31
  %895 = xor i32 %894, %893
  %896 = xor i32 %891, %893
  %897 = add nuw nsw i32 %896, %895
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %38, align 1
  %900 = sext i32 %875 to i64
  store i64 %900, i64* %RDX.i499, align 8
  %901 = shl nsw i64 %900, 2
  %902 = add i64 %863, %901
  %903 = add i64 %857, 23
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RCX.i443, align 8
  %907 = add i64 %855, -44
  %908 = add i64 %857, 26
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = add i32 %910, %905
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RCX.i443, align 8
  %913 = icmp ult i32 %911, %905
  %914 = icmp ult i32 %911, %910
  %915 = or i1 %913, %914
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %14, align 1
  %917 = and i32 %911, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %21, align 1
  %922 = xor i32 %910, %905
  %923 = xor i32 %922, %911
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  store i8 %926, i8* %26, align 1
  %927 = icmp eq i32 %911, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %29, align 1
  %929 = lshr i32 %911, 31
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %32, align 1
  %931 = lshr i32 %905, 31
  %932 = lshr i32 %910, 31
  %933 = xor i32 %929, %931
  %934 = xor i32 %929, %932
  %935 = add nuw nsw i32 %933, %934
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %38, align 1
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -44
  %940 = add i64 %857, 29
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  store i32 %911, i32* %941, align 4
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -64
  %944 = load i64, i64* %3, align 8
  %945 = add i64 %944, 3
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %943 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = add i32 %947, 1
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i569.pre-phi, align 8
  %950 = icmp eq i32 %947, -1
  %951 = icmp eq i32 %948, 0
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %14, align 1
  %954 = and i32 %948, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i32 %948, %947
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %26, align 1
  %963 = zext i1 %951 to i8
  store i8 %963, i8* %29, align 1
  %964 = lshr i32 %948, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %32, align 1
  %966 = lshr i32 %947, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %964
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %38, align 1
  %971 = add i64 %944, 9
  store i64 %971, i64* %3, align 8
  store i32 %948, i32* %946, align 4
  %972 = load i64, i64* %3, align 8
  %973 = add i64 %972, -132
  store i64 %973, i64* %3, align 8
  br label %block_.L_419fc3

block_.L_41a04c:                                  ; preds = %block_.L_419fc3
  %974 = add i64 %663, -44
  %975 = add i64 %699, 4
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, -100
  %979 = icmp ult i32 %977, 100
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %14, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %21, align 1
  %986 = xor i32 %978, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %26, align 1
  %990 = icmp eq i32 %978, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %29, align 1
  %992 = lshr i32 %978, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %32, align 1
  %994 = lshr i32 %977, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %38, align 1
  %999 = icmp ne i8 %993, 0
  %1000 = xor i1 %999, %997
  %.v102 = select i1 %1000, i64 10, i64 15
  %1001 = add i64 %699, %.v102
  store i64 %1001, i64* %3, align 8
  br i1 %1000, label %block_41a056, label %block_.L_41a05b

block_41a056:                                     ; preds = %block_.L_41a04c
  %1002 = add i64 %1001, 563
  br label %block_.L_41a289

block_.L_41a05b:                                  ; preds = %block_.L_41a04c
  %1003 = add i64 %663, -20
  %1004 = add i64 %1001, 4
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  store i8 0, i8* %14, align 1
  %1007 = and i32 %1006, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1012 = icmp eq i32 %1006, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %29, align 1
  %1014 = lshr i32 %1006, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %1012, i64 257, i64 10
  %1016 = add i64 %1001, %.v103
  store i64 %1016, i64* %3, align 8
  br i1 %1012, label %block_.L_41a15c, label %block_41a065

block_41a065:                                     ; preds = %block_.L_41a05b
  %1017 = add i64 %663, -80
  %1018 = add i64 %1016, 4
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  store i8 0, i8* %14, align 1
  %1021 = and i32 %1020, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1026 = icmp eq i32 %1020, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i32 %1020, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %1026, i64 10, i64 110
  %1030 = add i64 %1016, %.v104
  store i64 %1030, i64* %3, align 8
  br i1 %1026, label %block_41a06f, label %block_.L_41a0d3

block_41a06f:                                     ; preds = %block_41a065
  %1031 = add i64 %1030, ptrtoint (%G_0x3a7e9__rip__type* @G_0x3a7e9__rip_ to i64)
  %1032 = add i64 %1030, 8
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %462, align 1
  store double 0.000000e+00, double* %463, align 1
  %1035 = add i64 %663, -16
  %1036 = add i64 %1030, 12
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RAX.i569.pre-phi, align 8
  %1039 = add i64 %1038, 28
  %1040 = add i64 %1030, 15
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RCX.i443, align 8
  %1044 = add i64 %1030, 18
  store i64 %1044, i64* %3, align 8
  %1045 = load i32, i32* %976, align 4
  %1046 = sub i32 %1042, %1045
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RCX.i443, align 8
  %1048 = icmp ult i32 %1042, %1045
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %14, align 1
  %1050 = and i32 %1046, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %21, align 1
  %1055 = xor i32 %1045, %1042
  %1056 = xor i32 %1055, %1046
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %26, align 1
  %1060 = icmp eq i32 %1046, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %29, align 1
  %1062 = lshr i32 %1046, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %32, align 1
  %1064 = lshr i32 %1042, 31
  %1065 = lshr i32 %1045, 31
  %1066 = xor i32 %1065, %1064
  %1067 = xor i32 %1062, %1064
  %1068 = add nuw nsw i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %38, align 1
  %1071 = add i64 %1030, 23
  store i64 %1071, i64* %3, align 8
  %1072 = load <2 x i32>, <2 x i32>* %349, align 1
  %1073 = load <2 x i32>, <2 x i32>* %352, align 1
  %1074 = load i32, i32* %976, align 4
  %1075 = sitofp i32 %1074 to float
  store float %1075, float* %357, align 1
  %1076 = extractelement <2 x i32> %1072, i32 1
  store i32 %1076, i32* %360, align 1
  %1077 = extractelement <2 x i32> %1073, i32 0
  store i32 %1077, i32* %362, align 1
  %1078 = extractelement <2 x i32> %1073, i32 1
  store i32 %1078, i32* %365, align 1
  %1079 = load <2 x float>, <2 x float>* %367, align 1
  %1080 = extractelement <2 x float> %1079, i32 0
  %1081 = fpext float %1080 to double
  store double %1081, double* %464, align 1
  %1082 = bitcast i64 %1034 to double
  %1083 = fmul double %1081, %1082
  store double %1083, double* %465, align 1
  store i64 0, i64* %337, align 1
  %1084 = tail call double @llvm.trunc.f64(double %1083)
  %1085 = tail call double @llvm.fabs.f64(double %1084)
  %1086 = fcmp ogt double %1085, 0x41DFFFFFFFC00000
  %1087 = fptosi double %1084 to i32
  %1088 = zext i32 %1087 to i64
  %1089 = select i1 %1086, i64 2147483648, i64 %1088
  store i64 %1089, i64* %RDX.i499, align 8
  %1090 = trunc i64 %1089 to i32
  %1091 = sub i32 %1046, %1090
  %1092 = icmp ult i32 %1046, %1090
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = and i32 %1091, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %21, align 1
  %1099 = xor i32 %1090, %1046
  %1100 = xor i32 %1099, %1091
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  store i8 %1103, i8* %26, align 1
  %1104 = icmp eq i32 %1091, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %29, align 1
  %1106 = lshr i32 %1091, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %32, align 1
  %1108 = lshr i32 %1090, 31
  %1109 = xor i32 %1108, %1062
  %1110 = xor i32 %1106, %1062
  %1111 = add nuw nsw i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %38, align 1
  %1114 = icmp ne i8 %1107, 0
  %1115 = xor i1 %1114, %1112
  %.v111 = select i1 %1115, i64 43, i64 61
  %1116 = add i64 %1030, %.v111
  store i64 %1116, i64* %3, align 8
  br i1 %1115, label %block_41a09a, label %block_.L_41a0ac

block_41a09a:                                     ; preds = %block_41a06f
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -16
  %1119 = add i64 %1116, 4
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i569.pre-phi, align 8
  %1122 = add i64 %1121, 28
  %1123 = add i64 %1116, 7
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RCX.i443, align 8
  %1127 = add i64 %1117, -44
  %1128 = add i64 %1116, 10
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = sub i32 %1125, %1130
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RCX.i443, align 8
  %1133 = icmp ult i32 %1125, %1130
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1131, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1130, %1125
  %1141 = xor i32 %1140, %1131
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %26, align 1
  %1145 = icmp eq i32 %1131, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %29, align 1
  %1147 = lshr i32 %1131, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %32, align 1
  %1149 = lshr i32 %1125, 31
  %1150 = lshr i32 %1130, 31
  %1151 = xor i32 %1150, %1149
  %1152 = xor i32 %1147, %1149
  %1153 = add nuw nsw i32 %1152, %1151
  %1154 = icmp eq i32 %1153, 2
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %38, align 1
  %1156 = add i64 %1117, -104
  %1157 = add i64 %1116, 13
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  store i32 %1131, i32* %1158, align 4
  %1159 = load i64, i64* %3, align 8
  %1160 = add i64 %1159, 33
  store i64 %1160, i64* %3, align 8
  br label %block_.L_41a0c8

block_.L_41a0ac:                                  ; preds = %block_41a06f
  %1161 = bitcast double %1081 to <2 x i32>
  %1162 = add i64 %1116, ptrtoint (%G_0x3a7ac__rip__type* @G_0x3a7ac__rip_ to i64)
  %1163 = add i64 %1116, 8
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %462, align 1
  store double 0.000000e+00, double* %463, align 1
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -44
  %1168 = add i64 %1116, 13
  store i64 %1168, i64* %3, align 8
  %1169 = load <2 x i32>, <2 x i32>* %352, align 1
  %1170 = inttoptr i64 %1167 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sitofp i32 %1171 to float
  store float %1172, float* %357, align 1
  %1173 = extractelement <2 x i32> %1161, i32 1
  store i32 %1173, i32* %360, align 1
  %1174 = extractelement <2 x i32> %1169, i32 0
  store i32 %1174, i32* %362, align 1
  %1175 = extractelement <2 x i32> %1169, i32 1
  store i32 %1175, i32* %365, align 1
  %1176 = load <2 x float>, <2 x float>* %367, align 1
  %1177 = extractelement <2 x float> %1176, i32 0
  %1178 = fpext float %1177 to double
  store double %1178, double* %464, align 1
  %1179 = bitcast i64 %1165 to double
  %1180 = fmul double %1178, %1179
  store double %1180, double* %465, align 1
  store i64 0, i64* %337, align 1
  %1181 = tail call double @llvm.trunc.f64(double %1180)
  %1182 = tail call double @llvm.fabs.f64(double %1181)
  %1183 = fcmp ogt double %1182, 0x41DFFFFFFFC00000
  %1184 = fptosi double %1181 to i32
  %1185 = zext i32 %1184 to i64
  %1186 = select i1 %1183, i64 2147483648, i64 %1185
  store i64 %1186, i64* %RAX.i569.pre-phi, align 8
  %1187 = add i64 %1166, -104
  %1188 = trunc i64 %1186 to i32
  %1189 = add i64 %1116, 28
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  store i32 %1188, i32* %1190, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_41a0c8

block_.L_41a0c8:                                  ; preds = %block_.L_41a0ac, %block_41a09a
  %1191 = phi i64 [ %.pre74, %block_.L_41a0ac ], [ %1160, %block_41a09a ]
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -104
  %1194 = add i64 %1191, 3
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i569.pre-phi, align 8
  %1198 = add i64 %1192, -48
  %1199 = add i64 %1191, 6
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  store i32 %1196, i32* %1200, align 4
  %1201 = load i64, i64* %3, align 8
  %1202 = add i64 %1201, 137
  store i64 %1202, i64* %3, align 8
  br label %block_.L_41a157

block_.L_41a0d3:                                  ; preds = %block_41a065
  %1203 = add i64 %663, -68
  %1204 = add i64 %1030, 5
  store i64 %1204, i64* %3, align 8
  %1205 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1206 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1207 = inttoptr i64 %1203 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = sitofp i32 %1208 to float
  store float %1209, float* %333, align 1
  %1210 = extractelement <2 x i32> %1205, i32 1
  store i32 %1210, i32* %.pre-phi85, align 1
  %1211 = extractelement <2 x i32> %1206, i32 0
  store i32 %1211, i32* %.pre-phi87, align 1
  %1212 = extractelement <2 x i32> %1206, i32 1
  store i32 %1212, i32* %.pre-phi89, align 1
  %1213 = add i64 %663, -60
  %1214 = add i64 %1030, 10
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  store i32 %1216, i32* %470, align 1
  store float 0.000000e+00, float* %471, align 1
  store float 0.000000e+00, float* %472, align 1
  store float 0.000000e+00, float* %473, align 1
  %1217 = add i64 %663, -56
  %1218 = add i64 %1030, 15
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  store i32 %1220, i32* %475, align 1
  store float 0.000000e+00, float* %477, align 1
  store float 0.000000e+00, float* %479, align 1
  store float 0.000000e+00, float* %481, align 1
  %1221 = add i64 %1030, 525
  %1222 = add i64 %1030, 20
  %1223 = load i64, i64* %6, align 8
  %1224 = add i64 %1223, -8
  %1225 = inttoptr i64 %1224 to i64*
  store i64 %1222, i64* %1225, align 8
  store i64 %1224, i64* %6, align 8
  store i64 %1221, i64* %3, align 8
  %call2_41a0e2 = tail call %struct.Memory* @sub_41a2e0.EVDDistribution(%struct.State* nonnull %0, i64 %1221, %struct.Memory* %MEMORY.4)
  %1226 = load i64, i64* %3, align 8
  %1227 = add i64 %1226, ptrtoint (%G_0x3a6f1__rip__type* @G_0x3a6f1__rip_ to i64)
  %1228 = add i64 %1226, 8
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %468, align 1
  store double 0.000000e+00, double* %469, align 1
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -96
  %1233 = add i64 %1226, 13
  store i64 %1233, i64* %3, align 8
  %1234 = load i64, i64* %462, align 1
  %1235 = inttoptr i64 %1232 to i64*
  store i64 %1234, i64* %1235, align 8
  %1236 = load i64, i64* %RBP.i, align 8
  %1237 = add i64 %1236, -16
  %1238 = load i64, i64* %3, align 8
  %1239 = add i64 %1238, 4
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1237 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RAX.i569.pre-phi, align 8
  %1242 = add i64 %1241, 28
  %1243 = add i64 %1238, 7
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RCX.i443, align 8
  %1247 = add i64 %1236, -44
  %1248 = add i64 %1238, 10
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = sub i32 %1245, %1250
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RCX.i443, align 8
  %1253 = icmp ult i32 %1245, %1250
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %14, align 1
  %1255 = and i32 %1251, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %21, align 1
  %1260 = xor i32 %1250, %1245
  %1261 = xor i32 %1260, %1251
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %26, align 1
  %1265 = icmp eq i32 %1251, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %29, align 1
  %1267 = lshr i32 %1251, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %32, align 1
  %1269 = lshr i32 %1245, 31
  %1270 = lshr i32 %1250, 31
  %1271 = xor i32 %1270, %1269
  %1272 = xor i32 %1267, %1269
  %1273 = add nuw nsw i32 %1272, %1271
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %38, align 1
  %1276 = add i64 %1238, 15
  store i64 %1276, i64* %3, align 8
  %1277 = load i32, i32* %1249, align 4
  %1278 = sitofp i32 %1277 to double
  store double %1278, double* %465, align 1
  %1279 = add i64 %1236, -96
  %1280 = add i64 %1238, 20
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to double*
  %1282 = load double, double* %1281, align 8
  %1283 = fmul double %1278, %1282
  store double %1283, double* %465, align 1
  %1284 = add i64 %1238, 25
  store i64 %1284, i64* %3, align 8
  %1285 = load double, double* %464, align 1
  %1286 = load double, double* %1281, align 8
  %1287 = fsub double %1285, %1286
  store double %1287, double* %464, align 1
  %1288 = fdiv double %1283, %1287
  store double %1288, double* %465, align 1
  %1289 = tail call double @llvm.trunc.f64(double %1288)
  %1290 = tail call double @llvm.fabs.f64(double %1289)
  %1291 = fcmp ogt double %1290, 0x41DFFFFFFFC00000
  %1292 = fptosi double %1289 to i32
  %1293 = zext i32 %1292 to i64
  %1294 = select i1 %1291, i64 2147483648, i64 %1293
  store i64 %1294, i64* %RDX.i499, align 8
  %1295 = trunc i64 %1294 to i32
  %1296 = sub i32 %1251, %1295
  %1297 = icmp ult i32 %1251, %1295
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1296, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1295, %1251
  %1305 = xor i32 %1304, %1296
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %26, align 1
  %1309 = icmp eq i32 %1296, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %29, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %32, align 1
  %1313 = lshr i32 %1295, 31
  %1314 = xor i32 %1313, %1267
  %1315 = xor i32 %1311, %1267
  %1316 = add nuw nsw i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %38, align 1
  %1319 = icmp ne i8 %1312, 0
  %1320 = xor i1 %1319, %1317
  %.v105 = select i1 %1320, i64 41, i64 59
  %1321 = add i64 %1238, %.v105
  store i64 %1321, i64* %3, align 8
  br i1 %1320, label %block_41a11d, label %block_.L_41a12f

block_41a11d:                                     ; preds = %block_.L_41a0d3
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -16
  %1324 = add i64 %1321, 4
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i64*
  %1326 = load i64, i64* %1325, align 8
  store i64 %1326, i64* %RAX.i569.pre-phi, align 8
  %1327 = add i64 %1326, 28
  %1328 = add i64 %1321, 7
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RCX.i443, align 8
  %1332 = add i64 %1322, -44
  %1333 = add i64 %1321, 10
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = sub i32 %1330, %1335
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RCX.i443, align 8
  %1338 = icmp ult i32 %1330, %1335
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %14, align 1
  %1340 = and i32 %1336, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %21, align 1
  %1345 = xor i32 %1335, %1330
  %1346 = xor i32 %1345, %1336
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %26, align 1
  %1350 = icmp eq i32 %1336, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %29, align 1
  %1352 = lshr i32 %1336, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %32, align 1
  %1354 = lshr i32 %1330, 31
  %1355 = lshr i32 %1335, 31
  %1356 = xor i32 %1355, %1354
  %1357 = xor i32 %1352, %1354
  %1358 = add nuw nsw i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %38, align 1
  %1361 = add i64 %1322, -108
  %1362 = add i64 %1321, 13
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  store i32 %1336, i32* %1363, align 4
  %1364 = load i64, i64* %3, align 8
  %1365 = add i64 %1364, 39
  store i64 %1365, i64* %3, align 8
  br label %block_.L_41a151

block_.L_41a12f:                                  ; preds = %block_.L_41a0d3
  %1366 = add i64 %1321, ptrtoint (%G_0x3a6a9__rip__type* @G_0x3a6a9__rip_ to i64)
  %1367 = add i64 %1321, 8
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %462, align 1
  store double 0.000000e+00, double* %463, align 1
  %1370 = load i64, i64* %RBP.i, align 8
  %1371 = add i64 %1370, -44
  %1372 = add i64 %1321, 13
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = sitofp i32 %1374 to double
  store double %1375, double* %464, align 1
  %1376 = add i64 %1370, -96
  %1377 = add i64 %1321, 18
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to double*
  %1379 = load double, double* %1378, align 8
  %1380 = fmul double %1375, %1379
  store double %1380, double* %464, align 1
  %1381 = add i64 %1321, 23
  store i64 %1381, i64* %3, align 8
  %1382 = bitcast i64 %1369 to double
  %1383 = load double, double* %1378, align 8
  %1384 = fsub double %1382, %1383
  store double %1384, double* %465, align 1
  store i64 0, i64* %337, align 1
  %1385 = fdiv double %1380, %1384
  store double %1385, double* %464, align 1
  %1386 = tail call double @llvm.trunc.f64(double %1385)
  %1387 = tail call double @llvm.fabs.f64(double %1386)
  %1388 = fcmp ogt double %1387, 0x41DFFFFFFFC00000
  %1389 = fptosi double %1386 to i32
  %1390 = zext i32 %1389 to i64
  %1391 = select i1 %1388, i64 2147483648, i64 %1390
  store i64 %1391, i64* %RAX.i569.pre-phi, align 8
  %1392 = add i64 %1370, -108
  %1393 = trunc i64 %1391 to i32
  %1394 = add i64 %1321, 34
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1392 to i32*
  store i32 %1393, i32* %1395, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_41a151

block_.L_41a151:                                  ; preds = %block_.L_41a12f, %block_41a11d
  %1396 = phi i64 [ %.pre75, %block_.L_41a12f ], [ %1365, %block_41a11d ]
  %1397 = load i64, i64* %RBP.i, align 8
  %1398 = add i64 %1397, -108
  %1399 = add i64 %1396, 3
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = zext i32 %1401 to i64
  store i64 %1402, i64* %RAX.i569.pre-phi, align 8
  %1403 = add i64 %1397, -48
  %1404 = add i64 %1396, 6
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  store i32 %1401, i32* %1405, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_41a157

block_.L_41a157:                                  ; preds = %block_.L_41a151, %block_.L_41a0c8
  %1406 = phi i64 [ %.pre76, %block_.L_41a151 ], [ %1202, %block_.L_41a0c8 ]
  %1407 = add i64 %1406, 5
  store i64 %1407, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a15c

block_.L_41a15c:                                  ; preds = %block_.L_41a157, %block_.L_41a05b
  %1408 = phi i64 [ %1407, %block_.L_41a157 ], [ %1016, %block_.L_41a05b ]
  %1409 = phi i64 [ %.pre77, %block_.L_41a157 ], [ %663, %block_.L_41a05b ]
  %1410 = add i64 %1409, -20
  %1411 = add i64 %1408, 4
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  store i8 0, i8* %14, align 1
  %1414 = and i32 %1413, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1419 = icmp eq i32 %1413, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %29, align 1
  %1421 = lshr i32 %1413, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %1419, i64 61, i64 10
  %1423 = add i64 %1408, %.v
  %1424 = add i64 %1409, -60
  %1425 = add i64 %1423, 4
  store i64 %1425, i64* %3, align 8
  br i1 %1419, label %block_.L_41a199, label %block_41a166

block_41a166:                                     ; preds = %block_.L_41a15c
  store i64 %1424, i64* %R8.i, align 8
  %1426 = add i64 %1409, -56
  store i64 %1426, i64* %R9.i, align 8
  %1427 = add i64 %1409, -32
  %1428 = add i64 %1423, 12
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RDI.i76, align 8
  %1431 = add i64 %1409, -40
  %1432 = add i64 %1423, 16
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %RSI.i563, align 8
  %1435 = add i64 %1409, -52
  %1436 = add i64 %1423, 19
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RDX.i499, align 8
  %1440 = add i64 %1409, -48
  %1441 = add i64 %1423, 22
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RCX.i173, align 8
  %1445 = add i64 %1409, -68
  %1446 = add i64 %1423, 27
  store i64 %1446, i64* %3, align 8
  %1447 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1448 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1449 = inttoptr i64 %1445 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = sitofp i32 %1450 to float
  store float %1451, float* %333, align 1
  %1452 = extractelement <2 x i32> %1447, i32 1
  store i32 %1452, i32* %.pre-phi85, align 1
  %1453 = extractelement <2 x i32> %1448, i32 0
  store i32 %1453, i32* %.pre-phi87, align 1
  %1454 = extractelement <2 x i32> %1448, i32 1
  store i32 %1454, i32* %.pre-phi89, align 1
  %1455 = add i64 %1423, 474
  %1456 = add i64 %1423, 32
  %1457 = load i64, i64* %6, align 8
  %1458 = add i64 %1457, -8
  %1459 = inttoptr i64 %1458 to i64*
  store i64 %1456, i64* %1459, align 8
  store i64 %1458, i64* %6, align 8
  store i64 %1455, i64* %3, align 8
  %call2_41a181 = tail call %struct.Memory* @sub_41a340.EVDCensoredFit(%struct.State* nonnull %0, i64 %1455, %struct.Memory* %MEMORY.4)
  %1460 = load i32, i32* %EAX.i534, align 4
  %1461 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1462 = and i32 %1460, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1467 = icmp eq i32 %1460, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %29, align 1
  %1469 = lshr i32 %1460, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %1467, i64 9, i64 14
  %1471 = add i64 %1461, %.v106
  store i64 %1471, i64* %3, align 8
  br i1 %1467, label %block_41a18f, label %block_.L_41a194

block_41a18f:                                     ; preds = %block_41a166
  %1472 = add i64 %1471, 250
  br label %block_.L_41a289

block_.L_41a194:                                  ; preds = %block_41a166
  %1473 = add i64 %1471, 48
  br label %block_.L_41a1c4

block_.L_41a199:                                  ; preds = %block_.L_41a15c
  store i64 %1424, i64* %RCX.i173, align 8
  %1474 = add i64 %1409, -56
  store i64 %1474, i64* %R8.i, align 8
  %1475 = add i64 %1409, -32
  %1476 = add i64 %1423, 12
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i64*
  %1478 = load i64, i64* %1477, align 8
  store i64 %1478, i64* %RDI.i76, align 8
  %1479 = add i64 %1409, -40
  %1480 = add i64 %1423, 16
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i64*
  %1482 = load i64, i64* %1481, align 8
  store i64 %1482, i64* %RSI.i563, align 8
  %1483 = add i64 %1409, -52
  %1484 = add i64 %1423, 19
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  %1486 = load i32, i32* %1485, align 4
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RDX.i499, align 8
  %1488 = add i64 %1423, 1575
  %1489 = add i64 %1423, 24
  %1490 = load i64, i64* %6, align 8
  %1491 = add i64 %1490, -8
  %1492 = inttoptr i64 %1491 to i64*
  store i64 %1489, i64* %1492, align 8
  store i64 %1491, i64* %6, align 8
  store i64 %1488, i64* %3, align 8
  %call2_41a1ac = tail call %struct.Memory* @sub_41a7c0.EVDMaxLikelyFit(%struct.State* nonnull %0, i64 %1488, %struct.Memory* %MEMORY.4)
  %1493 = load i32, i32* %EAX.i534, align 4
  %1494 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1495 = and i32 %1493, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1500 = icmp eq i32 %1493, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %29, align 1
  %1502 = lshr i32 %1493, 31
  %1503 = trunc i32 %1502 to i8
  store i8 %1503, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %1500, i64 9, i64 14
  %1504 = add i64 %1494, %.v110
  store i64 %1504, i64* %3, align 8
  br i1 %1500, label %block_41a1ba, label %block_.L_41a1bf

block_41a1ba:                                     ; preds = %block_.L_41a199
  %1505 = add i64 %1504, 207
  br label %block_.L_41a289

block_.L_41a1bf:                                  ; preds = %block_.L_41a199
  %1506 = add i64 %1504, 5
  store i64 %1506, i64* %3, align 8
  br label %block_.L_41a1c4

block_.L_41a1c4:                                  ; preds = %block_.L_41a1bf, %block_.L_41a194
  %storemerge = phi i64 [ %1473, %block_.L_41a194 ], [ %1506, %block_.L_41a1bf ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_41a181, %block_.L_41a194 ], [ %call2_41a1ac, %block_.L_41a1bf ]
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -60
  %1509 = add i64 %storemerge, 5
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to float*
  %1511 = load float, float* %1510, align 4
  %1512 = fpext float %1511 to double
  store double %1512, double* %465, align 1
  %1513 = add i64 %1507, -44
  %1514 = add i64 %storemerge, 8
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX.i569.pre-phi, align 8
  %1518 = add i64 %1507, -48
  %1519 = add i64 %storemerge, 11
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, %1516
  %1523 = icmp eq i32 %1522, 0
  %1524 = zext i1 %1523 to i8
  %1525 = lshr i32 %1522, 31
  %1526 = add i32 %1522, -1
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX.i569.pre-phi, align 8
  store i8 %1524, i8* %14, align 1
  %1528 = and i32 %1526, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %21, align 1
  %1533 = xor i32 %1526, %1522
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  store i8 %1536, i8* %26, align 1
  %1537 = icmp eq i32 %1526, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %29, align 1
  %1539 = lshr i32 %1526, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %32, align 1
  %1541 = xor i32 %1539, %1525
  %1542 = add nuw nsw i32 %1541, %1525
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %38, align 1
  %1545 = sitofp i32 %1526 to double
  store double %1545, double* %464, align 1
  %1546 = add i64 %storemerge, 21
  store i64 %1546, i64* %3, align 8
  %1547 = load i32, i32* %1515, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i569.pre-phi, align 8
  %1549 = add i64 %storemerge, 24
  store i64 %1549, i64* %3, align 8
  %1550 = load i32, i32* %1520, align 4
  %1551 = add i32 %1550, %1547
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX.i569.pre-phi, align 8
  %1553 = icmp ult i32 %1551, %1547
  %1554 = icmp ult i32 %1551, %1550
  %1555 = or i1 %1553, %1554
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %14, align 1
  %1557 = and i32 %1551, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  %1562 = xor i32 %1550, %1547
  %1563 = xor i32 %1562, %1551
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  store i8 %1566, i8* %26, align 1
  %1567 = icmp eq i32 %1551, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %29, align 1
  %1569 = lshr i32 %1551, 31
  %1570 = trunc i32 %1569 to i8
  store i8 %1570, i8* %32, align 1
  %1571 = lshr i32 %1547, 31
  %1572 = lshr i32 %1550, 31
  %1573 = xor i32 %1569, %1571
  %1574 = xor i32 %1569, %1572
  %1575 = add nuw nsw i32 %1573, %1574
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %38, align 1
  %1578 = sitofp i32 %1551 to double
  store double %1578, double* %467, align 1
  %1579 = fdiv double %1545, %1578
  store double %1579, double* %464, align 1
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -120
  %1582 = add i64 %storemerge, 37
  store i64 %1582, i64* %3, align 8
  %1583 = load i64, i64* %462, align 1
  %1584 = inttoptr i64 %1581 to i64*
  store i64 %1583, i64* %1584, align 8
  %1585 = load i64, i64* %3, align 8
  %1586 = load <2 x i32>, <2 x i32>* %349, align 1
  %1587 = load <2 x i32>, <2 x i32>* %352, align 1
  %1588 = extractelement <2 x i32> %1586, i32 0
  store i32 %1588, i32* %334, align 1
  %1589 = extractelement <2 x i32> %1586, i32 1
  store i32 %1589, i32* %.pre-phi85, align 1
  %1590 = extractelement <2 x i32> %1587, i32 0
  store i32 %1590, i32* %.pre-phi87, align 1
  %1591 = extractelement <2 x i32> %1587, i32 1
  store i32 %1591, i32* %.pre-phi89, align 1
  %1592 = add i64 %1585, -101625
  %1593 = add i64 %1585, 8
  %1594 = load i64, i64* %6, align 8
  %1595 = add i64 %1594, -8
  %1596 = inttoptr i64 %1595 to i64*
  store i64 %1593, i64* %1596, align 8
  store i64 %1595, i64* %6, align 8
  store i64 %1592, i64* %3, align 8
  %1597 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.10)
  %1598 = load i64, i64* %3, align 8
  %1599 = add i64 %1598, ptrtoint (%G_0x3a637__rip__type* @G_0x3a637__rip_ to i64)
  %1600 = add i64 %1598, 8
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to double*
  %1602 = load double, double* %1601, align 8
  %1603 = load double, double* %465, align 1
  %1604 = fmul double %1602, %1603
  store double %1604, double* %464, align 1
  store i64 0, i64* %351, align 1
  %.cast19 = bitcast double %1604 to <2 x i32>
  %1605 = extractelement <2 x i32> %.cast19, i32 0
  store i32 %1605, i32* %334, align 1
  %1606 = extractelement <2 x i32> %.cast19, i32 1
  store i32 %1606, i32* %.pre-phi85, align 1
  store i32 0, i32* %.pre-phi87, align 1
  store i32 0, i32* %.pre-phi89, align 1
  %1607 = add i64 %1598, -101633
  %1608 = add i64 %1598, 20
  %1609 = load i64, i64* %6, align 8
  %1610 = add i64 %1609, -8
  %1611 = inttoptr i64 %1610 to i64*
  store i64 %1608, i64* %1611, align 8
  store i64 %1610, i64* %6, align 8
  store i64 %1607, i64* %3, align 8
  %1612 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1597)
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -56
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to float*
  %1618 = load float, float* %1617, align 4
  %1619 = fpext float %1618 to double
  store double %1619, double* %464, align 1
  %1620 = load double, double* %465, align 1
  %1621 = fdiv double %1620, %1619
  store double %1621, double* %465, align 1
  %1622 = add i64 %1613, -120
  %1623 = add i64 %1615, 14
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to double*
  %1625 = load double, double* %1624, align 8
  %1626 = fsub double %1625, %1621
  store double %1626, double* %464, align 1
  store i64 0, i64* %351, align 1
  %1627 = tail call double @llvm.trunc.f64(double %1626)
  %1628 = tail call double @llvm.fabs.f64(double %1627)
  %1629 = fcmp ogt double %1628, 0x41DFFFFFFFC00000
  %1630 = fptosi double %1627 to i32
  %1631 = zext i32 %1630 to i64
  %1632 = select i1 %1629, i64 2147483648, i64 %1631
  store i64 %1632, i64* %RAX.i569.pre-phi, align 8
  %1633 = add i64 %1613, -76
  %1634 = trunc i64 %1632 to i32
  %1635 = add i64 %1615, 25
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1633 to i32*
  store i32 %1634, i32* %1636, align 4
  %1637 = load i64, i64* %RBP.i, align 8
  %1638 = add i64 %1637, -32
  %1639 = load i64, i64* %3, align 8
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1638 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RCX.i173, align 8
  store i64 %1642, i64* %RDI.i76, align 8
  %1643 = add i64 %1639, -102046
  %1644 = add i64 %1639, 12
  %1645 = load i64, i64* %6, align 8
  %1646 = add i64 %1645, -8
  %1647 = inttoptr i64 %1646 to i64*
  store i64 %1644, i64* %1647, align 8
  store i64 %1646, i64* %6, align 8
  store i64 %1643, i64* %3, align 8
  %1648 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1612)
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -40
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1650 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RCX.i173, align 8
  store i64 %1654, i64* %RDI.i76, align 8
  %1655 = add i64 %1651, -102058
  %1656 = add i64 %1651, 12
  %1657 = load i64, i64* %6, align 8
  %1658 = add i64 %1657, -8
  %1659 = inttoptr i64 %1658 to i64*
  store i64 %1656, i64* %1659, align 8
  store i64 %1658, i64* %6, align 8
  store i64 %1655, i64* %3, align 8
  %1660 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1648)
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -76
  %1663 = load i64, i64* %3, align 8
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RAX.i569.pre-phi, align 8
  %1668 = add i64 %1661, -72
  %1669 = add i64 %1663, 6
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = sub i32 %1666, %1671
  %1673 = icmp ult i32 %1666, %1671
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %14, align 1
  %1675 = and i32 %1672, 255
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %21, align 1
  %1680 = xor i32 %1671, %1666
  %1681 = xor i32 %1680, %1672
  %1682 = lshr i32 %1681, 4
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %26, align 1
  %1685 = icmp eq i32 %1672, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %29, align 1
  %1687 = lshr i32 %1672, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %32, align 1
  %1689 = lshr i32 %1666, 31
  %1690 = lshr i32 %1671, 31
  %1691 = xor i32 %1690, %1689
  %1692 = xor i32 %1687, %1689
  %1693 = add nuw nsw i32 %1692, %1691
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %38, align 1
  %1696 = icmp ne i8 %1688, 0
  %1697 = xor i1 %1696, %1694
  %.v107 = select i1 %1697, i64 17, i64 12
  %1698 = add i64 %1663, %.v107
  store i64 %1698, i64* %3, align 8
  br i1 %1697, label %block_.L_41a247, label %block_41a242

block_41a242:                                     ; preds = %block_.L_41a1c4
  %1699 = add i64 %1698, 25
  store i64 %1699, i64* %3, align 8
  br label %block_.L_41a25b

block_.L_41a247:                                  ; preds = %block_.L_41a1c4
  %1700 = add i64 %1698, 3
  store i64 %1700, i64* %3, align 8
  %1701 = load i32, i32* %1665, align 4
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RAX.i569.pre-phi, align 8
  %1703 = add i64 %1698, 6
  store i64 %1703, i64* %3, align 8
  store i32 %1701, i32* %1670, align 4
  %1704 = load i64, i64* %RBP.i, align 8
  %1705 = add i64 %1704, -80
  %1706 = load i64, i64* %3, align 8
  %1707 = add i64 %1706, 3
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1705 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = add i32 %1709, 1
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RAX.i569.pre-phi, align 8
  %1712 = icmp eq i32 %1709, -1
  %1713 = icmp eq i32 %1710, 0
  %1714 = or i1 %1712, %1713
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %14, align 1
  %1716 = and i32 %1710, 255
  %1717 = tail call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  store i8 %1720, i8* %21, align 1
  %1721 = xor i32 %1710, %1709
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %26, align 1
  %1725 = zext i1 %1713 to i8
  store i8 %1725, i8* %29, align 1
  %1726 = lshr i32 %1710, 31
  %1727 = trunc i32 %1726 to i8
  store i8 %1727, i8* %32, align 1
  %1728 = lshr i32 %1709, 31
  %1729 = xor i32 %1726, %1728
  %1730 = add nuw nsw i32 %1729, %1726
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %38, align 1
  %1733 = add i64 %1706, 9
  store i64 %1733, i64* %3, align 8
  store i32 %1710, i32* %1708, align 4
  %1734 = load i64, i64* %3, align 8
  %1735 = add i64 %1734, -795
  store i64 %1735, i64* %3, align 8
  br label %block_.L_419f3b

block_.L_41a25b.loopexit:                         ; preds = %block_.L_419f3b
  br label %block_.L_41a25b

block_.L_41a25b:                                  ; preds = %block_.L_41a25b.loopexit, %block_41a242
  %1736 = phi i64 [ %1661, %block_41a242 ], [ %483, %block_.L_41a25b.loopexit ]
  %1737 = phi i64 [ %1699, %block_41a242 ], [ %511, %block_.L_41a25b.loopexit ]
  %MEMORY.11 = phi %struct.Memory* [ %1660, %block_41a242 ], [ %MEMORY.4, %block_.L_41a25b.loopexit ]
  store i64 1, i64* %RSI.i563, align 8
  %1738 = add i64 %1736, -16
  %1739 = add i64 %1737, 9
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i64*
  %1741 = load i64, i64* %1740, align 8
  store i64 %1741, i64* %RDI.i76, align 8
  %1742 = add i64 %1736, -60
  %1743 = add i64 %1737, 14
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i32*
  %1745 = load i32, i32* %1744, align 4
  store i32 %1745, i32* %334, align 1
  store float 0.000000e+00, float* %336, align 1
  store float 0.000000e+00, float* %338, align 1
  store float 0.000000e+00, float* %340, align 1
  %1746 = add i64 %1736, -56
  %1747 = add i64 %1737, 19
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  store i32 %1749, i32* %470, align 1
  store float 0.000000e+00, float* %471, align 1
  store float 0.000000e+00, float* %472, align 1
  store float 0.000000e+00, float* %473, align 1
  %1750 = add i64 %1736, -68
  %1751 = add i64 %1737, 24
  store i64 %1751, i64* %3, align 8
  %1752 = bitcast %union.VectorReg* %466 to <2 x i32>*
  %1753 = load <2 x i32>, <2 x i32>* %1752, align 1
  %1754 = bitcast i64* %478 to <2 x i32>*
  %1755 = load <2 x i32>, <2 x i32>* %1754, align 1
  %1756 = inttoptr i64 %1750 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = sitofp i32 %1757 to float
  %1759 = bitcast %union.VectorReg* %466 to float*
  store float %1758, float* %1759, align 1
  %1760 = extractelement <2 x i32> %1753, i32 1
  %1761 = bitcast i8* %476 to i32*
  store i32 %1760, i32* %1761, align 1
  %1762 = extractelement <2 x i32> %1755, i32 0
  %1763 = bitcast i64* %478 to i32*
  store i32 %1762, i32* %1763, align 1
  %1764 = extractelement <2 x i32> %1755, i32 1
  %1765 = bitcast i8* %480 to i32*
  store i32 %1764, i32* %1765, align 1
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1767 = bitcast %union.VectorReg* %1766 to i8*
  %1768 = add i64 %1736, -72
  %1769 = add i64 %1737, 29
  store i64 %1769, i64* %3, align 8
  %1770 = bitcast %union.VectorReg* %1766 to <2 x i32>*
  %1771 = load <2 x i32>, <2 x i32>* %1770, align 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1773 = bitcast i64* %1772 to <2 x i32>*
  %1774 = load <2 x i32>, <2 x i32>* %1773, align 1
  %1775 = inttoptr i64 %1768 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = sitofp i32 %1776 to float
  %1778 = bitcast %union.VectorReg* %1766 to float*
  store float %1777, float* %1778, align 1
  %1779 = extractelement <2 x i32> %1771, i32 1
  %1780 = getelementptr inbounds i8, i8* %1767, i64 4
  %1781 = bitcast i8* %1780 to i32*
  store i32 %1779, i32* %1781, align 1
  %1782 = extractelement <2 x i32> %1774, i32 0
  %1783 = bitcast i64* %1772 to i32*
  store i32 %1782, i32* %1783, align 1
  %1784 = extractelement <2 x i32> %1774, i32 1
  %1785 = getelementptr inbounds i8, i8* %1767, i64 12
  %1786 = bitcast i8* %1785 to i32*
  store i32 %1784, i32* %1786, align 1
  %1787 = add i64 %1737, -1851
  %1788 = add i64 %1737, 34
  %1789 = load i64, i64* %6, align 8
  %1790 = add i64 %1789, -8
  %1791 = inttoptr i64 %1790 to i64*
  store i64 %1788, i64* %1791, align 8
  store i64 %1790, i64* %6, align 8
  store i64 %1787, i64* %3, align 8
  %call2_41a278 = tail call %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* nonnull %0, i64 %1787, %struct.Memory* %MEMORY.11)
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -4
  %1794 = load i64, i64* %3, align 8
  %1795 = add i64 %1794, 7
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1793 to i32*
  store i32 1, i32* %1796, align 4
  %1797 = load i64, i64* %3, align 8
  %1798 = add i64 %1797, 67
  store i64 %1798, i64* %3, align 8
  br label %block_.L_41a2c7

block_.L_41a289:                                  ; preds = %block_41a1ba, %block_41a18f, %block_41a056, %block_419f6b
  %.sink = phi i64 [ %1505, %block_41a1ba ], [ %1472, %block_41a18f ], [ %1002, %block_41a056 ], [ %588, %block_419f6b ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_41a1ac, %block_41a1ba ], [ %call2_41a181, %block_41a18f ], [ %MEMORY.4, %block_41a056 ], [ %MEMORY.4, %block_419f6b ]
  %1799 = load i64, i64* %RBP.i, align 8
  %1800 = add i64 %1799, -16
  %1801 = add i64 %.sink, 4
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RDI.i76, align 8
  %1804 = add i64 %.sink, -6953
  %1805 = add i64 %.sink, 9
  %1806 = load i64, i64* %6, align 8
  %1807 = add i64 %1806, -8
  %1808 = inttoptr i64 %1807 to i64*
  store i64 %1805, i64* %1808, align 8
  store i64 %1807, i64* %6, align 8
  store i64 %1804, i64* %3, align 8
  %call2_41a28d = tail call %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* nonnull %0, i64 %1804, %struct.Memory* %MEMORY.12)
  %1809 = load i64, i64* %RBP.i, align 8
  %1810 = add i64 %1809, -32
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, 5
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i64*
  %1814 = load i64, i64* %1813, align 8
  store i8 0, i8* %14, align 1
  %1815 = trunc i64 %1814 to i32
  %1816 = and i32 %1815, 255
  %1817 = tail call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  store i8 %1820, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1821 = icmp eq i64 %1814, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %29, align 1
  %1823 = lshr i64 %1814, 63
  %1824 = trunc i64 %1823 to i8
  store i8 %1824, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %1821, i64 23, i64 11
  %1825 = add i64 %1811, %.v108
  store i64 %1825, i64* %3, align 8
  br i1 %1821, label %block_.L_41a2a9, label %block_41a29d

block_41a29d:                                     ; preds = %block_.L_41a289
  %1826 = add i64 %1825, 4
  store i64 %1826, i64* %3, align 8
  %1827 = load i64, i64* %1813, align 8
  store i64 %1827, i64* %RAX.i569.pre-phi, align 8
  store i64 %1827, i64* %RDI.i76, align 8
  %1828 = add i64 %1825, -102173
  %1829 = add i64 %1825, 12
  %1830 = load i64, i64* %6, align 8
  %1831 = add i64 %1830, -8
  %1832 = inttoptr i64 %1831 to i64*
  store i64 %1829, i64* %1832, align 8
  store i64 %1831, i64* %6, align 8
  store i64 %1828, i64* %3, align 8
  %1833 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_41a28d)
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_41a2a9

block_.L_41a2a9:                                  ; preds = %block_41a29d, %block_.L_41a289
  %1834 = phi i64 [ %1825, %block_.L_41a289 ], [ %.pre79, %block_41a29d ]
  %1835 = phi i64 [ %1809, %block_.L_41a289 ], [ %.pre78, %block_41a29d ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_41a28d, %block_.L_41a289 ], [ %1833, %block_41a29d ]
  %1836 = add i64 %1835, -40
  %1837 = add i64 %1834, 5
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i64*
  %1839 = load i64, i64* %1838, align 8
  store i8 0, i8* %14, align 1
  %1840 = trunc i64 %1839 to i32
  %1841 = and i32 %1840, 255
  %1842 = tail call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  store i8 %1845, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1846 = icmp eq i64 %1839, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %29, align 1
  %1848 = lshr i64 %1839, 63
  %1849 = trunc i64 %1848 to i8
  store i8 %1849, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %1846, i64 23, i64 11
  %1850 = add i64 %1834, %.v109
  store i64 %1850, i64* %3, align 8
  br i1 %1846, label %block_.L_41a2c0, label %block_41a2b4

block_41a2b4:                                     ; preds = %block_.L_41a2a9
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %3, align 8
  %1852 = load i64, i64* %1838, align 8
  store i64 %1852, i64* %RAX.i569.pre-phi, align 8
  store i64 %1852, i64* %RDI.i76, align 8
  %1853 = add i64 %1850, -102196
  %1854 = add i64 %1850, 12
  %1855 = load i64, i64* %6, align 8
  %1856 = add i64 %1855, -8
  %1857 = inttoptr i64 %1856 to i64*
  store i64 %1854, i64* %1857, align 8
  store i64 %1856, i64* %6, align 8
  store i64 %1853, i64* %3, align 8
  %1858 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.13)
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_41a2c0

block_.L_41a2c0:                                  ; preds = %block_41a2b4, %block_.L_41a2a9
  %1859 = phi i64 [ %1850, %block_.L_41a2a9 ], [ %.pre81, %block_41a2b4 ]
  %1860 = phi i64 [ %1835, %block_.L_41a2a9 ], [ %.pre80, %block_41a2b4 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_.L_41a2a9 ], [ %1858, %block_41a2b4 ]
  %1861 = add i64 %1860, -4
  %1862 = add i64 %1859, 7
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  store i32 0, i32* %1863, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_41a2c7

block_.L_41a2c7:                                  ; preds = %block_.L_41a2c0, %block_.L_41a25b
  %1864 = phi i64 [ %1798, %block_.L_41a25b ], [ %.pre82, %block_.L_41a2c0 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_41a278, %block_.L_41a25b ], [ %MEMORY.14, %block_.L_41a2c0 ]
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -4
  %1867 = add i64 %1864, 3
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i569.pre-phi, align 8
  %1871 = load i64, i64* %6, align 8
  %1872 = add i64 %1871, 128
  store i64 %1872, i64* %6, align 8
  %1873 = icmp ugt i64 %1871, -129
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = trunc i64 %1872 to i32
  %1876 = and i32 %1875, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i64 %1872, %1871
  %1882 = lshr i64 %1881, 4
  %1883 = trunc i64 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %26, align 1
  %1885 = icmp eq i64 %1872, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %29, align 1
  %1887 = lshr i64 %1872, 63
  %1888 = trunc i64 %1887 to i8
  store i8 %1888, i8* %32, align 1
  %1889 = lshr i64 %1871, 63
  %1890 = xor i64 %1887, %1889
  %1891 = add nuw nsw i64 %1890, %1887
  %1892 = icmp eq i64 %1891, 2
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %38, align 1
  %1894 = add i64 %1864, 11
  store i64 %1894, i64* %3, align 8
  %1895 = add i64 %1871, 136
  %1896 = inttoptr i64 %1872 to i64*
  %1897 = load i64, i64* %1896, align 8
  store i64 %1897, i64* %RBP.i, align 8
  store i64 %1895, i64* %6, align 8
  %1898 = add i64 %1864, 12
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1895 to i64*
  %1900 = load i64, i64* %1899, align 8
  store i64 %1900, i64* %3, align 8
  %1901 = add i64 %1871, 144
  store i64 %1901, i64* %6, align 8
  ret %struct.Memory* %MEMORY.15
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_je_.L_419ef4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_jg_.L_419eef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_jle_.L_419edc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ee1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419e8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ef4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_419f1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
define %struct.Memory* @routine_jge_.L_41a25b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_419f70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a289(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456e97___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x258___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 600, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x259___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 601, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__esi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jg_.L_41a04c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a819__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a819__rip__type* @G_0x3a819__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419fc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
define %struct.Memory* @routine_jge_.L_41a05b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41a15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jne_.L_41a0d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3a7e9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a7e9__rip__type* @G_0x3a7e9__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x2c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_41a0ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a0c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a7ac__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a7ac__rip__type* @G_0x3a7ac__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x44__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.EVDDistribution(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3a6f1__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a6f1__rip__type* @G_0x3a6f1__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a12f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a151(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a6a9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a6a9__rip__type* @G_0x3a6a9__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x2c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_jmpq_.L_41a15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_callq_.EVDCensoredFit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_41a194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a1c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.EVDMaxLikelyFit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41a1bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3a637__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a637__rip__type* @G_0x3a637__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jl_.L_41a247(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a25b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x44__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x48__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ExtremeValueSetHistogram(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a2c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.UnfitHistogram(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a2a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a2c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
