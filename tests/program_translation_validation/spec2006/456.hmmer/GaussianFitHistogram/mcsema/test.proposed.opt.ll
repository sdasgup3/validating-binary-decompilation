; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x39250__rip__type = type <{ [8 x i8] }>
%G_0x3934a__rip__type = type <{ [8 x i8] }>
%G_0x39458__rip__type = type <{ [8 x i8] }>
%G_0x39460__rip__type = type <{ [8 x i8] }>
%G_0x39470__rip__type = type <{ [8 x i8] }>
%G_0x394af__rip__type = type <{ [8 x i8] }>
%G_0x394b0__rip__type = type <{ [8 x i8] }>
%G_0x395ff__rip__type = type <{ [8 x i8] }>
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
@G_0x39250__rip_ = global %G_0x39250__rip__type zeroinitializer
@G_0x3934a__rip_ = global %G_0x3934a__rip__type zeroinitializer
@G_0x39458__rip_ = global %G_0x39458__rip__type zeroinitializer
@G_0x39460__rip_ = global %G_0x39460__rip__type zeroinitializer
@G_0x39470__rip_ = global %G_0x39470__rip__type zeroinitializer
@G_0x394af__rip_ = global %G_0x394af__rip__type zeroinitializer
@G_0x394b0__rip_ = global %G_0x394b0__rip__type zeroinitializer
@G_0x395ff__rip_ = global %G_0x395ff__rip__type zeroinitializer
@G__0x456e97 = global %G__0x456e97_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445080.IncompleteGamma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @GaussianFitHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %RDI.i704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i704, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -20
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 5
  store i64 %48, i64* %3, align 8
  %49 = bitcast [32 x %union.VectorReg]* %44 to <2 x float>*
  %50 = load <2 x float>, <2 x float>* %49, align 1
  %51 = extractelement <2 x float> %50, i32 0
  %52 = inttoptr i64 %46 to float*
  store float %51, float* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %RDI.i704, align 8
  %59 = add i64 %55, -10801
  %60 = add i64 %55, 9
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63, align 8
  store i64 %62, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  %call2_41b195 = tail call %struct.Memory* @sub_418760.UnfitHistogram(%struct.State* %0, i64 %59, %struct.Memory* %2)
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -16
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %RDI.i704, align 8
  %70 = add i64 %69, 28
  %71 = add i64 %66, 11
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, -1000
  %75 = icmp ult i32 %73, 1000
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %14, align 1
  %77 = and i32 %74, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %21, align 1
  %82 = xor i32 %74, %73
  %83 = lshr i32 %82, 4
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %27, align 1
  %86 = icmp eq i32 %74, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %30, align 1
  %88 = lshr i32 %74, 31
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %33, align 1
  %90 = lshr i32 %73, 31
  %91 = xor i32 %88, %90
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %39, align 1
  %95 = icmp ne i8 %89, 0
  %96 = xor i1 %95, %93
  %.v = select i1 %96, i64 17, i64 40
  %97 = add i64 %66, %.v
  store i64 %97, i64* %3, align 8
  br i1 %96, label %block_41b1ab, label %block_.L_41b1c2

block_41b1ab:                                     ; preds = %entry
  %RAX.i688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %68, align 8
  store i64 %99, i64* %RAX.i688, align 8
  %100 = add i64 %99, 40
  %101 = add i64 %97, 11
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -4
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 1062
  store i64 %109, i64* %3, align 8
  br label %block_.L_41b5e3

block_.L_41b1c2:                                  ; preds = %entry
  %110 = bitcast [32 x %union.VectorReg]* %44 to i8*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %112 = bitcast [32 x %union.VectorReg]* %44 to i32*
  %113 = getelementptr inbounds i8, i8* %110, i64 4
  %114 = bitcast i8* %113 to i32*
  %115 = bitcast i64* %111 to i32*
  %116 = getelementptr inbounds i8, i8* %110, i64 12
  %117 = bitcast i8* %116 to i32*
  %118 = bitcast [32 x %union.VectorReg]* %44 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %118, align 1
  %119 = add i64 %64, -28
  %120 = add i64 %97, 8
  store i64 %120, i64* %3, align 8
  %121 = load <2 x float>, <2 x float>* %49, align 1
  %122 = extractelement <2 x float> %121, i32 0
  %123 = inttoptr i64 %119 to float*
  store float %122, float* %123, align 4
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -24
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 5
  store i64 %127, i64* %3, align 8
  %128 = load <2 x float>, <2 x float>* %49, align 1
  %129 = extractelement <2 x float> %128, i32 0
  %130 = inttoptr i64 %125 to float*
  store float %129, float* %130, align 4
  %RAX.i671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -16
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 4
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RAX.i671, align 8
  %RCX.i669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %137 = add i64 %136, 20
  %138 = add i64 %133, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RCX.i669, align 8
  %142 = add i64 %131, -36
  %143 = add i64 %133, 10
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  store i32 %140, i32* %144, align 4
  %145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %146 = bitcast i64* %111 to double*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %148 = bitcast %union.VectorReg* %147 to i8*
  %149 = bitcast %union.VectorReg* %147 to <2 x i32>*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %151 = bitcast i64* %150 to <2 x i32>*
  %152 = bitcast %union.VectorReg* %147 to float*
  %153 = getelementptr inbounds i8, i8* %148, i64 4
  %154 = bitcast i8* %153 to i32*
  %155 = bitcast i64* %150 to i32*
  %156 = getelementptr inbounds i8, i8* %148, i64 12
  %157 = bitcast i8* %156 to i32*
  %158 = bitcast %union.VectorReg* %147 to <2 x float>*
  %159 = bitcast %union.VectorReg* %147 to double*
  %160 = bitcast [32 x %union.VectorReg]* %44 to double*
  %161 = bitcast [32 x %union.VectorReg]* %44 to <2 x i32>*
  %162 = bitcast i64* %111 to <2 x i32>*
  %163 = bitcast [32 x %union.VectorReg]* %44 to float*
  %RDX.i627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41b1d9

block_.L_41b1d9:                                  ; preds = %block_41b1e9, %block_.L_41b1c2
  %164 = phi i64 [ %443, %block_41b1e9 ], [ %.pre, %block_.L_41b1c2 ]
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -36
  %167 = add i64 %164, 3
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i671, align 8
  %171 = add i64 %165, -16
  %172 = add i64 %164, 7
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RCX.i669, align 8
  %175 = add i64 %174, 16
  %176 = add i64 %164, 10
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 %169, %178
  %180 = icmp ult i32 %169, %178
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %14, align 1
  %182 = and i32 %179, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %21, align 1
  %187 = xor i32 %178, %169
  %188 = xor i32 %187, %179
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %27, align 1
  %192 = icmp eq i32 %179, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %30, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %33, align 1
  %196 = lshr i32 %169, 31
  %197 = lshr i32 %178, 31
  %198 = xor i32 %197, %196
  %199 = xor i32 %194, %196
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1
  %203 = icmp ne i8 %195, 0
  %204 = xor i1 %203, %201
  %.demorgan = or i1 %192, %204
  %.v34 = select i1 %.demorgan, i64 16, i64 145
  %205 = add i64 %164, %.v34
  store i64 %205, i64* %3, align 8
  br i1 %.demorgan, label %block_41b1e9, label %block_.L_41b26a

block_41b1e9:                                     ; preds = %block_.L_41b1d9
  %206 = add i64 %205, ptrtoint (%G_0x395ff__rip__type* @G_0x395ff__rip_ to i64)
  %207 = add i64 %205, 8
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %145, align 1
  store double 0.000000e+00, double* %146, align 1
  %210 = add i64 %205, 13
  store i64 %210, i64* %3, align 8
  %211 = load <2 x i32>, <2 x i32>* %149, align 1
  %212 = load <2 x i32>, <2 x i32>* %151, align 1
  %213 = load i32, i32* %168, align 4
  %214 = sitofp i32 %213 to float
  store float %214, float* %152, align 1
  %215 = extractelement <2 x i32> %211, i32 1
  store i32 %215, i32* %154, align 1
  %216 = extractelement <2 x i32> %212, i32 0
  store i32 %216, i32* %155, align 1
  %217 = extractelement <2 x i32> %212, i32 1
  store i32 %217, i32* %157, align 1
  %218 = load <2 x float>, <2 x float>* %158, align 1
  %219 = extractelement <2 x float> %218, i32 0
  %220 = fpext float %219 to double
  %221 = bitcast i64 %209 to double
  %222 = fadd double %220, %221
  store double %222, double* %159, align 1
  %.cast19 = bitcast i64 %209 to <2 x i32>
  %223 = fptrunc double %222 to float
  store float %223, float* %163, align 1
  %224 = extractelement <2 x i32> %.cast19, i32 1
  store i32 %224, i32* %114, align 1
  store i32 0, i32* %115, align 1
  store i32 0, i32* %117, align 1
  %225 = add i64 %165, -32
  %226 = add i64 %205, 30
  store i64 %226, i64* %3, align 8
  %227 = load <2 x float>, <2 x float>* %49, align 1
  %228 = extractelement <2 x float> %227, i32 0
  %229 = inttoptr i64 %225 to float*
  store float %228, float* %229, align 4
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -16
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 4
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %231 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX.i671, align 8
  %236 = add i64 %232, 7
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RAX.i671, align 8
  %239 = add i64 %230, -36
  %240 = add i64 %232, 10
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RCX.i669, align 8
  %244 = add i64 %232, 14
  store i64 %244, i64* %3, align 8
  %245 = load i64, i64* %234, align 8
  store i64 %245, i64* %RDX.i627, align 8
  %246 = add i64 %245, 8
  %247 = add i64 %232, 17
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = sub i32 %242, %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i669, align 8
  %252 = icmp ult i32 %242, %249
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %14, align 1
  %254 = and i32 %250, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %21, align 1
  %259 = xor i32 %249, %242
  %260 = xor i32 %259, %250
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1
  %264 = icmp eq i32 %250, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i32 %250, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %33, align 1
  %268 = lshr i32 %242, 31
  %269 = lshr i32 %249, 31
  %270 = xor i32 %269, %268
  %271 = xor i32 %266, %268
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %39, align 1
  %275 = sext i32 %250 to i64
  store i64 %275, i64* %RDX.i627, align 8
  %276 = shl nsw i64 %275, 2
  %277 = add i64 %238, %276
  %278 = add i64 %232, 25
  store i64 %278, i64* %3, align 8
  %279 = load <2 x i32>, <2 x i32>* %161, align 1
  %280 = load <2 x i32>, <2 x i32>* %162, align 1
  %281 = inttoptr i64 %277 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sitofp i32 %282 to float
  store float %283, float* %163, align 1
  %284 = extractelement <2 x i32> %279, i32 1
  store i32 %284, i32* %114, align 1
  %285 = extractelement <2 x i32> %280, i32 0
  store i32 %285, i32* %115, align 1
  %286 = extractelement <2 x i32> %280, i32 1
  store i32 %286, i32* %117, align 1
  %287 = add i64 %230, -32
  %288 = add i64 %232, 30
  store i64 %288, i64* %3, align 8
  %289 = load <2 x float>, <2 x float>* %49, align 1
  %290 = load <2 x i32>, <2 x i32>* %162, align 1
  %291 = inttoptr i64 %287 to float*
  %292 = load float, float* %291, align 4
  %293 = extractelement <2 x float> %289, i32 0
  %294 = fmul float %293, %292
  store float %294, float* %163, align 1
  %295 = bitcast <2 x float> %289 to <2 x i32>
  %296 = extractelement <2 x i32> %295, i32 1
  store i32 %296, i32* %114, align 1
  %297 = extractelement <2 x i32> %290, i32 0
  store i32 %297, i32* %115, align 1
  %298 = extractelement <2 x i32> %290, i32 1
  store i32 %298, i32* %117, align 1
  %299 = add i64 %230, -24
  %300 = add i64 %232, 35
  store i64 %300, i64* %3, align 8
  %301 = load <2 x float>, <2 x float>* %49, align 1
  %302 = load <2 x i32>, <2 x i32>* %162, align 1
  %303 = inttoptr i64 %299 to float*
  %304 = load float, float* %303, align 4
  %305 = extractelement <2 x float> %301, i32 0
  %306 = fadd float %305, %304
  store float %306, float* %163, align 1
  %307 = bitcast <2 x float> %301 to <2 x i32>
  %308 = extractelement <2 x i32> %307, i32 1
  store i32 %308, i32* %114, align 1
  %309 = extractelement <2 x i32> %302, i32 0
  store i32 %309, i32* %115, align 1
  %310 = extractelement <2 x i32> %302, i32 1
  store i32 %310, i32* %117, align 1
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -24
  %313 = add i64 %232, 40
  store i64 %313, i64* %3, align 8
  %314 = load <2 x float>, <2 x float>* %49, align 1
  %315 = extractelement <2 x float> %314, i32 0
  %316 = inttoptr i64 %312 to float*
  store float %315, float* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -16
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i671, align 8
  %323 = add i64 %319, 7
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RAX.i671, align 8
  %326 = add i64 %317, -36
  %327 = add i64 %319, 10
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i669, align 8
  %331 = add i64 %319, 14
  store i64 %331, i64* %3, align 8
  %332 = load i64, i64* %321, align 8
  store i64 %332, i64* %RDX.i627, align 8
  %333 = add i64 %332, 8
  %334 = add i64 %319, 17
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sub i32 %329, %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RCX.i669, align 8
  %339 = icmp ult i32 %329, %336
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %337, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %336, %329
  %347 = xor i32 %346, %337
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %27, align 1
  %351 = icmp eq i32 %337, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %30, align 1
  %353 = lshr i32 %337, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %33, align 1
  %355 = lshr i32 %329, 31
  %356 = lshr i32 %336, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %353, %355
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %39, align 1
  %362 = sext i32 %337 to i64
  store i64 %362, i64* %RDX.i627, align 8
  %363 = shl nsw i64 %362, 2
  %364 = add i64 %325, %363
  %365 = add i64 %319, 25
  store i64 %365, i64* %3, align 8
  %366 = load <2 x i32>, <2 x i32>* %161, align 1
  %367 = load <2 x i32>, <2 x i32>* %162, align 1
  %368 = inttoptr i64 %364 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sitofp i32 %369 to float
  store float %370, float* %163, align 1
  %371 = extractelement <2 x i32> %366, i32 1
  store i32 %371, i32* %114, align 1
  %372 = extractelement <2 x i32> %367, i32 0
  store i32 %372, i32* %115, align 1
  %373 = extractelement <2 x i32> %367, i32 1
  store i32 %373, i32* %117, align 1
  %374 = add i64 %317, -32
  %375 = add i64 %319, 30
  store i64 %375, i64* %3, align 8
  %376 = load <2 x float>, <2 x float>* %49, align 1
  %377 = load <2 x i32>, <2 x i32>* %162, align 1
  %378 = inttoptr i64 %374 to float*
  %379 = load float, float* %378, align 4
  %380 = extractelement <2 x float> %376, i32 0
  %381 = fmul float %380, %379
  store float %381, float* %163, align 1
  %382 = bitcast <2 x float> %376 to <2 x i32>
  %383 = extractelement <2 x i32> %382, i32 1
  store i32 %383, i32* %114, align 1
  %384 = extractelement <2 x i32> %377, i32 0
  store i32 %384, i32* %115, align 1
  %385 = extractelement <2 x i32> %377, i32 1
  store i32 %385, i32* %117, align 1
  %386 = add i64 %319, 35
  store i64 %386, i64* %3, align 8
  %387 = load <2 x float>, <2 x float>* %49, align 1
  %388 = load <2 x i32>, <2 x i32>* %162, align 1
  %389 = load float, float* %378, align 4
  %390 = extractelement <2 x float> %387, i32 0
  %391 = fmul float %390, %389
  store float %391, float* %163, align 1
  %392 = bitcast <2 x float> %387 to <2 x i32>
  %393 = extractelement <2 x i32> %392, i32 1
  store i32 %393, i32* %114, align 1
  %394 = extractelement <2 x i32> %388, i32 0
  store i32 %394, i32* %115, align 1
  %395 = extractelement <2 x i32> %388, i32 1
  store i32 %395, i32* %117, align 1
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -28
  %398 = add i64 %319, 40
  store i64 %398, i64* %3, align 8
  %399 = load <2 x float>, <2 x float>* %49, align 1
  %400 = load <2 x i32>, <2 x i32>* %162, align 1
  %401 = inttoptr i64 %397 to float*
  %402 = load float, float* %401, align 4
  %403 = extractelement <2 x float> %399, i32 0
  %404 = fadd float %403, %402
  store float %404, float* %163, align 1
  %405 = bitcast <2 x float> %399 to <2 x i32>
  %406 = extractelement <2 x i32> %405, i32 1
  store i32 %406, i32* %114, align 1
  %407 = extractelement <2 x i32> %400, i32 0
  store i32 %407, i32* %115, align 1
  %408 = extractelement <2 x i32> %400, i32 1
  store i32 %408, i32* %117, align 1
  %409 = add i64 %319, 45
  store i64 %409, i64* %3, align 8
  %410 = load <2 x float>, <2 x float>* %49, align 1
  %411 = extractelement <2 x float> %410, i32 0
  store float %411, float* %401, align 4
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -36
  %414 = load i64, i64* %3, align 8
  %415 = add i64 %414, 3
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, 1
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i671, align 8
  %420 = icmp eq i32 %417, -1
  %421 = icmp eq i32 %418, 0
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = and i32 %418, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  %429 = xor i32 %418, %417
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %27, align 1
  %433 = zext i1 %421 to i8
  store i8 %433, i8* %30, align 1
  %434 = lshr i32 %418, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %33, align 1
  %436 = lshr i32 %417, 31
  %437 = xor i32 %434, %436
  %438 = add nuw nsw i32 %437, %434
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %39, align 1
  %441 = add i64 %414, 9
  store i64 %441, i64* %3, align 8
  store i32 %418, i32* %416, align 4
  %442 = load i64, i64* %3, align 8
  %443 = add i64 %442, -140
  store i64 %443, i64* %3, align 8
  br label %block_.L_41b1d9

block_.L_41b26a:                                  ; preds = %block_.L_41b1d9
  store i64 ptrtoint (%G__0x456e97_type* @G__0x456e97 to i64), i64* %RDI.i704, align 8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i562 = getelementptr inbounds %union.anon, %union.anon* %444, i64 0, i32 0
  store i64 790, i64* %RSI.i562, align 8
  %445 = add i64 %205, 19
  store i64 %445, i64* %3, align 8
  %446 = load i64, i64* %173, align 8
  store i64 %446, i64* %RAX.i671, align 8
  %447 = add i64 %446, 40
  %448 = add i64 %205, 26
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 2, i32* %449, align 4
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -24
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 5
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %112, align 1
  %456 = bitcast i8* %113 to float*
  store float 0.000000e+00, float* %456, align 1
  %457 = bitcast i64* %111 to float*
  store float 0.000000e+00, float* %457, align 1
  %458 = bitcast i8* %116 to float*
  store float 0.000000e+00, float* %458, align 1
  %459 = add i64 %450, -16
  %460 = add i64 %452, 9
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RAX.i671, align 8
  %463 = add i64 %462, 28
  %464 = add i64 %452, 14
  store i64 %464, i64* %3, align 8
  %465 = load <2 x i32>, <2 x i32>* %149, align 1
  %466 = load <2 x i32>, <2 x i32>* %151, align 1
  %467 = inttoptr i64 %463 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = sitofp i32 %468 to float
  store float %469, float* %152, align 1
  %470 = extractelement <2 x i32> %465, i32 1
  store i32 %470, i32* %154, align 1
  %471 = extractelement <2 x i32> %466, i32 0
  store i32 %471, i32* %155, align 1
  %472 = extractelement <2 x i32> %466, i32 1
  store i32 %472, i32* %157, align 1
  %473 = load <2 x float>, <2 x float>* %49, align 1
  %474 = load <2 x i32>, <2 x i32>* %162, align 1
  %475 = load <2 x float>, <2 x float>* %158, align 1
  %476 = extractelement <2 x float> %473, i32 0
  %477 = extractelement <2 x float> %475, i32 0
  %478 = fdiv float %476, %477
  store float %478, float* %163, align 1
  %479 = bitcast <2 x float> %473 to <2 x i32>
  %480 = extractelement <2 x i32> %479, i32 1
  store i32 %480, i32* %114, align 1
  %481 = extractelement <2 x i32> %474, i32 0
  store i32 %481, i32* %115, align 1
  %482 = extractelement <2 x i32> %474, i32 1
  store i32 %482, i32* %117, align 1
  %483 = add i64 %452, 22
  store i64 %483, i64* %3, align 8
  %484 = load i64, i64* %461, align 8
  store i64 %484, i64* %RAX.i671, align 8
  %485 = add i64 %484, 44
  %486 = add i64 %452, 27
  store i64 %486, i64* %3, align 8
  %487 = load <2 x float>, <2 x float>* %49, align 1
  %488 = extractelement <2 x float> %487, i32 0
  %489 = inttoptr i64 %485 to float*
  store float %488, float* %489, align 4
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -28
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 5
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %491 to i32*
  %495 = load i32, i32* %494, align 4
  store i32 %495, i32* %112, align 1
  store float 0.000000e+00, float* %456, align 1
  store float 0.000000e+00, float* %457, align 1
  store float 0.000000e+00, float* %458, align 1
  %496 = add i64 %490, -24
  %497 = add i64 %492, 10
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = bitcast %union.VectorReg* %147 to i32*
  store i32 %499, i32* %500, align 1
  %501 = bitcast i8* %153 to float*
  store float 0.000000e+00, float* %501, align 1
  %502 = bitcast i64* %150 to float*
  store float 0.000000e+00, float* %502, align 1
  %503 = bitcast i8* %156 to float*
  store float 0.000000e+00, float* %503, align 1
  %504 = add i64 %492, 15
  store i64 %504, i64* %3, align 8
  %505 = load <2 x float>, <2 x float>* %158, align 1
  %506 = load <2 x i32>, <2 x i32>* %151, align 1
  %507 = inttoptr i64 %496 to float*
  %508 = load float, float* %507, align 4
  %509 = extractelement <2 x float> %505, i32 0
  %510 = fmul float %509, %508
  store float %510, float* %152, align 1
  %511 = bitcast <2 x float> %505 to <2 x i32>
  %512 = extractelement <2 x i32> %511, i32 1
  store i32 %512, i32* %154, align 1
  %513 = extractelement <2 x i32> %506, i32 0
  store i32 %513, i32* %155, align 1
  %514 = extractelement <2 x i32> %506, i32 1
  store i32 %514, i32* %157, align 1
  %515 = add i64 %490, -16
  %516 = add i64 %492, 19
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %RAX.i671, align 8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %520 = bitcast %union.VectorReg* %519 to i8*
  %521 = add i64 %518, 28
  %522 = add i64 %492, 24
  store i64 %522, i64* %3, align 8
  %523 = bitcast %union.VectorReg* %519 to <2 x i32>*
  %524 = load <2 x i32>, <2 x i32>* %523, align 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %526 = bitcast i64* %525 to <2 x i32>*
  %527 = load <2 x i32>, <2 x i32>* %526, align 1
  %528 = inttoptr i64 %521 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = sitofp i32 %529 to float
  %531 = bitcast %union.VectorReg* %519 to float*
  store float %530, float* %531, align 1
  %532 = extractelement <2 x i32> %524, i32 1
  %533 = getelementptr inbounds i8, i8* %520, i64 4
  %534 = bitcast i8* %533 to i32*
  store i32 %532, i32* %534, align 1
  %535 = extractelement <2 x i32> %527, i32 0
  %536 = bitcast i64* %525 to i32*
  store i32 %535, i32* %536, align 1
  %537 = extractelement <2 x i32> %527, i32 1
  %538 = getelementptr inbounds i8, i8* %520, i64 12
  %539 = bitcast i8* %538 to i32*
  store i32 %537, i32* %539, align 1
  %540 = load <2 x float>, <2 x float>* %158, align 1
  %541 = load <2 x i32>, <2 x i32>* %151, align 1
  %542 = bitcast %union.VectorReg* %519 to <2 x float>*
  %543 = load <2 x float>, <2 x float>* %542, align 1
  %544 = extractelement <2 x float> %540, i32 0
  %545 = extractelement <2 x float> %543, i32 0
  %546 = fdiv float %544, %545
  store float %546, float* %152, align 1
  %547 = bitcast <2 x float> %540 to <2 x i32>
  %548 = extractelement <2 x i32> %547, i32 1
  store i32 %548, i32* %154, align 1
  %549 = extractelement <2 x i32> %541, i32 0
  store i32 %549, i32* %155, align 1
  %550 = extractelement <2 x i32> %541, i32 1
  store i32 %550, i32* %157, align 1
  %551 = load <2 x float>, <2 x float>* %49, align 1
  %552 = load <2 x i32>, <2 x i32>* %162, align 1
  %553 = load <2 x float>, <2 x float>* %158, align 1
  %554 = extractelement <2 x float> %551, i32 0
  %555 = extractelement <2 x float> %553, i32 0
  %556 = fsub float %554, %555
  store float %556, float* %163, align 1
  %557 = bitcast <2 x float> %551 to <2 x i32>
  %558 = extractelement <2 x i32> %557, i32 1
  store i32 %558, i32* %114, align 1
  %559 = extractelement <2 x i32> %552, i32 0
  store i32 %559, i32* %115, align 1
  %560 = extractelement <2 x i32> %552, i32 1
  store i32 %560, i32* %117, align 1
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -16
  %563 = add i64 %492, 36
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RAX.i671, align 8
  %566 = add i64 %565, 28
  %567 = add i64 %492, 39
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, -1
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RCX.i669, align 8
  %572 = icmp eq i32 %569, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %570, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i32 %570, %569
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %27, align 1
  %583 = icmp eq i32 %570, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = lshr i32 %570, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %33, align 1
  %587 = lshr i32 %569, 31
  %588 = xor i32 %585, %587
  %589 = add nuw nsw i32 %588, %587
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %39, align 1
  %592 = bitcast <2 x float> %553 to <2 x i32>
  %593 = load <2 x i32>, <2 x i32>* %151, align 1
  %594 = sitofp i32 %570 to float
  store float %594, float* %152, align 1
  %595 = extractelement <2 x i32> %592, i32 1
  store i32 %595, i32* %154, align 1
  %596 = extractelement <2 x i32> %593, i32 0
  store i32 %596, i32* %155, align 1
  %597 = extractelement <2 x i32> %593, i32 1
  store i32 %597, i32* %157, align 1
  %598 = load <2 x float>, <2 x float>* %49, align 1
  %599 = load <2 x i32>, <2 x i32>* %162, align 1
  %600 = load <2 x float>, <2 x float>* %158, align 1
  %601 = extractelement <2 x float> %598, i32 0
  %602 = extractelement <2 x float> %600, i32 0
  %603 = fdiv float %601, %602
  store float %603, float* %163, align 1
  %604 = bitcast <2 x float> %598 to <2 x i32>
  %605 = extractelement <2 x i32> %604, i32 1
  store i32 %605, i32* %114, align 1
  %606 = extractelement <2 x i32> %599, i32 0
  store i32 %606, i32* %115, align 1
  %607 = extractelement <2 x i32> %599, i32 1
  store i32 %607, i32* %117, align 1
  %608 = load <2 x float>, <2 x float>* %49, align 1
  %609 = extractelement <2 x float> %608, i32 0
  %610 = fpext float %609 to double
  store double %610, double* %160, align 1
  %611 = add i64 %561, -56
  %612 = load i64, i64* %RDI.i704, align 8
  %613 = add i64 %492, 58
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %611 to i64*
  store i64 %612, i64* %614, align 8
  %ESI.i = bitcast %union.anon* %444 to i32*
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -60
  %617 = load i32, i32* %ESI.i, align 4
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 3
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %616 to i32*
  store i32 %617, i32* %620, align 4
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, -105452
  %623 = add i64 %621, 5
  %624 = load i64, i64* %6, align 8
  %625 = add i64 %624, -8
  %626 = inttoptr i64 %625 to i64*
  store i64 %623, i64* %626, align 8
  store i64 %625, i64* %6, align 8
  store i64 %622, i64* %3, align 8
  %call2_41b2dc = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %622, %struct.Memory* %call2_41b195)
  %627 = load i64, i64* %3, align 8
  %628 = load <2 x i32>, <2 x i32>* %161, align 1
  %629 = load <2 x i32>, <2 x i32>* %162, align 1
  %.cast = bitcast <2 x i32> %628 to double
  %630 = fptrunc double %.cast to float
  store float %630, float* %163, align 1
  %631 = extractelement <2 x i32> %628, i32 1
  store i32 %631, i32* %114, align 1
  %632 = extractelement <2 x i32> %629, i32 0
  store i32 %632, i32* %115, align 1
  %633 = extractelement <2 x i32> %629, i32 1
  store i32 %633, i32* %117, align 1
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -16
  %636 = add i64 %627, 8
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX.i671, align 8
  %639 = add i64 %638, 48
  %640 = add i64 %627, 13
  store i64 %640, i64* %3, align 8
  %641 = load <2 x float>, <2 x float>* %49, align 1
  %642 = extractelement <2 x float> %641, i32 0
  %643 = inttoptr i64 %639 to float*
  store float %642, float* %643, align 4
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -16
  %646 = load i64, i64* %3, align 8
  %647 = add i64 %646, 4
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %645 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RAX.i671, align 8
  %650 = add i64 %649, 12
  %651 = add i64 %646, 7
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RCX.i669, align 8
  %655 = add i64 %646, 11
  store i64 %655, i64* %3, align 8
  %656 = load i64, i64* %648, align 8
  store i64 %656, i64* %RAX.i671, align 8
  %657 = add i64 %656, 8
  %658 = add i64 %646, 14
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sub i32 %653, %660
  %662 = lshr i32 %661, 31
  %663 = add i32 %661, 1
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RCX.i669, align 8
  %665 = icmp eq i32 %661, -1
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
  %674 = xor i32 %663, %661
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %27, align 1
  %678 = zext i1 %666 to i8
  store i8 %678, i8* %30, align 1
  %679 = lshr i32 %663, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %33, align 1
  %681 = xor i32 %679, %662
  %682 = add nuw nsw i32 %681, %679
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %685 = add i64 %644, -44
  %686 = add i64 %646, 20
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 %663, i32* %687, align 4
  %688 = load i64, i64* %RBP.i, align 8
  %689 = add i64 %688, -44
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 4
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %689 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sext i32 %693 to i64
  %695 = shl nsw i64 %694, 2
  store i64 %695, i64* %RAX.i671, align 8
  %.lobit = lshr i32 %693, 31
  %696 = trunc i32 %.lobit to i8
  store i8 %696, i8* %14, align 1
  %697 = trunc i64 %695 to i32
  %698 = and i32 %697, 252
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %703 = icmp eq i32 %693, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %30, align 1
  %705 = lshr i64 %694, 61
  %706 = trunc i64 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %708 = add i64 %688, -56
  %709 = add i64 %690, 12
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %RDI.i704, align 8
  %712 = add i64 %688, -60
  %713 = add i64 %690, 15
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RSI.i562, align 8
  store i64 %695, i64* %RDX.i627, align 8
  %717 = add i64 %690, 175454
  %718 = add i64 %690, 23
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_41b314 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %717, %struct.Memory* %call2_41b2dc)
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -16
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 4
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %723 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RDX.i627, align 8
  %728 = add i64 %727, 32
  %729 = load i64, i64* %RAX.i671, align 8
  %730 = add i64 %724, 8
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %728 to i64*
  store i64 %729, i64* %731, align 8
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -48
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, 7
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i32*
  store i32 0, i32* %736, align 4
  %.pre23 = load i64, i64* %3, align 8
  %737 = bitcast [32 x %union.VectorReg]* %44 to <4 x i32>*
  br label %block_.L_41b328

block_.L_41b328:                                  ; preds = %block_41b334, %block_.L_41b26a
  %738 = phi i64 [ %824, %block_41b334 ], [ %.pre23, %block_.L_41b26a ]
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -48
  %741 = add i64 %738, 3
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RAX.i671, align 8
  %745 = add i64 %739, -44
  %746 = add i64 %738, 6
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = sub i32 %743, %748
  %750 = icmp ult i32 %743, %748
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %14, align 1
  %752 = and i32 %749, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %21, align 1
  %757 = xor i32 %748, %743
  %758 = xor i32 %757, %749
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  store i8 %761, i8* %27, align 1
  %762 = icmp eq i32 %749, 0
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %30, align 1
  %764 = lshr i32 %749, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %33, align 1
  %766 = lshr i32 %743, 31
  %767 = lshr i32 %748, 31
  %768 = xor i32 %767, %766
  %769 = xor i32 %764, %766
  %770 = add nuw nsw i32 %769, %768
  %771 = icmp eq i32 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %39, align 1
  %773 = icmp ne i8 %765, 0
  %774 = xor i1 %773, %771
  %.v35 = select i1 %774, i64 12, i64 46
  %775 = add i64 %738, %.v35
  store i64 %775, i64* %3, align 8
  br i1 %774, label %block_41b334, label %block_.L_41b356

block_41b334:                                     ; preds = %block_.L_41b328
  store <4 x i32> zeroinitializer, <4 x i32>* %737, align 1
  %776 = add i64 %739, -16
  %777 = add i64 %775, 7
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %RAX.i671, align 8
  %780 = add i64 %779, 32
  %781 = add i64 %775, 11
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RAX.i671, align 8
  %784 = add i64 %775, 15
  store i64 %784, i64* %3, align 8
  %785 = load i32, i32* %742, align 4
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RCX.i669, align 8
  %787 = shl nsw i64 %786, 2
  %788 = add i64 %787, %783
  %789 = add i64 %775, 20
  store i64 %789, i64* %3, align 8
  %790 = load <2 x float>, <2 x float>* %49, align 1
  %791 = extractelement <2 x float> %790, i32 0
  %792 = inttoptr i64 %788 to float*
  store float %791, float* %792, align 4
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -48
  %795 = load i64, i64* %3, align 8
  %796 = add i64 %795, 3
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %794 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = add i32 %798, 1
  %800 = zext i32 %799 to i64
  store i64 %800, i64* %RAX.i671, align 8
  %801 = icmp eq i32 %798, -1
  %802 = icmp eq i32 %799, 0
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %14, align 1
  %805 = and i32 %799, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %21, align 1
  %810 = xor i32 %799, %798
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %27, align 1
  %814 = zext i1 %802 to i8
  store i8 %814, i8* %30, align 1
  %815 = lshr i32 %799, 31
  %816 = trunc i32 %815 to i8
  store i8 %816, i8* %33, align 1
  %817 = lshr i32 %798, 31
  %818 = xor i32 %815, %817
  %819 = add nuw nsw i32 %818, %815
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %39, align 1
  %822 = add i64 %795, 9
  store i64 %822, i64* %3, align 8
  store i32 %799, i32* %797, align 4
  %823 = load i64, i64* %3, align 8
  %824 = add i64 %823, -41
  store i64 %824, i64* %3, align 8
  br label %block_.L_41b328

block_.L_41b356:                                  ; preds = %block_.L_41b328
  %825 = add i64 %739, -16
  %826 = add i64 %775, 4
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RAX.i671, align 8
  %829 = add i64 %828, 8
  %830 = add i64 %775, 7
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RCX.i669, align 8
  %834 = add i64 %739, -36
  %835 = add i64 %775, 10
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  store i32 %832, i32* %836, align 4
  %837 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %147, i64 0, i32 0, i32 0, i32 0, i64 0
  %838 = bitcast i64* %150 to double*
  %839 = bitcast %union.VectorReg* %519 to double*
  %840 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %519, i64 0, i32 0, i32 0, i32 0, i64 0
  %841 = bitcast i64* %525 to double*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %843 = bitcast %union.VectorReg* %842 to i8*
  %844 = bitcast %union.VectorReg* %842 to double*
  %845 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %842, i64 0, i32 0, i32 0, i32 0, i64 0
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %847 = bitcast i64* %846 to double*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %849 = bitcast %union.VectorReg* %848 to i8*
  %850 = bitcast %union.VectorReg* %848 to <2 x i32>*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %852 = bitcast i64* %851 to <2 x i32>*
  %853 = bitcast %union.VectorReg* %848 to float*
  %854 = getelementptr inbounds i8, i8* %849, i64 4
  %855 = bitcast i8* %854 to i32*
  %856 = bitcast i64* %851 to i32*
  %857 = getelementptr inbounds i8, i8* %849, i64 12
  %858 = bitcast i8* %857 to i32*
  %859 = bitcast %union.VectorReg* %848 to <2 x float>*
  %860 = bitcast %union.VectorReg* %848 to double*
  %861 = bitcast %union.VectorReg* %842 to <2 x i32>*
  %862 = bitcast i64* %846 to <2 x i32>*
  %863 = bitcast %union.VectorReg* %842 to float*
  %864 = getelementptr inbounds i8, i8* %843, i64 4
  %865 = bitcast i8* %864 to i32*
  %866 = bitcast i64* %846 to i32*
  %867 = getelementptr inbounds i8, i8* %843, i64 12
  %868 = bitcast i8* %867 to i32*
  %869 = bitcast %union.VectorReg* %842 to <2 x float>*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %871 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %870, i64 0, i32 0, i32 0, i32 0, i64 0
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %873 = bitcast i64* %872 to double*
  %874 = bitcast %union.VectorReg* %870 to <2 x i32>*
  %875 = bitcast i64* %872 to <2 x i32>*
  %876 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %848, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_41b360

block_.L_41b360:                                  ; preds = %block_41b370, %block_.L_41b356
  %877 = phi i64 [ %.pre24, %block_.L_41b356 ], [ %1198, %block_41b370 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_41b314, %block_.L_41b356 ], [ %1100, %block_41b370 ]
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -36
  %880 = add i64 %877, 3
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RAX.i671, align 8
  %884 = add i64 %878, -16
  %885 = add i64 %877, 7
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %RCX.i669, align 8
  %888 = add i64 %887, 12
  %889 = add i64 %877, 10
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = sub i32 %882, %891
  %893 = icmp ult i32 %882, %891
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %14, align 1
  %895 = and i32 %892, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %21, align 1
  %900 = xor i32 %891, %882
  %901 = xor i32 %900, %892
  %902 = lshr i32 %901, 4
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  store i8 %904, i8* %27, align 1
  %905 = icmp eq i32 %892, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %30, align 1
  %907 = lshr i32 %892, 31
  %908 = trunc i32 %907 to i8
  store i8 %908, i8* %33, align 1
  %909 = lshr i32 %882, 31
  %910 = lshr i32 %891, 31
  %911 = xor i32 %910, %909
  %912 = xor i32 %907, %909
  %913 = add nuw nsw i32 %912, %911
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %39, align 1
  %916 = icmp ne i8 %908, 0
  %917 = xor i1 %916, %914
  %.demorgan32 = or i1 %905, %917
  %.v36 = select i1 %.demorgan32, i64 16, i64 297
  %918 = add i64 %877, %.v36
  store i64 %918, i64* %3, align 8
  br i1 %.demorgan32, label %block_41b370, label %block_.L_41b489

block_41b370:                                     ; preds = %block_.L_41b360
  %919 = add i64 %918, ptrtoint (%G_0x39470__rip__type* @G_0x39470__rip_ to i64)
  %920 = add i64 %918, 8
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %145, align 1
  store double 0.000000e+00, double* %146, align 1
  %923 = add i64 %918, add (i64 ptrtoint (%G_0x394b0__rip__type* @G_0x394b0__rip_ to i64), i64 8)
  %924 = add i64 %918, 16
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %837, align 1
  store double 0.000000e+00, double* %838, align 1
  %927 = add i64 %918, add (i64 ptrtoint (%G_0x39458__rip__type* @G_0x39458__rip_ to i64), i64 16)
  %928 = add i64 %918, 24
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %840, align 1
  store double 0.000000e+00, double* %841, align 1
  %931 = add i64 %918, add (i64 ptrtoint (%G_0x39460__rip__type* @G_0x39460__rip_ to i64), i64 24)
  %932 = add i64 %918, 32
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %845, align 1
  store double 0.000000e+00, double* %847, align 1
  %935 = add i64 %918, 37
  store i64 %935, i64* %3, align 8
  %936 = load <2 x i32>, <2 x i32>* %850, align 1
  %937 = load <2 x i32>, <2 x i32>* %852, align 1
  %938 = load i32, i32* %881, align 4
  %939 = sitofp i32 %938 to float
  store float %939, float* %853, align 1
  %940 = extractelement <2 x i32> %936, i32 1
  store i32 %940, i32* %855, align 1
  %941 = extractelement <2 x i32> %937, i32 0
  store i32 %941, i32* %856, align 1
  %942 = extractelement <2 x i32> %937, i32 1
  store i32 %942, i32* %858, align 1
  %943 = load <2 x float>, <2 x float>* %859, align 1
  %944 = extractelement <2 x float> %943, i32 0
  %945 = fpext float %944 to double
  %946 = bitcast i64 %934 to double
  %947 = fadd double %945, %946
  store double %947, double* %860, align 1
  %948 = add i64 %918, 49
  store i64 %948, i64* %3, align 8
  %949 = load i64, i64* %886, align 8
  store i64 %949, i64* %RAX.i671, align 8
  %950 = add i64 %949, 44
  %951 = add i64 %918, 54
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to float*
  %953 = load float, float* %952, align 4
  %954 = fpext float %953 to double
  %955 = fsub double %947, %954
  store double %955, double* %860, align 1
  %956 = bitcast double %954 to <2 x i32>
  %957 = fptrunc double %955 to float
  store float %957, float* %863, align 1
  %958 = extractelement <2 x i32> %956, i32 1
  store i32 %958, i32* %865, align 1
  store i32 0, i32* %866, align 1
  store i32 0, i32* %868, align 1
  %959 = add i64 %878, -32
  %960 = add i64 %918, 67
  store i64 %960, i64* %3, align 8
  %961 = load <2 x float>, <2 x float>* %869, align 1
  %962 = extractelement <2 x float> %961, i32 0
  %963 = inttoptr i64 %959 to float*
  store float %962, float* %963, align 4
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, -16
  %966 = load i64, i64* %3, align 8
  %967 = add i64 %966, 4
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RAX.i671, align 8
  %970 = add i64 %969, 28
  %971 = add i64 %966, 9
  store i64 %971, i64* %3, align 8
  %972 = load <2 x i32>, <2 x i32>* %861, align 1
  %973 = load <2 x i32>, <2 x i32>* %862, align 1
  %974 = inttoptr i64 %970 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = sitofp i32 %975 to float
  store float %976, float* %863, align 1
  %977 = extractelement <2 x i32> %972, i32 1
  store i32 %977, i32* %865, align 1
  %978 = extractelement <2 x i32> %973, i32 0
  store i32 %978, i32* %866, align 1
  %979 = extractelement <2 x i32> %973, i32 1
  store i32 %979, i32* %868, align 1
  %980 = load <2 x float>, <2 x float>* %869, align 1
  %981 = extractelement <2 x float> %980, i32 0
  %982 = fpext float %981 to double
  store double %982, double* %844, align 1
  %983 = add i64 %966, 17
  store i64 %983, i64* %3, align 8
  %984 = load i64, i64* %968, align 8
  store i64 %984, i64* %RAX.i671, align 8
  %985 = add i64 %984, 48
  %986 = add i64 %966, 22
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to float*
  %988 = load float, float* %987, align 4
  %989 = fpext float %988 to double
  store double %989, double* %860, align 1
  %990 = add i64 %966, add (i64 ptrtoint (%G_0x394af__rip__type* @G_0x394af__rip_ to i64), i64 22)
  %991 = add i64 %966, 30
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %871, align 1
  store double 0.000000e+00, double* %873, align 1
  %994 = add i64 %964, -72
  %995 = add i64 %966, 35
  store i64 %995, i64* %3, align 8
  %996 = load i64, i64* %145, align 1
  %997 = inttoptr i64 %994 to i64*
  store i64 %996, i64* %997, align 8
  %998 = load i64, i64* %3, align 8
  %999 = load <2 x i32>, <2 x i32>* %874, align 1
  %1000 = load <2 x i32>, <2 x i32>* %875, align 1
  %1001 = extractelement <2 x i32> %999, i32 0
  store i32 %1001, i32* %112, align 1
  %1002 = extractelement <2 x i32> %999, i32 1
  store i32 %1002, i32* %114, align 1
  %1003 = extractelement <2 x i32> %1000, i32 0
  store i32 %1003, i32* %115, align 1
  %1004 = extractelement <2 x i32> %1000, i32 1
  store i32 %1004, i32* %117, align 1
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -80
  %1007 = add i64 %998, 8
  store i64 %1007, i64* %3, align 8
  %1008 = load i64, i64* %876, align 1
  %1009 = inttoptr i64 %1006 to i64*
  store i64 %1008, i64* %1009, align 8
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -88
  %1012 = load i64, i64* %3, align 8
  %1013 = add i64 %1012, 5
  store i64 %1013, i64* %3, align 8
  %1014 = load i64, i64* %837, align 1
  %1015 = inttoptr i64 %1011 to i64*
  store i64 %1014, i64* %1015, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -96
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %3, align 8
  %1020 = load i64, i64* %840, align 1
  %1021 = inttoptr i64 %1017 to i64*
  store i64 %1020, i64* %1021, align 8
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -104
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 5
  store i64 %1025, i64* %3, align 8
  %1026 = load i64, i64* %845, align 1
  %1027 = inttoptr i64 %1023 to i64*
  store i64 %1026, i64* %1027, align 8
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, -105725
  %1030 = add i64 %1028, 5
  %1031 = load i64, i64* %6, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033, align 8
  store i64 %1032, i64* %6, align 8
  store i64 %1029, i64* %3, align 8
  %call2_41b3ed = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %1029, %struct.Memory* %MEMORY.2)
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -80
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 5
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to double*
  %1039 = load double, double* %1038, align 8
  %1040 = load double, double* %160, align 1
  %1041 = fmul double %1039, %1040
  store double %1041, double* %159, align 1
  store i64 0, i64* %150, align 1
  %1042 = add i64 %1034, -96
  %1043 = add i64 %1036, 14
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to double*
  %1045 = load double, double* %1044, align 8
  %1046 = fdiv double %1045, %1041
  store double %1046, double* %160, align 1
  store i64 0, i64* %111, align 1
  %1047 = add i64 %1034, -32
  %1048 = add i64 %1036, 23
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to float*
  %1050 = load float, float* %1049, align 4
  %1051 = fpext float %1050 to double
  store double %1051, double* %159, align 1
  %1052 = add i64 %1034, -88
  %1053 = add i64 %1036, 28
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to double*
  %1055 = load double, double* %1054, align 8
  %1056 = fmul double %1055, %1051
  store double %1056, double* %839, align 1
  store i64 0, i64* %525, align 1
  %1057 = add i64 %1036, 37
  store i64 %1057, i64* %3, align 8
  %1058 = load float, float* %1049, align 4
  %1059 = fpext float %1058 to double
  store double %1059, double* %159, align 1
  %1060 = fmul double %1059, %1056
  store double %1060, double* %839, align 1
  store i64 0, i64* %525, align 1
  %1061 = add i64 %1034, -16
  %1062 = add i64 %1036, 45
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %RAX.i671, align 8
  %1065 = add i64 %1064, 48
  %1066 = add i64 %1036, 50
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to float*
  %1068 = load float, float* %1067, align 4
  %1069 = fpext float %1068 to double
  store double %1069, double* %159, align 1
  %1070 = add i64 %1034, -72
  %1071 = add i64 %1036, 55
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to double*
  %1073 = load double, double* %1072, align 8
  %1074 = fmul double %1073, %1069
  store double %1074, double* %844, align 1
  store i64 0, i64* %846, align 1
  %1075 = add i64 %1036, 63
  store i64 %1075, i64* %3, align 8
  %1076 = load i64, i64* %1063, align 8
  store i64 %1076, i64* %RAX.i671, align 8
  %1077 = add i64 %1076, 48
  %1078 = add i64 %1036, 68
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to float*
  %1080 = load float, float* %1079, align 4
  %1081 = fpext float %1080 to double
  store double %1081, double* %159, align 1
  %1082 = fmul double %1081, %1074
  store double %1082, double* %844, align 1
  store i64 0, i64* %846, align 1
  %1083 = fdiv double %1060, %1082
  store double %1083, double* %839, align 1
  store i64 0, i64* %525, align 1
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -112
  %1086 = add i64 %1036, 81
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to double*
  store double %1046, double* %1087, align 8
  %1088 = load i64, i64* %3, align 8
  %1089 = load <2 x i32>, <2 x i32>* %523, align 1
  %1090 = load <2 x i32>, <2 x i32>* %526, align 1
  %1091 = extractelement <2 x i32> %1089, i32 0
  store i32 %1091, i32* %112, align 1
  %1092 = extractelement <2 x i32> %1089, i32 1
  store i32 %1092, i32* %114, align 1
  %1093 = extractelement <2 x i32> %1090, i32 0
  store i32 %1093, i32* %115, align 1
  %1094 = extractelement <2 x i32> %1090, i32 1
  store i32 %1094, i32* %117, align 1
  %1095 = add i64 %1088, -106531
  %1096 = add i64 %1088, 8
  %1097 = load i64, i64* %6, align 8
  %1098 = add i64 %1097, -8
  %1099 = inttoptr i64 %1098 to i64*
  store i64 %1096, i64* %1099, align 8
  store i64 %1098, i64* %6, align 8
  store i64 %1095, i64* %3, align 8
  %1100 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %call2_41b3ed)
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -112
  %1103 = load i64, i64* %3, align 8
  %1104 = add i64 %1103, 5
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to double*
  %1106 = load double, double* %1105, align 8
  %1107 = load double, double* %160, align 1
  %1108 = fmul double %1106, %1107
  store double %1108, double* %159, align 1
  store i64 0, i64* %150, align 1
  %1109 = add i64 %1101, -104
  %1110 = add i64 %1103, 14
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to double*
  %1112 = load double, double* %1111, align 8
  %1113 = fmul double %1112, %1108
  %.cast14 = bitcast double %1113 to <2 x i32>
  %1114 = fptrunc double %1113 to float
  store float %1114, float* %163, align 1
  %1115 = extractelement <2 x i32> %.cast14, i32 1
  store i32 %1115, i32* %114, align 1
  store i32 0, i32* %115, align 1
  store i32 0, i32* %117, align 1
  %1116 = add i64 %1101, -16
  %1117 = add i64 %1103, 26
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RAX.i671, align 8
  %1120 = add i64 %1119, 32
  %1121 = add i64 %1103, 30
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %RAX.i671, align 8
  %1124 = add i64 %1101, -36
  %1125 = add i64 %1103, 33
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %RCX.i669, align 8
  %1129 = add i64 %1103, 37
  store i64 %1129, i64* %3, align 8
  %1130 = load i64, i64* %1118, align 8
  store i64 %1130, i64* %RDX.i627, align 8
  %1131 = add i64 %1130, 8
  %1132 = add i64 %1103, 40
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sub i32 %1127, %1134
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RCX.i669, align 8
  %1137 = icmp ult i32 %1127, %1134
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %14, align 1
  %1139 = and i32 %1135, 255
  %1140 = tail call i32 @llvm.ctpop.i32(i32 %1139)
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  store i8 %1143, i8* %21, align 1
  %1144 = xor i32 %1134, %1127
  %1145 = xor i32 %1144, %1135
  %1146 = lshr i32 %1145, 4
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  store i8 %1148, i8* %27, align 1
  %1149 = icmp eq i32 %1135, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %30, align 1
  %1151 = lshr i32 %1135, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %33, align 1
  %1153 = lshr i32 %1127, 31
  %1154 = lshr i32 %1134, 31
  %1155 = xor i32 %1154, %1153
  %1156 = xor i32 %1151, %1153
  %1157 = add nuw nsw i32 %1156, %1155
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %39, align 1
  %1160 = sext i32 %1135 to i64
  store i64 %1160, i64* %RDX.i627, align 8
  %1161 = shl nsw i64 %1160, 2
  %1162 = add i64 %1123, %1161
  %1163 = add i64 %1103, 48
  store i64 %1163, i64* %3, align 8
  %1164 = load <2 x float>, <2 x float>* %49, align 1
  %1165 = extractelement <2 x float> %1164, i32 0
  %1166 = inttoptr i64 %1162 to float*
  store float %1165, float* %1166, align 4
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -36
  %1169 = load i64, i64* %3, align 8
  %1170 = add i64 %1169, 3
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = add i32 %1172, 1
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i671, align 8
  %1175 = icmp eq i32 %1172, -1
  %1176 = icmp eq i32 %1173, 0
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1173, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i32 %1173, %1172
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %27, align 1
  %1188 = zext i1 %1176 to i8
  store i8 %1188, i8* %30, align 1
  %1189 = lshr i32 %1173, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %33, align 1
  %1191 = lshr i32 %1172, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1189
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %39, align 1
  %1196 = add i64 %1169, 9
  store i64 %1196, i64* %3, align 8
  store i32 %1173, i32* %1171, align 4
  %1197 = load i64, i64* %3, align 8
  %1198 = add i64 %1197, -292
  store i64 %1198, i64* %3, align 8
  br label %block_.L_41b360

block_.L_41b489:                                  ; preds = %block_.L_41b360
  %1199 = bitcast [32 x %union.VectorReg]* %44 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1199, align 1
  %1200 = add i64 %918, 7
  store i64 %1200, i64* %3, align 8
  %1201 = load i64, i64* %886, align 8
  store i64 %1201, i64* %RAX.i671, align 8
  %1202 = add i64 %1201, 56
  %1203 = add i64 %918, 12
  store i64 %1203, i64* %3, align 8
  %1204 = load <2 x float>, <2 x float>* %49, align 1
  %1205 = extractelement <2 x float> %1204, i32 0
  %1206 = inttoptr i64 %1202 to float*
  store float %1205, float* %1206, align 4
  %1207 = load i64, i64* %RBP.i, align 8
  %1208 = add i64 %1207, -40
  %1209 = load i64, i64* %3, align 8
  %1210 = add i64 %1209, 7
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1208 to i32*
  store i32 0, i32* %1211, align 4
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -16
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 4
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i64*
  %1217 = load i64, i64* %1216, align 8
  store i64 %1217, i64* %RAX.i671, align 8
  %1218 = add i64 %1217, 20
  %1219 = add i64 %1214, 7
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RCX.i669, align 8
  %1223 = add i64 %1212, -36
  %1224 = add i64 %1214, 10
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  store i32 %1221, i32* %1225, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_41b4a6

block_.L_41b4a6:                                  ; preds = %block_.L_41b573, %block_.L_41b489
  %1226 = phi i64 [ %.pre25, %block_.L_41b489 ], [ %1695, %block_.L_41b573 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41b489 ], [ %1346, %block_.L_41b573 ]
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -36
  %1229 = add i64 %1226, 3
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RAX.i671, align 8
  %1233 = add i64 %1227, -16
  %1234 = add i64 %1226, 7
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %RCX.i669, align 8
  %1237 = add i64 %1236, 16
  %1238 = add i64 %1226, 10
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = sub i32 %1231, %1240
  %1242 = icmp ult i32 %1231, %1240
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %14, align 1
  %1244 = and i32 %1241, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %21, align 1
  %1249 = xor i32 %1240, %1231
  %1250 = xor i32 %1249, %1241
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %27, align 1
  %1254 = icmp eq i32 %1241, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %30, align 1
  %1256 = lshr i32 %1241, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %33, align 1
  %1258 = lshr i32 %1231, 31
  %1259 = lshr i32 %1240, 31
  %1260 = xor i32 %1259, %1258
  %1261 = xor i32 %1256, %1258
  %1262 = add nuw nsw i32 %1261, %1260
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %39, align 1
  %1265 = icmp ne i8 %1257, 0
  %1266 = xor i1 %1265, %1263
  %.demorgan33 = or i1 %1254, %1266
  %.v37 = select i1 %.demorgan33, i64 16, i64 224
  %1267 = add i64 %1226, %.v37
  store i64 %1267, i64* %3, align 8
  br i1 %.demorgan33, label %block_41b4b6, label %block_.L_41b586

block_41b4b6:                                     ; preds = %block_.L_41b4a6
  %1268 = add i64 %1267, ptrtoint (%G_0x3934a__rip__type* @G_0x3934a__rip_ to i64)
  %1269 = add i64 %1267, 8
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %145, align 1
  store double 0.000000e+00, double* %146, align 1
  %1272 = add i64 %1267, 12
  store i64 %1272, i64* %3, align 8
  %1273 = load i64, i64* %1235, align 8
  store i64 %1273, i64* %RAX.i671, align 8
  %1274 = add i64 %1273, 32
  %1275 = add i64 %1267, 16
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RAX.i671, align 8
  %1278 = add i64 %1267, 19
  store i64 %1278, i64* %3, align 8
  %1279 = load i32, i32* %1230, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RCX.i669, align 8
  %1281 = add i64 %1267, 23
  store i64 %1281, i64* %3, align 8
  %1282 = load i64, i64* %1235, align 8
  store i64 %1282, i64* %RDX.i627, align 8
  %1283 = add i64 %1282, 8
  %1284 = add i64 %1267, 26
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sub i32 %1279, %1286
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RCX.i669, align 8
  %1289 = icmp ult i32 %1279, %1286
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %14, align 1
  %1291 = and i32 %1287, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i32 %1286, %1279
  %1297 = xor i32 %1296, %1287
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %27, align 1
  %1301 = icmp eq i32 %1287, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %30, align 1
  %1303 = lshr i32 %1287, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %33, align 1
  %1305 = lshr i32 %1279, 31
  %1306 = lshr i32 %1286, 31
  %1307 = xor i32 %1306, %1305
  %1308 = xor i32 %1303, %1305
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %39, align 1
  %1312 = sext i32 %1287 to i64
  store i64 %1312, i64* %RDX.i627, align 8
  %1313 = shl nsw i64 %1312, 2
  %1314 = add i64 %1277, %1313
  %1315 = add i64 %1267, 34
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to float*
  %1317 = load float, float* %1316, align 4
  %1318 = fpext float %1317 to double
  store double %1318, double* %159, align 1
  %1319 = add i64 %1267, 38
  store i64 %1319, i64* %3, align 8
  %1320 = bitcast i64 %1271 to double
  %1321 = fcmp uno double %1318, %1320
  br i1 %1321, label %1322, label %1332

; <label>:1322:                                   ; preds = %block_41b4b6
  %1323 = fadd double %1318, %1320
  %1324 = bitcast double %1323 to i64
  %1325 = and i64 %1324, 9221120237041090560
  %1326 = icmp eq i64 %1325, 9218868437227405312
  %1327 = and i64 %1324, 2251799813685247
  %1328 = icmp ne i64 %1327, 0
  %1329 = and i1 %1326, %1328
  br i1 %1329, label %1330, label %1338

; <label>:1330:                                   ; preds = %1322
  %1331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1319, %struct.Memory* %MEMORY.3)
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i8, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1332:                                   ; preds = %block_41b4b6
  %1333 = fcmp ogt double %1318, %1320
  br i1 %1333, label %1338, label %1334

; <label>:1334:                                   ; preds = %1332
  %1335 = fcmp olt double %1318, %1320
  br i1 %1335, label %1338, label %1336

; <label>:1336:                                   ; preds = %1334
  %1337 = fcmp oeq double %1318, %1320
  br i1 %1337, label %1338, label %1342

; <label>:1338:                                   ; preds = %1336, %1334, %1332, %1322
  %1339 = phi i8 [ 0, %1332 ], [ 0, %1334 ], [ 1, %1336 ], [ 1, %1322 ]
  %1340 = phi i8 [ 0, %1332 ], [ 0, %1334 ], [ 0, %1336 ], [ 1, %1322 ]
  %1341 = phi i8 [ 0, %1332 ], [ 1, %1334 ], [ 0, %1336 ], [ 1, %1322 ]
  store i8 %1339, i8* %30, align 1
  store i8 %1340, i8* %21, align 1
  store i8 %1341, i8* %14, align 1
  br label %1342

; <label>:1342:                                   ; preds = %1338, %1336
  %1343 = phi i8 [ %1341, %1338 ], [ %1290, %1336 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1342, %1330
  %1344 = phi i8 [ %.pre27, %1330 ], [ %1343, %1342 ]
  %1345 = phi i64 [ %.pre26, %1330 ], [ %1319, %1342 ]
  %1346 = phi %struct.Memory* [ %1331, %1330 ], [ %MEMORY.3, %1342 ]
  %1347 = icmp ne i8 %1344, 0
  %.v39 = select i1 %1347, i64 151, i64 6
  %1348 = add i64 %1345, %.v39
  store i64 %1348, i64* %3, align 8
  %cmpBr_41b4dc = icmp eq i8 %1344, 1
  br i1 %cmpBr_41b4dc, label %block_.L_41b573, label %block_41b4e2

block_41b4e2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -16
  %1351 = add i64 %1348, 4
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RAX.i671, align 8
  %1354 = add i64 %1348, 7
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i64*
  %1356 = load i64, i64* %1355, align 8
  store i64 %1356, i64* %RAX.i671, align 8
  %1357 = add i64 %1349, -36
  %1358 = add i64 %1348, 10
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RCX.i669, align 8
  %1362 = add i64 %1348, 14
  store i64 %1362, i64* %3, align 8
  %1363 = load i64, i64* %1352, align 8
  store i64 %1363, i64* %RDX.i627, align 8
  %1364 = add i64 %1363, 8
  %1365 = add i64 %1348, 17
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = sub i32 %1360, %1367
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RCX.i669, align 8
  %1370 = icmp ult i32 %1360, %1367
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %14, align 1
  %1372 = and i32 %1368, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  %1377 = xor i32 %1367, %1360
  %1378 = xor i32 %1377, %1368
  %1379 = lshr i32 %1378, 4
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %27, align 1
  %1382 = icmp eq i32 %1368, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %30, align 1
  %1384 = lshr i32 %1368, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %33, align 1
  %1386 = lshr i32 %1360, 31
  %1387 = lshr i32 %1367, 31
  %1388 = xor i32 %1387, %1386
  %1389 = xor i32 %1384, %1386
  %1390 = add nuw nsw i32 %1389, %1388
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %39, align 1
  %1393 = sext i32 %1368 to i64
  store i64 %1393, i64* %RDX.i627, align 8
  %1394 = shl nsw i64 %1393, 2
  %1395 = add i64 %1356, %1394
  %1396 = add i64 %1348, 24
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = add i32 %1398, -5
  %1400 = icmp ult i32 %1398, 5
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %14, align 1
  %1402 = and i32 %1399, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i32 %1399, %1398
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %27, align 1
  %1411 = icmp eq i32 %1399, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %30, align 1
  %1413 = lshr i32 %1399, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %33, align 1
  %1415 = lshr i32 %1398, 31
  %1416 = xor i32 %1413, %1415
  %1417 = add nuw nsw i32 %1416, %1415
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %39, align 1
  %1420 = icmp ne i8 %1414, 0
  %1421 = xor i1 %1420, %1418
  %.v40 = select i1 %1421, i64 145, i64 30
  %1422 = add i64 %1348, %.v40
  store i64 %1422, i64* %3, align 8
  br i1 %1421, label %block_.L_41b573, label %block_41b500

block_41b500:                                     ; preds = %block_41b4e2
  %1423 = load i64, i64* %RBP.i, align 8
  %1424 = add i64 %1423, -16
  %1425 = add i64 %1422, 4
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i64*
  %1427 = load i64, i64* %1426, align 8
  store i64 %1427, i64* %RAX.i671, align 8
  %1428 = add i64 %1422, 7
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RAX.i671, align 8
  %1431 = add i64 %1423, -36
  %1432 = add i64 %1422, 10
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i669, align 8
  %1436 = add i64 %1422, 14
  store i64 %1436, i64* %3, align 8
  %1437 = load i64, i64* %1426, align 8
  store i64 %1437, i64* %RDX.i627, align 8
  %1438 = add i64 %1437, 8
  %1439 = add i64 %1422, 17
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = sub i32 %1434, %1441
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RCX.i669, align 8
  %1444 = icmp ult i32 %1434, %1441
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %14, align 1
  %1446 = and i32 %1442, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %21, align 1
  %1451 = xor i32 %1441, %1434
  %1452 = xor i32 %1451, %1442
  %1453 = lshr i32 %1452, 4
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  store i8 %1455, i8* %27, align 1
  %1456 = icmp eq i32 %1442, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %30, align 1
  %1458 = lshr i32 %1442, 31
  %1459 = trunc i32 %1458 to i8
  store i8 %1459, i8* %33, align 1
  %1460 = lshr i32 %1434, 31
  %1461 = lshr i32 %1441, 31
  %1462 = xor i32 %1461, %1460
  %1463 = xor i32 %1458, %1460
  %1464 = add nuw nsw i32 %1463, %1462
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %39, align 1
  %1467 = sext i32 %1442 to i64
  store i64 %1467, i64* %RDX.i627, align 8
  %1468 = shl nsw i64 %1467, 2
  %1469 = add i64 %1430, %1468
  %1470 = add i64 %1422, 25
  store i64 %1470, i64* %3, align 8
  %1471 = load <2 x i32>, <2 x i32>* %161, align 1
  %1472 = load <2 x i32>, <2 x i32>* %162, align 1
  %1473 = inttoptr i64 %1469 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sitofp i32 %1474 to float
  store float %1475, float* %163, align 1
  %1476 = extractelement <2 x i32> %1471, i32 1
  store i32 %1476, i32* %114, align 1
  %1477 = extractelement <2 x i32> %1472, i32 0
  store i32 %1477, i32* %115, align 1
  %1478 = extractelement <2 x i32> %1472, i32 1
  store i32 %1478, i32* %117, align 1
  %1479 = add i64 %1422, 29
  store i64 %1479, i64* %3, align 8
  %1480 = load i64, i64* %1426, align 8
  store i64 %1480, i64* %RAX.i671, align 8
  %1481 = add i64 %1480, 32
  %1482 = add i64 %1422, 33
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i64*
  %1484 = load i64, i64* %1483, align 8
  store i64 %1484, i64* %RAX.i671, align 8
  %1485 = add i64 %1422, 36
  store i64 %1485, i64* %3, align 8
  %1486 = load i32, i32* %1433, align 4
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RCX.i669, align 8
  %1488 = add i64 %1422, 40
  store i64 %1488, i64* %3, align 8
  %1489 = load i64, i64* %1426, align 8
  store i64 %1489, i64* %RDX.i627, align 8
  %1490 = add i64 %1489, 8
  %1491 = add i64 %1422, 43
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sub i32 %1486, %1493
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RCX.i669, align 8
  %1496 = icmp ult i32 %1486, %1493
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = and i32 %1494, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %21, align 1
  %1503 = xor i32 %1493, %1486
  %1504 = xor i32 %1503, %1494
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %27, align 1
  %1508 = icmp eq i32 %1494, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %30, align 1
  %1510 = lshr i32 %1494, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %33, align 1
  %1512 = lshr i32 %1486, 31
  %1513 = lshr i32 %1493, 31
  %1514 = xor i32 %1513, %1512
  %1515 = xor i32 %1510, %1512
  %1516 = add nuw nsw i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %39, align 1
  %1519 = sext i32 %1494 to i64
  store i64 %1519, i64* %RDX.i627, align 8
  %1520 = shl nsw i64 %1519, 2
  %1521 = add i64 %1484, %1520
  %1522 = add i64 %1422, 51
  store i64 %1522, i64* %3, align 8
  %1523 = load <2 x float>, <2 x float>* %49, align 1
  %1524 = load <2 x i32>, <2 x i32>* %162, align 1
  %1525 = inttoptr i64 %1521 to float*
  %1526 = load float, float* %1525, align 4
  %1527 = extractelement <2 x float> %1523, i32 0
  %1528 = fsub float %1527, %1526
  store float %1528, float* %163, align 1
  %1529 = bitcast <2 x float> %1523 to <2 x i32>
  %1530 = extractelement <2 x i32> %1529, i32 1
  store i32 %1530, i32* %114, align 1
  %1531 = extractelement <2 x i32> %1524, i32 0
  store i32 %1531, i32* %115, align 1
  %1532 = extractelement <2 x i32> %1524, i32 1
  store i32 %1532, i32* %117, align 1
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -32
  %1535 = add i64 %1422, 56
  store i64 %1535, i64* %3, align 8
  %1536 = load <2 x float>, <2 x float>* %49, align 1
  %1537 = extractelement <2 x float> %1536, i32 0
  %1538 = inttoptr i64 %1534 to float*
  store float %1537, float* %1538, align 4
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -32
  %1541 = load i64, i64* %3, align 8
  %1542 = add i64 %1541, 5
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1540 to i32*
  %1544 = load i32, i32* %1543, align 4
  store i32 %1544, i32* %112, align 1
  store float 0.000000e+00, float* %456, align 1
  store float 0.000000e+00, float* %457, align 1
  store float 0.000000e+00, float* %458, align 1
  %1545 = add i64 %1541, 10
  store i64 %1545, i64* %3, align 8
  %1546 = load <2 x float>, <2 x float>* %49, align 1
  %1547 = load <2 x i32>, <2 x i32>* %162, align 1
  %1548 = inttoptr i64 %1540 to float*
  %1549 = load float, float* %1548, align 4
  %1550 = extractelement <2 x float> %1546, i32 0
  %1551 = fmul float %1550, %1549
  store float %1551, float* %163, align 1
  %1552 = bitcast <2 x float> %1546 to <2 x i32>
  %1553 = extractelement <2 x i32> %1552, i32 1
  store i32 %1553, i32* %114, align 1
  %1554 = extractelement <2 x i32> %1547, i32 0
  store i32 %1554, i32* %115, align 1
  %1555 = extractelement <2 x i32> %1547, i32 1
  store i32 %1555, i32* %117, align 1
  %1556 = add i64 %1539, -16
  %1557 = add i64 %1541, 14
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i64*
  %1559 = load i64, i64* %1558, align 8
  store i64 %1559, i64* %RAX.i671, align 8
  %1560 = add i64 %1559, 32
  %1561 = add i64 %1541, 18
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i64*
  %1563 = load i64, i64* %1562, align 8
  store i64 %1563, i64* %RAX.i671, align 8
  %1564 = add i64 %1539, -36
  %1565 = add i64 %1541, 21
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RCX.i669, align 8
  %1569 = add i64 %1541, 25
  store i64 %1569, i64* %3, align 8
  %1570 = load i64, i64* %1558, align 8
  store i64 %1570, i64* %RDX.i627, align 8
  %1571 = add i64 %1570, 8
  %1572 = add i64 %1541, 28
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = sub i32 %1567, %1574
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RCX.i669, align 8
  %1577 = icmp ult i32 %1567, %1574
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %14, align 1
  %1579 = and i32 %1575, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %21, align 1
  %1584 = xor i32 %1574, %1567
  %1585 = xor i32 %1584, %1575
  %1586 = lshr i32 %1585, 4
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  store i8 %1588, i8* %27, align 1
  %1589 = icmp eq i32 %1575, 0
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %30, align 1
  %1591 = lshr i32 %1575, 31
  %1592 = trunc i32 %1591 to i8
  store i8 %1592, i8* %33, align 1
  %1593 = lshr i32 %1567, 31
  %1594 = lshr i32 %1574, 31
  %1595 = xor i32 %1594, %1593
  %1596 = xor i32 %1591, %1593
  %1597 = add nuw nsw i32 %1596, %1595
  %1598 = icmp eq i32 %1597, 2
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %39, align 1
  %1600 = sext i32 %1575 to i64
  store i64 %1600, i64* %RDX.i627, align 8
  %1601 = shl nsw i64 %1600, 2
  %1602 = add i64 %1563, %1601
  %1603 = add i64 %1541, 36
  store i64 %1603, i64* %3, align 8
  %1604 = load <2 x float>, <2 x float>* %49, align 1
  %1605 = load <2 x i32>, <2 x i32>* %162, align 1
  %1606 = inttoptr i64 %1602 to float*
  %1607 = load float, float* %1606, align 4
  %1608 = extractelement <2 x float> %1604, i32 0
  %1609 = fdiv float %1608, %1607
  store float %1609, float* %163, align 1
  %1610 = bitcast <2 x float> %1604 to <2 x i32>
  %1611 = extractelement <2 x i32> %1610, i32 1
  store i32 %1611, i32* %114, align 1
  %1612 = extractelement <2 x i32> %1605, i32 0
  store i32 %1612, i32* %115, align 1
  %1613 = extractelement <2 x i32> %1605, i32 1
  store i32 %1613, i32* %117, align 1
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -16
  %1616 = add i64 %1541, 40
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX.i671, align 8
  %1619 = add i64 %1618, 56
  %1620 = add i64 %1541, 45
  store i64 %1620, i64* %3, align 8
  %1621 = load <2 x float>, <2 x float>* %49, align 1
  %1622 = load <2 x i32>, <2 x i32>* %162, align 1
  %1623 = inttoptr i64 %1619 to float*
  %1624 = load float, float* %1623, align 4
  %1625 = extractelement <2 x float> %1621, i32 0
  %1626 = fadd float %1625, %1624
  store float %1626, float* %163, align 1
  %1627 = bitcast <2 x float> %1621 to <2 x i32>
  %1628 = extractelement <2 x i32> %1627, i32 1
  store i32 %1628, i32* %114, align 1
  %1629 = extractelement <2 x i32> %1622, i32 0
  store i32 %1629, i32* %115, align 1
  %1630 = extractelement <2 x i32> %1622, i32 1
  store i32 %1630, i32* %117, align 1
  %1631 = add i64 %1541, 50
  store i64 %1631, i64* %3, align 8
  %1632 = load <2 x float>, <2 x float>* %49, align 1
  %1633 = extractelement <2 x float> %1632, i32 0
  store float %1633, float* %1623, align 4
  %1634 = load i64, i64* %RBP.i, align 8
  %1635 = add i64 %1634, -40
  %1636 = load i64, i64* %3, align 8
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, 1
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RCX.i669, align 8
  %1642 = icmp eq i32 %1639, -1
  %1643 = icmp eq i32 %1640, 0
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %14, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %21, align 1
  %1651 = xor i32 %1640, %1639
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %27, align 1
  %1655 = zext i1 %1643 to i8
  store i8 %1655, i8* %30, align 1
  %1656 = lshr i32 %1640, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %33, align 1
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %39, align 1
  %1663 = add i64 %1636, 9
  store i64 %1663, i64* %3, align 8
  store i32 %1640, i32* %1638, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_41b573

block_.L_41b573:                                  ; preds = %block_41b500, %block_41b4e2, %routine_ucomisd__xmm0___xmm1.exit
  %1664 = phi i64 [ %.pre28, %block_41b500 ], [ %1422, %block_41b4e2 ], [ %1348, %routine_ucomisd__xmm0___xmm1.exit ]
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -36
  %1667 = add i64 %1664, 8
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = add i32 %1669, 1
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RAX.i671, align 8
  %1672 = icmp eq i32 %1669, -1
  %1673 = icmp eq i32 %1670, 0
  %1674 = or i1 %1672, %1673
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %14, align 1
  %1676 = and i32 %1670, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %21, align 1
  %1681 = xor i32 %1670, %1669
  %1682 = lshr i32 %1681, 4
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %27, align 1
  %1685 = zext i1 %1673 to i8
  store i8 %1685, i8* %30, align 1
  %1686 = lshr i32 %1670, 31
  %1687 = trunc i32 %1686 to i8
  store i8 %1687, i8* %33, align 1
  %1688 = lshr i32 %1669, 31
  %1689 = xor i32 %1686, %1688
  %1690 = add nuw nsw i32 %1689, %1686
  %1691 = icmp eq i32 %1690, 2
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %39, align 1
  %1693 = add i64 %1664, 14
  store i64 %1693, i64* %3, align 8
  store i32 %1670, i32* %1668, align 4
  %1694 = load i64, i64* %3, align 8
  %1695 = add i64 %1694, -219
  store i64 %1695, i64* %3, align 8
  br label %block_.L_41b4a6

block_.L_41b586:                                  ; preds = %block_.L_41b4a6
  %1696 = add i64 %1227, -40
  %1697 = add i64 %1267, 4
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = add i32 %1699, -3
  %1701 = icmp ult i32 %1699, 3
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %14, align 1
  %1703 = and i32 %1700, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i32 %1700, %1699
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %27, align 1
  %1712 = icmp eq i32 %1700, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %30, align 1
  %1714 = lshr i32 %1700, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %33, align 1
  %1716 = lshr i32 %1699, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1716
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %39, align 1
  %1721 = icmp ne i8 %1715, 0
  %1722 = xor i1 %1721, %1719
  %1723 = or i1 %1712, %1722
  %.v38 = select i1 %1723, i64 74, i64 10
  %1724 = add i64 %1267, %.v38
  store i64 %1724, i64* %3, align 8
  br i1 %1723, label %block_.L_41b5d0, label %block_41b590

block_41b590:                                     ; preds = %block_.L_41b586
  %1725 = add i64 %1724, ptrtoint (%G_0x39250__rip__type* @G_0x39250__rip_ to i64)
  %1726 = add i64 %1724, 8
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %145, align 1
  store double 0.000000e+00, double* %146, align 1
  %1729 = add i64 %1724, 11
  store i64 %1729, i64* %3, align 8
  %1730 = load i32, i32* %1698, align 4
  %1731 = add i32 %1730, -3
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RAX.i671, align 8
  %1733 = icmp ult i32 %1730, 3
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = and i32 %1731, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  %1740 = xor i32 %1731, %1730
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  store i8 %1743, i8* %27, align 1
  %1744 = icmp eq i32 %1731, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %30, align 1
  %1746 = lshr i32 %1731, 31
  %1747 = trunc i32 %1746 to i8
  store i8 %1747, i8* %33, align 1
  %1748 = lshr i32 %1730, 31
  %1749 = xor i32 %1746, %1748
  %1750 = add nuw nsw i32 %1749, %1748
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %39, align 1
  %1753 = sitofp i32 %1731 to double
  %1754 = bitcast i64* %150 to <2 x i32>*
  %1755 = load <2 x i32>, <2 x i32>* %1754, align 1
  %1756 = bitcast i64 %1728 to double
  %1757 = fdiv double %1753, %1756
  store double %1757, double* %159, align 1
  %1758 = add i64 %1724, 26
  store i64 %1758, i64* %3, align 8
  %1759 = load i64, i64* %1235, align 8
  store i64 %1759, i64* %RCX.i669, align 8
  %1760 = add i64 %1759, 56
  %1761 = add i64 %1724, 31
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to float*
  %1763 = load float, float* %1762, align 4
  %1764 = fpext float %1763 to double
  %1765 = bitcast i64* %525 to <2 x i32>*
  %1766 = load <2 x i32>, <2 x i32>* %1765, align 1
  %1767 = fdiv double %1764, %1756
  store double %1767, double* %839, align 1
  %1768 = bitcast double %1757 to <2 x i32>
  %1769 = extractelement <2 x i32> %1768, i32 0
  store i32 %1769, i32* %112, align 1
  %1770 = extractelement <2 x i32> %1768, i32 1
  store i32 %1770, i32* %114, align 1
  %1771 = extractelement <2 x i32> %1755, i32 0
  store i32 %1771, i32* %115, align 1
  %1772 = extractelement <2 x i32> %1755, i32 1
  store i32 %1772, i32* %117, align 1
  %1773 = bitcast double %1767 to <2 x i32>
  %1774 = extractelement <2 x i32> %1773, i32 0
  store i32 %1774, i32* %500, align 1
  %1775 = extractelement <2 x i32> %1773, i32 1
  store i32 %1775, i32* %154, align 1
  %1776 = extractelement <2 x i32> %1766, i32 0
  store i32 %1776, i32* %155, align 1
  %1777 = extractelement <2 x i32> %1766, i32 1
  store i32 %1777, i32* %157, align 1
  %1778 = add i64 %1724, 170736
  %1779 = add i64 %1724, 46
  %1780 = load i64, i64* %6, align 8
  %1781 = add i64 %1780, -8
  %1782 = inttoptr i64 %1781 to i64*
  store i64 %1779, i64* %1782, align 8
  store i64 %1781, i64* %6, align 8
  store i64 %1778, i64* %3, align 8
  %call2_41b5b9 = tail call %struct.Memory* @sub_445080.IncompleteGamma(%struct.State* nonnull %0, i64 %1778, %struct.Memory* %MEMORY.3)
  %1783 = load i64, i64* %3, align 8
  %1784 = load <2 x i32>, <2 x i32>* %161, align 1
  %1785 = load <2 x i32>, <2 x i32>* %162, align 1
  %.cast15 = bitcast <2 x i32> %1784 to double
  %1786 = fptrunc double %.cast15 to float
  store float %1786, float* %163, align 1
  %1787 = extractelement <2 x i32> %1784, i32 1
  store i32 %1787, i32* %114, align 1
  %1788 = extractelement <2 x i32> %1785, i32 0
  store i32 %1788, i32* %115, align 1
  %1789 = extractelement <2 x i32> %1785, i32 1
  store i32 %1789, i32* %117, align 1
  %1790 = load i64, i64* %RBP.i, align 8
  %1791 = add i64 %1790, -16
  %1792 = add i64 %1783, 8
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RCX.i669, align 8
  %1795 = add i64 %1794, 60
  %1796 = add i64 %1783, 13
  store i64 %1796, i64* %3, align 8
  %1797 = load <2 x float>, <2 x float>* %49, align 1
  %1798 = extractelement <2 x float> %1797, i32 0
  %1799 = inttoptr i64 %1795 to float*
  store float %1798, float* %1799, align 4
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 17
  store i64 %1801, i64* %3, align 8
  br label %block_.L_41b5dc

block_.L_41b5d0:                                  ; preds = %block_.L_41b586
  %1802 = bitcast [32 x %union.VectorReg]* %44 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1802, align 1
  %1803 = add i64 %1724, 7
  store i64 %1803, i64* %3, align 8
  %1804 = load i64, i64* %1235, align 8
  store i64 %1804, i64* %RAX.i671, align 8
  %1805 = add i64 %1804, 60
  %1806 = add i64 %1724, 12
  store i64 %1806, i64* %3, align 8
  %1807 = load <2 x float>, <2 x float>* %49, align 1
  %1808 = extractelement <2 x float> %1807, i32 0
  %1809 = inttoptr i64 %1805 to float*
  store float %1808, float* %1809, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_41b5dc

block_.L_41b5dc:                                  ; preds = %block_.L_41b5d0, %block_41b590
  %1810 = phi i64 [ %.pre29, %block_.L_41b5d0 ], [ %1801, %block_41b590 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_.L_41b5d0 ], [ %call2_41b5b9, %block_41b590 ]
  %1811 = load i64, i64* %RBP.i, align 8
  %1812 = add i64 %1811, -4
  %1813 = add i64 %1810, 7
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  store i32 1, i32* %1814, align 4
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_41b5e3

block_.L_41b5e3:                                  ; preds = %block_.L_41b5dc, %block_41b1ab
  %RAX.i.pre-phi = phi i64* [ %.pre31, %block_.L_41b5dc ], [ %RAX.i688, %block_41b1ab ]
  %1815 = phi i64 [ %.pre30, %block_.L_41b5dc ], [ %109, %block_41b1ab ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_41b5dc ], [ %call2_41b195, %block_41b1ab ]
  %1816 = load i64, i64* %RBP.i, align 8
  %1817 = add i64 %1816, -4
  %1818 = add i64 %1815, 3
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RAX.i.pre-phi, align 8
  %1822 = load i64, i64* %6, align 8
  %1823 = add i64 %1822, 112
  store i64 %1823, i64* %6, align 8
  %1824 = icmp ugt i64 %1822, -113
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %14, align 1
  %1826 = trunc i64 %1823 to i32
  %1827 = and i32 %1826, 255
  %1828 = tail call i32 @llvm.ctpop.i32(i32 %1827)
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = xor i8 %1830, 1
  store i8 %1831, i8* %21, align 1
  %1832 = xor i64 %1822, 16
  %1833 = xor i64 %1832, %1823
  %1834 = lshr i64 %1833, 4
  %1835 = trunc i64 %1834 to i8
  %1836 = and i8 %1835, 1
  store i8 %1836, i8* %27, align 1
  %1837 = icmp eq i64 %1823, 0
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %30, align 1
  %1839 = lshr i64 %1823, 63
  %1840 = trunc i64 %1839 to i8
  store i8 %1840, i8* %33, align 1
  %1841 = lshr i64 %1822, 63
  %1842 = xor i64 %1839, %1841
  %1843 = add nuw nsw i64 %1842, %1839
  %1844 = icmp eq i64 %1843, 2
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %39, align 1
  %1846 = add i64 %1815, 8
  store i64 %1846, i64* %3, align 8
  %1847 = add i64 %1822, 120
  %1848 = inttoptr i64 %1823 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RBP.i, align 8
  store i64 %1847, i64* %6, align 8
  %1850 = add i64 %1815, 9
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1847 to i64*
  %1852 = load i64, i64* %1851, align 8
  store i64 %1852, i64* %3, align 8
  %1853 = add i64 %1822, 128
  store i64 %1853, i64* %6, align 8
  ret %struct.Memory* %MEMORY.6
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_cmpl__0x3e8__0x1c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1000
  %10 = icmp ult i32 %8, 1000
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
define %struct.Memory* @routine_jge_.L_41b1c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jmpq_.L_41b5e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jg_.L_41b26a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x395ff__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x395ff__rip__type* @G_0x395ff__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cvtsi2ssl___rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to float
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 0
  %24 = bitcast i64* %13 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
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
define %struct.Memory* @routine_jmpq_.L_41b1d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x316___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 790, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
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
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_subl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jge_.L_41b356(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41b328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jg_.L_41b489(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x39470__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39470__rip__type* @G_0x39470__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x394b0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x394b0__rip__type* @G_0x394b0__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x39458__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39458__rip__type* @G_0x39458__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x39460__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39460__rip__type* @G_0x39460__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_cvtss2sd__xmm4___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_addsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_subsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_cvtsd2ss__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss__xmm3__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movsd_0x394af__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x394af__rip__type* @G_0x394af__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movaps__xmm5___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm4__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jmpq_.L_41b360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_41b586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3934a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3934a__rip__type* @G_0x3934a__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd___rax__rdx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
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
define %struct.Memory* @routine_jb_.L_41b573(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -5
  %12 = icmp ult i32 %10, 5
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
define %struct.Memory* @routine_jl_.L_41b573(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subss___rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_divss___rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fdiv float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x38__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b578(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b4a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_41b5d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x39250__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39250__rip__type* @G_0x39250__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x38__rcx____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 56
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
define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.IncompleteGamma(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_jmpq_.L_41b5dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
