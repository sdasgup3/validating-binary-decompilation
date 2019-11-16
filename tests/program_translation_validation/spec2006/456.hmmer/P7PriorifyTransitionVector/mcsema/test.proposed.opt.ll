; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1b595__rip__type = type <{ [4 x i8] }>
%G_0x1b6e6__rip__type = type <{ [8 x i8] }>
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
@G_0x1b595__rip_ = global %G_0x1b595__rip__type zeroinitializer
@G_0x1b6e6__rip_ = global %G_0x1b6e6__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_428480.Logp_cvec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4282f0.LogNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4527a0.FNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7PriorifyTransitionVector(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -888
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 880
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
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = add i64 %10, add (i64 ptrtoint (%G_0x1b595__rip__type* @G_0x1b595__rip_ to i64), i64 10)
  %43 = add i64 %10, 18
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = bitcast [32 x %union.VectorReg]* %40 to float*
  %47 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %45, i32* %47, align 1
  %48 = getelementptr inbounds i8, i8* %41, i64 4
  %49 = bitcast i8* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to float*
  store float 0.000000e+00, float* %51, align 1
  %52 = getelementptr inbounds i8, i8* %41, i64 12
  %53 = bitcast i8* %52 to float*
  store float 0.000000e+00, float* %53, align 1
  %RDI.i634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %54 = add i64 %7, -16
  %55 = load i64, i64* %RDI.i634, align 8
  %56 = add i64 %10, 22
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %57, align 8
  %RSI.i631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -16
  %60 = load i64, i64* %RSI.i631, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %RDX.i628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i64, i64* %RDX.i628, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -832
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 8
  store i64 %73, i64* %3, align 8
  %74 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %75 = load <2 x float>, <2 x float>* %74, align 1
  %76 = extractelement <2 x float> %75, i32 0
  %77 = inttoptr i64 %71 to float*
  store float %76, float* %77, align 4
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -16
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %RDX.i628, align 8
  %84 = add i64 %80, 7
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  store i8 0, i8* %14, align 1
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %92 = icmp eq i32 %86, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %30, align 1
  %94 = lshr i32 %86, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %92, i64 26, i64 13
  %96 = add i64 %80, %.v
  store i64 %96, i64* %3, align 8
  br i1 %92, label %block_.L_4391c1, label %block_4391b4

block_4391b4:                                     ; preds = %entry
  %RAX.i616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %97 = add i64 %96, 4
  store i64 %97, i64* %3, align 8
  %98 = load i64, i64* %82, align 8
  store i64 %98, i64* %RAX.i616, align 8
  %99 = add i64 %96, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, -1
  %103 = icmp eq i32 %101, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = and i32 %102, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i32 %102, %101
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %27, align 1
  %114 = icmp eq i32 %102, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1
  %116 = lshr i32 %102, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %33, align 1
  %118 = lshr i32 %101, 31
  %119 = xor i32 %116, %118
  %120 = add nuw nsw i32 %119, %118
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %39, align 1
  %.v26 = select i1 %114, i64 13, i64 393
  %123 = add i64 %96, %.v26
  store i64 %123, i64* %3, align 8
  br i1 %114, label %block_.L_4391c1, label %block_4391b4.block_.L_43933d_crit_edge

block_4391b4.block_.L_43933d_crit_edge:           ; preds = %block_4391b4
  %.pre25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_43933d

block_.L_4391c1:                                  ; preds = %block_4391b4, %entry
  %124 = phi i64 [ %123, %block_4391b4 ], [ %96, %entry ]
  %RAX.i610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = load i64, i64* %82, align 8
  store i64 %126, i64* %RAX.i610, align 8
  %127 = add i64 %126, 6408
  %128 = add i64 %124, 11
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, -1
  %132 = icmp eq i32 %130, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %14, align 1
  %134 = and i32 %131, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = xor i32 %131, %130
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %27, align 1
  %143 = icmp eq i32 %131, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %30, align 1
  %145 = lshr i32 %131, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %33, align 1
  %147 = lshr i32 %130, 31
  %148 = xor i32 %145, %147
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %39, align 1
  %152 = icmp ne i8 %146, 0
  %153 = xor i1 %152, %150
  %154 = or i1 %143, %153
  %.v29 = select i1 %154, i64 380, i64 17
  %155 = add i64 %124, %.v29
  store i64 %155, i64* %3, align 8
  br i1 %154, label %block_.L_43933d, label %block_4391d2

block_4391d2:                                     ; preds = %block_.L_4391c1
  %156 = add i64 %78, -32
  %157 = add i64 %155, 7
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  store i32 0, i32* %158, align 4
  %RCX.i599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %159 = bitcast i8* %48 to i32*
  %160 = bitcast i64* %50 to i32*
  %161 = bitcast i8* %52 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %163 = bitcast %union.VectorReg* %162 to double*
  %164 = bitcast [32 x %union.VectorReg]* %40 to double*
  %165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %166 = bitcast i64* %50 to double*
  %167 = bitcast i64* %50 to <2 x i32>*
  %.pre = load i64, i64* %3, align 8
  %168 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  br label %block_.L_4391d9

block_.L_4391d9:                                  ; preds = %block_.L_439237, %block_4391d2
  %169 = phi i64 [ %.pre, %block_4391d2 ], [ %669, %block_.L_439237 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4391d2 ], [ %call2_439301, %block_.L_439237 ]
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -32
  %172 = add i64 %169, 3
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX.i610, align 8
  %176 = add i64 %170, -16
  %177 = add i64 %169, 7
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RCX.i599, align 8
  %180 = add i64 %179, 4
  %181 = add i64 %169, 10
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = sub i32 %174, %183
  %185 = icmp ult i32 %174, %183
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %184, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %183, %174
  %193 = xor i32 %192, %184
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i32 %184, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i32 %184, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i32 %174, 31
  %202 = lshr i32 %183, 31
  %203 = xor i32 %202, %201
  %204 = xor i32 %199, %201
  %205 = add nuw nsw i32 %204, %203
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = icmp ne i8 %200, 0
  %209 = xor i1 %208, %206
  %.v30 = select i1 %209, i64 16, i64 337
  %210 = add i64 %169, %.v30
  store i64 %210, i64* %3, align 8
  br i1 %209, label %block_4391e9, label %block_.L_43932a

block_4391e9:                                     ; preds = %block_.L_4391d9
  store <4 x i32> zeroinitializer, <4 x i32>* %168, align 1
  %211 = add i64 %170, -24
  %212 = add i64 %210, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i610, align 8
  %215 = add i64 %210, 11
  store i64 %215, i64* %3, align 8
  %216 = load i32, i32* %173, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RCX.i599, align 8
  %218 = shl nsw i64 %217, 2
  %219 = add i64 %218, %214
  %220 = add i64 %210, 16
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to float*
  %222 = load float, float* %221, align 4
  %223 = fpext float %222 to double
  store double %223, double* %163, align 1
  %224 = add i64 %210, 20
  store i64 %224, i64* %3, align 8
  %225 = load double, double* %164, align 1
  %226 = fcmp uno double %223, %225
  br i1 %226, label %227, label %237

; <label>:227:                                    ; preds = %block_4391e9
  %228 = fadd double %223, %225
  %229 = bitcast double %228 to i64
  %230 = and i64 %229, 9221120237041090560
  %231 = icmp eq i64 %230, 9218868437227405312
  %232 = and i64 %229, 2251799813685247
  %233 = icmp ne i64 %232, 0
  %234 = and i1 %231, %233
  br i1 %234, label %235, label %243

; <label>:235:                                    ; preds = %227
  %236 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %224, %struct.Memory* %MEMORY.1)
  %.pre16 = load i64, i64* %3, align 8
  %.pre17 = load i8, i8* %14, align 1
  %.pre18 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:237:                                    ; preds = %block_4391e9
  %238 = fcmp ogt double %223, %225
  br i1 %238, label %243, label %239

; <label>:239:                                    ; preds = %237
  %240 = fcmp olt double %223, %225
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %239
  %242 = fcmp oeq double %223, %225
  br i1 %242, label %243, label %247

; <label>:243:                                    ; preds = %241, %239, %237, %227
  %244 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 1, %241 ], [ 1, %227 ]
  %245 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 0, %241 ], [ 1, %227 ]
  %246 = phi i8 [ 0, %237 ], [ 1, %239 ], [ 0, %241 ], [ 1, %227 ]
  store i8 %244, i8* %30, align 1
  store i8 %245, i8* %21, align 1
  store i8 %246, i8* %14, align 1
  br label %247

; <label>:247:                                    ; preds = %243, %241
  %248 = phi i8 [ %244, %243 ], [ %198, %241 ]
  %249 = phi i8 [ %246, %243 ], [ %186, %241 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %247, %235
  %250 = phi i8 [ %.pre18, %235 ], [ %248, %247 ]
  %251 = phi i8 [ %.pre17, %235 ], [ %249, %247 ]
  %252 = phi i64 [ %.pre16, %235 ], [ %224, %247 ]
  %253 = phi %struct.Memory* [ %236, %235 ], [ %MEMORY.1, %247 ]
  %254 = or i8 %250, %251
  %255 = icmp ne i8 %254, 0
  %.v31 = select i1 %255, i64 37, i64 6
  %256 = add i64 %252, %.v31
  store i64 %256, i64* %3, align 8
  br i1 %255, label %block_.L_439222, label %block_439203

block_439203:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -24
  %259 = add i64 %256, 4
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i610, align 8
  %262 = add i64 %257, -32
  %263 = add i64 %256, 8
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX.i599, align 8
  %267 = shl nsw i64 %266, 2
  %268 = add i64 %267, %261
  %269 = add i64 %256, 13
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to float*
  %271 = load float, float* %270, align 4
  %272 = fpext float %271 to double
  store double %272, double* %164, align 1
  %273 = add i64 %256, -228627
  %274 = add i64 %256, 18
  %275 = load i64, i64* %6, align 8
  %276 = add i64 %275, -8
  %277 = inttoptr i64 %276 to i64*
  store i64 %274, i64* %277, align 8
  store i64 %276, i64* %6, align 8
  store i64 %273, i64* %3, align 8
  %278 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %253)
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -856
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 8
  store i64 %282, i64* %3, align 8
  %283 = load i64, i64* %165, align 1
  %284 = inttoptr i64 %280 to i64*
  store i64 %283, i64* %284, align 8
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 26
  br label %block_.L_439237

block_.L_439222:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %287 = add i64 %256, ptrtoint (%G_0x1b6e6__rip__type* @G_0x1b6e6__rip_ to i64)
  %288 = add i64 %256, 8
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %165, align 1
  store double 0.000000e+00, double* %166, align 1
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -856
  %293 = add i64 %256, 16
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %294, align 8
  %295 = load i64, i64* %3, align 8
  %296 = add i64 %295, 5
  store i64 %296, i64* %3, align 8
  br label %block_.L_439237

block_.L_439237:                                  ; preds = %block_.L_439222, %block_439203
  %storemerge = phi i64 [ %286, %block_439203 ], [ %296, %block_.L_439222 ]
  %MEMORY.2 = phi %struct.Memory* [ %278, %block_439203 ], [ %253, %block_.L_439222 ]
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -856
  %299 = add i64 %storemerge, 8
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 3, i64* %RSI.i631, align 8
  %302 = bitcast i64 %301 to <2 x i32>
  %.cast = bitcast i64 %301 to double
  %303 = fptrunc double %.cast to float
  store float %303, float* %46, align 1
  %304 = extractelement <2 x i32> %302, i32 1
  store i32 %304, i32* %159, align 1
  store i32 0, i32* %160, align 1
  store i32 0, i32* %161, align 1
  %305 = add i64 %297, -32
  %306 = add i64 %storemerge, 21
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RAX.i610, align 8
  %310 = shl nsw i64 %309, 2
  %311 = add i64 %297, -832
  %312 = add i64 %311, %310
  %313 = add i64 %storemerge, 30
  store i64 %313, i64* %3, align 8
  %314 = load <2 x float>, <2 x float>* %74, align 1
  %315 = extractelement <2 x float> %314, i32 0
  %316 = inttoptr i64 %312 to float*
  store float %315, float* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -8
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDI.i634, align 8
  %323 = add i64 %317, -16
  %324 = add i64 %319, 8
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i64*
  %326 = load i64, i64* %325, align 8
  %327 = add i64 %326, 808
  store i64 %327, i64* %RAX.i610, align 8
  %328 = icmp ugt i64 %326, -809
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %14, align 1
  %330 = trunc i64 %327 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  %336 = xor i64 %327, %326
  %337 = lshr i64 %336, 4
  %338 = trunc i64 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %27, align 1
  %340 = icmp eq i64 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %30, align 1
  %342 = lshr i64 %327, 63
  %343 = trunc i64 %342 to i8
  store i8 %343, i8* %33, align 1
  %344 = lshr i64 %326, 63
  %345 = xor i64 %342, %344
  %346 = add nuw nsw i64 %345, %342
  %347 = icmp eq i64 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %39, align 1
  %349 = add i64 %317, -32
  %350 = add i64 %319, 18
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, 28
  store i64 %354, i64* %RCX.i599, align 8
  %355 = lshr i64 %354, 63
  %356 = add i64 %354, %327
  store i64 %356, i64* %RAX.i610, align 8
  %357 = icmp ult i64 %356, %327
  %358 = icmp ult i64 %356, %354
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1
  %361 = trunc i64 %356 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  %367 = xor i64 %354, %327
  %368 = xor i64 %367, %356
  %369 = lshr i64 %368, 4
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %27, align 1
  %372 = icmp eq i64 %356, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %30, align 1
  %374 = lshr i64 %356, 63
  %375 = trunc i64 %374 to i8
  store i8 %375, i8* %33, align 1
  %376 = xor i64 %374, %342
  %377 = xor i64 %374, %355
  %378 = add nuw nsw i64 %376, %377
  %379 = icmp eq i64 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %39, align 1
  store i64 %356, i64* %RDX.i628, align 8
  %381 = add i64 %319, -69077
  %382 = add i64 %319, 33
  %383 = load i64, i64* %6, align 8
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %382, i64* %385, align 8
  store i64 %384, i64* %6, align 8
  store i64 %381, i64* %3, align 8
  %call2_439271 = tail call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* nonnull %0, i64 %381, %struct.Memory* %MEMORY.2)
  %386 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i631, align 8
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -32
  %389 = add i64 %386, 9
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %RAX.i610, align 8
  %393 = shl nsw i64 %392, 2
  %394 = add i64 %387, -832
  %395 = add i64 %394, %393
  %396 = add i64 %386, 18
  store i64 %396, i64* %3, align 8
  %397 = load <2 x float>, <2 x float>* %74, align 1
  %398 = load <2 x i32>, <2 x i32>* %167, align 1
  %399 = inttoptr i64 %395 to float*
  %400 = load float, float* %399, align 4
  %401 = extractelement <2 x float> %397, i32 0
  %402 = fadd float %401, %400
  store float %402, float* %46, align 1
  %403 = bitcast <2 x float> %397 to <2 x i32>
  %404 = extractelement <2 x i32> %403, i32 1
  store i32 %404, i32* %159, align 1
  %405 = extractelement <2 x i32> %398, i32 0
  store i32 %405, i32* %160, align 1
  %406 = extractelement <2 x i32> %398, i32 1
  store i32 %406, i32* %161, align 1
  %407 = add i64 %386, 27
  store i64 %407, i64* %3, align 8
  %408 = load <2 x float>, <2 x float>* %74, align 1
  %409 = extractelement <2 x float> %408, i32 0
  store float %409, float* %399, align 4
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -8
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 4
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414, align 8
  %416 = add i64 %415, 12
  store i64 %416, i64* %RAX.i610, align 8
  %417 = icmp ugt i64 %415, -13
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %14, align 1
  %419 = trunc i64 %416 to i32
  %420 = and i32 %419, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %21, align 1
  %425 = xor i64 %416, %415
  %426 = lshr i64 %425, 4
  %427 = trunc i64 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %27, align 1
  %429 = icmp eq i64 %416, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %30, align 1
  %431 = lshr i64 %416, 63
  %432 = trunc i64 %431 to i8
  store i8 %432, i8* %33, align 1
  %433 = lshr i64 %415, 63
  %434 = xor i64 %431, %433
  %435 = add nuw nsw i64 %434, %431
  %436 = icmp eq i64 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %39, align 1
  %438 = add i64 %410, -16
  %439 = add i64 %412, 12
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  %442 = add i64 %441, 808
  store i64 %442, i64* %RCX.i599, align 8
  %443 = icmp ugt i64 %441, -809
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %14, align 1
  %445 = trunc i64 %442 to i32
  %446 = and i32 %445, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i64 %442, %441
  %452 = lshr i64 %451, 4
  %453 = trunc i64 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %27, align 1
  %455 = icmp eq i64 %442, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %30, align 1
  %457 = lshr i64 %442, 63
  %458 = trunc i64 %457 to i8
  store i8 %458, i8* %33, align 1
  %459 = lshr i64 %441, 63
  %460 = xor i64 %457, %459
  %461 = add nuw nsw i64 %460, %457
  %462 = icmp eq i64 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %39, align 1
  %464 = add i64 %410, -32
  %465 = add i64 %412, 23
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = mul nsw i64 %468, 28
  %470 = add i64 %469, %442
  %471 = lshr i64 %470, 63
  %472 = add i64 %470, 12
  store i64 %472, i64* %RCX.i599, align 8
  %473 = icmp ugt i64 %470, -13
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %14, align 1
  %475 = trunc i64 %472 to i32
  %476 = and i32 %475, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %21, align 1
  %481 = xor i64 %472, %470
  %482 = lshr i64 %481, 4
  %483 = trunc i64 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %27, align 1
  %485 = icmp eq i64 %472, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %30, align 1
  %487 = lshr i64 %472, 63
  %488 = trunc i64 %487 to i8
  store i8 %488, i8* %33, align 1
  %489 = xor i64 %487, %471
  %490 = add nuw nsw i64 %489, %487
  %491 = icmp eq i64 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %39, align 1
  %493 = load i64, i64* %RAX.i610, align 8
  store i64 %493, i64* %RDI.i634, align 8
  store i64 %472, i64* %RDX.i628, align 8
  %494 = add i64 %412, -69137
  %495 = add i64 %412, 45
  %496 = load i64, i64* %6, align 8
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %495, i64* %498, align 8
  store i64 %497, i64* %6, align 8
  store i64 %494, i64* %3, align 8
  %call2_4392b9 = tail call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* nonnull %0, i64 %494, %struct.Memory* %call2_439271)
  %499 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i631, align 8
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -32
  %502 = add i64 %499, 9
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  store i64 %505, i64* %RAX.i610, align 8
  %506 = shl nsw i64 %505, 2
  %507 = add i64 %500, -832
  %508 = add i64 %507, %506
  %509 = add i64 %499, 18
  store i64 %509, i64* %3, align 8
  %510 = load <2 x float>, <2 x float>* %74, align 1
  %511 = load <2 x i32>, <2 x i32>* %167, align 1
  %512 = inttoptr i64 %508 to float*
  %513 = load float, float* %512, align 4
  %514 = extractelement <2 x float> %510, i32 0
  %515 = fadd float %514, %513
  store float %515, float* %46, align 1
  %516 = bitcast <2 x float> %510 to <2 x i32>
  %517 = extractelement <2 x i32> %516, i32 1
  store i32 %517, i32* %159, align 1
  %518 = extractelement <2 x i32> %511, i32 0
  store i32 %518, i32* %160, align 1
  %519 = extractelement <2 x i32> %511, i32 1
  store i32 %519, i32* %161, align 1
  %520 = add i64 %499, 27
  store i64 %520, i64* %3, align 8
  %521 = load <2 x float>, <2 x float>* %74, align 1
  %522 = extractelement <2 x float> %521, i32 0
  store float %522, float* %512, align 4
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -8
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 4
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %524 to i64*
  %528 = load i64, i64* %527, align 8
  %529 = add i64 %528, 20
  store i64 %529, i64* %RAX.i610, align 8
  %530 = icmp ugt i64 %528, -21
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %14, align 1
  %532 = trunc i64 %529 to i32
  %533 = and i32 %532, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %21, align 1
  %538 = xor i64 %528, 16
  %539 = xor i64 %538, %529
  %540 = lshr i64 %539, 4
  %541 = trunc i64 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %27, align 1
  %543 = icmp eq i64 %529, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %30, align 1
  %545 = lshr i64 %529, 63
  %546 = trunc i64 %545 to i8
  store i8 %546, i8* %33, align 1
  %547 = lshr i64 %528, 63
  %548 = xor i64 %545, %547
  %549 = add nuw nsw i64 %548, %545
  %550 = icmp eq i64 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %39, align 1
  %552 = add i64 %523, -16
  %553 = add i64 %525, 12
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  %556 = add i64 %555, 808
  store i64 %556, i64* %RCX.i599, align 8
  %557 = icmp ugt i64 %555, -809
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = trunc i64 %556 to i32
  %560 = and i32 %559, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  %565 = xor i64 %556, %555
  %566 = lshr i64 %565, 4
  %567 = trunc i64 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %27, align 1
  %569 = icmp eq i64 %556, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %30, align 1
  %571 = lshr i64 %556, 63
  %572 = trunc i64 %571 to i8
  store i8 %572, i8* %33, align 1
  %573 = lshr i64 %555, 63
  %574 = xor i64 %571, %573
  %575 = add nuw nsw i64 %574, %571
  %576 = icmp eq i64 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %39, align 1
  %578 = add i64 %523, -32
  %579 = add i64 %525, 23
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  %583 = mul nsw i64 %582, 28
  %584 = add i64 %583, %556
  %585 = lshr i64 %584, 63
  %586 = add i64 %584, 20
  store i64 %586, i64* %RCX.i599, align 8
  %587 = icmp ugt i64 %584, -21
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = trunc i64 %586 to i32
  %590 = and i32 %589, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  %595 = xor i64 %584, 16
  %596 = xor i64 %595, %586
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %27, align 1
  %600 = icmp eq i64 %586, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %30, align 1
  %602 = lshr i64 %586, 63
  %603 = trunc i64 %602 to i8
  store i8 %603, i8* %33, align 1
  %604 = xor i64 %602, %585
  %605 = add nuw nsw i64 %604, %602
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %39, align 1
  %608 = load i64, i64* %RAX.i610, align 8
  store i64 %608, i64* %RDI.i634, align 8
  store i64 %586, i64* %RDX.i628, align 8
  %609 = add i64 %525, -69209
  %610 = add i64 %525, 45
  %611 = load i64, i64* %6, align 8
  %612 = add i64 %611, -8
  %613 = inttoptr i64 %612 to i64*
  store i64 %610, i64* %613, align 8
  store i64 %612, i64* %6, align 8
  store i64 %609, i64* %3, align 8
  %call2_439301 = tail call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* nonnull %0, i64 %609, %struct.Memory* %call2_4392b9)
  %614 = load i64, i64* %RBP.i, align 8
  %615 = add i64 %614, -32
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 4
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = sext i32 %619 to i64
  store i64 %620, i64* %RAX.i610, align 8
  %621 = shl nsw i64 %620, 2
  %622 = add i64 %614, -832
  %623 = add i64 %622, %621
  %624 = add i64 %616, 13
  store i64 %624, i64* %3, align 8
  %625 = load <2 x float>, <2 x float>* %74, align 1
  %626 = load <2 x i32>, <2 x i32>* %167, align 1
  %627 = inttoptr i64 %623 to float*
  %628 = load float, float* %627, align 4
  %629 = extractelement <2 x float> %625, i32 0
  %630 = fadd float %629, %628
  store float %630, float* %46, align 1
  %631 = bitcast <2 x float> %625 to <2 x i32>
  %632 = extractelement <2 x i32> %631, i32 1
  store i32 %632, i32* %159, align 1
  %633 = extractelement <2 x i32> %626, i32 0
  store i32 %633, i32* %160, align 1
  %634 = extractelement <2 x i32> %626, i32 1
  store i32 %634, i32* %161, align 1
  %635 = add i64 %616, 22
  store i64 %635, i64* %3, align 8
  %636 = load <2 x float>, <2 x float>* %74, align 1
  %637 = extractelement <2 x float> %636, i32 0
  store float %637, float* %627, align 4
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -32
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 3
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = add i32 %643, 1
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i610, align 8
  %646 = icmp eq i32 %643, -1
  %647 = icmp eq i32 %644, 0
  %648 = or i1 %646, %647
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %14, align 1
  %650 = and i32 %644, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %21, align 1
  %655 = xor i32 %644, %643
  %656 = lshr i32 %655, 4
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  store i8 %658, i8* %27, align 1
  %659 = zext i1 %647 to i8
  store i8 %659, i8* %30, align 1
  %660 = lshr i32 %644, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %33, align 1
  %662 = lshr i32 %643, 31
  %663 = xor i32 %660, %662
  %664 = add nuw nsw i32 %663, %660
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %39, align 1
  %667 = add i64 %640, 9
  store i64 %667, i64* %3, align 8
  store i32 %644, i32* %642, align 4
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, -332
  store i64 %669, i64* %3, align 8
  br label %block_.L_4391d9

block_.L_43932a:                                  ; preds = %block_.L_4391d9
  %670 = add i64 %170, -832
  store i64 %670, i64* %RDI.i634, align 8
  %671 = add i64 %210, 11
  store i64 %671, i64* %3, align 8
  %672 = load i64, i64* %178, align 8
  store i64 %672, i64* %RAX.i610, align 8
  %673 = add i64 %672, 4
  %674 = add i64 %210, 14
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RSI.i631, align 8
  %678 = add i64 %210, -69690
  %679 = add i64 %210, 19
  %680 = load i64, i64* %6, align 8
  %681 = add i64 %680, -8
  %682 = inttoptr i64 %681 to i64*
  store i64 %679, i64* %682, align 8
  store i64 %681, i64* %6, align 8
  store i64 %678, i64* %3, align 8
  %call2_439338 = tail call %struct.Memory* @sub_4282f0.LogNorm(%struct.State* nonnull %0, i64 %678, %struct.Memory* %MEMORY.1)
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43933d

block_.L_43933d:                                  ; preds = %block_4391b4.block_.L_43933d_crit_edge, %block_.L_43932a, %block_.L_4391c1
  %RAX.i353.pre-phi = phi i64* [ %.pre25, %block_4391b4.block_.L_43933d_crit_edge ], [ %RAX.i610, %block_.L_43932a ], [ %RAX.i610, %block_.L_4391c1 ]
  %683 = phi i64 [ %78, %block_4391b4.block_.L_43933d_crit_edge ], [ %.pre20, %block_.L_43932a ], [ %78, %block_.L_4391c1 ]
  %684 = phi i64 [ %123, %block_4391b4.block_.L_43933d_crit_edge ], [ %.pre19, %block_.L_43932a ], [ %155, %block_.L_4391c1 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4391b4.block_.L_43933d_crit_edge ], [ %call2_439338, %block_.L_43932a ], [ %2, %block_.L_4391c1 ]
  store i64 3, i64* %RSI.i631, align 8
  %685 = add i64 %683, -8
  %686 = add i64 %684, 9
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RDI.i634, align 8
  %689 = add i64 %684, 101715
  %690 = add i64 %684, 14
  %691 = load i64, i64* %6, align 8
  %692 = add i64 %691, -8
  %693 = inttoptr i64 %692 to i64*
  store i64 %690, i64* %693, align 8
  store i64 %692, i64* %6, align 8
  store i64 %689, i64* %3, align 8
  %call2_439346 = tail call %struct.Memory* @sub_452090.FSum(%struct.State* nonnull %0, i64 %689, %struct.Memory* %MEMORY.3)
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -836
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, 8
  store i64 %697, i64* %3, align 8
  %698 = load <2 x float>, <2 x float>* %74, align 1
  %699 = extractelement <2 x float> %698, i32 0
  %700 = inttoptr i64 %695 to float*
  store float %699, float* %700, align 4
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -8
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 4
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RDI.i634, align 8
  %707 = add i64 %706, 12
  %708 = add i64 %703, 9
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  store i32 %710, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %711 = add i64 %703, 13
  store i64 %711, i64* %3, align 8
  %712 = load i64, i64* %705, align 8
  store i64 %712, i64* %RDI.i634, align 8
  %713 = add i64 %712, 16
  %714 = add i64 %703, 18
  store i64 %714, i64* %3, align 8
  %715 = load <2 x float>, <2 x float>* %74, align 1
  %716 = bitcast i64* %50 to <2 x i32>*
  %717 = load <2 x i32>, <2 x i32>* %716, align 1
  %718 = inttoptr i64 %713 to float*
  %719 = load float, float* %718, align 4
  %720 = extractelement <2 x float> %715, i32 0
  %721 = fadd float %720, %719
  store float %721, float* %46, align 1
  %722 = bitcast <2 x float> %715 to <2 x i32>
  %723 = extractelement <2 x i32> %722, i32 1
  %724 = bitcast i8* %48 to i32*
  store i32 %723, i32* %724, align 1
  %725 = extractelement <2 x i32> %717, i32 0
  %726 = bitcast i64* %50 to i32*
  store i32 %725, i32* %726, align 1
  %727 = extractelement <2 x i32> %717, i32 1
  %728 = bitcast i8* %52 to i32*
  store i32 %727, i32* %728, align 1
  %729 = add i64 %701, -844
  %730 = add i64 %703, 26
  store i64 %730, i64* %3, align 8
  %731 = load <2 x float>, <2 x float>* %74, align 1
  %732 = extractelement <2 x float> %731, i32 0
  %733 = inttoptr i64 %729 to float*
  store float %732, float* %733, align 4
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -8
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 4
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RDI.i634, align 8
  %740 = add i64 %739, 20
  %741 = add i64 %736, 9
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  store i32 %743, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %744 = add i64 %736, 13
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %738, align 8
  store i64 %745, i64* %RDI.i634, align 8
  %746 = add i64 %745, 24
  %747 = add i64 %736, 18
  store i64 %747, i64* %3, align 8
  %748 = load <2 x float>, <2 x float>* %74, align 1
  %749 = load <2 x i32>, <2 x i32>* %716, align 1
  %750 = inttoptr i64 %746 to float*
  %751 = load float, float* %750, align 4
  %752 = extractelement <2 x float> %748, i32 0
  %753 = fadd float %752, %751
  store float %753, float* %46, align 1
  %754 = bitcast <2 x float> %748 to <2 x i32>
  %755 = extractelement <2 x i32> %754, i32 1
  store i32 %755, i32* %724, align 1
  %756 = extractelement <2 x i32> %749, i32 0
  store i32 %756, i32* %726, align 1
  %757 = extractelement <2 x i32> %749, i32 1
  store i32 %757, i32* %728, align 1
  %758 = add i64 %734, -840
  %759 = add i64 %736, 26
  store i64 %759, i64* %3, align 8
  %760 = load <2 x float>, <2 x float>* %74, align 1
  %761 = extractelement <2 x float> %760, i32 0
  %762 = inttoptr i64 %758 to float*
  store float %761, float* %762, align 4
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -28
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 7
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %764 to i32*
  store i32 0, i32* %767, align 4
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i350 = getelementptr inbounds %union.anon, %union.anon* %768, i64 0, i32 0
  %ECX.i = bitcast %union.anon* %768 to i32*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %770 = bitcast %union.VectorReg* %769 to i8*
  %771 = bitcast %union.VectorReg* %769 to float*
  %772 = bitcast %union.VectorReg* %769 to i32*
  %773 = getelementptr inbounds i8, i8* %770, i64 4
  %774 = bitcast i8* %773 to float*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %776 = bitcast i64* %775 to float*
  %777 = getelementptr inbounds i8, i8* %770, i64 12
  %778 = bitcast i8* %777 to float*
  %779 = bitcast %union.VectorReg* %769 to <2 x float>*
  %780 = bitcast i64* %775 to <2 x i32>*
  %781 = bitcast i8* %773 to i32*
  %782 = bitcast i64* %775 to i32*
  %783 = bitcast i8* %777 to i32*
  %.pre21 = load i64, i64* %3, align 8
  %784 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  br label %block_.L_43938e

block_.L_43938e:                                  ; preds = %block_.L_4395e6, %block_.L_43933d
  %785 = phi i64 [ %1865, %block_.L_4395e6 ], [ %.pre21, %block_.L_43933d ]
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -28
  %788 = add i64 %785, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, -7
  %792 = icmp ult i32 %790, 7
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %14, align 1
  %794 = and i32 %791, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %21, align 1
  %799 = xor i32 %791, %790
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %27, align 1
  %803 = icmp eq i32 %791, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %30, align 1
  %805 = lshr i32 %791, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %33, align 1
  %807 = lshr i32 %790, 31
  %808 = xor i32 %805, %807
  %809 = add nuw nsw i32 %808, %807
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %39, align 1
  %812 = icmp ne i8 %806, 0
  %813 = xor i1 %812, %810
  %.v27 = select i1 %813, i64 10, i64 635
  %814 = add i64 %785, %.v27
  store i64 %814, i64* %3, align 8
  br i1 %813, label %block_439398, label %block_.L_439609

block_439398:                                     ; preds = %block_.L_43938e
  store <4 x i32> zeroinitializer, <4 x i32>* %784, align 1
  %815 = add i64 %786, -848
  %816 = add i64 %814, 11
  store i64 %816, i64* %3, align 8
  %817 = load <2 x float>, <2 x float>* %74, align 1
  %818 = extractelement <2 x float> %817, i32 0
  %819 = inttoptr i64 %815 to float*
  store float %818, float* %819, align 4
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -32
  %822 = load i64, i64* %3, align 8
  %823 = add i64 %822, 7
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %821 to i32*
  store i32 0, i32* %824, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_4393aa

block_.L_4393aa:                                  ; preds = %block_.L_4395d3, %block_439398
  %825 = phi i64 [ %1814, %block_.L_4395d3 ], [ %.pre22, %block_439398 ]
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -32
  %828 = add i64 %825, 3
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i353.pre-phi, align 8
  %832 = add i64 %826, -16
  %833 = add i64 %825, 7
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %RCX.i350, align 8
  %836 = add i64 %835, 4
  %837 = add i64 %825, 10
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sub i32 %830, %839
  %841 = icmp ult i32 %830, %839
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %840, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %839, %830
  %849 = xor i32 %848, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %27, align 1
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %30, align 1
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %33, align 1
  %857 = lshr i32 %830, 31
  %858 = lshr i32 %839, 31
  %859 = xor i32 %858, %857
  %860 = xor i32 %855, %857
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %39, align 1
  %864 = icmp ne i8 %856, 0
  %865 = xor i1 %864, %862
  %.v28 = select i1 %865, i64 16, i64 572
  %866 = add i64 %825, %.v28
  store i64 %866, i64* %3, align 8
  br i1 %865, label %block_4393ba, label %block_.L_4395e6

block_4393ba:                                     ; preds = %block_.L_4393aa
  %867 = add i64 %826, -28
  %868 = add i64 %866, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i353.pre-phi, align 8
  %872 = add i32 %870, -3
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RCX.i350, align 8
  %874 = icmp ult i32 %870, 3
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = and i32 %872, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %21, align 1
  %881 = xor i32 %872, %870
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %27, align 1
  %885 = icmp eq i32 %872, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %30, align 1
  %887 = lshr i32 %872, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %33, align 1
  %889 = lshr i32 %870, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %39, align 1
  %894 = add i64 %826, -860
  %895 = add i64 %866, 14
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  store i32 %870, i32* %896, align 4
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -864
  %899 = load i32, i32* %ECX.i, align 4
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 6
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %898 to i32*
  store i32 %899, i32* %902, align 4
  %903 = load i64, i64* %3, align 8
  %904 = load i8, i8* %14, align 1
  %905 = icmp ne i8 %904, 0
  %.v38 = select i1 %905, i64 69, i64 6
  %906 = add i64 %903, %.v38
  %cmpBr_4393ce = icmp eq i8 %904, 1
  %907 = add i64 %906, 5
  store i64 %907, i64* %3, align 8
  br i1 %cmpBr_4393ce, label %block_.L_439413, label %block_4393d4

block_4393d4:                                     ; preds = %block_4393ba
  %908 = load i64, i64* %RBP.i, align 8
  %909 = add i64 %908, -860
  %910 = add i64 %906, 11
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = add i32 %912, -3
  %914 = lshr i32 %913, 31
  %915 = add i32 %912, -5
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i353.pre-phi, align 8
  %917 = icmp ult i32 %913, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %14, align 1
  %919 = and i32 %915, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  %924 = xor i32 %915, %913
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
  %932 = xor i32 %930, %914
  %933 = add nuw nsw i32 %932, %914
  %934 = icmp eq i32 %933, 2
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %39, align 1
  %936 = add i64 %908, -868
  %937 = add i64 %906, 23
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  store i32 %915, i32* %938, align 4
  %939 = load i64, i64* %3, align 8
  %940 = load i8, i8* %14, align 1
  %941 = icmp ne i8 %940, 0
  %.v39 = select i1 %941, i64 203, i64 6
  %942 = add i64 %939, %.v39
  store i64 %942, i64* %3, align 8
  %cmpBr_4393eb = icmp eq i8 %940, 1
  %943 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_4393eb, label %block_.L_4394b6, label %block_4393f1

block_4393f1:                                     ; preds = %block_4393d4
  %944 = add i64 %943, -860
  %945 = add i64 %942, 11
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = add i32 %947, -5
  %949 = lshr i32 %948, 31
  %950 = add i32 %947, -7
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i353.pre-phi, align 8
  %952 = icmp ult i32 %948, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %14, align 1
  %954 = and i32 %950, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i32 %950, %948
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %27, align 1
  %963 = icmp eq i32 %950, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %30, align 1
  %965 = lshr i32 %950, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %33, align 1
  %967 = xor i32 %965, %949
  %968 = add nuw nsw i32 %967, %949
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %39, align 1
  %971 = add i64 %943, -872
  %972 = add i64 %942, 23
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  store i32 %950, i32* %973, align 4
  %974 = load i64, i64* %3, align 8
  %975 = load i8, i8* %14, align 1
  %976 = icmp ne i8 %975, 0
  %.v40 = select i1 %976, i64 319, i64 6
  %977 = add i64 %974, %.v40
  store i64 %977, i64* %3, align 8
  %cmpBr_439408 = icmp eq i8 %975, 1
  br i1 %cmpBr_439408, label %block_.L_439547, label %block_43940e

block_43940e:                                     ; preds = %block_4393f1
  %978 = add i64 %977, 453
  store i64 %978, i64* %3, align 8
  br label %block_.L_4395d3

block_.L_439413:                                  ; preds = %block_4393ba
  store i64 3, i64* %RSI.i631, align 8
  %979 = load i64, i64* %RBP.i, align 8
  %980 = add i64 %979, -32
  %981 = add i64 %906, 9
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = sext i32 %983 to i64
  store i64 %984, i64* %RAX.i353.pre-phi, align 8
  %985 = shl nsw i64 %984, 2
  %986 = add i64 %979, -832
  %987 = add i64 %986, %985
  %988 = add i64 %906, 18
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  store i32 %990, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %991 = add i64 %979, -8
  %992 = add i64 %906, 22
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RAX.i353.pre-phi, align 8
  %995 = add i64 %979, -28
  %996 = add i64 %906, 26
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RCX.i350, align 8
  %1000 = shl nsw i64 %999, 2
  %1001 = add i64 %1000, %994
  %1002 = add i64 %906, 31
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  store i32 %1004, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1005 = add i64 %979, -16
  %1006 = add i64 %906, 35
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  %1009 = add i64 %1008, 808
  store i64 %1009, i64* %RAX.i353.pre-phi, align 8
  %1010 = icmp ugt i64 %1008, -809
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %14, align 1
  %1012 = trunc i64 %1009 to i32
  %1013 = and i32 %1012, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  %1018 = xor i64 %1009, %1008
  %1019 = lshr i64 %1018, 4
  %1020 = trunc i64 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %27, align 1
  %1022 = icmp eq i64 %1009, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %30, align 1
  %1024 = lshr i64 %1009, 63
  %1025 = trunc i64 %1024 to i8
  store i8 %1025, i8* %33, align 1
  %1026 = lshr i64 %1008, 63
  %1027 = xor i64 %1024, %1026
  %1028 = add nuw nsw i64 %1027, %1024
  %1029 = icmp eq i64 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %39, align 1
  %1031 = add i64 %906, 45
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %982, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = mul nsw i64 %1033, 28
  store i64 %1034, i64* %RCX.i350, align 8
  %1035 = lshr i64 %1034, 63
  %1036 = add i64 %1034, %1009
  store i64 %1036, i64* %RAX.i353.pre-phi, align 8
  %1037 = icmp ult i64 %1036, %1009
  %1038 = icmp ult i64 %1036, %1034
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %14, align 1
  %1041 = trunc i64 %1036 to i32
  %1042 = and i32 %1041, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %21, align 1
  %1047 = xor i64 %1034, %1009
  %1048 = xor i64 %1047, %1036
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %27, align 1
  %1052 = icmp eq i64 %1036, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %30, align 1
  %1054 = lshr i64 %1036, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %33, align 1
  %1056 = xor i64 %1054, %1024
  %1057 = xor i64 %1054, %1035
  %1058 = add nuw nsw i64 %1056, %1057
  %1059 = icmp eq i64 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %39, align 1
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -28
  %1063 = add i64 %906, 56
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i350, align 8
  %1067 = shl nsw i64 %1066, 2
  %1068 = add i64 %1067, %1036
  %1069 = add i64 %906, 61
  store i64 %1069, i64* %3, align 8
  %1070 = load <2 x float>, <2 x float>* %779, align 1
  %1071 = load <2 x i32>, <2 x i32>* %780, align 1
  %1072 = inttoptr i64 %1068 to float*
  %1073 = load float, float* %1072, align 4
  %1074 = extractelement <2 x float> %1070, i32 0
  %1075 = fadd float %1074, %1073
  store float %1075, float* %771, align 1
  %1076 = bitcast <2 x float> %1070 to <2 x i32>
  %1077 = extractelement <2 x i32> %1076, i32 1
  store i32 %1077, i32* %781, align 1
  %1078 = extractelement <2 x i32> %1071, i32 0
  store i32 %1078, i32* %782, align 1
  %1079 = extractelement <2 x i32> %1071, i32 1
  store i32 %1079, i32* %783, align 1
  %1080 = load <2 x float>, <2 x float>* %74, align 1
  %1081 = load <2 x i32>, <2 x i32>* %716, align 1
  %1082 = load <2 x float>, <2 x float>* %779, align 1
  %1083 = extractelement <2 x float> %1080, i32 0
  %1084 = extractelement <2 x float> %1082, i32 0
  %1085 = fmul float %1083, %1084
  store float %1085, float* %46, align 1
  %1086 = bitcast <2 x float> %1080 to <2 x i32>
  %1087 = extractelement <2 x i32> %1086, i32 1
  store i32 %1087, i32* %724, align 1
  %1088 = extractelement <2 x i32> %1081, i32 0
  store i32 %1088, i32* %726, align 1
  %1089 = extractelement <2 x i32> %1081, i32 1
  store i32 %1089, i32* %728, align 1
  %1090 = add i64 %1061, -836
  %1091 = add i64 %906, 73
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  store i32 %1093, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1094 = add i64 %1061, -16
  %1095 = add i64 %906, 77
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i64*
  %1097 = load i64, i64* %1096, align 8
  %1098 = add i64 %1097, 808
  store i64 %1098, i64* %RAX.i353.pre-phi, align 8
  %1099 = icmp ugt i64 %1097, -809
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1
  %1101 = trunc i64 %1098 to i32
  %1102 = and i32 %1101, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %21, align 1
  %1107 = xor i64 %1098, %1097
  %1108 = lshr i64 %1107, 4
  %1109 = trunc i64 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %27, align 1
  %1111 = icmp eq i64 %1098, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i64 %1098, 63
  %1114 = trunc i64 %1113 to i8
  store i8 %1114, i8* %33, align 1
  %1115 = lshr i64 %1097, 63
  %1116 = xor i64 %1113, %1115
  %1117 = add nuw nsw i64 %1116, %1113
  %1118 = icmp eq i64 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %39, align 1
  %1120 = add i64 %1061, -32
  %1121 = add i64 %906, 87
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = mul nsw i64 %1124, 28
  store i64 %1125, i64* %RCX.i350, align 8
  %1126 = lshr i64 %1125, 63
  %1127 = add i64 %1125, %1098
  store i64 %1127, i64* %RAX.i353.pre-phi, align 8
  %1128 = icmp ult i64 %1127, %1098
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
  %1138 = xor i64 %1125, %1098
  %1139 = xor i64 %1138, %1127
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %27, align 1
  %1143 = icmp eq i64 %1127, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %30, align 1
  %1145 = lshr i64 %1127, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %33, align 1
  %1147 = xor i64 %1145, %1113
  %1148 = xor i64 %1145, %1126
  %1149 = add nuw nsw i64 %1147, %1148
  %1150 = icmp eq i64 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %39, align 1
  store i64 %1127, i64* %RDI.i634, align 8
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -876
  %1154 = add i64 %906, 105
  store i64 %1154, i64* %3, align 8
  %1155 = load <2 x float>, <2 x float>* %779, align 1
  %1156 = extractelement <2 x float> %1155, i32 0
  %1157 = inttoptr i64 %1153 to float*
  store float %1156, float* %1157, align 4
  %1158 = load i64, i64* %RBP.i, align 8
  %1159 = add i64 %1158, -880
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 8
  store i64 %1161, i64* %3, align 8
  %1162 = load <2 x float>, <2 x float>* %74, align 1
  %1163 = extractelement <2 x float> %1162, i32 0
  %1164 = inttoptr i64 %1159 to float*
  store float %1163, float* %1164, align 4
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 101388
  %1167 = add i64 %1165, 5
  %1168 = load i64, i64* %6, align 8
  %1169 = add i64 %1168, -8
  %1170 = inttoptr i64 %1169 to i64*
  store i64 %1167, i64* %1170, align 8
  store i64 %1169, i64* %6, align 8
  store i64 %1166, i64* %3, align 8
  %call2_439484 = tail call %struct.Memory* @sub_452090.FSum(%struct.State* nonnull %0, i64 %1166, %struct.Memory* %call2_439346)
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -876
  %1173 = load i64, i64* %3, align 8
  %1174 = add i64 %1173, 8
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1172 to i32*
  %1176 = load i32, i32* %1175, align 4
  store i32 %1176, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1177 = load <2 x float>, <2 x float>* %779, align 1
  %1178 = load <2 x i32>, <2 x i32>* %780, align 1
  %1179 = load <2 x float>, <2 x float>* %74, align 1
  %1180 = extractelement <2 x float> %1177, i32 0
  %1181 = extractelement <2 x float> %1179, i32 0
  %1182 = fadd float %1180, %1181
  store float %1182, float* %771, align 1
  %1183 = bitcast <2 x float> %1177 to <2 x i32>
  %1184 = extractelement <2 x i32> %1183, i32 1
  store i32 %1184, i32* %781, align 1
  %1185 = extractelement <2 x i32> %1178, i32 0
  store i32 %1185, i32* %782, align 1
  %1186 = extractelement <2 x i32> %1178, i32 1
  store i32 %1186, i32* %783, align 1
  %1187 = add i64 %1171, -880
  %1188 = add i64 %1173, 20
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  store i32 %1190, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1191 = load <2 x float>, <2 x float>* %74, align 1
  %1192 = load <2 x i32>, <2 x i32>* %716, align 1
  %1193 = load <2 x float>, <2 x float>* %779, align 1
  %1194 = extractelement <2 x float> %1191, i32 0
  %1195 = extractelement <2 x float> %1193, i32 0
  %1196 = fdiv float %1194, %1195
  store float %1196, float* %46, align 1
  %1197 = bitcast <2 x float> %1191 to <2 x i32>
  %1198 = extractelement <2 x i32> %1197, i32 1
  store i32 %1198, i32* %724, align 1
  %1199 = extractelement <2 x i32> %1192, i32 0
  store i32 %1199, i32* %726, align 1
  %1200 = extractelement <2 x i32> %1192, i32 1
  store i32 %1200, i32* %728, align 1
  %1201 = add i64 %1171, -848
  %1202 = add i64 %1173, 32
  store i64 %1202, i64* %3, align 8
  %1203 = load <2 x float>, <2 x float>* %74, align 1
  %1204 = load <2 x i32>, <2 x i32>* %716, align 1
  %1205 = inttoptr i64 %1201 to float*
  %1206 = load float, float* %1205, align 4
  %1207 = extractelement <2 x float> %1203, i32 0
  %1208 = fadd float %1207, %1206
  store float %1208, float* %46, align 1
  %1209 = bitcast <2 x float> %1203 to <2 x i32>
  %1210 = extractelement <2 x i32> %1209, i32 1
  store i32 %1210, i32* %724, align 1
  %1211 = extractelement <2 x i32> %1204, i32 0
  store i32 %1211, i32* %726, align 1
  %1212 = extractelement <2 x i32> %1204, i32 1
  store i32 %1212, i32* %728, align 1
  %1213 = add i64 %1173, 40
  store i64 %1213, i64* %3, align 8
  %1214 = load <2 x float>, <2 x float>* %74, align 1
  %1215 = extractelement <2 x float> %1214, i32 0
  store float %1215, float* %1205, align 4
  %1216 = load i64, i64* %3, align 8
  %1217 = add i64 %1216, 290
  store i64 %1217, i64* %3, align 8
  br label %block_.L_4395d3

block_.L_4394b6:                                  ; preds = %block_4393d4
  %1218 = add i64 %943, -32
  %1219 = add i64 %942, 4
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = sext i32 %1221 to i64
  store i64 %1222, i64* %RAX.i353.pre-phi, align 8
  %1223 = shl nsw i64 %1222, 2
  %1224 = add i64 %943, -832
  %1225 = add i64 %1224, %1223
  %1226 = add i64 %942, 13
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  store i32 %1228, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1229 = add i64 %943, -8
  %1230 = add i64 %942, 17
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %RAX.i353.pre-phi, align 8
  %1233 = add i64 %943, -28
  %1234 = add i64 %942, 21
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = sext i32 %1236 to i64
  store i64 %1237, i64* %RCX.i350, align 8
  %1238 = shl nsw i64 %1237, 2
  %1239 = add i64 %1238, %1232
  %1240 = add i64 %942, 26
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  store i32 %1242, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1243 = add i64 %943, -16
  %1244 = add i64 %942, 30
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245, align 8
  %1247 = add i64 %1246, 808
  store i64 %1247, i64* %RAX.i353.pre-phi, align 8
  %1248 = icmp ugt i64 %1246, -809
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %14, align 1
  %1250 = trunc i64 %1247 to i32
  %1251 = and i32 %1250, 255
  %1252 = tail call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  store i8 %1255, i8* %21, align 1
  %1256 = xor i64 %1247, %1246
  %1257 = lshr i64 %1256, 4
  %1258 = trunc i64 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %27, align 1
  %1260 = icmp eq i64 %1247, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %30, align 1
  %1262 = lshr i64 %1247, 63
  %1263 = trunc i64 %1262 to i8
  store i8 %1263, i8* %33, align 1
  %1264 = lshr i64 %1246, 63
  %1265 = xor i64 %1262, %1264
  %1266 = add nuw nsw i64 %1265, %1262
  %1267 = icmp eq i64 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %39, align 1
  %1269 = add i64 %942, 40
  store i64 %1269, i64* %3, align 8
  %1270 = load i32, i32* %1220, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = mul nsw i64 %1271, 28
  store i64 %1272, i64* %RCX.i350, align 8
  %1273 = lshr i64 %1272, 63
  %1274 = add i64 %1272, %1247
  store i64 %1274, i64* %RAX.i353.pre-phi, align 8
  %1275 = icmp ult i64 %1274, %1247
  %1276 = icmp ult i64 %1274, %1272
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %14, align 1
  %1279 = trunc i64 %1274 to i32
  %1280 = and i32 %1279, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %21, align 1
  %1285 = xor i64 %1272, %1247
  %1286 = xor i64 %1285, %1274
  %1287 = lshr i64 %1286, 4
  %1288 = trunc i64 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %27, align 1
  %1290 = icmp eq i64 %1274, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %30, align 1
  %1292 = lshr i64 %1274, 63
  %1293 = trunc i64 %1292 to i8
  store i8 %1293, i8* %33, align 1
  %1294 = xor i64 %1292, %1262
  %1295 = xor i64 %1292, %1273
  %1296 = add nuw nsw i64 %1294, %1295
  %1297 = icmp eq i64 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %39, align 1
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -28
  %1301 = add i64 %942, 51
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = sext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i350, align 8
  %1305 = shl nsw i64 %1304, 2
  %1306 = add i64 %1305, %1274
  %1307 = add i64 %942, 56
  store i64 %1307, i64* %3, align 8
  %1308 = load <2 x float>, <2 x float>* %779, align 1
  %1309 = load <2 x i32>, <2 x i32>* %780, align 1
  %1310 = inttoptr i64 %1306 to float*
  %1311 = load float, float* %1310, align 4
  %1312 = extractelement <2 x float> %1308, i32 0
  %1313 = fadd float %1312, %1311
  store float %1313, float* %771, align 1
  %1314 = bitcast <2 x float> %1308 to <2 x i32>
  %1315 = extractelement <2 x i32> %1314, i32 1
  store i32 %1315, i32* %781, align 1
  %1316 = extractelement <2 x i32> %1309, i32 0
  store i32 %1316, i32* %782, align 1
  %1317 = extractelement <2 x i32> %1309, i32 1
  store i32 %1317, i32* %783, align 1
  %1318 = load <2 x float>, <2 x float>* %74, align 1
  %1319 = load <2 x i32>, <2 x i32>* %716, align 1
  %1320 = load <2 x float>, <2 x float>* %779, align 1
  %1321 = extractelement <2 x float> %1318, i32 0
  %1322 = extractelement <2 x float> %1320, i32 0
  %1323 = fmul float %1321, %1322
  store float %1323, float* %46, align 1
  %1324 = bitcast <2 x float> %1318 to <2 x i32>
  %1325 = extractelement <2 x i32> %1324, i32 1
  store i32 %1325, i32* %724, align 1
  %1326 = extractelement <2 x i32> %1319, i32 0
  store i32 %1326, i32* %726, align 1
  %1327 = extractelement <2 x i32> %1319, i32 1
  store i32 %1327, i32* %728, align 1
  %1328 = add i64 %1299, -844
  %1329 = add i64 %942, 68
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  store i32 %1331, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1332 = add i64 %1299, -16
  %1333 = add i64 %942, 72
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  %1336 = add i64 %1335, 808
  store i64 %1336, i64* %RAX.i353.pre-phi, align 8
  %1337 = icmp ugt i64 %1335, -809
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %14, align 1
  %1339 = trunc i64 %1336 to i32
  %1340 = and i32 %1339, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %21, align 1
  %1345 = xor i64 %1336, %1335
  %1346 = lshr i64 %1345, 4
  %1347 = trunc i64 %1346 to i8
  %1348 = and i8 %1347, 1
  store i8 %1348, i8* %27, align 1
  %1349 = icmp eq i64 %1336, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %30, align 1
  %1351 = lshr i64 %1336, 63
  %1352 = trunc i64 %1351 to i8
  store i8 %1352, i8* %33, align 1
  %1353 = lshr i64 %1335, 63
  %1354 = xor i64 %1351, %1353
  %1355 = add nuw nsw i64 %1354, %1351
  %1356 = icmp eq i64 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %39, align 1
  %1358 = add i64 %1299, -32
  %1359 = add i64 %942, 82
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = sext i32 %1361 to i64
  %1363 = mul nsw i64 %1362, 28
  store i64 %1363, i64* %RCX.i350, align 8
  %1364 = lshr i64 %1363, 63
  %1365 = add i64 %1363, %1336
  store i64 %1365, i64* %RAX.i353.pre-phi, align 8
  %1366 = icmp ult i64 %1365, %1336
  %1367 = icmp ult i64 %1365, %1363
  %1368 = or i1 %1366, %1367
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %14, align 1
  %1370 = trunc i64 %1365 to i32
  %1371 = and i32 %1370, 255
  %1372 = tail call i32 @llvm.ctpop.i32(i32 %1371)
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %21, align 1
  %1376 = xor i64 %1363, %1336
  %1377 = xor i64 %1376, %1365
  %1378 = lshr i64 %1377, 4
  %1379 = trunc i64 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %27, align 1
  %1381 = icmp eq i64 %1365, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %30, align 1
  %1383 = lshr i64 %1365, 63
  %1384 = trunc i64 %1383 to i8
  store i8 %1384, i8* %33, align 1
  %1385 = xor i64 %1383, %1351
  %1386 = xor i64 %1383, %1364
  %1387 = add nuw nsw i64 %1385, %1386
  %1388 = icmp eq i64 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %39, align 1
  %1390 = add i64 %1365, 12
  %1391 = add i64 %942, 94
  store i64 %1391, i64* %3, align 8
  %1392 = load <2 x float>, <2 x float>* %779, align 1
  %1393 = load <2 x i32>, <2 x i32>* %780, align 1
  %1394 = inttoptr i64 %1390 to float*
  %1395 = load float, float* %1394, align 4
  %1396 = extractelement <2 x float> %1392, i32 0
  %1397 = fadd float %1396, %1395
  store float %1397, float* %771, align 1
  %1398 = bitcast <2 x float> %1392 to <2 x i32>
  %1399 = extractelement <2 x i32> %1398, i32 1
  store i32 %1399, i32* %781, align 1
  %1400 = extractelement <2 x i32> %1393, i32 0
  store i32 %1400, i32* %782, align 1
  %1401 = extractelement <2 x i32> %1393, i32 1
  store i32 %1401, i32* %783, align 1
  %1402 = load i64, i64* %RBP.i, align 8
  %1403 = add i64 %1402, -16
  %1404 = add i64 %942, 98
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  %1407 = add i64 %1406, 808
  store i64 %1407, i64* %RAX.i353.pre-phi, align 8
  %1408 = icmp ugt i64 %1406, -809
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = trunc i64 %1407 to i32
  %1411 = and i32 %1410, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  %1416 = xor i64 %1407, %1406
  %1417 = lshr i64 %1416, 4
  %1418 = trunc i64 %1417 to i8
  %1419 = and i8 %1418, 1
  store i8 %1419, i8* %27, align 1
  %1420 = icmp eq i64 %1407, 0
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %30, align 1
  %1422 = lshr i64 %1407, 63
  %1423 = trunc i64 %1422 to i8
  store i8 %1423, i8* %33, align 1
  %1424 = lshr i64 %1406, 63
  %1425 = xor i64 %1422, %1424
  %1426 = add nuw nsw i64 %1425, %1422
  %1427 = icmp eq i64 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %39, align 1
  %1429 = add i64 %1402, -32
  %1430 = add i64 %942, 108
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = mul nsw i64 %1433, 28
  store i64 %1434, i64* %RCX.i350, align 8
  %1435 = lshr i64 %1434, 63
  %1436 = add i64 %1434, %1407
  store i64 %1436, i64* %RAX.i353.pre-phi, align 8
  %1437 = icmp ult i64 %1436, %1407
  %1438 = icmp ult i64 %1436, %1434
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %14, align 1
  %1441 = trunc i64 %1436 to i32
  %1442 = and i32 %1441, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i64 %1434, %1407
  %1448 = xor i64 %1447, %1436
  %1449 = lshr i64 %1448, 4
  %1450 = trunc i64 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %27, align 1
  %1452 = icmp eq i64 %1436, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %30, align 1
  %1454 = lshr i64 %1436, 63
  %1455 = trunc i64 %1454 to i8
  store i8 %1455, i8* %33, align 1
  %1456 = xor i64 %1454, %1422
  %1457 = xor i64 %1454, %1435
  %1458 = add nuw nsw i64 %1456, %1457
  %1459 = icmp eq i64 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %39, align 1
  %1461 = add i64 %1436, 16
  %1462 = add i64 %942, 120
  store i64 %1462, i64* %3, align 8
  %1463 = load <2 x float>, <2 x float>* %779, align 1
  %1464 = load <2 x i32>, <2 x i32>* %780, align 1
  %1465 = inttoptr i64 %1461 to float*
  %1466 = load float, float* %1465, align 4
  %1467 = extractelement <2 x float> %1463, i32 0
  %1468 = fadd float %1467, %1466
  store float %1468, float* %771, align 1
  %1469 = bitcast <2 x float> %1463 to <2 x i32>
  %1470 = extractelement <2 x i32> %1469, i32 1
  store i32 %1470, i32* %781, align 1
  %1471 = extractelement <2 x i32> %1464, i32 0
  store i32 %1471, i32* %782, align 1
  %1472 = extractelement <2 x i32> %1464, i32 1
  store i32 %1472, i32* %783, align 1
  %1473 = load <2 x float>, <2 x float>* %74, align 1
  %1474 = load <2 x i32>, <2 x i32>* %716, align 1
  %1475 = load <2 x float>, <2 x float>* %779, align 1
  %1476 = extractelement <2 x float> %1473, i32 0
  %1477 = extractelement <2 x float> %1475, i32 0
  %1478 = fdiv float %1476, %1477
  store float %1478, float* %46, align 1
  %1479 = bitcast <2 x float> %1473 to <2 x i32>
  %1480 = extractelement <2 x i32> %1479, i32 1
  store i32 %1480, i32* %724, align 1
  %1481 = extractelement <2 x i32> %1474, i32 0
  store i32 %1481, i32* %726, align 1
  %1482 = extractelement <2 x i32> %1474, i32 1
  store i32 %1482, i32* %728, align 1
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -848
  %1485 = add i64 %942, 132
  store i64 %1485, i64* %3, align 8
  %1486 = load <2 x float>, <2 x float>* %74, align 1
  %1487 = load <2 x i32>, <2 x i32>* %716, align 1
  %1488 = inttoptr i64 %1484 to float*
  %1489 = load float, float* %1488, align 4
  %1490 = extractelement <2 x float> %1486, i32 0
  %1491 = fadd float %1490, %1489
  store float %1491, float* %46, align 1
  %1492 = bitcast <2 x float> %1486 to <2 x i32>
  %1493 = extractelement <2 x i32> %1492, i32 1
  store i32 %1493, i32* %724, align 1
  %1494 = extractelement <2 x i32> %1487, i32 0
  store i32 %1494, i32* %726, align 1
  %1495 = extractelement <2 x i32> %1487, i32 1
  store i32 %1495, i32* %728, align 1
  %1496 = add i64 %942, 140
  store i64 %1496, i64* %3, align 8
  %1497 = load <2 x float>, <2 x float>* %74, align 1
  %1498 = extractelement <2 x float> %1497, i32 0
  store float %1498, float* %1488, align 4
  %1499 = load i64, i64* %3, align 8
  %1500 = add i64 %1499, 145
  store i64 %1500, i64* %3, align 8
  br label %block_.L_4395d3

block_.L_439547:                                  ; preds = %block_4393f1
  %1501 = load i64, i64* %RBP.i, align 8
  %1502 = add i64 %1501, -32
  %1503 = add i64 %977, 4
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RAX.i353.pre-phi, align 8
  %1507 = shl nsw i64 %1506, 2
  %1508 = add i64 %1501, -832
  %1509 = add i64 %1508, %1507
  %1510 = add i64 %977, 13
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  store i32 %1512, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1513 = add i64 %1501, -8
  %1514 = add i64 %977, 17
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RAX.i353.pre-phi, align 8
  %1517 = add i64 %1501, -28
  %1518 = add i64 %977, 21
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = sext i32 %1520 to i64
  store i64 %1521, i64* %RCX.i350, align 8
  %1522 = shl nsw i64 %1521, 2
  %1523 = add i64 %1522, %1516
  %1524 = add i64 %977, 26
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  store i32 %1526, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1527 = add i64 %1501, -16
  %1528 = add i64 %977, 30
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  %1531 = add i64 %1530, 808
  store i64 %1531, i64* %RAX.i353.pre-phi, align 8
  %1532 = icmp ugt i64 %1530, -809
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %14, align 1
  %1534 = trunc i64 %1531 to i32
  %1535 = and i32 %1534, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %21, align 1
  %1540 = xor i64 %1531, %1530
  %1541 = lshr i64 %1540, 4
  %1542 = trunc i64 %1541 to i8
  %1543 = and i8 %1542, 1
  store i8 %1543, i8* %27, align 1
  %1544 = icmp eq i64 %1531, 0
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %30, align 1
  %1546 = lshr i64 %1531, 63
  %1547 = trunc i64 %1546 to i8
  store i8 %1547, i8* %33, align 1
  %1548 = lshr i64 %1530, 63
  %1549 = xor i64 %1546, %1548
  %1550 = add nuw nsw i64 %1549, %1546
  %1551 = icmp eq i64 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %39, align 1
  %1553 = add i64 %977, 40
  store i64 %1553, i64* %3, align 8
  %1554 = load i32, i32* %1504, align 4
  %1555 = sext i32 %1554 to i64
  %1556 = mul nsw i64 %1555, 28
  store i64 %1556, i64* %RCX.i350, align 8
  %1557 = lshr i64 %1556, 63
  %1558 = add i64 %1556, %1531
  store i64 %1558, i64* %RAX.i353.pre-phi, align 8
  %1559 = icmp ult i64 %1558, %1531
  %1560 = icmp ult i64 %1558, %1556
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %14, align 1
  %1563 = trunc i64 %1558 to i32
  %1564 = and i32 %1563, 255
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  %1569 = xor i64 %1556, %1531
  %1570 = xor i64 %1569, %1558
  %1571 = lshr i64 %1570, 4
  %1572 = trunc i64 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %27, align 1
  %1574 = icmp eq i64 %1558, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %30, align 1
  %1576 = lshr i64 %1558, 63
  %1577 = trunc i64 %1576 to i8
  store i8 %1577, i8* %33, align 1
  %1578 = xor i64 %1576, %1546
  %1579 = xor i64 %1576, %1557
  %1580 = add nuw nsw i64 %1578, %1579
  %1581 = icmp eq i64 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %39, align 1
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -28
  %1585 = add i64 %977, 51
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = sext i32 %1587 to i64
  store i64 %1588, i64* %RCX.i350, align 8
  %1589 = shl nsw i64 %1588, 2
  %1590 = add i64 %1589, %1558
  %1591 = add i64 %977, 56
  store i64 %1591, i64* %3, align 8
  %1592 = load <2 x float>, <2 x float>* %779, align 1
  %1593 = load <2 x i32>, <2 x i32>* %780, align 1
  %1594 = inttoptr i64 %1590 to float*
  %1595 = load float, float* %1594, align 4
  %1596 = extractelement <2 x float> %1592, i32 0
  %1597 = fadd float %1596, %1595
  store float %1597, float* %771, align 1
  %1598 = bitcast <2 x float> %1592 to <2 x i32>
  %1599 = extractelement <2 x i32> %1598, i32 1
  store i32 %1599, i32* %781, align 1
  %1600 = extractelement <2 x i32> %1593, i32 0
  store i32 %1600, i32* %782, align 1
  %1601 = extractelement <2 x i32> %1593, i32 1
  store i32 %1601, i32* %783, align 1
  %1602 = load <2 x float>, <2 x float>* %74, align 1
  %1603 = load <2 x i32>, <2 x i32>* %716, align 1
  %1604 = load <2 x float>, <2 x float>* %779, align 1
  %1605 = extractelement <2 x float> %1602, i32 0
  %1606 = extractelement <2 x float> %1604, i32 0
  %1607 = fmul float %1605, %1606
  store float %1607, float* %46, align 1
  %1608 = bitcast <2 x float> %1602 to <2 x i32>
  %1609 = extractelement <2 x i32> %1608, i32 1
  store i32 %1609, i32* %724, align 1
  %1610 = extractelement <2 x i32> %1603, i32 0
  store i32 %1610, i32* %726, align 1
  %1611 = extractelement <2 x i32> %1603, i32 1
  store i32 %1611, i32* %728, align 1
  %1612 = add i64 %1583, -840
  %1613 = add i64 %977, 68
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i32*
  %1615 = load i32, i32* %1614, align 4
  store i32 %1615, i32* %772, align 1
  store float 0.000000e+00, float* %774, align 1
  store float 0.000000e+00, float* %776, align 1
  store float 0.000000e+00, float* %778, align 1
  %1616 = add i64 %1583, -16
  %1617 = add i64 %977, 72
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i64*
  %1619 = load i64, i64* %1618, align 8
  %1620 = add i64 %1619, 808
  store i64 %1620, i64* %RAX.i353.pre-phi, align 8
  %1621 = icmp ugt i64 %1619, -809
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %14, align 1
  %1623 = trunc i64 %1620 to i32
  %1624 = and i32 %1623, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %21, align 1
  %1629 = xor i64 %1620, %1619
  %1630 = lshr i64 %1629, 4
  %1631 = trunc i64 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %27, align 1
  %1633 = icmp eq i64 %1620, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %30, align 1
  %1635 = lshr i64 %1620, 63
  %1636 = trunc i64 %1635 to i8
  store i8 %1636, i8* %33, align 1
  %1637 = lshr i64 %1619, 63
  %1638 = xor i64 %1635, %1637
  %1639 = add nuw nsw i64 %1638, %1635
  %1640 = icmp eq i64 %1639, 2
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %39, align 1
  %1642 = add i64 %1583, -32
  %1643 = add i64 %977, 82
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = mul nsw i64 %1646, 28
  store i64 %1647, i64* %RCX.i350, align 8
  %1648 = lshr i64 %1647, 63
  %1649 = add i64 %1647, %1620
  store i64 %1649, i64* %RAX.i353.pre-phi, align 8
  %1650 = icmp ult i64 %1649, %1620
  %1651 = icmp ult i64 %1649, %1647
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %14, align 1
  %1654 = trunc i64 %1649 to i32
  %1655 = and i32 %1654, 255
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %21, align 1
  %1660 = xor i64 %1647, %1620
  %1661 = xor i64 %1660, %1649
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %27, align 1
  %1665 = icmp eq i64 %1649, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %30, align 1
  %1667 = lshr i64 %1649, 63
  %1668 = trunc i64 %1667 to i8
  store i8 %1668, i8* %33, align 1
  %1669 = xor i64 %1667, %1635
  %1670 = xor i64 %1667, %1648
  %1671 = add nuw nsw i64 %1669, %1670
  %1672 = icmp eq i64 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %39, align 1
  %1674 = add i64 %1649, 20
  %1675 = add i64 %977, 94
  store i64 %1675, i64* %3, align 8
  %1676 = load <2 x float>, <2 x float>* %779, align 1
  %1677 = load <2 x i32>, <2 x i32>* %780, align 1
  %1678 = inttoptr i64 %1674 to float*
  %1679 = load float, float* %1678, align 4
  %1680 = extractelement <2 x float> %1676, i32 0
  %1681 = fadd float %1680, %1679
  store float %1681, float* %771, align 1
  %1682 = bitcast <2 x float> %1676 to <2 x i32>
  %1683 = extractelement <2 x i32> %1682, i32 1
  store i32 %1683, i32* %781, align 1
  %1684 = extractelement <2 x i32> %1677, i32 0
  store i32 %1684, i32* %782, align 1
  %1685 = extractelement <2 x i32> %1677, i32 1
  store i32 %1685, i32* %783, align 1
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -16
  %1688 = add i64 %977, 98
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i64*
  %1690 = load i64, i64* %1689, align 8
  %1691 = add i64 %1690, 808
  store i64 %1691, i64* %RAX.i353.pre-phi, align 8
  %1692 = icmp ugt i64 %1690, -809
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %14, align 1
  %1694 = trunc i64 %1691 to i32
  %1695 = and i32 %1694, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %21, align 1
  %1700 = xor i64 %1691, %1690
  %1701 = lshr i64 %1700, 4
  %1702 = trunc i64 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %27, align 1
  %1704 = icmp eq i64 %1691, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %30, align 1
  %1706 = lshr i64 %1691, 63
  %1707 = trunc i64 %1706 to i8
  store i8 %1707, i8* %33, align 1
  %1708 = lshr i64 %1690, 63
  %1709 = xor i64 %1706, %1708
  %1710 = add nuw nsw i64 %1709, %1706
  %1711 = icmp eq i64 %1710, 2
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %39, align 1
  %1713 = add i64 %1686, -32
  %1714 = add i64 %977, 108
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = sext i32 %1716 to i64
  %1718 = mul nsw i64 %1717, 28
  store i64 %1718, i64* %RCX.i350, align 8
  %1719 = lshr i64 %1718, 63
  %1720 = add i64 %1718, %1691
  store i64 %1720, i64* %RAX.i353.pre-phi, align 8
  %1721 = icmp ult i64 %1720, %1691
  %1722 = icmp ult i64 %1720, %1718
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %14, align 1
  %1725 = trunc i64 %1720 to i32
  %1726 = and i32 %1725, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %21, align 1
  %1731 = xor i64 %1718, %1691
  %1732 = xor i64 %1731, %1720
  %1733 = lshr i64 %1732, 4
  %1734 = trunc i64 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %27, align 1
  %1736 = icmp eq i64 %1720, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %30, align 1
  %1738 = lshr i64 %1720, 63
  %1739 = trunc i64 %1738 to i8
  store i8 %1739, i8* %33, align 1
  %1740 = xor i64 %1738, %1706
  %1741 = xor i64 %1738, %1719
  %1742 = add nuw nsw i64 %1740, %1741
  %1743 = icmp eq i64 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %39, align 1
  %1745 = add i64 %1720, 24
  %1746 = add i64 %977, 120
  store i64 %1746, i64* %3, align 8
  %1747 = load <2 x float>, <2 x float>* %779, align 1
  %1748 = load <2 x i32>, <2 x i32>* %780, align 1
  %1749 = inttoptr i64 %1745 to float*
  %1750 = load float, float* %1749, align 4
  %1751 = extractelement <2 x float> %1747, i32 0
  %1752 = fadd float %1751, %1750
  store float %1752, float* %771, align 1
  %1753 = bitcast <2 x float> %1747 to <2 x i32>
  %1754 = extractelement <2 x i32> %1753, i32 1
  store i32 %1754, i32* %781, align 1
  %1755 = extractelement <2 x i32> %1748, i32 0
  store i32 %1755, i32* %782, align 1
  %1756 = extractelement <2 x i32> %1748, i32 1
  store i32 %1756, i32* %783, align 1
  %1757 = load <2 x float>, <2 x float>* %74, align 1
  %1758 = load <2 x i32>, <2 x i32>* %716, align 1
  %1759 = load <2 x float>, <2 x float>* %779, align 1
  %1760 = extractelement <2 x float> %1757, i32 0
  %1761 = extractelement <2 x float> %1759, i32 0
  %1762 = fdiv float %1760, %1761
  store float %1762, float* %46, align 1
  %1763 = bitcast <2 x float> %1757 to <2 x i32>
  %1764 = extractelement <2 x i32> %1763, i32 1
  store i32 %1764, i32* %724, align 1
  %1765 = extractelement <2 x i32> %1758, i32 0
  store i32 %1765, i32* %726, align 1
  %1766 = extractelement <2 x i32> %1758, i32 1
  store i32 %1766, i32* %728, align 1
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -848
  %1769 = add i64 %977, 132
  store i64 %1769, i64* %3, align 8
  %1770 = load <2 x float>, <2 x float>* %74, align 1
  %1771 = load <2 x i32>, <2 x i32>* %716, align 1
  %1772 = inttoptr i64 %1768 to float*
  %1773 = load float, float* %1772, align 4
  %1774 = extractelement <2 x float> %1770, i32 0
  %1775 = fadd float %1774, %1773
  store float %1775, float* %46, align 1
  %1776 = bitcast <2 x float> %1770 to <2 x i32>
  %1777 = extractelement <2 x i32> %1776, i32 1
  store i32 %1777, i32* %724, align 1
  %1778 = extractelement <2 x i32> %1771, i32 0
  store i32 %1778, i32* %726, align 1
  %1779 = extractelement <2 x i32> %1771, i32 1
  store i32 %1779, i32* %728, align 1
  %1780 = add i64 %977, 140
  store i64 %1780, i64* %3, align 8
  %1781 = load <2 x float>, <2 x float>* %74, align 1
  %1782 = extractelement <2 x float> %1781, i32 0
  store float %1782, float* %1772, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_4395d3

block_.L_4395d3:                                  ; preds = %block_.L_439547, %block_.L_4394b6, %block_.L_439413, %block_43940e
  %1783 = phi i64 [ %.pre23, %block_.L_439547 ], [ %1500, %block_.L_4394b6 ], [ %1217, %block_.L_439413 ], [ %978, %block_43940e ]
  %1784 = load i64, i64* %RBP.i, align 8
  %1785 = add i64 %1784, -32
  %1786 = add i64 %1783, 8
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = add i32 %1788, 1
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i353.pre-phi, align 8
  %1791 = icmp eq i32 %1788, -1
  %1792 = icmp eq i32 %1789, 0
  %1793 = or i1 %1791, %1792
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = and i32 %1789, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i32 %1789, %1788
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %27, align 1
  %1804 = zext i1 %1792 to i8
  store i8 %1804, i8* %30, align 1
  %1805 = lshr i32 %1789, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %33, align 1
  %1807 = lshr i32 %1788, 31
  %1808 = xor i32 %1805, %1807
  %1809 = add nuw nsw i32 %1808, %1805
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %39, align 1
  %1812 = add i64 %1783, 14
  store i64 %1812, i64* %3, align 8
  store i32 %1789, i32* %1787, align 4
  %1813 = load i64, i64* %3, align 8
  %1814 = add i64 %1813, -567
  store i64 %1814, i64* %3, align 8
  br label %block_.L_4393aa

block_.L_4395e6:                                  ; preds = %block_.L_4393aa
  %1815 = add i64 %826, -848
  %1816 = add i64 %866, 8
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  %1818 = load i32, i32* %1817, align 4
  store i32 %1818, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1819 = add i64 %826, -8
  %1820 = add i64 %866, 12
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to i64*
  %1822 = load i64, i64* %1821, align 8
  store i64 %1822, i64* %RAX.i353.pre-phi, align 8
  %1823 = add i64 %826, -28
  %1824 = add i64 %866, 16
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  %1827 = sext i32 %1826 to i64
  store i64 %1827, i64* %RCX.i350, align 8
  %1828 = shl nsw i64 %1827, 2
  %1829 = add i64 %1828, %1822
  %1830 = add i64 %866, 21
  store i64 %1830, i64* %3, align 8
  %1831 = load <2 x float>, <2 x float>* %74, align 1
  %1832 = extractelement <2 x float> %1831, i32 0
  %1833 = inttoptr i64 %1829 to float*
  store float %1832, float* %1833, align 4
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -28
  %1836 = load i64, i64* %3, align 8
  %1837 = add i64 %1836, 3
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1835 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, 1
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RAX.i353.pre-phi, align 8
  %1842 = icmp eq i32 %1839, -1
  %1843 = icmp eq i32 %1840, 0
  %1844 = or i1 %1842, %1843
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %14, align 1
  %1846 = and i32 %1840, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  %1851 = xor i32 %1840, %1839
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = zext i1 %1843 to i8
  store i8 %1855, i8* %30, align 1
  %1856 = lshr i32 %1840, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %33, align 1
  %1858 = lshr i32 %1839, 31
  %1859 = xor i32 %1856, %1858
  %1860 = add nuw nsw i32 %1859, %1856
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %39, align 1
  %1863 = add i64 %1836, 9
  store i64 %1863, i64* %3, align 8
  store i32 %1840, i32* %1838, align 4
  %1864 = load i64, i64* %3, align 8
  %1865 = add i64 %1864, -630
  store i64 %1865, i64* %3, align 8
  br label %block_.L_43938e

block_.L_439609:                                  ; preds = %block_.L_43938e
  store i64 3, i64* %RSI.i631, align 8
  %1866 = add i64 %786, -8
  %1867 = add i64 %814, 9
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i64*
  %1869 = load i64, i64* %1868, align 8
  store i64 %1869, i64* %RDI.i634, align 8
  %1870 = add i64 %814, 102807
  %1871 = add i64 %814, 14
  %1872 = load i64, i64* %6, align 8
  %1873 = add i64 %1872, -8
  %1874 = inttoptr i64 %1873 to i64*
  store i64 %1871, i64* %1874, align 8
  store i64 %1873, i64* %6, align 8
  store i64 %1870, i64* %3, align 8
  %call2_439612 = tail call %struct.Memory* @sub_4527a0.FNorm(%struct.State* nonnull %0, i64 %1870, %struct.Memory* %call2_439346)
  %1875 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i631, align 8
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -8
  %1878 = add i64 %1875, 9
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i64*
  %1880 = load i64, i64* %1879, align 8
  %1881 = add i64 %1880, 12
  store i64 %1881, i64* %RDI.i634, align 8
  %1882 = icmp ugt i64 %1880, -13
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %14, align 1
  %1884 = trunc i64 %1881 to i32
  %1885 = and i32 %1884, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  %1890 = xor i64 %1881, %1880
  %1891 = lshr i64 %1890, 4
  %1892 = trunc i64 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %27, align 1
  %1894 = icmp eq i64 %1881, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %30, align 1
  %1896 = lshr i64 %1881, 63
  %1897 = trunc i64 %1896 to i8
  store i8 %1897, i8* %33, align 1
  %1898 = lshr i64 %1880, 63
  %1899 = xor i64 %1896, %1898
  %1900 = add nuw nsw i64 %1899, %1896
  %1901 = icmp eq i64 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %39, align 1
  %1903 = add i64 %1875, 102793
  %1904 = add i64 %1875, 18
  %1905 = load i64, i64* %6, align 8
  %1906 = add i64 %1905, -8
  %1907 = inttoptr i64 %1906 to i64*
  store i64 %1904, i64* %1907, align 8
  store i64 %1906, i64* %6, align 8
  store i64 %1903, i64* %3, align 8
  %call2_439624 = tail call %struct.Memory* @sub_4527a0.FNorm(%struct.State* nonnull %0, i64 %1903, %struct.Memory* %call2_439612)
  %1908 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i631, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -8
  %1911 = add i64 %1908, 9
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i64*
  %1913 = load i64, i64* %1912, align 8
  %1914 = add i64 %1913, 20
  store i64 %1914, i64* %RDI.i634, align 8
  %1915 = icmp ugt i64 %1913, -21
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %14, align 1
  %1917 = trunc i64 %1914 to i32
  %1918 = and i32 %1917, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918)
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %21, align 1
  %1923 = xor i64 %1913, 16
  %1924 = xor i64 %1923, %1914
  %1925 = lshr i64 %1924, 4
  %1926 = trunc i64 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %27, align 1
  %1928 = icmp eq i64 %1914, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %30, align 1
  %1930 = lshr i64 %1914, 63
  %1931 = trunc i64 %1930 to i8
  store i8 %1931, i8* %33, align 1
  %1932 = lshr i64 %1913, 63
  %1933 = xor i64 %1930, %1932
  %1934 = add nuw nsw i64 %1933, %1930
  %1935 = icmp eq i64 %1934, 2
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %39, align 1
  %1937 = add i64 %1908, 102775
  %1938 = add i64 %1908, 18
  %1939 = load i64, i64* %6, align 8
  %1940 = add i64 %1939, -8
  %1941 = inttoptr i64 %1940 to i64*
  store i64 %1938, i64* %1941, align 8
  store i64 %1940, i64* %6, align 8
  store i64 %1937, i64* %3, align 8
  %call2_439636 = tail call %struct.Memory* @sub_4527a0.FNorm(%struct.State* nonnull %0, i64 %1937, %struct.Memory* %call2_439624)
  %1942 = load i64, i64* %6, align 8
  %1943 = load i64, i64* %3, align 8
  %1944 = add i64 %1942, 880
  store i64 %1944, i64* %6, align 8
  %1945 = icmp ugt i64 %1942, -881
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = trunc i64 %1944 to i32
  %1948 = and i32 %1947, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i64 %1942, 16
  %1954 = xor i64 %1953, %1944
  %1955 = lshr i64 %1954, 4
  %1956 = trunc i64 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %27, align 1
  %1958 = icmp eq i64 %1944, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i64 %1944, 63
  %1961 = trunc i64 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = lshr i64 %1942, 63
  %1963 = xor i64 %1960, %1962
  %1964 = add nuw nsw i64 %1963, %1960
  %1965 = icmp eq i64 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %1967 = add i64 %1943, 8
  store i64 %1967, i64* %3, align 8
  %1968 = add i64 %1942, 888
  %1969 = inttoptr i64 %1944 to i64*
  %1970 = load i64, i64* %1969, align 8
  store i64 %1970, i64* %RBP.i, align 8
  store i64 %1968, i64* %6, align 8
  %1971 = add i64 %1943, 9
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1968 to i64*
  %1973 = load i64, i64* %1972, align 8
  store i64 %1973, i64* %3, align 8
  %1974 = add i64 %1942, 896
  store i64 %1974, i64* %6, align 8
  ret %struct.Memory* %call2_439636
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
define %struct.Memory* @routine_subq__0x370___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -880
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 880
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
define %struct.Memory* @routine_movss_0x1b595__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1b595__rip__type* @G_0x1b595__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -832
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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
define %struct.Memory* @routine_cmpl__0x0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4391c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
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
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43933d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x1908__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6408
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
define %struct.Memory* @routine_jle_.L_43933d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_43932a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jbe_.L_439222(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x358__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439237(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1b6e6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1b6e6__rip__type* @G_0x1b6e6__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x358__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x340__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -832
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
define %struct.Memory* @routine_addq__0x328___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 808
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -809
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
define %struct.Memory* @routine_imulq__0x1c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 28
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
define %struct.Memory* @routine_callq_.Logp_cvec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x340__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -832
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fadd float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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
define %struct.Memory* @routine_addq__0xc___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_addq__0x328___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 808
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -809
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
define %struct.Memory* @routine_imulq__0x1c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_addq__0x14___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 20
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -21
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
define %struct.Memory* @routine_addq__0x14___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 20
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -21
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
define %struct.Memory* @routine_jmpq_.L_4391d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x340__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_callq_.LogNorm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.FSum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x344__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -836
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x10__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x34c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -844
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x14__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 20
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
define %struct.Memory* @routine_addss_0x18__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x348__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jge_.L_439609(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x350__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4395e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x35c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -860
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -864
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_439413(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4393d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x35c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -860
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
define %struct.Memory* @routine_addl__0xfffffffd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ugt i32 %6, 2
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_4394b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4393f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xfffffffb___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, 4
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -872
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_439547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4395d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x340__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -832
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
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
define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fmul float %15, %16
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
define %struct.Memory* @routine_movss_MINUS0x344__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -836
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x36c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x370__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x36c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -876
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %17 = fadd float %15, %16
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
define %struct.Memory* @routine_movss_MINUS0x370__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -880
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_addss_MINUS0x350__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -848
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_movss_MINUS0x34c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -844
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_addss_0xc__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_addss_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movss_MINUS0x348__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -840
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_addss_0x14__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 20
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
define %struct.Memory* @routine_addss_0x18__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jmpq_.L_4395d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4393aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x350__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -848
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_jmpq_.L_43938e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FNorm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_addq__0x14___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 20
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -21
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
define %struct.Memory* @routine_addq__0x370___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 880
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -881
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
