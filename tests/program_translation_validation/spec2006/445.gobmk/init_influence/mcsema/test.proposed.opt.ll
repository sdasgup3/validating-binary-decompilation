; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
%G_0xb8c040_type = type <{ [4 x i8] }>
%G_0xb9ccf__rip__type = type <{ [4 x i8] }>
%G_0xb9d2f__rip__type = type <{ [4 x i8] }>
%G_0xb9e7e__rip__type = type <{ [4 x i8] }>
%G_0xb9f0a__rip__type = type <{ [4 x i8] }>
%G_0xb9f20__rip__type = type <{ [4 x i8] }>
%G_0xb9f55__rip__type = type <{ [4 x i8] }>
%G_0xb9f6b__rip__type = type <{ [4 x i8] }>
%G__0xab3948_type = type <{ [8 x i8] }>
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
@G_0xb38cb0 = local_unnamed_addr global %G_0xb38cb0_type zeroinitializer
@G_0xb8c040 = local_unnamed_addr global %G_0xb8c040_type zeroinitializer
@G_0xb9ccf__rip_ = global %G_0xb9ccf__rip__type zeroinitializer
@G_0xb9d2f__rip_ = global %G_0xb9d2f__rip__type zeroinitializer
@G_0xb9e7e__rip_ = global %G_0xb9e7e__rip__type zeroinitializer
@G_0xb9f0a__rip_ = global %G_0xb9f0a__rip__type zeroinitializer
@G_0xb9f20__rip_ = global %G_0xb9f20__rip__type zeroinitializer
@G_0xb9f55__rip_ = global %G_0xb9f55__rip__type zeroinitializer
@G_0xb9f6b__rip_ = global %G_0xb9f6b__rip__type zeroinitializer
@G__0xab3948 = global %G__0xab3948_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @init_influence(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %RAX.i396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64), i64* %RAX.i396, align 8
  %RDI.i393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i393, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RDX.i388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i388, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RCX.i385, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -8
  %65 = load i64, i64* %RAX.i396, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, %65
  %71 = icmp ult i64 %69, %65
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %14, align 1
  %73 = trunc i64 %70 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i64 %69, %65
  %80 = xor i64 %79, %70
  %81 = lshr i64 %80, 4
  %82 = trunc i64 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %27, align 1
  %84 = icmp eq i64 %70, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %30, align 1
  %86 = lshr i64 %70, 63
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %33, align 1
  %88 = lshr i64 %69, 63
  %89 = lshr i64 %65, 63
  %90 = xor i64 %88, %89
  %91 = xor i64 %86, %88
  %92 = add nuw nsw i64 %91, %90
  %93 = icmp eq i64 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %39, align 1
  %.v22 = select i1 %84, i64 76, i64 10
  %95 = add i64 %66, %.v22
  store i64 %95, i64* %3, align 8
  br i1 %84, label %block_.L_4291dd, label %block_42919b

block_42919b:                                     ; preds = %entry
  %96 = add i64 %63, -12
  %97 = add i64 %95, 3
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX.i396, align 8
  %101 = add i64 %95, 7
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %68, align 8
  store i64 %102, i64* %RCX.i385, align 8
  %103 = add i64 %102, 34220
  %104 = add i64 %95, 13
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 %99, i32* %105, align 4
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RCX.i385, align 8
  %112 = add i64 %111, 31012
  %113 = add i64 %108, 11
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  store i8 0, i8* %14, align 1
  %116 = and i32 %115, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %121 = icmp eq i32 %115, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %30, align 1
  %123 = lshr i32 %115, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v23 = select i1 %121, i64 35, i64 17
  %125 = add i64 %108, %.v23
  store i64 %125, i64* %3, align 8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %127 = bitcast %union.VectorReg* %126 to i8*
  br i1 %121, label %block_.L_4291cb, label %block_4291b9

block_4291b9:                                     ; preds = %block_42919b
  %128 = add i64 %125, ptrtoint (%G_0xb9f6b__rip__type* @G_0xb9f6b__rip_ to i64)
  %129 = add i64 %125, 8
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = bitcast %union.VectorReg* %126 to i32*
  store i32 %131, i32* %132, align 1
  %133 = getelementptr inbounds i8, i8* %127, i64 4
  %134 = bitcast i8* %133 to float*
  store float 0.000000e+00, float* %134, align 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %136 = bitcast i64* %135 to float*
  store float 0.000000e+00, float* %136, align 1
  %137 = getelementptr inbounds i8, i8* %127, i64 12
  %138 = bitcast i8* %137 to float*
  store float 0.000000e+00, float* %138, align 1
  %139 = add i64 %106, -40
  %140 = add i64 %125, 13
  store i64 %140, i64* %3, align 8
  %141 = bitcast %union.VectorReg* %126 to <2 x float>*
  %142 = load <2 x float>, <2 x float>* %141, align 1
  %143 = extractelement <2 x float> %142, i32 0
  %144 = inttoptr i64 %139 to float*
  store float %143, float* %144, align 4
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 18
  store i64 %146, i64* %3, align 8
  br label %block_.L_4291d8

block_.L_4291cb:                                  ; preds = %block_42919b
  %147 = add i64 %125, ptrtoint (%G_0xb9f55__rip__type* @G_0xb9f55__rip_ to i64)
  %148 = add i64 %125, 8
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = bitcast %union.VectorReg* %126 to i32*
  store i32 %150, i32* %151, align 1
  %152 = getelementptr inbounds i8, i8* %127, i64 4
  %153 = bitcast i8* %152 to float*
  store float 0.000000e+00, float* %153, align 1
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %155 = bitcast i64* %154 to float*
  store float 0.000000e+00, float* %155, align 1
  %156 = getelementptr inbounds i8, i8* %127, i64 12
  %157 = bitcast i8* %156 to float*
  store float 0.000000e+00, float* %157, align 1
  %158 = add i64 %106, -40
  %159 = add i64 %125, 13
  store i64 %159, i64* %3, align 8
  %160 = bitcast %union.VectorReg* %126 to <2 x float>*
  %161 = load <2 x float>, <2 x float>* %160, align 1
  %162 = extractelement <2 x float> %161, i32 0
  %163 = inttoptr i64 %158 to float*
  store float %162, float* %163, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4291d8

block_.L_4291d8:                                  ; preds = %block_.L_4291cb, %block_4291b9
  %164 = phi i64 [ %.pre, %block_.L_4291cb ], [ %146, %block_4291b9 ]
  %165 = add i64 %164, 72
  br label %block_.L_429220

block_.L_4291dd:                                  ; preds = %entry
  %166 = add i64 %95, 4
  store i64 %166, i64* %3, align 8
  %167 = load i64, i64* %68, align 8
  store i64 %167, i64* %RAX.i396, align 8
  %168 = add i64 %167, 34220
  %169 = add i64 %95, 14
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  store i32 0, i32* %170, align 4
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RAX.i396, align 8
  %177 = add i64 %176, 31012
  %178 = add i64 %173, 11
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  store i8 0, i8* %14, align 1
  %181 = and i32 %180, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %186 = icmp eq i32 %180, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %30, align 1
  %188 = lshr i32 %180, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v30 = select i1 %186, i64 35, i64 17
  %190 = add i64 %173, %.v30
  store i64 %190, i64* %3, align 8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %192 = bitcast %union.VectorReg* %191 to i8*
  br i1 %186, label %block_.L_42920e, label %block_4291fc

block_4291fc:                                     ; preds = %block_.L_4291dd
  %193 = add i64 %190, ptrtoint (%G_0xb9f20__rip__type* @G_0xb9f20__rip_ to i64)
  %194 = add i64 %190, 8
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = bitcast %union.VectorReg* %191 to i32*
  store i32 %196, i32* %197, align 1
  %198 = getelementptr inbounds i8, i8* %192, i64 4
  %199 = bitcast i8* %198 to float*
  store float 0.000000e+00, float* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %201 = bitcast i64* %200 to float*
  store float 0.000000e+00, float* %201, align 1
  %202 = getelementptr inbounds i8, i8* %192, i64 12
  %203 = bitcast i8* %202 to float*
  store float 0.000000e+00, float* %203, align 1
  %204 = add i64 %171, -40
  %205 = add i64 %190, 13
  store i64 %205, i64* %3, align 8
  %206 = bitcast %union.VectorReg* %191 to <2 x float>*
  %207 = load <2 x float>, <2 x float>* %206, align 1
  %208 = extractelement <2 x float> %207, i32 0
  %209 = inttoptr i64 %204 to float*
  store float %208, float* %209, align 4
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 18
  store i64 %211, i64* %3, align 8
  br label %block_.L_42921b

block_.L_42920e:                                  ; preds = %block_.L_4291dd
  %212 = add i64 %190, ptrtoint (%G_0xb9f0a__rip__type* @G_0xb9f0a__rip_ to i64)
  %213 = add i64 %190, 8
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = bitcast %union.VectorReg* %191 to i32*
  store i32 %215, i32* %216, align 1
  %217 = getelementptr inbounds i8, i8* %192, i64 4
  %218 = bitcast i8* %217 to float*
  store float 0.000000e+00, float* %218, align 1
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %220 = bitcast i64* %219 to float*
  store float 0.000000e+00, float* %220, align 1
  %221 = getelementptr inbounds i8, i8* %192, i64 12
  %222 = bitcast i8* %221 to float*
  store float 0.000000e+00, float* %222, align 1
  %223 = add i64 %171, -40
  %224 = add i64 %190, 13
  store i64 %224, i64* %3, align 8
  %225 = bitcast %union.VectorReg* %191 to <2 x float>*
  %226 = load <2 x float>, <2 x float>* %225, align 1
  %227 = extractelement <2 x float> %226, i32 0
  %228 = inttoptr i64 %223 to float*
  store float %227, float* %228, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_42921b

block_.L_42921b:                                  ; preds = %block_.L_42920e, %block_4291fc
  %229 = phi i64 [ %.pre12, %block_.L_42920e ], [ %211, %block_4291fc ]
  %230 = add i64 %229, 5
  store i64 %230, i64* %3, align 8
  br label %block_.L_429220

block_.L_429220:                                  ; preds = %block_.L_42921b, %block_.L_4291d8
  %storemerge = phi i64 [ %165, %block_.L_4291d8 ], [ %230, %block_.L_42921b ]
  store i64 400, i64* %RAX.i396, align 8
  store i64 400, i64* %RDX.i388, align 8
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -8
  %233 = add i64 %storemerge, 11
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RCX.i385, align 8
  %236 = add i64 %235, 35668
  %237 = add i64 %storemerge, 21
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 0, i32* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -8
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RDI.i393, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %245 = add i64 %239, -24
  %246 = add i64 %241, 8
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RSI.i, align 8
  %249 = add i64 %241, -164165
  %250 = add i64 %241, 13
  %251 = load i64, i64* %6, align 8
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %6, align 8
  store i64 %249, i64* %3, align 8
  %254 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  %255 = load i64, i64* %3, align 8
  %256 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %257 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %258 = sub i32 %256, %257
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX.i396, align 8
  %260 = icmp ult i32 %256, %257
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = and i32 %258, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i32 %257, %256
  %268 = xor i32 %267, %258
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %27, align 1
  %272 = icmp eq i32 %258, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %30, align 1
  %274 = lshr i32 %258, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %33, align 1
  %276 = lshr i32 %256, 31
  %277 = lshr i32 %257, 31
  %278 = xor i32 %277, %276
  %279 = xor i32 %274, %276
  %280 = add nuw nsw i32 %279, %278
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %39, align 1
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -8
  %285 = add i64 %255, 18
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RCX.i385, align 8
  %288 = add i64 %287, 34216
  %289 = add i64 %255, 24
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %258, i32* %290, align 4
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -36
  %293 = load i64, i64* %3, align 8
  %294 = add i64 %293, 7
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %292 to i32*
  store i32 21, i32* %295, align 4
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %297 = bitcast [32 x %union.VectorReg]* %296 to i8*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %299 = bitcast [32 x %union.VectorReg]* %296 to i32*
  %300 = getelementptr inbounds i8, i8* %297, i64 4
  %301 = getelementptr inbounds i8, i8* %297, i64 12
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %303 = bitcast %union.VectorReg* %302 to i8*
  %304 = bitcast %union.VectorReg* %302 to i32*
  %305 = getelementptr inbounds i8, i8* %303, i64 4
  %306 = bitcast i8* %305 to float*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %308 = bitcast i64* %307 to float*
  %309 = getelementptr inbounds i8, i8* %303, i64 12
  %310 = bitcast i8* %309 to float*
  %311 = bitcast [32 x %union.VectorReg]* %296 to <2 x float>*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %313 = bitcast %union.VectorReg* %312 to i8*
  %314 = bitcast %union.VectorReg* %312 to i32*
  %315 = getelementptr inbounds i8, i8* %313, i64 4
  %316 = bitcast i8* %315 to float*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %318 = bitcast i64* %317 to float*
  %319 = getelementptr inbounds i8, i8* %313, i64 12
  %320 = bitcast i8* %319 to float*
  %321 = bitcast %union.VectorReg* %312 to <2 x float>*
  %322 = bitcast %union.VectorReg* %302 to <2 x float>*
  %323 = bitcast i8* %300 to float*
  %324 = bitcast i64* %298 to float*
  %325 = bitcast i8* %301 to float*
  %.pre13 = load i64, i64* %3, align 8
  %326 = bitcast [32 x %union.VectorReg]* %296 to <4 x i32>*
  %327 = bitcast [32 x %union.VectorReg]* %296 to <4 x i32>*
  %328 = bitcast [32 x %union.VectorReg]* %296 to <4 x i32>*
  %329 = bitcast [32 x %union.VectorReg]* %296 to <4 x i32>*
  br label %block_.L_429261

block_.L_429261:                                  ; preds = %block_.L_4294a1, %block_.L_429220
  %330 = phi i64 [ %871, %block_.L_4294a1 ], [ %.pre13, %block_.L_429220 ]
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -36
  %333 = add i64 %330, 7
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, -400
  %337 = icmp ult i32 %335, 400
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %14, align 1
  %339 = and i32 %336, 255
  %340 = tail call i32 @llvm.ctpop.i32(i32 %339)
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  store i8 %343, i8* %21, align 1
  %344 = xor i32 %335, 16
  %345 = xor i32 %344, %336
  %346 = lshr i32 %345, 4
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  store i8 %348, i8* %27, align 1
  %349 = icmp eq i32 %336, 0
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %30, align 1
  %351 = lshr i32 %336, 31
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %33, align 1
  %353 = lshr i32 %335, 31
  %354 = xor i32 %351, %353
  %355 = add nuw nsw i32 %354, %353
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %39, align 1
  %358 = icmp ne i8 %352, 0
  %359 = xor i1 %358, %356
  %.v24 = select i1 %359, i64 13, i64 595
  %360 = add i64 %330, %.v24
  store i64 %360, i64* %3, align 8
  br i1 %359, label %block_42926e, label %block_.L_4294b4

block_42926e:                                     ; preds = %block_.L_429261
  %361 = add i64 %360, 4
  store i64 %361, i64* %3, align 8
  %362 = load i32, i32* %334, align 4
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %RAX.i396, align 8
  %364 = add nsw i64 %363, 12099168
  %365 = add i64 %360, 12
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i8*
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i64
  store i64 %368, i64* %RCX.i385, align 8
  %369 = zext i8 %367 to i32
  %370 = add nsw i32 %369, -3
  %371 = icmp ult i8 %367, 3
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %14, align 1
  %373 = and i32 %370, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  %378 = xor i32 %370, %369
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = icmp eq i32 %370, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %30, align 1
  %384 = lshr i32 %370, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v25 = select i1 %382, i64 563, i64 21
  %386 = add i64 %360, %.v25
  store i64 %386, i64* %3, align 8
  br i1 %382, label %block_.L_4294a1, label %block_429283

block_429283:                                     ; preds = %block_42926e
  store <4 x i32> zeroinitializer, <4 x i32>* %326, align 1
  %387 = add i64 %386, add (i64 ptrtoint (%G_0xb9e7e__rip__type* @G_0xb9e7e__rip_ to i64), i64 3)
  %388 = add i64 %386, 11
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %304, align 1
  store float 0.000000e+00, float* %306, align 1
  store float 0.000000e+00, float* %308, align 1
  store float 0.000000e+00, float* %310, align 1
  %391 = add i64 %331, -8
  %392 = add i64 %386, 15
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RAX.i396, align 8
  %395 = add i64 %386, 19
  store i64 %395, i64* %3, align 8
  %396 = load i32, i32* %334, align 4
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %RCX.i385, align 8
  %398 = shl nsw i64 %397, 2
  %399 = add i64 %394, 400
  %400 = add i64 %399, %398
  %401 = add i64 %386, 28
  store i64 %401, i64* %3, align 8
  %402 = load <2 x float>, <2 x float>* %311, align 1
  %403 = extractelement <2 x float> %402, i32 0
  %404 = inttoptr i64 %400 to float*
  store float %403, float* %404, align 4
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -8
  %407 = load i64, i64* %3, align 8
  %408 = add i64 %407, 4
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %RAX.i396, align 8
  %411 = add i64 %405, -36
  %412 = add i64 %407, 8
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %RCX.i385, align 8
  %416 = shl nsw i64 %415, 2
  %417 = add i64 %410, 2000
  %418 = add i64 %417, %416
  %419 = add i64 %407, 17
  store i64 %419, i64* %3, align 8
  %420 = load <2 x float>, <2 x float>* %311, align 1
  %421 = extractelement <2 x float> %420, i32 0
  %422 = inttoptr i64 %418 to float*
  store float %421, float* %422, align 4
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -40
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 5
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %314, align 1
  store float 0.000000e+00, float* %316, align 1
  store float 0.000000e+00, float* %318, align 1
  store float 0.000000e+00, float* %320, align 1
  %429 = add i64 %423, -8
  %430 = add i64 %425, 9
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RAX.i396, align 8
  %433 = add i64 %423, -36
  %434 = add i64 %425, 13
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %RCX.i385, align 8
  %438 = shl nsw i64 %437, 2
  %439 = add i64 %432, 6800
  %440 = add i64 %439, %438
  %441 = add i64 %425, 22
  store i64 %441, i64* %3, align 8
  %442 = load <2 x float>, <2 x float>* %321, align 1
  %443 = extractelement <2 x float> %442, i32 0
  %444 = inttoptr i64 %440 to float*
  store float %443, float* %444, align 4
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -40
  %447 = load i64, i64* %3, align 8
  %448 = add i64 %447, 5
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %446 to i32*
  %450 = load i32, i32* %449, align 4
  store i32 %450, i32* %314, align 1
  store float 0.000000e+00, float* %316, align 1
  store float 0.000000e+00, float* %318, align 1
  store float 0.000000e+00, float* %320, align 1
  %451 = add i64 %445, -8
  %452 = add i64 %447, 9
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RAX.i396, align 8
  %455 = add i64 %445, -36
  %456 = add i64 %447, 13
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX.i385, align 8
  %460 = shl nsw i64 %459, 2
  %461 = add i64 %454, 8400
  %462 = add i64 %461, %460
  %463 = add i64 %447, 22
  store i64 %463, i64* %3, align 8
  %464 = load <2 x float>, <2 x float>* %321, align 1
  %465 = extractelement <2 x float> %464, i32 0
  %466 = inttoptr i64 %462 to float*
  store float %465, float* %466, align 4
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -8
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, 4
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RAX.i396, align 8
  %473 = add i64 %467, -36
  %474 = add i64 %469, 8
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  store i64 %477, i64* %RCX.i385, align 8
  %478 = shl nsw i64 %477, 2
  %479 = add i64 %472, 10000
  %480 = add i64 %479, %478
  %481 = add i64 %469, 17
  store i64 %481, i64* %3, align 8
  %482 = load <2 x float>, <2 x float>* %322, align 1
  %483 = extractelement <2 x float> %482, i32 0
  %484 = inttoptr i64 %480 to float*
  store float %483, float* %484, align 4
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -8
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, 4
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %486 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RAX.i396, align 8
  %491 = add i64 %485, -36
  %492 = add i64 %487, 8
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %RCX.i385, align 8
  %496 = shl nsw i64 %495, 2
  %497 = add i64 %490, 11600
  %498 = add i64 %497, %496
  %499 = add i64 %487, 17
  store i64 %499, i64* %3, align 8
  %500 = load <2 x float>, <2 x float>* %322, align 1
  %501 = extractelement <2 x float> %500, i32 0
  %502 = inttoptr i64 %498 to float*
  store float %501, float* %502, align 4
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -8
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 4
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RAX.i396, align 8
  %509 = add i64 %503, -36
  %510 = add i64 %505, 8
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i385, align 8
  %514 = shl nsw i64 %513, 2
  %515 = add i64 %508, 3600
  %516 = add i64 %515, %514
  %517 = add i64 %505, 17
  store i64 %517, i64* %3, align 8
  %518 = load <2 x float>, <2 x float>* %311, align 1
  %519 = extractelement <2 x float> %518, i32 0
  %520 = inttoptr i64 %516 to float*
  store float %519, float* %520, align 4
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -8
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 4
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RAX.i396, align 8
  %527 = add i64 %521, -36
  %528 = add i64 %523, 8
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX.i385, align 8
  %532 = shl nsw i64 %531, 2
  %533 = add i64 %526, 5200
  %534 = add i64 %533, %532
  %535 = add i64 %523, 17
  store i64 %535, i64* %3, align 8
  %536 = load <2 x float>, <2 x float>* %311, align 1
  %537 = extractelement <2 x float> %536, i32 0
  %538 = inttoptr i64 %534 to float*
  store float %537, float* %538, align 4
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -8
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 4
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX.i396, align 8
  %545 = add i64 %539, -36
  %546 = add i64 %541, 8
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  store i64 %549, i64* %RCX.i385, align 8
  %550 = shl nsw i64 %549, 2
  %551 = add i64 %544, 32616
  %552 = add i64 %551, %550
  %553 = add i64 %541, 19
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  store i32 0, i32* %554, align 4
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -36
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 4
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  store i64 %561, i64* %RAX.i396, align 8
  %562 = add nsw i64 %561, 12099168
  %563 = add i64 %557, 12
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i8*
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i64
  store i64 %566, i64* %RDX.i388, align 8
  %567 = zext i8 %565 to i32
  %568 = add nsw i32 %567, -1
  %569 = icmp eq i8 %565, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %14, align 1
  %571 = and i32 %568, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %21, align 1
  %576 = xor i32 %568, %567
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %27, align 1
  %580 = icmp eq i32 %568, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %30, align 1
  %582 = lshr i32 %568, 31
  %583 = trunc i32 %582 to i8
  store i8 %583, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v26 = select i1 %580, i64 42, i64 21
  %584 = add i64 %557, %.v26
  store i64 %584, i64* %3, align 8
  br i1 %580, label %block_.L_42935d, label %block_429348

block_429348:                                     ; preds = %block_429283
  %585 = add i64 %584, 4
  store i64 %585, i64* %3, align 8
  %586 = load i32, i32* %559, align 4
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %RAX.i396, align 8
  %588 = add nsw i64 %587, 12099168
  %589 = add i64 %584, 12
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i8*
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i64
  store i64 %592, i64* %RCX.i385, align 8
  %593 = zext i8 %591 to i32
  %594 = add nsw i32 %593, -2
  %595 = icmp ult i8 %591, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %14, align 1
  %597 = and i32 %594, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %21, align 1
  %602 = xor i32 %594, %593
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %27, align 1
  %606 = icmp eq i32 %594, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %30, align 1
  %608 = lshr i32 %594, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v27 = select i1 %606, i64 21, i64 328
  %610 = add i64 %584, %.v27
  store i64 %610, i64* %3, align 8
  br i1 %606, label %block_.L_42935d, label %block_.L_429490

block_.L_42935d:                                  ; preds = %block_429348, %block_429283
  %611 = phi i64 [ %610, %block_429348 ], [ %584, %block_429283 ]
  %612 = add i64 %555, -24
  %613 = add i64 %611, 4
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RAX.i396, align 8
  %616 = add i64 %611, 8
  store i64 %616, i64* %3, align 8
  %617 = load i32, i32* %559, align 4
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RCX.i385, align 8
  %619 = add i64 %615, %618
  %620 = add i64 %611, 12
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i8*
  %622 = load i8, i8* %621, align 1
  store i8 0, i8* %14, align 1
  %623 = zext i8 %622 to i32
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %628 = icmp eq i8 %622, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %30, align 1
  %630 = lshr i8 %622, 7
  store i8 %630, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %628, i64 18, i64 89
  %631 = add i64 %611, %.v
  %632 = add i64 %631, 4
  store i64 %632, i64* %3, align 8
  %633 = load i32, i32* %559, align 4
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RAX.i396, align 8
  %635 = add nsw i64 %634, 12099168
  %636 = add i64 %631, 12
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i8*
  %638 = load i8, i8* %637, align 1
  %639 = zext i8 %638 to i64
  store i64 %639, i64* %RCX.i385, align 8
  %640 = zext i8 %638 to i32
  %641 = add i64 %631, 15
  store i64 %641, i64* %3, align 8
  %642 = add nsw i32 %640, -1
  %643 = icmp eq i8 %638, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %14, align 1
  %645 = and i32 %642, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  %650 = xor i32 %642, %640
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %27, align 1
  %654 = icmp eq i32 %642, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %30, align 1
  %656 = lshr i32 %642, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br i1 %628, label %block_42936f, label %block_.L_4293b6

block_42936f:                                     ; preds = %block_.L_42935d
  %.v29 = select i1 %654, i64 21, i64 46
  %658 = add i64 %631, %.v29
  store <4 x i32> zeroinitializer, <4 x i32>* %327, align 1
  %659 = add i64 %555, -8
  %660 = add i64 %658, 7
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RAX.i396, align 8
  %663 = add i64 %658, 11
  store i64 %663, i64* %3, align 8
  %664 = load i32, i32* %559, align 4
  %665 = sext i32 %664 to i64
  store i64 %665, i64* %RCX.i385, align 8
  %666 = shl nsw i64 %665, 2
  br i1 %654, label %block_429384, label %block_.L_42939d

block_429384:                                     ; preds = %block_42936f
  %667 = add i64 %662, 10000
  %668 = add i64 %667, %666
  %669 = add i64 %658, 20
  store i64 %669, i64* %3, align 8
  %670 = load <2 x float>, <2 x float>* %311, align 1
  %671 = extractelement <2 x float> %670, i32 0
  %672 = inttoptr i64 %668 to float*
  store float %671, float* %672, align 4
  %673 = load i64, i64* %3, align 8
  %674 = add i64 %673, 25
  store i64 %674, i64* %3, align 8
  br label %block_.L_4293b1

block_.L_42939d:                                  ; preds = %block_42936f
  %675 = add i64 %662, 11600
  %676 = add i64 %675, %666
  %677 = add i64 %658, 20
  store i64 %677, i64* %3, align 8
  %678 = load <2 x float>, <2 x float>* %311, align 1
  %679 = extractelement <2 x float> %678, i32 0
  %680 = inttoptr i64 %676 to float*
  store float %679, float* %680, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_4293b1

block_.L_4293b1:                                  ; preds = %block_.L_42939d, %block_429384
  %681 = phi i64 [ %.pre14, %block_.L_42939d ], [ %674, %block_429384 ]
  %682 = add i64 %681, 218
  br label %block_.L_42948b

block_.L_4293b6:                                  ; preds = %block_.L_42935d
  %.v21 = select i1 %654, i64 21, i64 117
  %683 = add i64 %631, %.v21
  %684 = add i64 %555, -32
  %685 = add i64 %683, 5
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i8 0, i8* %14, align 1
  %688 = trunc i64 %687 to i32
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %694 = icmp eq i64 %687, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %30, align 1
  %696 = lshr i64 %687, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v28 = select i1 %694, i64 46, i64 11
  %698 = add i64 %683, %.v28
  store i64 %698, i64* %3, align 8
  br i1 %654, label %block_4293cb, label %block_.L_42942b

block_4293cb:                                     ; preds = %block_.L_4293b6
  br i1 %694, label %block_.L_4293f9, label %block_4293d6

block_4293d6:                                     ; preds = %block_4293cb
  %699 = add i64 %698, 4
  store i64 %699, i64* %3, align 8
  %700 = load i64, i64* %686, align 8
  store i64 %700, i64* %RAX.i396, align 8
  %701 = add i64 %698, 8
  store i64 %701, i64* %3, align 8
  %702 = load i32, i32* %559, align 4
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RCX.i385, align 8
  %704 = shl nsw i64 %703, 2
  %705 = add i64 %704, %700
  %706 = add i64 %698, 13
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  store i32 %708, i32* %299, align 1
  store float 0.000000e+00, float* %323, align 1
  store float 0.000000e+00, float* %324, align 1
  store float 0.000000e+00, float* %325, align 1
  %709 = add i64 %555, -8
  %710 = add i64 %698, 17
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %RAX.i396, align 8
  %713 = add i64 %698, 21
  store i64 %713, i64* %3, align 8
  %714 = load i32, i32* %559, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RCX.i385, align 8
  %716 = shl nsw i64 %715, 2
  %717 = add i64 %712, 3600
  %718 = add i64 %717, %716
  %719 = add i64 %698, 30
  store i64 %719, i64* %3, align 8
  %720 = load <2 x float>, <2 x float>* %311, align 1
  %721 = extractelement <2 x float> %720, i32 0
  %722 = inttoptr i64 %718 to float*
  store float %721, float* %722, align 4
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, 30
  store i64 %724, i64* %3, align 8
  br label %block_.L_429412

block_.L_4293f9:                                  ; preds = %block_4293cb
  %725 = add i64 %698, ptrtoint (%G_0xb9d2f__rip__type* @G_0xb9d2f__rip_ to i64)
  %726 = add i64 %698, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  store i32 %728, i32* %299, align 1
  store float 0.000000e+00, float* %323, align 1
  store float 0.000000e+00, float* %324, align 1
  store float 0.000000e+00, float* %325, align 1
  %729 = add i64 %555, -8
  %730 = add i64 %698, 12
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RAX.i396, align 8
  %733 = add i64 %698, 16
  store i64 %733, i64* %3, align 8
  %734 = load i32, i32* %559, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX.i385, align 8
  %736 = shl nsw i64 %735, 2
  %737 = add i64 %732, 3600
  %738 = add i64 %737, %736
  %739 = add i64 %698, 25
  store i64 %739, i64* %3, align 8
  %740 = load <2 x float>, <2 x float>* %311, align 1
  %741 = extractelement <2 x float> %740, i32 0
  %742 = inttoptr i64 %738 to float*
  store float %741, float* %742, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_429412

block_.L_429412:                                  ; preds = %block_.L_4293f9, %block_4293d6
  %743 = phi i64 [ %.pre15, %block_.L_4293f9 ], [ %724, %block_4293d6 ]
  store <4 x i32> zeroinitializer, <4 x i32>* %328, align 1
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -8
  %746 = add i64 %743, 7
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RAX.i396, align 8
  %749 = add i64 %744, -36
  %750 = add i64 %743, 11
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RCX.i385, align 8
  %754 = shl nsw i64 %753, 2
  %755 = add i64 %748, 11600
  %756 = add i64 %755, %754
  %757 = add i64 %743, 20
  store i64 %757, i64* %3, align 8
  %758 = load <2 x float>, <2 x float>* %311, align 1
  %759 = extractelement <2 x float> %758, i32 0
  %760 = inttoptr i64 %756 to float*
  store float %759, float* %760, align 4
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 96
  store i64 %762, i64* %3, align 8
  br label %block_.L_429486

block_.L_42942b:                                  ; preds = %block_.L_4293b6
  br i1 %694, label %block_.L_429459, label %block_429436

block_429436:                                     ; preds = %block_.L_42942b
  %763 = add i64 %698, 4
  store i64 %763, i64* %3, align 8
  %764 = load i64, i64* %686, align 8
  store i64 %764, i64* %RAX.i396, align 8
  %765 = add i64 %698, 8
  store i64 %765, i64* %3, align 8
  %766 = load i32, i32* %559, align 4
  %767 = sext i32 %766 to i64
  store i64 %767, i64* %RCX.i385, align 8
  %768 = shl nsw i64 %767, 2
  %769 = add i64 %768, %764
  %770 = add i64 %698, 13
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  store i32 %772, i32* %299, align 1
  store float 0.000000e+00, float* %323, align 1
  store float 0.000000e+00, float* %324, align 1
  store float 0.000000e+00, float* %325, align 1
  %773 = add i64 %555, -8
  %774 = add i64 %698, 17
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RAX.i396, align 8
  %777 = add i64 %698, 21
  store i64 %777, i64* %3, align 8
  %778 = load i32, i32* %559, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i385, align 8
  %780 = shl nsw i64 %779, 2
  %781 = add i64 %776, 5200
  %782 = add i64 %781, %780
  %783 = add i64 %698, 30
  store i64 %783, i64* %3, align 8
  %784 = load <2 x float>, <2 x float>* %311, align 1
  %785 = extractelement <2 x float> %784, i32 0
  %786 = inttoptr i64 %782 to float*
  store float %785, float* %786, align 4
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, 30
  store i64 %788, i64* %3, align 8
  br label %block_.L_429472

block_.L_429459:                                  ; preds = %block_.L_42942b
  %789 = add i64 %698, ptrtoint (%G_0xb9ccf__rip__type* @G_0xb9ccf__rip_ to i64)
  %790 = add i64 %698, 8
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  store i32 %792, i32* %299, align 1
  store float 0.000000e+00, float* %323, align 1
  store float 0.000000e+00, float* %324, align 1
  store float 0.000000e+00, float* %325, align 1
  %793 = add i64 %555, -8
  %794 = add i64 %698, 12
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RAX.i396, align 8
  %797 = add i64 %698, 16
  store i64 %797, i64* %3, align 8
  %798 = load i32, i32* %559, align 4
  %799 = sext i32 %798 to i64
  store i64 %799, i64* %RCX.i385, align 8
  %800 = shl nsw i64 %799, 2
  %801 = add i64 %796, 5200
  %802 = add i64 %801, %800
  %803 = add i64 %698, 25
  store i64 %803, i64* %3, align 8
  %804 = load <2 x float>, <2 x float>* %311, align 1
  %805 = extractelement <2 x float> %804, i32 0
  %806 = inttoptr i64 %802 to float*
  store float %805, float* %806, align 4
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_429472

block_.L_429472:                                  ; preds = %block_.L_429459, %block_429436
  %807 = phi i64 [ %.pre16, %block_.L_429459 ], [ %788, %block_429436 ]
  store <4 x i32> zeroinitializer, <4 x i32>* %329, align 1
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -8
  %810 = add i64 %807, 7
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %RAX.i396, align 8
  %813 = add i64 %808, -36
  %814 = add i64 %807, 11
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sext i32 %816 to i64
  store i64 %817, i64* %RCX.i385, align 8
  %818 = shl nsw i64 %817, 2
  %819 = add i64 %812, 10000
  %820 = add i64 %819, %818
  %821 = add i64 %807, 20
  store i64 %821, i64* %3, align 8
  %822 = load <2 x float>, <2 x float>* %311, align 1
  %823 = extractelement <2 x float> %822, i32 0
  %824 = inttoptr i64 %820 to float*
  store float %823, float* %824, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_429486

block_.L_429486:                                  ; preds = %block_.L_429472, %block_.L_429412
  %825 = phi i64 [ %.pre17, %block_.L_429472 ], [ %762, %block_.L_429412 ]
  %826 = add i64 %825, 5
  store i64 %826, i64* %3, align 8
  br label %block_.L_42948b

block_.L_42948b:                                  ; preds = %block_.L_429486, %block_.L_4293b1
  %storemerge11 = phi i64 [ %682, %block_.L_4293b1 ], [ %826, %block_.L_429486 ]
  %827 = add i64 %storemerge11, 17
  store i64 %827, i64* %3, align 8
  br label %block_.L_42949c

block_.L_429490:                                  ; preds = %block_429348
  %828 = add i64 %555, -8
  %829 = add i64 %610, 4
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i396, align 8
  %832 = add i64 %610, 8
  store i64 %832, i64* %3, align 8
  %833 = load i32, i32* %559, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX.i385, align 8
  %835 = add i64 %831, %834
  %836 = add i64 %610, 12
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i8*
  store i8 0, i8* %837, align 1
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_42949c

block_.L_42949c:                                  ; preds = %block_.L_429490, %block_.L_42948b
  %838 = phi i64 [ %.pre18, %block_.L_429490 ], [ %827, %block_.L_42948b ]
  %839 = add i64 %838, 5
  store i64 %839, i64* %3, align 8
  %.pre19 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4294a1

block_.L_4294a1:                                  ; preds = %block_.L_42949c, %block_42926e
  %840 = phi i64 [ %.pre19, %block_.L_42949c ], [ %331, %block_42926e ]
  %841 = phi i64 [ %839, %block_.L_42949c ], [ %386, %block_42926e ]
  %842 = add i64 %840, -36
  %843 = add i64 %841, 8
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, 1
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RAX.i396, align 8
  %848 = icmp eq i32 %845, -1
  %849 = icmp eq i32 %846, 0
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %14, align 1
  %852 = and i32 %846, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %21, align 1
  %857 = xor i32 %846, %845
  %858 = lshr i32 %857, 4
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  store i8 %860, i8* %27, align 1
  %861 = zext i1 %849 to i8
  store i8 %861, i8* %30, align 1
  %862 = lshr i32 %846, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %33, align 1
  %864 = lshr i32 %845, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %862
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %39, align 1
  %869 = add i64 %841, 14
  store i64 %869, i64* %3, align 8
  store i32 %846, i32* %844, align 4
  %870 = load i64, i64* %3, align 8
  %871 = add i64 %870, -590
  store i64 %871, i64* %3, align 8
  br label %block_.L_429261

block_.L_4294b4:                                  ; preds = %block_.L_429261
  %872 = load i64, i64* %6, align 8
  %873 = add i64 %872, 48
  store i64 %873, i64* %6, align 8
  %874 = icmp ugt i64 %872, -49
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = trunc i64 %873 to i32
  %877 = and i32 %876, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i64 %872, 16
  %883 = xor i64 %882, %873
  %884 = lshr i64 %883, 4
  %885 = trunc i64 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %27, align 1
  %887 = icmp eq i64 %873, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %30, align 1
  %889 = lshr i64 %873, 63
  %890 = trunc i64 %889 to i8
  store i8 %890, i8* %33, align 1
  %891 = lshr i64 %872, 63
  %892 = xor i64 %889, %891
  %893 = add nuw nsw i64 %892, %889
  %894 = icmp eq i64 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %39, align 1
  %896 = add i64 %360, 5
  store i64 %896, i64* %3, align 8
  %897 = add i64 %872, 56
  %898 = inttoptr i64 %873 to i64*
  %899 = load i64, i64* %898, align 8
  store i64 %899, i64* %RBP.i, align 8
  store i64 %897, i64* %6, align 8
  %900 = add i64 %360, 6
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %897 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %3, align 8
  %903 = add i64 %872, 64
  store i64 %903, i64* %6, align 8
  ret %struct.Memory* %254
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movq__0xab3948___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %5
  %11 = icmp ult i64 %9, %5
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %5
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %9, 63
  %34 = lshr i64 %5, 63
  %35 = xor i64 %33, %34
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4291dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x85ac__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 34220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x7924__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 31012
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
define %struct.Memory* @routine_je_.L_4291cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb9f6b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9f6b__rip__type* @G_0xb9f6b__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_jmpq_.L_4291d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb9f55__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9f55__rip__type* @G_0xb9f55__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429220(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x85ac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 34220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x7924__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 31012
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
define %struct.Memory* @routine_je_.L_42920e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb9f20__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9f20__rip__type* @G_0xb9f20__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42921b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb9f0a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9f0a__rip__type* @G_0xb9f0a__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x190___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 400, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8b54__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 35668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8c040___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xb38cb0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0x85a8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 34216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_4294b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4294a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb9e7e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9e7e__rip__type* @G_0xb9e7e__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
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
define %struct.Memory* @routine_movss__xmm0__0x190__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 400
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x7d0__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 2000
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_movss__xmm2__0x1a90__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 6800
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__0x20d0__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 8400
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x2710__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 10000
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x2d50__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 11600
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xe10__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 3600
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x1450__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 5200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x7f68__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 32616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42935d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_429490(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4293b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42939d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x2710__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 10000
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4293b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x2d50__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 11600
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42948b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42942b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4293f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429412(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb9d2f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9d2f__rip__type* @G_0xb9d2f__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429486(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429459(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429472(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb9ccf__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9ccf__rip__type* @G_0xb9ccf__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42949c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4294a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4294a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429261(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
