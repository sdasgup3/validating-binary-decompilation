; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x39c25__rip__type = type <{ [4 x i8] }>
%G_0x39cbd__rip__type = type <{ [8 x i8] }>
%G_0x39d0a__rip__type = type <{ [8 x i8] }>
%G_0x39df7__rip__type = type <{ [8 x i8] }>
%G_0x39e9e__rip__type = type <{ [4 x i8] }>
%G_0x39ecf__rip__type = type <{ [8 x i8] }>
%G_0x39ed8__rip__type = type <{ [4 x i8] }>
%G_0x39f06__rip__type = type <{ [8 x i8] }>
%G_0x39f75__rip__type = type <{ [4 x i8] }>
%G_0x39f79__rip__type = type <{ [4 x i8] }>
%G_0x39f7c__rip__type = type <{ [8 x i8] }>
%G_0x3aee3__rip__type = type <{ [16 x i8] }>
%G_0x3b0de__rip__type = type <{ [16 x i8] }>
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
@G_0x39c25__rip_ = global %G_0x39c25__rip__type zeroinitializer
@G_0x39cbd__rip_ = global %G_0x39cbd__rip__type zeroinitializer
@G_0x39d0a__rip_ = global %G_0x39d0a__rip__type zeroinitializer
@G_0x39df7__rip_ = global %G_0x39df7__rip__type zeroinitializer
@G_0x39e9e__rip_ = global %G_0x39e9e__rip__type zeroinitializer
@G_0x39ecf__rip_ = global %G_0x39ecf__rip__type zeroinitializer
@G_0x39ed8__rip_ = global %G_0x39ed8__rip__type zeroinitializer
@G_0x39f06__rip_ = global %G_0x39f06__rip__type zeroinitializer
@G_0x39f75__rip_ = global %G_0x39f75__rip__type zeroinitializer
@G_0x39f79__rip_ = global %G_0x39f79__rip__type zeroinitializer
@G_0x39f7c__rip_ = global %G_0x39f7c__rip__type zeroinitializer
@G_0x3aee3__rip_ = global %G_0x3aee3__rip__type zeroinitializer
@G_0x3b0de__rip_ = global %G_0x3b0de__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_41abc0.Lawless416(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @EVDMaxLikelyFit(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = bitcast [32 x %union.VectorReg]* %39 to i8*
  %41 = add i64 %10, add (i64 ptrtoint (%G_0x39f79__rip__type* @G_0x39f79__rip_ to i64), i64 10)
  %42 = add i64 %10, 18
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = bitcast [32 x %union.VectorReg]* %39 to float*
  %46 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %44, i32* %46, align 1
  %47 = getelementptr inbounds i8, i8* %40, i64 4
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %50 = bitcast i64* %49 to float*
  store float 0.000000e+00, float* %50, align 1
  %51 = getelementptr inbounds i8, i8* %40, i64 12
  %52 = bitcast i8* %51 to float*
  store float 0.000000e+00, float* %52, align 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %54 = bitcast %union.VectorReg* %53 to i8*
  %55 = add i64 %10, add (i64 ptrtoint (%G_0x39f75__rip__type* @G_0x39f75__rip_ to i64), i64 18)
  %56 = add i64 %10, 26
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = bitcast %union.VectorReg* %53 to float*
  %60 = bitcast %union.VectorReg* %53 to i32*
  store i32 %58, i32* %60, align 1
  %61 = getelementptr inbounds i8, i8* %54, i64 4
  %62 = bitcast i8* %61 to float*
  store float 0.000000e+00, float* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %64 = bitcast i64* %63 to float*
  store float 0.000000e+00, float* %64, align 1
  %65 = getelementptr inbounds i8, i8* %54, i64 12
  %66 = bitcast i8* %65 to float*
  store float 0.000000e+00, float* %66, align 1
  %RDI.i267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %67 = add i64 %7, -24
  %68 = load i64, i64* %RDI.i267, align 8
  %69 = add i64 %10, 30
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %70, align 8
  %RSI.i285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -24
  %73 = load i64, i64* %RSI.i285, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -28
  %80 = load i32, i32* %EDX.i, align 4
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 3
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %RCX.i367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -40
  %86 = load i64, i64* %RCX.i367, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %R8.i395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -48
  %92 = load i64, i64* %R8.i395, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -92
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 5
  store i64 %99, i64* %3, align 8
  %100 = bitcast %union.VectorReg* %53 to <2 x float>*
  %101 = load <2 x float>, <2 x float>* %100, align 1
  %102 = extractelement <2 x float> %101, i32 0
  %103 = inttoptr i64 %97 to float*
  store float %102, float* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -52
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 5
  store i64 %107, i64* %3, align 8
  %108 = bitcast [32 x %union.VectorReg]* %39 to <2 x float>*
  %109 = load <2 x float>, <2 x float>* %108, align 1
  %110 = extractelement <2 x float> %109, i32 0
  %111 = inttoptr i64 %105 to float*
  store float %110, float* %111, align 4
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -96
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i32*
  store i32 0, i32* %116, align 4
  %RDX.i504 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %117 = bitcast [32 x %union.VectorReg]* %39 to double*
  %118 = bitcast i8* %61 to i32*
  %119 = bitcast i64* %63 to i32*
  %120 = bitcast i8* %65 to i32*
  %121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %122 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %53, i64 0, i32 0, i32 0, i32 0, i64 0
  %123 = bitcast i8* %47 to i32*
  %124 = bitcast i64* %49 to i32*
  %125 = bitcast i8* %51 to i32*
  %126 = bitcast %union.VectorReg* %53 to double*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %128 = bitcast %union.VectorReg* %127 to i8*
  %129 = bitcast %union.VectorReg* %127 to float*
  %130 = bitcast %union.VectorReg* %127 to i32*
  %131 = getelementptr inbounds i8, i8* %128, i64 4
  %132 = bitcast i8* %131 to float*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %134 = bitcast i64* %133 to float*
  %135 = getelementptr inbounds i8, i8* %128, i64 12
  %136 = bitcast i8* %135 to float*
  %137 = bitcast %union.VectorReg* %127 to <2 x float>*
  %138 = bitcast i64* %133 to <2 x i32>*
  %139 = bitcast i8* %131 to i32*
  %140 = bitcast i64* %133 to i32*
  %141 = bitcast i8* %135 to i32*
  %142 = bitcast i64* %63 to <2 x i32>*
  %RAX.i442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  %143 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_41a7ff

block_.L_41a7ff:                                  ; preds = %block_.L_41a881, %entry
  %144 = phi i64 [ %.pre, %entry ], [ %379, %block_.L_41a881 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %334, %block_.L_41a881 ]
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -96
  %147 = add i64 %144, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, -100
  %151 = icmp ult i32 %149, 100
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %14, align 1
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %21, align 1
  %158 = xor i32 %150, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %26, align 1
  %162 = icmp eq i32 %150, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %29, align 1
  %164 = lshr i32 %150, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %32, align 1
  %166 = lshr i32 %149, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %38, align 1
  %171 = icmp ne i8 %165, 0
  %172 = xor i1 %171, %169
  %.v92 = select i1 %172, i64 10, i64 149
  %173 = add i64 %144, %.v92
  store i64 %173, i64* %3, align 8
  br i1 %172, label %block_41a809, label %block_.L_41a894.loopexit

block_41a809:                                     ; preds = %block_.L_41a7ff
  %174 = add i64 %145, -60
  store i64 %174, i64* %RCX.i367, align 8
  %175 = add i64 %145, -64
  store i64 %175, i64* %R8.i395, align 8
  %176 = add i64 %145, -16
  %177 = add i64 %173, 12
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RDI.i267, align 8
  %180 = add i64 %145, -24
  %181 = add i64 %173, 16
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RSI.i285, align 8
  %184 = add i64 %145, -28
  %185 = add i64 %173, 19
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RDX.i504, align 8
  %189 = add i64 %145, -52
  %190 = add i64 %173, 24
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %193 = add i64 %173, 951
  %194 = add i64 %173, 29
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %6, align 8
  store i64 %193, i64* %3, align 8
  %call2_41a821 = tail call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* nonnull %0, i64 %193, %struct.Memory* %MEMORY.0)
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -60
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 5
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to float*
  %203 = load float, float* %202, align 4
  %204 = fpext float %203 to double
  store double %204, double* %117, align 1
  %205 = add i64 %200, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 5)
  %206 = add i64 %200, 12
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i64 %200, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 9)
  %210 = inttoptr i64 %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = add i64 %200, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 13)
  %213 = inttoptr i64 %212 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = add i64 %200, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 17)
  %216 = inttoptr i64 %215 to i32*
  %217 = load i32, i32* %216, align 4
  store i32 %208, i32* %60, align 1
  store i32 %211, i32* %118, align 1
  store i32 %214, i32* %119, align 1
  store i32 %217, i32* %120, align 1
  %218 = bitcast double %204 to i64
  %219 = load i64, i64* %49, align 1
  %220 = load i64, i64* %122, align 1
  %221 = load i64, i64* %63, align 1
  %222 = and i64 %220, %218
  %223 = and i64 %221, %219
  %224 = trunc i64 %222 to i32
  %225 = lshr i64 %222, 32
  %226 = trunc i64 %225 to i32
  store i32 %224, i32* %46, align 1
  store i32 %226, i32* %123, align 1
  %227 = trunc i64 %223 to i32
  store i32 %227, i32* %124, align 1
  %228 = lshr i64 %223, 32
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %125, align 1
  %230 = add i64 %198, -92
  %231 = add i64 %200, 21
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to float*
  %233 = load float, float* %232, align 4
  %234 = fpext float %233 to double
  store double %234, double* %126, align 1
  %235 = add i64 %200, 25
  store i64 %235, i64* %3, align 8
  %236 = load double, double* %117, align 1
  %237 = fcmp uno double %234, %236
  br i1 %237, label %238, label %248

; <label>:238:                                    ; preds = %block_41a809
  %239 = fadd double %234, %236
  %240 = bitcast double %239 to i64
  %241 = and i64 %240, 9221120237041090560
  %242 = icmp eq i64 %241, 9218868437227405312
  %243 = and i64 %240, 2251799813685247
  %244 = icmp ne i64 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %254

; <label>:246:                                    ; preds = %238
  %247 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %235, %struct.Memory* %MEMORY.0)
  %.pre62 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit484

; <label>:248:                                    ; preds = %block_41a809
  %249 = fcmp ogt double %234, %236
  br i1 %249, label %254, label %250

; <label>:250:                                    ; preds = %248
  %251 = fcmp olt double %234, %236
  br i1 %251, label %254, label %252

; <label>:252:                                    ; preds = %250
  %253 = fcmp oeq double %234, %236
  br i1 %253, label %254, label %258

; <label>:254:                                    ; preds = %252, %250, %248, %238
  %255 = phi i8 [ 0, %248 ], [ 0, %250 ], [ 1, %252 ], [ 1, %238 ]
  %256 = phi i8 [ 0, %248 ], [ 0, %250 ], [ 0, %252 ], [ 1, %238 ]
  %257 = phi i8 [ 0, %248 ], [ 1, %250 ], [ 0, %252 ], [ 1, %238 ]
  store i8 %255, i8* %29, align 1
  store i8 %256, i8* %21, align 1
  store i8 %257, i8* %14, align 1
  br label %258

; <label>:258:                                    ; preds = %254, %252
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit484

routine_ucomisd__xmm0___xmm1.exit484:             ; preds = %258, %246
  %259 = phi i64 [ %.pre62, %246 ], [ %235, %258 ]
  %260 = phi %struct.Memory* [ %247, %246 ], [ %MEMORY.0, %258 ]
  %261 = load i8, i8* %14, align 1
  %262 = load i8, i8* %29, align 1
  %263 = or i8 %262, %261
  %264 = icmp ne i8 %263, 0
  %.v132 = select i1 %264, i64 11, i64 6
  %265 = add i64 %259, %.v132
  store i64 %265, i64* %3, align 8
  br i1 %264, label %block_.L_41a84a, label %block_41a845

block_41a845:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit484
  %266 = add i64 %265, 79
  store i64 %266, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a894

block_.L_41a84a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit484
  store <4 x i32> zeroinitializer, <4 x i32>* %143, align 1
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -52
  %269 = add i64 %265, 8
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %60, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %64, align 1
  store float 0.000000e+00, float* %66, align 1
  %272 = add i64 %267, -60
  %273 = add i64 %265, 13
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %130, align 1
  store float 0.000000e+00, float* %132, align 1
  store float 0.000000e+00, float* %134, align 1
  store float 0.000000e+00, float* %136, align 1
  %276 = add i64 %267, -64
  %277 = add i64 %265, 18
  store i64 %277, i64* %3, align 8
  %278 = load <2 x float>, <2 x float>* %137, align 1
  %279 = load <2 x i32>, <2 x i32>* %138, align 1
  %280 = inttoptr i64 %276 to float*
  %281 = load float, float* %280, align 4
  %282 = extractelement <2 x float> %278, i32 0
  %283 = fdiv float %282, %281
  store float %283, float* %129, align 1
  %284 = bitcast <2 x float> %278 to <2 x i32>
  %285 = extractelement <2 x i32> %284, i32 1
  store i32 %285, i32* %139, align 1
  %286 = extractelement <2 x i32> %279, i32 0
  store i32 %286, i32* %140, align 1
  %287 = extractelement <2 x i32> %279, i32 1
  store i32 %287, i32* %141, align 1
  %288 = load <2 x float>, <2 x float>* %100, align 1
  %289 = load <2 x i32>, <2 x i32>* %142, align 1
  %290 = load <2 x float>, <2 x float>* %137, align 1
  %291 = extractelement <2 x float> %288, i32 0
  %292 = extractelement <2 x float> %290, i32 0
  %293 = fsub float %291, %292
  store float %293, float* %59, align 1
  %294 = bitcast <2 x float> %288 to <2 x i32>
  %295 = extractelement <2 x i32> %294, i32 1
  store i32 %295, i32* %118, align 1
  %296 = extractelement <2 x i32> %289, i32 0
  store i32 %296, i32* %119, align 1
  %297 = extractelement <2 x i32> %289, i32 1
  store i32 %297, i32* %120, align 1
  %298 = add i64 %265, 27
  store i64 %298, i64* %3, align 8
  %299 = load <2 x float>, <2 x float>* %100, align 1
  %300 = extractelement <2 x float> %299, i32 0
  %301 = inttoptr i64 %268 to float*
  store float %300, float* %301, align 4
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -52
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 5
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to float*
  %307 = load float, float* %306, align 4
  %308 = fpext float %307 to double
  store double %308, double* %126, align 1
  %309 = add i64 %304, 9
  store i64 %309, i64* %3, align 8
  %310 = load double, double* %117, align 1
  %311 = fcmp uno double %310, %308
  br i1 %311, label %312, label %322

; <label>:312:                                    ; preds = %block_.L_41a84a
  %313 = fadd double %308, %310
  %314 = bitcast double %313 to i64
  %315 = and i64 %314, 9221120237041090560
  %316 = icmp eq i64 %315, 9218868437227405312
  %317 = and i64 %314, 2251799813685247
  %318 = icmp ne i64 %317, 0
  %319 = and i1 %316, %318
  br i1 %319, label %320, label %328

; <label>:320:                                    ; preds = %312
  %321 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %309, %struct.Memory* %260)
  %.pre85 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit454

; <label>:322:                                    ; preds = %block_.L_41a84a
  %323 = fcmp ogt double %310, %308
  br i1 %323, label %328, label %324

; <label>:324:                                    ; preds = %322
  %325 = fcmp olt double %310, %308
  br i1 %325, label %328, label %326

; <label>:326:                                    ; preds = %324
  %327 = fcmp oeq double %310, %308
  br i1 %327, label %328, label %332

; <label>:328:                                    ; preds = %326, %324, %322, %312
  %329 = phi i8 [ 0, %322 ], [ 0, %324 ], [ 1, %326 ], [ 1, %312 ]
  %330 = phi i8 [ 0, %322 ], [ 0, %324 ], [ 0, %326 ], [ 1, %312 ]
  %331 = phi i8 [ 0, %322 ], [ 1, %324 ], [ 0, %326 ], [ 1, %312 ]
  store i8 %329, i8* %29, align 1
  store i8 %330, i8* %21, align 1
  store i8 %331, i8* %14, align 1
  br label %332

; <label>:332:                                    ; preds = %328, %326
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit454

routine_ucomisd__xmm1___xmm0.exit454:             ; preds = %332, %320
  %333 = phi i64 [ %.pre85, %320 ], [ %309, %332 ]
  %334 = phi %struct.Memory* [ %321, %320 ], [ %260, %332 ]
  %335 = load i8, i8* %14, align 1
  %336 = icmp ne i8 %335, 0
  %.v133 = select i1 %336, i64 19, i64 6
  %337 = add i64 %333, %.v133
  store i64 %337, i64* %3, align 8
  %cmpBr_41a86e = icmp eq i8 %335, 1
  br i1 %cmpBr_41a86e, label %block_.L_41a881, label %block_41a874

block_41a874:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit454
  %338 = add i64 %337, ptrtoint (%G_0x39ed8__rip__type* @G_0x39ed8__rip_ to i64)
  %339 = add i64 %337, 8
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -52
  %344 = add i64 %337, 13
  store i64 %344, i64* %3, align 8
  %345 = load <2 x float>, <2 x float>* %108, align 1
  %346 = extractelement <2 x float> %345, i32 0
  %347 = inttoptr i64 %343 to float*
  store float %346, float* %347, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_41a881

block_.L_41a881:                                  ; preds = %block_41a874, %routine_ucomisd__xmm1___xmm0.exit454
  %348 = phi i64 [ %.pre86, %block_41a874 ], [ %337, %routine_ucomisd__xmm1___xmm0.exit454 ]
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -96
  %351 = add i64 %348, 8
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, 1
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX.i442, align 8
  %356 = icmp eq i32 %353, -1
  %357 = icmp eq i32 %354, 0
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %354, %353
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %26, align 1
  %369 = zext i1 %357 to i8
  store i8 %369, i8* %29, align 1
  %370 = lshr i32 %354, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %32, align 1
  %372 = lshr i32 %353, 31
  %373 = xor i32 %370, %372
  %374 = add nuw nsw i32 %373, %370
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1
  %377 = add i64 %348, 14
  store i64 %377, i64* %3, align 8
  store i32 %354, i32* %352, align 4
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, -144
  store i64 %379, i64* %3, align 8
  br label %block_.L_41a7ff

block_.L_41a894.loopexit:                         ; preds = %block_.L_41a7ff
  br label %block_.L_41a894

block_.L_41a894:                                  ; preds = %block_.L_41a894.loopexit, %block_41a845
  %380 = phi i64 [ %266, %block_41a845 ], [ %173, %block_.L_41a894.loopexit ]
  %381 = phi i64 [ %.pre63, %block_41a845 ], [ %145, %block_.L_41a894.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %260, %block_41a845 ], [ %MEMORY.0, %block_.L_41a894.loopexit ]
  %382 = add i64 %381, -96
  %383 = add i64 %380, 4
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, -100
  %387 = icmp ult i32 %385, 100
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %14, align 1
  %389 = and i32 %386, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %21, align 1
  %394 = xor i32 %386, %385
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %26, align 1
  %398 = icmp eq i32 %386, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1
  %400 = lshr i32 %386, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %32, align 1
  %402 = lshr i32 %385, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %38, align 1
  %.v93 = select i1 %398, i64 10, i64 527
  %407 = add i64 %380, %.v93
  store i64 %407, i64* %3, align 8
  br i1 %398, label %block_41a89e, label %block_.L_41a894.block_.L_41aaa3_crit_edge

block_.L_41a894.block_.L_41aaa3_crit_edge:        ; preds = %block_.L_41a894
  %.pre90 = bitcast i64* %49 to double*
  br label %block_.L_41aaa3

block_41a89e:                                     ; preds = %block_.L_41a894
  %408 = add i64 %381, -60
  store i64 %408, i64* %RCX.i367, align 8
  %409 = add i64 %381, -64
  store i64 %409, i64* %R8.i395, align 8
  %410 = add i64 %407, add (i64 ptrtoint (%G_0x39e9e__rip__type* @G_0x39e9e__rip_ to i64), i64 8)
  %411 = add i64 %407, 16
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %414 = add i64 %381, -100
  %415 = add i64 %407, 21
  store i64 %415, i64* %3, align 8
  %416 = load <2 x float>, <2 x float>* %108, align 1
  %417 = extractelement <2 x float> %416, i32 0
  %418 = inttoptr i64 %414 to float*
  store float %417, float* %418, align 4
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -104
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, 5
  store i64 %422, i64* %3, align 8
  %423 = load <2 x float>, <2 x float>* %108, align 1
  %424 = extractelement <2 x float> %423, i32 0
  %425 = inttoptr i64 %420 to float*
  store float %424, float* %425, align 4
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -52
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 5
  store i64 %429, i64* %3, align 8
  %430 = load <2 x float>, <2 x float>* %108, align 1
  %431 = extractelement <2 x float> %430, i32 0
  %432 = inttoptr i64 %427 to float*
  store float %431, float* %432, align 4
  %433 = load i64, i64* %RBP.i, align 8
  %434 = add i64 %433, -16
  %435 = load i64, i64* %3, align 8
  %436 = add i64 %435, 4
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %434 to i64*
  %438 = load i64, i64* %437, align 8
  store i64 %438, i64* %RDI.i267, align 8
  %439 = add i64 %433, -24
  %440 = add i64 %435, 8
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RSI.i285, align 8
  %443 = add i64 %433, -28
  %444 = add i64 %435, 11
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RDX.i504, align 8
  %448 = add i64 %433, -52
  %449 = add i64 %435, 16
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %452 = add i64 %435, 771
  %453 = add i64 %435, 21
  %454 = load i64, i64* %6, align 8
  %455 = add i64 %454, -8
  %456 = inttoptr i64 %455 to i64*
  store i64 %453, i64* %456, align 8
  store i64 %455, i64* %6, align 8
  store i64 %452, i64* %3, align 8
  %call2_41a8cd = tail call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* nonnull %0, i64 %452, %struct.Memory* %MEMORY.2)
  %457 = load i64, i64* %3, align 8
  %458 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %458, align 1
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -60
  %461 = add i64 %457, 8
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to float*
  %463 = load float, float* %462, align 4
  %464 = fpext float %463 to double
  store double %464, double* %126, align 1
  %465 = add i64 %457, 12
  store i64 %465, i64* %3, align 8
  %466 = load double, double* %117, align 1
  %467 = fcmp uno double %466, %464
  br i1 %467, label %468, label %478

; <label>:468:                                    ; preds = %block_41a89e
  %469 = fadd double %464, %466
  %470 = bitcast double %469 to i64
  %471 = and i64 %470, 9221120237041090560
  %472 = icmp eq i64 %471, 9218868437227405312
  %473 = and i64 %470, 2251799813685247
  %474 = icmp ne i64 %473, 0
  %475 = and i1 %472, %474
  br i1 %475, label %476, label %484

; <label>:476:                                    ; preds = %468
  %477 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %465, %struct.Memory* %call2_41a8cd)
  %.pre64 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit392

; <label>:478:                                    ; preds = %block_41a89e
  %479 = fcmp ogt double %466, %464
  br i1 %479, label %484, label %480

; <label>:480:                                    ; preds = %478
  %481 = fcmp olt double %466, %464
  br i1 %481, label %484, label %482

; <label>:482:                                    ; preds = %480
  %483 = fcmp oeq double %466, %464
  br i1 %483, label %484, label %488

; <label>:484:                                    ; preds = %482, %480, %478, %468
  %485 = phi i8 [ 0, %478 ], [ 0, %480 ], [ 1, %482 ], [ 1, %468 ]
  %486 = phi i8 [ 0, %478 ], [ 0, %480 ], [ 0, %482 ], [ 1, %468 ]
  %487 = phi i8 [ 0, %478 ], [ 1, %480 ], [ 0, %482 ], [ 1, %468 ]
  store i8 %485, i8* %29, align 1
  store i8 %486, i8* %21, align 1
  store i8 %487, i8* %14, align 1
  br label %488

; <label>:488:                                    ; preds = %484, %482
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit392

routine_ucomisd__xmm1___xmm0.exit392:             ; preds = %488, %476
  %489 = phi i64 [ %.pre64, %476 ], [ %465, %488 ]
  %490 = phi %struct.Memory* [ %477, %476 ], [ %call2_41a8cd, %488 ]
  %491 = load i8, i8* %14, align 1
  %492 = load i8, i8* %29, align 1
  %493 = or i8 %492, %491
  %494 = icmp ne i8 %493, 0
  %.v128 = select i1 %494, i64 119, i64 6
  %495 = add i64 %489, %.v128
  %496 = add i64 %495, 5
  store i64 %496, i64* %3, align 8
  br i1 %494, label %block_.L_41a95a.preheader, label %block_.L_41a8e9.preheader

block_.L_41a8e9.preheader:                        ; preds = %routine_ucomisd__xmm1___xmm0.exit392
  %497 = bitcast i64* %63 to double*
  %498 = bitcast %union.VectorReg* %127 to double*
  %499 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_41a8e9

block_.L_41a95a.preheader:                        ; preds = %routine_ucomisd__xmm1___xmm0.exit392
  %500 = bitcast i64* %49 to double*
  %501 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_41a95a

block_.L_41a8e9:                                  ; preds = %block_.L_41a8e9.preheader, %routine_ucomisd__xmm1___xmm0.exit
  %502 = phi i64 [ %621, %routine_ucomisd__xmm1___xmm0.exit ], [ %496, %block_.L_41a8e9.preheader ]
  %MEMORY.3 = phi %struct.Memory* [ %620, %routine_ucomisd__xmm1___xmm0.exit ], [ %490, %block_.L_41a8e9.preheader ]
  store <4 x i32> zeroinitializer, <4 x i32>* %499, align 1
  %503 = add i64 %502, add (i64 ptrtoint (%G_0x39f7c__rip__type* @G_0x39f7c__rip_ to i64), i64 3)
  %504 = add i64 %502, 11
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %122, align 1
  store double 0.000000e+00, double* %497, align 1
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -100
  %509 = add i64 %502, 16
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to float*
  %511 = load float, float* %510, align 4
  %512 = fpext float %511 to double
  %513 = bitcast i64 %506 to double
  %514 = fsub double %512, %513
  store double %514, double* %498, align 1
  %.cast38 = bitcast i64 %506 to <2 x i32>
  %515 = fptrunc double %514 to float
  store float %515, float* %59, align 1
  %516 = extractelement <2 x i32> %.cast38, i32 1
  store i32 %516, i32* %118, align 1
  store i32 0, i32* %119, align 1
  store i32 0, i32* %120, align 1
  %517 = add i64 %502, 29
  store i64 %517, i64* %3, align 8
  %518 = load <2 x float>, <2 x float>* %100, align 1
  %519 = extractelement <2 x float> %518, i32 0
  store float %519, float* %510, align 4
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -100
  %522 = load i64, i64* %3, align 8
  %523 = add i64 %522, 5
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %521 to float*
  %525 = load float, float* %524, align 4
  %526 = fpext float %525 to double
  store double %526, double* %126, align 1
  %527 = add i64 %522, 9
  store i64 %527, i64* %3, align 8
  %528 = load double, double* %117, align 1
  %529 = fcmp uno double %528, %526
  br i1 %529, label %530, label %540

; <label>:530:                                    ; preds = %block_.L_41a8e9
  %531 = fadd double %526, %528
  %532 = bitcast double %531 to i64
  %533 = and i64 %532, 9221120237041090560
  %534 = icmp eq i64 %533, 9218868437227405312
  %535 = and i64 %532, 2251799813685247
  %536 = icmp ne i64 %535, 0
  %537 = and i1 %534, %536
  br i1 %537, label %538, label %546

; <label>:538:                                    ; preds = %530
  %539 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %527, %struct.Memory* %MEMORY.3)
  %.pre65 = load i64, i64* %3, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit365

; <label>:540:                                    ; preds = %block_.L_41a8e9
  %541 = fcmp ogt double %528, %526
  br i1 %541, label %546, label %542

; <label>:542:                                    ; preds = %540
  %543 = fcmp olt double %528, %526
  br i1 %543, label %546, label %544

; <label>:544:                                    ; preds = %542
  %545 = fcmp oeq double %528, %526
  br i1 %545, label %546, label %550

; <label>:546:                                    ; preds = %544, %542, %540, %530
  %547 = phi i8 [ 0, %540 ], [ 0, %542 ], [ 1, %544 ], [ 1, %530 ]
  %548 = phi i8 [ 0, %540 ], [ 0, %542 ], [ 0, %544 ], [ 1, %530 ]
  %549 = phi i8 [ 0, %540 ], [ 1, %542 ], [ 0, %544 ], [ 1, %530 ]
  store i8 %547, i8* %29, align 1
  store i8 %548, i8* %21, align 1
  store i8 %549, i8* %14, align 1
  br label %550

; <label>:550:                                    ; preds = %546, %544
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit365

routine_ucomisd__xmm1___xmm0.exit365:             ; preds = %550, %538
  %551 = phi i64 [ %.pre66, %538 ], [ %520, %550 ]
  %552 = phi i64 [ %.pre65, %538 ], [ %527, %550 ]
  %553 = phi %struct.Memory* [ %539, %538 ], [ %MEMORY.3, %550 ]
  %554 = load i8, i8* %14, align 1
  %555 = load i8, i8* %29, align 1
  %556 = or i8 %555, %554
  %557 = icmp ne i8 %556, 0
  %.v129 = select i1 %557, i64 18, i64 6
  %558 = add i64 %552, %.v129
  store i64 %558, i64* %3, align 8
  br i1 %557, label %block_.L_41a921, label %block_41a915

block_41a915:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit365
  %559 = add i64 %551, -4
  %560 = add i64 %558, 7
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  store i32 0, i32* %561, align 4
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 654
  store i64 %563, i64* %3, align 8
  br label %block_.L_41abaa

block_.L_41a921:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit365
  %564 = add i64 %551, -60
  store i64 %564, i64* %RCX.i367, align 8
  %565 = add i64 %551, -64
  store i64 %565, i64* %R8.i395, align 8
  %566 = add i64 %551, -16
  %567 = add i64 %558, 12
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RDI.i267, align 8
  %570 = add i64 %551, -24
  %571 = add i64 %558, 16
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RSI.i285, align 8
  %574 = add i64 %551, -28
  %575 = add i64 %558, 19
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RDX.i504, align 8
  %579 = add i64 %551, -100
  %580 = add i64 %558, 24
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  store i32 %582, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %583 = add i64 %558, 671
  %584 = add i64 %558, 29
  %585 = load i64, i64* %6, align 8
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %584, i64* %587, align 8
  store i64 %586, i64* %6, align 8
  store i64 %583, i64* %3, align 8
  %call2_41a939 = tail call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* nonnull %0, i64 %583, %struct.Memory* %553)
  %588 = load i64, i64* %3, align 8
  store i32 0, i32* %46, align 1
  store i32 0, i32* %123, align 1
  store i32 0, i32* %124, align 1
  store i32 0, i32* %125, align 1
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -60
  %591 = add i64 %588, 8
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to float*
  %593 = load float, float* %592, align 4
  %594 = fpext float %593 to double
  store double %594, double* %126, align 1
  %595 = add i64 %588, 12
  store i64 %595, i64* %3, align 8
  %596 = load double, double* %117, align 1
  %597 = fcmp uno double %596, %594
  br i1 %597, label %598, label %608

; <label>:598:                                    ; preds = %block_.L_41a921
  %599 = fadd double %594, %596
  %600 = bitcast double %599 to i64
  %601 = and i64 %600, 9221120237041090560
  %602 = icmp eq i64 %601, 9218868437227405312
  %603 = and i64 %600, 2251799813685247
  %604 = icmp ne i64 %603, 0
  %605 = and i1 %602, %604
  br i1 %605, label %606, label %614

; <label>:606:                                    ; preds = %598
  %607 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %595, %struct.Memory* %call2_41a939)
  %.pre67 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:608:                                    ; preds = %block_.L_41a921
  %609 = fcmp ogt double %596, %594
  br i1 %609, label %614, label %610

; <label>:610:                                    ; preds = %608
  %611 = fcmp olt double %596, %594
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %610
  %613 = fcmp oeq double %596, %594
  br i1 %613, label %614, label %618

; <label>:614:                                    ; preds = %612, %610, %608, %598
  %615 = phi i8 [ 0, %608 ], [ 0, %610 ], [ 1, %612 ], [ 1, %598 ]
  %616 = phi i8 [ 0, %608 ], [ 0, %610 ], [ 0, %612 ], [ 1, %598 ]
  %617 = phi i8 [ 0, %608 ], [ 1, %610 ], [ 0, %612 ], [ 1, %598 ]
  store i8 %615, i8* %29, align 1
  store i8 %616, i8* %21, align 1
  store i8 %617, i8* %14, align 1
  br label %618

; <label>:618:                                    ; preds = %614, %612
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %618, %606
  %619 = phi i64 [ %.pre67, %606 ], [ %595, %618 ]
  %620 = phi %struct.Memory* [ %607, %606 ], [ %call2_41a939, %618 ]
  %621 = add i64 %619, -97
  %622 = add i64 %619, 6
  %623 = load i8, i8* %14, align 1
  %624 = load i8, i8* %29, align 1
  %625 = or i8 %624, %623
  %626 = icmp eq i8 %625, 0
  %627 = select i1 %626, i64 %621, i64 %622
  store i64 %627, i64* %3, align 8
  br i1 %626, label %block_.L_41a8e9, label %block_41a950

block_41a950:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %628 = add i64 %627, 128
  %.pre87 = bitcast i64* %49 to double*
  br label %block_.L_41a9d0

block_.L_41a95a:                                  ; preds = %block_.L_41a95a.preheader, %routine_ucomisd__xmm0___xmm1.exit265
  %629 = phi i64 [ %759, %routine_ucomisd__xmm0___xmm1.exit265 ], [ %496, %block_.L_41a95a.preheader ]
  %MEMORY.4 = phi %struct.Memory* [ %756, %routine_ucomisd__xmm0___xmm1.exit265 ], [ %490, %block_.L_41a95a.preheader ]
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -60
  store i64 %631, i64* %RCX.i367, align 8
  %632 = add i64 %630, -64
  store i64 %632, i64* %R8.i395, align 8
  %633 = add i64 %629, add (i64 ptrtoint (%G_0x39f06__rip__type* @G_0x39f06__rip_ to i64), i64 8)
  %634 = add i64 %629, 16
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %121, align 1
  store double 0.000000e+00, double* %500, align 1
  %637 = add i64 %630, -104
  %638 = add i64 %629, 21
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to float*
  %640 = load float, float* %639, align 4
  %641 = fpext float %640 to double
  %642 = bitcast i64 %636 to double
  %643 = fadd double %641, %642
  store double %643, double* %126, align 1
  %.cast40 = bitcast i64 %636 to <2 x i32>
  %644 = fptrunc double %643 to float
  store float %644, float* %45, align 1
  %645 = extractelement <2 x i32> %.cast40, i32 1
  store i32 %645, i32* %123, align 1
  store i32 0, i32* %124, align 1
  store i32 0, i32* %125, align 1
  %646 = add i64 %629, 34
  store i64 %646, i64* %3, align 8
  %647 = load <2 x float>, <2 x float>* %108, align 1
  %648 = extractelement <2 x float> %647, i32 0
  store float %648, float* %639, align 4
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -16
  %651 = load i64, i64* %3, align 8
  %652 = add i64 %651, 4
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %650 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RDI.i267, align 8
  %655 = add i64 %649, -24
  %656 = add i64 %651, 8
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %RSI.i285, align 8
  %659 = add i64 %649, -28
  %660 = add i64 %651, 11
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RDX.i504, align 8
  %664 = add i64 %649, -104
  %665 = add i64 %651, 16
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  store i32 %667, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %668 = add i64 %651, 580
  %669 = add i64 %651, 21
  %670 = load i64, i64* %6, align 8
  %671 = add i64 %670, -8
  %672 = inttoptr i64 %671 to i64*
  store i64 %669, i64* %672, align 8
  store i64 %671, i64* %6, align 8
  store i64 %668, i64* %3, align 8
  %call2_41a98c = tail call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* nonnull %0, i64 %668, %struct.Memory* %MEMORY.4)
  %673 = load i64, i64* %3, align 8
  %674 = add i64 %673, ptrtoint (%G_0x39ecf__rip__type* @G_0x39ecf__rip_ to i64)
  %675 = add i64 %673, 8
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %121, align 1
  store double 0.000000e+00, double* %500, align 1
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -104
  %680 = add i64 %673, 13
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to float*
  %682 = load float, float* %681, align 4
  %683 = fpext float %682 to double
  store double %683, double* %126, align 1
  %684 = add i64 %673, 17
  store i64 %684, i64* %3, align 8
  %685 = bitcast i64 %677 to double
  %686 = fcmp uno double %683, %685
  br i1 %686, label %687, label %697

; <label>:687:                                    ; preds = %block_.L_41a95a
  %688 = fadd double %683, %685
  %689 = bitcast double %688 to i64
  %690 = and i64 %689, 9221120237041090560
  %691 = icmp eq i64 %690, 9218868437227405312
  %692 = and i64 %689, 2251799813685247
  %693 = icmp ne i64 %692, 0
  %694 = and i1 %691, %693
  br i1 %694, label %695, label %703

; <label>:695:                                    ; preds = %687
  %696 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %684, %struct.Memory* %MEMORY.4)
  %.pre68 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit283

; <label>:697:                                    ; preds = %block_.L_41a95a
  %698 = fcmp ogt double %683, %685
  br i1 %698, label %703, label %699

; <label>:699:                                    ; preds = %697
  %700 = fcmp olt double %683, %685
  br i1 %700, label %703, label %701

; <label>:701:                                    ; preds = %699
  %702 = fcmp oeq double %683, %685
  br i1 %702, label %703, label %707

; <label>:703:                                    ; preds = %701, %699, %697, %687
  %704 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 1, %701 ], [ 1, %687 ]
  %705 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 0, %701 ], [ 1, %687 ]
  %706 = phi i8 [ 0, %697 ], [ 1, %699 ], [ 0, %701 ], [ 1, %687 ]
  store i8 %704, i8* %29, align 1
  store i8 %705, i8* %21, align 1
  store i8 %706, i8* %14, align 1
  br label %707

; <label>:707:                                    ; preds = %703, %701
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit283

routine_ucomisd__xmm0___xmm1.exit283:             ; preds = %707, %695
  %708 = phi i64 [ %.pre68, %695 ], [ %684, %707 ]
  %709 = phi %struct.Memory* [ %696, %695 ], [ %MEMORY.4, %707 ]
  %710 = load i8, i8* %14, align 1
  %711 = load i8, i8* %29, align 1
  %712 = or i8 %711, %710
  %713 = icmp ne i8 %712, 0
  %.v131 = select i1 %713, i64 18, i64 6
  %714 = add i64 %708, %.v131
  store i64 %714, i64* %3, align 8
  br i1 %713, label %block_.L_41a9b4, label %block_41a9a8

block_41a9a8:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit283
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -4
  %717 = add i64 %714, 7
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  store i32 0, i32* %718, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, 507
  store i64 %720, i64* %3, align 8
  br label %block_.L_41abaa

block_.L_41a9b4:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit283
  store <4 x i32> zeroinitializer, <4 x i32>* %501, align 1
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -60
  %723 = add i64 %714, 13
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to float*
  %725 = load float, float* %724, align 4
  %726 = fpext float %725 to double
  store double %726, double* %126, align 1
  %727 = add i64 %714, 17
  store i64 %727, i64* %3, align 8
  %728 = load double, double* %117, align 1
  %729 = fcmp uno double %726, %728
  br i1 %729, label %730, label %740

; <label>:730:                                    ; preds = %block_.L_41a9b4
  %731 = fadd double %726, %728
  %732 = bitcast double %731 to i64
  %733 = and i64 %732, 9221120237041090560
  %734 = icmp eq i64 %733, 9218868437227405312
  %735 = and i64 %732, 2251799813685247
  %736 = icmp ne i64 %735, 0
  %737 = and i1 %734, %736
  br i1 %737, label %738, label %746

; <label>:738:                                    ; preds = %730
  %739 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %727, %struct.Memory* %709)
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i8, i8* %14, align 1
  %.pre71 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit265

; <label>:740:                                    ; preds = %block_.L_41a9b4
  %741 = fcmp ogt double %726, %728
  br i1 %741, label %746, label %742

; <label>:742:                                    ; preds = %740
  %743 = fcmp olt double %726, %728
  br i1 %743, label %746, label %744

; <label>:744:                                    ; preds = %742
  %745 = fcmp oeq double %726, %728
  br i1 %745, label %746, label %750

; <label>:746:                                    ; preds = %744, %742, %740, %730
  %747 = phi i8 [ 0, %740 ], [ 0, %742 ], [ 1, %744 ], [ 1, %730 ]
  %748 = phi i8 [ 0, %740 ], [ 0, %742 ], [ 0, %744 ], [ 1, %730 ]
  %749 = phi i8 [ 0, %740 ], [ 1, %742 ], [ 0, %744 ], [ 1, %730 ]
  store i8 %747, i8* %29, align 1
  store i8 %748, i8* %21, align 1
  store i8 %749, i8* %14, align 1
  br label %750

; <label>:750:                                    ; preds = %746, %744
  %751 = phi i8 [ %747, %746 ], [ %711, %744 ]
  %752 = phi i8 [ %749, %746 ], [ %710, %744 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit265

routine_ucomisd__xmm0___xmm1.exit265:             ; preds = %750, %738
  %753 = phi i8 [ %.pre71, %738 ], [ %751, %750 ]
  %754 = phi i8 [ %.pre70, %738 ], [ %752, %750 ]
  %755 = phi i64 [ %.pre69, %738 ], [ %727, %750 ]
  %756 = phi %struct.Memory* [ %739, %738 ], [ %709, %750 ]
  %757 = or i8 %753, %754
  %758 = icmp eq i8 %757, 0
  %.v98 = select i1 %758, i64 -107, i64 6
  %759 = add i64 %755, %.v98
  store i64 %759, i64* %3, align 8
  br i1 %758, label %block_.L_41a95a, label %block_41a9cb

block_41a9cb:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit265
  %760 = add i64 %759, 5
  store i64 %760, i64* %3, align 8
  br label %block_.L_41a9d0

block_.L_41a9d0:                                  ; preds = %block_41a9cb, %block_41a950
  %.pre-phi = phi double* [ %500, %block_41a9cb ], [ %.pre87, %block_41a950 ]
  %storemerge = phi i64 [ %760, %block_41a9cb ], [ %628, %block_41a950 ]
  %MEMORY.5 = phi %struct.Memory* [ %756, %block_41a9cb ], [ %620, %block_41a950 ]
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -96
  %763 = add i64 %storemerge, 7
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  store i32 0, i32* %764, align 4
  %.pre72 = load i64, i64* %3, align 8
  %765 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  br label %block_.L_41a9d7

block_.L_41a9d7:                                  ; preds = %block_.L_41aa70, %block_.L_41a9d0
  %766 = phi i64 [ %.pre72, %block_.L_41a9d0 ], [ %1010, %block_.L_41aa70 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_41a9d0 ], [ %959, %block_.L_41aa70 ]
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -96
  %769 = add i64 %766, 4
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = add i32 %771, -100
  %773 = icmp ult i32 %771, 100
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %14, align 1
  %775 = and i32 %772, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %21, align 1
  %780 = xor i32 %772, %771
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %26, align 1
  %784 = icmp eq i32 %772, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %29, align 1
  %786 = lshr i32 %772, 31
  %787 = trunc i32 %786 to i8
  store i8 %787, i8* %32, align 1
  %788 = lshr i32 %771, 31
  %789 = xor i32 %786, %788
  %790 = add nuw nsw i32 %789, %788
  %791 = icmp eq i32 %790, 2
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %38, align 1
  %793 = icmp ne i8 %787, 0
  %794 = xor i1 %793, %791
  %.v96 = select i1 %794, i64 10, i64 172
  %795 = add i64 %766, %.v96
  store i64 %795, i64* %3, align 8
  br i1 %794, label %block_41a9e1, label %block_.L_41aa83.loopexit

block_41a9e1:                                     ; preds = %block_.L_41a9d7
  %796 = add i64 %767, -60
  store i64 %796, i64* %RCX.i367, align 8
  %797 = add i64 %767, -64
  store i64 %797, i64* %R8.i395, align 8
  %798 = add i64 %795, add (i64 ptrtoint (%G_0x39df7__rip__type* @G_0x39df7__rip_ to i64), i64 8)
  %799 = add i64 %795, 16
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
  %802 = add i64 %767, -100
  %803 = add i64 %795, 21
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  store i32 %805, i32* %60, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %64, align 1
  store float 0.000000e+00, float* %66, align 1
  %806 = add i64 %767, -104
  %807 = add i64 %795, 26
  store i64 %807, i64* %3, align 8
  %808 = load <2 x float>, <2 x float>* %100, align 1
  %809 = load <2 x i32>, <2 x i32>* %142, align 1
  %810 = inttoptr i64 %806 to float*
  %811 = load float, float* %810, align 4
  %812 = extractelement <2 x float> %808, i32 0
  %813 = fadd float %812, %811
  store float %813, float* %59, align 1
  %814 = bitcast <2 x float> %808 to <2 x i32>
  %815 = extractelement <2 x i32> %814, i32 1
  store i32 %815, i32* %118, align 1
  %816 = extractelement <2 x i32> %809, i32 0
  store i32 %816, i32* %119, align 1
  %817 = extractelement <2 x i32> %809, i32 1
  store i32 %817, i32* %120, align 1
  %818 = load <2 x float>, <2 x float>* %100, align 1
  %819 = extractelement <2 x float> %818, i32 0
  %820 = fpext float %819 to double
  %821 = bitcast i64 %801 to double
  %822 = fdiv double %820, %821
  store double %822, double* %126, align 1
  %.cast39 = bitcast i64 %801 to <2 x i32>
  %823 = fptrunc double %822 to float
  store float %823, float* %45, align 1
  %824 = extractelement <2 x i32> %.cast39, i32 1
  store i32 %824, i32* %123, align 1
  store i32 0, i32* %124, align 1
  store i32 0, i32* %125, align 1
  %825 = add i64 %767, -108
  %826 = add i64 %795, 43
  store i64 %826, i64* %3, align 8
  %827 = load <2 x float>, <2 x float>* %108, align 1
  %828 = extractelement <2 x float> %827, i32 0
  %829 = inttoptr i64 %825 to float*
  store float %828, float* %829, align 4
  %830 = load i64, i64* %RBP.i, align 8
  %831 = add i64 %830, -16
  %832 = load i64, i64* %3, align 8
  %833 = add i64 %832, 4
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %831 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %RDI.i267, align 8
  %836 = add i64 %830, -24
  %837 = add i64 %832, 8
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i64*
  %839 = load i64, i64* %838, align 8
  store i64 %839, i64* %RSI.i285, align 8
  %840 = add i64 %830, -28
  %841 = add i64 %832, 11
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDX.i504, align 8
  %845 = add i64 %830, -108
  %846 = add i64 %832, 16
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  store i32 %848, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %849 = add i64 %832, 436
  %850 = add i64 %832, 21
  %851 = load i64, i64* %6, align 8
  %852 = add i64 %851, -8
  %853 = inttoptr i64 %852 to i64*
  store i64 %850, i64* %853, align 8
  store i64 %852, i64* %6, align 8
  store i64 %849, i64* %3, align 8
  %call2_41aa1c = tail call %struct.Memory* @sub_41abc0.Lawless416(%struct.State* nonnull %0, i64 %849, %struct.Memory* %MEMORY.6)
  %854 = load i64, i64* %RBP.i, align 8
  %855 = add i64 %854, -60
  %856 = load i64, i64* %3, align 8
  %857 = add i64 %856, 5
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %855 to float*
  %859 = load float, float* %858, align 4
  %860 = fpext float %859 to double
  store double %860, double* %117, align 1
  %861 = add i64 %856, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 5)
  %862 = add i64 %856, 12
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i64 %856, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 9)
  %866 = inttoptr i64 %865 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = add i64 %856, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 13)
  %869 = inttoptr i64 %868 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i64 %856, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 17)
  %872 = inttoptr i64 %871 to i32*
  %873 = load i32, i32* %872, align 4
  store i32 %864, i32* %60, align 1
  store i32 %867, i32* %118, align 1
  store i32 %870, i32* %119, align 1
  store i32 %873, i32* %120, align 1
  %874 = bitcast double %860 to i64
  %875 = load i64, i64* %49, align 1
  %876 = load i64, i64* %122, align 1
  %877 = load i64, i64* %63, align 1
  %878 = and i64 %876, %874
  %879 = and i64 %877, %875
  %880 = trunc i64 %878 to i32
  %881 = lshr i64 %878, 32
  %882 = trunc i64 %881 to i32
  store i32 %880, i32* %46, align 1
  store i32 %882, i32* %123, align 1
  %883 = trunc i64 %879 to i32
  store i32 %883, i32* %124, align 1
  %884 = lshr i64 %879, 32
  %885 = trunc i64 %884 to i32
  store i32 %885, i32* %125, align 1
  %886 = add i64 %854, -92
  %887 = add i64 %856, 21
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to float*
  %889 = load float, float* %888, align 4
  %890 = fpext float %889 to double
  store double %890, double* %126, align 1
  %891 = add i64 %856, 25
  store i64 %891, i64* %3, align 8
  %892 = load double, double* %117, align 1
  %893 = fcmp uno double %890, %892
  br i1 %893, label %894, label %904

; <label>:894:                                    ; preds = %block_41a9e1
  %895 = fadd double %890, %892
  %896 = bitcast double %895 to i64
  %897 = and i64 %896, 9221120237041090560
  %898 = icmp eq i64 %897, 9218868437227405312
  %899 = and i64 %896, 2251799813685247
  %900 = icmp ne i64 %899, 0
  %901 = and i1 %898, %900
  br i1 %901, label %902, label %910

; <label>:902:                                    ; preds = %894
  %903 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %891, %struct.Memory* %MEMORY.6)
  %.pre73 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit206

; <label>:904:                                    ; preds = %block_41a9e1
  %905 = fcmp ogt double %890, %892
  br i1 %905, label %910, label %906

; <label>:906:                                    ; preds = %904
  %907 = fcmp olt double %890, %892
  br i1 %907, label %910, label %908

; <label>:908:                                    ; preds = %906
  %909 = fcmp oeq double %890, %892
  br i1 %909, label %910, label %914

; <label>:910:                                    ; preds = %908, %906, %904, %894
  %911 = phi i8 [ 0, %904 ], [ 0, %906 ], [ 1, %908 ], [ 1, %894 ]
  %912 = phi i8 [ 0, %904 ], [ 0, %906 ], [ 0, %908 ], [ 1, %894 ]
  %913 = phi i8 [ 0, %904 ], [ 1, %906 ], [ 0, %908 ], [ 1, %894 ]
  store i8 %911, i8* %29, align 1
  store i8 %912, i8* %21, align 1
  store i8 %913, i8* %14, align 1
  br label %914

; <label>:914:                                    ; preds = %910, %908
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit206

routine_ucomisd__xmm0___xmm1.exit206:             ; preds = %914, %902
  %915 = phi i64 [ %.pre73, %902 ], [ %891, %914 ]
  %916 = phi %struct.Memory* [ %903, %902 ], [ %MEMORY.6, %914 ]
  %917 = load i8, i8* %14, align 1
  %918 = load i8, i8* %29, align 1
  %919 = or i8 %918, %917
  %920 = icmp ne i8 %919, 0
  %.v130 = select i1 %920, i64 11, i64 6
  %921 = add i64 %915, %.v130
  store i64 %921, i64* %3, align 8
  br i1 %920, label %block_.L_41aa45, label %block_41aa40

block_41aa40:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit206
  %922 = add i64 %921, 67
  store i64 %922, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41aa83

block_.L_41aa45:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit206
  store <4 x i32> zeroinitializer, <4 x i32>* %765, align 1
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -60
  %925 = add i64 %921, 8
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to float*
  %927 = load float, float* %926, align 4
  %928 = fpext float %927 to double
  store double %928, double* %126, align 1
  %929 = add i64 %921, 12
  store i64 %929, i64* %3, align 8
  %930 = load double, double* %117, align 1
  %931 = fcmp uno double %928, %930
  br i1 %931, label %932, label %942

; <label>:932:                                    ; preds = %block_.L_41aa45
  %933 = fadd double %928, %930
  %934 = bitcast double %933 to i64
  %935 = and i64 %934, 9221120237041090560
  %936 = icmp eq i64 %935, 9218868437227405312
  %937 = and i64 %934, 2251799813685247
  %938 = icmp ne i64 %937, 0
  %939 = and i1 %936, %938
  br i1 %939, label %940, label %948

; <label>:940:                                    ; preds = %932
  %941 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %929, %struct.Memory* %916)
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i8, i8* %14, align 1
  %.pre77 = load i8, i8* %29, align 1
  %.pre78 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:942:                                    ; preds = %block_.L_41aa45
  %943 = fcmp ogt double %928, %930
  br i1 %943, label %948, label %944

; <label>:944:                                    ; preds = %942
  %945 = fcmp olt double %928, %930
  br i1 %945, label %948, label %946

; <label>:946:                                    ; preds = %944
  %947 = fcmp oeq double %928, %930
  br i1 %947, label %948, label %952

; <label>:948:                                    ; preds = %946, %944, %942, %932
  %949 = phi i8 [ 0, %942 ], [ 0, %944 ], [ 1, %946 ], [ 1, %932 ]
  %950 = phi i8 [ 0, %942 ], [ 0, %944 ], [ 0, %946 ], [ 1, %932 ]
  %951 = phi i8 [ 0, %942 ], [ 1, %944 ], [ 0, %946 ], [ 1, %932 ]
  store i8 %949, i8* %29, align 1
  store i8 %950, i8* %21, align 1
  store i8 %951, i8* %14, align 1
  br label %952

; <label>:952:                                    ; preds = %948, %946
  %953 = phi i8 [ %949, %948 ], [ %918, %946 ]
  %954 = phi i8 [ %951, %948 ], [ %917, %946 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %952, %940
  %955 = phi i64 [ %.pre78, %940 ], [ %923, %952 ]
  %956 = phi i8 [ %.pre77, %940 ], [ %953, %952 ]
  %957 = phi i8 [ %.pre76, %940 ], [ %954, %952 ]
  %958 = phi i64 [ %.pre75, %940 ], [ %929, %952 ]
  %959 = phi %struct.Memory* [ %941, %940 ], [ %916, %952 ]
  %960 = or i8 %956, %957
  %961 = icmp ne i8 %960, 0
  %.v = select i1 %961, i64 21, i64 6
  %962 = add i64 %958, %.v
  %963 = add i64 %955, -108
  %964 = add i64 %962, 5
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  store i32 %966, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  br i1 %961, label %block_.L_41aa66, label %block_41aa57

block_41aa57:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %967 = add i64 %955, -100
  %968 = add i64 %962, 10
  store i64 %968, i64* %3, align 8
  %969 = load <2 x float>, <2 x float>* %108, align 1
  %970 = extractelement <2 x float> %969, i32 0
  %971 = inttoptr i64 %967 to float*
  store float %970, float* %971, align 4
  %972 = load i64, i64* %3, align 8
  %973 = add i64 %972, 15
  store i64 %973, i64* %3, align 8
  br label %block_.L_41aa70

block_.L_41aa66:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %974 = add i64 %955, -104
  %975 = add i64 %962, 10
  store i64 %975, i64* %3, align 8
  %976 = load <2 x float>, <2 x float>* %108, align 1
  %977 = extractelement <2 x float> %976, i32 0
  %978 = inttoptr i64 %974 to float*
  store float %977, float* %978, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_41aa70

block_.L_41aa70:                                  ; preds = %block_.L_41aa66, %block_41aa57
  %979 = phi i64 [ %.pre79, %block_.L_41aa66 ], [ %973, %block_41aa57 ]
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -96
  %982 = add i64 %979, 8
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = add i32 %984, 1
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RAX.i442, align 8
  %987 = icmp eq i32 %984, -1
  %988 = icmp eq i32 %985, 0
  %989 = or i1 %987, %988
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %14, align 1
  %991 = and i32 %985, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  %996 = xor i32 %985, %984
  %997 = lshr i32 %996, 4
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %26, align 1
  %1000 = zext i1 %988 to i8
  store i8 %1000, i8* %29, align 1
  %1001 = lshr i32 %985, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %32, align 1
  %1003 = lshr i32 %984, 31
  %1004 = xor i32 %1001, %1003
  %1005 = add nuw nsw i32 %1004, %1001
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %38, align 1
  %1008 = add i64 %979, 14
  store i64 %1008, i64* %3, align 8
  store i32 %985, i32* %983, align 4
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, -167
  store i64 %1010, i64* %3, align 8
  br label %block_.L_41a9d7

block_.L_41aa83.loopexit:                         ; preds = %block_.L_41a9d7
  br label %block_.L_41aa83

block_.L_41aa83:                                  ; preds = %block_.L_41aa83.loopexit, %block_41aa40
  %1011 = phi i64 [ %922, %block_41aa40 ], [ %795, %block_.L_41aa83.loopexit ]
  %1012 = phi i64 [ %.pre74, %block_41aa40 ], [ %767, %block_.L_41aa83.loopexit ]
  %MEMORY.8 = phi %struct.Memory* [ %916, %block_41aa40 ], [ %MEMORY.6, %block_.L_41aa83.loopexit ]
  %1013 = add i64 %1012, -96
  %1014 = add i64 %1011, 4
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, -100
  %1018 = icmp ult i32 %1016, 100
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %14, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i32 %1017, %1016
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %26, align 1
  %1029 = icmp eq i32 %1017, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %29, align 1
  %1031 = lshr i32 %1017, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %32, align 1
  %1033 = lshr i32 %1016, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %38, align 1
  %.v97 = select i1 %1029, i64 10, i64 22
  %1038 = add i64 %1011, %.v97
  store i64 %1038, i64* %3, align 8
  br i1 %1029, label %block_41aa8d, label %block_.L_41aa99

block_41aa8d:                                     ; preds = %block_.L_41aa83
  %1039 = add i64 %1012, -4
  %1040 = add i64 %1038, 7
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 0, i32* %1041, align 4
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 278
  store i64 %1043, i64* %3, align 8
  br label %block_.L_41abaa

block_.L_41aa99:                                  ; preds = %block_.L_41aa83
  %1044 = add i64 %1012, -108
  %1045 = add i64 %1038, 5
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  store i32 %1047, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %1048 = add i64 %1012, -52
  %1049 = add i64 %1038, 10
  store i64 %1049, i64* %3, align 8
  %1050 = load <2 x float>, <2 x float>* %108, align 1
  %1051 = extractelement <2 x float> %1050, i32 0
  %1052 = inttoptr i64 %1048 to float*
  store float %1051, float* %1052, align 4
  %.pre80 = load i64, i64* %3, align 8
  %.pre81 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41aaa3

block_.L_41aaa3:                                  ; preds = %block_.L_41a894.block_.L_41aaa3_crit_edge, %block_.L_41aa99
  %.pre-phi91 = phi double* [ %.pre90, %block_.L_41a894.block_.L_41aaa3_crit_edge ], [ %.pre-phi, %block_.L_41aa99 ]
  %1053 = phi i64 [ %381, %block_.L_41a894.block_.L_41aaa3_crit_edge ], [ %.pre81, %block_.L_41aa99 ]
  %1054 = phi i64 [ %407, %block_.L_41a894.block_.L_41aaa3_crit_edge ], [ %.pre80, %block_.L_41aa99 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41a894.block_.L_41aaa3_crit_edge ], [ %MEMORY.8, %block_.L_41aa99 ]
  %1055 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1055, align 1
  %1056 = add i64 %1053, -72
  %1057 = add i64 %1054, 8
  store i64 %1057, i64* %3, align 8
  %1058 = load i64, i64* %121, align 1
  %1059 = inttoptr i64 %1056 to i64*
  store i64 %1058, i64* %1059, align 8
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -88
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %3, align 8
  %1064 = load i64, i64* %121, align 1
  %1065 = inttoptr i64 %1061 to i64*
  store i64 %1064, i64* %1065, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -96
  %1068 = load i64, i64* %3, align 8
  %1069 = add i64 %1068, 7
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1067 to i32*
  store i32 0, i32* %1070, align 4
  %1071 = bitcast %union.VectorReg* %53 to <2 x i32>*
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_41aab7

block_.L_41aab7:                                  ; preds = %block_.L_41aaf2, %block_.L_41aaa3
  %1072 = phi i64 [ %.pre82, %block_.L_41aaa3 ], [ %1280, %block_.L_41aaf2 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_41aaa3 ], [ %1219, %block_.L_41aaf2 ]
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -96
  %1075 = add i64 %1072, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i442, align 8
  %1079 = add i64 %1073, -28
  %1080 = add i64 %1072, 6
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = sub i32 %1077, %1082
  %1084 = icmp ult i32 %1077, %1082
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %14, align 1
  %1086 = and i32 %1083, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %21, align 1
  %1091 = xor i32 %1082, %1077
  %1092 = xor i32 %1091, %1083
  %1093 = lshr i32 %1092, 4
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %26, align 1
  %1096 = icmp eq i32 %1083, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %29, align 1
  %1098 = lshr i32 %1083, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %32, align 1
  %1100 = lshr i32 %1077, 31
  %1101 = lshr i32 %1082, 31
  %1102 = xor i32 %1101, %1100
  %1103 = xor i32 %1098, %1100
  %1104 = add nuw nsw i32 %1103, %1102
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %38, align 1
  %1107 = icmp ne i8 %1099, 0
  %1108 = xor i1 %1107, %1105
  %.v94 = select i1 %1108, i64 12, i64 165
  %1109 = add i64 %1072, %.v94
  store i64 %1109, i64* %3, align 8
  br i1 %1108, label %block_41aac3, label %block_.L_41ab5c

block_41aac3:                                     ; preds = %block_.L_41aab7
  %1110 = add i64 %1073, -24
  %1111 = add i64 %1109, 5
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i8 0, i8* %14, align 1
  %1114 = trunc i64 %1113 to i32
  %1115 = and i32 %1114, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1120 = icmp eq i64 %1113, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %29, align 1
  %1122 = lshr i64 %1113, 63
  %1123 = trunc i64 %1122 to i8
  store i8 %1123, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %1120, i64 11, i64 29
  %1124 = add i64 %1109, %.v95
  store i64 %1124, i64* %3, align 8
  br i1 %1120, label %block_41aace, label %block_.L_41aae0

block_41aace:                                     ; preds = %block_41aac3
  %1125 = add i64 %1124, ptrtoint (%G_0x39d0a__rip__type* @G_0x39d0a__rip_ to i64)
  %1126 = add i64 %1124, 8
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi91, align 1
  %1129 = add i64 %1073, -120
  %1130 = add i64 %1124, 13
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  store i64 %1128, i64* %1131, align 8
  %1132 = load i64, i64* %3, align 8
  %1133 = add i64 %1132, 23
  store i64 %1133, i64* %3, align 8
  br label %block_.L_41aaf2

block_.L_41aae0:                                  ; preds = %block_41aac3
  %1134 = add i64 %1124, 4
  store i64 %1134, i64* %3, align 8
  %1135 = load i64, i64* %1112, align 8
  store i64 %1135, i64* %RAX.i442, align 8
  %1136 = add i64 %1124, 8
  store i64 %1136, i64* %3, align 8
  %1137 = load i32, i32* %1076, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RCX.i367, align 8
  %1139 = shl nsw i64 %1138, 2
  %1140 = add i64 %1139, %1135
  %1141 = add i64 %1124, 13
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = sitofp i32 %1143 to double
  store double %1144, double* %117, align 1
  %1145 = add i64 %1073, -120
  %1146 = add i64 %1124, 18
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to double*
  store double %1144, double* %1147, align 8
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_41aaf2

block_.L_41aaf2:                                  ; preds = %block_.L_41aae0, %block_41aace
  %1148 = phi i64 [ %.pre84, %block_.L_41aae0 ], [ %1133, %block_41aace ]
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -120
  %1151 = add i64 %1148, 5
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi91, align 1
  %1154 = add i64 %1148, add (i64 ptrtoint (%G_0x39c25__rip__type* @G_0x39c25__rip_ to i64), i64 5)
  %1155 = add i64 %1148, 13
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  store i32 %1157, i32* %60, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %64, align 1
  store float 0.000000e+00, float* %66, align 1
  %1158 = add i64 %1149, -80
  %1159 = add i64 %1148, 18
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  store i64 %1153, i64* %1160, align 8
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -80
  %1163 = load i64, i64* %3, align 8
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1162 to i64*
  %1166 = load i64, i64* %1165, align 8
  store i64 %1166, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi91, align 1
  %1167 = add i64 %1161, -52
  %1168 = add i64 %1163, 10
  store i64 %1168, i64* %3, align 8
  %1169 = load <2 x float>, <2 x float>* %100, align 1
  %1170 = load <2 x i32>, <2 x i32>* %142, align 1
  %1171 = inttoptr i64 %1167 to float*
  %1172 = load float, float* %1171, align 4
  %1173 = extractelement <2 x float> %1169, i32 0
  %1174 = fmul float %1173, %1172
  store float %1174, float* %59, align 1
  %1175 = bitcast <2 x float> %1169 to <2 x i32>
  %1176 = extractelement <2 x i32> %1175, i32 1
  store i32 %1176, i32* %118, align 1
  %1177 = extractelement <2 x i32> %1170, i32 0
  store i32 %1177, i32* %119, align 1
  %1178 = extractelement <2 x i32> %1170, i32 1
  store i32 %1178, i32* %120, align 1
  %1179 = add i64 %1161, -16
  %1180 = add i64 %1163, 14
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RAX.i442, align 8
  %1183 = add i64 %1161, -96
  %1184 = add i64 %1163, 18
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = sext i32 %1186 to i64
  store i64 %1187, i64* %RCX.i367, align 8
  %1188 = shl nsw i64 %1187, 2
  %1189 = add i64 %1188, %1182
  %1190 = add i64 %1163, 23
  store i64 %1190, i64* %3, align 8
  %1191 = load <2 x float>, <2 x float>* %100, align 1
  %1192 = load <2 x i32>, <2 x i32>* %142, align 1
  %1193 = inttoptr i64 %1189 to float*
  %1194 = load float, float* %1193, align 4
  %1195 = extractelement <2 x float> %1191, i32 0
  %1196 = fmul float %1195, %1194
  store float %1196, float* %59, align 1
  %1197 = bitcast <2 x float> %1191 to <2 x i32>
  %1198 = extractelement <2 x i32> %1197, i32 1
  store i32 %1198, i32* %118, align 1
  %1199 = extractelement <2 x i32> %1192, i32 0
  store i32 %1199, i32* %119, align 1
  %1200 = extractelement <2 x i32> %1192, i32 1
  store i32 %1200, i32* %120, align 1
  %1201 = load <2 x float>, <2 x float>* %100, align 1
  %1202 = extractelement <2 x float> %1201, i32 0
  %1203 = fpext float %1202 to double
  store double %1203, double* %126, align 1
  %1204 = add i64 %1161, -128
  %1205 = add i64 %1163, 32
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  store i64 %1166, i64* %1206, align 8
  %1207 = load i64, i64* %3, align 8
  %1208 = load <2 x i32>, <2 x i32>* %1071, align 1
  %1209 = load <2 x i32>, <2 x i32>* %142, align 1
  %1210 = extractelement <2 x i32> %1208, i32 0
  store i32 %1210, i32* %46, align 1
  %1211 = extractelement <2 x i32> %1208, i32 1
  store i32 %1211, i32* %123, align 1
  %1212 = extractelement <2 x i32> %1209, i32 0
  store i32 %1212, i32* %124, align 1
  %1213 = extractelement <2 x i32> %1209, i32 1
  store i32 %1213, i32* %125, align 1
  %1214 = add i64 %1207, -104196
  %1215 = add i64 %1207, 8
  %1216 = load i64, i64* %6, align 8
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1215, i64* %1218, align 8
  store i64 %1217, i64* %6, align 8
  store i64 %1214, i64* %3, align 8
  %1219 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %MEMORY.10)
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -128
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to double*
  %1225 = load double, double* %1224, align 8
  %1226 = load double, double* %117, align 1
  %1227 = fmul double %1225, %1226
  store double %1227, double* %126, align 1
  store i64 0, i64* %63, align 1
  %1228 = add i64 %1220, -72
  %1229 = add i64 %1222, 14
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to double*
  %1231 = load double, double* %1230, align 8
  %1232 = fadd double %1227, %1231
  store double %1232, double* %126, align 1
  store i64 0, i64* %63, align 1
  %1233 = add i64 %1222, 19
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1228 to double*
  store double %1232, double* %1234, align 8
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -80
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1236 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi91, align 1
  %1241 = add i64 %1235, -88
  %1242 = add i64 %1237, 10
  store i64 %1242, i64* %3, align 8
  %1243 = bitcast i64 %1240 to double
  %1244 = inttoptr i64 %1241 to double*
  %1245 = load double, double* %1244, align 8
  %1246 = fadd double %1243, %1245
  store double %1246, double* %117, align 1
  store i64 0, i64* %49, align 1
  %1247 = add i64 %1237, 15
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1241 to double*
  store double %1246, double* %1248, align 8
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -96
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, 3
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1250 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = add i32 %1254, 1
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RAX.i442, align 8
  %1257 = icmp eq i32 %1254, -1
  %1258 = icmp eq i32 %1255, 0
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %14, align 1
  %1261 = and i32 %1255, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  %1266 = xor i32 %1255, %1254
  %1267 = lshr i32 %1266, 4
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %26, align 1
  %1270 = zext i1 %1258 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i32 %1255, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %32, align 1
  %1273 = lshr i32 %1254, 31
  %1274 = xor i32 %1271, %1273
  %1275 = add nuw nsw i32 %1274, %1271
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %38, align 1
  %1278 = add i64 %1251, 9
  store i64 %1278, i64* %3, align 8
  store i32 %1255, i32* %1253, align 4
  %1279 = load i64, i64* %3, align 8
  %1280 = add i64 %1279, -160
  store i64 %1280, i64* %3, align 8
  br label %block_.L_41aab7

block_.L_41ab5c:                                  ; preds = %block_.L_41aab7
  %1281 = add i64 %1073, -72
  %1282 = add i64 %1109, 5
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i64*
  %1284 = load i64, i64* %1283, align 8
  store i64 %1284, i64* %121, align 1
  store double 0.000000e+00, double* %.pre-phi91, align 1
  %1285 = add i64 %1073, -88
  %1286 = add i64 %1109, 10
  store i64 %1286, i64* %3, align 8
  %1287 = bitcast i64 %1284 to double
  %1288 = inttoptr i64 %1285 to double*
  %1289 = load double, double* %1288, align 8
  %1290 = fdiv double %1287, %1289
  store double %1290, double* %117, align 1
  store i64 0, i64* %49, align 1
  %1291 = add i64 %1109, -104044
  %1292 = add i64 %1109, 15
  %1293 = load i64, i64* %6, align 8
  %1294 = add i64 %1293, -8
  %1295 = inttoptr i64 %1294 to i64*
  store i64 %1292, i64* %1295, align 8
  store i64 %1294, i64* %6, align 8
  store i64 %1291, i64* %3, align 8
  %1296 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.10)
  %1297 = load i64, i64* %3, align 8
  %1298 = add i64 %1297, ptrtoint (%G_0x39cbd__rip__type* @G_0x39cbd__rip_ to i64)
  %1299 = add i64 %1297, 8
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to double*
  %1301 = load double, double* %1300, align 8
  %1302 = load double, double* %117, align 1
  %1303 = fmul double %1301, %1302
  store double %1303, double* %126, align 1
  store i64 0, i64* %63, align 1
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -52
  %1306 = add i64 %1297, 17
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to float*
  %1308 = load float, float* %1307, align 4
  %1309 = fpext float %1308 to double
  %1310 = fdiv double %1303, %1309
  store double %1310, double* %126, align 1
  store i64 0, i64* %63, align 1
  %1311 = bitcast double %1309 to <2 x i32>
  %1312 = bitcast i64* %49 to <2 x i32>*
  %1313 = load <2 x i32>, <2 x i32>* %1312, align 1
  %1314 = fptrunc double %1310 to float
  store float %1314, float* %45, align 1
  %1315 = extractelement <2 x i32> %1311, i32 1
  store i32 %1315, i32* %123, align 1
  %1316 = extractelement <2 x i32> %1313, i32 0
  store i32 %1316, i32* %124, align 1
  %1317 = extractelement <2 x i32> %1313, i32 1
  store i32 %1317, i32* %125, align 1
  %1318 = add i64 %1304, -56
  %1319 = add i64 %1297, 30
  store i64 %1319, i64* %3, align 8
  %1320 = load <2 x float>, <2 x float>* %108, align 1
  %1321 = extractelement <2 x float> %1320, i32 0
  %1322 = inttoptr i64 %1318 to float*
  store float %1321, float* %1322, align 4
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -52
  %1325 = load i64, i64* %3, align 8
  %1326 = add i64 %1325, 5
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1324 to i32*
  %1328 = load i32, i32* %1327, align 4
  store i32 %1328, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %1329 = add i64 %1323, -48
  %1330 = add i64 %1325, 9
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RAX.i442, align 8
  %1333 = add i64 %1325, 13
  store i64 %1333, i64* %3, align 8
  %1334 = load <2 x float>, <2 x float>* %108, align 1
  %1335 = extractelement <2 x float> %1334, i32 0
  %1336 = inttoptr i64 %1332 to float*
  store float %1335, float* %1336, align 4
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -56
  %1339 = load i64, i64* %3, align 8
  %1340 = add i64 %1339, 5
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1338 to i32*
  %1342 = load i32, i32* %1341, align 4
  store i32 %1342, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  %1343 = add i64 %1337, -40
  %1344 = add i64 %1339, 9
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %RAX.i442, align 8
  %1347 = add i64 %1339, 13
  store i64 %1347, i64* %3, align 8
  %1348 = load <2 x float>, <2 x float>* %108, align 1
  %1349 = extractelement <2 x float> %1348, i32 0
  %1350 = inttoptr i64 %1346 to float*
  store float %1349, float* %1350, align 4
  %1351 = load i64, i64* %RBP.i, align 8
  %1352 = add i64 %1351, -4
  %1353 = load i64, i64* %3, align 8
  %1354 = add i64 %1353, 7
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1352 to i32*
  store i32 1, i32* %1355, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_41abaa

block_.L_41abaa:                                  ; preds = %block_.L_41ab5c, %block_41aa8d, %block_41a9a8, %block_41a915
  %1356 = phi i64 [ %.pre83, %block_.L_41ab5c ], [ %1043, %block_41aa8d ], [ %720, %block_41a9a8 ], [ %563, %block_41a915 ]
  %MEMORY.12 = phi %struct.Memory* [ %1296, %block_.L_41ab5c ], [ %MEMORY.8, %block_41aa8d ], [ %709, %block_41a9a8 ], [ %553, %block_41a915 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -4
  %1359 = add i64 %1356, 3
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RAX.i, align 8
  %1363 = load i64, i64* %6, align 8
  %1364 = add i64 %1363, 128
  store i64 %1364, i64* %6, align 8
  %1365 = icmp ugt i64 %1363, -129
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %14, align 1
  %1367 = trunc i64 %1364 to i32
  %1368 = and i32 %1367, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i64 %1364, %1363
  %1374 = lshr i64 %1373, 4
  %1375 = trunc i64 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %26, align 1
  %1377 = icmp eq i64 %1364, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %29, align 1
  %1379 = lshr i64 %1364, 63
  %1380 = trunc i64 %1379 to i8
  store i8 %1380, i8* %32, align 1
  %1381 = lshr i64 %1363, 63
  %1382 = xor i64 %1379, %1381
  %1383 = add nuw nsw i64 %1382, %1379
  %1384 = icmp eq i64 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %38, align 1
  %1386 = add i64 %1356, 11
  store i64 %1386, i64* %3, align 8
  %1387 = add i64 %1363, 136
  %1388 = inttoptr i64 %1364 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RBP.i, align 8
  store i64 %1387, i64* %6, align 8
  %1390 = add i64 %1356, 12
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1387 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %3, align 8
  %1393 = add i64 %1363, 144
  store i64 %1393, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
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
define %struct.Memory* @routine_movss_0x39f79__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x39f79__rip__type* @G_0x39f79__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x39f75__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x39f75__rip__type* @G_0x39f75__rip_ to i64)
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
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_41a894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_callq_.Lawless416(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movaps_0x3b0de__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x3b0de__rip__type* @G_0x3b0de__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x5c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_jbe_.L_41a84a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fsub float %15, %16
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_jb_.L_41a881(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x39ed8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x39ed8__rip__type* @G_0x39ed8__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_41a886(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a7ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41aaa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x39e9e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x39e9e__rip__type* @G_0x39e9e__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_jbe_.L_41a955(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a8e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x39f7c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39f7c__rip__type* @G_0x39f7c__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_jbe_.L_41a921(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41abaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_41a8e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a9d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a95a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x39f06__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39f06__rip__type* @G_0x39f06__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_movsd_0x39ecf__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39ecf__rip__type* @G_0x39ecf__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_41a9b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a9b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_41a95a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41aa83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x39df7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39df7__rip__type* @G_0x39df7__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_movaps_0x3aee3__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x3aee3__rip__type* @G_0x3aee3__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41aa45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41aa83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41aa66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41aa70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aa75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a9d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41aa99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_41ab5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_41aae0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x39d0a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39d0a__rip__type* @G_0x39d0a__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_41aaf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x39c25__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x39c25__rip__type* @G_0x39c25__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x34__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %19 = fmul float %18, %17
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_addsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_jmpq_.L_41aab7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x39cbd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39cbd__rip__type* @G_0x39cbd__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
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
