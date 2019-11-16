; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xb667d__rip__type = type <{ [8 x i8] }>
%G_0xb672c__rip__type = type <{ [4 x i8] }>
%G__0x42cd40_type = type <{ [8 x i8] }>
%G__0x57c705_type = type <{ [8 x i8] }>
%G__0x57c72b_type = type <{ [8 x i8] }>
%G__0x586e29_type = type <{ [8 x i8] }>
%G__0x586e37_type = type <{ [8 x i8] }>
%G__0xb72714_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xb667d__rip_ = global %G_0xb667d__rip__type zeroinitializer
@G_0xb672c__rip_ = global %G_0xb672c__rip__type zeroinitializer
@G__0x42cd40 = global %G__0x42cd40_type zeroinitializer
@G__0x57c705 = global %G__0x57c705_type zeroinitializer
@G__0x57c72b = global %G__0x57c72b_type zeroinitializer
@G__0x586e29 = global %G__0x586e29_type zeroinitializer
@G__0x586e37 = global %G__0x586e37_type zeroinitializer
@G__0xb72714 = global %G__0xb72714_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4e2700.gg_sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @add_marked_intrusions(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i643 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 16, i64* %RAX.i643, align 8
  %EAX.i640 = bitcast %union.anon* %39 to i32*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i641 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 16, i64* %RDX.i641, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i638 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 ptrtoint (%G__0x42cd40_type* @G__0x42cd40 to i64), i64* %RCX.i638, align 8
  %RDI.i635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i635, align 8
  %44 = add i64 %10, 28
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i632 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -12
  %49 = load i32, i32* %ESI.i632, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -20
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 0, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 35672
  store i64 %64, i64* %RDI.i635, align 8
  %65 = icmp ugt i64 %63, -35673
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %14, align 1
  %67 = trunc i64 %64 to i32
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %21, align 1
  %73 = xor i64 %63, 16
  %74 = xor i64 %73, %64
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %26, align 1
  %78 = icmp eq i64 %64, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %29, align 1
  %80 = lshr i64 %64, 63
  %81 = trunc i64 %80 to i8
  store i8 %81, i8* %32, align 1
  %82 = lshr i64 %63, 63
  %83 = xor i64 %80, %82
  %84 = add nuw nsw i64 %83, %80
  %85 = icmp eq i64 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %38, align 1
  %R8.i623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %87 = add i64 %60, 15
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %62, align 8
  store i64 %88, i64* %R8.i623, align 8
  %RSI.i619 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %89 = add i64 %88, 35668
  %90 = add i64 %60, 22
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %RSI.i619, align 8
  %94 = add i64 %60, 745433
  %95 = add i64 %60, 27
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %call2_42c73d = tail call %struct.Memory* @sub_4e2700.gg_sort(%struct.State* %0, i64 %94, %struct.Memory* %2)
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -16
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %105 = bitcast [32 x %union.VectorReg]* %104 to i8*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %107 = bitcast [32 x %union.VectorReg]* %104 to i32*
  %108 = getelementptr inbounds i8, i8* %105, i64 4
  %109 = bitcast i8* %108 to i32*
  %110 = bitcast i64* %106 to i32*
  %111 = getelementptr inbounds i8, i8* %105, i64 12
  %112 = bitcast i8* %111 to i32*
  %113 = bitcast [32 x %union.VectorReg]* %104 to <2 x float>*
  %EDX.i581 = bitcast %union.anon* %40 to i32*
  %114 = bitcast i8* %108 to float*
  %115 = bitcast i64* %106 to float*
  %116 = bitcast i8* %111 to float*
  %AL.i412 = bitcast %union.anon* %39 to i8*
  %CL.i413 = bitcast %union.anon* %41 to i8*
  %SIL.i378 = bitcast %union.anon* %46 to i8*
  %117 = bitcast [32 x %union.VectorReg]* %104 to float*
  %118 = bitcast i64* %106 to <2 x i32>*
  %119 = bitcast [32 x %union.VectorReg]* %104 to double*
  %120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %104, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %121 = bitcast i64* %106 to double*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %123 = bitcast %union.VectorReg* %122 to double*
  %124 = bitcast %union.VectorReg* %122 to i8*
  %125 = bitcast %union.VectorReg* %122 to i32*
  %126 = getelementptr inbounds i8, i8* %124, i64 4
  %127 = bitcast i8* %126 to float*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %129 = bitcast i64* %128 to float*
  %130 = getelementptr inbounds i8, i8* %124, i64 12
  %131 = bitcast i8* %130 to float*
  %.pre = load i64, i64* %3, align 8
  %132 = bitcast [32 x %union.VectorReg]* %104 to <4 x i32>*
  br label %block_.L_42c749

block_.L_42c749:                                  ; preds = %block_.L_42cb88, %entry
  %133 = phi i64 [ %.pre, %entry ], [ %2195, %block_.L_42cb88 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_42c73d, %entry ], [ %MEMORY.14, %block_.L_42cb88 ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -16
  %136 = add i64 %133, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i643, align 8
  %140 = add i64 %134, -8
  %141 = add i64 %133, 7
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RCX.i638, align 8
  %144 = add i64 %143, 35668
  %145 = add i64 %133, 13
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %138, %147
  %149 = icmp ult i32 %138, %147
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %14, align 1
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %21, align 1
  %156 = xor i32 %147, %138
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %26, align 1
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1
  %165 = lshr i32 %138, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %38, align 1
  %172 = icmp ne i8 %164, 0
  %173 = xor i1 %172, %170
  %.v52 = select i1 %173, i64 19, i64 1098
  %174 = add i64 %133, %.v52
  store i64 %174, i64* %3, align 8
  br i1 %173, label %block_42c75c, label %block_.L_42cb93

block_42c75c:                                     ; preds = %block_.L_42c749
  store <4 x i32> zeroinitializer, <4 x i32>* %132, align 1
  %175 = add i64 %134, -28
  %176 = add i64 %174, 8
  store i64 %176, i64* %3, align 8
  %177 = load <2 x float>, <2 x float>* %113, align 1
  %178 = extractelement <2 x float> %177, i32 0
  %179 = inttoptr i64 %175 to float*
  store float %178, float* %179, align 4
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -8
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %181 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 35672
  store i64 %186, i64* %RAX.i643, align 8
  %187 = icmp ugt i64 %185, -35673
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %14, align 1
  %189 = trunc i64 %186 to i32
  %190 = and i32 %189, 255
  %191 = tail call i32 @llvm.ctpop.i32(i32 %190)
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %21, align 1
  %195 = xor i64 %185, 16
  %196 = xor i64 %195, %186
  %197 = lshr i64 %196, 4
  %198 = trunc i64 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %26, align 1
  %200 = icmp eq i64 %186, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %29, align 1
  %202 = lshr i64 %186, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %32, align 1
  %204 = lshr i64 %185, 63
  %205 = xor i64 %202, %204
  %206 = add nuw nsw i64 %205, %202
  %207 = icmp eq i64 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1
  %209 = add i64 %180, -16
  %210 = add i64 %182, 14
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = shl nsw i64 %213, 4
  store i64 %214, i64* %RCX.i638, align 8
  %215 = add i64 %214, %186
  store i64 %215, i64* %RAX.i643, align 8
  %216 = icmp ult i64 %215, %186
  %217 = icmp ult i64 %215, %214
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %14, align 1
  %220 = trunc i64 %215 to i32
  %221 = and i32 %220, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %21, align 1
  %226 = xor i64 %214, %186
  %227 = xor i64 %226, %215
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %26, align 1
  %231 = icmp eq i64 %215, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = lshr i64 %215, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %32, align 1
  %235 = lshr i64 %213, 59
  %236 = and i64 %235, 1
  %237 = xor i64 %233, %202
  %238 = xor i64 %233, %236
  %239 = add nuw nsw i64 %237, %238
  %240 = icmp eq i64 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %38, align 1
  %242 = inttoptr i64 %215 to i32*
  %243 = add i64 %182, 23
  store i64 %243, i64* %3, align 8
  %244 = load i32, i32* %242, align 4
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RDX.i641, align 8
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -24
  %248 = add i64 %182, 26
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  store i32 %244, i32* %249, align 4
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -24
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 4
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i32*
  %255 = load i32, i32* %254, align 4
  store i8 0, i8* %14, align 1
  %256 = and i32 %255, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %261 = icmp eq i32 %255, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %29, align 1
  %263 = lshr i32 %255, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %261, i64 10, i64 239
  %265 = add i64 %252, %.v51
  store i64 %265, i64* %3, align 8
  br i1 %261, label %block_42c788, label %block_.L_42c86d

block_42c788:                                     ; preds = %block_42c75c
  %266 = add i64 %250, -8
  %267 = add i64 %265, 4
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, 35672
  store i64 %270, i64* %RAX.i643, align 8
  %271 = icmp ugt i64 %269, -35673
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %14, align 1
  %273 = trunc i64 %270 to i32
  %274 = and i32 %273, 255
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %21, align 1
  %279 = xor i64 %269, 16
  %280 = xor i64 %279, %270
  %281 = lshr i64 %280, 4
  %282 = trunc i64 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %26, align 1
  %284 = icmp eq i64 %270, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %29, align 1
  %286 = lshr i64 %270, 63
  %287 = trunc i64 %286 to i8
  store i8 %287, i8* %32, align 1
  %288 = lshr i64 %269, 63
  %289 = xor i64 %286, %288
  %290 = add nuw nsw i64 %289, %286
  %291 = icmp eq i64 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %38, align 1
  %293 = add i64 %250, -16
  %294 = add i64 %265, 14
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = shl nsw i64 %297, 4
  store i64 %298, i64* %RCX.i638, align 8
  %299 = add i64 %298, %270
  store i64 %299, i64* %RAX.i643, align 8
  %300 = icmp ult i64 %299, %270
  %301 = icmp ult i64 %299, %298
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  %310 = xor i64 %298, %270
  %311 = xor i64 %310, %299
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %26, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %32, align 1
  %319 = lshr i64 %297, 59
  %320 = and i64 %319, 1
  %321 = xor i64 %317, %286
  %322 = xor i64 %317, %320
  %323 = add nuw nsw i64 %321, %322
  %324 = icmp eq i64 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %38, align 1
  %326 = add i64 %299, 4
  %327 = add i64 %265, 24
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RDI.i635, align 8
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -12
  %333 = add i64 %265, 27
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RSI.i619, align 8
  %337 = add i64 %331, -8
  %338 = add i64 %265, 31
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %340, 35672
  store i64 %341, i64* %RAX.i643, align 8
  %342 = icmp ugt i64 %340, -35673
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = trunc i64 %341 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %21, align 1
  %350 = xor i64 %340, 16
  %351 = xor i64 %350, %341
  %352 = lshr i64 %351, 4
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %26, align 1
  %355 = icmp eq i64 %341, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %29, align 1
  %357 = lshr i64 %341, 63
  %358 = trunc i64 %357 to i8
  store i8 %358, i8* %32, align 1
  %359 = lshr i64 %340, 63
  %360 = xor i64 %357, %359
  %361 = add nuw nsw i64 %360, %357
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %38, align 1
  %364 = add i64 %331, -20
  %365 = add i64 %265, 41
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = shl nsw i64 %368, 4
  store i64 %369, i64* %RCX.i638, align 8
  %370 = add i64 %369, %341
  store i64 %370, i64* %RAX.i643, align 8
  %371 = icmp ult i64 %370, %341
  %372 = icmp ult i64 %370, %369
  %373 = or i1 %371, %372
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %14, align 1
  %375 = trunc i64 %370 to i32
  %376 = and i32 %375, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  %381 = xor i64 %369, %341
  %382 = xor i64 %381, %370
  %383 = lshr i64 %382, 4
  %384 = trunc i64 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %26, align 1
  %386 = icmp eq i64 %370, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %29, align 1
  %388 = lshr i64 %370, 63
  %389 = trunc i64 %388 to i8
  store i8 %389, i8* %32, align 1
  %390 = lshr i64 %368, 59
  %391 = and i64 %390, 1
  %392 = xor i64 %388, %357
  %393 = xor i64 %388, %391
  %394 = add nuw nsw i64 %392, %393
  %395 = icmp eq i64 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1
  %397 = add i64 %370, 8
  %398 = add i64 %265, 53
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  store i32 %400, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -8
  %403 = add i64 %265, 57
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  %406 = add i64 %405, 35672
  store i64 %406, i64* %RAX.i643, align 8
  %407 = icmp ugt i64 %405, -35673
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = trunc i64 %406 to i32
  %410 = and i32 %409, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %21, align 1
  %415 = xor i64 %405, 16
  %416 = xor i64 %415, %406
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %26, align 1
  %420 = icmp eq i64 %406, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %29, align 1
  %422 = lshr i64 %406, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %32, align 1
  %424 = lshr i64 %405, 63
  %425 = xor i64 %422, %424
  %426 = add nuw nsw i64 %425, %422
  %427 = icmp eq i64 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %38, align 1
  %429 = add i64 %401, -20
  %430 = add i64 %265, 67
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sext i32 %432 to i64
  %434 = shl nsw i64 %433, 4
  store i64 %434, i64* %RCX.i638, align 8
  %435 = add i64 %434, %406
  store i64 %435, i64* %RAX.i643, align 8
  %436 = icmp ult i64 %435, %406
  %437 = icmp ult i64 %435, %434
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = trunc i64 %435 to i32
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1
  %446 = xor i64 %434, %406
  %447 = xor i64 %446, %435
  %448 = lshr i64 %447, 4
  %449 = trunc i64 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %26, align 1
  %451 = icmp eq i64 %435, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %29, align 1
  %453 = lshr i64 %435, 63
  %454 = trunc i64 %453 to i8
  store i8 %454, i8* %32, align 1
  %455 = lshr i64 %433, 59
  %456 = and i64 %455, 1
  %457 = xor i64 %453, %422
  %458 = xor i64 %453, %456
  %459 = add nuw nsw i64 %457, %458
  %460 = icmp eq i64 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %38, align 1
  %462 = add i64 %435, 12
  %463 = add i64 %265, 79
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  store i32 %465, i32* %125, align 1
  store float 0.000000e+00, float* %127, align 1
  store float 0.000000e+00, float* %129, align 1
  store float 0.000000e+00, float* %131, align 1
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -8
  %468 = add i64 %265, 83
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RDX.i641, align 8
  %471 = add i64 %265, 1640
  %472 = add i64 %265, 88
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, -8
  %475 = inttoptr i64 %474 to i64*
  store i64 %472, i64* %475, align 8
  store i64 %474, i64* %6, align 8
  store i64 %471, i64* %3, align 8
  %call2_42c7db = tail call %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* nonnull %0, i64 %471, %struct.Memory* %MEMORY.0)
  %476 = load i64, i64* %3, align 8
  %477 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %478 = and i32 %477, 1
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RSI.i619, align 8
  store i8 0, i8* %14, align 1
  %480 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %481 = trunc i32 %480 to i8
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %483 = trunc i32 %478 to i8
  %484 = xor i8 %483, 1
  store i8 %484, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %485 = icmp eq i8 %484, 0
  %.v61 = select i1 %485, i64 24, i64 19
  %486 = add i64 %476, %.v61
  store i64 %486, i64* %3, align 8
  br i1 %485, label %block_.L_42c7f8, label %block_42c7f3

block_42c7f3:                                     ; preds = %block_42c788
  %487 = add i64 %486, 108
  store i64 %487, i64* %3, align 8
  br label %block_.L_42c85f

block_.L_42c7f8:                                  ; preds = %block_42c788
  store i64 ptrtoint (%G__0x57c705_type* @G__0x57c705 to i64), i64* %RDI.i635, align 8
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX.i643, align 8
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX.i638, align 8
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -12
  %490 = add i64 %486, 34
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, -2
  %494 = icmp ult i32 %492, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %14, align 1
  %496 = and i32 %493, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i32 %493, %492
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %26, align 1
  %505 = icmp eq i32 %493, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %29, align 1
  %507 = lshr i32 %493, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %32, align 1
  %509 = lshr i32 %492, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %509
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %38, align 1
  %514 = select i1 %505, i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64)
  store i64 %514, i64* %RAX.i643, align 8
  %515 = add i64 %488, -8
  %516 = add i64 %486, 42
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  %519 = add i64 %518, 35672
  store i64 %519, i64* %RCX.i638, align 8
  %520 = icmp ugt i64 %518, -35673
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %14, align 1
  %522 = trunc i64 %519 to i32
  %523 = and i32 %522, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  %528 = xor i64 %518, 16
  %529 = xor i64 %528, %519
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %26, align 1
  %533 = icmp eq i64 %519, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %29, align 1
  %535 = lshr i64 %519, 63
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %32, align 1
  %537 = lshr i64 %518, 63
  %538 = xor i64 %535, %537
  %539 = add nuw nsw i64 %538, %535
  %540 = icmp eq i64 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %38, align 1
  %542 = add i64 %488, -20
  %543 = add i64 %486, 53
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = sext i32 %545 to i64
  %547 = shl nsw i64 %546, 4
  store i64 %547, i64* %RDX.i641, align 8
  %548 = add i64 %547, %519
  store i64 %548, i64* %RCX.i638, align 8
  %549 = icmp ult i64 %548, %519
  %550 = icmp ult i64 %548, %547
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
  %559 = xor i64 %547, %519
  %560 = xor i64 %559, %548
  %561 = lshr i64 %560, 4
  %562 = trunc i64 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %26, align 1
  %564 = icmp eq i64 %548, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %29, align 1
  %566 = lshr i64 %548, 63
  %567 = trunc i64 %566 to i8
  store i8 %567, i8* %32, align 1
  %568 = lshr i64 %546, 59
  %569 = and i64 %568, 1
  %570 = xor i64 %566, %535
  %571 = xor i64 %566, %569
  %572 = add nuw nsw i64 %570, %571
  %573 = icmp eq i64 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %38, align 1
  %575 = add i64 %548, 4
  %576 = add i64 %486, 63
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RDX.i641, align 8
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -8
  %582 = add i64 %486, 67
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  %584 = load i64, i64* %583, align 8
  %585 = add i64 %584, 35672
  store i64 %585, i64* %RCX.i638, align 8
  %586 = icmp ugt i64 %584, -35673
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %14, align 1
  %588 = trunc i64 %585 to i32
  %589 = and i32 %588, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  %594 = xor i64 %584, 16
  %595 = xor i64 %594, %585
  %596 = lshr i64 %595, 4
  %597 = trunc i64 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %26, align 1
  %599 = icmp eq i64 %585, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %29, align 1
  %601 = lshr i64 %585, 63
  %602 = trunc i64 %601 to i8
  store i8 %602, i8* %32, align 1
  %603 = lshr i64 %584, 63
  %604 = xor i64 %601, %603
  %605 = add nuw nsw i64 %604, %601
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %38, align 1
  %608 = add i64 %580, -20
  %609 = add i64 %486, 78
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  %613 = shl nsw i64 %612, 4
  store i64 %613, i64* %RSI.i619, align 8
  %614 = add i64 %613, %585
  store i64 %614, i64* %RCX.i638, align 8
  %615 = icmp ult i64 %614, %585
  %616 = icmp ult i64 %614, %613
  %617 = or i1 %615, %616
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = trunc i64 %614 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %625 = xor i64 %613, %585
  %626 = xor i64 %625, %614
  %627 = lshr i64 %626, 4
  %628 = trunc i64 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %26, align 1
  %630 = icmp eq i64 %614, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %29, align 1
  %632 = lshr i64 %614, 63
  %633 = trunc i64 %632 to i8
  store i8 %633, i8* %32, align 1
  %634 = lshr i64 %612, 59
  %635 = and i64 %634, 1
  %636 = xor i64 %632, %601
  %637 = xor i64 %632, %635
  %638 = add nuw nsw i64 %636, %637
  %639 = icmp eq i64 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %38, align 1
  %641 = add i64 %614, 8
  %642 = add i64 %486, 90
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to float*
  %644 = load float, float* %643, align 4
  %645 = fpext float %644 to double
  store double %645, double* %119, align 1
  %646 = load i64, i64* %RAX.i643, align 8
  store i64 %646, i64* %RSI.i619, align 8
  store i8 1, i8* %AL.i412, align 1
  %647 = add i64 %486, 153016
  %648 = add i64 %486, 100
  %649 = load i64, i64* %6, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %6, align 8
  store i64 %647, i64* %3, align 8
  %call2_42c857 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %647, %struct.Memory* %MEMORY.0)
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -44
  %654 = load i32, i32* %EAX.i640, align 4
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 3
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %653 to i32*
  store i32 %654, i32* %657, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_42c85f

block_.L_42c85f:                                  ; preds = %block_.L_42c7f8, %block_42c7f3
  %658 = phi i64 [ %.pre37, %block_.L_42c7f8 ], [ %487, %block_42c7f3 ]
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -16
  %661 = add i64 %658, 3
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = add i32 %663, 1
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RAX.i643, align 8
  %666 = icmp eq i32 %663, -1
  %667 = icmp eq i32 %664, 0
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %14, align 1
  %670 = and i32 %664, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  %675 = xor i32 %664, %663
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = zext i1 %667 to i8
  store i8 %679, i8* %29, align 1
  %680 = lshr i32 %664, 31
  %681 = trunc i32 %680 to i8
  store i8 %681, i8* %32, align 1
  %682 = lshr i32 %663, 31
  %683 = xor i32 %680, %682
  %684 = add nuw nsw i32 %683, %680
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %38, align 1
  %687 = add i64 %659, -20
  %688 = add i64 %658, 9
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 %664, i32* %689, align 4
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 800
  %.pre46 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42cb88

block_.L_42c86d:                                  ; preds = %block_42c75c
  %692 = add i64 %250, -12
  %693 = add i64 %265, 4
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
  %.v = select i1 %708, i64 10, i64 37
  %717 = add i64 %265, %.v
  %718 = add i64 %250, -8
  %719 = add i64 %717, 4
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RAX.i643, align 8
  %722 = add i64 %717, 8
  store i64 %722, i64* %3, align 8
  %723 = load i32, i32* %254, align 4
  %724 = sext i32 %723 to i64
  store i64 %724, i64* %RCX.i638, align 8
  %725 = shl nsw i64 %724, 2
  br i1 %708, label %block_42c877, label %block_.L_42c892

block_42c877:                                     ; preds = %block_.L_42c86d
  %726 = add i64 %721, 5200
  %727 = add i64 %726, %725
  %728 = add i64 %717, 17
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %731 = add i64 %250, -36
  %732 = add i64 %717, 22
  store i64 %732, i64* %3, align 8
  %733 = load <2 x float>, <2 x float>* %113, align 1
  %734 = extractelement <2 x float> %733, i32 0
  %735 = inttoptr i64 %731 to float*
  store float %734, float* %735, align 4
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 27
  store i64 %737, i64* %3, align 8
  br label %block_.L_42c8a8

block_.L_42c892:                                  ; preds = %block_.L_42c86d
  %738 = add i64 %721, 3600
  %739 = add i64 %738, %725
  %740 = add i64 %717, 17
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  store i32 %742, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %743 = add i64 %250, -36
  %744 = add i64 %717, 22
  store i64 %744, i64* %3, align 8
  %745 = load <2 x float>, <2 x float>* %113, align 1
  %746 = extractelement <2 x float> %745, i32 0
  %747 = inttoptr i64 %743 to float*
  store float %746, float* %747, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_42c8a8

block_.L_42c8a8:                                  ; preds = %block_.L_42c892, %block_42c877
  %748 = phi i64 [ %.pre38, %block_.L_42c892 ], [ %737, %block_42c877 ]
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -16
  %751 = add i64 %748, 3
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i643, align 8
  %755 = add i64 %749, -20
  %756 = add i64 %748, 6
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  store i32 %753, i32* %757, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_42c8ae

block_.L_42c8ae:                                  ; preds = %block_.L_42c965, %block_.L_42c8a8
  %758 = phi i64 [ %1252, %block_.L_42c965 ], [ %.pre39, %block_.L_42c8a8 ]
  store i64 0, i64* %RAX.i643, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i413, align 1
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -20
  %761 = add i64 %758, 7
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i643, align 8
  %765 = add i64 %759, -8
  %766 = add i64 %758, 11
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RDX.i641, align 8
  %769 = add i64 %768, 35668
  %770 = add i64 %758, 17
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sub i32 %763, %772
  %774 = icmp ult i32 %763, %772
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %14, align 1
  %776 = and i32 %773, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %21, align 1
  %781 = xor i32 %772, %763
  %782 = xor i32 %781, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %773, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i32 %763, 31
  %791 = lshr i32 %772, 31
  %792 = xor i32 %791, %790
  %793 = xor i32 %788, %790
  %794 = add nuw nsw i32 %793, %792
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %38, align 1
  %797 = add i64 %759, -45
  %798 = add i64 %758, 20
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i8*
  store i8 0, i8* %799, align 1
  %800 = load i64, i64* %3, align 8
  %801 = add i64 %800, 40
  %802 = add i64 %800, 6
  %803 = load i8, i8* %32, align 1
  %804 = icmp ne i8 %803, 0
  %805 = load i8, i8* %38, align 1
  %806 = icmp ne i8 %805, 0
  %807 = xor i1 %804, %806
  %808 = select i1 %807, i64 %802, i64 %801
  store i64 %808, i64* %3, align 8
  br i1 %807, label %block_42c8c8, label %block_.L_42c8ea

block_42c8c8:                                     ; preds = %block_.L_42c8ae
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -8
  %811 = add i64 %808, 4
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  %814 = add i64 %813, 35672
  store i64 %814, i64* %RAX.i643, align 8
  %815 = icmp ugt i64 %813, -35673
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = trunc i64 %814 to i32
  %818 = and i32 %817, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i64 %813, 16
  %824 = xor i64 %823, %814
  %825 = lshr i64 %824, 4
  %826 = trunc i64 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %26, align 1
  %828 = icmp eq i64 %814, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %29, align 1
  %830 = lshr i64 %814, 63
  %831 = trunc i64 %830 to i8
  store i8 %831, i8* %32, align 1
  %832 = lshr i64 %813, 63
  %833 = xor i64 %830, %832
  %834 = add nuw nsw i64 %833, %830
  %835 = icmp eq i64 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %38, align 1
  %837 = add i64 %809, -20
  %838 = add i64 %808, 14
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = sext i32 %840 to i64
  %842 = shl nsw i64 %841, 4
  store i64 %842, i64* %RCX.i638, align 8
  %843 = add i64 %842, %814
  store i64 %843, i64* %RAX.i643, align 8
  %844 = icmp ult i64 %843, %814
  %845 = icmp ult i64 %843, %842
  %846 = or i1 %844, %845
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %14, align 1
  %848 = trunc i64 %843 to i32
  %849 = and i32 %848, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %21, align 1
  %854 = xor i64 %842, %814
  %855 = xor i64 %854, %843
  %856 = lshr i64 %855, 4
  %857 = trunc i64 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %26, align 1
  %859 = icmp eq i64 %843, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %29, align 1
  %861 = lshr i64 %843, 63
  %862 = trunc i64 %861 to i8
  store i8 %862, i8* %32, align 1
  %863 = lshr i64 %841, 59
  %864 = and i64 %863, 1
  %865 = xor i64 %861, %830
  %866 = xor i64 %861, %864
  %867 = add nuw nsw i64 %865, %866
  %868 = icmp eq i64 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %38, align 1
  %870 = inttoptr i64 %843 to i32*
  %871 = add i64 %808, 23
  store i64 %871, i64* %3, align 8
  %872 = load i32, i32* %870, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RDX.i641, align 8
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -24
  %876 = add i64 %808, 26
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = sub i32 %872, %878
  %880 = icmp ult i32 %872, %878
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %14, align 1
  %882 = and i32 %879, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i32 %878, %872
  %888 = xor i32 %887, %879
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %26, align 1
  %892 = icmp eq i32 %879, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %29, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %32, align 1
  %896 = lshr i32 %872, 31
  %897 = lshr i32 %878, 31
  %898 = xor i32 %897, %896
  %899 = xor i32 %894, %896
  %900 = add nuw nsw i32 %899, %898
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %38, align 1
  store i8 %893, i8* %SIL.i378, align 1
  %903 = add i64 %874, -45
  %904 = add i64 %808, 34
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i8*
  store i8 %893, i8* %905, align 1
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_42c8ea

block_.L_42c8ea:                                  ; preds = %block_.L_42c8ae, %block_42c8c8
  %906 = phi i64 [ %801, %block_.L_42c8ae ], [ %.pre40, %block_42c8c8 ]
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -45
  %909 = add i64 %906, 3
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i8*
  %911 = load i8, i8* %910, align 1
  store i8 %911, i8* %AL.i412, align 1
  %912 = and i8 %911, 1
  store i8 0, i8* %14, align 1
  %913 = zext i8 %912 to i32
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i8 %912, 1
  store i8 %917, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %918 = icmp eq i8 %917, 0
  %.v53 = select i1 %918, i64 16, i64 11
  %919 = add i64 %906, %.v53
  store i64 %919, i64* %3, align 8
  br i1 %918, label %block_.L_42c8fa, label %block_42c8f5

block_42c8f5:                                     ; preds = %block_.L_42c8ea
  store i64 ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64), i64* %RAX.i643, align 8
  %920 = add i64 %907, -8
  %921 = add i64 %919, 145
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i64*
  %923 = load i64, i64* %922, align 8
  %924 = sub i64 %923, ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64)
  %925 = icmp ult i64 %923, ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64)
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %14, align 1
  %927 = trunc i64 %924 to i32
  %928 = and i32 %927, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = xor i64 %923, ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64)
  %934 = xor i64 %933, %924
  %935 = lshr i64 %934, 4
  %936 = trunc i64 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %26, align 1
  %938 = icmp eq i64 %924, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %29, align 1
  %940 = lshr i64 %924, 63
  %941 = trunc i64 %940 to i8
  store i8 %941, i8* %32, align 1
  %942 = lshr i64 %923, 63
  %943 = xor i64 %942, lshr (i64 ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64), i64 63)
  %944 = xor i64 %940, %942
  %945 = add nuw nsw i64 %944, %943
  %946 = icmp eq i64 %945, 2
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %38, align 1
  %.v54 = select i1 %938, i64 151, i64 166
  %948 = add i64 %919, %.v54
  store i64 %948, i64* %3, align 8
  br i1 %938, label %block_42c98c, label %block_.L_42c99b

block_.L_42c8fa:                                  ; preds = %block_.L_42c8ea
  %949 = add i64 %907, -20
  %950 = add i64 %919, 3
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RAX.i643, align 8
  %954 = add i64 %907, -16
  %955 = add i64 %919, 6
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = sub i32 %952, %957
  %959 = icmp ult i32 %952, %957
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %14, align 1
  %961 = and i32 %958, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  %966 = xor i32 %957, %952
  %967 = xor i32 %966, %958
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %26, align 1
  %971 = icmp eq i32 %958, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %29, align 1
  %973 = lshr i32 %958, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %32, align 1
  %975 = lshr i32 %952, 31
  %976 = lshr i32 %957, 31
  %977 = xor i32 %976, %975
  %978 = xor i32 %973, %975
  %979 = add nuw nsw i32 %978, %977
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %38, align 1
  %.v59 = select i1 %971, i64 71, i64 12
  %982 = add i64 %919, %.v59
  store i64 %982, i64* %3, align 8
  br i1 %971, label %block_.L_42c941, label %block_42c906

block_42c906:                                     ; preds = %block_.L_42c8fa
  %983 = add i64 %907, -8
  %984 = add i64 %982, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  %987 = add i64 %986, 35672
  store i64 %987, i64* %RAX.i643, align 8
  %988 = icmp ugt i64 %986, -35673
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %14, align 1
  %990 = trunc i64 %987 to i32
  %991 = and i32 %990, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  %996 = xor i64 %986, 16
  %997 = xor i64 %996, %987
  %998 = lshr i64 %997, 4
  %999 = trunc i64 %998 to i8
  %1000 = and i8 %999, 1
  store i8 %1000, i8* %26, align 1
  %1001 = icmp eq i64 %987, 0
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %29, align 1
  %1003 = lshr i64 %987, 63
  %1004 = trunc i64 %1003 to i8
  store i8 %1004, i8* %32, align 1
  %1005 = lshr i64 %986, 63
  %1006 = xor i64 %1003, %1005
  %1007 = add nuw nsw i64 %1006, %1003
  %1008 = icmp eq i64 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %38, align 1
  %1010 = add i64 %982, 14
  store i64 %1010, i64* %3, align 8
  %1011 = load i32, i32* %951, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = shl nsw i64 %1012, 4
  store i64 %1013, i64* %RCX.i638, align 8
  %1014 = add i64 %1013, %987
  store i64 %1014, i64* %RAX.i643, align 8
  %1015 = icmp ult i64 %1014, %987
  %1016 = icmp ult i64 %1014, %1013
  %1017 = or i1 %1015, %1016
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %14, align 1
  %1019 = trunc i64 %1014 to i32
  %1020 = and i32 %1019, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i64 %1013, %987
  %1026 = xor i64 %1025, %1014
  %1027 = lshr i64 %1026, 4
  %1028 = trunc i64 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %26, align 1
  %1030 = icmp eq i64 %1014, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %29, align 1
  %1032 = lshr i64 %1014, 63
  %1033 = trunc i64 %1032 to i8
  store i8 %1033, i8* %32, align 1
  %1034 = lshr i64 %1012, 59
  %1035 = and i64 %1034, 1
  %1036 = xor i64 %1032, %1003
  %1037 = xor i64 %1032, %1035
  %1038 = add nuw nsw i64 %1036, %1037
  %1039 = icmp eq i64 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %38, align 1
  %1041 = add i64 %1014, 4
  %1042 = add i64 %982, 24
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RDX.i641, align 8
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -8
  %1048 = add i64 %982, 28
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  %1051 = add i64 %1050, 35672
  store i64 %1051, i64* %RAX.i643, align 8
  %1052 = icmp ugt i64 %1050, -35673
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %14, align 1
  %1054 = trunc i64 %1051 to i32
  %1055 = and i32 %1054, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %21, align 1
  %1060 = xor i64 %1050, 16
  %1061 = xor i64 %1060, %1051
  %1062 = lshr i64 %1061, 4
  %1063 = trunc i64 %1062 to i8
  %1064 = and i8 %1063, 1
  store i8 %1064, i8* %26, align 1
  %1065 = icmp eq i64 %1051, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %29, align 1
  %1067 = lshr i64 %1051, 63
  %1068 = trunc i64 %1067 to i8
  store i8 %1068, i8* %32, align 1
  %1069 = lshr i64 %1050, 63
  %1070 = xor i64 %1067, %1069
  %1071 = add nuw nsw i64 %1070, %1067
  %1072 = icmp eq i64 %1071, 2
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %38, align 1
  %1074 = add i64 %1046, -20
  %1075 = add i64 %982, 37
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1077, -1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RSI.i619, align 8
  %1080 = sext i32 %1078 to i64
  %1081 = shl nsw i64 %1080, 4
  store i64 %1081, i64* %RCX.i638, align 8
  %1082 = add i64 %1081, %1051
  store i64 %1082, i64* %RAX.i643, align 8
  %1083 = icmp ult i64 %1082, %1051
  %1084 = icmp ult i64 %1082, %1081
  %1085 = or i1 %1083, %1084
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %14, align 1
  %1087 = trunc i64 %1082 to i32
  %1088 = and i32 %1087, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  %1093 = xor i64 %1081, %1051
  %1094 = xor i64 %1093, %1082
  %1095 = lshr i64 %1094, 4
  %1096 = trunc i64 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %26, align 1
  %1098 = icmp eq i64 %1082, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %29, align 1
  %1100 = lshr i64 %1082, 63
  %1101 = trunc i64 %1100 to i8
  store i8 %1101, i8* %32, align 1
  %1102 = lshr i64 %1080, 59
  %1103 = and i64 %1102, 1
  %1104 = xor i64 %1100, %1067
  %1105 = xor i64 %1100, %1103
  %1106 = add nuw nsw i64 %1104, %1105
  %1107 = icmp eq i64 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %38, align 1
  %1109 = load i32, i32* %EDX.i581, align 4
  %1110 = add i64 %1082, 4
  %1111 = add i64 %982, 53
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sub i32 %1109, %1113
  %1115 = icmp ult i32 %1109, %1113
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %14, align 1
  %1117 = and i32 %1114, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i32 %1113, %1109
  %1123 = xor i32 %1122, %1114
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  store i8 %1126, i8* %26, align 1
  %1127 = icmp eq i32 %1114, 0
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %29, align 1
  %1129 = lshr i32 %1114, 31
  %1130 = trunc i32 %1129 to i8
  store i8 %1130, i8* %32, align 1
  %1131 = lshr i32 %1109, 31
  %1132 = lshr i32 %1113, 31
  %1133 = xor i32 %1132, %1131
  %1134 = xor i32 %1129, %1131
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %38, align 1
  %.v60 = select i1 %1127, i64 95, i64 59
  %1138 = add i64 %982, %.v60
  store i64 %1138, i64* %3, align 8
  br i1 %1127, label %block_.L_42c965, label %block_42c906.block_.L_42c941_crit_edge

block_42c906.block_.L_42c941_crit_edge:           ; preds = %block_42c906
  %.pre49 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42c941

block_.L_42c941:                                  ; preds = %block_42c906.block_.L_42c941_crit_edge, %block_.L_42c8fa
  %1139 = phi i64 [ %1138, %block_42c906.block_.L_42c941_crit_edge ], [ %982, %block_.L_42c8fa ]
  %1140 = phi i64 [ %.pre49, %block_42c906.block_.L_42c941_crit_edge ], [ %907, %block_.L_42c8fa ]
  %1141 = add i64 %1140, -8
  %1142 = add i64 %1139, 4
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  %1145 = add i64 %1144, 35672
  store i64 %1145, i64* %RAX.i643, align 8
  %1146 = icmp ugt i64 %1144, -35673
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %14, align 1
  %1148 = trunc i64 %1145 to i32
  %1149 = and i32 %1148, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  %1154 = xor i64 %1144, 16
  %1155 = xor i64 %1154, %1145
  %1156 = lshr i64 %1155, 4
  %1157 = trunc i64 %1156 to i8
  %1158 = and i8 %1157, 1
  store i8 %1158, i8* %26, align 1
  %1159 = icmp eq i64 %1145, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %29, align 1
  %1161 = lshr i64 %1145, 63
  %1162 = trunc i64 %1161 to i8
  store i8 %1162, i8* %32, align 1
  %1163 = lshr i64 %1144, 63
  %1164 = xor i64 %1161, %1163
  %1165 = add nuw nsw i64 %1164, %1161
  %1166 = icmp eq i64 %1165, 2
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %38, align 1
  %1168 = add i64 %1140, -20
  %1169 = add i64 %1139, 14
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sext i32 %1171 to i64
  %1173 = shl nsw i64 %1172, 4
  store i64 %1173, i64* %RCX.i638, align 8
  %1174 = add i64 %1173, %1145
  store i64 %1174, i64* %RAX.i643, align 8
  %1175 = icmp ult i64 %1174, %1145
  %1176 = icmp ult i64 %1174, %1173
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = trunc i64 %1174 to i32
  %1180 = and i32 %1179, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %21, align 1
  %1185 = xor i64 %1173, %1145
  %1186 = xor i64 %1185, %1174
  %1187 = lshr i64 %1186, 4
  %1188 = trunc i64 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %26, align 1
  %1190 = icmp eq i64 %1174, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i64 %1174, 63
  %1193 = trunc i64 %1192 to i8
  store i8 %1193, i8* %32, align 1
  %1194 = lshr i64 %1172, 59
  %1195 = and i64 %1194, 1
  %1196 = xor i64 %1192, %1161
  %1197 = xor i64 %1192, %1195
  %1198 = add nuw nsw i64 %1196, %1197
  %1199 = icmp eq i64 %1198, 2
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %38, align 1
  %1201 = add i64 %1174, 8
  %1202 = add i64 %1139, 26
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  store i32 %1204, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -28
  %1207 = add i64 %1139, 31
  store i64 %1207, i64* %3, align 8
  %1208 = load <2 x float>, <2 x float>* %113, align 1
  %1209 = load <2 x i32>, <2 x i32>* %118, align 1
  %1210 = inttoptr i64 %1206 to float*
  %1211 = load float, float* %1210, align 4
  %1212 = extractelement <2 x float> %1208, i32 0
  %1213 = fadd float %1212, %1211
  store float %1213, float* %117, align 1
  %1214 = bitcast <2 x float> %1208 to <2 x i32>
  %1215 = extractelement <2 x i32> %1214, i32 1
  store i32 %1215, i32* %109, align 1
  %1216 = extractelement <2 x i32> %1209, i32 0
  store i32 %1216, i32* %110, align 1
  %1217 = extractelement <2 x i32> %1209, i32 1
  store i32 %1217, i32* %112, align 1
  %1218 = add i64 %1139, 36
  store i64 %1218, i64* %3, align 8
  %1219 = load <2 x float>, <2 x float>* %113, align 1
  %1220 = extractelement <2 x float> %1219, i32 0
  store float %1220, float* %1210, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_42c965

block_.L_42c965:                                  ; preds = %block_.L_42c941, %block_42c906
  %1221 = phi i64 [ %.pre50, %block_.L_42c941 ], [ %1138, %block_42c906 ]
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -20
  %1224 = add i64 %1221, 8
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = add i32 %1226, 1
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX.i643, align 8
  %1229 = icmp eq i32 %1226, -1
  %1230 = icmp eq i32 %1227, 0
  %1231 = or i1 %1229, %1230
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %14, align 1
  %1233 = and i32 %1227, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  %1238 = xor i32 %1227, %1226
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = zext i1 %1230 to i8
  store i8 %1242, i8* %29, align 1
  %1243 = lshr i32 %1227, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %32, align 1
  %1245 = lshr i32 %1226, 31
  %1246 = xor i32 %1243, %1245
  %1247 = add nuw nsw i32 %1246, %1243
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %38, align 1
  %1250 = add i64 %1221, 14
  store i64 %1250, i64* %3, align 8
  store i32 %1227, i32* %1225, align 4
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, -197
  store i64 %1252, i64* %3, align 8
  br label %block_.L_42c8ae

block_42c98c:                                     ; preds = %block_42c8f5
  %1253 = add i64 %907, -36
  %1254 = add i64 %948, 5
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  store i32 %1256, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1257 = add i64 %907, -40
  %1258 = add i64 %948, 10
  store i64 %1258, i64* %3, align 8
  %1259 = load <2 x float>, <2 x float>* %113, align 1
  %1260 = extractelement <2 x float> %1259, i32 0
  %1261 = inttoptr i64 %1257 to float*
  store float %1260, float* %1261, align 4
  %1262 = load i64, i64* %3, align 8
  %1263 = add i64 %1262, 31
  store i64 %1263, i64* %3, align 8
  br label %block_.L_42c9b5

block_.L_42c99b:                                  ; preds = %block_42c8f5
  %1264 = add i64 %948, ptrtoint (%G_0xb667d__rip__type* @G_0xb667d__rip_ to i64)
  %1265 = add i64 %948, 8
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i64*
  %1267 = load i64, i64* %1266, align 8
  store i64 %1267, i64* %120, align 1
  store double 0.000000e+00, double* %121, align 1
  %1268 = add i64 %907, -36
  %1269 = add i64 %948, 13
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to float*
  %1271 = load float, float* %1270, align 4
  %1272 = fpext float %1271 to double
  store double %1272, double* %123, align 1
  %1273 = bitcast i64 %1267 to double
  %1274 = fmul double %1272, %1273
  %.cast = bitcast double %1274 to <2 x i32>
  %1275 = fptrunc double %1274 to float
  store float %1275, float* %117, align 1
  %1276 = extractelement <2 x i32> %.cast, i32 1
  store i32 %1276, i32* %109, align 1
  store i32 0, i32* %110, align 1
  store i32 0, i32* %112, align 1
  %1277 = add i64 %907, -40
  %1278 = add i64 %948, 26
  store i64 %1278, i64* %3, align 8
  %1279 = load <2 x float>, <2 x float>* %113, align 1
  %1280 = extractelement <2 x float> %1279, i32 0
  %1281 = inttoptr i64 %1277 to float*
  store float %1280, float* %1281, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_42c9b5

block_.L_42c9b5:                                  ; preds = %block_.L_42c99b, %block_42c98c
  %1282 = phi i64 [ %.pre41, %block_.L_42c99b ], [ %1263, %block_42c98c ]
  %1283 = load i64, i64* %RBP.i, align 8
  %1284 = add i64 %1283, -28
  %1285 = add i64 %1282, 5
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  store i32 %1287, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1288 = add i64 %1283, -40
  %1289 = add i64 %1282, 9
  store i64 %1289, i64* %3, align 8
  %1290 = load <2 x float>, <2 x float>* %113, align 1
  %1291 = extractelement <2 x float> %1290, i32 0
  %1292 = inttoptr i64 %1288 to float*
  %1293 = load float, float* %1292, align 4
  %1294 = fcmp uno float %1291, %1293
  br i1 %1294, label %1295, label %1305

; <label>:1295:                                   ; preds = %block_.L_42c9b5
  %1296 = fadd float %1291, %1293
  %1297 = bitcast float %1296 to i32
  %1298 = and i32 %1297, 2143289344
  %1299 = icmp eq i32 %1298, 2139095040
  %1300 = and i32 %1297, 4194303
  %1301 = icmp ne i32 %1300, 0
  %1302 = and i1 %1299, %1301
  br i1 %1302, label %1303, label %1311

; <label>:1303:                                   ; preds = %1295
  %1304 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1289, %struct.Memory* %MEMORY.0)
  %.pre42 = load i64, i64* %3, align 8
  br label %routine_ucomiss_MINUS0x28__rbp____xmm0.exit

; <label>:1305:                                   ; preds = %block_.L_42c9b5
  %1306 = fcmp ogt float %1291, %1293
  br i1 %1306, label %1311, label %1307

; <label>:1307:                                   ; preds = %1305
  %1308 = fcmp olt float %1291, %1293
  br i1 %1308, label %1311, label %1309

; <label>:1309:                                   ; preds = %1307
  %1310 = fcmp oeq float %1291, %1293
  br i1 %1310, label %1311, label %1315

; <label>:1311:                                   ; preds = %1309, %1307, %1305, %1295
  %1312 = phi i8 [ 0, %1305 ], [ 0, %1307 ], [ 1, %1309 ], [ 1, %1295 ]
  %1313 = phi i8 [ 0, %1305 ], [ 0, %1307 ], [ 0, %1309 ], [ 1, %1295 ]
  %1314 = phi i8 [ 0, %1305 ], [ 1, %1307 ], [ 0, %1309 ], [ 1, %1295 ]
  store i8 %1312, i8* %29, align 1
  store i8 %1313, i8* %21, align 1
  store i8 %1314, i8* %14, align 1
  br label %1315

; <label>:1315:                                   ; preds = %1311, %1309
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x28__rbp____xmm0.exit

routine_ucomiss_MINUS0x28__rbp____xmm0.exit:      ; preds = %1315, %1303
  %1316 = phi i64 [ %.pre42, %1303 ], [ %1289, %1315 ]
  %1317 = phi %struct.Memory* [ %1304, %1303 ], [ %MEMORY.0, %1315 ]
  %1318 = load i8, i8* %14, align 1
  %1319 = load i8, i8* %29, align 1
  %1320 = or i8 %1319, %1318
  %1321 = icmp ne i8 %1320, 0
  %.v66 = select i1 %1321, i64 26, i64 6
  %1322 = add i64 %1316, %.v66
  store i64 %1322, i64* %3, align 8
  br i1 %1321, label %block_.L_42c9d8, label %block_42c9c4

block_42c9c4:                                     ; preds = %routine_ucomiss_MINUS0x28__rbp____xmm0.exit
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -40
  %1325 = add i64 %1322, 5
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  store i32 %1327, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1328 = add i64 %1323, -28
  %1329 = add i64 %1322, 10
  store i64 %1329, i64* %3, align 8
  %1330 = load <2 x float>, <2 x float>* %113, align 1
  %1331 = load <2 x i32>, <2 x i32>* %118, align 1
  %1332 = inttoptr i64 %1328 to float*
  %1333 = load float, float* %1332, align 4
  %1334 = extractelement <2 x float> %1330, i32 0
  %1335 = fdiv float %1334, %1333
  store float %1335, float* %117, align 1
  %1336 = bitcast <2 x float> %1330 to <2 x i32>
  %1337 = extractelement <2 x i32> %1336, i32 1
  store i32 %1337, i32* %109, align 1
  %1338 = extractelement <2 x i32> %1331, i32 0
  store i32 %1338, i32* %110, align 1
  %1339 = extractelement <2 x i32> %1331, i32 1
  store i32 %1339, i32* %112, align 1
  %1340 = add i64 %1323, -32
  %1341 = add i64 %1322, 15
  store i64 %1341, i64* %3, align 8
  %1342 = load <2 x float>, <2 x float>* %113, align 1
  %1343 = extractelement <2 x float> %1342, i32 0
  %1344 = inttoptr i64 %1340 to float*
  store float %1343, float* %1344, align 4
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 18
  store i64 %1346, i64* %3, align 8
  br label %block_.L_42c9e5

block_.L_42c9d8:                                  ; preds = %routine_ucomiss_MINUS0x28__rbp____xmm0.exit
  %1347 = add i64 %1322, ptrtoint (%G_0xb672c__rip__type* @G_0xb672c__rip_ to i64)
  %1348 = add i64 %1322, 8
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  store i32 %1350, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1351 = load i64, i64* %RBP.i, align 8
  %1352 = add i64 %1351, -32
  %1353 = add i64 %1322, 13
  store i64 %1353, i64* %3, align 8
  %1354 = load <2 x float>, <2 x float>* %113, align 1
  %1355 = extractelement <2 x float> %1354, i32 0
  %1356 = inttoptr i64 %1352 to float*
  store float %1355, float* %1356, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_42c9e5

block_.L_42c9e5:                                  ; preds = %block_.L_42c9d8, %block_42c9c4
  %1357 = phi i64 [ %.pre43, %block_.L_42c9d8 ], [ %1346, %block_42c9c4 ]
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -16
  %1360 = add i64 %1357, 3
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i643, align 8
  %1364 = add i64 %1358, -20
  %1365 = add i64 %1357, 6
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  store i32 %1362, i32* %1366, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_42c9eb

block_.L_42c9eb:                                  ; preds = %block_.L_42cb70, %block_.L_42c9e5
  %1367 = phi i64 [ %.pre44, %block_.L_42c9e5 ], [ %2184, %block_.L_42cb70 ]
  store i64 0, i64* %RAX.i643, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i413, align 1
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -20
  %1370 = add i64 %1367, 7
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX.i643, align 8
  %1374 = add i64 %1368, -8
  %1375 = add i64 %1367, 11
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i64*
  %1377 = load i64, i64* %1376, align 8
  store i64 %1377, i64* %RDX.i641, align 8
  %1378 = add i64 %1377, 35668
  %1379 = add i64 %1367, 17
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = sub i32 %1372, %1381
  %1383 = icmp ult i32 %1372, %1381
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %14, align 1
  %1385 = and i32 %1382, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  %1390 = xor i32 %1381, %1372
  %1391 = xor i32 %1390, %1382
  %1392 = lshr i32 %1391, 4
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %26, align 1
  %1395 = icmp eq i32 %1382, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %29, align 1
  %1397 = lshr i32 %1382, 31
  %1398 = trunc i32 %1397 to i8
  store i8 %1398, i8* %32, align 1
  %1399 = lshr i32 %1372, 31
  %1400 = lshr i32 %1381, 31
  %1401 = xor i32 %1400, %1399
  %1402 = xor i32 %1397, %1399
  %1403 = add nuw nsw i32 %1402, %1401
  %1404 = icmp eq i32 %1403, 2
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %38, align 1
  %1406 = add i64 %1368, -46
  %1407 = add i64 %1367, 20
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i8*
  store i8 0, i8* %1408, align 1
  %1409 = load i64, i64* %3, align 8
  %1410 = add i64 %1409, 40
  %1411 = add i64 %1409, 6
  %1412 = load i8, i8* %32, align 1
  %1413 = icmp ne i8 %1412, 0
  %1414 = load i8, i8* %38, align 1
  %1415 = icmp ne i8 %1414, 0
  %1416 = xor i1 %1413, %1415
  %1417 = select i1 %1416, i64 %1411, i64 %1410
  store i64 %1417, i64* %3, align 8
  br i1 %1416, label %block_42ca05, label %block_.L_42ca27

block_42ca05:                                     ; preds = %block_.L_42c9eb
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -8
  %1420 = add i64 %1417, 4
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i64*
  %1422 = load i64, i64* %1421, align 8
  %1423 = add i64 %1422, 35672
  store i64 %1423, i64* %RAX.i643, align 8
  %1424 = icmp ugt i64 %1422, -35673
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %14, align 1
  %1426 = trunc i64 %1423 to i32
  %1427 = and i32 %1426, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i64 %1422, 16
  %1433 = xor i64 %1432, %1423
  %1434 = lshr i64 %1433, 4
  %1435 = trunc i64 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %26, align 1
  %1437 = icmp eq i64 %1423, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %29, align 1
  %1439 = lshr i64 %1423, 63
  %1440 = trunc i64 %1439 to i8
  store i8 %1440, i8* %32, align 1
  %1441 = lshr i64 %1422, 63
  %1442 = xor i64 %1439, %1441
  %1443 = add nuw nsw i64 %1442, %1439
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %38, align 1
  %1446 = add i64 %1418, -20
  %1447 = add i64 %1417, 14
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = sext i32 %1449 to i64
  %1451 = shl nsw i64 %1450, 4
  store i64 %1451, i64* %RCX.i638, align 8
  %1452 = add i64 %1451, %1423
  store i64 %1452, i64* %RAX.i643, align 8
  %1453 = icmp ult i64 %1452, %1423
  %1454 = icmp ult i64 %1452, %1451
  %1455 = or i1 %1453, %1454
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %14, align 1
  %1457 = trunc i64 %1452 to i32
  %1458 = and i32 %1457, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i64 %1451, %1423
  %1464 = xor i64 %1463, %1452
  %1465 = lshr i64 %1464, 4
  %1466 = trunc i64 %1465 to i8
  %1467 = and i8 %1466, 1
  store i8 %1467, i8* %26, align 1
  %1468 = icmp eq i64 %1452, 0
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %29, align 1
  %1470 = lshr i64 %1452, 63
  %1471 = trunc i64 %1470 to i8
  store i8 %1471, i8* %32, align 1
  %1472 = lshr i64 %1450, 59
  %1473 = and i64 %1472, 1
  %1474 = xor i64 %1470, %1439
  %1475 = xor i64 %1470, %1473
  %1476 = add nuw nsw i64 %1474, %1475
  %1477 = icmp eq i64 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %38, align 1
  %1479 = inttoptr i64 %1452 to i32*
  %1480 = add i64 %1417, 23
  store i64 %1480, i64* %3, align 8
  %1481 = load i32, i32* %1479, align 4
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RDX.i641, align 8
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -24
  %1485 = add i64 %1417, 26
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sub i32 %1481, %1487
  %1489 = icmp ult i32 %1481, %1487
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %14, align 1
  %1491 = and i32 %1488, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %21, align 1
  %1496 = xor i32 %1487, %1481
  %1497 = xor i32 %1496, %1488
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %26, align 1
  %1501 = icmp eq i32 %1488, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %29, align 1
  %1503 = lshr i32 %1488, 31
  %1504 = trunc i32 %1503 to i8
  store i8 %1504, i8* %32, align 1
  %1505 = lshr i32 %1481, 31
  %1506 = lshr i32 %1487, 31
  %1507 = xor i32 %1506, %1505
  %1508 = xor i32 %1503, %1505
  %1509 = add nuw nsw i32 %1508, %1507
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %38, align 1
  store i8 %1502, i8* %SIL.i378, align 1
  %1512 = add i64 %1483, -46
  %1513 = add i64 %1417, 34
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i8*
  store i8 %1502, i8* %1514, align 1
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_42ca27

block_.L_42ca27:                                  ; preds = %block_.L_42c9eb, %block_42ca05
  %1515 = phi i64 [ %1410, %block_.L_42c9eb ], [ %.pre45, %block_42ca05 ]
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -46
  %1518 = add i64 %1515, 3
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i8*
  %1520 = load i8, i8* %1519, align 1
  store i8 %1520, i8* %AL.i412, align 1
  %1521 = and i8 %1520, 1
  store i8 0, i8* %14, align 1
  %1522 = zext i8 %1521 to i32
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522)
  %1524 = trunc i32 %1523 to i8
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i8 %1521, 1
  store i8 %1526, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1527 = icmp eq i8 %1526, 0
  %.v55 = select i1 %1527, i64 16, i64 11
  %1528 = add i64 %1515, %.v55
  store i64 %1528, i64* %3, align 8
  br i1 %1527, label %block_.L_42ca37, label %block_42ca32

block_42ca32:                                     ; preds = %block_.L_42ca27
  %1529 = add i64 %1528, 342
  store i64 %1529, i64* %3, align 8
  br label %block_.L_42cb88

block_.L_42ca37:                                  ; preds = %block_.L_42ca27
  %1530 = add i64 %1516, -20
  %1531 = add i64 %1528, 3
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RAX.i643, align 8
  %1535 = add i64 %1516, -16
  %1536 = add i64 %1528, 6
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = sub i32 %1533, %1538
  %1540 = icmp ult i32 %1533, %1538
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = and i32 %1539, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  %1547 = xor i32 %1538, %1533
  %1548 = xor i32 %1547, %1539
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %29, align 1
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %32, align 1
  %1556 = lshr i32 %1533, 31
  %1557 = lshr i32 %1538, 31
  %1558 = xor i32 %1557, %1556
  %1559 = xor i32 %1554, %1556
  %1560 = add nuw nsw i32 %1559, %1558
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %38, align 1
  %.v56 = select i1 %1552, i64 71, i64 12
  %1563 = add i64 %1528, %.v56
  store i64 %1563, i64* %3, align 8
  br i1 %1552, label %block_.L_42ca7e, label %block_42ca43

block_42ca43:                                     ; preds = %block_.L_42ca37
  %1564 = add i64 %1516, -8
  %1565 = add i64 %1563, 4
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i64*
  %1567 = load i64, i64* %1566, align 8
  %1568 = add i64 %1567, 35672
  store i64 %1568, i64* %RAX.i643, align 8
  %1569 = icmp ugt i64 %1567, -35673
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
  %1591 = add i64 %1563, 14
  store i64 %1591, i64* %3, align 8
  %1592 = load i32, i32* %1532, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = shl nsw i64 %1593, 4
  store i64 %1594, i64* %RCX.i638, align 8
  %1595 = add i64 %1594, %1568
  store i64 %1595, i64* %RAX.i643, align 8
  %1596 = icmp ult i64 %1595, %1568
  %1597 = icmp ult i64 %1595, %1594
  %1598 = or i1 %1596, %1597
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %14, align 1
  %1600 = trunc i64 %1595 to i32
  %1601 = and i32 %1600, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %21, align 1
  %1606 = xor i64 %1594, %1568
  %1607 = xor i64 %1606, %1595
  %1608 = lshr i64 %1607, 4
  %1609 = trunc i64 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %26, align 1
  %1611 = icmp eq i64 %1595, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %29, align 1
  %1613 = lshr i64 %1595, 63
  %1614 = trunc i64 %1613 to i8
  store i8 %1614, i8* %32, align 1
  %1615 = lshr i64 %1593, 59
  %1616 = and i64 %1615, 1
  %1617 = xor i64 %1613, %1584
  %1618 = xor i64 %1613, %1616
  %1619 = add nuw nsw i64 %1617, %1618
  %1620 = icmp eq i64 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %38, align 1
  %1622 = add i64 %1595, 4
  %1623 = add i64 %1563, 24
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RDX.i641, align 8
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -8
  %1629 = add i64 %1563, 28
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  %1632 = add i64 %1631, 35672
  store i64 %1632, i64* %RAX.i643, align 8
  %1633 = icmp ugt i64 %1631, -35673
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %14, align 1
  %1635 = trunc i64 %1632 to i32
  %1636 = and i32 %1635, 255
  %1637 = tail call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = xor i8 %1639, 1
  store i8 %1640, i8* %21, align 1
  %1641 = xor i64 %1631, 16
  %1642 = xor i64 %1641, %1632
  %1643 = lshr i64 %1642, 4
  %1644 = trunc i64 %1643 to i8
  %1645 = and i8 %1644, 1
  store i8 %1645, i8* %26, align 1
  %1646 = icmp eq i64 %1632, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %29, align 1
  %1648 = lshr i64 %1632, 63
  %1649 = trunc i64 %1648 to i8
  store i8 %1649, i8* %32, align 1
  %1650 = lshr i64 %1631, 63
  %1651 = xor i64 %1648, %1650
  %1652 = add nuw nsw i64 %1651, %1648
  %1653 = icmp eq i64 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %38, align 1
  %1655 = add i64 %1627, -20
  %1656 = add i64 %1563, 37
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  %1659 = add i32 %1658, -1
  %1660 = zext i32 %1659 to i64
  store i64 %1660, i64* %RSI.i619, align 8
  %1661 = sext i32 %1659 to i64
  %1662 = shl nsw i64 %1661, 4
  store i64 %1662, i64* %RCX.i638, align 8
  %1663 = add i64 %1662, %1632
  store i64 %1663, i64* %RAX.i643, align 8
  %1664 = icmp ult i64 %1663, %1632
  %1665 = icmp ult i64 %1663, %1662
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %14, align 1
  %1668 = trunc i64 %1663 to i32
  %1669 = and i32 %1668, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  %1674 = xor i64 %1662, %1632
  %1675 = xor i64 %1674, %1663
  %1676 = lshr i64 %1675, 4
  %1677 = trunc i64 %1676 to i8
  %1678 = and i8 %1677, 1
  store i8 %1678, i8* %26, align 1
  %1679 = icmp eq i64 %1663, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %29, align 1
  %1681 = lshr i64 %1663, 63
  %1682 = trunc i64 %1681 to i8
  store i8 %1682, i8* %32, align 1
  %1683 = lshr i64 %1661, 59
  %1684 = and i64 %1683, 1
  %1685 = xor i64 %1681, %1648
  %1686 = xor i64 %1681, %1684
  %1687 = add nuw nsw i64 %1685, %1686
  %1688 = icmp eq i64 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %38, align 1
  %1690 = load i32, i32* %EDX.i581, align 4
  %1691 = add i64 %1663, 4
  %1692 = add i64 %1563, 53
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = sub i32 %1690, %1694
  %1696 = icmp ult i32 %1690, %1694
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %14, align 1
  %1698 = and i32 %1695, 255
  %1699 = tail call i32 @llvm.ctpop.i32(i32 %1698)
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = xor i8 %1701, 1
  store i8 %1702, i8* %21, align 1
  %1703 = xor i32 %1694, %1690
  %1704 = xor i32 %1703, %1695
  %1705 = lshr i32 %1704, 4
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  store i8 %1707, i8* %26, align 1
  %1708 = icmp eq i32 %1695, 0
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %29, align 1
  %1710 = lshr i32 %1695, 31
  %1711 = trunc i32 %1710 to i8
  store i8 %1711, i8* %32, align 1
  %1712 = lshr i32 %1690, 31
  %1713 = lshr i32 %1694, 31
  %1714 = xor i32 %1713, %1712
  %1715 = xor i32 %1710, %1712
  %1716 = add nuw nsw i32 %1715, %1714
  %1717 = icmp eq i32 %1716, 2
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %38, align 1
  %.v57 = select i1 %1708, i64 301, i64 59
  %1719 = add i64 %1563, %.v57
  store i64 %1719, i64* %3, align 8
  br i1 %1708, label %block_.L_42cb70, label %block_42ca43.block_.L_42ca7e_crit_edge

block_42ca43.block_.L_42ca7e_crit_edge:           ; preds = %block_42ca43
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42ca7e

block_.L_42ca7e:                                  ; preds = %block_42ca43.block_.L_42ca7e_crit_edge, %block_.L_42ca37
  %1720 = phi i64 [ %1719, %block_42ca43.block_.L_42ca7e_crit_edge ], [ %1563, %block_.L_42ca37 ]
  %1721 = phi i64 [ %.pre47, %block_42ca43.block_.L_42ca7e_crit_edge ], [ %1516, %block_.L_42ca37 ]
  %1722 = add i64 %1721, -8
  %1723 = add i64 %1720, 4
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i64*
  %1725 = load i64, i64* %1724, align 8
  %1726 = add i64 %1725, 35672
  store i64 %1726, i64* %RAX.i643, align 8
  %1727 = icmp ugt i64 %1725, -35673
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %14, align 1
  %1729 = trunc i64 %1726 to i32
  %1730 = and i32 %1729, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  %1735 = xor i64 %1725, 16
  %1736 = xor i64 %1735, %1726
  %1737 = lshr i64 %1736, 4
  %1738 = trunc i64 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %26, align 1
  %1740 = icmp eq i64 %1726, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i64 %1726, 63
  %1743 = trunc i64 %1742 to i8
  store i8 %1743, i8* %32, align 1
  %1744 = lshr i64 %1725, 63
  %1745 = xor i64 %1742, %1744
  %1746 = add nuw nsw i64 %1745, %1742
  %1747 = icmp eq i64 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %38, align 1
  %1749 = add i64 %1721, -20
  %1750 = add i64 %1720, 14
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = sext i32 %1752 to i64
  %1754 = shl nsw i64 %1753, 4
  store i64 %1754, i64* %RCX.i638, align 8
  %1755 = add i64 %1754, %1726
  store i64 %1755, i64* %RAX.i643, align 8
  %1756 = icmp ult i64 %1755, %1726
  %1757 = icmp ult i64 %1755, %1754
  %1758 = or i1 %1756, %1757
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %14, align 1
  %1760 = trunc i64 %1755 to i32
  %1761 = and i32 %1760, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %21, align 1
  %1766 = xor i64 %1754, %1726
  %1767 = xor i64 %1766, %1755
  %1768 = lshr i64 %1767, 4
  %1769 = trunc i64 %1768 to i8
  %1770 = and i8 %1769, 1
  store i8 %1770, i8* %26, align 1
  %1771 = icmp eq i64 %1755, 0
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %29, align 1
  %1773 = lshr i64 %1755, 63
  %1774 = trunc i64 %1773 to i8
  store i8 %1774, i8* %32, align 1
  %1775 = lshr i64 %1753, 59
  %1776 = and i64 %1775, 1
  %1777 = xor i64 %1773, %1742
  %1778 = xor i64 %1773, %1776
  %1779 = add nuw nsw i64 %1777, %1778
  %1780 = icmp eq i64 %1779, 2
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %38, align 1
  %1782 = add i64 %1755, 4
  %1783 = add i64 %1720, 24
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RDI.i635, align 8
  %1787 = load i64, i64* %RBP.i, align 8
  %1788 = add i64 %1787, -12
  %1789 = add i64 %1720, 27
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i32*
  %1791 = load i32, i32* %1790, align 4
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RSI.i619, align 8
  %1793 = add i64 %1787, -32
  %1794 = add i64 %1720, 32
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  %1796 = load i32, i32* %1795, align 4
  store i32 %1796, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %1797 = add i64 %1787, -8
  %1798 = add i64 %1720, 36
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i64*
  %1800 = load i64, i64* %1799, align 8
  %1801 = add i64 %1800, 35672
  store i64 %1801, i64* %RAX.i643, align 8
  %1802 = icmp ugt i64 %1800, -35673
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %14, align 1
  %1804 = trunc i64 %1801 to i32
  %1805 = and i32 %1804, 255
  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805)
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  %1809 = xor i8 %1808, 1
  store i8 %1809, i8* %21, align 1
  %1810 = xor i64 %1800, 16
  %1811 = xor i64 %1810, %1801
  %1812 = lshr i64 %1811, 4
  %1813 = trunc i64 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %26, align 1
  %1815 = icmp eq i64 %1801, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %29, align 1
  %1817 = lshr i64 %1801, 63
  %1818 = trunc i64 %1817 to i8
  store i8 %1818, i8* %32, align 1
  %1819 = lshr i64 %1800, 63
  %1820 = xor i64 %1817, %1819
  %1821 = add nuw nsw i64 %1820, %1817
  %1822 = icmp eq i64 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %38, align 1
  %1824 = add i64 %1787, -20
  %1825 = add i64 %1720, 46
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = sext i32 %1827 to i64
  %1829 = shl nsw i64 %1828, 4
  store i64 %1829, i64* %RCX.i638, align 8
  %1830 = add i64 %1829, %1801
  store i64 %1830, i64* %RAX.i643, align 8
  %1831 = icmp ult i64 %1830, %1801
  %1832 = icmp ult i64 %1830, %1829
  %1833 = or i1 %1831, %1832
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %14, align 1
  %1835 = trunc i64 %1830 to i32
  %1836 = and i32 %1835, 255
  %1837 = tail call i32 @llvm.ctpop.i32(i32 %1836)
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %21, align 1
  %1841 = xor i64 %1829, %1801
  %1842 = xor i64 %1841, %1830
  %1843 = lshr i64 %1842, 4
  %1844 = trunc i64 %1843 to i8
  %1845 = and i8 %1844, 1
  store i8 %1845, i8* %26, align 1
  %1846 = icmp eq i64 %1830, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %29, align 1
  %1848 = lshr i64 %1830, 63
  %1849 = trunc i64 %1848 to i8
  store i8 %1849, i8* %32, align 1
  %1850 = lshr i64 %1828, 59
  %1851 = and i64 %1850, 1
  %1852 = xor i64 %1848, %1817
  %1853 = xor i64 %1848, %1851
  %1854 = add nuw nsw i64 %1852, %1853
  %1855 = icmp eq i64 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %38, align 1
  %1857 = add i64 %1830, 8
  %1858 = add i64 %1720, 58
  store i64 %1858, i64* %3, align 8
  %1859 = load <2 x float>, <2 x float>* %113, align 1
  %1860 = load <2 x i32>, <2 x i32>* %118, align 1
  %1861 = inttoptr i64 %1857 to float*
  %1862 = load float, float* %1861, align 4
  %1863 = extractelement <2 x float> %1859, i32 0
  %1864 = fmul float %1863, %1862
  store float %1864, float* %117, align 1
  %1865 = bitcast <2 x float> %1859 to <2 x i32>
  %1866 = extractelement <2 x i32> %1865, i32 1
  store i32 %1866, i32* %109, align 1
  %1867 = extractelement <2 x i32> %1860, i32 0
  store i32 %1867, i32* %110, align 1
  %1868 = extractelement <2 x i32> %1860, i32 1
  store i32 %1868, i32* %112, align 1
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -8
  %1871 = add i64 %1720, 62
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  %1874 = add i64 %1873, 35672
  store i64 %1874, i64* %RAX.i643, align 8
  %1875 = icmp ugt i64 %1873, -35673
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %14, align 1
  %1877 = trunc i64 %1874 to i32
  %1878 = and i32 %1877, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %21, align 1
  %1883 = xor i64 %1873, 16
  %1884 = xor i64 %1883, %1874
  %1885 = lshr i64 %1884, 4
  %1886 = trunc i64 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %26, align 1
  %1888 = icmp eq i64 %1874, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %29, align 1
  %1890 = lshr i64 %1874, 63
  %1891 = trunc i64 %1890 to i8
  store i8 %1891, i8* %32, align 1
  %1892 = lshr i64 %1873, 63
  %1893 = xor i64 %1890, %1892
  %1894 = add nuw nsw i64 %1893, %1890
  %1895 = icmp eq i64 %1894, 2
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %38, align 1
  %1897 = add i64 %1869, -20
  %1898 = add i64 %1720, 72
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = shl nsw i64 %1901, 4
  store i64 %1902, i64* %RCX.i638, align 8
  %1903 = add i64 %1902, %1874
  store i64 %1903, i64* %RAX.i643, align 8
  %1904 = icmp ult i64 %1903, %1874
  %1905 = icmp ult i64 %1903, %1902
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = trunc i64 %1903 to i32
  %1909 = and i32 %1908, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909)
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %21, align 1
  %1914 = xor i64 %1902, %1874
  %1915 = xor i64 %1914, %1903
  %1916 = lshr i64 %1915, 4
  %1917 = trunc i64 %1916 to i8
  %1918 = and i8 %1917, 1
  store i8 %1918, i8* %26, align 1
  %1919 = icmp eq i64 %1903, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %29, align 1
  %1921 = lshr i64 %1903, 63
  %1922 = trunc i64 %1921 to i8
  store i8 %1922, i8* %32, align 1
  %1923 = lshr i64 %1901, 59
  %1924 = and i64 %1923, 1
  %1925 = xor i64 %1921, %1890
  %1926 = xor i64 %1921, %1924
  %1927 = add nuw nsw i64 %1925, %1926
  %1928 = icmp eq i64 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %38, align 1
  %1930 = add i64 %1903, 12
  %1931 = add i64 %1720, 84
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  store i32 %1933, i32* %125, align 1
  store float 0.000000e+00, float* %127, align 1
  store float 0.000000e+00, float* %129, align 1
  store float 0.000000e+00, float* %131, align 1
  %1934 = load i64, i64* %RBP.i, align 8
  %1935 = add i64 %1934, -8
  %1936 = add i64 %1720, 88
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i64*
  %1938 = load i64, i64* %1937, align 8
  store i64 %1938, i64* %RDX.i641, align 8
  %1939 = add i64 %1720, 882
  %1940 = add i64 %1720, 93
  %1941 = load i64, i64* %6, align 8
  %1942 = add i64 %1941, -8
  %1943 = inttoptr i64 %1942 to i64*
  store i64 %1940, i64* %1943, align 8
  store i64 %1942, i64* %6, align 8
  store i64 %1939, i64* %3, align 8
  %call2_42cad6 = tail call %struct.Memory* @sub_42cdf0.add_influence_source(%struct.State* nonnull %0, i64 %1939, %struct.Memory* %1317)
  %1944 = load i64, i64* %3, align 8
  %1945 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1946 = and i32 %1945, 1
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RSI.i619, align 8
  store i8 0, i8* %14, align 1
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1949 = trunc i32 %1948 to i8
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1951 = trunc i32 %1946 to i8
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1953 = icmp eq i8 %1952, 0
  %.v58 = select i1 %1953, i64 24, i64 19
  %1954 = add i64 %1944, %.v58
  store i64 %1954, i64* %3, align 8
  br i1 %1953, label %block_.L_42caf3, label %block_42caee

block_42caee:                                     ; preds = %block_.L_42ca7e
  %1955 = add i64 %1954, 125
  store i64 %1955, i64* %3, align 8
  br label %block_.L_42cb6b

block_.L_42caf3:                                  ; preds = %block_.L_42ca7e
  store i64 ptrtoint (%G__0x57c72b_type* @G__0x57c72b to i64), i64* %RDI.i635, align 8
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX.i643, align 8
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX.i638, align 8
  %1956 = load i64, i64* %RBP.i, align 8
  %1957 = add i64 %1956, -12
  %1958 = add i64 %1954, 34
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1960, -2
  %1962 = icmp ult i32 %1960, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = and i32 %1961, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %21, align 1
  %1969 = xor i32 %1961, %1960
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  store i8 %1972, i8* %26, align 1
  %1973 = icmp eq i32 %1961, 0
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %29, align 1
  %1975 = lshr i32 %1961, 31
  %1976 = trunc i32 %1975 to i8
  store i8 %1976, i8* %32, align 1
  %1977 = lshr i32 %1960, 31
  %1978 = xor i32 %1975, %1977
  %1979 = add nuw nsw i32 %1978, %1977
  %1980 = icmp eq i32 %1979, 2
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %38, align 1
  %1982 = select i1 %1973, i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64)
  store i64 %1982, i64* %RAX.i643, align 8
  %1983 = add i64 %1956, -24
  %1984 = add i64 %1954, 41
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RDX.i641, align 8
  %1988 = add i64 %1956, -8
  %1989 = add i64 %1954, 45
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i64*
  %1991 = load i64, i64* %1990, align 8
  %1992 = add i64 %1991, 35672
  store i64 %1992, i64* %RCX.i638, align 8
  %1993 = icmp ugt i64 %1991, -35673
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %14, align 1
  %1995 = trunc i64 %1992 to i32
  %1996 = and i32 %1995, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %21, align 1
  %2001 = xor i64 %1991, 16
  %2002 = xor i64 %2001, %1992
  %2003 = lshr i64 %2002, 4
  %2004 = trunc i64 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %26, align 1
  %2006 = icmp eq i64 %1992, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %29, align 1
  %2008 = lshr i64 %1992, 63
  %2009 = trunc i64 %2008 to i8
  store i8 %2009, i8* %32, align 1
  %2010 = lshr i64 %1991, 63
  %2011 = xor i64 %2008, %2010
  %2012 = add nuw nsw i64 %2011, %2008
  %2013 = icmp eq i64 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %38, align 1
  %2015 = add i64 %1956, -20
  %2016 = add i64 %1954, 56
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = sext i32 %2018 to i64
  %2020 = shl nsw i64 %2019, 4
  store i64 %2020, i64* %RSI.i619, align 8
  %2021 = add i64 %2020, %1992
  store i64 %2021, i64* %RCX.i638, align 8
  %2022 = icmp ult i64 %2021, %1992
  %2023 = icmp ult i64 %2021, %2020
  %2024 = or i1 %2022, %2023
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %14, align 1
  %2026 = trunc i64 %2021 to i32
  %2027 = and i32 %2026, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  %2032 = xor i64 %2020, %1992
  %2033 = xor i64 %2032, %2021
  %2034 = lshr i64 %2033, 4
  %2035 = trunc i64 %2034 to i8
  %2036 = and i8 %2035, 1
  store i8 %2036, i8* %26, align 1
  %2037 = icmp eq i64 %2021, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %29, align 1
  %2039 = lshr i64 %2021, 63
  %2040 = trunc i64 %2039 to i8
  store i8 %2040, i8* %32, align 1
  %2041 = lshr i64 %2019, 59
  %2042 = and i64 %2041, 1
  %2043 = xor i64 %2039, %2008
  %2044 = xor i64 %2039, %2042
  %2045 = add nuw nsw i64 %2043, %2044
  %2046 = icmp eq i64 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %38, align 1
  %2048 = add i64 %2021, 4
  %2049 = add i64 %1954, 66
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RCX.i638, align 8
  %2053 = load i64, i64* %RBP.i, align 8
  %2054 = add i64 %2053, -32
  %2055 = add i64 %1954, 71
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  store i32 %2057, i32* %107, align 1
  store float 0.000000e+00, float* %114, align 1
  store float 0.000000e+00, float* %115, align 1
  store float 0.000000e+00, float* %116, align 1
  %2058 = add i64 %2053, -8
  %2059 = add i64 %1954, 75
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i64*
  %2061 = load i64, i64* %2060, align 8
  %2062 = add i64 %2061, 35672
  store i64 %2062, i64* %RSI.i619, align 8
  %2063 = icmp ugt i64 %2061, -35673
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %14, align 1
  %2065 = trunc i64 %2062 to i32
  %2066 = and i32 %2065, 255
  %2067 = tail call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  store i8 %2070, i8* %21, align 1
  %2071 = xor i64 %2061, 16
  %2072 = xor i64 %2071, %2062
  %2073 = lshr i64 %2072, 4
  %2074 = trunc i64 %2073 to i8
  %2075 = and i8 %2074, 1
  store i8 %2075, i8* %26, align 1
  %2076 = icmp eq i64 %2062, 0
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %29, align 1
  %2078 = lshr i64 %2062, 63
  %2079 = trunc i64 %2078 to i8
  store i8 %2079, i8* %32, align 1
  %2080 = lshr i64 %2061, 63
  %2081 = xor i64 %2078, %2080
  %2082 = add nuw nsw i64 %2081, %2078
  %2083 = icmp eq i64 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = add i64 %2053, -20
  %2086 = add i64 %1954, 86
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = sext i32 %2088 to i64
  %2090 = shl nsw i64 %2089, 4
  store i64 %2090, i64* %R8.i623, align 8
  %2091 = add i64 %2090, %2062
  store i64 %2091, i64* %RSI.i619, align 8
  %2092 = icmp ult i64 %2091, %2062
  %2093 = icmp ult i64 %2091, %2090
  %2094 = or i1 %2092, %2093
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %14, align 1
  %2096 = trunc i64 %2091 to i32
  %2097 = and i32 %2096, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = xor i64 %2090, %2062
  %2103 = xor i64 %2102, %2091
  %2104 = lshr i64 %2103, 4
  %2105 = trunc i64 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %26, align 1
  %2107 = icmp eq i64 %2091, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %29, align 1
  %2109 = lshr i64 %2091, 63
  %2110 = trunc i64 %2109 to i8
  store i8 %2110, i8* %32, align 1
  %2111 = lshr i64 %2089, 59
  %2112 = and i64 %2111, 1
  %2113 = xor i64 %2109, %2078
  %2114 = xor i64 %2109, %2112
  %2115 = add nuw nsw i64 %2113, %2114
  %2116 = icmp eq i64 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %38, align 1
  %2118 = add i64 %2091, 8
  %2119 = add i64 %1954, 98
  store i64 %2119, i64* %3, align 8
  %2120 = load <2 x float>, <2 x float>* %113, align 1
  %2121 = load <2 x i32>, <2 x i32>* %118, align 1
  %2122 = inttoptr i64 %2118 to float*
  %2123 = load float, float* %2122, align 4
  %2124 = extractelement <2 x float> %2120, i32 0
  %2125 = fmul float %2124, %2123
  store float %2125, float* %117, align 1
  %2126 = bitcast <2 x float> %2120 to <2 x i32>
  %2127 = extractelement <2 x i32> %2126, i32 1
  store i32 %2127, i32* %109, align 1
  %2128 = extractelement <2 x i32> %2121, i32 0
  store i32 %2128, i32* %110, align 1
  %2129 = extractelement <2 x i32> %2121, i32 1
  store i32 %2129, i32* %112, align 1
  %2130 = load <2 x float>, <2 x float>* %113, align 1
  %2131 = extractelement <2 x float> %2130, i32 0
  %2132 = fpext float %2131 to double
  store double %2132, double* %119, align 1
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -32
  %2135 = add i64 %1954, 107
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to float*
  %2137 = load float, float* %2136, align 4
  %2138 = fpext float %2137 to double
  store double %2138, double* %123, align 1
  %2139 = load i64, i64* %RAX.i643, align 8
  store i64 %2139, i64* %RSI.i619, align 8
  store i8 2, i8* %AL.i412, align 1
  %2140 = add i64 %1954, 152253
  %2141 = add i64 %1954, 117
  %2142 = load i64, i64* %6, align 8
  %2143 = add i64 %2142, -8
  %2144 = inttoptr i64 %2143 to i64*
  store i64 %2141, i64* %2144, align 8
  store i64 %2143, i64* %6, align 8
  store i64 %2140, i64* %3, align 8
  %call2_42cb63 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2140, %struct.Memory* %1317)
  %2145 = load i64, i64* %RBP.i, align 8
  %2146 = add i64 %2145, -52
  %2147 = load i32, i32* %EAX.i640, align 4
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 3
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2146 to i32*
  store i32 %2147, i32* %2150, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_42cb6b

block_.L_42cb6b:                                  ; preds = %block_.L_42caf3, %block_42caee
  %2151 = phi i64 [ %.pre48, %block_.L_42caf3 ], [ %1955, %block_42caee ]
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %3, align 8
  br label %block_.L_42cb70

block_.L_42cb70:                                  ; preds = %block_.L_42cb6b, %block_42ca43
  %2153 = phi i64 [ %2152, %block_.L_42cb6b ], [ %1719, %block_42ca43 ]
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -20
  %2156 = add i64 %2153, 8
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = add i32 %2158, 1
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RAX.i643, align 8
  %2161 = icmp eq i32 %2158, -1
  %2162 = icmp eq i32 %2159, 0
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %14, align 1
  %2165 = and i32 %2159, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %21, align 1
  %2170 = xor i32 %2159, %2158
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %26, align 1
  %2174 = zext i1 %2162 to i8
  store i8 %2174, i8* %29, align 1
  %2175 = lshr i32 %2159, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %32, align 1
  %2177 = lshr i32 %2158, 31
  %2178 = xor i32 %2175, %2177
  %2179 = add nuw nsw i32 %2178, %2175
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %38, align 1
  %2182 = add i64 %2153, 14
  store i64 %2182, i64* %3, align 8
  store i32 %2159, i32* %2157, align 4
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, -403
  store i64 %2184, i64* %3, align 8
  br label %block_.L_42c9eb

block_.L_42cb88:                                  ; preds = %block_42ca32, %block_.L_42c85f
  %2185 = phi i64 [ %.pre46, %block_.L_42c85f ], [ %1516, %block_42ca32 ]
  %storemerge = phi i64 [ %691, %block_.L_42c85f ], [ %1529, %block_42ca32 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.0, %block_.L_42c85f ], [ %1317, %block_42ca32 ]
  %2186 = add i64 %2185, -20
  %2187 = add i64 %storemerge, 3
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RAX.i643, align 8
  %2191 = add i64 %2185, -16
  %2192 = add i64 %storemerge, 6
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  store i32 %2189, i32* %2193, align 4
  %2194 = load i64, i64* %3, align 8
  %2195 = add i64 %2194, -1093
  store i64 %2195, i64* %3, align 8
  br label %block_.L_42c749

block_.L_42cb93:                                  ; preds = %block_.L_42c749
  %2196 = load i64, i64* %6, align 8
  %2197 = add i64 %2196, 64
  store i64 %2197, i64* %6, align 8
  %2198 = icmp ugt i64 %2196, -65
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %14, align 1
  %2200 = trunc i64 %2197 to i32
  %2201 = and i32 %2200, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %21, align 1
  %2206 = xor i64 %2197, %2196
  %2207 = lshr i64 %2206, 4
  %2208 = trunc i64 %2207 to i8
  %2209 = and i8 %2208, 1
  store i8 %2209, i8* %26, align 1
  %2210 = icmp eq i64 %2197, 0
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %29, align 1
  %2212 = lshr i64 %2197, 63
  %2213 = trunc i64 %2212 to i8
  store i8 %2213, i8* %32, align 1
  %2214 = lshr i64 %2196, 63
  %2215 = xor i64 %2212, %2214
  %2216 = add nuw nsw i64 %2215, %2212
  %2217 = icmp eq i64 %2216, 2
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %38, align 1
  %2219 = add i64 %174, 5
  store i64 %2219, i64* %3, align 8
  %2220 = add i64 %2196, 72
  %2221 = inttoptr i64 %2197 to i64*
  %2222 = load i64, i64* %2221, align 8
  store i64 %2222, i64* %RBP.i, align 8
  store i64 %2220, i64* %6, align 8
  %2223 = add i64 %174, 6
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2220 to i64*
  %2225 = load i64, i64* %2224, align 8
  store i64 %2225, i64* %3, align 8
  %2226 = add i64 %2196, 80
  store i64 %2226, i64* %6, align 8
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
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x42cd40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42cd40_type* @G__0x42cd40 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8b58___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 35672
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -35673
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8b54__r8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 35668
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
define %struct.Memory* @routine_callq_.gg_sort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8b54__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 35668
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
define %struct.Memory* @routine_jge_.L_42cb93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8b58___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 35672
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -35673
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_42c86d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movss_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.add_influence_source(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_42c7f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42c85f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c705___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c705_type* @G__0x57c705 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586e37___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586e37_type* @G__0x586e37 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586e29___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586e29_type* @G__0x586e29 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cmoveq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8b58___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 35672
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -35673
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_42cb88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42c892(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movss_0x1450__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 5200
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_jmpq_.L_42c8a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xe10__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 3600
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_cmpl_0x8b54__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 35668
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
define %struct.Memory* @routine_movb__cl__MINUS0x2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42c8ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42c8fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42c978(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_je_.L_42c941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_42c965(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c96a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c8ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb72714___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb72714_type* @G__0xb72714 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_42c99b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jmpq_.L_42c9b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xb667d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb667d__rip__type* @G_0xb667d__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_ucomiss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
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
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42c9d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_jmpq_.L_42c9e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb672c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb672c__rip__type* @G_0xb672c__rip_ to i64)
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
define %struct.Memory* @routine_movb__cl__MINUS0x2e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42ca27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__sil__MINUS0x2e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42ca37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42cb83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42ca7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42cb70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_mulss_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_42caf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42cb6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c72b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c72b_type* @G__0x57c72b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8b58___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 35672
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -35673
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_mulss_0x8__rsi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42cb70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42cb75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c9eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_42c749(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
