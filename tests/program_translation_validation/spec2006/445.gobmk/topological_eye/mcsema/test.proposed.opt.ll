; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xa6ab6__rip__type = type <{ [8 x i8] }>
%G_0xa6ae6__rip__type = type <{ [8 x i8] }>
%G_0xa6d21__rip__type = type <{ [8 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57db7b_type = type <{ [8 x i8] }>
%G__0x57db93_type = type <{ [8 x i8] }>
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
@G_0xa6ab6__rip_ = global %G_0xa6ab6__rip__type zeroinitializer
@G_0xa6ae6__rip_ = global %G_0xa6ae6__rip__type zeroinitializer
@G_0xa6d21__rip_ = global %G_0xa6d21__rip__type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57db7b = global %G__0x57db7b_type zeroinitializer
@G__0x57db93 = global %G__0x57db93_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_43c650.evaluate_diagonal_intersection(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @topological_eye(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i319 = bitcast %union.anon* %18 to i32*
  %RAX.i320 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i320, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i337 = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 16, i64* %20, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  store i64 16, i64* %22, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10.i = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = add i64 %7, -88
  store i64 %24, i64* %R10.i, align 8
  %R11.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %25 = add i64 %7, -72
  store i64 %25, i64* %R11.i, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %27 = bitcast [32 x %union.VectorReg]* %26 to i8*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %29 = bitcast [32 x %union.VectorReg]* %26 to i32*
  store i32 0, i32* %29, align 1
  %30 = getelementptr inbounds i8, i8* %27, i64 4
  %31 = bitcast i8* %30 to i32*
  store i32 0, i32* %31, align 1
  %32 = bitcast i64* %28 to i32*
  store i32 0, i32* %32, align 1
  %33 = getelementptr inbounds i8, i8* %27, i64 12
  %34 = bitcast i8* %33 to i32*
  store i32 0, i32* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i32, i32* %EDI.i, align 4
  %39 = add i64 %10, 35
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i551 = bitcast %union.anon* %41 to i32*
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -8
  %44 = load i32, i32* %ESI.i551, align 4
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i579 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RDX.i579, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i595 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %RCX.i595, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -28
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 5
  store i64 %65, i64* %3, align 8
  %66 = bitcast [32 x %union.VectorReg]* %26 to <2 x float>*
  %67 = load <2 x float>, <2 x float>* %66, align 1
  %68 = extractelement <2 x float> %67, i32 0
  %69 = inttoptr i64 %63 to float*
  store float %68, float* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -36
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -40
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %RDI.i614 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %80 = load i64, i64* %R11.i, align 8
  %81 = load i64, i64* %3, align 8
  store i64 %80, i64* %RDI.i614, align 8
  %RSI.i612 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %82 = load i32, i32* %EAX.i319, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RSI.i612, align 8
  %84 = load i64, i64* %22, align 8
  store i64 %84, i64* %RDX.i579, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -128
  %87 = load i64, i64* %R10.i, align 8
  %88 = add i64 %81, 12
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -136
  %92 = load i64, i64* %22, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 7
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -140
  %98 = load i32, i32* %EAX.i319, align 4
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 6
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i32*
  store i32 %98, i32* %101, align 4
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, -242139
  %104 = add i64 %102, 5
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %108 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -128
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RCX.i595, align 8
  store i64 %114, i64* %RDI.i614, align 8
  %115 = add i64 %109, -140
  %116 = add i64 %111, 13
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RSI.i612, align 8
  %120 = add i64 %109, -136
  %121 = add i64 %111, 20
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RDX.i579, align 8
  %124 = add i64 %111, -242144
  %125 = add i64 %111, 25
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %129 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %108)
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -84
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  store i32 4, i32* %134, align 4
  %EDX.i558 = bitcast %union.anon* %48 to i32*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10D.i510 = bitcast %union.anon* %23 to i32*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %137 = bitcast %union.VectorReg* %136 to i8*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %139 = bitcast %union.VectorReg* %136 to i32*
  %140 = getelementptr inbounds i8, i8* %137, i64 4
  %141 = bitcast i8* %140 to i32*
  %142 = bitcast i64* %138 to i32*
  %143 = getelementptr inbounds i8, i8* %137, i64 12
  %144 = bitcast i8* %143 to i32*
  %145 = bitcast [32 x %union.VectorReg]* %26 to float*
  %146 = bitcast i8* %30 to float*
  %147 = bitcast i64* %28 to float*
  %148 = bitcast i8* %33 to float*
  %149 = bitcast i64* %28 to <2 x i32>*
  %150 = bitcast [32 x %union.VectorReg]* %26 to double*
  %151 = bitcast %union.VectorReg* %136 to double*
  %152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %153 = bitcast i64* %28 to double*
  %ECX.i421 = bitcast %union.anon* %55 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43c270

block_.L_43c270:                                  ; preds = %block_.L_43c5e8, %entry
  %154 = phi i64 [ %.pre, %entry ], [ %1621, %block_.L_43c5e8 ]
  %MEMORY.0 = phi %struct.Memory* [ %129, %entry ], [ %MEMORY.12, %block_.L_43c5e8 ]
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -84
  %157 = add i64 %154, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, -8
  %161 = icmp ult i32 %159, 8
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %12, align 1
  %163 = and i32 %160, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %13, align 1
  %168 = xor i32 %160, %159
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %14, align 1
  %172 = icmp eq i32 %160, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %15, align 1
  %174 = lshr i32 %160, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %16, align 1
  %176 = lshr i32 %159, 31
  %177 = xor i32 %174, %176
  %178 = add nuw nsw i32 %177, %176
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %17, align 1
  %181 = icmp ne i8 %175, 0
  %182 = xor i1 %181, %179
  %.v = select i1 %182, i64 10, i64 907
  %183 = add i64 %154, %.v
  store i64 %183, i64* %3, align 8
  br i1 %182, label %block_43c27a, label %block_.L_43c5fb

block_43c27a:                                     ; preds = %block_.L_43c270
  %184 = add i64 %155, -92
  store i64 %184, i64* %RCX.i595, align 8
  %185 = add i64 %155, -96
  store i64 %185, i64* %20, align 8
  store i64 20, i64* %RAX.i320, align 8
  %186 = add i64 %155, -4
  %187 = add i64 %183, 16
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RDX.i579, align 8
  %191 = add i64 %155, -144
  %192 = add i64 %183, 22
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 20, i32* %193, align 4
  %194 = load i32, i32* %EDX.i558, align 4
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %3, align 8
  store i64 %195, i64* %RAX.i320, align 8
  %197 = sext i32 %194 to i64
  %198 = lshr i64 %197, 32
  store i64 %198, i64* %135, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -144
  %201 = add i64 %196, 9
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RSI.i612, align 8
  %205 = add i64 %196, 11
  store i64 %205, i64* %3, align 8
  %206 = sext i32 %203 to i64
  %207 = shl nuw i64 %198, 32
  %208 = or i64 %207, %195
  %209 = sdiv i64 %208, %206
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = icmp eq i64 %209, %211
  br i1 %212, label %215, label %213

; <label>:213:                                    ; preds = %block_43c27a
  %214 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %205, %struct.Memory* %MEMORY.0)
  %.pre21 = load i64, i64* %RAX.i320, align 8
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit549

; <label>:215:                                    ; preds = %block_43c27a
  %216 = srem i64 %208, %206
  %217 = and i64 %209, 4294967295
  store i64 %217, i64* %RAX.i320, align 8
  %218 = and i64 %216, 4294967295
  store i64 %218, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit549

routine_idivl__esi.exit549:                       ; preds = %215, %213
  %219 = phi i64 [ %.pre23, %213 ], [ %199, %215 ]
  %220 = phi i64 [ %.pre22, %213 ], [ %205, %215 ]
  %221 = phi i64 [ %.pre21, %213 ], [ %217, %215 ]
  %222 = phi %struct.Memory* [ %214, %213 ], [ %MEMORY.0, %215 ]
  %223 = trunc i64 %221 to i32
  %224 = add i32 %223, -1
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RAX.i320, align 8
  %226 = icmp eq i32 %223, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %12, align 1
  %228 = and i32 %224, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %13, align 1
  %233 = xor i32 %224, %223
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %14, align 1
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %15, align 1
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %16, align 1
  %241 = lshr i32 %223, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %17, align 1
  %246 = add i64 %219, -84
  %247 = add i64 %220, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RDI.i614, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add nsw i64 %251, 8053104
  %253 = add i64 %220, 14
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, %224
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX.i320, align 8
  %258 = icmp ult i32 %256, %224
  %259 = icmp ult i32 %256, %255
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %12, align 1
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %13, align 1
  %267 = xor i32 %255, %224
  %268 = xor i32 %267, %256
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %14, align 1
  %272 = icmp eq i32 %256, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %15, align 1
  %274 = lshr i32 %256, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %16, align 1
  %276 = lshr i32 %255, 31
  %277 = xor i32 %274, %239
  %278 = xor i32 %274, %276
  %279 = add nuw nsw i32 %277, %278
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %17, align 1
  %282 = add i64 %219, -4
  %283 = add i64 %220, 18
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %22, align 8
  %287 = add i64 %219, -148
  %288 = add i64 %220, 24
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  store i32 %256, i32* %289, align 4
  %290 = load i32, i32* %R9D.i, align 4
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %3, align 8
  store i64 %291, i64* %RAX.i320, align 8
  %293 = sext i32 %290 to i64
  %294 = lshr i64 %293, 32
  store i64 %294, i64* %135, align 8
  %295 = load i32, i32* %ESI.i551, align 4
  %296 = add i64 %292, 6
  store i64 %296, i64* %3, align 8
  %297 = sext i32 %295 to i64
  %298 = shl nuw i64 %294, 32
  %299 = or i64 %298, %291
  %300 = sdiv i64 %299, %297
  %301 = shl i64 %300, 32
  %302 = ashr exact i64 %301, 32
  %303 = icmp eq i64 %300, %302
  br i1 %303, label %306, label %304

; <label>:304:                                    ; preds = %routine_idivl__esi.exit549
  %305 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %296, %struct.Memory* %222)
  %.pre24 = load i64, i64* %RDX.i579, align 8
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:306:                                    ; preds = %routine_idivl__esi.exit549
  %307 = srem i64 %299, %297
  %308 = and i64 %300, 4294967295
  store i64 %308, i64* %RAX.i320, align 8
  %309 = and i64 %307, 4294967295
  store i64 %309, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %306, %304
  %310 = phi i64 [ %.pre25, %304 ], [ %296, %306 ]
  %311 = phi i64 [ %.pre24, %304 ], [ %309, %306 ]
  %312 = phi %struct.Memory* [ %305, %304 ], [ %222, %306 ]
  %313 = trunc i64 %311 to i32
  %314 = add i32 %313, -1
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RDX.i579, align 8
  %316 = icmp eq i32 %313, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %12, align 1
  %318 = and i32 %314, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %13, align 1
  %323 = xor i32 %314, %313
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %14, align 1
  %327 = icmp eq i32 %314, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %15, align 1
  %329 = lshr i32 %314, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %16, align 1
  %331 = lshr i32 %313, 31
  %332 = xor i32 %329, %331
  %333 = add nuw nsw i32 %332, %331
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %17, align 1
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -84
  %338 = add i64 %310, 7
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RDI.i614, align 8
  %342 = shl nsw i64 %341, 2
  %343 = add nsw i64 %342, 8053136
  %344 = add i64 %310, 14
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = add i32 %346, %314
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RDX.i579, align 8
  %349 = icmp ult i32 %347, %314
  %350 = icmp ult i32 %347, %346
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %12, align 1
  %353 = and i32 %347, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %13, align 1
  %358 = xor i32 %346, %314
  %359 = xor i32 %358, %347
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %14, align 1
  %363 = icmp eq i32 %347, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %15, align 1
  %365 = lshr i32 %347, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %16, align 1
  %367 = lshr i32 %346, 31
  %368 = xor i32 %365, %329
  %369 = xor i32 %365, %367
  %370 = add nuw nsw i32 %368, %369
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %17, align 1
  %373 = add i64 %336, -8
  %374 = add i64 %310, 18
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %22, align 8
  %378 = add i64 %336, -16
  %379 = add i64 %310, 22
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RDI.i614, align 8
  %382 = add i64 %336, -148
  %383 = add i64 %310, 29
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %R10.i, align 8
  %387 = add i64 %336, -160
  %388 = add i64 %310, 36
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  store i64 %381, i64* %389, align 8
  %390 = load i32, i32* %R10D.i510, align 4
  %391 = zext i32 %390 to i64
  %392 = load i64, i64* %3, align 8
  store i64 %391, i64* %RDI.i614, align 8
  %393 = load i32, i32* %EDX.i558, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RSI.i612, align 8
  %395 = load i32, i32* %R9D.i, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RDX.i579, align 8
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -160
  %399 = add i64 %392, 15
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %22, align 8
  %402 = add i64 %392, 883
  %403 = add i64 %392, 20
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %6, align 8
  store i64 %402, i64* %3, align 8
  %call2_43c2ec = tail call %struct.Memory* @sub_43c650.evaluate_diagonal_intersection(%struct.State* nonnull %0, i64 %402, %struct.Memory* %312)
  %407 = load i64, i64* %3, align 8
  store i32 0, i32* %139, align 1
  store i32 0, i32* %141, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %144, align 1
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -32
  %410 = add i64 %407, 8
  store i64 %410, i64* %3, align 8
  %411 = load <2 x float>, <2 x float>* %66, align 1
  %412 = extractelement <2 x float> %411, i32 0
  %413 = inttoptr i64 %409 to float*
  store float %412, float* %413, align 4
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -32
  %416 = load i64, i64* %3, align 8
  %417 = add i64 %416, 5
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %415 to i32*
  %419 = load i32, i32* %418, align 4
  store i32 %419, i32* %29, align 1
  store float 0.000000e+00, float* %146, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %148, align 1
  %420 = add i64 %414, -28
  %421 = add i64 %416, 10
  store i64 %421, i64* %3, align 8
  %422 = load <2 x float>, <2 x float>* %66, align 1
  %423 = load <2 x i32>, <2 x i32>* %149, align 1
  %424 = inttoptr i64 %420 to float*
  %425 = load float, float* %424, align 4
  %426 = extractelement <2 x float> %422, i32 0
  %427 = fadd float %426, %425
  store float %427, float* %145, align 1
  %428 = bitcast <2 x float> %422 to <2 x i32>
  %429 = extractelement <2 x i32> %428, i32 1
  store i32 %429, i32* %31, align 1
  %430 = extractelement <2 x i32> %423, i32 0
  store i32 %430, i32* %32, align 1
  %431 = extractelement <2 x i32> %423, i32 1
  store i32 %431, i32* %34, align 1
  %432 = add i64 %416, 15
  store i64 %432, i64* %3, align 8
  %433 = load <2 x float>, <2 x float>* %66, align 1
  %434 = extractelement <2 x float> %433, i32 0
  store float %434, float* %424, align 4
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -32
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, 5
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to float*
  %440 = load float, float* %439, align 4
  %441 = fpext float %440 to double
  store double %441, double* %150, align 1
  %442 = add i64 %437, 9
  store i64 %442, i64* %3, align 8
  %443 = load double, double* %151, align 1
  %444 = fcmp uno double %441, %443
  br i1 %444, label %445, label %455

; <label>:445:                                    ; preds = %routine_idivl__esi.exit
  %446 = fadd double %441, %443
  %447 = bitcast double %446 to i64
  %448 = and i64 %447, 9221120237041090560
  %449 = icmp eq i64 %448, 9218868437227405312
  %450 = and i64 %447, 2251799813685247
  %451 = icmp ne i64 %450, 0
  %452 = and i1 %449, %451
  br i1 %452, label %453, label %461

; <label>:453:                                    ; preds = %445
  %454 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %442, %struct.Memory* %call2_43c2ec)
  %.pre26 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit472

; <label>:455:                                    ; preds = %routine_idivl__esi.exit
  %456 = fcmp ogt double %441, %443
  br i1 %456, label %461, label %457

; <label>:457:                                    ; preds = %455
  %458 = fcmp olt double %441, %443
  br i1 %458, label %461, label %459

; <label>:459:                                    ; preds = %457
  %460 = fcmp oeq double %441, %443
  br i1 %460, label %461, label %465

; <label>:461:                                    ; preds = %459, %457, %455, %445
  %462 = phi i8 [ 0, %455 ], [ 0, %457 ], [ 1, %459 ], [ 1, %445 ]
  %463 = phi i8 [ 0, %455 ], [ 0, %457 ], [ 0, %459 ], [ 1, %445 ]
  %464 = phi i8 [ 0, %455 ], [ 1, %457 ], [ 0, %459 ], [ 1, %445 ]
  store i8 %462, i8* %15, align 1
  store i8 %463, i8* %13, align 1
  store i8 %464, i8* %12, align 1
  br label %465

; <label>:465:                                    ; preds = %461, %459
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit472

routine_ucomisd__xmm1___xmm0.exit472:             ; preds = %465, %453
  %466 = phi i64 [ %.pre26, %453 ], [ %442, %465 ]
  %467 = phi %struct.Memory* [ %454, %453 ], [ %call2_43c2ec, %465 ]
  %468 = add i64 %466, 727
  %469 = add i64 %466, 6
  %470 = load i8, i8* %12, align 1
  %471 = load i8, i8* %15, align 1
  %472 = or i8 %471, %470
  %473 = icmp ne i8 %472, 0
  %474 = select i1 %473, i64 %468, i64 %469
  store i64 %474, i64* %3, align 8
  br i1 %473, label %block_.L_43c5e8, label %block_43c317

block_43c317:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit472
  %475 = add i64 %474, ptrtoint (%G_0xa6d21__rip__type* @G_0xa6d21__rip_ to i64)
  %476 = add i64 %474, 8
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %152, align 1
  store double 0.000000e+00, double* %153, align 1
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -32
  %481 = add i64 %474, 13
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to float*
  %483 = load float, float* %482, align 4
  %484 = fpext float %483 to double
  store double %484, double* %151, align 1
  %485 = add i64 %474, 17
  store i64 %485, i64* %3, align 8
  %486 = bitcast i64 %478 to double
  %487 = fcmp uno double %486, %484
  br i1 %487, label %488, label %498

; <label>:488:                                    ; preds = %block_43c317
  %489 = fadd double %484, %486
  %490 = bitcast double %489 to i64
  %491 = and i64 %490, 9221120237041090560
  %492 = icmp eq i64 %491, 9218868437227405312
  %493 = and i64 %490, 2251799813685247
  %494 = icmp ne i64 %493, 0
  %495 = and i1 %492, %494
  br i1 %495, label %496, label %504

; <label>:496:                                    ; preds = %488
  %497 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %485, %struct.Memory* %467)
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i8, i8* %12, align 1
  %.pre29 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit460

; <label>:498:                                    ; preds = %block_43c317
  %499 = fcmp ogt double %486, %484
  br i1 %499, label %504, label %500

; <label>:500:                                    ; preds = %498
  %501 = fcmp olt double %486, %484
  br i1 %501, label %504, label %502

; <label>:502:                                    ; preds = %500
  %503 = fcmp oeq double %486, %484
  br i1 %503, label %504, label %508

; <label>:504:                                    ; preds = %502, %500, %498, %488
  %505 = phi i8 [ 0, %498 ], [ 0, %500 ], [ 1, %502 ], [ 1, %488 ]
  %506 = phi i8 [ 0, %498 ], [ 0, %500 ], [ 0, %502 ], [ 1, %488 ]
  %507 = phi i8 [ 0, %498 ], [ 1, %500 ], [ 0, %502 ], [ 1, %488 ]
  store i8 %505, i8* %15, align 1
  store i8 %506, i8* %13, align 1
  store i8 %507, i8* %12, align 1
  br label %508

; <label>:508:                                    ; preds = %504, %502
  %509 = phi i8 [ %505, %504 ], [ %471, %502 ]
  %510 = phi i8 [ %507, %504 ], [ %470, %502 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit460

routine_ucomisd__xmm1___xmm0.exit460:             ; preds = %508, %496
  %511 = phi i8 [ %.pre29, %496 ], [ %509, %508 ]
  %512 = phi i8 [ %.pre28, %496 ], [ %510, %508 ]
  %513 = phi i64 [ %.pre27, %496 ], [ %485, %508 ]
  %514 = phi %struct.Memory* [ %497, %496 ], [ %467, %508 ]
  %515 = or i8 %511, %512
  %516 = icmp ne i8 %515, 0
  %.v55 = select i1 %516, i64 704, i64 6
  %517 = add i64 %513, %.v55
  store i64 %517, i64* %3, align 8
  br i1 %516, label %block_.L_43c5e8, label %block_43c32e

block_43c32e:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit460
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -92
  %520 = add i64 %517, 4
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  store i8 0, i8* %12, align 1
  %523 = and i32 %522, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %528 = icmp eq i32 %522, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %15, align 1
  %530 = lshr i32 %522, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v56 = select i1 %528, i64 693, i64 10
  %532 = add i64 %517, %.v56
  store i64 %532, i64* %3, align 8
  br i1 %528, label %block_.L_43c5e3, label %block_43c338

block_43c338:                                     ; preds = %block_43c32e
  %533 = add i64 %518, -96
  %534 = add i64 %532, 4
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  store i8 0, i8* %12, align 1
  %537 = and i32 %536, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %542 = icmp eq i32 %536, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %15, align 1
  %544 = lshr i32 %536, 31
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v57 = select i1 %542, i64 683, i64 10
  %546 = add i64 %532, %.v57
  store i64 %546, i64* %3, align 8
  br i1 %542, label %block_.L_43c5e3, label %block_43c342

block_43c342:                                     ; preds = %block_43c338
  %547 = add i64 %546, 7
  store i64 %547, i64* %3, align 8
  %548 = load i32, i32* %521, align 4
  %549 = add i32 %548, -421
  %550 = icmp ult i32 %548, 421
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %12, align 1
  %552 = and i32 %549, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %13, align 1
  %557 = xor i32 %549, %548
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %14, align 1
  %561 = icmp eq i32 %549, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %15, align 1
  %563 = lshr i32 %549, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %16, align 1
  %565 = lshr i32 %548, 31
  %566 = xor i32 %563, %565
  %567 = add nuw nsw i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %17, align 1
  %.v58 = select i1 %550, i64 13, i64 39
  %570 = add i64 %546, %.v58
  store i64 %570, i64* %3, align 8
  br i1 %550, label %block_43c34f, label %block_.L_43c369

block_43c34f:                                     ; preds = %block_43c342
  %571 = add i64 %570, 4
  store i64 %571, i64* %3, align 8
  %572 = load i32, i32* %521, align 4
  %573 = sext i32 %572 to i64
  store i64 %573, i64* %RAX.i320, align 8
  %574 = add nsw i64 %573, 12099168
  %575 = add i64 %570, 12
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i8*
  %577 = load i8, i8* %576, align 1
  %578 = zext i8 %577 to i64
  store i64 %578, i64* %RCX.i595, align 8
  %579 = zext i8 %577 to i32
  %580 = add nsw i32 %579, -3
  %581 = icmp ult i8 %577, 3
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %12, align 1
  %583 = and i32 %580, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %13, align 1
  %588 = xor i32 %580, %579
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %14, align 1
  %592 = icmp eq i32 %580, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %15, align 1
  %594 = lshr i32 %580, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v64 = select i1 %592, i64 26, i64 21
  %596 = add i64 %570, %.v64
  store i64 %596, i64* %3, align 8
  br i1 %592, label %block_.L_43c369, label %block_43c364

block_43c364:                                     ; preds = %block_43c34f
  %597 = add i64 %596, 118
  store i64 %597, i64* %3, align 8
  br label %block_.L_43c3da

block_.L_43c369:                                  ; preds = %block_43c342, %block_43c34f
  %598 = phi i64 [ %596, %block_43c34f ], [ %570, %block_43c342 ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i614, align 8
  store i64 1520, i64* %RSI.i612, align 8
  store i64 ptrtoint (%G__0x57db7b_type* @G__0x57db7b to i64), i64* %RDX.i579, align 8
  store i64 20, i64* %RAX.i320, align 8
  %599 = add i64 %598, 33
  store i64 %599, i64* %3, align 8
  %600 = load i32, i32* %521, align 4
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RCX.i595, align 8
  %602 = add i64 %518, -164
  %603 = add i64 %598, 39
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  store i32 20, i32* %604, align 4
  %605 = load i32, i32* %ECX.i421, align 4
  %606 = zext i32 %605 to i64
  %607 = load i64, i64* %3, align 8
  store i64 %606, i64* %RAX.i320, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -176
  %610 = load i64, i64* %RDX.i579, align 8
  %611 = add i64 %607, 9
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to i64*
  store i64 %610, i64* %612, align 8
  %613 = load i64, i64* %3, align 8
  %614 = load i32, i32* %EAX.i319, align 8
  %615 = sext i32 %614 to i64
  %616 = lshr i64 %615, 32
  store i64 %616, i64* %135, align 8
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -164
  %619 = add i64 %613, 7
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RCX.i595, align 8
  %623 = add i64 %613, 9
  store i64 %623, i64* %3, align 8
  %624 = zext i32 %614 to i64
  %625 = sext i32 %621 to i64
  %626 = shl nuw i64 %616, 32
  %627 = or i64 %626, %624
  %628 = sdiv i64 %627, %625
  %629 = shl i64 %628, 32
  %630 = ashr exact i64 %629, 32
  %631 = icmp eq i64 %628, %630
  br i1 %631, label %634, label %632

; <label>:632:                                    ; preds = %block_.L_43c369
  %633 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %623, %struct.Memory* %514)
  %.pre30 = load i64, i64* %RAX.i320, align 8
  %.pre31 = load i64, i64* %3, align 8
  %.pre32 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit410

; <label>:634:                                    ; preds = %block_.L_43c369
  %635 = srem i64 %627, %625
  %636 = and i64 %628, 4294967295
  store i64 %636, i64* %RAX.i320, align 8
  %637 = and i64 %635, 4294967295
  store i64 %637, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit410

routine_idivl__ecx.exit410:                       ; preds = %634, %632
  %638 = phi i64 [ %.pre32, %632 ], [ %617, %634 ]
  %639 = phi i64 [ %.pre31, %632 ], [ %623, %634 ]
  %640 = phi i64 [ %.pre30, %632 ], [ %636, %634 ]
  %641 = phi %struct.Memory* [ %633, %632 ], [ %514, %634 ]
  %642 = trunc i64 %640 to i32
  %643 = add i32 %642, -1
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RAX.i320, align 8
  %645 = icmp eq i32 %642, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %12, align 1
  %647 = and i32 %643, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %13, align 1
  %652 = xor i32 %643, %642
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %14, align 1
  %656 = icmp eq i32 %643, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %15, align 1
  %658 = lshr i32 %643, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %16, align 1
  %660 = lshr i32 %642, 31
  %661 = xor i32 %658, %660
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %17, align 1
  %665 = add i64 %638, -92
  %666 = add i64 %639, 7
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %20, align 8
  %670 = add i64 %638, -180
  %671 = add i64 %639, 13
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  store i32 %643, i32* %672, align 4
  %673 = load i32, i32* %R8D.i337, align 4
  %674 = zext i32 %673 to i64
  %675 = load i64, i64* %3, align 8
  store i64 %674, i64* %RAX.i320, align 8
  %676 = sext i32 %673 to i64
  %677 = lshr i64 %676, 32
  store i64 %677, i64* %135, align 8
  %678 = load i32, i32* %ECX.i421, align 4
  %679 = add i64 %675, 6
  store i64 %679, i64* %3, align 8
  %680 = sext i32 %678 to i64
  %681 = shl nuw i64 %677, 32
  %682 = or i64 %681, %674
  %683 = sdiv i64 %682, %680
  %684 = shl i64 %683, 32
  %685 = ashr exact i64 %684, 32
  %686 = icmp eq i64 %683, %685
  br i1 %686, label %689, label %687

; <label>:687:                                    ; preds = %routine_idivl__ecx.exit410
  %688 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %679, %struct.Memory* %641)
  %.pre33 = load i64, i64* %RDX.i579, align 8
  %.pre34 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit393

; <label>:689:                                    ; preds = %routine_idivl__ecx.exit410
  %690 = srem i64 %682, %680
  %691 = and i64 %683, 4294967295
  store i64 %691, i64* %RAX.i320, align 8
  %692 = and i64 %690, 4294967295
  store i64 %692, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit393

routine_idivl__ecx.exit393:                       ; preds = %689, %687
  %693 = phi i64 [ %.pre34, %687 ], [ %679, %689 ]
  %694 = phi i64 [ %.pre33, %687 ], [ %692, %689 ]
  %695 = phi %struct.Memory* [ %688, %687 ], [ %641, %689 ]
  %696 = trunc i64 %694 to i32
  %697 = add i32 %696, -1
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i579, align 8
  %699 = icmp eq i32 %696, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %12, align 1
  %701 = and i32 %697, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %13, align 1
  %706 = xor i32 %697, %696
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %14, align 1
  %710 = icmp eq i32 %697, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %15, align 1
  %712 = lshr i32 %697, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %16, align 1
  %714 = lshr i32 %696, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %17, align 1
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -176
  %721 = add i64 %693, 10
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %22, align 8
  %724 = add i64 %719, -184
  %725 = add i64 %693, 16
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  store i32 %697, i32* %726, align 4
  %727 = load i64, i64* %22, align 8
  %728 = load i64, i64* %3, align 8
  store i64 %727, i64* %RDX.i579, align 8
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -180
  %731 = add i64 %728, 9
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RCX.i595, align 8
  %735 = add i64 %729, -184
  %736 = add i64 %728, 16
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %20, align 8
  %740 = add i64 %728, 89291
  %741 = add i64 %728, 21
  %742 = load i64, i64* %6, align 8
  %743 = add i64 %742, -8
  %744 = inttoptr i64 %743 to i64*
  store i64 %741, i64* %744, align 8
  store i64 %743, i64* %6, align 8
  store i64 %740, i64* %3, align 8
  %call2_43c3d5 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %740, %struct.Memory* %695)
  %.pre35 = load i64, i64* %RBP.i, align 8
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_43c3da

block_.L_43c3da:                                  ; preds = %routine_idivl__ecx.exit393, %block_43c364
  %745 = phi i64 [ %.pre36, %routine_idivl__ecx.exit393 ], [ %597, %block_43c364 ]
  %746 = phi i64 [ %.pre35, %routine_idivl__ecx.exit393 ], [ %518, %block_43c364 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_43c3d5, %routine_idivl__ecx.exit393 ], [ %514, %block_43c364 ]
  %747 = add i64 %746, -96
  %748 = add i64 %745, 7
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = add i32 %750, -421
  %752 = icmp ult i32 %750, 421
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %12, align 1
  %754 = and i32 %751, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %13, align 1
  %759 = xor i32 %751, %750
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %14, align 1
  %763 = icmp eq i32 %751, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %15, align 1
  %765 = lshr i32 %751, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %16, align 1
  %767 = lshr i32 %750, 31
  %768 = xor i32 %765, %767
  %769 = add nuw nsw i32 %768, %767
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %17, align 1
  %.v59 = select i1 %752, i64 13, i64 39
  %772 = add i64 %745, %.v59
  store i64 %772, i64* %3, align 8
  br i1 %752, label %block_43c3e7, label %block_.L_43c401

block_43c3e7:                                     ; preds = %block_.L_43c3da
  %773 = add i64 %772, 4
  store i64 %773, i64* %3, align 8
  %774 = load i32, i32* %749, align 4
  %775 = sext i32 %774 to i64
  store i64 %775, i64* %RAX.i320, align 8
  %776 = add nsw i64 %775, 12099168
  %777 = add i64 %772, 12
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i8*
  %779 = load i8, i8* %778, align 1
  %780 = zext i8 %779 to i64
  store i64 %780, i64* %RCX.i595, align 8
  %781 = zext i8 %779 to i32
  %782 = add nsw i32 %781, -3
  %783 = icmp ult i8 %779, 3
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %12, align 1
  %785 = and i32 %782, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %13, align 1
  %790 = xor i32 %782, %781
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %14, align 1
  %794 = icmp eq i32 %782, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %15, align 1
  %796 = lshr i32 %782, 31
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v63 = select i1 %794, i64 26, i64 21
  %798 = add i64 %772, %.v63
  store i64 %798, i64* %3, align 8
  br i1 %794, label %block_.L_43c401, label %block_43c3fc

block_43c3fc:                                     ; preds = %block_43c3e7
  %799 = add i64 %798, 118
  store i64 %799, i64* %3, align 8
  br label %block_.L_43c472

block_.L_43c401:                                  ; preds = %block_.L_43c3da, %block_43c3e7
  %800 = phi i64 [ %798, %block_43c3e7 ], [ %772, %block_.L_43c3da ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i614, align 8
  store i64 1521, i64* %RSI.i612, align 8
  store i64 ptrtoint (%G__0x57db93_type* @G__0x57db93 to i64), i64* %RDX.i579, align 8
  store i64 20, i64* %RAX.i320, align 8
  %801 = add i64 %800, 33
  store i64 %801, i64* %3, align 8
  %802 = load i32, i32* %749, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RCX.i595, align 8
  %804 = add i64 %746, -188
  %805 = add i64 %800, 39
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  store i32 20, i32* %806, align 4
  %807 = load i32, i32* %ECX.i421, align 4
  %808 = zext i32 %807 to i64
  %809 = load i64, i64* %3, align 8
  store i64 %808, i64* %RAX.i320, align 8
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -200
  %812 = load i64, i64* %RDX.i579, align 8
  %813 = add i64 %809, 9
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i64*
  store i64 %812, i64* %814, align 8
  %815 = load i64, i64* %3, align 8
  %816 = load i32, i32* %EAX.i319, align 8
  %817 = sext i32 %816 to i64
  %818 = lshr i64 %817, 32
  store i64 %818, i64* %135, align 8
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -188
  %821 = add i64 %815, 7
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RCX.i595, align 8
  %825 = add i64 %815, 9
  store i64 %825, i64* %3, align 8
  %826 = zext i32 %816 to i64
  %827 = sext i32 %823 to i64
  %828 = shl nuw i64 %818, 32
  %829 = or i64 %828, %826
  %830 = sdiv i64 %829, %827
  %831 = shl i64 %830, 32
  %832 = ashr exact i64 %831, 32
  %833 = icmp eq i64 %830, %832
  br i1 %833, label %836, label %834

; <label>:834:                                    ; preds = %block_.L_43c401
  %835 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %825, %struct.Memory* %MEMORY.2)
  %.pre37 = load i64, i64* %RAX.i320, align 8
  %.pre38 = load i64, i64* %3, align 8
  %.pre39 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit335

; <label>:836:                                    ; preds = %block_.L_43c401
  %837 = srem i64 %829, %827
  %838 = and i64 %830, 4294967295
  store i64 %838, i64* %RAX.i320, align 8
  %839 = and i64 %837, 4294967295
  store i64 %839, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit335

routine_idivl__ecx.exit335:                       ; preds = %836, %834
  %840 = phi i64 [ %.pre39, %834 ], [ %819, %836 ]
  %841 = phi i64 [ %.pre38, %834 ], [ %825, %836 ]
  %842 = phi i64 [ %.pre37, %834 ], [ %838, %836 ]
  %843 = phi %struct.Memory* [ %835, %834 ], [ %MEMORY.2, %836 ]
  %844 = trunc i64 %842 to i32
  %845 = add i32 %844, -1
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX.i320, align 8
  %847 = icmp eq i32 %844, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %12, align 1
  %849 = and i32 %845, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %13, align 1
  %854 = xor i32 %845, %844
  %855 = lshr i32 %854, 4
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  store i8 %857, i8* %14, align 1
  %858 = icmp eq i32 %845, 0
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %15, align 1
  %860 = lshr i32 %845, 31
  %861 = trunc i32 %860 to i8
  store i8 %861, i8* %16, align 1
  %862 = lshr i32 %844, 31
  %863 = xor i32 %860, %862
  %864 = add nuw nsw i32 %863, %862
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %17, align 1
  %867 = add i64 %840, -96
  %868 = add i64 %841, 7
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %20, align 8
  %872 = add i64 %840, -204
  %873 = add i64 %841, 13
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  store i32 %845, i32* %874, align 4
  %875 = load i32, i32* %R8D.i337, align 4
  %876 = zext i32 %875 to i64
  %877 = load i64, i64* %3, align 8
  store i64 %876, i64* %RAX.i320, align 8
  %878 = sext i32 %875 to i64
  %879 = lshr i64 %878, 32
  store i64 %879, i64* %135, align 8
  %880 = load i32, i32* %ECX.i421, align 4
  %881 = add i64 %877, 6
  store i64 %881, i64* %3, align 8
  %882 = sext i32 %880 to i64
  %883 = shl nuw i64 %879, 32
  %884 = or i64 %883, %876
  %885 = sdiv i64 %884, %882
  %886 = shl i64 %885, 32
  %887 = ashr exact i64 %886, 32
  %888 = icmp eq i64 %885, %887
  br i1 %888, label %891, label %889

; <label>:889:                                    ; preds = %routine_idivl__ecx.exit335
  %890 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %881, %struct.Memory* %843)
  %.pre40 = load i64, i64* %RDX.i579, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:891:                                    ; preds = %routine_idivl__ecx.exit335
  %892 = srem i64 %884, %882
  %893 = and i64 %885, 4294967295
  store i64 %893, i64* %RAX.i320, align 8
  %894 = and i64 %892, 4294967295
  store i64 %894, i64* %RDX.i579, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %891, %889
  %895 = phi i64 [ %.pre41, %889 ], [ %881, %891 ]
  %896 = phi i64 [ %.pre40, %889 ], [ %894, %891 ]
  %897 = phi %struct.Memory* [ %890, %889 ], [ %843, %891 ]
  %898 = trunc i64 %896 to i32
  %899 = add i32 %898, -1
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RDX.i579, align 8
  %901 = icmp eq i32 %898, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %12, align 1
  %903 = and i32 %899, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %13, align 1
  %908 = xor i32 %899, %898
  %909 = lshr i32 %908, 4
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  store i8 %911, i8* %14, align 1
  %912 = icmp eq i32 %899, 0
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %15, align 1
  %914 = lshr i32 %899, 31
  %915 = trunc i32 %914 to i8
  store i8 %915, i8* %16, align 1
  %916 = lshr i32 %898, 31
  %917 = xor i32 %914, %916
  %918 = add nuw nsw i32 %917, %916
  %919 = icmp eq i32 %918, 2
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %17, align 1
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -200
  %923 = add i64 %895, 10
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  %925 = load i64, i64* %924, align 8
  store i64 %925, i64* %22, align 8
  %926 = add i64 %921, -208
  %927 = add i64 %895, 16
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  store i32 %899, i32* %928, align 4
  %929 = load i64, i64* %22, align 8
  %930 = load i64, i64* %3, align 8
  store i64 %929, i64* %RDX.i579, align 8
  %931 = load i64, i64* %RBP.i, align 8
  %932 = add i64 %931, -204
  %933 = add i64 %930, 9
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i595, align 8
  %937 = add i64 %931, -208
  %938 = add i64 %930, 16
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %20, align 8
  %942 = add i64 %930, 89139
  %943 = add i64 %930, 21
  %944 = load i64, i64* %6, align 8
  %945 = add i64 %944, -8
  %946 = inttoptr i64 %945 to i64*
  store i64 %943, i64* %946, align 8
  store i64 %945, i64* %6, align 8
  store i64 %942, i64* %3, align 8
  %call2_43c46d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %942, %struct.Memory* %897)
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43c472

block_.L_43c472:                                  ; preds = %routine_idivl__ecx.exit, %block_43c3fc
  %947 = phi i64 [ %.pre43, %routine_idivl__ecx.exit ], [ %746, %block_43c3fc ]
  %948 = phi i64 [ %.pre42, %routine_idivl__ecx.exit ], [ %799, %block_43c3fc ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_43c46d, %routine_idivl__ecx.exit ], [ %MEMORY.2, %block_43c3fc ]
  %949 = add i64 %948, ptrtoint (%G_0xa6ae6__rip__type* @G_0xa6ae6__rip_ to i64)
  %950 = add i64 %948, 8
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %152, align 1
  store double 0.000000e+00, double* %153, align 1
  %953 = add i64 %947, -32
  %954 = add i64 %948, 13
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to float*
  %956 = load float, float* %955, align 4
  %957 = fpext float %956 to double
  store double %957, double* %151, align 1
  %958 = add i64 %948, 17
  store i64 %958, i64* %3, align 8
  %959 = bitcast i64 %952 to double
  %960 = fcmp uno double %957, %959
  br i1 %960, label %961, label %971

; <label>:961:                                    ; preds = %block_.L_43c472
  %962 = fadd double %957, %959
  %963 = bitcast double %962 to i64
  %964 = and i64 %963, 9221120237041090560
  %965 = icmp eq i64 %964, 9218868437227405312
  %966 = and i64 %963, 2251799813685247
  %967 = icmp ne i64 %966, 0
  %968 = and i1 %965, %967
  br i1 %968, label %969, label %977

; <label>:969:                                    ; preds = %961
  %970 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %958, %struct.Memory* %MEMORY.4)
  %.pre44 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:971:                                    ; preds = %block_.L_43c472
  %972 = fcmp ogt double %957, %959
  br i1 %972, label %977, label %973

; <label>:973:                                    ; preds = %971
  %974 = fcmp olt double %957, %959
  br i1 %974, label %977, label %975

; <label>:975:                                    ; preds = %973
  %976 = fcmp oeq double %957, %959
  br i1 %976, label %977, label %981

; <label>:977:                                    ; preds = %975, %973, %971, %961
  %978 = phi i8 [ 0, %971 ], [ 0, %973 ], [ 1, %975 ], [ 1, %961 ]
  %979 = phi i8 [ 0, %971 ], [ 0, %973 ], [ 0, %975 ], [ 1, %961 ]
  %980 = phi i8 [ 0, %971 ], [ 1, %973 ], [ 0, %975 ], [ 1, %961 ]
  store i8 %978, i8* %15, align 1
  store i8 %979, i8* %13, align 1
  store i8 %980, i8* %12, align 1
  br label %981

; <label>:981:                                    ; preds = %977, %975
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %981, %969
  %982 = phi i64 [ %.pre44, %969 ], [ %958, %981 ]
  %983 = phi %struct.Memory* [ %970, %969 ], [ %MEMORY.4, %981 ]
  %984 = add i64 %982, 31
  %985 = add i64 %982, 6
  %986 = load i8, i8* %15, align 1
  %987 = icmp eq i8 %986, 0
  %988 = select i1 %987, i64 %984, i64 %985
  store i64 %988, i64* %3, align 8
  br i1 %987, label %block_.L_43c4a2, label %block_43c489

block_43c489:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %989 = load i8, i8* %13, align 1
  %990 = icmp ne i8 %989, 0
  %.v68 = select i1 %990, i64 25, i64 6
  %991 = add i64 %988, %.v68
  store i64 %991, i64* %3, align 8
  %cmpBr_43c489 = icmp eq i8 %989, 1
  br i1 %cmpBr_43c489, label %block_.L_43c4a2, label %block_43c48f

block_43c48f:                                     ; preds = %block_43c489
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -100
  %994 = add i64 %991, 7
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i32*
  store i32 3, i32* %995, align 4
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -104
  %998 = load i64, i64* %3, align 8
  %999 = add i64 %998, 7
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %997 to i32*
  store i32 3, i32* %1000, align 4
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, 66
  br label %block_.L_43c4df

block_.L_43c4a2:                                  ; preds = %block_43c489, %routine_ucomisd__xmm0___xmm1.exit
  %1003 = phi i64 [ %991, %block_43c489 ], [ %984, %routine_ucomisd__xmm0___xmm1.exit ]
  %1004 = add i64 %1003, ptrtoint (%G_0xa6ab6__rip__type* @G_0xa6ab6__rip_ to i64)
  %1005 = add i64 %1003, 8
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i64*
  %1007 = load i64, i64* %1006, align 8
  store i64 %1007, i64* %152, align 1
  store double 0.000000e+00, double* %153, align 1
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -32
  %1010 = add i64 %1003, 13
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to float*
  %1012 = load float, float* %1011, align 4
  %1013 = fpext float %1012 to double
  store double %1013, double* %151, align 1
  %1014 = add i64 %1003, 17
  store i64 %1014, i64* %3, align 8
  %1015 = bitcast i64 %1007 to double
  %1016 = fcmp uno double %1015, %1013
  br i1 %1016, label %1017, label %1027

; <label>:1017:                                   ; preds = %block_.L_43c4a2
  %1018 = fadd double %1013, %1015
  %1019 = bitcast double %1018 to i64
  %1020 = and i64 %1019, 9221120237041090560
  %1021 = icmp eq i64 %1020, 9218868437227405312
  %1022 = and i64 %1019, 2251799813685247
  %1023 = icmp ne i64 %1022, 0
  %1024 = and i1 %1021, %1023
  br i1 %1024, label %1025, label %1033

; <label>:1025:                                   ; preds = %1017
  %1026 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1014, %struct.Memory* %983)
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i8, i8* %15, align 1
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1027:                                   ; preds = %block_.L_43c4a2
  %1028 = fcmp ogt double %1015, %1013
  br i1 %1028, label %1033, label %1029

; <label>:1029:                                   ; preds = %1027
  %1030 = fcmp olt double %1015, %1013
  br i1 %1030, label %1033, label %1031

; <label>:1031:                                   ; preds = %1029
  %1032 = fcmp oeq double %1015, %1013
  br i1 %1032, label %1033, label %1037

; <label>:1033:                                   ; preds = %1031, %1029, %1027, %1017
  %1034 = phi i8 [ 0, %1027 ], [ 0, %1029 ], [ 1, %1031 ], [ 1, %1017 ]
  %1035 = phi i8 [ 0, %1027 ], [ 0, %1029 ], [ 0, %1031 ], [ 1, %1017 ]
  %1036 = phi i8 [ 0, %1027 ], [ 1, %1029 ], [ 0, %1031 ], [ 1, %1017 ]
  store i8 %1034, i8* %15, align 1
  store i8 %1035, i8* %13, align 1
  store i8 %1036, i8* %12, align 1
  br label %1037

; <label>:1037:                                   ; preds = %1033, %1031
  %1038 = phi i8 [ %1034, %1033 ], [ %986, %1031 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1037, %1025
  %1039 = phi i64 [ %.pre47, %1025 ], [ %1008, %1037 ]
  %1040 = phi i8 [ %.pre46, %1025 ], [ %1038, %1037 ]
  %1041 = phi i64 [ %.pre45, %1025 ], [ %1014, %1037 ]
  %1042 = phi %struct.Memory* [ %1026, %1025 ], [ %983, %1037 ]
  %1043 = load i8, i8* %12, align 1
  %1044 = or i8 %1040, %1043
  %1045 = icmp ne i8 %1044, 0
  %.v69 = select i1 %1045, i64 25, i64 6
  %1046 = add i64 %1041, %.v69
  %1047 = add i64 %1039, -100
  %1048 = add i64 %1046, 7
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  br i1 %1045, label %block_.L_43c4cc, label %block_43c4b9

block_43c4b9:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  store i32 2, i32* %1049, align 4
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -104
  %1052 = load i64, i64* %3, align 8
  %1053 = add i64 %1052, 7
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1051 to i32*
  store i32 1, i32* %1054, align 4
  %1055 = load i64, i64* %3, align 8
  %1056 = add i64 %1055, 19
  store i64 %1056, i64* %3, align 8
  br label %block_.L_43c4da

block_.L_43c4cc:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  store i32 1, i32* %1049, align 4
  %1057 = load i64, i64* %RBP.i, align 8
  %1058 = add i64 %1057, -104
  %1059 = load i64, i64* %3, align 8
  %1060 = add i64 %1059, 7
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1058 to i32*
  store i32 2, i32* %1061, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_43c4da

block_.L_43c4da:                                  ; preds = %block_.L_43c4cc, %block_43c4b9
  %1062 = phi i64 [ %.pre48, %block_.L_43c4cc ], [ %1056, %block_43c4b9 ]
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %3, align 8
  br label %block_.L_43c4df

block_.L_43c4df:                                  ; preds = %block_.L_43c4da, %block_43c48f
  %storemerge = phi i64 [ %1002, %block_43c48f ], [ %1063, %block_.L_43c4da ]
  %MEMORY.7 = phi %struct.Memory* [ %983, %block_43c48f ], [ %1042, %block_.L_43c4da ]
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -88
  %1066 = add i64 %storemerge, 7
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  store i32 0, i32* %1067, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_43c4e6

block_.L_43c4e6:                                  ; preds = %block_.L_43c5be, %block_.L_43c4df
  %1068 = phi i64 [ %1529, %block_.L_43c5be ], [ %.pre49, %block_.L_43c4df ]
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -88
  %1071 = add i64 %1068, 4
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, -4
  %1075 = icmp ult i32 %1073, 4
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %12, align 1
  %1077 = and i32 %1074, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %13, align 1
  %1082 = xor i32 %1074, %1073
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %14, align 1
  %1086 = icmp eq i32 %1074, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %15, align 1
  %1088 = lshr i32 %1074, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %16, align 1
  %1090 = lshr i32 %1073, 31
  %1091 = xor i32 %1088, %1090
  %1092 = add nuw nsw i32 %1091, %1090
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %17, align 1
  %1095 = icmp ne i8 %1089, 0
  %1096 = xor i1 %1095, %1093
  %.v60 = select i1 %1096, i64 10, i64 235
  %1097 = add i64 %1068, %.v60
  store i64 %1097, i64* %3, align 8
  br i1 %1096, label %block_43c4f0, label %block_.L_43c5d1

block_43c4f0:                                     ; preds = %block_.L_43c4e6
  %1098 = add i64 %1097, 4
  store i64 %1098, i64* %3, align 8
  %1099 = load i32, i32* %1072, align 4
  %1100 = sext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i320, align 8
  %1101 = shl nsw i64 %1100, 2
  %1102 = add i64 %1069, -64
  %1103 = add i64 %1102, %1101
  %1104 = add i64 %1097, 8
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RCX.i595, align 8
  %1108 = add i64 %1069, -100
  %1109 = add i64 %1097, 11
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sub i32 %1106, %1111
  %1113 = icmp ult i32 %1106, %1111
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %12, align 1
  %1115 = and i32 %1112, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %13, align 1
  %1120 = xor i32 %1111, %1106
  %1121 = xor i32 %1120, %1112
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %14, align 1
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %15, align 1
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %16, align 1
  %1129 = lshr i32 %1106, 31
  %1130 = lshr i32 %1111, 31
  %1131 = xor i32 %1130, %1129
  %1132 = xor i32 %1127, %1129
  %1133 = add nuw nsw i32 %1132, %1131
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %17, align 1
  %1136 = icmp ne i8 %1128, 0
  %1137 = xor i1 %1136, %1134
  %.v61 = select i1 %1137, i64 17, i64 103
  %1138 = add i64 %1097, %.v61
  store i64 %1138, i64* %3, align 8
  br i1 %1137, label %block_43c501, label %block_.L_43c557

block_43c501:                                     ; preds = %block_43c4f0
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %3, align 8
  %1140 = load i32, i32* %1072, align 4
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i320, align 8
  %1142 = shl nsw i64 %1141, 2
  %1143 = add i64 %1102, %1142
  %1144 = add i64 %1138, 8
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RCX.i595, align 8
  %1148 = add i64 %1069, -108
  %1149 = add i64 %1138, 11
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  store i32 %1146, i32* %1150, align 4
  %1151 = load i64, i64* %RBP.i, align 8
  %1152 = add i64 %1151, -24
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1152 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RAX.i320, align 8
  %1157 = add i64 %1151, -4
  %1158 = add i64 %1153, 8
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = mul nsw i64 %1161, 48
  store i64 %1162, i64* %RDX.i579, align 8
  %1163 = lshr i64 %1162, 63
  %1164 = add i64 %1162, %1156
  store i64 %1164, i64* %RAX.i320, align 8
  %1165 = icmp ult i64 %1164, %1156
  %1166 = icmp ult i64 %1164, %1162
  %1167 = or i1 %1165, %1166
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %12, align 1
  %1169 = trunc i64 %1164 to i32
  %1170 = and i32 %1169, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %13, align 1
  %1175 = xor i64 %1162, %1156
  %1176 = xor i64 %1175, %1164
  %1177 = lshr i64 %1176, 4
  %1178 = trunc i64 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %14, align 1
  %1180 = icmp eq i64 %1164, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %15, align 1
  %1182 = lshr i64 %1164, 63
  %1183 = trunc i64 %1182 to i8
  store i8 %1183, i8* %16, align 1
  %1184 = lshr i64 %1156, 63
  %1185 = xor i64 %1182, %1184
  %1186 = xor i64 %1182, %1163
  %1187 = add nuw nsw i64 %1185, %1186
  %1188 = icmp eq i64 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %17, align 1
  %1190 = add i64 %1151, -88
  %1191 = add i64 %1153, 19
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = sext i32 %1193 to i64
  store i64 %1194, i64* %RDX.i579, align 8
  %1195 = shl nsw i64 %1194, 2
  %1196 = add i64 %1164, 12
  %1197 = add i64 %1196, %1195
  %1198 = add i64 %1153, 23
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RCX.i595, align 8
  %1202 = add i64 %1151, -112
  %1203 = add i64 %1153, 26
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  store i32 %1200, i32* %1204, align 4
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -100
  %1207 = load i64, i64* %3, align 8
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1206 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RCX.i595, align 8
  %1212 = add i64 %1205, -88
  %1213 = add i64 %1207, 7
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = sext i32 %1215 to i64
  store i64 %1216, i64* %RAX.i320, align 8
  %1217 = shl nsw i64 %1216, 2
  %1218 = add i64 %1205, -64
  %1219 = add i64 %1218, %1217
  %1220 = add i64 %1207, 11
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 %1210, i32* %1221, align 4
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -92
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1223 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RCX.i595, align 8
  %1229 = add i64 %1222, -24
  %1230 = add i64 %1224, 7
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %RAX.i320, align 8
  %1233 = add i64 %1222, -4
  %1234 = add i64 %1224, 11
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = sext i32 %1236 to i64
  %1238 = mul nsw i64 %1237, 48
  store i64 %1238, i64* %RDX.i579, align 8
  %1239 = lshr i64 %1238, 63
  %1240 = add i64 %1238, %1232
  store i64 %1240, i64* %RAX.i320, align 8
  %1241 = icmp ult i64 %1240, %1232
  %1242 = icmp ult i64 %1240, %1238
  %1243 = or i1 %1241, %1242
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %12, align 1
  %1245 = trunc i64 %1240 to i32
  %1246 = and i32 %1245, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %13, align 1
  %1251 = xor i64 %1238, %1232
  %1252 = xor i64 %1251, %1240
  %1253 = lshr i64 %1252, 4
  %1254 = trunc i64 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %14, align 1
  %1256 = icmp eq i64 %1240, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %15, align 1
  %1258 = lshr i64 %1240, 63
  %1259 = trunc i64 %1258 to i8
  store i8 %1259, i8* %16, align 1
  %1260 = lshr i64 %1232, 63
  %1261 = xor i64 %1258, %1260
  %1262 = xor i64 %1258, %1239
  %1263 = add nuw nsw i64 %1261, %1262
  %1264 = icmp eq i64 %1263, 2
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %17, align 1
  %1266 = add i64 %1222, -88
  %1267 = add i64 %1224, 22
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = sext i32 %1269 to i64
  store i64 %1270, i64* %RDX.i579, align 8
  %1271 = shl nsw i64 %1270, 2
  %1272 = add i64 %1240, 12
  %1273 = add i64 %1272, %1271
  %1274 = add i64 %1224, 26
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  store i32 %1227, i32* %1275, align 4
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -108
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RCX.i595, align 8
  %1283 = add i64 %1276, -100
  %1284 = add i64 %1278, 6
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  store i32 %1281, i32* %1285, align 4
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -112
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i595, align 8
  %1293 = add i64 %1286, -92
  %1294 = add i64 %1288, 6
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 %1291, i32* %1295, align 4
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_43c557

block_.L_43c557:                                  ; preds = %block_43c4f0, %block_43c501
  %1296 = phi i64 [ %1138, %block_43c4f0 ], [ %.pre51, %block_43c501 ]
  %1297 = phi i64 [ %1069, %block_43c4f0 ], [ %.pre50, %block_43c501 ]
  %1298 = add i64 %1297, -88
  %1299 = add i64 %1296, 4
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = sext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i320, align 8
  %1303 = shl nsw i64 %1302, 2
  %1304 = add i64 %1297, -80
  %1305 = add i64 %1304, %1303
  %1306 = add i64 %1296, 8
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RCX.i595, align 8
  %1310 = add i64 %1297, -104
  %1311 = add i64 %1296, 11
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = sub i32 %1308, %1313
  %1315 = icmp ult i32 %1308, %1313
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %12, align 1
  %1317 = and i32 %1314, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %13, align 1
  %1322 = xor i32 %1313, %1308
  %1323 = xor i32 %1322, %1314
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  store i8 %1326, i8* %14, align 1
  %1327 = icmp eq i32 %1314, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %15, align 1
  %1329 = lshr i32 %1314, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %16, align 1
  %1331 = lshr i32 %1308, 31
  %1332 = lshr i32 %1313, 31
  %1333 = xor i32 %1332, %1331
  %1334 = xor i32 %1329, %1331
  %1335 = add nuw nsw i32 %1334, %1333
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %17, align 1
  %1338 = icmp ne i8 %1330, 0
  %1339 = xor i1 %1338, %1336
  %.v62 = select i1 %1339, i64 17, i64 103
  %1340 = add i64 %1296, %.v62
  store i64 %1340, i64* %3, align 8
  br i1 %1339, label %block_43c568, label %block_.L_43c5be

block_43c568:                                     ; preds = %block_.L_43c557
  %1341 = add i64 %1340, 4
  store i64 %1341, i64* %3, align 8
  %1342 = load i32, i32* %1300, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RAX.i320, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1304, %1344
  %1346 = add i64 %1340, 8
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i595, align 8
  %1350 = add i64 %1297, -116
  %1351 = add i64 %1340, 11
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  store i32 %1348, i32* %1352, align 4
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -24
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1354 to i64*
  %1358 = load i64, i64* %1357, align 8
  store i64 %1358, i64* %RAX.i320, align 8
  %1359 = add i64 %1353, -4
  %1360 = add i64 %1355, 8
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = sext i32 %1362 to i64
  %1364 = mul nsw i64 %1363, 48
  store i64 %1364, i64* %RDX.i579, align 8
  %1365 = lshr i64 %1364, 63
  %1366 = add i64 %1364, %1358
  store i64 %1366, i64* %RAX.i320, align 8
  %1367 = icmp ult i64 %1366, %1358
  %1368 = icmp ult i64 %1366, %1364
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %12, align 1
  %1371 = trunc i64 %1366 to i32
  %1372 = and i32 %1371, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %13, align 1
  %1377 = xor i64 %1364, %1358
  %1378 = xor i64 %1377, %1366
  %1379 = lshr i64 %1378, 4
  %1380 = trunc i64 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %14, align 1
  %1382 = icmp eq i64 %1366, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %15, align 1
  %1384 = lshr i64 %1366, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %16, align 1
  %1386 = lshr i64 %1358, 63
  %1387 = xor i64 %1384, %1386
  %1388 = xor i64 %1384, %1365
  %1389 = add nuw nsw i64 %1387, %1388
  %1390 = icmp eq i64 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %17, align 1
  %1392 = add i64 %1353, -88
  %1393 = add i64 %1355, 19
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = sext i32 %1395 to i64
  store i64 %1396, i64* %RDX.i579, align 8
  %1397 = shl nsw i64 %1396, 2
  %1398 = add i64 %1366, 32
  %1399 = add i64 %1398, %1397
  %1400 = add i64 %1355, 23
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RCX.i595, align 8
  %1404 = add i64 %1353, -120
  %1405 = add i64 %1355, 26
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  store i32 %1402, i32* %1406, align 4
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -104
  %1409 = load i64, i64* %3, align 8
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1408 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RCX.i595, align 8
  %1414 = add i64 %1407, -88
  %1415 = add i64 %1409, 7
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = sext i32 %1417 to i64
  store i64 %1418, i64* %RAX.i320, align 8
  %1419 = shl nsw i64 %1418, 2
  %1420 = add i64 %1407, -80
  %1421 = add i64 %1420, %1419
  %1422 = add i64 %1409, 11
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  store i32 %1412, i32* %1423, align 4
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -96
  %1426 = load i64, i64* %3, align 8
  %1427 = add i64 %1426, 3
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RCX.i595, align 8
  %1431 = add i64 %1424, -24
  %1432 = add i64 %1426, 7
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %RAX.i320, align 8
  %1435 = add i64 %1424, -4
  %1436 = add i64 %1426, 11
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = sext i32 %1438 to i64
  %1440 = mul nsw i64 %1439, 48
  store i64 %1440, i64* %RDX.i579, align 8
  %1441 = lshr i64 %1440, 63
  %1442 = add i64 %1440, %1434
  store i64 %1442, i64* %RAX.i320, align 8
  %1443 = icmp ult i64 %1442, %1434
  %1444 = icmp ult i64 %1442, %1440
  %1445 = or i1 %1443, %1444
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %12, align 1
  %1447 = trunc i64 %1442 to i32
  %1448 = and i32 %1447, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %13, align 1
  %1453 = xor i64 %1440, %1434
  %1454 = xor i64 %1453, %1442
  %1455 = lshr i64 %1454, 4
  %1456 = trunc i64 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %14, align 1
  %1458 = icmp eq i64 %1442, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %15, align 1
  %1460 = lshr i64 %1442, 63
  %1461 = trunc i64 %1460 to i8
  store i8 %1461, i8* %16, align 1
  %1462 = lshr i64 %1434, 63
  %1463 = xor i64 %1460, %1462
  %1464 = xor i64 %1460, %1441
  %1465 = add nuw nsw i64 %1463, %1464
  %1466 = icmp eq i64 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %17, align 1
  %1468 = add i64 %1424, -88
  %1469 = add i64 %1426, 22
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RDX.i579, align 8
  %1473 = shl nsw i64 %1472, 2
  %1474 = add i64 %1442, 32
  %1475 = add i64 %1474, %1473
  %1476 = add i64 %1426, 26
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  store i32 %1429, i32* %1477, align 4
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -116
  %1480 = load i64, i64* %3, align 8
  %1481 = add i64 %1480, 3
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1479 to i32*
  %1483 = load i32, i32* %1482, align 4
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RCX.i595, align 8
  %1485 = add i64 %1478, -104
  %1486 = add i64 %1480, 6
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  store i32 %1483, i32* %1487, align 4
  %1488 = load i64, i64* %RBP.i, align 8
  %1489 = add i64 %1488, -120
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RCX.i595, align 8
  %1495 = add i64 %1488, -96
  %1496 = add i64 %1490, 6
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  store i32 %1493, i32* %1497, align 4
  %.pre52 = load i64, i64* %3, align 8
  %.pre53 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43c5be

block_.L_43c5be:                                  ; preds = %block_.L_43c557, %block_43c568
  %1498 = phi i64 [ %1297, %block_.L_43c557 ], [ %.pre53, %block_43c568 ]
  %1499 = phi i64 [ %1340, %block_.L_43c557 ], [ %.pre52, %block_43c568 ]
  %1500 = add i64 %1498, -88
  %1501 = add i64 %1499, 8
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = add i32 %1503, 1
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i320, align 8
  %1506 = icmp eq i32 %1503, -1
  %1507 = icmp eq i32 %1504, 0
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %12, align 1
  %1510 = and i32 %1504, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %13, align 1
  %1515 = xor i32 %1504, %1503
  %1516 = lshr i32 %1515, 4
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  store i8 %1518, i8* %14, align 1
  %1519 = zext i1 %1507 to i8
  store i8 %1519, i8* %15, align 1
  %1520 = lshr i32 %1504, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %16, align 1
  %1522 = lshr i32 %1503, 31
  %1523 = xor i32 %1520, %1522
  %1524 = add nuw nsw i32 %1523, %1520
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %17, align 1
  %1527 = add i64 %1499, 14
  store i64 %1527, i64* %3, align 8
  store i32 %1504, i32* %1502, align 4
  %1528 = load i64, i64* %3, align 8
  %1529 = add i64 %1528, -230
  store i64 %1529, i64* %3, align 8
  br label %block_.L_43c4e6

block_.L_43c5d1:                                  ; preds = %block_.L_43c4e6
  %1530 = add i64 %1069, -36
  %1531 = add i64 %1097, 3
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = add i32 %1533, 1
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RAX.i320, align 8
  %1536 = icmp eq i32 %1533, -1
  %1537 = icmp eq i32 %1534, 0
  %1538 = or i1 %1536, %1537
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %12, align 1
  %1540 = and i32 %1534, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %13, align 1
  %1545 = xor i32 %1534, %1533
  %1546 = lshr i32 %1545, 4
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  store i8 %1548, i8* %14, align 1
  %1549 = zext i1 %1537 to i8
  store i8 %1549, i8* %15, align 1
  %1550 = lshr i32 %1534, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %16, align 1
  %1552 = lshr i32 %1533, 31
  %1553 = xor i32 %1550, %1552
  %1554 = add nuw nsw i32 %1553, %1550
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %17, align 1
  %1557 = add i64 %1097, 9
  store i64 %1557, i64* %3, align 8
  store i32 %1534, i32* %1532, align 4
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -40
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 3
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1559 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = add i32 %1563, 1
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i320, align 8
  %1566 = icmp eq i32 %1563, -1
  %1567 = icmp eq i32 %1564, 0
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %12, align 1
  %1570 = and i32 %1564, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %13, align 1
  %1575 = xor i32 %1564, %1563
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %14, align 1
  %1579 = zext i1 %1567 to i8
  store i8 %1579, i8* %15, align 1
  %1580 = lshr i32 %1564, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %16, align 1
  %1582 = lshr i32 %1563, 31
  %1583 = xor i32 %1580, %1582
  %1584 = add nuw nsw i32 %1583, %1580
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %17, align 1
  %1587 = add i64 %1560, 9
  store i64 %1587, i64* %3, align 8
  store i32 %1564, i32* %1562, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_43c5e3

block_.L_43c5e3:                                  ; preds = %block_.L_43c5d1, %block_43c338, %block_43c32e
  %1588 = phi i64 [ %532, %block_43c32e ], [ %546, %block_43c338 ], [ %.pre54, %block_.L_43c5d1 ]
  %MEMORY.11 = phi %struct.Memory* [ %514, %block_43c32e ], [ %514, %block_43c338 ], [ %MEMORY.7, %block_.L_43c5d1 ]
  %1589 = add i64 %1588, 5
  store i64 %1589, i64* %3, align 8
  br label %block_.L_43c5e8

block_.L_43c5e8:                                  ; preds = %block_.L_43c5e3, %routine_ucomisd__xmm1___xmm0.exit460, %routine_ucomisd__xmm1___xmm0.exit472
  %1590 = phi i64 [ %468, %routine_ucomisd__xmm1___xmm0.exit472 ], [ %517, %routine_ucomisd__xmm1___xmm0.exit460 ], [ %1589, %block_.L_43c5e3 ]
  %MEMORY.12 = phi %struct.Memory* [ %467, %routine_ucomisd__xmm1___xmm0.exit472 ], [ %514, %routine_ucomisd__xmm1___xmm0.exit460 ], [ %MEMORY.11, %block_.L_43c5e3 ]
  %1591 = load i64, i64* %RBP.i, align 8
  %1592 = add i64 %1591, -84
  %1593 = add i64 %1590, 8
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = add i32 %1595, 1
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RAX.i320, align 8
  %1598 = icmp eq i32 %1595, -1
  %1599 = icmp eq i32 %1596, 0
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %12, align 1
  %1602 = and i32 %1596, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %13, align 1
  %1607 = xor i32 %1596, %1595
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %14, align 1
  %1611 = zext i1 %1599 to i8
  store i8 %1611, i8* %15, align 1
  %1612 = lshr i32 %1596, 31
  %1613 = trunc i32 %1612 to i8
  store i8 %1613, i8* %16, align 1
  %1614 = lshr i32 %1595, 31
  %1615 = xor i32 %1612, %1614
  %1616 = add nuw nsw i32 %1615, %1612
  %1617 = icmp eq i32 %1616, 2
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %17, align 1
  %1619 = add i64 %1590, 14
  store i64 %1619, i64* %3, align 8
  store i32 %1596, i32* %1594, align 4
  %1620 = load i64, i64* %3, align 8
  %1621 = add i64 %1620, -902
  store i64 %1621, i64* %3, align 8
  br label %block_.L_43c270

block_.L_43c5fb:                                  ; preds = %block_.L_43c270
  %1622 = add i64 %155, -36
  %1623 = add i64 %183, 3
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX.i320, align 8
  %1627 = add i64 %155, -24
  %1628 = add i64 %183, 7
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RCX.i595, align 8
  %1631 = add i64 %155, -4
  %1632 = add i64 %183, 11
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = sext i32 %1634 to i64
  %1636 = mul nsw i64 %1635, 48
  store i64 %1636, i64* %RDX.i579, align 8
  %1637 = lshr i64 %1636, 63
  %1638 = add i64 %1636, %1630
  store i64 %1638, i64* %RCX.i595, align 8
  %1639 = icmp ult i64 %1638, %1630
  %1640 = icmp ult i64 %1638, %1636
  %1641 = or i1 %1639, %1640
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %12, align 1
  %1643 = trunc i64 %1638 to i32
  %1644 = and i32 %1643, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %13, align 1
  %1649 = xor i64 %1636, %1630
  %1650 = xor i64 %1649, %1638
  %1651 = lshr i64 %1650, 4
  %1652 = trunc i64 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %14, align 1
  %1654 = icmp eq i64 %1638, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %15, align 1
  %1656 = lshr i64 %1638, 63
  %1657 = trunc i64 %1656 to i8
  store i8 %1657, i8* %16, align 1
  %1658 = lshr i64 %1630, 63
  %1659 = xor i64 %1656, %1658
  %1660 = xor i64 %1656, %1637
  %1661 = add nuw nsw i64 %1659, %1660
  %1662 = icmp eq i64 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %17, align 1
  %1664 = add i64 %1638, 8
  %1665 = add i64 %183, 21
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  store i32 %1625, i32* %1666, align 4
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -40
  %1669 = load i64, i64* %3, align 8
  %1670 = add i64 %1669, 3
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RAX.i320, align 8
  %1674 = add i64 %1667, -24
  %1675 = add i64 %1669, 7
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RCX.i595, align 8
  %1678 = add i64 %1667, -4
  %1679 = add i64 %1669, 11
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = sext i32 %1681 to i64
  %1683 = mul nsw i64 %1682, 48
  store i64 %1683, i64* %RDX.i579, align 8
  %1684 = lshr i64 %1683, 63
  %1685 = add i64 %1683, %1677
  store i64 %1685, i64* %RCX.i595, align 8
  %1686 = icmp ult i64 %1685, %1677
  %1687 = icmp ult i64 %1685, %1683
  %1688 = or i1 %1686, %1687
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %12, align 1
  %1690 = trunc i64 %1685 to i32
  %1691 = and i32 %1690, 255
  %1692 = tail call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  store i8 %1695, i8* %13, align 1
  %1696 = xor i64 %1683, %1677
  %1697 = xor i64 %1696, %1685
  %1698 = lshr i64 %1697, 4
  %1699 = trunc i64 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %14, align 1
  %1701 = icmp eq i64 %1685, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %15, align 1
  %1703 = lshr i64 %1685, 63
  %1704 = trunc i64 %1703 to i8
  store i8 %1704, i8* %16, align 1
  %1705 = lshr i64 %1677, 63
  %1706 = xor i64 %1703, %1705
  %1707 = xor i64 %1703, %1684
  %1708 = add nuw nsw i64 %1706, %1707
  %1709 = icmp eq i64 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %17, align 1
  %1711 = add i64 %1685, 28
  %1712 = add i64 %1669, 21
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  store i32 %1672, i32* %1713, align 4
  %1714 = load i64, i64* %RBP.i, align 8
  %1715 = add i64 %1714, -28
  %1716 = load i64, i64* %3, align 8
  %1717 = add i64 %1716, 5
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718, align 4
  store i32 %1719, i32* %29, align 1
  store float 0.000000e+00, float* %146, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %148, align 1
  %1720 = add i64 %1714, -24
  %1721 = add i64 %1716, 9
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i64*
  %1723 = load i64, i64* %1722, align 8
  store i64 %1723, i64* %RCX.i595, align 8
  %1724 = add i64 %1714, -4
  %1725 = add i64 %1716, 13
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = mul nsw i64 %1728, 48
  store i64 %1729, i64* %RDX.i579, align 8
  %1730 = lshr i64 %1729, 63
  %1731 = add i64 %1729, %1723
  store i64 %1731, i64* %RCX.i595, align 8
  %1732 = icmp ult i64 %1731, %1723
  %1733 = icmp ult i64 %1731, %1729
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %12, align 1
  %1736 = trunc i64 %1731 to i32
  %1737 = and i32 %1736, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %13, align 1
  %1742 = xor i64 %1729, %1723
  %1743 = xor i64 %1742, %1731
  %1744 = lshr i64 %1743, 4
  %1745 = trunc i64 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %14, align 1
  %1747 = icmp eq i64 %1731, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %15, align 1
  %1749 = lshr i64 %1731, 63
  %1750 = trunc i64 %1749 to i8
  store i8 %1750, i8* %16, align 1
  %1751 = lshr i64 %1723, 63
  %1752 = xor i64 %1749, %1751
  %1753 = xor i64 %1749, %1730
  %1754 = add nuw nsw i64 %1752, %1753
  %1755 = icmp eq i64 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %17, align 1
  %1757 = inttoptr i64 %1731 to float*
  %1758 = add i64 %1716, 24
  store i64 %1758, i64* %3, align 8
  %1759 = load <2 x float>, <2 x float>* %66, align 1
  %1760 = extractelement <2 x float> %1759, i32 0
  store float %1760, float* %1757, align 4
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -28
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1762 to i32*
  %1766 = load i32, i32* %1765, align 4
  store i32 %1766, i32* %29, align 1
  store float 0.000000e+00, float* %146, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %148, align 1
  %1767 = load i64, i64* %6, align 8
  %1768 = add i64 %1767, 208
  store i64 %1768, i64* %6, align 8
  %1769 = icmp ugt i64 %1767, -209
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %12, align 1
  %1771 = trunc i64 %1768 to i32
  %1772 = and i32 %1771, 255
  %1773 = tail call i32 @llvm.ctpop.i32(i32 %1772)
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  store i8 %1776, i8* %13, align 1
  %1777 = xor i64 %1767, 16
  %1778 = xor i64 %1777, %1768
  %1779 = lshr i64 %1778, 4
  %1780 = trunc i64 %1779 to i8
  %1781 = and i8 %1780, 1
  store i8 %1781, i8* %14, align 1
  %1782 = icmp eq i64 %1768, 0
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %15, align 1
  %1784 = lshr i64 %1768, 63
  %1785 = trunc i64 %1784 to i8
  store i8 %1785, i8* %16, align 1
  %1786 = lshr i64 %1767, 63
  %1787 = xor i64 %1784, %1786
  %1788 = add nuw nsw i64 %1787, %1784
  %1789 = icmp eq i64 %1788, 2
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %17, align 1
  %1791 = add i64 %1763, 13
  store i64 %1791, i64* %3, align 8
  %1792 = add i64 %1767, 216
  %1793 = inttoptr i64 %1768 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RBP.i, align 8
  store i64 %1792, i64* %6, align 8
  %1795 = add i64 %1763, 14
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1792 to i64*
  %1797 = load i64, i64* %1796, align 8
  store i64 %1797, i64* %3, align 8
  %1798 = add i64 %1767, 224
  store i64 %1798, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
define %struct.Memory* @routine_movl__0x10___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 16, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__r11___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_43c5fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_addl_0x7ae170___rdi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053104
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae190___rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053136
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.evaluate_diagonal_intersection(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_jbe_.L_43c5e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xa6d21__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa6d21__rip__type* @G_0xa6d21__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_je_.L_43c5e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_43c369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_je_.L_43c369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c3da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1520, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57db7b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57db7b_type* @G__0x57db7b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
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
define %struct.Memory* @routine_movq__rdx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_43c401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_je_.L_43c401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c472(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1521, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57db93___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57db93_type* @G__0x57db93 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
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
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xa6ae6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa6ae6__rip__type* @G_0xa6ae6__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_43c4a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_43c4a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c4df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xa6ab6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa6ab6__rip__type* @G_0xa6ab6__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_43c4cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c4da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_43c5d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jge_.L_43c557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_0xc__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 12
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 12
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_jge_.L_43c5be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 32
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x20__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 32
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c5c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c4e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c5e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c5ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RCX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
