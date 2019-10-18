; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4004d0.memset_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401750.matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e0.second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401920.dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401c30.dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401fb0.dmxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4027b0.epslon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402860.print_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1016
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1008
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
  %RSI.i1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 4206299, i64* %RSI.i1153, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = add i64 %10, 10247
  %43 = add i64 %10, 28
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
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1480 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  store i64 4206266, i64* %RAX.i1480, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1478 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  store i64 4206240, i64* %RCX.i1478, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1475 = bitcast %union.anon* %56 to i32*
  %RDX.i1476 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  store i64 0, i64* %RDX.i1476, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %RDI.i1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 720, i64* %57, align 8
  %R9.i1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -832
  store i64 %59, i64* %R9.i1469, align 8
  %60 = add i64 %58, -4
  %61 = add i64 %10, 72
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  store i32 0, i32* %62, align 4
  %63 = load i64, i64* %R9.i1469, align 8
  %64 = load i64, i64* %3, align 8
  store i64 %63, i64* %RDI.i1473, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -840
  %67 = load i64, i64* %RSI.i1153, align 8
  %68 = add i64 %64, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %EDX.i1475, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %3, align 8
  store i64 %71, i64* %RSI.i1153, align 8
  %73 = load i64, i64* %57, align 8
  store i64 %73, i64* %RDX.i1476, align 8
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -848
  %76 = load i64, i64* %RCX.i1478, align 8
  %77 = add i64 %72, 12
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -852
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 8
  store i64 %82, i64* %3, align 8
  %83 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %84 = load <2 x float>, <2 x float>* %83, align 1
  %85 = extractelement <2 x float> %84, i32 0
  %86 = inttoptr i64 %80 to float*
  store float %85, float* %86, align 4
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -864
  %89 = load i64, i64* %RAX.i1480, align 8
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, -462
  %95 = add i64 %93, 5
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %call2_40069e = tail call %struct.Memory* @sub_4004d0.memset_plt(%struct.State* %0, i64 %94, %struct.Memory* %2)
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -832
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i8*
  store i8 32, i8* %103, align 1
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -848
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 7
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RAX.i1480, align 8
  %110 = add i64 %104, -96
  %111 = add i64 %106, 11
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -864
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 7
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX.i1478, align 8
  %119 = add i64 %113, -104
  %120 = add i64 %115, 11
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %3, align 8
  store i32 201, i32* inttoptr (i64 6307920 to i32*), align 16
  store i32 200, i32* inttoptr (i64 6307924 to i32*), align 4
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -852
  %125 = add i64 %122, 30
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %128 = add i64 %123, -8
  %129 = add i64 %122, 35
  store i64 %129, i64* %3, align 8
  %130 = load <2 x float>, <2 x float>* %83, align 1
  %131 = extractelement <2 x float> %130, i32 0
  %132 = inttoptr i64 %128 to float*
  store float %131, float* %132, align 4
  %133 = load i64, i64* %3, align 8
  store i32 100, i32* inttoptr (i64 6307928 to i32*), align 8
  %134 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %134, i64* %RDI.i1473, align 8
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -840
  %137 = add i64 %133, 26
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RSI.i1153, align 8
  %AL.i1414 = bitcast %union.anon* %54 to i8*
  store i8 0, i8* %AL.i1414, align 1
  %140 = add i64 %133, -515
  %141 = add i64 %133, 33
  %142 = load i64, i64* %6, align 8
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %141, i64* %144, align 8
  store i64 %143, i64* %6, align 8
  store i64 %140, i64* %3, align 8
  %call2_4006ff = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64 %140, %struct.Memory* %call2_40069e)
  %145 = load i64, i64* %3, align 8
  store i64 4206307, i64* %RSI.i1153, align 8
  %146 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %146, i64* %RDI.i1473, align 8
  %EAX.i1406 = bitcast %union.anon* %54 to i32*
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -868
  %149 = load i32, i32* %EAX.i1406, align 4
  %150 = add i64 %145, 24
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i32*
  store i32 %149, i32* %151, align 4
  %152 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %153 = add i64 %152, -572
  %154 = add i64 %152, 7
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157, align 8
  store i64 %156, i64* %6, align 8
  store i64 %153, i64* %3, align 8
  %call2_40071e = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64 %153, %struct.Memory* %call2_4006ff)
  %158 = load i64, i64* %3, align 8
  store i64 4206315, i64* %RSI.i1153, align 8
  %159 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %159, i64* %RDI.i1473, align 8
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -872
  %162 = load i32, i32* %EAX.i1406, align 4
  %163 = add i64 %158, 24
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %161 to i32*
  store i32 %162, i32* %164, align 4
  %165 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %166 = add i64 %165, -603
  %167 = add i64 %165, 7
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %6, align 8
  store i64 %166, i64* %3, align 8
  %call2_40073d = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64 %166, %struct.Memory* %call2_40071e)
  %171 = load i64, i64* %3, align 8
  store i64 4206369, i64* %RSI.i1153, align 8
  %172 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %172, i64* %RDI.i1473, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -96
  %175 = add i64 %171, 22
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RDX.i1476, align 8
  %178 = add i64 %173, -876
  %179 = load i32, i32* %EAX.i1406, align 4
  %180 = add i64 %171, 28
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %183 = add i64 %182, -638
  %184 = add i64 %182, 7
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_400760 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64 %183, %struct.Memory* %call2_40073d)
  %188 = load i64, i64* %3, align 8
  store i64 4206386, i64* %RSI.i1153, align 8
  %189 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %189, i64* %RDI.i1473, align 8
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -104
  %192 = add i64 %188, 22
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RDX.i1476, align 8
  %195 = add i64 %190, -880
  %196 = load i32, i32* %EAX.i1406, align 4
  %197 = add i64 %188, 28
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %200 = add i64 %199, -673
  %201 = add i64 %199, 7
  %202 = load i64, i64* %6, align 8
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %6, align 8
  store i64 %200, i64* %3, align 8
  %call2_400783 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64 %200, %struct.Memory* %call2_400760)
  %205 = load i64, i64* %3, align 8
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -20
  store i64 %207, i64* %57, align 8
  %208 = add i64 %205, 9920
  %209 = add i64 %205, 32
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  %212 = bitcast [32 x %union.VectorReg]* %40 to double*
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %211, i64* %213, align 1
  %214 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %214, align 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %216 = add i64 %205, 9928
  %217 = add i64 %205, 40
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = bitcast %union.VectorReg* %215 to double*
  %221 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %215, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %219, i64* %221, align 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %223 = bitcast i64* %222 to double*
  store double 0.000000e+00, double* %223, align 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %225 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %226, %226
  %228 = trunc i64 %227 to i32
  %229 = and i64 %227, 4294967295
  %230 = shl i64 %227, 32
  %231 = ashr exact i64 %230, 32
  %232 = icmp ne i64 %231, %227
  %233 = zext i1 %232 to i8
  %234 = and i32 %228, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  %239 = lshr i32 %228, 31
  %240 = trunc i32 %239 to i8
  %241 = trunc i64 %227 to i32
  %sext = shl i64 %227, 32
  %242 = ashr exact i64 %sext, 32
  %243 = mul nsw i64 %226, %242
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %245 = trunc i64 %243 to i32
  %246 = sitofp i32 %245 to double
  %247 = bitcast %union.VectorReg* %244 to double*
  store double %246, double* %247, align 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %249 = bitcast %union.VectorReg* %248 to i8*
  %250 = bitcast i64 %211 to <2 x i32>
  %251 = bitcast i64* %50 to <2 x i32>*
  %252 = extractelement <2 x i32> %250, i32 0
  %253 = bitcast %union.VectorReg* %248 to i32*
  store i32 %252, i32* %253, align 1
  %254 = extractelement <2 x i32> %250, i32 1
  %255 = getelementptr inbounds i8, i8* %249, i64 4
  %256 = bitcast i8* %255 to i32*
  store i32 %254, i32* %256, align 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %258 = bitcast i64* %257 to i32*
  store i32 0, i32* %258, align 1
  %259 = getelementptr inbounds i8, i8* %249, i64 12
  %260 = bitcast i8* %259 to i32*
  store i32 0, i32* %260, align 1
  %261 = bitcast %union.VectorReg* %248 to double*
  %262 = load double, double* %261, align 1
  %263 = fmul double %262, %246
  %264 = load double, double* %220, align 1
  %265 = fdiv double %263, %264
  store i64 %229, i64* %224, align 8
  store i8 %233, i8* %14, align 1
  store i8 %238, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 %240, i8* %33, align 1
  store i8 %233, i8* %39, align 1
  %266 = sitofp i32 %241 to double
  store double %266, double* %220, align 1
  %267 = load double, double* %212, align 1
  %268 = bitcast i64* %50 to <2 x i32>*
  %269 = load <2 x i32>, <2 x i32>* %268, align 1
  %270 = fmul double %266, %267
  %271 = fadd double %270, %265
  store double %271, double* %261, align 1
  %272 = bitcast double %270 to <2 x i32>
  %273 = fptrunc double %271 to float
  store float %273, float* %46, align 1
  %274 = extractelement <2 x i32> %272, i32 1
  %275 = bitcast i8* %48 to i32*
  store i32 %274, i32* %275, align 1
  %276 = extractelement <2 x i32> %269, i32 0
  %277 = bitcast i64* %50 to i32*
  store i32 %276, i32* %277, align 1
  %278 = extractelement <2 x i32> %269, i32 1
  %279 = bitcast i8* %52 to i32*
  store i32 %278, i32* %279, align 1
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -12
  %282 = add i64 %205, 121
  store i64 %282, i64* %3, align 8
  %283 = load <2 x float>, <2 x float>* %83, align 1
  %284 = extractelement <2 x float> %283, i32 0
  %285 = inttoptr i64 %281 to float*
  store float %284, float* %285, align 4
  %286 = load i64, i64* %3, align 8
  %287 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RSI.i1153, align 8
  %289 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RDX.i1476, align 8
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -884
  %293 = load i32, i32* %EAX.i1406, align 4
  %294 = add i64 %286, 20
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %295, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 3899
  %298 = add i64 %296, 5
  %299 = load i64, i64* %6, align 8
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %6, align 8
  store i64 %297, i64* %3, align 8
  %call2_400815 = tail call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64 %297, %struct.Memory* %call2_400783)
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, -570
  %304 = add i64 %302, 5
  %305 = load i64, i64* %6, align 8
  %306 = add i64 %305, -8
  %307 = inttoptr i64 %306 to i64*
  store i64 %304, i64* %307, align 8
  store i64 %306, i64* %6, align 8
  store i64 %303, i64* %3, align 8
  %call2_40081a = tail call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64 %303, %struct.Memory* %call2_400815)
  %308 = load i64, i64* %3, align 8
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6470336, i64* %57, align 8
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -40
  %311 = add i64 %308, 35
  store i64 %311, i64* %3, align 8
  %312 = load <2 x float>, <2 x float>* %83, align 1
  %313 = extractelement <2 x float> %312, i32 0
  %314 = inttoptr i64 %310 to float*
  store float %313, float* %314, align 4
  %315 = load i64, i64* %3, align 8
  %316 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RSI.i1153, align 8
  %318 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RDX.i1476, align 8
  %320 = add i64 %315, 4318
  %321 = add i64 %315, 19
  %322 = load i64, i64* %6, align 8
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %321, i64* %324, align 8
  store i64 %323, i64* %6, align 8
  store i64 %320, i64* %3, align 8
  %call2_400850 = tail call %struct.Memory* @sub_401920.dgefa(%struct.State* %0, i64 %320, %struct.Memory* %call2_40081a)
  %325 = load i64, i64* %3, align 8
  %326 = add i64 %325, -629
  %327 = add i64 %325, 5
  %328 = load i64, i64* %6, align 8
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330, align 8
  store i64 %329, i64* %6, align 8
  store i64 %326, i64* %3, align 8
  %call2_400855 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64 %326, %struct.Memory* %call2_400850)
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -40
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 5
  store i64 %334, i64* %3, align 8
  %335 = load <2 x float>, <2 x float>* %83, align 1
  %336 = load <2 x i32>, <2 x i32>* %251, align 1
  %337 = inttoptr i64 %332 to float*
  %338 = load float, float* %337, align 4
  %339 = extractelement <2 x float> %335, i32 0
  %340 = fsub float %339, %338
  store float %340, float* %46, align 1
  %341 = bitcast <2 x float> %335 to <2 x i32>
  %342 = extractelement <2 x i32> %341, i32 1
  store i32 %342, i32* %275, align 1
  %343 = extractelement <2 x i32> %336, i32 0
  store i32 %343, i32* %277, align 1
  %344 = extractelement <2 x i32> %336, i32 1
  store i32 %344, i32* %279, align 1
  %345 = load <2 x float>, <2 x float>* %83, align 1
  %346 = extractelement <2 x float> %345, i32 0
  store float %346, float* inttoptr (i64 6470352 to float*), align 16
  %347 = add i64 %333, -634
  %348 = add i64 %333, 19
  %349 = load i64, i64* %6, align 8
  %350 = add i64 %349, -8
  %351 = inttoptr i64 %350 to i64*
  store i64 %348, i64* %351, align 8
  store i64 %350, i64* %6, align 8
  store i64 %347, i64* %3, align 8
  %call2_400868 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64 %347, %struct.Memory* %call2_400855)
  %352 = load i64, i64* %3, align 8
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6468736, i64* %57, align 8
  store i64 0, i64* %R9.i1469, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -40
  %355 = add i64 %352, 38
  store i64 %355, i64* %3, align 8
  %356 = load <2 x float>, <2 x float>* %83, align 1
  %357 = extractelement <2 x float> %356, i32 0
  %358 = inttoptr i64 %354 to float*
  store float %357, float* %358, align 4
  %359 = load i64, i64* %3, align 8
  %360 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RSI.i1153, align 8
  %362 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RDX.i1476, align 8
  %364 = add i64 %359, 5021
  %365 = add i64 %359, 19
  %366 = load i64, i64* %6, align 8
  %367 = add i64 %366, -8
  %368 = inttoptr i64 %367 to i64*
  store i64 %365, i64* %368, align 8
  store i64 %367, i64* %6, align 8
  store i64 %364, i64* %3, align 8
  %call2_4008a1 = tail call %struct.Memory* @sub_401c30.dgesl(%struct.State* %0, i64 %364, %struct.Memory* %call2_400868)
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, -710
  %371 = add i64 %369, 5
  %372 = load i64, i64* %6, align 8
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %6, align 8
  store i64 %370, i64* %3, align 8
  %call2_4008a6 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64 %370, %struct.Memory* %call2_4008a1)
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -40
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 5
  store i64 %378, i64* %3, align 8
  %379 = load <2 x float>, <2 x float>* %83, align 1
  %380 = inttoptr i64 %376 to float*
  %381 = load float, float* %380, align 4
  %382 = extractelement <2 x float> %379, i32 0
  %383 = fsub float %382, %381
  store float %383, float* %46, align 1
  %384 = bitcast <2 x float> %379 to <2 x i32>
  %385 = extractelement <2 x i32> %384, i32 1
  store i32 %385, i32* %275, align 1
  %386 = load <2 x float>, <2 x float>* %83, align 1
  %387 = extractelement <2 x float> %386, i32 0
  store float %387, float* inttoptr (i64 6470412 to float*), align 4
  %388 = load i32, i32* inttoptr (i64 6470352 to i32*), align 16
  store i32 %388, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %389 = load <2 x float>, <2 x float>* %83, align 1
  %390 = load <2 x i32>, <2 x i32>* %251, align 1
  %391 = extractelement <2 x float> %389, i32 0
  %392 = fadd float %391, %387
  store float %392, float* %46, align 1
  %393 = bitcast <2 x float> %389 to <2 x i32>
  %394 = extractelement <2 x i32> %393, i32 1
  store i32 %394, i32* %275, align 1
  %395 = extractelement <2 x i32> %390, i32 0
  store i32 %395, i32* %277, align 1
  %396 = extractelement <2 x i32> %390, i32 1
  store i32 %396, i32* %279, align 1
  %397 = add i64 %375, -16
  %398 = add i64 %377, 37
  store i64 %398, i64* %3, align 8
  %399 = load <2 x float>, <2 x float>* %83, align 1
  %400 = extractelement <2 x float> %399, i32 0
  %401 = inttoptr i64 %397 to float*
  store float %400, float* %401, align 4
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 11
  store i64 %403, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_4008db

block_.L_4008db:                                  ; preds = %block_4008ef, %entry
  %404 = phi i32 [ %448, %block_4008ef ], [ 0, %entry ]
  %405 = phi i64 [ %471, %block_4008ef ], [ %403, %entry ]
  %406 = zext i32 %404 to i64
  store i64 %406, i64* %RAX.i1480, align 8
  %407 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %408 = sub i32 %404, %407
  %409 = icmp ult i32 %404, %407
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %14, align 1
  %411 = and i32 %408, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %21, align 1
  %416 = xor i32 %407, %404
  %417 = xor i32 %416, %408
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %27, align 1
  %421 = icmp eq i32 %408, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %30, align 1
  %423 = lshr i32 %408, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %33, align 1
  %425 = lshr i32 %404, 31
  %426 = lshr i32 %407, 31
  %427 = xor i32 %426, %425
  %428 = xor i32 %423, %425
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %39, align 1
  %432 = icmp ne i8 %424, 0
  %433 = xor i1 %432, %430
  %.v89 = select i1 %433, i64 20, i64 76
  %434 = add i64 %405, %.v89
  store i64 %434, i64* %3, align 8
  br i1 %433, label %block_4008ef, label %block_.L_400927

block_4008ef:                                     ; preds = %block_.L_4008db
  %435 = sext i32 %404 to i64
  store i64 %435, i64* %RAX.i1480, align 8
  %436 = shl nsw i64 %435, 2
  %437 = add nsw i64 %436, 6468736
  %438 = add i64 %434, 17
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %441 = add nsw i64 %436, 6470896
  %442 = add i64 %434, 34
  store i64 %442, i64* %3, align 8
  %443 = load <2 x float>, <2 x float>* %83, align 1
  %444 = extractelement <2 x float> %443, i32 0
  %445 = inttoptr i64 %441 to float*
  store float %444, float* %445, align 4
  %446 = load i64, i64* %3, align 8
  %447 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i1480, align 8
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %21, align 1
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %27, align 1
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %30, align 1
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %33, align 1
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %39, align 1
  store i32 %448, i32* inttoptr (i64 6470892 to i32*), align 4
  %471 = add i64 %446, -54
  store i64 %471, i64* %3, align 8
  br label %block_.L_4008db

block_.L_400927:                                  ; preds = %block_.L_4008db
  %472 = bitcast %union.VectorReg* %215 to i8*
  %473 = bitcast %union.VectorReg* %244 to i8*
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -20
  store i64 %475, i64* %57, align 8
  %476 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RSI.i1153, align 8
  %478 = zext i32 %407 to i64
  store i64 %478, i64* %RDX.i1476, align 8
  %479 = add i64 %434, 3625
  %480 = add i64 %434, 43
  %481 = load i64, i64* %6, align 8
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %6, align 8
  store i64 %479, i64* %3, align 8
  %call2_40094d = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %479, %struct.Memory* %call2_4008a6)
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 11
  store i64 %485, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  %486 = bitcast %union.anon* %55 to [2 x i32]*
  %487 = bitcast %union.anon* %55 to i32*
  %488 = getelementptr inbounds [2 x i32], [2 x i32]* %486, i64 0, i64 1
  br label %block_.L_40095d

block_.L_40095d:                                  ; preds = %block_400971, %block_.L_400927
  %489 = phi i32 [ %538, %block_400971 ], [ 0, %block_.L_400927 ]
  %490 = phi i64 [ %561, %block_400971 ], [ %485, %block_.L_400927 ]
  %491 = zext i32 %489 to i64
  store i64 %491, i64* %RAX.i1480, align 8
  %492 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %493 = sub i32 %489, %492
  %494 = icmp ult i32 %489, %492
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %14, align 1
  %496 = and i32 %493, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i32 %492, %489
  %502 = xor i32 %501, %493
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %27, align 1
  %506 = icmp eq i32 %493, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %30, align 1
  %508 = lshr i32 %493, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %33, align 1
  %510 = lshr i32 %489, 31
  %511 = lshr i32 %492, 31
  %512 = xor i32 %511, %510
  %513 = xor i32 %508, %510
  %514 = add nuw nsw i32 %513, %512
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %39, align 1
  %517 = icmp ne i8 %509, 0
  %518 = xor i1 %517, %515
  %.v90 = select i1 %518, i64 20, i64 90
  %519 = add i64 %490, %.v90
  store i64 %519, i64* %3, align 8
  br i1 %518, label %block_400971, label %block_.L_4009b7

block_400971:                                     ; preds = %block_.L_40095d
  %520 = sext i32 %489 to i64
  store i64 %520, i64* %RAX.i1480, align 8
  %521 = shl nsw i64 %520, 2
  %522 = add nsw i64 %521, 6468736
  %523 = add i64 %519, 17
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %526 = load i64, i64* %213, align 1
  %527 = trunc i64 %526 to i32
  store i32 %527, i32* %487, align 1
  store i32 0, i32* %488, align 1
  %528 = load i64, i64* %RCX.i1478, align 8
  %529 = xor i64 %528, -2147483648
  %530 = and i64 %529, 4294967295
  store i64 %530, i64* %RCX.i1478, align 8
  %531 = trunc i64 %529 to i32
  store i32 %531, i32* %47, align 1
  store i32 0, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %532 = add i64 %519, 48
  store i64 %532, i64* %3, align 8
  %533 = load <2 x float>, <2 x float>* %83, align 1
  %534 = extractelement <2 x float> %533, i32 0
  %535 = inttoptr i64 %522 to float*
  store float %534, float* %535, align 4
  %536 = load i64, i64* %3, align 8
  %537 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %538 = add i32 %537, 1
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RAX.i1480, align 8
  %540 = icmp eq i32 %537, -1
  %541 = icmp eq i32 %538, 0
  %542 = or i1 %540, %541
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %14, align 1
  %544 = and i32 %538, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %21, align 1
  %549 = xor i32 %538, %537
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %27, align 1
  %553 = zext i1 %541 to i8
  store i8 %553, i8* %30, align 1
  %554 = lshr i32 %538, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %33, align 1
  %556 = lshr i32 %537, 31
  %557 = xor i32 %554, %556
  %558 = add nuw nsw i32 %557, %554
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %39, align 1
  store i32 %538, i32* inttoptr (i64 6470892 to i32*), align 4
  %561 = add i64 %536, -68
  store i64 %561, i64* %3, align 8
  br label %block_.L_40095d

block_.L_4009b7:                                  ; preds = %block_.L_40095d
  store i64 6468736, i64* %RSI.i1153, align 8
  store i64 6470896, i64* %57, align 8
  store i64 6307936, i64* %R9.i1469, align 8
  %562 = zext i32 %492 to i64
  store i64 %562, i64* %RDI.i1473, align 8
  store i64 %562, i64* %RDX.i1476, align 8
  %563 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i1478, align 8
  %565 = add i64 %519, 5625
  %566 = add i64 %519, 56
  %567 = load i64, i64* %6, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %566, i64* %569, align 8
  store i64 %568, i64* %6, align 8
  store i64 %565, i64* %3, align 8
  %call2_4009ea = tail call %struct.Memory* @sub_401fb0.dmxpy(%struct.State* nonnull %0, i64 %565, %struct.Memory* %call2_40094d)
  %570 = load i64, i64* %3, align 8
  %571 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %571, align 1
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -28
  %574 = add i64 %570, 8
  store i64 %574, i64* %3, align 8
  %575 = load <2 x float>, <2 x float>* %83, align 1
  %576 = extractelement <2 x float> %575, i32 0
  %577 = inttoptr i64 %573 to float*
  store float %576, float* %577, align 4
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -24
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, 5
  store i64 %581, i64* %3, align 8
  %582 = load <2 x float>, <2 x float>* %83, align 1
  %583 = extractelement <2 x float> %582, i32 0
  %584 = inttoptr i64 %579 to float*
  store float %583, float* %584, align 4
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 11
  store i64 %586, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  %587 = bitcast %union.VectorReg* %244 to i32*
  %588 = getelementptr inbounds i8, i8* %473, i64 4
  %589 = bitcast i8* %588 to i32*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %591 = bitcast i64* %590 to i32*
  %592 = getelementptr inbounds i8, i8* %473, i64 12
  %593 = bitcast i8* %592 to i32*
  %594 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %244, i64 0, i32 0, i32 0, i32 0, i64 0
  %595 = bitcast %union.VectorReg* %215 to i32*
  %596 = getelementptr inbounds i8, i8* %472, i64 4
  %597 = bitcast i8* %596 to i32*
  %598 = bitcast i64* %222 to i32*
  %599 = getelementptr inbounds i8, i8* %472, i64 12
  %600 = bitcast i8* %599 to i32*
  br label %block_.L_400a07

block_.L_400a07:                                  ; preds = %block_.L_400aee, %block_.L_4009b7
  %601 = phi i32 [ 0, %block_.L_4009b7 ], [ %900, %block_.L_400aee ]
  %602 = phi i64 [ %586, %block_.L_4009b7 ], [ %923, %block_.L_400aee ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4009ea, %block_.L_4009b7 ], [ %830, %block_.L_400aee ]
  %603 = zext i32 %601 to i64
  store i64 %603, i64* %RAX.i1480, align 8
  %604 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %605 = sub i32 %601, %604
  %606 = icmp ult i32 %601, %604
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %14, align 1
  %608 = and i32 %605, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %21, align 1
  %613 = xor i32 %604, %601
  %614 = xor i32 %613, %605
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %27, align 1
  %618 = icmp eq i32 %605, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %30, align 1
  %620 = lshr i32 %605, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %33, align 1
  %622 = lshr i32 %601, 31
  %623 = lshr i32 %604, 31
  %624 = xor i32 %623, %622
  %625 = xor i32 %620, %622
  %626 = add nuw nsw i32 %625, %624
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %39, align 1
  %629 = icmp ne i8 %621, 0
  %630 = xor i1 %629, %627
  %.v91 = select i1 %630, i64 20, i64 270
  %631 = add i64 %602, %.v91
  store i64 %631, i64* %3, align 8
  br i1 %630, label %block_400a1b, label %block_.L_400b15

block_400a1b:                                     ; preds = %block_.L_400a07
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -28
  %634 = add i64 %631, 5
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to float*
  %636 = load float, float* %635, align 4
  %637 = fpext float %636 to double
  store double %637, double* %212, align 1
  %638 = sext i32 %601 to i64
  store i64 %638, i64* %RAX.i1480, align 8
  %639 = shl nsw i64 %638, 2
  %640 = add nsw i64 %639, 6468736
  %641 = add i64 %631, 22
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to float*
  %643 = load float, float* %642, align 4
  %644 = fpext float %643 to double
  store double %644, double* %220, align 1
  %645 = add i64 %631, 9333
  %646 = add i64 %631, 29
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = add i64 %631, 9337
  %650 = inttoptr i64 %649 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = add i64 %631, 9341
  %653 = inttoptr i64 %652 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i64 %631, 9345
  %656 = inttoptr i64 %655 to i32*
  %657 = load i32, i32* %656, align 4
  store i32 %648, i32* %587, align 1
  store i32 %651, i32* %589, align 1
  store i32 %654, i32* %591, align 1
  store i32 %657, i32* %593, align 1
  %658 = bitcast double %644 to i64
  %659 = load i64, i64* %222, align 1
  %660 = load i64, i64* %594, align 1
  %661 = load i64, i64* %590, align 1
  %662 = and i64 %660, %658
  %663 = and i64 %661, %659
  %664 = trunc i64 %662 to i32
  %665 = lshr i64 %662, 32
  %666 = trunc i64 %665 to i32
  store i32 %664, i32* %595, align 1
  store i32 %666, i32* %597, align 1
  %667 = trunc i64 %663 to i32
  store i32 %667, i32* %598, align 1
  %668 = lshr i64 %663, 32
  %669 = trunc i64 %668 to i32
  store i32 %669, i32* %600, align 1
  %670 = add i64 %631, 37
  store i64 %670, i64* %3, align 8
  %671 = load double, double* %220, align 1
  %672 = fcmp uno double %637, %671
  br i1 %672, label %673, label %683

; <label>:673:                                    ; preds = %block_400a1b
  %674 = fadd double %637, %671
  %675 = bitcast double %674 to i64
  %676 = and i64 %675, 9221120237041090560
  %677 = icmp eq i64 %676, 9218868437227405312
  %678 = and i64 %675, 2251799813685247
  %679 = icmp ne i64 %678, 0
  %680 = and i1 %677, %679
  br i1 %680, label %681, label %689

; <label>:681:                                    ; preds = %673
  %682 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %670, %struct.Memory* %MEMORY.2)
  %.pre80 = load i64, i64* %3, align 8
  %.pre81 = load i8, i8* %14, align 1
  %.pre82 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1151

; <label>:683:                                    ; preds = %block_400a1b
  %684 = fcmp ogt double %637, %671
  br i1 %684, label %689, label %685

; <label>:685:                                    ; preds = %683
  %686 = fcmp olt double %637, %671
  br i1 %686, label %689, label %687

; <label>:687:                                    ; preds = %685
  %688 = fcmp oeq double %637, %671
  br i1 %688, label %689, label %693

; <label>:689:                                    ; preds = %687, %685, %683, %673
  %690 = phi i8 [ 0, %683 ], [ 0, %685 ], [ 1, %687 ], [ 1, %673 ]
  %691 = phi i8 [ 0, %683 ], [ 0, %685 ], [ 0, %687 ], [ 1, %673 ]
  %692 = phi i8 [ 0, %683 ], [ 1, %685 ], [ 0, %687 ], [ 1, %673 ]
  store i8 %690, i8* %30, align 1
  store i8 %691, i8* %21, align 1
  store i8 %692, i8* %14, align 1
  br label %693

; <label>:693:                                    ; preds = %689, %687
  %694 = phi i8 [ %690, %689 ], [ %619, %687 ]
  %695 = phi i8 [ %692, %689 ], [ %607, %687 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1151

routine_ucomisd__xmm1___xmm0.exit1151:            ; preds = %693, %681
  %696 = phi i8 [ %.pre82, %681 ], [ %694, %693 ]
  %697 = phi i8 [ %.pre81, %681 ], [ %695, %693 ]
  %698 = phi i64 [ %.pre80, %681 ], [ %670, %693 ]
  %699 = phi %struct.Memory* [ %682, %681 ], [ %MEMORY.2, %693 ]
  %700 = or i8 %696, %697
  %701 = icmp ne i8 %700, 0
  %.v101 = select i1 %701, i64 24, i64 6
  %702 = add i64 %698, %.v101
  store i64 %702, i64* %3, align 8
  br i1 %701, label %block_.L_400a58, label %block_400a46

block_400a46:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1151
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -28
  %705 = add i64 %702, 5
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to float*
  %707 = load float, float* %706, align 4
  %708 = fpext float %707 to double
  store double %708, double* %212, align 1
  %709 = add i64 %703, -896
  %710 = add i64 %702, 13
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to double*
  store double %708, double* %711, align 8
  %712 = load i64, i64* %3, align 8
  %713 = add i64 %712, 41
  store i64 %713, i64* %3, align 8
  br label %block_.L_400a7c

block_.L_400a58:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1151
  %714 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RAX.i1480, align 8
  %716 = shl nsw i64 %715, 2
  %717 = add nsw i64 %716, 6468736
  %718 = add i64 %702, 17
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to float*
  %720 = load float, float* %719, align 4
  %721 = fpext float %720 to double
  store double %721, double* %212, align 1
  %722 = add i64 %702, 9272
  %723 = add i64 %702, 24
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = add i64 %702, 9276
  %727 = inttoptr i64 %726 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i64 %702, 9280
  %730 = inttoptr i64 %729 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i64 %702, 9284
  %733 = inttoptr i64 %732 to i32*
  %734 = load i32, i32* %733, align 4
  store i32 %725, i32* %595, align 1
  store i32 %728, i32* %597, align 1
  store i32 %731, i32* %598, align 1
  store i32 %734, i32* %600, align 1
  %735 = bitcast double %721 to i64
  %736 = load i64, i64* %50, align 1
  %737 = load i64, i64* %221, align 1
  %738 = load i64, i64* %222, align 1
  %739 = and i64 %737, %735
  %740 = and i64 %738, %736
  %741 = trunc i64 %739 to i32
  %742 = lshr i64 %739, 32
  %743 = trunc i64 %742 to i32
  store i32 %741, i32* %47, align 1
  store i32 %743, i32* %275, align 1
  %744 = trunc i64 %740 to i32
  store i32 %744, i32* %277, align 1
  %745 = lshr i64 %740, 32
  %746 = trunc i64 %745 to i32
  store i32 %746, i32* %279, align 1
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -896
  %749 = add i64 %702, 36
  store i64 %749, i64* %3, align 8
  %750 = load i64, i64* %213, align 1
  %751 = inttoptr i64 %748 to i64*
  store i64 %750, i64* %751, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_400a7c

block_.L_400a7c:                                  ; preds = %block_.L_400a58, %block_400a46
  %752 = phi i64 [ %.pre83, %block_.L_400a58 ], [ %713, %block_400a46 ]
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -896
  %755 = add i64 %752, 8
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  %.cast = bitcast i64 %757 to <2 x i32>
  %.cast20 = bitcast i64 %757 to double
  %758 = fptrunc double %.cast20 to float
  store float %758, float* %46, align 1
  %759 = extractelement <2 x i32> %.cast, i32 1
  store i32 %759, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %760 = add i64 %753, -28
  %761 = add i64 %752, 17
  store i64 %761, i64* %3, align 8
  %762 = load <2 x float>, <2 x float>* %83, align 1
  %763 = extractelement <2 x float> %762, i32 0
  %764 = inttoptr i64 %760 to float*
  store float %763, float* %764, align 4
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -24
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 5
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %766 to float*
  %770 = load float, float* %769, align 4
  %771 = fpext float %770 to double
  store double %771, double* %212, align 1
  %772 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %773 = sext i32 %772 to i64
  store i64 %773, i64* %RAX.i1480, align 8
  %774 = shl nsw i64 %773, 2
  %775 = add nsw i64 %774, 6470896
  %776 = add i64 %767, 22
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to float*
  %778 = load float, float* %777, align 4
  %779 = fpext float %778 to double
  store double %779, double* %220, align 1
  %780 = add i64 %767, 9219
  %781 = add i64 %767, 29
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = add i64 %767, 9223
  %785 = inttoptr i64 %784 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = add i64 %767, 9227
  %788 = inttoptr i64 %787 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = add i64 %767, 9231
  %791 = inttoptr i64 %790 to i32*
  %792 = load i32, i32* %791, align 4
  store i32 %783, i32* %587, align 1
  store i32 %786, i32* %589, align 1
  store i32 %789, i32* %591, align 1
  store i32 %792, i32* %593, align 1
  %793 = bitcast double %779 to i64
  %794 = load i64, i64* %222, align 1
  %795 = load i64, i64* %594, align 1
  %796 = load i64, i64* %590, align 1
  %797 = and i64 %795, %793
  %798 = and i64 %796, %794
  %799 = trunc i64 %797 to i32
  %800 = lshr i64 %797, 32
  %801 = trunc i64 %800 to i32
  store i32 %799, i32* %595, align 1
  store i32 %801, i32* %597, align 1
  %802 = trunc i64 %798 to i32
  store i32 %802, i32* %598, align 1
  %803 = lshr i64 %798, 32
  %804 = trunc i64 %803 to i32
  store i32 %804, i32* %600, align 1
  %805 = add i64 %767, 37
  store i64 %805, i64* %3, align 8
  %806 = load double, double* %220, align 1
  %807 = fcmp uno double %771, %806
  br i1 %807, label %808, label %818

; <label>:808:                                    ; preds = %block_.L_400a7c
  %809 = fadd double %771, %806
  %810 = bitcast double %809 to i64
  %811 = and i64 %810, 9221120237041090560
  %812 = icmp eq i64 %811, 9218868437227405312
  %813 = and i64 %810, 2251799813685247
  %814 = icmp ne i64 %813, 0
  %815 = and i1 %812, %814
  br i1 %815, label %816, label %824

; <label>:816:                                    ; preds = %808
  %817 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %805, %struct.Memory* %699)
  %.pre84 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:818:                                    ; preds = %block_.L_400a7c
  %819 = fcmp ogt double %771, %806
  br i1 %819, label %824, label %820

; <label>:820:                                    ; preds = %818
  %821 = fcmp olt double %771, %806
  br i1 %821, label %824, label %822

; <label>:822:                                    ; preds = %820
  %823 = fcmp oeq double %771, %806
  br i1 %823, label %824, label %828

; <label>:824:                                    ; preds = %822, %820, %818, %808
  %825 = phi i8 [ 0, %818 ], [ 0, %820 ], [ 1, %822 ], [ 1, %808 ]
  %826 = phi i8 [ 0, %818 ], [ 0, %820 ], [ 0, %822 ], [ 1, %808 ]
  %827 = phi i8 [ 0, %818 ], [ 1, %820 ], [ 0, %822 ], [ 1, %808 ]
  store i8 %825, i8* %30, align 1
  store i8 %826, i8* %21, align 1
  store i8 %827, i8* %14, align 1
  br label %828

; <label>:828:                                    ; preds = %824, %822
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %828, %816
  %829 = phi i64 [ %.pre84, %816 ], [ %805, %828 ]
  %830 = phi %struct.Memory* [ %817, %816 ], [ %699, %828 ]
  %831 = load i8, i8* %14, align 1
  %832 = load i8, i8* %30, align 1
  %833 = or i8 %832, %831
  %834 = icmp ne i8 %833, 0
  %.v119 = select i1 %834, i64 24, i64 6
  %835 = add i64 %829, %.v119
  store i64 %835, i64* %3, align 8
  br i1 %834, label %block_.L_400aca, label %block_400ab8

block_400ab8:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -24
  %838 = add i64 %835, 5
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to float*
  %840 = load float, float* %839, align 4
  %841 = fpext float %840 to double
  store double %841, double* %212, align 1
  %842 = add i64 %836, -904
  %843 = add i64 %835, 13
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to double*
  store double %841, double* %844, align 8
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, 41
  store i64 %846, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400aca:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %847 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RAX.i1480, align 8
  %849 = shl nsw i64 %848, 2
  %850 = add nsw i64 %849, 6470896
  %851 = add i64 %835, 17
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to float*
  %853 = load float, float* %852, align 4
  %854 = fpext float %853 to double
  store double %854, double* %212, align 1
  %855 = add i64 %835, 9158
  %856 = add i64 %835, 24
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i64 %835, 9162
  %860 = inttoptr i64 %859 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = add i64 %835, 9166
  %863 = inttoptr i64 %862 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i64 %835, 9170
  %866 = inttoptr i64 %865 to i32*
  %867 = load i32, i32* %866, align 4
  store i32 %858, i32* %595, align 1
  store i32 %861, i32* %597, align 1
  store i32 %864, i32* %598, align 1
  store i32 %867, i32* %600, align 1
  %868 = bitcast double %854 to i64
  %869 = load i64, i64* %50, align 1
  %870 = load i64, i64* %221, align 1
  %871 = load i64, i64* %222, align 1
  %872 = and i64 %870, %868
  %873 = and i64 %871, %869
  %874 = trunc i64 %872 to i32
  %875 = lshr i64 %872, 32
  %876 = trunc i64 %875 to i32
  store i32 %874, i32* %47, align 1
  store i32 %876, i32* %275, align 1
  %877 = trunc i64 %873 to i32
  store i32 %877, i32* %277, align 1
  %878 = lshr i64 %873, 32
  %879 = trunc i64 %878 to i32
  store i32 %879, i32* %279, align 1
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -904
  %882 = add i64 %835, 36
  store i64 %882, i64* %3, align 8
  %883 = load i64, i64* %213, align 1
  %884 = inttoptr i64 %881 to i64*
  store i64 %883, i64* %884, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400aee:                                  ; preds = %block_.L_400aca, %block_400ab8
  %885 = phi i64 [ %.pre85, %block_.L_400aca ], [ %846, %block_400ab8 ]
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -904
  %888 = add i64 %885, 8
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  %.cast21 = bitcast i64 %890 to <2 x i32>
  %.cast22 = bitcast i64 %890 to double
  %891 = fptrunc double %.cast22 to float
  store float %891, float* %46, align 1
  %892 = extractelement <2 x i32> %.cast21, i32 1
  store i32 %892, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %893 = add i64 %886, -24
  %894 = add i64 %885, 17
  store i64 %894, i64* %3, align 8
  %895 = load <2 x float>, <2 x float>* %83, align 1
  %896 = extractelement <2 x float> %895, i32 0
  %897 = inttoptr i64 %893 to float*
  store float %896, float* %897, align 4
  %898 = load i64, i64* %3, align 8
  %899 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %900 = add i32 %899, 1
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i1480, align 8
  %902 = icmp eq i32 %899, -1
  %903 = icmp eq i32 %900, 0
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = and i32 %900, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i32 %900, %899
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %27, align 1
  %915 = zext i1 %903 to i8
  store i8 %915, i8* %30, align 1
  %916 = lshr i32 %900, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %33, align 1
  %918 = lshr i32 %899, 31
  %919 = xor i32 %916, %918
  %920 = add nuw nsw i32 %919, %916
  %921 = icmp eq i32 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %39, align 1
  store i32 %900, i32* inttoptr (i64 6470892 to i32*), align 4
  %923 = add i64 %898, -248
  store i64 %923, i64* %3, align 8
  br label %block_.L_400a07

block_.L_400b15:                                  ; preds = %block_.L_400a07
  %924 = add i64 %631, 8999
  %925 = add i64 %631, 8
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  store i32 %927, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %928 = add i64 %631, 7323
  %929 = add i64 %631, 13
  %930 = load i64, i64* %6, align 8
  %931 = add i64 %930, -8
  %932 = inttoptr i64 %931 to i64*
  store i64 %929, i64* %932, align 8
  store i64 %931, i64* %6, align 8
  store i64 %928, i64* %3, align 8
  %call2_400b1d = tail call %struct.Memory* @sub_4027b0.epslon(%struct.State* nonnull %0, i64 %928, %struct.Memory* %MEMORY.2)
  %933 = load i64, i64* %3, align 8
  store i64 4206404, i64* %RSI.i1153, align 8
  %934 = add i64 %933, 8986
  %935 = add i64 %933, 18
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = bitcast %union.VectorReg* %215 to float*
  store i32 %937, i32* %595, align 1
  %939 = bitcast i8* %596 to float*
  store float 0.000000e+00, float* %939, align 1
  %940 = bitcast i64* %222 to float*
  store float 0.000000e+00, float* %940, align 1
  %941 = bitcast i8* %599 to float*
  store float 0.000000e+00, float* %941, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -36
  %944 = add i64 %933, 23
  store i64 %944, i64* %3, align 8
  %945 = load <2 x float>, <2 x float>* %83, align 1
  %946 = extractelement <2 x float> %945, i32 0
  %947 = inttoptr i64 %943 to float*
  store float %946, float* %947, align 4
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -28
  %950 = load i64, i64* %3, align 8
  %951 = add i64 %950, 5
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952, align 4
  store i32 %953, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %954 = bitcast %union.VectorReg* %244 to <2 x i32>*
  %955 = load <2 x i32>, <2 x i32>* %954, align 1
  %956 = bitcast i64* %590 to <2 x i32>*
  %957 = load <2 x i32>, <2 x i32>* %956, align 1
  %958 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %959 = sitofp i32 %958 to float
  %960 = bitcast %union.VectorReg* %244 to float*
  store float %959, float* %960, align 1
  %961 = extractelement <2 x i32> %955, i32 1
  store i32 %961, i32* %589, align 1
  %962 = extractelement <2 x i32> %957, i32 0
  store i32 %962, i32* %591, align 1
  %963 = extractelement <2 x i32> %957, i32 1
  store i32 %963, i32* %593, align 1
  %964 = add i64 %948, -20
  %965 = add i64 %950, 19
  store i64 %965, i64* %3, align 8
  %966 = bitcast %union.VectorReg* %244 to <2 x float>*
  %967 = load <2 x float>, <2 x float>* %966, align 1
  %968 = load <2 x i32>, <2 x i32>* %956, align 1
  %969 = inttoptr i64 %964 to float*
  %970 = load float, float* %969, align 4
  %971 = extractelement <2 x float> %967, i32 0
  %972 = fmul float %971, %970
  store float %972, float* %960, align 1
  %973 = bitcast <2 x float> %967 to <2 x i32>
  %974 = extractelement <2 x i32> %973, i32 1
  store i32 %974, i32* %589, align 1
  %975 = extractelement <2 x i32> %968, i32 0
  store i32 %975, i32* %591, align 1
  %976 = extractelement <2 x i32> %968, i32 1
  store i32 %976, i32* %593, align 1
  %977 = add i64 %948, -24
  %978 = add i64 %950, 24
  store i64 %978, i64* %3, align 8
  %979 = load <2 x float>, <2 x float>* %966, align 1
  %980 = load <2 x i32>, <2 x i32>* %956, align 1
  %981 = inttoptr i64 %977 to float*
  %982 = load float, float* %981, align 4
  %983 = extractelement <2 x float> %979, i32 0
  %984 = fmul float %983, %982
  store float %984, float* %960, align 1
  %985 = bitcast <2 x float> %979 to <2 x i32>
  %986 = extractelement <2 x i32> %985, i32 1
  store i32 %986, i32* %589, align 1
  %987 = extractelement <2 x i32> %980, i32 0
  store i32 %987, i32* %591, align 1
  %988 = extractelement <2 x i32> %980, i32 1
  store i32 %988, i32* %593, align 1
  %989 = add i64 %948, -36
  %990 = add i64 %950, 29
  store i64 %990, i64* %3, align 8
  %991 = load <2 x float>, <2 x float>* %966, align 1
  %992 = load <2 x i32>, <2 x i32>* %956, align 1
  %993 = inttoptr i64 %989 to float*
  %994 = load float, float* %993, align 4
  %995 = extractelement <2 x float> %991, i32 0
  %996 = fmul float %995, %994
  store float %996, float* %960, align 1
  %997 = bitcast <2 x float> %991 to <2 x i32>
  %998 = extractelement <2 x i32> %997, i32 1
  store i32 %998, i32* %589, align 1
  %999 = extractelement <2 x i32> %992, i32 0
  store i32 %999, i32* %591, align 1
  %1000 = extractelement <2 x i32> %992, i32 1
  store i32 %1000, i32* %593, align 1
  %1001 = load <2 x float>, <2 x float>* %83, align 1
  %1002 = load <2 x i32>, <2 x i32>* %251, align 1
  %1003 = load <2 x float>, <2 x float>* %966, align 1
  %1004 = extractelement <2 x float> %1001, i32 0
  %1005 = extractelement <2 x float> %1003, i32 0
  %1006 = fdiv float %1004, %1005
  store float %1006, float* %46, align 1
  %1007 = bitcast <2 x float> %1001 to <2 x i32>
  %1008 = extractelement <2 x i32> %1007, i32 1
  store i32 %1008, i32* %275, align 1
  %1009 = extractelement <2 x i32> %1002, i32 0
  store i32 %1009, i32* %277, align 1
  %1010 = extractelement <2 x i32> %1002, i32 1
  store i32 %1010, i32* %279, align 1
  %1011 = add i64 %948, -32
  %1012 = add i64 %950, 38
  store i64 %1012, i64* %3, align 8
  %1013 = load <2 x float>, <2 x float>* %83, align 1
  %1014 = extractelement <2 x float> %1013, i32 0
  %1015 = inttoptr i64 %1011 to float*
  store float %1014, float* %1015, align 4
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -36
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i32*
  %1021 = load i32, i32* %1020, align 4
  store i32 %1021, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %1022 = add i64 %1016, -48
  %1023 = add i64 %1018, 10
  store i64 %1023, i64* %3, align 8
  %1024 = load <2 x float>, <2 x float>* %83, align 1
  %1025 = extractelement <2 x float> %1024, i32 0
  %1026 = inttoptr i64 %1022 to float*
  store float %1025, float* %1026, align 4
  %1027 = load i64, i64* %3, align 8
  %1028 = load i32, i32* inttoptr (i64 6470896 to i32*), align 16
  store i32 %1028, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1029 = load <2 x float>, <2 x float>* %83, align 1
  %1030 = load <2 x i32>, <2 x i32>* %251, align 1
  %1031 = bitcast %union.VectorReg* %215 to <2 x float>*
  %1032 = load <2 x float>, <2 x float>* %1031, align 1
  %1033 = extractelement <2 x float> %1029, i32 0
  %1034 = extractelement <2 x float> %1032, i32 0
  %1035 = fsub float %1033, %1034
  store float %1035, float* %46, align 1
  %1036 = bitcast <2 x float> %1029 to <2 x i32>
  %1037 = extractelement <2 x i32> %1036, i32 1
  store i32 %1037, i32* %275, align 1
  %1038 = extractelement <2 x i32> %1030, i32 0
  store i32 %1038, i32* %277, align 1
  %1039 = extractelement <2 x i32> %1030, i32 1
  store i32 %1039, i32* %279, align 1
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -52
  %1042 = add i64 %1027, 18
  store i64 %1042, i64* %3, align 8
  %1043 = load <2 x float>, <2 x float>* %83, align 1
  %1044 = extractelement <2 x float> %1043, i32 0
  %1045 = inttoptr i64 %1041 to float*
  store float %1044, float* %1045, align 4
  %1046 = load i64, i64* %3, align 8
  %1047 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %1048 = add i32 %1047, -1
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RAX.i1480, align 8
  %1050 = icmp eq i32 %1047, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %14, align 1
  %1052 = and i32 %1048, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %21, align 1
  %1057 = xor i32 %1048, %1047
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %27, align 1
  %1061 = icmp eq i32 %1048, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %30, align 1
  %1063 = lshr i32 %1048, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %33, align 1
  %1065 = lshr i32 %1047, 31
  %1066 = xor i32 %1063, %1065
  %1067 = add nuw nsw i32 %1066, %1065
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %39, align 1
  %1070 = sext i32 %1048 to i64
  store i64 %1070, i64* %RCX.i1478, align 8
  %1071 = shl nsw i64 %1070, 2
  %1072 = add nsw i64 %1071, 6470896
  %1073 = add i64 %1046, 22
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  store i32 %1075, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1076 = load <2 x float>, <2 x float>* %83, align 1
  %1077 = load <2 x i32>, <2 x i32>* %251, align 1
  %1078 = load <2 x float>, <2 x float>* %1031, align 1
  %1079 = extractelement <2 x float> %1076, i32 0
  %1080 = extractelement <2 x float> %1078, i32 0
  %1081 = fsub float %1079, %1080
  store float %1081, float* %46, align 1
  %1082 = bitcast <2 x float> %1076 to <2 x i32>
  %1083 = extractelement <2 x i32> %1082, i32 1
  store i32 %1083, i32* %275, align 1
  %1084 = extractelement <2 x i32> %1077, i32 0
  store i32 %1084, i32* %277, align 1
  %1085 = extractelement <2 x i32> %1077, i32 1
  store i32 %1085, i32* %279, align 1
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -56
  %1088 = add i64 %1046, 31
  store i64 %1088, i64* %3, align 8
  %1089 = load <2 x float>, <2 x float>* %83, align 1
  %1090 = extractelement <2 x float> %1089, i32 0
  %1091 = inttoptr i64 %1087 to float*
  store float %1090, float* %1091, align 4
  %1092 = load i64, i64* %3, align 8
  %1093 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1093, i64* %RDI.i1473, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1094 = add i64 %1092, -1722
  %1095 = add i64 %1092, 15
  %1096 = load i64, i64* %6, align 8
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1095, i64* %1098, align 8
  store i64 %1097, i64* %6, align 8
  store i64 %1094, i64* %3, align 8
  %call2_400ba4 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1094, %struct.Memory* %call2_400b1d)
  %1099 = load i64, i64* %3, align 8
  store i64 4206443, i64* %RSI.i1153, align 8
  %1100 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1100, i64* %RDI.i1473, align 8
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -908
  %1103 = load i32, i32* %EAX.i1406, align 4
  %1104 = add i64 %1099, 24
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to i32*
  store i32 %1103, i32* %1105, align 4
  %1106 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1107 = add i64 %1106, -1761
  %1108 = add i64 %1106, 7
  %1109 = load i64, i64* %6, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1108, i64* %1111, align 8
  store i64 %1110, i64* %6, align 8
  store i64 %1107, i64* %3, align 8
  %call2_400bc3 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1107, %struct.Memory* %call2_400ba4)
  %1112 = load i64, i64* %3, align 8
  store i64 4206478, i64* %RSI.i1153, align 8
  %1113 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1113, i64* %RDI.i1473, align 8
  %1114 = load i64, i64* %RBP.i, align 8
  %1115 = add i64 %1114, -32
  %1116 = add i64 %1112, 23
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to float*
  %1118 = load float, float* %1117, align 4
  %1119 = fpext float %1118 to double
  store double %1119, double* %212, align 1
  %1120 = add i64 %1114, -28
  %1121 = add i64 %1112, 28
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to float*
  %1123 = load float, float* %1122, align 4
  %1124 = fpext float %1123 to double
  store double %1124, double* %220, align 1
  %1125 = add i64 %1114, -48
  %1126 = add i64 %1112, 33
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to float*
  %1128 = load float, float* %1127, align 4
  %1129 = fpext float %1128 to double
  store double %1129, double* %247, align 1
  %1130 = add i64 %1114, -52
  %1131 = add i64 %1112, 38
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to float*
  %1133 = load float, float* %1132, align 4
  %1134 = fpext float %1133 to double
  store double %1134, double* %261, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1136 = add i64 %1114, -56
  %1137 = add i64 %1112, 43
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to float*
  %1139 = load float, float* %1138, align 4
  %1140 = fpext float %1139 to double
  %1141 = bitcast %union.VectorReg* %1135 to double*
  store double %1140, double* %1141, align 1
  %1142 = add i64 %1114, -912
  %1143 = load i32, i32* %EAX.i1406, align 4
  %1144 = add i64 %1112, 49
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1142 to i32*
  store i32 %1143, i32* %1145, align 4
  %1146 = load i64, i64* %3, align 8
  store i8 5, i8* %AL.i1414, align 1
  %1147 = add i64 %1146, -1817
  %1148 = add i64 %1146, 7
  %1149 = load i64, i64* %6, align 8
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1148, i64* %1151, align 8
  store i64 %1150, i64* %6, align 8
  store i64 %1147, i64* %3, align 8
  %call2_400bfb = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1147, %struct.Memory* %call2_400bc3)
  %1152 = load i64, i64* %3, align 8
  store i64 4206511, i64* %RSI.i1153, align 8
  %1153 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1153, i64* %RDI.i1473, align 8
  %1154 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RDX.i1476, align 8
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -916
  %1158 = load i32, i32* %EAX.i1406, align 4
  %1159 = add i64 %1152, 31
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1157 to i32*
  store i32 %1158, i32* %1160, align 4
  %1161 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1162 = add i64 %1161, -1855
  %1163 = add i64 %1161, 7
  %1164 = load i64, i64* %6, align 8
  %1165 = add i64 %1164, -8
  %1166 = inttoptr i64 %1165 to i64*
  store i64 %1163, i64* %1166, align 8
  store i64 %1165, i64* %6, align 8
  store i64 %1162, i64* %3, align 8
  %call2_400c21 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1162, %struct.Memory* %call2_400bfb)
  %1167 = load i64, i64* %3, align 8
  store i64 4206564, i64* %RSI.i1153, align 8
  %1168 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1168, i64* %RDI.i1473, align 8
  %1169 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RDX.i1476, align 8
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -920
  %1173 = load i32, i32* %EAX.i1406, align 4
  %1174 = add i64 %1167, 31
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1172 to i32*
  store i32 %1173, i32* %1175, align 4
  %1176 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1177 = add i64 %1176, -1893
  %1178 = add i64 %1176, 7
  %1179 = load i64, i64* %6, align 8
  %1180 = add i64 %1179, -8
  %1181 = inttoptr i64 %1180 to i64*
  store i64 %1178, i64* %1181, align 8
  store i64 %1180, i64* %6, align 8
  store i64 %1177, i64* %3, align 8
  %call2_400c47 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1177, %struct.Memory* %call2_400c21)
  %1182 = load i64, i64* %3, align 8
  store i64 4206618, i64* %RSI.i1153, align 8
  %1183 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1183, i64* %RDI.i1473, align 8
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -924
  %1186 = load i32, i32* %EAX.i1406, align 4
  %1187 = add i64 %1182, 24
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1185 to i32*
  store i32 %1186, i32* %1188, align 4
  %1189 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1190 = add i64 %1189, -1924
  %1191 = add i64 %1189, 7
  %1192 = load i64, i64* %6, align 8
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1191, i64* %1194, align 8
  store i64 %1193, i64* %6, align 8
  store i64 %1190, i64* %3, align 8
  %call2_400c66 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1190, %struct.Memory* %call2_400c47)
  %1195 = load i64, i64* %3, align 8
  store i64 4206674, i64* %RSI.i1153, align 8
  %1196 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1196, i64* %RDI.i1473, align 8
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -928
  %1199 = load i32, i32* %EAX.i1406, align 4
  %1200 = add i64 %1195, 24
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1198 to i32*
  store i32 %1199, i32* %1201, align 4
  %1202 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1203 = add i64 %1202, -1955
  %1204 = add i64 %1202, 7
  %1205 = load i64, i64* %6, align 8
  %1206 = add i64 %1205, -8
  %1207 = inttoptr i64 %1206 to i64*
  store i64 %1204, i64* %1207, align 8
  store i64 %1206, i64* %6, align 8
  store i64 %1203, i64* %3, align 8
  %call2_400c85 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1203, %struct.Memory* %call2_400c66)
  %1208 = load i64, i64* %3, align 8
  store i32 0, i32* %47, align 1
  store i32 0, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -16
  %1211 = add i64 %1208, 8
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  store i32 %1213, i32* %595, align 1
  store float 0.000000e+00, float* %939, align 1
  store float 0.000000e+00, float* %940, align 1
  store float 0.000000e+00, float* %941, align 1
  %1214 = load <2 x float>, <2 x float>* %1031, align 1
  %1215 = extractelement <2 x float> %1214, i32 0
  store float %1215, float* inttoptr (i64 6470472 to float*), align 8
  %1216 = add i64 %1208, 22
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1210 to float*
  %1218 = load float, float* %1217, align 4
  %1219 = fpext float %1218 to double
  store double %1219, double* %220, align 1
  %1220 = add i64 %1208, 26
  store i64 %1220, i64* %3, align 8
  %1221 = load double, double* %212, align 1
  %1222 = fcmp uno double %1219, %1221
  br i1 %1222, label %1223, label %1233

; <label>:1223:                                   ; preds = %block_.L_400b15
  %1224 = fadd double %1219, %1221
  %1225 = bitcast double %1224 to i64
  %1226 = and i64 %1225, 9221120237041090560
  %1227 = icmp eq i64 %1226, 9218868437227405312
  %1228 = and i64 %1225, 2251799813685247
  %1229 = icmp ne i64 %1228, 0
  %1230 = and i1 %1227, %1229
  br i1 %1230, label %1231, label %1239

; <label>:1231:                                   ; preds = %1223
  %1232 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1220, %struct.Memory* %call2_400c85)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1233:                                   ; preds = %block_.L_400b15
  %1234 = fcmp ogt double %1219, %1221
  br i1 %1234, label %1239, label %1235

; <label>:1235:                                   ; preds = %1233
  %1236 = fcmp olt double %1219, %1221
  br i1 %1236, label %1239, label %1237

; <label>:1237:                                   ; preds = %1235
  %1238 = fcmp oeq double %1219, %1221
  br i1 %1238, label %1239, label %1243

; <label>:1239:                                   ; preds = %1237, %1235, %1233, %1223
  %1240 = phi i8 [ 0, %1233 ], [ 0, %1235 ], [ 1, %1237 ], [ 1, %1223 ]
  %1241 = phi i8 [ 0, %1233 ], [ 0, %1235 ], [ 0, %1237 ], [ 1, %1223 ]
  %1242 = phi i8 [ 0, %1233 ], [ 1, %1235 ], [ 0, %1237 ], [ 1, %1223 ]
  store i8 %1240, i8* %30, align 1
  store i8 %1241, i8* %21, align 1
  store i8 %1242, i8* %14, align 1
  br label %1243

; <label>:1243:                                   ; preds = %1239, %1237
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1243, %1231
  %1244 = phi i64 [ %.pre70, %1231 ], [ %1220, %1243 ]
  %1245 = phi i64 [ %.pre, %1231 ], [ %1209, %1243 ]
  %1246 = phi %struct.Memory* [ %1232, %1231 ], [ %call2_400c85, %1243 ]
  %1247 = add i64 %1245, -932
  %1248 = load i32, i32* %EAX.i1406, align 4
  %1249 = add i64 %1244, 6
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1247 to i32*
  store i32 %1248, i32* %1250, align 4
  %1251 = load i64, i64* %3, align 8
  %1252 = load i8, i8* %14, align 1
  %1253 = load i8, i8* %30, align 1
  %1254 = or i8 %1253, %1252
  %1255 = icmp ne i8 %1254, 0
  %.v118 = select i1 %1255, i64 84, i64 6
  %1256 = add i64 %1251, %.v118
  store i64 %1256, i64* %3, align 8
  br i1 %1255, label %block_.L_400cfe, label %block_400cb0

block_400cb0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1257 = add i64 %1256, 8600
  %1258 = add i64 %1256, 8
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %213, align 1
  store double 0.000000e+00, double* %214, align 1
  %1261 = add i64 %1256, 8616
  %1262 = add i64 %1256, 16
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i64*
  %1264 = load i64, i64* %1263, align 8
  store i64 %1264, i64* %221, align 1
  store double 0.000000e+00, double* %223, align 1
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -12
  %1267 = add i64 %1256, 21
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to float*
  %1269 = load float, float* %1268, align 4
  %1270 = fpext float %1269 to double
  store double %1270, double* %247, align 1
  %1271 = add i64 %1265, -16
  %1272 = add i64 %1256, 26
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to float*
  %1274 = load float, float* %1273, align 4
  %1275 = fpext float %1274 to double
  store double %1275, double* %261, align 1
  %1276 = bitcast i64 %1264 to double
  %1277 = fmul double %1275, %1276
  %1278 = fdiv double %1270, %1277
  store double %1278, double* %247, align 1
  %1279 = bitcast double %1277 to <2 x i32>
  %1280 = fptrunc double %1278 to float
  store float %1280, float* %938, align 1
  %1281 = extractelement <2 x i32> %1279, i32 1
  store i32 %1281, i32* %597, align 1
  store i32 0, i32* %598, align 1
  store i32 0, i32* %600, align 1
  %1282 = load <2 x float>, <2 x float>* %1031, align 1
  %1283 = extractelement <2 x float> %1282, i32 0
  store float %1283, float* inttoptr (i64 6470532 to float*), align 4
  %1284 = fpext float %1283 to double
  store double %1284, double* %220, align 1
  %1285 = bitcast i64 %1260 to double
  %1286 = fdiv double %1285, %1284
  %.cast23 = bitcast double %1286 to <2 x i32>
  %1287 = fptrunc double %1286 to float
  store float %1287, float* %46, align 1
  %1288 = extractelement <2 x i32> %.cast23, i32 1
  store i32 %1288, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %1289 = load <2 x float>, <2 x float>* %83, align 1
  %1290 = extractelement <2 x float> %1289, i32 0
  store float %1290, float* inttoptr (i64 6470592 to float*), align 64
  %1291 = add i64 %1256, 99
  store i64 %1291, i64* %3, align 8
  br label %block_.L_400d13

block_.L_400cfe:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1292 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1292, align 1
  %1293 = load <2 x float>, <2 x float>* %83, align 1
  %1294 = extractelement <2 x float> %1293, i32 0
  store float %1294, float* inttoptr (i64 6470532 to float*), align 4
  %1295 = add i64 %1256, 21
  store i64 %1295, i64* %3, align 8
  store float %1294, float* inttoptr (i64 6470592 to float*), align 64
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d13

block_.L_400d13:                                  ; preds = %block_.L_400cfe, %block_400cb0
  %1296 = phi i64 [ %.pre71, %block_.L_400cfe ], [ %1265, %block_400cb0 ]
  %1297 = phi i64 [ %1295, %block_.L_400cfe ], [ %1291, %block_400cb0 ]
  %.pre-phi = bitcast %union.VectorReg* %215 to <2 x i32>*
  %.pre-phi88 = bitcast i64* %222 to <2 x i32>*
  store i64 0, i64* %RDI.i1473, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1298 = add i64 %1296, -16
  %1299 = add i64 %1297, 7
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  store i32 %1301, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1302 = add i64 %1296, -8
  %1303 = add i64 %1297, 12
  store i64 %1303, i64* %3, align 8
  %1304 = load <2 x float>, <2 x float>* %83, align 1
  %1305 = load <2 x i32>, <2 x i32>* %251, align 1
  %1306 = inttoptr i64 %1302 to float*
  %1307 = load float, float* %1306, align 4
  %1308 = extractelement <2 x float> %1304, i32 0
  %1309 = fdiv float %1308, %1307
  store float %1309, float* %46, align 1
  %1310 = bitcast <2 x float> %1304 to <2 x i32>
  %1311 = extractelement <2 x i32> %1310, i32 1
  store i32 %1311, i32* %275, align 1
  %1312 = extractelement <2 x i32> %1305, i32 0
  store i32 %1312, i32* %277, align 1
  %1313 = extractelement <2 x i32> %1305, i32 1
  store i32 %1313, i32* %279, align 1
  %1314 = load <2 x float>, <2 x float>* %83, align 1
  %1315 = extractelement <2 x float> %1314, i32 0
  store float %1315, float* inttoptr (i64 6470652 to float*), align 4
  %1316 = add i64 %1297, 6989
  %1317 = add i64 %1297, 26
  %1318 = load i64, i64* %6, align 8
  %1319 = add i64 %1318, -8
  %1320 = inttoptr i64 %1319 to i64*
  store i64 %1317, i64* %1320, align 8
  store i64 %1319, i64* %6, align 8
  store i64 %1316, i64* %3, align 8
  %call2_400d28 = tail call %struct.Memory* @sub_402860.print_time(%struct.State* nonnull %0, i64 %1316, %struct.Memory* %1246)
  %1321 = load i64, i64* %3, align 8
  store i64 4206687, i64* %RSI.i1153, align 8
  %1322 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1322, i64* %RDI.i1473, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1323 = add i64 %1321, -2125
  %1324 = add i64 %1321, 25
  %1325 = load i64, i64* %6, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1324, i64* %1327, align 8
  store i64 %1326, i64* %6, align 8
  store i64 %1323, i64* %3, align 8
  %call2_400d41 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1323, %struct.Memory* %call2_400d28)
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -64
  %1330 = load i64, i64* %3, align 8
  %1331 = add i64 %1330, 7
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1329 to i32*
  store i32 -3, i32* %1332, align 4
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -68
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, 7
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1334 to i32*
  store i32 100, i32* %1337, align 4
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -936
  %1340 = load i32, i32* %EAX.i1406, align 4
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, 6
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1339 to i32*
  store i32 %1340, i32* %1343, align 4
  %.pre72 = load i64, i64* %3, align 8
  %1344 = bitcast %union.VectorReg* %215 to <4 x i32>*
  br label %block_.L_400d5a

block_.L_400d5a:                                  ; preds = %block_.L_400e1d, %block_.L_400d13
  %1345 = phi i64 [ %1582, %block_.L_400e1d ], [ %.pre72, %block_.L_400d13 ]
  %1346 = add i64 %1345, -1914
  %1347 = add i64 %1345, 5
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, -8
  %1350 = inttoptr i64 %1349 to i64*
  store i64 %1347, i64* %1350, align 8
  store i64 %1349, i64* %6, align 8
  store i64 %1346, i64* %3, align 8
  %call2_400d5a = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %1346, %struct.Memory* %call2_400d41)
  %1351 = load i64, i64* %RBP.i, align 8
  %1352 = add i64 %1351, -80
  %1353 = load i64, i64* %3, align 8
  %1354 = add i64 %1353, 5
  store i64 %1354, i64* %3, align 8
  %1355 = load <2 x float>, <2 x float>* %83, align 1
  %1356 = extractelement <2 x float> %1355, i32 0
  %1357 = inttoptr i64 %1352 to float*
  store float %1356, float* %1357, align 4
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -64
  %1360 = load i64, i64* %3, align 8
  %1361 = add i64 %1360, 3
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1359 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = add i32 %1363, 1
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i1480, align 8
  %1366 = icmp eq i32 %1363, -1
  %1367 = icmp eq i32 %1364, 0
  %1368 = or i1 %1366, %1367
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %14, align 1
  %1370 = and i32 %1364, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i32 %1364, %1363
  %1376 = lshr i32 %1375, 4
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %27, align 1
  %1379 = zext i1 %1367 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i32 %1364, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %33, align 1
  %1382 = lshr i32 %1363, 31
  %1383 = xor i32 %1380, %1382
  %1384 = add nuw nsw i32 %1383, %1380
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %39, align 1
  %1387 = add i64 %1360, 9
  store i64 %1387, i64* %3, align 8
  store i32 %1364, i32* %1362, align 4
  %1388 = load i64, i64* %3, align 8
  %1389 = add i64 %1388, 11
  store i64 %1389, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_400d78

block_.L_400d78:                                  ; preds = %block_400d88, %block_.L_400d5a
  %1390 = phi i32 [ %1437, %block_400d88 ], [ 0, %block_.L_400d5a ]
  %1391 = phi i64 [ %1460, %block_400d88 ], [ %1389, %block_.L_400d5a ]
  %1392 = zext i32 %1390 to i64
  store i64 %1392, i64* %RAX.i1480, align 8
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -68
  %1395 = add i64 %1391, 10
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = sub i32 %1390, %1397
  %1399 = icmp ult i32 %1390, %1397
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = and i32 %1398, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i32 %1397, %1390
  %1407 = xor i32 %1406, %1398
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %27, align 1
  %1411 = icmp eq i32 %1398, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %30, align 1
  %1413 = lshr i32 %1398, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %33, align 1
  %1415 = lshr i32 %1390, 31
  %1416 = lshr i32 %1397, 31
  %1417 = xor i32 %1416, %1415
  %1418 = xor i32 %1413, %1415
  %1419 = add nuw nsw i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %39, align 1
  %1422 = icmp ne i8 %1414, 0
  %1423 = xor i1 %1422, %1420
  %.v92 = select i1 %1423, i64 16, i64 81
  %1424 = add i64 %1391, %.v92
  store i64 %1424, i64* %3, align 8
  br i1 %1423, label %block_400d88, label %block_.L_400dc9

block_400d88:                                     ; preds = %block_.L_400d78
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %1425 = add i64 %1393, -20
  store i64 %1425, i64* %57, align 8
  %1426 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RSI.i1153, align 8
  %1428 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RDX.i1476, align 8
  %1430 = add i64 %1424, 2504
  %1431 = add i64 %1424, 43
  %1432 = load i64, i64* %6, align 8
  %1433 = add i64 %1432, -8
  %1434 = inttoptr i64 %1433 to i64*
  store i64 %1431, i64* %1434, align 8
  store i64 %1433, i64* %6, align 8
  store i64 %1430, i64* %3, align 8
  %call2_400dae = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %1430, %struct.Memory* %call2_400d41)
  %1435 = load i64, i64* %3, align 8
  %1436 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %1437 = add i32 %1436, 1
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RAX.i1480, align 8
  %1439 = icmp eq i32 %1436, -1
  %1440 = icmp eq i32 %1437, 0
  %1441 = or i1 %1439, %1440
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %14, align 1
  %1443 = and i32 %1437, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  %1448 = xor i32 %1437, %1436
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %27, align 1
  %1452 = zext i1 %1440 to i8
  store i8 %1452, i8* %30, align 1
  %1453 = lshr i32 %1437, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %33, align 1
  %1455 = lshr i32 %1436, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1453
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %39, align 1
  store i32 %1437, i32* inttoptr (i64 6470892 to i32*), align 4
  %1460 = add i64 %1435, -59
  store i64 %1460, i64* %3, align 8
  br label %block_.L_400d78

block_.L_400dc9:                                  ; preds = %block_.L_400d78
  %1461 = add i64 %1424, -2025
  %1462 = add i64 %1424, 5
  %1463 = load i64, i64* %6, align 8
  %1464 = add i64 %1463, -8
  %1465 = inttoptr i64 %1464 to i64*
  store i64 %1462, i64* %1465, align 8
  store i64 %1464, i64* %6, align 8
  store i64 %1461, i64* %3, align 8
  %call2_400dc9 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %1461, %struct.Memory* %call2_400d41)
  %1466 = load i64, i64* %3, align 8
  store i64 4206717, i64* %RSI.i1153, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %1344, align 1
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -84
  %1469 = add i64 %1466, 18
  store i64 %1469, i64* %3, align 8
  %1470 = load <2 x float>, <2 x float>* %83, align 1
  %1471 = extractelement <2 x float> %1470, i32 0
  %1472 = inttoptr i64 %1468 to float*
  store float %1471, float* %1472, align 4
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -84
  %1475 = load i64, i64* %3, align 8
  %1476 = add i64 %1475, 5
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1474 to i32*
  %1478 = load i32, i32* %1477, align 4
  store i32 %1478, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1479 = add i64 %1473, -80
  %1480 = add i64 %1475, 10
  store i64 %1480, i64* %3, align 8
  %1481 = load <2 x float>, <2 x float>* %83, align 1
  %1482 = load <2 x i32>, <2 x i32>* %251, align 1
  %1483 = inttoptr i64 %1479 to float*
  %1484 = load float, float* %1483, align 4
  %1485 = extractelement <2 x float> %1481, i32 0
  %1486 = fsub float %1485, %1484
  store float %1486, float* %46, align 1
  %1487 = bitcast <2 x float> %1481 to <2 x i32>
  %1488 = extractelement <2 x i32> %1487, i32 1
  store i32 %1488, i32* %275, align 1
  %1489 = extractelement <2 x i32> %1482, i32 0
  store i32 %1489, i32* %277, align 1
  %1490 = extractelement <2 x i32> %1482, i32 1
  store i32 %1490, i32* %279, align 1
  %1491 = add i64 %1473, -72
  %1492 = add i64 %1475, 15
  store i64 %1492, i64* %3, align 8
  %1493 = load <2 x float>, <2 x float>* %83, align 1
  %1494 = extractelement <2 x float> %1493, i32 0
  %1495 = inttoptr i64 %1491 to float*
  store float %1494, float* %1495, align 4
  %1496 = load i64, i64* %3, align 8
  %1497 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1497, i64* %RDI.i1473, align 8
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -68
  %1500 = add i64 %1496, 11
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RDX.i1476, align 8
  %1504 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1505 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %1506 = extractelement <2 x i32> %1504, i32 0
  store i32 %1506, i32* %47, align 1
  %1507 = extractelement <2 x i32> %1504, i32 1
  store i32 %1507, i32* %275, align 1
  %1508 = extractelement <2 x i32> %1505, i32 0
  store i32 %1508, i32* %277, align 1
  %1509 = extractelement <2 x i32> %1505, i32 1
  store i32 %1509, i32* %279, align 1
  store i8 1, i8* %AL.i1414, align 1
  %1510 = add i64 %1496, -2319
  %1511 = add i64 %1496, 21
  %1512 = load i64, i64* %6, align 8
  %1513 = add i64 %1512, -8
  %1514 = inttoptr i64 %1513 to i64*
  store i64 %1511, i64* %1514, align 8
  store i64 %1513, i64* %6, align 8
  store i64 %1510, i64* %3, align 8
  %call2_400dff = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1510, %struct.Memory* %call2_400d41)
  %1515 = load i64, i64* %RBP.i, align 8
  %1516 = add i64 %1515, -64
  %1517 = load i64, i64* %3, align 8
  %1518 = add i64 %1517, 4
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1516 to i32*
  %1520 = load i32, i32* %1519, align 4
  store i8 0, i8* %14, align 1
  %1521 = and i32 %1520, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1526 = icmp eq i32 %1520, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %30, align 1
  %1528 = lshr i32 %1520, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1530 = add i64 %1515, -940
  %1531 = load i32, i32* %EAX.i1406, align 4
  %1532 = add i64 %1517, 10
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1530 to i32*
  store i32 %1531, i32* %1533, align 4
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, 15
  %1536 = add i64 %1534, 6
  %1537 = load i8, i8* %33, align 1
  %1538 = icmp ne i8 %1537, 0
  %1539 = load i8, i8* %39, align 1
  %1540 = icmp ne i8 %1539, 0
  %1541 = xor i1 %1538, %1540
  %1542 = select i1 %1541, i64 %1536, i64 %1535
  store i64 %1542, i64* %3, align 8
  br i1 %1541, label %block_400e14, label %block_.L_400e1d

block_400e14:                                     ; preds = %block_.L_400dc9
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -68
  %1545 = add i64 %1542, 3
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = shl i32 %1547, 1
  %1549 = icmp slt i32 %1547, 0
  %1550 = icmp slt i32 %1548, 0
  %1551 = xor i1 %1549, %1550
  %1552 = zext i32 %1548 to i64
  store i64 %1552, i64* %RAX.i1480, align 8
  %.lobit = lshr i32 %1547, 31
  %1553 = trunc i32 %.lobit to i8
  store i8 %1553, i8* %14, align 1
  %1554 = and i32 %1548, 254
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1559 = icmp eq i32 %1548, 0
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %30, align 1
  %1561 = lshr i32 %1547, 30
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %33, align 1
  %1564 = zext i1 %1551 to i8
  store i8 %1564, i8* %39, align 1
  %1565 = add i64 %1542, 8
  store i64 %1565, i64* %3, align 8
  store i32 %1548, i32* %1546, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_400e1d

block_.L_400e1d:                                  ; preds = %block_.L_400dc9, %block_400e14
  %1566 = phi i64 [ %1535, %block_.L_400dc9 ], [ %.pre73, %block_400e14 ]
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -64
  %1569 = add i64 %1566, 9
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  store i8 0, i8* %14, align 1
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1577 = icmp eq i32 %1571, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %30, align 1
  %1579 = lshr i32 %1571, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1581 = icmp ne i8 %1580, 0
  %.v = select i1 %1581, i64 -204, i64 6
  %1582 = add i64 %1569, %.v
  store i64 %1582, i64* %3, align 8
  br i1 %1581, label %block_.L_400d5a, label %block_400e2c

block_400e2c:                                     ; preds = %block_.L_400e1d
  store i64 4206743, i64* %RSI.i1153, align 8
  %1583 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1583, align 1
  %1584 = add i64 %1567, -72
  %1585 = add i64 %1582, 18
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to float*
  %1587 = load float, float* %1586, align 4
  %1588 = fpext float %1587 to double
  store double %1588, double* %220, align 1
  %1589 = add i64 %1567, -68
  %1590 = add i64 %1582, 23
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = sitofp i32 %1592 to double
  store double %1593, double* %247, align 1
  %1594 = bitcast i64* %222 to <2 x i32>*
  %1595 = load <2 x i32>, <2 x i32>* %1594, align 1
  %1596 = fdiv double %1588, %1593
  %.cast25 = bitcast double %1596 to <2 x i32>
  %1597 = fptrunc double %1596 to float
  store float %1597, float* %938, align 1
  %1598 = extractelement <2 x i32> %.cast25, i32 1
  store i32 %1598, i32* %597, align 1
  %1599 = extractelement <2 x i32> %1595, i32 0
  store i32 %1599, i32* %598, align 1
  %1600 = extractelement <2 x i32> %1595, i32 1
  store i32 %1600, i32* %600, align 1
  %1601 = add i64 %1582, 36
  store i64 %1601, i64* %3, align 8
  %1602 = load <2 x float>, <2 x float>* %1031, align 1
  %1603 = extractelement <2 x float> %1602, i32 0
  store float %1603, float* %1586, align 4
  %1604 = load i64, i64* %3, align 8
  %1605 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1605, i64* %RDI.i1473, align 8
  store i8 1, i8* %AL.i1414, align 1
  %1606 = add i64 %1604, -2416
  %1607 = add i64 %1604, 15
  %1608 = load i64, i64* %6, align 8
  %1609 = add i64 %1608, -8
  %1610 = inttoptr i64 %1609 to i64*
  store i64 %1607, i64* %1610, align 8
  store i64 %1609, i64* %6, align 8
  store i64 %1606, i64* %3, align 8
  %call2_400e5a = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1606, %struct.Memory* %call2_400d41)
  %1611 = load i64, i64* %3, align 8
  store i64 4206782, i64* %RSI.i1153, align 8
  %1612 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1612, i64* %RDI.i1473, align 8
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -944
  %1615 = load i32, i32* %EAX.i1406, align 4
  %1616 = add i64 %1611, 24
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to i32*
  store i32 %1615, i32* %1617, align 4
  %1618 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1619 = add i64 %1618, -2455
  %1620 = add i64 %1618, 7
  %1621 = load i64, i64* %6, align 8
  %1622 = add i64 %1621, -8
  %1623 = inttoptr i64 %1622 to i64*
  store i64 %1620, i64* %1623, align 8
  store i64 %1622, i64* %6, align 8
  store i64 %1619, i64* %3, align 8
  %call2_400e79 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1619, %struct.Memory* %call2_400e5a)
  %1624 = load i64, i64* %RBP.i, align 8
  %1625 = add i64 %1624, -64
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, 7
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1625 to i32*
  store i32 -3, i32* %1628, align 4
  %1629 = load i64, i64* %3, align 8
  store i32 100, i32* inttoptr (i64 6471696 to i32*), align 16
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -948
  %1632 = load i32, i32* %EAX.i1406, align 4
  %1633 = add i64 %1629, 17
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i32*
  store i32 %1632, i32* %1634, align 4
  %.pre74 = load i64, i64* %3, align 8
  %1635 = bitcast %union.VectorReg* %215 to <4 x i32>*
  br label %block_.L_400e96

block_.L_400e96:                                  ; preds = %block_.L_400f90, %block_400e2c
  %1636 = phi i64 [ %1858, %block_.L_400f90 ], [ %.pre74, %block_400e2c ]
  %1637 = add i64 %1636, -2230
  %1638 = add i64 %1636, 5
  %1639 = load i64, i64* %6, align 8
  %1640 = add i64 %1639, -8
  %1641 = inttoptr i64 %1640 to i64*
  store i64 %1638, i64* %1641, align 8
  store i64 %1640, i64* %6, align 8
  store i64 %1637, i64* %3, align 8
  %call2_400e96 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %1637, %struct.Memory* %call2_400e79)
  %1642 = load i64, i64* %RBP.i, align 8
  %1643 = add i64 %1642, -80
  %1644 = load i64, i64* %3, align 8
  %1645 = add i64 %1644, 5
  store i64 %1645, i64* %3, align 8
  %1646 = load <2 x float>, <2 x float>* %83, align 1
  %1647 = extractelement <2 x float> %1646, i32 0
  %1648 = inttoptr i64 %1643 to float*
  store float %1647, float* %1648, align 4
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -64
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = add i32 %1654, 1
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i1480, align 8
  %1657 = icmp eq i32 %1654, -1
  %1658 = icmp eq i32 %1655, 0
  %1659 = or i1 %1657, %1658
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %14, align 1
  %1661 = and i32 %1655, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661)
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %21, align 1
  %1666 = xor i32 %1655, %1654
  %1667 = lshr i32 %1666, 4
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  store i8 %1669, i8* %27, align 1
  %1670 = zext i1 %1658 to i8
  store i8 %1670, i8* %30, align 1
  %1671 = lshr i32 %1655, 31
  %1672 = trunc i32 %1671 to i8
  store i8 %1672, i8* %33, align 1
  %1673 = lshr i32 %1654, 31
  %1674 = xor i32 %1671, %1673
  %1675 = add nuw nsw i32 %1674, %1671
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %39, align 1
  %1678 = add i64 %1651, 9
  store i64 %1678, i64* %3, align 8
  store i32 %1655, i32* %1653, align 4
  %1679 = load i64, i64* %3, align 8
  %1680 = add i64 %1679, 11
  store i64 %1680, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_400eb4

block_.L_400eb4:                                  ; preds = %block_400ec8, %block_.L_400e96
  %1681 = phi i32 [ %1735, %block_400ec8 ], [ 0, %block_.L_400e96 ]
  %1682 = phi i64 [ %1758, %block_400ec8 ], [ %1680, %block_.L_400e96 ]
  %1683 = zext i32 %1681 to i64
  store i64 %1683, i64* %RAX.i1480, align 8
  %1684 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %1685 = sub i32 %1681, %1684
  %1686 = icmp ult i32 %1681, %1684
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %14, align 1
  %1688 = and i32 %1685, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %21, align 1
  %1693 = xor i32 %1684, %1681
  %1694 = xor i32 %1693, %1685
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %27, align 1
  %1698 = icmp eq i32 %1685, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %30, align 1
  %1700 = lshr i32 %1685, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %33, align 1
  %1702 = lshr i32 %1681, 31
  %1703 = lshr i32 %1684, 31
  %1704 = xor i32 %1703, %1702
  %1705 = xor i32 %1700, %1702
  %1706 = add nuw nsw i32 %1705, %1704
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %39, align 1
  %1709 = icmp ne i8 %1701, 0
  %1710 = xor i1 %1709, %1707
  %.v93 = select i1 %1710, i64 20, i64 134
  %1711 = add i64 %1682, %.v93
  store i64 %1711, i64* %3, align 8
  br i1 %1710, label %block_400ec8, label %block_.L_400f3a

block_400ec8:                                     ; preds = %block_.L_400eb4
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %1712 = load i64, i64* %RBP.i, align 8
  %1713 = add i64 %1712, -20
  store i64 %1713, i64* %57, align 8
  %1714 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RSI.i1153, align 8
  %1716 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RDX.i1476, align 8
  %1718 = add i64 %1711, 2184
  %1719 = add i64 %1711, 43
  %1720 = load i64, i64* %6, align 8
  %1721 = add i64 %1720, -8
  %1722 = inttoptr i64 %1721 to i64*
  store i64 %1719, i64* %1722, align 8
  store i64 %1721, i64* %6, align 8
  store i64 %1718, i64* %3, align 8
  %call2_400eee = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %1718, %struct.Memory* %call2_400e79)
  %1723 = load i64, i64* %3, align 8
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6470336, i64* %57, align 8
  %1724 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RSI.i1153, align 8
  %1726 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %1727 = zext i32 %1726 to i64
  store i64 %1727, i64* %RDX.i1476, align 8
  %1728 = add i64 %1723, 2605
  %1729 = add i64 %1723, 49
  %1730 = load i64, i64* %6, align 8
  %1731 = add i64 %1730, -8
  %1732 = inttoptr i64 %1731 to i64*
  store i64 %1729, i64* %1732, align 8
  store i64 %1731, i64* %6, align 8
  store i64 %1728, i64* %3, align 8
  %call2_400f1f = tail call %struct.Memory* @sub_401920.dgefa(%struct.State* nonnull %0, i64 %1728, %struct.Memory* %call2_400e79)
  %1733 = load i64, i64* %3, align 8
  %1734 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %1735 = add i32 %1734, 1
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RAX.i1480, align 8
  %1737 = icmp eq i32 %1734, -1
  %1738 = icmp eq i32 %1735, 0
  %1739 = or i1 %1737, %1738
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %14, align 1
  %1741 = and i32 %1735, 255
  %1742 = tail call i32 @llvm.ctpop.i32(i32 %1741)
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  store i8 %1745, i8* %21, align 1
  %1746 = xor i32 %1735, %1734
  %1747 = lshr i32 %1746, 4
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %27, align 1
  %1750 = zext i1 %1738 to i8
  store i8 %1750, i8* %30, align 1
  %1751 = lshr i32 %1735, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %33, align 1
  %1753 = lshr i32 %1734, 31
  %1754 = xor i32 %1751, %1753
  %1755 = add nuw nsw i32 %1754, %1751
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %39, align 1
  store i32 %1735, i32* inttoptr (i64 6470892 to i32*), align 4
  %1758 = add i64 %1733, -112
  store i64 %1758, i64* %3, align 8
  br label %block_.L_400eb4

block_.L_400f3a:                                  ; preds = %block_.L_400eb4
  %1759 = add i64 %1711, -2394
  %1760 = add i64 %1711, 5
  %1761 = load i64, i64* %6, align 8
  %1762 = add i64 %1761, -8
  %1763 = inttoptr i64 %1762 to i64*
  store i64 %1760, i64* %1763, align 8
  store i64 %1762, i64* %6, align 8
  store i64 %1759, i64* %3, align 8
  %call2_400f3a = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %1759, %struct.Memory* %call2_400e79)
  %1764 = load i64, i64* %3, align 8
  store i64 4206717, i64* %RSI.i1153, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %1635, align 1
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -80
  %1767 = add i64 %1764, 18
  store i64 %1767, i64* %3, align 8
  %1768 = load <2 x float>, <2 x float>* %83, align 1
  %1769 = inttoptr i64 %1766 to float*
  %1770 = load float, float* %1769, align 4
  %1771 = extractelement <2 x float> %1768, i32 0
  %1772 = fsub float %1771, %1770
  store float %1772, float* %46, align 1
  %1773 = bitcast <2 x float> %1768 to <2 x i32>
  %1774 = extractelement <2 x i32> %1773, i32 1
  store i32 %1774, i32* %275, align 1
  %1775 = add i64 %1765, -84
  %1776 = add i64 %1764, 23
  store i64 %1776, i64* %3, align 8
  %1777 = load <2 x float>, <2 x float>* %83, align 1
  %1778 = extractelement <2 x float> %1777, i32 0
  %1779 = inttoptr i64 %1775 to float*
  store float %1778, float* %1779, align 4
  %1780 = load i64, i64* %3, align 8
  %1781 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1781, i64* %RDI.i1473, align 8
  %1782 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RDX.i1476, align 8
  %1784 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1785 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %1786 = extractelement <2 x i32> %1784, i32 0
  store i32 %1786, i32* %47, align 1
  %1787 = extractelement <2 x i32> %1784, i32 1
  store i32 %1787, i32* %275, align 1
  %1788 = extractelement <2 x i32> %1785, i32 0
  store i32 %1788, i32* %277, align 1
  %1789 = extractelement <2 x i32> %1785, i32 1
  store i32 %1789, i32* %279, align 1
  store i8 1, i8* %AL.i1414, align 1
  %1790 = add i64 %1780, -2678
  %1791 = add i64 %1780, 25
  %1792 = load i64, i64* %6, align 8
  %1793 = add i64 %1792, -8
  %1794 = inttoptr i64 %1793 to i64*
  store i64 %1791, i64* %1794, align 8
  store i64 %1793, i64* %6, align 8
  store i64 %1790, i64* %3, align 8
  %call2_400f6a = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1790, %struct.Memory* %call2_400e79)
  %1795 = load i64, i64* %RBP.i, align 8
  %1796 = add i64 %1795, -64
  %1797 = load i64, i64* %3, align 8
  %1798 = add i64 %1797, 4
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799, align 4
  store i8 0, i8* %14, align 1
  %1801 = and i32 %1800, 255
  %1802 = tail call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  store i8 %1805, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1806 = icmp eq i32 %1800, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %30, align 1
  %1808 = lshr i32 %1800, 31
  %1809 = trunc i32 %1808 to i8
  store i8 %1809, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1810 = add i64 %1795, -952
  %1811 = load i32, i32* %EAX.i1406, align 4
  %1812 = add i64 %1797, 10
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i32*
  store i32 %1811, i32* %1813, align 4
  %1814 = load i64, i64* %3, align 8
  %1815 = add i64 %1814, 23
  %1816 = add i64 %1814, 6
  %1817 = load i8, i8* %33, align 1
  %1818 = icmp ne i8 %1817, 0
  %1819 = load i8, i8* %39, align 1
  %1820 = icmp ne i8 %1819, 0
  %1821 = xor i1 %1818, %1820
  %1822 = select i1 %1821, i64 %1816, i64 %1815
  store i64 %1822, i64* %3, align 8
  br i1 %1821, label %block_400f7f, label %block_.L_400f90

block_400f7f:                                     ; preds = %block_.L_400f3a
  %1823 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %1824 = shl i32 %1823, 1
  %1825 = icmp slt i32 %1823, 0
  %1826 = icmp slt i32 %1824, 0
  %1827 = xor i1 %1825, %1826
  %1828 = zext i32 %1824 to i64
  store i64 %1828, i64* %RAX.i1480, align 8
  %.lobit27 = lshr i32 %1823, 31
  %1829 = trunc i32 %.lobit27 to i8
  store i8 %1829, i8* %14, align 1
  %1830 = and i32 %1824, 254
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1835 = icmp eq i32 %1824, 0
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %30, align 1
  %1837 = lshr i32 %1823, 30
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  store i8 %1839, i8* %33, align 1
  %1840 = zext i1 %1827 to i8
  store i8 %1840, i8* %39, align 1
  %1841 = add i64 %1822, 16
  store i64 %1841, i64* %3, align 8
  store i32 %1824, i32* inttoptr (i64 6471696 to i32*), align 16
  br label %block_.L_400f90

block_.L_400f90:                                  ; preds = %block_.L_400f3a, %block_400f7f
  %1842 = phi i64 [ %1815, %block_.L_400f3a ], [ %1841, %block_400f7f ]
  %1843 = load i64, i64* %RBP.i, align 8
  %1844 = add i64 %1843, -64
  %1845 = add i64 %1842, 9
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  store i8 0, i8* %14, align 1
  %1848 = and i32 %1847, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1853 = icmp eq i32 %1847, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %30, align 1
  %1855 = lshr i32 %1847, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1857 = icmp ne i8 %1856, 0
  %.v36 = select i1 %1857, i64 -259, i64 6
  %1858 = add i64 %1845, %.v36
  store i64 %1858, i64* %3, align 8
  br i1 %1857, label %block_.L_400e96, label %block_.L_400fc3

block_.L_400fc3:                                  ; preds = %block_.L_400f90
  store i32 1000, i32* inttoptr (i64 6471696 to i32*), align 16
  %.pre75 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 4206829, i64* %RSI.i1153, align 8
  store i64 0, i64* %RDX.i1476, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %.pre75, i64* %RDI.i1473, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1859 = add i64 %1858, -2751
  %1860 = add i64 %1858, 63
  %1861 = load i64, i64* %6, align 8
  %1862 = add i64 %1861, -8
  %1863 = inttoptr i64 %1862 to i64*
  store i64 %1860, i64* %1863, align 8
  store i64 %1862, i64* %6, align 8
  store i64 %1859, i64* %3, align 8
  %call2_400fd9 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1859, %struct.Memory* %call2_400e79)
  %1864 = load i64, i64* %3, align 8
  store i64 4206849, i64* %RSI.i1153, align 8
  %1865 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1865, i64* %RDI.i1473, align 8
  %1866 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDX.i1476, align 8
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -956
  %1870 = load i32, i32* %EAX.i1406, align 4
  %1871 = add i64 %1864, 31
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1869 to i32*
  store i32 %1870, i32* %1872, align 4
  %1873 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1874 = add i64 %1873, -2845
  %1875 = add i64 %1873, 7
  %1876 = load i64, i64* %6, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1875, i64* %1878, align 8
  store i64 %1877, i64* %6, align 8
  store i64 %1874, i64* %3, align 8
  %call2_400fff = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1874, %struct.Memory* %call2_400fd9)
  %1879 = load i64, i64* %3, align 8
  store i64 4206618, i64* %RSI.i1153, align 8
  %1880 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1880, i64* %RDI.i1473, align 8
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -960
  %1883 = load i32, i32* %EAX.i1406, align 4
  %1884 = add i64 %1879, 24
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1882 to i32*
  store i32 %1883, i32* %1885, align 4
  %1886 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1887 = add i64 %1886, -2876
  %1888 = add i64 %1886, 7
  %1889 = load i64, i64* %6, align 8
  %1890 = add i64 %1889, -8
  %1891 = inttoptr i64 %1890 to i64*
  store i64 %1888, i64* %1891, align 8
  store i64 %1890, i64* %6, align 8
  store i64 %1887, i64* %3, align 8
  %call2_40101e = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1887, %struct.Memory* %call2_400fff)
  %1892 = load i64, i64* %3, align 8
  store i64 4206674, i64* %RSI.i1153, align 8
  %1893 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %1893, i64* %RDI.i1473, align 8
  %1894 = load i64, i64* %RBP.i, align 8
  %1895 = add i64 %1894, -964
  %1896 = load i32, i32* %EAX.i1406, align 4
  %1897 = add i64 %1892, 24
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1895 to i32*
  store i32 %1896, i32* %1898, align 4
  %1899 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %1900 = add i64 %1899, -2907
  %1901 = add i64 %1899, 7
  %1902 = load i64, i64* %6, align 8
  %1903 = add i64 %1902, -8
  %1904 = inttoptr i64 %1903 to i64*
  store i64 %1901, i64* %1904, align 8
  store i64 %1903, i64* %6, align 8
  store i64 %1900, i64* %3, align 8
  %call2_40103d = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %1900, %struct.Memory* %call2_40101e)
  %1905 = load i64, i64* %3, align 8
  store i32 0, i32* %47, align 1
  store i32 0, i32* %275, align 1
  store i32 0, i32* %277, align 1
  store i32 0, i32* %279, align 1
  %1906 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1907 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %1908 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %1909 = sitofp i32 %1908 to float
  store float %1909, float* %938, align 1
  %1910 = extractelement <2 x i32> %1906, i32 1
  store i32 %1910, i32* %597, align 1
  %1911 = extractelement <2 x i32> %1907, i32 0
  store i32 %1911, i32* %598, align 1
  %1912 = extractelement <2 x i32> %1907, i32 1
  store i32 %1912, i32* %600, align 1
  %1913 = load i64, i64* %RBP.i, align 8
  %1914 = add i64 %1913, -72
  %1915 = add i64 %1905, 17
  store i64 %1915, i64* %3, align 8
  %1916 = load <2 x float>, <2 x float>* %1031, align 1
  %1917 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %1918 = inttoptr i64 %1914 to float*
  %1919 = load float, float* %1918, align 4
  %1920 = extractelement <2 x float> %1916, i32 0
  %1921 = fmul float %1920, %1919
  store float %1921, float* %938, align 1
  %1922 = bitcast <2 x float> %1916 to <2 x i32>
  %1923 = extractelement <2 x i32> %1922, i32 1
  store i32 %1923, i32* %597, align 1
  %1924 = extractelement <2 x i32> %1917, i32 0
  store i32 %1924, i32* %598, align 1
  %1925 = extractelement <2 x i32> %1917, i32 1
  store i32 %1925, i32* %600, align 1
  %1926 = add i64 %1913, -44
  %1927 = add i64 %1905, 22
  store i64 %1927, i64* %3, align 8
  %1928 = load <2 x float>, <2 x float>* %1031, align 1
  %1929 = extractelement <2 x float> %1928, i32 0
  %1930 = inttoptr i64 %1926 to float*
  store float %1929, float* %1930, align 4
  %1931 = load i64, i64* %3, align 8
  %1932 = load <2 x float>, <2 x float>* %83, align 1
  %1933 = extractelement <2 x float> %1932, i32 0
  store float %1933, float* inttoptr (i64 6470556 to float*), align 4
  store i32 1, i32* inttoptr (i64 6471700 to i32*), align 4
  %1934 = load i64, i64* %RBP.i, align 8
  %1935 = add i64 %1934, -968
  %1936 = load i32, i32* %EAX.i1406, align 4
  %1937 = add i64 %1931, 26
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1935 to i32*
  store i32 %1936, i32* %1938, align 4
  %1939 = bitcast i64* %590 to double*
  %1940 = bitcast %union.VectorReg* %248 to <2 x i32>*
  %1941 = bitcast i64* %257 to <2 x i32>*
  %1942 = bitcast %union.VectorReg* %248 to float*
  %1943 = bitcast %union.VectorReg* %248 to <2 x float>*
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %1944 = bitcast i64* %50 to <2 x i32>*
  br label %block_.L_401072

block_.L_401072:                                  ; preds = %block_.L_4011bb, %block_.L_400fc3
  %1945 = phi i32 [ %2393, %block_.L_4011bb ], [ %.pre77, %block_.L_400fc3 ]
  %1946 = phi i64 [ %2416, %block_.L_4011bb ], [ %.pre76, %block_.L_400fc3 ]
  %1947 = add i32 %1945, -6
  %1948 = icmp ult i32 %1945, 6
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1947, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1947, %1945
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %27, align 1
  %1959 = icmp eq i32 %1947, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %30, align 1
  %1961 = lshr i32 %1947, 31
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, i8* %33, align 1
  %1963 = lshr i32 %1945, 31
  %1964 = xor i32 %1961, %1963
  %1965 = add nuw nsw i32 %1964, %1963
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = icmp ne i8 %1962, 0
  %1969 = xor i1 %1968, %1966
  %.v94 = select i1 %1969, i64 14, i64 623
  %1970 = add i64 %1946, %.v94
  store i64 %1970, i64* %3, align 8
  br i1 %1969, label %block_401080, label %block_.L_4012e1

block_401080:                                     ; preds = %block_.L_401072
  %1971 = add i64 %1970, -2720
  %1972 = add i64 %1970, 5
  %1973 = load i64, i64* %6, align 8
  %1974 = add i64 %1973, -8
  %1975 = inttoptr i64 %1974 to i64*
  store i64 %1972, i64* %1975, align 8
  store i64 %1974, i64* %6, align 8
  store i64 %1971, i64* %3, align 8
  %call2_401080 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %1971, %struct.Memory* %call2_40103d)
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -40
  %1978 = load i64, i64* %3, align 8
  %1979 = add i64 %1978, 5
  store i64 %1979, i64* %3, align 8
  %1980 = load <2 x float>, <2 x float>* %83, align 1
  %1981 = extractelement <2 x float> %1980, i32 0
  %1982 = inttoptr i64 %1977 to float*
  store float %1981, float* %1982, align 4
  %1983 = load i64, i64* %3, align 8
  %1984 = add i64 %1983, 11
  store i64 %1984, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_401095

block_.L_401095:                                  ; preds = %block_4010a9, %block_401080
  %1985 = phi i32 [ %2039, %block_4010a9 ], [ 0, %block_401080 ]
  %1986 = phi i64 [ %2062, %block_4010a9 ], [ %1984, %block_401080 ]
  %1987 = zext i32 %1985 to i64
  store i64 %1987, i64* %RAX.i1480, align 8
  %1988 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %1989 = sub i32 %1985, %1988
  %1990 = icmp ult i32 %1985, %1988
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1989, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1988, %1985
  %1998 = xor i32 %1997, %1989
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %27, align 1
  %2002 = icmp eq i32 %1989, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %30, align 1
  %2004 = lshr i32 %1989, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %33, align 1
  %2006 = lshr i32 %1985, 31
  %2007 = lshr i32 %1988, 31
  %2008 = xor i32 %2007, %2006
  %2009 = xor i32 %2004, %2006
  %2010 = add nuw nsw i32 %2009, %2008
  %2011 = icmp eq i32 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %39, align 1
  %2013 = icmp ne i8 %2005, 0
  %2014 = xor i1 %2013, %2011
  %.v99 = select i1 %2014, i64 20, i64 134
  %2015 = add i64 %1986, %.v99
  store i64 %2015, i64* %3, align 8
  br i1 %2014, label %block_4010a9, label %block_.L_40111b

block_4010a9:                                     ; preds = %block_.L_401095
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %2016 = load i64, i64* %RBP.i, align 8
  %2017 = add i64 %2016, -20
  store i64 %2017, i64* %57, align 8
  %2018 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RSI.i1153, align 8
  %2020 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RDX.i1476, align 8
  %2022 = add i64 %2015, 1703
  %2023 = add i64 %2015, 43
  %2024 = load i64, i64* %6, align 8
  %2025 = add i64 %2024, -8
  %2026 = inttoptr i64 %2025 to i64*
  store i64 %2023, i64* %2026, align 8
  store i64 %2025, i64* %6, align 8
  store i64 %2022, i64* %3, align 8
  %call2_4010cf = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %2022, %struct.Memory* %call2_40103d)
  %2027 = load i64, i64* %3, align 8
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6470336, i64* %57, align 8
  %2028 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RSI.i1153, align 8
  %2030 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RDX.i1476, align 8
  %2032 = add i64 %2027, 2124
  %2033 = add i64 %2027, 49
  %2034 = load i64, i64* %6, align 8
  %2035 = add i64 %2034, -8
  %2036 = inttoptr i64 %2035 to i64*
  store i64 %2033, i64* %2036, align 8
  store i64 %2035, i64* %6, align 8
  store i64 %2032, i64* %3, align 8
  %call2_401100 = tail call %struct.Memory* @sub_401920.dgefa(%struct.State* nonnull %0, i64 %2032, %struct.Memory* %call2_40103d)
  %2037 = load i64, i64* %3, align 8
  %2038 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %2039 = add i32 %2038, 1
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RAX.i1480, align 8
  %2041 = icmp eq i32 %2038, -1
  %2042 = icmp eq i32 %2039, 0
  %2043 = or i1 %2041, %2042
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %14, align 1
  %2045 = and i32 %2039, 255
  %2046 = tail call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  store i8 %2049, i8* %21, align 1
  %2050 = xor i32 %2039, %2038
  %2051 = lshr i32 %2050, 4
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  store i8 %2053, i8* %27, align 1
  %2054 = zext i1 %2042 to i8
  store i8 %2054, i8* %30, align 1
  %2055 = lshr i32 %2039, 31
  %2056 = trunc i32 %2055 to i8
  store i8 %2056, i8* %33, align 1
  %2057 = lshr i32 %2038, 31
  %2058 = xor i32 %2055, %2057
  %2059 = add nuw nsw i32 %2058, %2055
  %2060 = icmp eq i32 %2059, 2
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %39, align 1
  store i32 %2039, i32* inttoptr (i64 6470892 to i32*), align 4
  %2062 = add i64 %2037, -112
  store i64 %2062, i64* %3, align 8
  br label %block_.L_401095

block_.L_40111b:                                  ; preds = %block_.L_401095
  %2063 = add i64 %2015, -2875
  %2064 = add i64 %2015, 5
  %2065 = load i64, i64* %6, align 8
  %2066 = add i64 %2065, -8
  %2067 = inttoptr i64 %2066 to i64*
  store i64 %2064, i64* %2067, align 8
  store i64 %2066, i64* %6, align 8
  store i64 %2063, i64* %3, align 8
  %call2_40111b = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2063, %struct.Memory* %call2_40103d)
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -40
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 5
  store i64 %2071, i64* %3, align 8
  %2072 = load <2 x float>, <2 x float>* %83, align 1
  %2073 = load <2 x i32>, <2 x i32>* %251, align 1
  %2074 = inttoptr i64 %2069 to float*
  %2075 = load float, float* %2074, align 4
  %2076 = extractelement <2 x float> %2072, i32 0
  %2077 = fsub float %2076, %2075
  store float %2077, float* %46, align 1
  %2078 = bitcast <2 x float> %2072 to <2 x i32>
  %2079 = extractelement <2 x i32> %2078, i32 1
  store i32 %2079, i32* %275, align 1
  %2080 = extractelement <2 x i32> %2073, i32 0
  store i32 %2080, i32* %277, align 1
  %2081 = extractelement <2 x i32> %2073, i32 1
  store i32 %2081, i32* %279, align 1
  %2082 = add i64 %2068, -44
  %2083 = add i64 %2070, 10
  store i64 %2083, i64* %3, align 8
  %2084 = load <2 x float>, <2 x float>* %83, align 1
  %2085 = load <2 x i32>, <2 x i32>* %251, align 1
  %2086 = inttoptr i64 %2082 to float*
  %2087 = load float, float* %2086, align 4
  %2088 = extractelement <2 x float> %2084, i32 0
  %2089 = fsub float %2088, %2087
  store float %2089, float* %46, align 1
  %2090 = bitcast <2 x float> %2084 to <2 x i32>
  %2091 = extractelement <2 x i32> %2090, i32 1
  store i32 %2091, i32* %275, align 1
  %2092 = extractelement <2 x i32> %2085, i32 0
  store i32 %2092, i32* %277, align 1
  %2093 = extractelement <2 x i32> %2085, i32 1
  store i32 %2093, i32* %279, align 1
  %2094 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2095 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %2096 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2097 = sitofp i32 %2096 to float
  store float %2097, float* %938, align 1
  %2098 = extractelement <2 x i32> %2094, i32 1
  store i32 %2098, i32* %597, align 1
  %2099 = extractelement <2 x i32> %2095, i32 0
  store i32 %2099, i32* %598, align 1
  %2100 = extractelement <2 x i32> %2095, i32 1
  store i32 %2100, i32* %600, align 1
  %2101 = load <2 x float>, <2 x float>* %83, align 1
  %2102 = load <2 x i32>, <2 x i32>* %251, align 1
  %2103 = load <2 x float>, <2 x float>* %1031, align 1
  %2104 = extractelement <2 x float> %2101, i32 0
  %2105 = extractelement <2 x float> %2103, i32 0
  %2106 = fdiv float %2104, %2105
  store float %2106, float* %46, align 1
  %2107 = bitcast <2 x float> %2101 to <2 x i32>
  %2108 = extractelement <2 x i32> %2107, i32 1
  store i32 %2108, i32* %275, align 1
  %2109 = extractelement <2 x i32> %2102, i32 0
  store i32 %2109, i32* %277, align 1
  %2110 = extractelement <2 x i32> %2102, i32 1
  store i32 %2110, i32* %279, align 1
  %2111 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2112 = sext i32 %2111 to i64
  store i64 %2112, i64* %RAX.i1480, align 8
  %2113 = shl nsw i64 %2112, 2
  %2114 = add nsw i64 %2113, 6470352
  %2115 = add i64 %2070, 40
  store i64 %2115, i64* %3, align 8
  %2116 = load <2 x float>, <2 x float>* %83, align 1
  %2117 = extractelement <2 x float> %2116, i32 0
  %2118 = inttoptr i64 %2114 to float*
  store float %2117, float* %2118, align 4
  %2119 = load i64, i64* %3, align 8
  %2120 = add i64 %2119, -2920
  %2121 = add i64 %2119, 5
  %2122 = load i64, i64* %6, align 8
  %2123 = add i64 %2122, -8
  %2124 = inttoptr i64 %2123 to i64*
  store i64 %2121, i64* %2124, align 8
  store i64 %2123, i64* %6, align 8
  store i64 %2120, i64* %3, align 8
  %call2_401148 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2120, %struct.Memory* %call2_40103d)
  %2125 = load i64, i64* %RBP.i, align 8
  %2126 = add i64 %2125, -40
  %2127 = load i64, i64* %3, align 8
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %3, align 8
  %2129 = load <2 x float>, <2 x float>* %83, align 1
  %2130 = extractelement <2 x float> %2129, i32 0
  %2131 = inttoptr i64 %2126 to float*
  store float %2130, float* %2131, align 4
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 11
  store i64 %2133, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_40115d

block_.L_40115d:                                  ; preds = %block_401171, %block_.L_40111b
  %2134 = phi i32 [ %2176, %block_401171 ], [ 0, %block_.L_40111b ]
  %2135 = phi i64 [ %2199, %block_401171 ], [ %2133, %block_.L_40111b ]
  %2136 = zext i32 %2134 to i64
  store i64 %2136, i64* %RAX.i1480, align 8
  %2137 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2138 = sub i32 %2134, %2137
  %2139 = icmp ult i32 %2134, %2137
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %14, align 1
  %2141 = and i32 %2138, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %21, align 1
  %2146 = xor i32 %2137, %2134
  %2147 = xor i32 %2146, %2138
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  store i8 %2150, i8* %27, align 1
  %2151 = icmp eq i32 %2138, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %30, align 1
  %2153 = lshr i32 %2138, 31
  %2154 = trunc i32 %2153 to i8
  store i8 %2154, i8* %33, align 1
  %2155 = lshr i32 %2134, 31
  %2156 = lshr i32 %2137, 31
  %2157 = xor i32 %2156, %2155
  %2158 = xor i32 %2153, %2155
  %2159 = add nuw nsw i32 %2158, %2157
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %39, align 1
  %2162 = icmp ne i8 %2154, 0
  %2163 = xor i1 %2162, %2160
  %.v100 = select i1 %2163, i64 20, i64 94
  %2164 = add i64 %2135, %.v100
  store i64 %2164, i64* %3, align 8
  br i1 %2163, label %block_401171, label %block_.L_4011bb

block_401171:                                     ; preds = %block_.L_40115d
  store i64 6307936, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6468736, i64* %57, align 8
  store i64 0, i64* %R9.i1469, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2165 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RSI.i1153, align 8
  %2167 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RDX.i1476, align 8
  %2169 = add i64 %2164, 2751
  %2170 = add i64 %2164, 52
  %2171 = load i64, i64* %6, align 8
  %2172 = add i64 %2171, -8
  %2173 = inttoptr i64 %2172 to i64*
  store i64 %2170, i64* %2173, align 8
  store i64 %2172, i64* %6, align 8
  store i64 %2169, i64* %3, align 8
  %call2_4011a0 = tail call %struct.Memory* @sub_401c30.dgesl(%struct.State* nonnull %0, i64 %2169, %struct.Memory* %call2_40103d)
  %2174 = load i64, i64* %3, align 8
  %2175 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %2176 = add i32 %2175, 1
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RAX.i1480, align 8
  %2178 = icmp eq i32 %2175, -1
  %2179 = icmp eq i32 %2176, 0
  %2180 = or i1 %2178, %2179
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %14, align 1
  %2182 = and i32 %2176, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  %2187 = xor i32 %2176, %2175
  %2188 = lshr i32 %2187, 4
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  store i8 %2190, i8* %27, align 1
  %2191 = zext i1 %2179 to i8
  store i8 %2191, i8* %30, align 1
  %2192 = lshr i32 %2176, 31
  %2193 = trunc i32 %2192 to i8
  store i8 %2193, i8* %33, align 1
  %2194 = lshr i32 %2175, 31
  %2195 = xor i32 %2192, %2194
  %2196 = add nuw nsw i32 %2195, %2192
  %2197 = icmp eq i32 %2196, 2
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %39, align 1
  store i32 %2176, i32* inttoptr (i64 6470892 to i32*), align 4
  %2199 = add i64 %2174, -72
  store i64 %2199, i64* %3, align 8
  br label %block_.L_40115d

block_.L_4011bb:                                  ; preds = %block_.L_40115d
  %2200 = add i64 %2164, -3035
  %2201 = add i64 %2164, 5
  %2202 = load i64, i64* %6, align 8
  %2203 = add i64 %2202, -8
  %2204 = inttoptr i64 %2203 to i64*
  store i64 %2201, i64* %2204, align 8
  store i64 %2203, i64* %6, align 8
  store i64 %2200, i64* %3, align 8
  %call2_4011bb = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2200, %struct.Memory* %call2_40103d)
  %2205 = load i64, i64* %3, align 8
  %2206 = add i64 %2205, 7304
  %2207 = add i64 %2205, 8
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %221, align 1
  store double 0.000000e+00, double* %223, align 1
  %2210 = add i64 %2205, 7320
  %2211 = add i64 %2205, 16
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i64*
  %2213 = load i64, i64* %2212, align 8
  store i64 %2213, i64* %594, align 1
  store double 0.000000e+00, double* %1939, align 1
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -40
  %2216 = add i64 %2205, 21
  store i64 %2216, i64* %3, align 8
  %2217 = load <2 x float>, <2 x float>* %83, align 1
  %2218 = load <2 x i32>, <2 x i32>* %251, align 1
  %2219 = inttoptr i64 %2215 to float*
  %2220 = load float, float* %2219, align 4
  %2221 = extractelement <2 x float> %2217, i32 0
  %2222 = fsub float %2221, %2220
  store float %2222, float* %46, align 1
  %2223 = bitcast <2 x float> %2217 to <2 x i32>
  %2224 = extractelement <2 x i32> %2223, i32 1
  store i32 %2224, i32* %275, align 1
  %2225 = extractelement <2 x i32> %2218, i32 0
  store i32 %2225, i32* %277, align 1
  %2226 = extractelement <2 x i32> %2218, i32 1
  store i32 %2226, i32* %279, align 1
  %2227 = load <2 x i32>, <2 x i32>* %1940, align 1
  %2228 = load <2 x i32>, <2 x i32>* %1941, align 1
  %2229 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2230 = sitofp i32 %2229 to float
  store float %2230, float* %1942, align 1
  %2231 = extractelement <2 x i32> %2227, i32 1
  store i32 %2231, i32* %256, align 1
  %2232 = extractelement <2 x i32> %2228, i32 0
  store i32 %2232, i32* %258, align 1
  %2233 = extractelement <2 x i32> %2228, i32 1
  store i32 %2233, i32* %260, align 1
  %2234 = load <2 x float>, <2 x float>* %83, align 1
  %2235 = load <2 x i32>, <2 x i32>* %251, align 1
  %2236 = load <2 x float>, <2 x float>* %1943, align 1
  %2237 = extractelement <2 x float> %2234, i32 0
  %2238 = extractelement <2 x float> %2236, i32 0
  %2239 = fdiv float %2237, %2238
  store float %2239, float* %46, align 1
  %2240 = bitcast <2 x float> %2234 to <2 x i32>
  %2241 = extractelement <2 x i32> %2240, i32 1
  store i32 %2241, i32* %275, align 1
  %2242 = extractelement <2 x i32> %2235, i32 0
  store i32 %2242, i32* %277, align 1
  %2243 = extractelement <2 x i32> %2235, i32 1
  store i32 %2243, i32* %279, align 1
  %2244 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2245 = sext i32 %2244 to i64
  %2246 = shl nsw i64 %2245, 2
  %2247 = add nsw i64 %2246, 6470412
  %2248 = add i64 %2205, 51
  store i64 %2248, i64* %3, align 8
  %2249 = load <2 x float>, <2 x float>* %83, align 1
  %2250 = extractelement <2 x float> %2249, i32 0
  %2251 = inttoptr i64 %2247 to float*
  store float %2250, float* %2251, align 4
  %2252 = load i64, i64* %3, align 8
  %2253 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2254 = sext i32 %2253 to i64
  store i64 %2254, i64* %RAX.i1480, align 8
  %2255 = shl nsw i64 %2254, 2
  %2256 = add nsw i64 %2255, 6470352
  %2257 = add i64 %2252, 17
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  store i32 %2259, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store i64 %2254, i64* %RAX.i1480, align 8
  %2260 = add nsw i64 %2255, 6470412
  %2261 = add i64 %2252, 34
  store i64 %2261, i64* %3, align 8
  %2262 = load <2 x float>, <2 x float>* %83, align 1
  %2263 = load <2 x i32>, <2 x i32>* %251, align 1
  %2264 = inttoptr i64 %2260 to float*
  %2265 = load float, float* %2264, align 4
  %2266 = extractelement <2 x float> %2262, i32 0
  %2267 = fadd float %2266, %2265
  store float %2267, float* %46, align 1
  %2268 = bitcast <2 x float> %2262 to <2 x i32>
  %2269 = extractelement <2 x i32> %2268, i32 1
  store i32 %2269, i32* %275, align 1
  %2270 = extractelement <2 x i32> %2263, i32 0
  store i32 %2270, i32* %277, align 1
  %2271 = extractelement <2 x i32> %2263, i32 1
  store i32 %2271, i32* %279, align 1
  %2272 = load i64, i64* %RBP.i, align 8
  %2273 = add i64 %2272, -16
  %2274 = add i64 %2252, 39
  store i64 %2274, i64* %3, align 8
  %2275 = load <2 x float>, <2 x float>* %83, align 1
  %2276 = extractelement <2 x float> %2275, i32 0
  %2277 = inttoptr i64 %2273 to float*
  store float %2276, float* %2277, align 4
  %2278 = load i64, i64* %RBP.i, align 8
  %2279 = add i64 %2278, -16
  %2280 = load i64, i64* %3, align 8
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2279 to i32*
  %2283 = load i32, i32* %2282, align 4
  store i32 %2283, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2284 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2285 = sext i32 %2284 to i64
  store i64 %2285, i64* %RAX.i1480, align 8
  %2286 = shl nsw i64 %2285, 2
  %2287 = add nsw i64 %2286, 6470472
  %2288 = add i64 %2280, 22
  store i64 %2288, i64* %3, align 8
  %2289 = load <2 x float>, <2 x float>* %83, align 1
  %2290 = extractelement <2 x float> %2289, i32 0
  %2291 = inttoptr i64 %2287 to float*
  store float %2290, float* %2291, align 4
  %2292 = load i64, i64* %RBP.i, align 8
  %2293 = add i64 %2292, -12
  %2294 = load i64, i64* %3, align 8
  %2295 = add i64 %2294, 5
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2293 to float*
  %2297 = load float, float* %2296, align 4
  %2298 = fpext float %2297 to double
  store double %2298, double* %212, align 1
  %2299 = add i64 %2292, -16
  %2300 = add i64 %2294, 10
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to float*
  %2302 = load float, float* %2301, align 4
  %2303 = fpext float %2302 to double
  store double %2303, double* %261, align 1
  %2304 = load double, double* %247, align 1
  %2305 = fmul double %2303, %2304
  store double %2305, double* %247, align 1
  %2306 = load <2 x i32>, <2 x i32>* %1944, align 1
  %2307 = fdiv double %2298, %2305
  %.cast28 = bitcast double %2307 to <2 x i32>
  %2308 = fptrunc double %2307 to float
  store float %2308, float* %46, align 1
  %2309 = extractelement <2 x i32> %.cast28, i32 1
  store i32 %2309, i32* %275, align 1
  %2310 = extractelement <2 x i32> %2306, i32 0
  store i32 %2310, i32* %277, align 1
  %2311 = extractelement <2 x i32> %2306, i32 1
  store i32 %2311, i32* %279, align 1
  %2312 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2313 = sext i32 %2312 to i64
  %2314 = shl nsw i64 %2313, 2
  %2315 = add nsw i64 %2314, 6470532
  %2316 = add i64 %2294, 39
  store i64 %2316, i64* %3, align 8
  %2317 = load <2 x float>, <2 x float>* %83, align 1
  %2318 = extractelement <2 x float> %2317, i32 0
  %2319 = inttoptr i64 %2315 to float*
  store float %2318, float* %2319, align 4
  %2320 = load i64, i64* %3, align 8
  %2321 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2322 = sext i32 %2321 to i64
  store i64 %2322, i64* %RAX.i1480, align 8
  %2323 = shl nsw i64 %2322, 2
  %2324 = add nsw i64 %2323, 6470532
  %2325 = add i64 %2320, 17
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to float*
  %2327 = load float, float* %2326, align 4
  %2328 = fpext float %2327 to double
  %2329 = load double, double* %220, align 1
  %2330 = fdiv double %2329, %2328
  store double %2330, double* %220, align 1
  %2331 = bitcast double %2328 to <2 x i32>
  %2332 = load <2 x i32>, <2 x i32>* %251, align 1
  %2333 = fptrunc double %2330 to float
  store float %2333, float* %46, align 1
  %2334 = extractelement <2 x i32> %2331, i32 1
  store i32 %2334, i32* %275, align 1
  %2335 = extractelement <2 x i32> %2332, i32 0
  store i32 %2335, i32* %277, align 1
  %2336 = extractelement <2 x i32> %2332, i32 1
  store i32 %2336, i32* %279, align 1
  store i64 %2322, i64* %RAX.i1480, align 8
  %2337 = add nsw i64 %2323, 6470592
  %2338 = add i64 %2320, 42
  store i64 %2338, i64* %3, align 8
  %2339 = load <2 x float>, <2 x float>* %83, align 1
  %2340 = extractelement <2 x float> %2339, i32 0
  %2341 = inttoptr i64 %2337 to float*
  store float %2340, float* %2341, align 4
  %2342 = load i64, i64* %RBP.i, align 8
  %2343 = add i64 %2342, -16
  %2344 = load i64, i64* %3, align 8
  %2345 = add i64 %2344, 5
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2343 to i32*
  %2347 = load i32, i32* %2346, align 4
  store i32 %2347, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2348 = add i64 %2342, -8
  %2349 = add i64 %2344, 10
  store i64 %2349, i64* %3, align 8
  %2350 = load <2 x float>, <2 x float>* %83, align 1
  %2351 = inttoptr i64 %2348 to float*
  %2352 = load float, float* %2351, align 4
  %2353 = extractelement <2 x float> %2350, i32 0
  %2354 = fdiv float %2353, %2352
  store float %2354, float* %46, align 1
  %2355 = bitcast <2 x float> %2350 to <2 x i32>
  %2356 = extractelement <2 x i32> %2355, i32 1
  store i32 %2356, i32* %275, align 1
  %2357 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2358 = sext i32 %2357 to i64
  %2359 = shl nsw i64 %2358, 2
  %2360 = add nsw i64 %2359, 6470652
  %2361 = add i64 %2344, 27
  store i64 %2361, i64* %3, align 8
  %2362 = load <2 x float>, <2 x float>* %83, align 1
  %2363 = extractelement <2 x float> %2362, i32 0
  %2364 = inttoptr i64 %2360 to float*
  store float %2363, float* %2364, align 4
  %2365 = load i64, i64* %3, align 8
  %2366 = load i32, i32* inttoptr (i64 6470556 to i32*), align 4
  store i32 %2366, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2367 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RAX.i1480, align 8
  %2369 = shl nsw i64 %2368, 2
  %2370 = add nsw i64 %2369, 6470532
  %2371 = add i64 %2365, 26
  store i64 %2371, i64* %3, align 8
  %2372 = load <2 x float>, <2 x float>* %83, align 1
  %2373 = load <2 x i32>, <2 x i32>* %251, align 1
  %2374 = inttoptr i64 %2370 to float*
  %2375 = load float, float* %2374, align 4
  %2376 = extractelement <2 x float> %2372, i32 0
  %2377 = fadd float %2376, %2375
  store float %2377, float* %46, align 1
  %2378 = bitcast <2 x float> %2372 to <2 x i32>
  %2379 = extractelement <2 x i32> %2378, i32 1
  store i32 %2379, i32* %275, align 1
  %2380 = extractelement <2 x i32> %2373, i32 0
  store i32 %2380, i32* %277, align 1
  %2381 = extractelement <2 x i32> %2373, i32 1
  store i32 %2381, i32* %279, align 1
  %2382 = load <2 x float>, <2 x float>* %83, align 1
  %2383 = extractelement <2 x float> %2382, i32 0
  store float %2383, float* inttoptr (i64 6470556 to float*), align 4
  %2384 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2385 = zext i32 %2384 to i64
  store i64 %2385, i64* %RDI.i1473, align 8
  %2386 = add i64 %2365, 5572
  %2387 = add i64 %2365, 47
  %2388 = load i64, i64* %6, align 8
  %2389 = add i64 %2388, -8
  %2390 = inttoptr i64 %2389 to i64*
  store i64 %2387, i64* %2390, align 8
  store i64 %2389, i64* %6, align 8
  store i64 %2386, i64* %3, align 8
  %call2_4012c6 = tail call %struct.Memory* @sub_402860.print_time(%struct.State* nonnull %0, i64 %2386, %struct.Memory* %call2_40103d)
  %2391 = load i64, i64* %3, align 8
  %2392 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2393 = add i32 %2392, 1
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RAX.i1480, align 8
  %2395 = icmp eq i32 %2392, -1
  %2396 = icmp eq i32 %2393, 0
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %14, align 1
  %2399 = and i32 %2393, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %21, align 1
  %2404 = xor i32 %2393, %2392
  %2405 = lshr i32 %2404, 4
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %27, align 1
  %2408 = zext i1 %2396 to i8
  store i8 %2408, i8* %30, align 1
  %2409 = lshr i32 %2393, 31
  %2410 = trunc i32 %2409 to i8
  store i8 %2410, i8* %33, align 1
  %2411 = lshr i32 %2392, 31
  %2412 = xor i32 %2409, %2411
  %2413 = add nuw nsw i32 %2412, %2409
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %39, align 1
  store i32 %2393, i32* inttoptr (i64 6471700 to i32*), align 4
  %2416 = add i64 %2391, -601
  store i64 %2416, i64* %3, align 8
  br label %block_.L_401072

block_.L_4012e1:                                  ; preds = %block_.L_401072
  store i64 4206896, i64* %RSI.i1153, align 8
  %2417 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2417, align 1
  %2418 = add i64 %1970, 7039
  %2419 = add i64 %1970, 21
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  %2422 = load float, float* inttoptr (i64 6470556 to float*), align 4
  %2423 = fpext float %2422 to double
  %2424 = bitcast i64 %2421 to double
  %2425 = fdiv double %2423, %2424
  store double %2425, double* %247, align 1
  %.cast30 = bitcast i64 %2421 to <2 x i32>
  %2426 = fptrunc double %2425 to float
  store float %2426, float* %938, align 1
  %2427 = extractelement <2 x i32> %.cast30, i32 1
  store i32 %2427, i32* %597, align 1
  store i32 0, i32* %598, align 1
  store i32 0, i32* %600, align 1
  %2428 = load <2 x float>, <2 x float>* %1031, align 1
  %2429 = extractelement <2 x float> %2428, i32 0
  store float %2429, float* inttoptr (i64 6470556 to float*), align 4
  %2430 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2430, i64* %RDI.i1473, align 8
  store i8 1, i8* %AL.i1414, align 1
  %2431 = add i64 %1970, -3585
  %2432 = add i64 %1970, 62
  %2433 = load i64, i64* %6, align 8
  %2434 = add i64 %2433, -8
  %2435 = inttoptr i64 %2434 to i64*
  store i64 %2432, i64* %2435, align 8
  store i64 %2434, i64* %6, align 8
  store i64 %2431, i64* %3, align 8
  %call2_40131a = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2431, %struct.Memory* %call2_40103d)
  %2436 = load i64, i64* %3, align 8
  store i64 4206937, i64* %RSI.i1153, align 8
  %2437 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2437, i64* %RDI.i1473, align 8
  %2438 = load i64, i64* %RBP.i, align 8
  %2439 = add i64 %2438, -972
  %2440 = load i32, i32* %EAX.i1406, align 4
  %2441 = add i64 %2436, 24
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2439 to i32*
  store i32 %2440, i32* %2442, align 4
  %2443 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %2444 = add i64 %2443, -3671
  %2445 = add i64 %2443, 7
  %2446 = load i64, i64* %6, align 8
  %2447 = add i64 %2446, -8
  %2448 = inttoptr i64 %2447 to i64*
  store i64 %2445, i64* %2448, align 8
  store i64 %2447, i64* %6, align 8
  store i64 %2444, i64* %3, align 8
  %call2_401339 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2444, %struct.Memory* %call2_40131a)
  %2449 = load i64, i64* %RBP.i, align 8
  %2450 = add i64 %2449, -976
  %2451 = load i32, i32* %EAX.i1406, align 4
  %2452 = load i64, i64* %3, align 8
  %2453 = add i64 %2452, 6
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2450 to i32*
  store i32 %2451, i32* %2454, align 4
  %2455 = load i64, i64* %3, align 8
  %2456 = add i64 %2455, -3428
  %2457 = add i64 %2455, 5
  %2458 = load i64, i64* %6, align 8
  %2459 = add i64 %2458, -8
  %2460 = inttoptr i64 %2459 to i64*
  store i64 %2457, i64* %2460, align 8
  store i64 %2459, i64* %6, align 8
  store i64 %2456, i64* %3, align 8
  %call2_401344 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2456, %struct.Memory* %call2_401339)
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -80
  %2463 = load i64, i64* %3, align 8
  %2464 = add i64 %2463, 5
  store i64 %2464, i64* %3, align 8
  %2465 = load <2 x float>, <2 x float>* %83, align 1
  %2466 = extractelement <2 x float> %2465, i32 0
  %2467 = inttoptr i64 %2462 to float*
  store float %2466, float* %2467, align 4
  %2468 = load i64, i64* %3, align 8
  %2469 = add i64 %2468, 11
  store i64 %2469, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_401359

block_.L_401359:                                  ; preds = %block_401369, %block_.L_4012e1
  %2470 = phi i32 [ %2517, %block_401369 ], [ 0, %block_.L_4012e1 ]
  %2471 = phi i64 [ %2540, %block_401369 ], [ %2469, %block_.L_4012e1 ]
  %2472 = zext i32 %2470 to i64
  store i64 %2472, i64* %RAX.i1480, align 8
  %2473 = load i64, i64* %RBP.i, align 8
  %2474 = add i64 %2473, -68
  %2475 = add i64 %2471, 10
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = sub i32 %2470, %2477
  %2479 = icmp ult i32 %2470, %2477
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %14, align 1
  %2481 = and i32 %2478, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %21, align 1
  %2486 = xor i32 %2477, %2470
  %2487 = xor i32 %2486, %2478
  %2488 = lshr i32 %2487, 4
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  store i8 %2490, i8* %27, align 1
  %2491 = icmp eq i32 %2478, 0
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %30, align 1
  %2493 = lshr i32 %2478, 31
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %33, align 1
  %2495 = lshr i32 %2470, 31
  %2496 = lshr i32 %2477, 31
  %2497 = xor i32 %2496, %2495
  %2498 = xor i32 %2493, %2495
  %2499 = add nuw nsw i32 %2498, %2497
  %2500 = icmp eq i32 %2499, 2
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %39, align 1
  %2502 = icmp ne i8 %2494, 0
  %2503 = xor i1 %2502, %2500
  %.v95 = select i1 %2503, i64 16, i64 81
  %2504 = add i64 %2471, %.v95
  store i64 %2504, i64* %3, align 8
  br i1 %2503, label %block_401369, label %block_.L_4013aa

block_401369:                                     ; preds = %block_.L_401359
  store i64 6471712, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %2505 = add i64 %2473, -20
  store i64 %2505, i64* %57, align 8
  %2506 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RSI.i1153, align 8
  %2508 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RDX.i1476, align 8
  %2510 = add i64 %2504, 999
  %2511 = add i64 %2504, 43
  %2512 = load i64, i64* %6, align 8
  %2513 = add i64 %2512, -8
  %2514 = inttoptr i64 %2513 to i64*
  store i64 %2511, i64* %2514, align 8
  store i64 %2513, i64* %6, align 8
  store i64 %2510, i64* %3, align 8
  %call2_40138f = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %2510, %struct.Memory* %call2_401344)
  %2515 = load i64, i64* %3, align 8
  %2516 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %2517 = add i32 %2516, 1
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RAX.i1480, align 8
  %2519 = icmp eq i32 %2516, -1
  %2520 = icmp eq i32 %2517, 0
  %2521 = or i1 %2519, %2520
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %14, align 1
  %2523 = and i32 %2517, 255
  %2524 = tail call i32 @llvm.ctpop.i32(i32 %2523)
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = xor i8 %2526, 1
  store i8 %2527, i8* %21, align 1
  %2528 = xor i32 %2517, %2516
  %2529 = lshr i32 %2528, 4
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  store i8 %2531, i8* %27, align 1
  %2532 = zext i1 %2520 to i8
  store i8 %2532, i8* %30, align 1
  %2533 = lshr i32 %2517, 31
  %2534 = trunc i32 %2533 to i8
  store i8 %2534, i8* %33, align 1
  %2535 = lshr i32 %2516, 31
  %2536 = xor i32 %2533, %2535
  %2537 = add nuw nsw i32 %2536, %2533
  %2538 = icmp eq i32 %2537, 2
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %39, align 1
  store i32 %2517, i32* inttoptr (i64 6470892 to i32*), align 4
  %2540 = add i64 %2515, -59
  store i64 %2540, i64* %3, align 8
  br label %block_.L_401359

block_.L_4013aa:                                  ; preds = %block_.L_401359
  %2541 = add i64 %2504, -3530
  %2542 = add i64 %2504, 5
  %2543 = load i64, i64* %6, align 8
  %2544 = add i64 %2543, -8
  %2545 = inttoptr i64 %2544 to i64*
  store i64 %2542, i64* %2545, align 8
  store i64 %2544, i64* %6, align 8
  store i64 %2541, i64* %3, align 8
  %call2_4013aa = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2541, %struct.Memory* %call2_401344)
  %2546 = load i64, i64* %3, align 8
  store i64 4206743, i64* %RSI.i1153, align 8
  %2547 = bitcast %union.VectorReg* %215 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2547, align 1
  %2548 = load i64, i64* %RBP.i, align 8
  %2549 = add i64 %2548, -84
  %2550 = add i64 %2546, 18
  store i64 %2550, i64* %3, align 8
  %2551 = load <2 x float>, <2 x float>* %83, align 1
  %2552 = extractelement <2 x float> %2551, i32 0
  %2553 = inttoptr i64 %2549 to float*
  store float %2552, float* %2553, align 4
  %2554 = load i64, i64* %RBP.i, align 8
  %2555 = add i64 %2554, -84
  %2556 = load i64, i64* %3, align 8
  %2557 = add i64 %2556, 5
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2555 to i32*
  %2559 = load i32, i32* %2558, align 4
  store i32 %2559, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2560 = add i64 %2554, -80
  %2561 = add i64 %2556, 10
  store i64 %2561, i64* %3, align 8
  %2562 = load <2 x float>, <2 x float>* %83, align 1
  %2563 = load <2 x i32>, <2 x i32>* %251, align 1
  %2564 = inttoptr i64 %2560 to float*
  %2565 = load float, float* %2564, align 4
  %2566 = extractelement <2 x float> %2562, i32 0
  %2567 = fsub float %2566, %2565
  store float %2567, float* %46, align 1
  %2568 = bitcast <2 x float> %2562 to <2 x i32>
  %2569 = extractelement <2 x i32> %2568, i32 1
  store i32 %2569, i32* %275, align 1
  %2570 = extractelement <2 x i32> %2563, i32 0
  store i32 %2570, i32* %277, align 1
  %2571 = extractelement <2 x i32> %2563, i32 1
  store i32 %2571, i32* %279, align 1
  %2572 = add i64 %2554, -76
  %2573 = add i64 %2556, 15
  store i64 %2573, i64* %3, align 8
  %2574 = load <2 x float>, <2 x float>* %83, align 1
  %2575 = extractelement <2 x float> %2574, i32 0
  %2576 = inttoptr i64 %2572 to float*
  store float %2575, float* %2576, align 4
  %2577 = load i64, i64* %RBP.i, align 8
  %2578 = add i64 %2577, -76
  %2579 = load i64, i64* %3, align 8
  %2580 = add i64 %2579, 5
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2578 to float*
  %2582 = load float, float* %2581, align 4
  %2583 = fpext float %2582 to double
  store double %2583, double* %212, align 1
  %2584 = add i64 %2577, -68
  %2585 = add i64 %2579, 10
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i32*
  %2587 = load i32, i32* %2586, align 4
  %2588 = sitofp i32 %2587 to double
  store double %2588, double* %247, align 1
  %2589 = fdiv double %2583, %2588
  %.cast31 = bitcast double %2589 to <2 x i32>
  %2590 = fptrunc double %2589 to float
  store float %2590, float* %46, align 1
  %2591 = extractelement <2 x i32> %.cast31, i32 1
  store i32 %2591, i32* %275, align 1
  %2592 = add i64 %2579, 23
  store i64 %2592, i64* %3, align 8
  %2593 = load <2 x float>, <2 x float>* %83, align 1
  %2594 = extractelement <2 x float> %2593, i32 0
  store float %2594, float* %2581, align 4
  %2595 = load i64, i64* %3, align 8
  %2596 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2596, i64* %RDI.i1473, align 8
  %2597 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2598 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %2599 = extractelement <2 x i32> %2597, i32 0
  store i32 %2599, i32* %47, align 1
  %2600 = extractelement <2 x i32> %2597, i32 1
  store i32 %2600, i32* %275, align 1
  %2601 = extractelement <2 x i32> %2598, i32 0
  store i32 %2601, i32* %277, align 1
  %2602 = extractelement <2 x i32> %2598, i32 1
  store i32 %2602, i32* %279, align 1
  store i8 1, i8* %AL.i1414, align 1
  %2603 = add i64 %2595, -3847
  %2604 = add i64 %2595, 18
  %2605 = load i64, i64* %6, align 8
  %2606 = add i64 %2605, -8
  %2607 = inttoptr i64 %2606 to i64*
  store i64 %2604, i64* %2607, align 8
  store i64 %2606, i64* %6, align 8
  store i64 %2603, i64* %3, align 8
  %call2_4013f4 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2603, %struct.Memory* %call2_4013aa)
  %2608 = load i64, i64* %3, align 8
  store i64 4206849, i64* %RSI.i1153, align 8
  %2609 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2609, i64* %RDI.i1473, align 8
  %2610 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RDX.i1476, align 8
  %2612 = load i64, i64* %RBP.i, align 8
  %2613 = add i64 %2612, -980
  %2614 = load i32, i32* %EAX.i1406, align 4
  %2615 = add i64 %2608, 31
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2613 to i32*
  store i32 %2614, i32* %2616, align 4
  %2617 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %2618 = add i64 %2617, -3896
  %2619 = add i64 %2617, 7
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2619, i64* %2622, align 8
  store i64 %2621, i64* %6, align 8
  store i64 %2618, i64* %3, align 8
  %call2_40141a = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2618, %struct.Memory* %call2_4013f4)
  %2623 = load i64, i64* %3, align 8
  store i64 4206618, i64* %RSI.i1153, align 8
  %2624 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2624, i64* %RDI.i1473, align 8
  %2625 = load i64, i64* %RBP.i, align 8
  %2626 = add i64 %2625, -984
  %2627 = load i32, i32* %EAX.i1406, align 4
  %2628 = add i64 %2623, 24
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2626 to i32*
  store i32 %2627, i32* %2629, align 4
  %2630 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %2631 = add i64 %2630, -3927
  %2632 = add i64 %2630, 7
  %2633 = load i64, i64* %6, align 8
  %2634 = add i64 %2633, -8
  %2635 = inttoptr i64 %2634 to i64*
  store i64 %2632, i64* %2635, align 8
  store i64 %2634, i64* %6, align 8
  store i64 %2631, i64* %3, align 8
  %call2_401439 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2631, %struct.Memory* %call2_40141a)
  %2636 = load i64, i64* %3, align 8
  store i64 4206674, i64* %RSI.i1153, align 8
  %2637 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %2637, i64* %RDI.i1473, align 8
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -988
  %2640 = load i32, i32* %EAX.i1406, align 4
  %2641 = add i64 %2636, 24
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2639 to i32*
  store i32 %2640, i32* %2642, align 4
  %2643 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1414, align 1
  %2644 = add i64 %2643, -3958
  %2645 = add i64 %2643, 7
  %2646 = load i64, i64* %6, align 8
  %2647 = add i64 %2646, -8
  %2648 = inttoptr i64 %2647 to i64*
  store i64 %2645, i64* %2648, align 8
  store i64 %2647, i64* %6, align 8
  store i64 %2644, i64* %3, align 8
  %call2_401458 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %2644, %struct.Memory* %call2_401439)
  %2649 = load i64, i64* %3, align 8
  %2650 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2650, align 1
  %2651 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2652 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %2653 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2654 = sitofp i32 %2653 to float
  store float %2654, float* %938, align 1
  %2655 = extractelement <2 x i32> %2651, i32 1
  store i32 %2655, i32* %597, align 1
  %2656 = extractelement <2 x i32> %2652, i32 0
  store i32 %2656, i32* %598, align 1
  %2657 = extractelement <2 x i32> %2652, i32 1
  store i32 %2657, i32* %600, align 1
  %2658 = load i64, i64* %RBP.i, align 8
  %2659 = add i64 %2658, -76
  %2660 = add i64 %2649, 17
  store i64 %2660, i64* %3, align 8
  %2661 = load <2 x float>, <2 x float>* %1031, align 1
  %2662 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %2663 = inttoptr i64 %2659 to float*
  %2664 = load float, float* %2663, align 4
  %2665 = extractelement <2 x float> %2661, i32 0
  %2666 = fmul float %2665, %2664
  store float %2666, float* %938, align 1
  %2667 = bitcast <2 x float> %2661 to <2 x i32>
  %2668 = extractelement <2 x i32> %2667, i32 1
  store i32 %2668, i32* %597, align 1
  %2669 = extractelement <2 x i32> %2662, i32 0
  store i32 %2669, i32* %598, align 1
  %2670 = extractelement <2 x i32> %2662, i32 1
  store i32 %2670, i32* %600, align 1
  %2671 = add i64 %2658, -44
  %2672 = add i64 %2649, 22
  store i64 %2672, i64* %3, align 8
  %2673 = load <2 x float>, <2 x float>* %1031, align 1
  %2674 = extractelement <2 x float> %2673, i32 0
  %2675 = inttoptr i64 %2671 to float*
  store float %2674, float* %2675, align 4
  %2676 = load i64, i64* %3, align 8
  %2677 = load <2 x float>, <2 x float>* %83, align 1
  %2678 = extractelement <2 x float> %2677, i32 0
  store float %2678, float* inttoptr (i64 6470580 to float*), align 4
  store i32 7, i32* inttoptr (i64 6471700 to i32*), align 4
  %2679 = load i64, i64* %RBP.i, align 8
  %2680 = add i64 %2679, -992
  %2681 = load i32, i32* %EAX.i1406, align 4
  %2682 = add i64 %2676, 26
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2680 to i32*
  store i32 %2681, i32* %2683, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2684 = bitcast i64* %50 to <2 x i32>*
  br label %block_.L_40148d

block_.L_40148d:                                  ; preds = %block_.L_4015d6, %block_.L_4013aa
  %2685 = phi i32 [ %3133, %block_.L_4015d6 ], [ %.pre79, %block_.L_4013aa ]
  %2686 = phi i64 [ %3156, %block_.L_4015d6 ], [ %.pre78, %block_.L_4013aa ]
  %2687 = add i32 %2685, -12
  %2688 = icmp ult i32 %2685, 12
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %14, align 1
  %2690 = and i32 %2687, 255
  %2691 = tail call i32 @llvm.ctpop.i32(i32 %2690)
  %2692 = trunc i32 %2691 to i8
  %2693 = and i8 %2692, 1
  %2694 = xor i8 %2693, 1
  store i8 %2694, i8* %21, align 1
  %2695 = xor i32 %2687, %2685
  %2696 = lshr i32 %2695, 4
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  store i8 %2698, i8* %27, align 1
  %2699 = icmp eq i32 %2687, 0
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %30, align 1
  %2701 = lshr i32 %2687, 31
  %2702 = trunc i32 %2701 to i8
  store i8 %2702, i8* %33, align 1
  %2703 = lshr i32 %2685, 31
  %2704 = xor i32 %2701, %2703
  %2705 = add nuw nsw i32 %2704, %2703
  %2706 = icmp eq i32 %2705, 2
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %39, align 1
  %2708 = icmp ne i8 %2702, 0
  %2709 = xor i1 %2708, %2706
  %.v96 = select i1 %2709, i64 14, i64 623
  %2710 = add i64 %2686, %.v96
  store i64 %2710, i64* %3, align 8
  br i1 %2709, label %block_40149b, label %block_.L_4016fc

block_40149b:                                     ; preds = %block_.L_40148d
  %2711 = add i64 %2710, -3771
  %2712 = add i64 %2710, 5
  %2713 = load i64, i64* %6, align 8
  %2714 = add i64 %2713, -8
  %2715 = inttoptr i64 %2714 to i64*
  store i64 %2712, i64* %2715, align 8
  store i64 %2714, i64* %6, align 8
  store i64 %2711, i64* %3, align 8
  %call2_40149b = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2711, %struct.Memory* %call2_401458)
  %2716 = load i64, i64* %RBP.i, align 8
  %2717 = add i64 %2716, -40
  %2718 = load i64, i64* %3, align 8
  %2719 = add i64 %2718, 5
  store i64 %2719, i64* %3, align 8
  %2720 = load <2 x float>, <2 x float>* %83, align 1
  %2721 = extractelement <2 x float> %2720, i32 0
  %2722 = inttoptr i64 %2717 to float*
  store float %2721, float* %2722, align 4
  %2723 = load i64, i64* %3, align 8
  %2724 = add i64 %2723, 11
  store i64 %2724, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_4014b0

block_.L_4014b0:                                  ; preds = %block_4014c4, %block_40149b
  %2725 = phi i32 [ %2779, %block_4014c4 ], [ 0, %block_40149b ]
  %2726 = phi i64 [ %2802, %block_4014c4 ], [ %2724, %block_40149b ]
  %2727 = zext i32 %2725 to i64
  store i64 %2727, i64* %RAX.i1480, align 8
  %2728 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2729 = sub i32 %2725, %2728
  %2730 = icmp ult i32 %2725, %2728
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %14, align 1
  %2732 = and i32 %2729, 255
  %2733 = tail call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  store i8 %2736, i8* %21, align 1
  %2737 = xor i32 %2728, %2725
  %2738 = xor i32 %2737, %2729
  %2739 = lshr i32 %2738, 4
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  store i8 %2741, i8* %27, align 1
  %2742 = icmp eq i32 %2729, 0
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %30, align 1
  %2744 = lshr i32 %2729, 31
  %2745 = trunc i32 %2744 to i8
  store i8 %2745, i8* %33, align 1
  %2746 = lshr i32 %2725, 31
  %2747 = lshr i32 %2728, 31
  %2748 = xor i32 %2747, %2746
  %2749 = xor i32 %2744, %2746
  %2750 = add nuw nsw i32 %2749, %2748
  %2751 = icmp eq i32 %2750, 2
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %39, align 1
  %2753 = icmp ne i8 %2745, 0
  %2754 = xor i1 %2753, %2751
  %.v97 = select i1 %2754, i64 20, i64 134
  %2755 = add i64 %2726, %.v97
  store i64 %2755, i64* %3, align 8
  br i1 %2754, label %block_4014c4, label %block_.L_401536

block_4014c4:                                     ; preds = %block_.L_4014b0
  store i64 6471712, i64* %RDI.i1473, align 8
  store i64 6468736, i64* %RCX.i1478, align 8
  %2756 = load i64, i64* %RBP.i, align 8
  %2757 = add i64 %2756, -20
  store i64 %2757, i64* %57, align 8
  %2758 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RSI.i1153, align 8
  %2760 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RDX.i1476, align 8
  %2762 = add i64 %2755, 652
  %2763 = add i64 %2755, 43
  %2764 = load i64, i64* %6, align 8
  %2765 = add i64 %2764, -8
  %2766 = inttoptr i64 %2765 to i64*
  store i64 %2763, i64* %2766, align 8
  store i64 %2765, i64* %6, align 8
  store i64 %2762, i64* %3, align 8
  %call2_4014ea = tail call %struct.Memory* @sub_401750.matgen(%struct.State* nonnull %0, i64 %2762, %struct.Memory* %call2_401458)
  %2767 = load i64, i64* %3, align 8
  store i64 6471712, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6470336, i64* %57, align 8
  %2768 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RSI.i1153, align 8
  %2770 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RDX.i1476, align 8
  %2772 = add i64 %2767, 1073
  %2773 = add i64 %2767, 49
  %2774 = load i64, i64* %6, align 8
  %2775 = add i64 %2774, -8
  %2776 = inttoptr i64 %2775 to i64*
  store i64 %2773, i64* %2776, align 8
  store i64 %2775, i64* %6, align 8
  store i64 %2772, i64* %3, align 8
  %call2_40151b = tail call %struct.Memory* @sub_401920.dgefa(%struct.State* nonnull %0, i64 %2772, %struct.Memory* %call2_401458)
  %2777 = load i64, i64* %3, align 8
  %2778 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %2779 = add i32 %2778, 1
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i1480, align 8
  %2781 = icmp eq i32 %2778, -1
  %2782 = icmp eq i32 %2779, 0
  %2783 = or i1 %2781, %2782
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %14, align 1
  %2785 = and i32 %2779, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %21, align 1
  %2790 = xor i32 %2779, %2778
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %27, align 1
  %2794 = zext i1 %2782 to i8
  store i8 %2794, i8* %30, align 1
  %2795 = lshr i32 %2779, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %33, align 1
  %2797 = lshr i32 %2778, 31
  %2798 = xor i32 %2795, %2797
  %2799 = add nuw nsw i32 %2798, %2795
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %39, align 1
  store i32 %2779, i32* inttoptr (i64 6470892 to i32*), align 4
  %2802 = add i64 %2777, -112
  store i64 %2802, i64* %3, align 8
  br label %block_.L_4014b0

block_.L_401536:                                  ; preds = %block_.L_4014b0
  %2803 = add i64 %2755, -3926
  %2804 = add i64 %2755, 5
  %2805 = load i64, i64* %6, align 8
  %2806 = add i64 %2805, -8
  %2807 = inttoptr i64 %2806 to i64*
  store i64 %2804, i64* %2807, align 8
  store i64 %2806, i64* %6, align 8
  store i64 %2803, i64* %3, align 8
  %call2_401536 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2803, %struct.Memory* %call2_401458)
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -40
  %2810 = load i64, i64* %3, align 8
  %2811 = add i64 %2810, 5
  store i64 %2811, i64* %3, align 8
  %2812 = load <2 x float>, <2 x float>* %83, align 1
  %2813 = load <2 x i32>, <2 x i32>* %251, align 1
  %2814 = inttoptr i64 %2809 to float*
  %2815 = load float, float* %2814, align 4
  %2816 = extractelement <2 x float> %2812, i32 0
  %2817 = fsub float %2816, %2815
  store float %2817, float* %46, align 1
  %2818 = bitcast <2 x float> %2812 to <2 x i32>
  %2819 = extractelement <2 x i32> %2818, i32 1
  store i32 %2819, i32* %275, align 1
  %2820 = extractelement <2 x i32> %2813, i32 0
  store i32 %2820, i32* %277, align 1
  %2821 = extractelement <2 x i32> %2813, i32 1
  store i32 %2821, i32* %279, align 1
  %2822 = add i64 %2808, -44
  %2823 = add i64 %2810, 10
  store i64 %2823, i64* %3, align 8
  %2824 = load <2 x float>, <2 x float>* %83, align 1
  %2825 = load <2 x i32>, <2 x i32>* %251, align 1
  %2826 = inttoptr i64 %2822 to float*
  %2827 = load float, float* %2826, align 4
  %2828 = extractelement <2 x float> %2824, i32 0
  %2829 = fsub float %2828, %2827
  store float %2829, float* %46, align 1
  %2830 = bitcast <2 x float> %2824 to <2 x i32>
  %2831 = extractelement <2 x i32> %2830, i32 1
  store i32 %2831, i32* %275, align 1
  %2832 = extractelement <2 x i32> %2825, i32 0
  store i32 %2832, i32* %277, align 1
  %2833 = extractelement <2 x i32> %2825, i32 1
  store i32 %2833, i32* %279, align 1
  %2834 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2835 = load <2 x i32>, <2 x i32>* %.pre-phi88, align 1
  %2836 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2837 = sitofp i32 %2836 to float
  store float %2837, float* %938, align 1
  %2838 = extractelement <2 x i32> %2834, i32 1
  store i32 %2838, i32* %597, align 1
  %2839 = extractelement <2 x i32> %2835, i32 0
  store i32 %2839, i32* %598, align 1
  %2840 = extractelement <2 x i32> %2835, i32 1
  store i32 %2840, i32* %600, align 1
  %2841 = load <2 x float>, <2 x float>* %83, align 1
  %2842 = load <2 x i32>, <2 x i32>* %251, align 1
  %2843 = load <2 x float>, <2 x float>* %1031, align 1
  %2844 = extractelement <2 x float> %2841, i32 0
  %2845 = extractelement <2 x float> %2843, i32 0
  %2846 = fdiv float %2844, %2845
  store float %2846, float* %46, align 1
  %2847 = bitcast <2 x float> %2841 to <2 x i32>
  %2848 = extractelement <2 x i32> %2847, i32 1
  store i32 %2848, i32* %275, align 1
  %2849 = extractelement <2 x i32> %2842, i32 0
  store i32 %2849, i32* %277, align 1
  %2850 = extractelement <2 x i32> %2842, i32 1
  store i32 %2850, i32* %279, align 1
  %2851 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2852 = sext i32 %2851 to i64
  store i64 %2852, i64* %RAX.i1480, align 8
  %2853 = shl nsw i64 %2852, 2
  %2854 = add nsw i64 %2853, 6470352
  %2855 = add i64 %2810, 40
  store i64 %2855, i64* %3, align 8
  %2856 = load <2 x float>, <2 x float>* %83, align 1
  %2857 = extractelement <2 x float> %2856, i32 0
  %2858 = inttoptr i64 %2854 to float*
  store float %2857, float* %2858, align 4
  %2859 = load i64, i64* %3, align 8
  %2860 = add i64 %2859, -3971
  %2861 = add i64 %2859, 5
  %2862 = load i64, i64* %6, align 8
  %2863 = add i64 %2862, -8
  %2864 = inttoptr i64 %2863 to i64*
  store i64 %2861, i64* %2864, align 8
  store i64 %2863, i64* %6, align 8
  store i64 %2860, i64* %3, align 8
  %call2_401563 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2860, %struct.Memory* %call2_401458)
  %2865 = load i64, i64* %RBP.i, align 8
  %2866 = add i64 %2865, -40
  %2867 = load i64, i64* %3, align 8
  %2868 = add i64 %2867, 5
  store i64 %2868, i64* %3, align 8
  %2869 = load <2 x float>, <2 x float>* %83, align 1
  %2870 = extractelement <2 x float> %2869, i32 0
  %2871 = inttoptr i64 %2866 to float*
  store float %2870, float* %2871, align 4
  %2872 = load i64, i64* %3, align 8
  %2873 = add i64 %2872, 11
  store i64 %2873, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  br label %block_.L_401578

block_.L_401578:                                  ; preds = %block_40158c, %block_.L_401536
  %2874 = phi i32 [ %2916, %block_40158c ], [ 0, %block_.L_401536 ]
  %2875 = phi i64 [ %2939, %block_40158c ], [ %2873, %block_.L_401536 ]
  %2876 = zext i32 %2874 to i64
  store i64 %2876, i64* %RAX.i1480, align 8
  %2877 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2878 = sub i32 %2874, %2877
  %2879 = icmp ult i32 %2874, %2877
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %14, align 1
  %2881 = and i32 %2878, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  %2886 = xor i32 %2877, %2874
  %2887 = xor i32 %2886, %2878
  %2888 = lshr i32 %2887, 4
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  store i8 %2890, i8* %27, align 1
  %2891 = icmp eq i32 %2878, 0
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %30, align 1
  %2893 = lshr i32 %2878, 31
  %2894 = trunc i32 %2893 to i8
  store i8 %2894, i8* %33, align 1
  %2895 = lshr i32 %2874, 31
  %2896 = lshr i32 %2877, 31
  %2897 = xor i32 %2896, %2895
  %2898 = xor i32 %2893, %2895
  %2899 = add nuw nsw i32 %2898, %2897
  %2900 = icmp eq i32 %2899, 2
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %39, align 1
  %2902 = icmp ne i8 %2894, 0
  %2903 = xor i1 %2902, %2900
  %.v98 = select i1 %2903, i64 20, i64 94
  %2904 = add i64 %2875, %.v98
  store i64 %2904, i64* %3, align 8
  br i1 %2903, label %block_40158c, label %block_.L_4015d6

block_40158c:                                     ; preds = %block_.L_401578
  store i64 6471712, i64* %RDI.i1473, align 8
  store i64 6469536, i64* %RCX.i1478, align 8
  store i64 6468736, i64* %57, align 8
  store i64 0, i64* %R9.i1469, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2905 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RSI.i1153, align 8
  %2907 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RDX.i1476, align 8
  %2909 = add i64 %2904, 1700
  %2910 = add i64 %2904, 52
  %2911 = load i64, i64* %6, align 8
  %2912 = add i64 %2911, -8
  %2913 = inttoptr i64 %2912 to i64*
  store i64 %2910, i64* %2913, align 8
  store i64 %2912, i64* %6, align 8
  store i64 %2909, i64* %3, align 8
  %call2_4015bb = tail call %struct.Memory* @sub_401c30.dgesl(%struct.State* nonnull %0, i64 %2909, %struct.Memory* %call2_401458)
  %2914 = load i64, i64* %3, align 8
  %2915 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %2916 = add i32 %2915, 1
  %2917 = zext i32 %2916 to i64
  store i64 %2917, i64* %RAX.i1480, align 8
  %2918 = icmp eq i32 %2915, -1
  %2919 = icmp eq i32 %2916, 0
  %2920 = or i1 %2918, %2919
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %14, align 1
  %2922 = and i32 %2916, 255
  %2923 = tail call i32 @llvm.ctpop.i32(i32 %2922)
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = xor i8 %2925, 1
  store i8 %2926, i8* %21, align 1
  %2927 = xor i32 %2916, %2915
  %2928 = lshr i32 %2927, 4
  %2929 = trunc i32 %2928 to i8
  %2930 = and i8 %2929, 1
  store i8 %2930, i8* %27, align 1
  %2931 = zext i1 %2919 to i8
  store i8 %2931, i8* %30, align 1
  %2932 = lshr i32 %2916, 31
  %2933 = trunc i32 %2932 to i8
  store i8 %2933, i8* %33, align 1
  %2934 = lshr i32 %2915, 31
  %2935 = xor i32 %2932, %2934
  %2936 = add nuw nsw i32 %2935, %2932
  %2937 = icmp eq i32 %2936, 2
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %39, align 1
  store i32 %2916, i32* inttoptr (i64 6470892 to i32*), align 4
  %2939 = add i64 %2914, -72
  store i64 %2939, i64* %3, align 8
  br label %block_.L_401578

block_.L_4015d6:                                  ; preds = %block_.L_401578
  %2940 = add i64 %2904, -4086
  %2941 = add i64 %2904, 5
  %2942 = load i64, i64* %6, align 8
  %2943 = add i64 %2942, -8
  %2944 = inttoptr i64 %2943 to i64*
  store i64 %2941, i64* %2944, align 8
  store i64 %2943, i64* %6, align 8
  store i64 %2940, i64* %3, align 8
  %call2_4015d6 = tail call %struct.Memory* @sub_4005e0.second(%struct.State* nonnull %0, i64 %2940, %struct.Memory* %call2_401458)
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 6253
  %2947 = add i64 %2945, 8
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2946 to i64*
  %2949 = load i64, i64* %2948, align 8
  store i64 %2949, i64* %221, align 1
  store double 0.000000e+00, double* %223, align 1
  %2950 = add i64 %2945, 6269
  %2951 = add i64 %2945, 16
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i64*
  %2953 = load i64, i64* %2952, align 8
  store i64 %2953, i64* %594, align 1
  store double 0.000000e+00, double* %1939, align 1
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -40
  %2956 = add i64 %2945, 21
  store i64 %2956, i64* %3, align 8
  %2957 = load <2 x float>, <2 x float>* %83, align 1
  %2958 = load <2 x i32>, <2 x i32>* %251, align 1
  %2959 = inttoptr i64 %2955 to float*
  %2960 = load float, float* %2959, align 4
  %2961 = extractelement <2 x float> %2957, i32 0
  %2962 = fsub float %2961, %2960
  store float %2962, float* %46, align 1
  %2963 = bitcast <2 x float> %2957 to <2 x i32>
  %2964 = extractelement <2 x i32> %2963, i32 1
  store i32 %2964, i32* %275, align 1
  %2965 = extractelement <2 x i32> %2958, i32 0
  store i32 %2965, i32* %277, align 1
  %2966 = extractelement <2 x i32> %2958, i32 1
  store i32 %2966, i32* %279, align 1
  %2967 = load <2 x i32>, <2 x i32>* %1940, align 1
  %2968 = load <2 x i32>, <2 x i32>* %1941, align 1
  %2969 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %2970 = sitofp i32 %2969 to float
  store float %2970, float* %1942, align 1
  %2971 = extractelement <2 x i32> %2967, i32 1
  store i32 %2971, i32* %256, align 1
  %2972 = extractelement <2 x i32> %2968, i32 0
  store i32 %2972, i32* %258, align 1
  %2973 = extractelement <2 x i32> %2968, i32 1
  store i32 %2973, i32* %260, align 1
  %2974 = load <2 x float>, <2 x float>* %83, align 1
  %2975 = load <2 x i32>, <2 x i32>* %251, align 1
  %2976 = load <2 x float>, <2 x float>* %1943, align 1
  %2977 = extractelement <2 x float> %2974, i32 0
  %2978 = extractelement <2 x float> %2976, i32 0
  %2979 = fdiv float %2977, %2978
  store float %2979, float* %46, align 1
  %2980 = bitcast <2 x float> %2974 to <2 x i32>
  %2981 = extractelement <2 x i32> %2980, i32 1
  store i32 %2981, i32* %275, align 1
  %2982 = extractelement <2 x i32> %2975, i32 0
  store i32 %2982, i32* %277, align 1
  %2983 = extractelement <2 x i32> %2975, i32 1
  store i32 %2983, i32* %279, align 1
  %2984 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2985 = sext i32 %2984 to i64
  %2986 = shl nsw i64 %2985, 2
  %2987 = add nsw i64 %2986, 6470412
  %2988 = add i64 %2945, 51
  store i64 %2988, i64* %3, align 8
  %2989 = load <2 x float>, <2 x float>* %83, align 1
  %2990 = extractelement <2 x float> %2989, i32 0
  %2991 = inttoptr i64 %2987 to float*
  store float %2990, float* %2991, align 4
  %2992 = load i64, i64* %3, align 8
  %2993 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RAX.i1480, align 8
  %2995 = shl nsw i64 %2994, 2
  %2996 = add nsw i64 %2995, 6470352
  %2997 = add i64 %2992, 17
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  %2999 = load i32, i32* %2998, align 4
  store i32 %2999, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store i64 %2994, i64* %RAX.i1480, align 8
  %3000 = add nsw i64 %2995, 6470412
  %3001 = add i64 %2992, 34
  store i64 %3001, i64* %3, align 8
  %3002 = load <2 x float>, <2 x float>* %83, align 1
  %3003 = load <2 x i32>, <2 x i32>* %251, align 1
  %3004 = inttoptr i64 %3000 to float*
  %3005 = load float, float* %3004, align 4
  %3006 = extractelement <2 x float> %3002, i32 0
  %3007 = fadd float %3006, %3005
  store float %3007, float* %46, align 1
  %3008 = bitcast <2 x float> %3002 to <2 x i32>
  %3009 = extractelement <2 x i32> %3008, i32 1
  store i32 %3009, i32* %275, align 1
  %3010 = extractelement <2 x i32> %3003, i32 0
  store i32 %3010, i32* %277, align 1
  %3011 = extractelement <2 x i32> %3003, i32 1
  store i32 %3011, i32* %279, align 1
  %3012 = load i64, i64* %RBP.i, align 8
  %3013 = add i64 %3012, -16
  %3014 = add i64 %2992, 39
  store i64 %3014, i64* %3, align 8
  %3015 = load <2 x float>, <2 x float>* %83, align 1
  %3016 = extractelement <2 x float> %3015, i32 0
  %3017 = inttoptr i64 %3013 to float*
  store float %3016, float* %3017, align 4
  %3018 = load i64, i64* %RBP.i, align 8
  %3019 = add i64 %3018, -16
  %3020 = load i64, i64* %3, align 8
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022, align 4
  store i32 %3023, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3024 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3025 = sext i32 %3024 to i64
  store i64 %3025, i64* %RAX.i1480, align 8
  %3026 = shl nsw i64 %3025, 2
  %3027 = add nsw i64 %3026, 6470472
  %3028 = add i64 %3020, 22
  store i64 %3028, i64* %3, align 8
  %3029 = load <2 x float>, <2 x float>* %83, align 1
  %3030 = extractelement <2 x float> %3029, i32 0
  %3031 = inttoptr i64 %3027 to float*
  store float %3030, float* %3031, align 4
  %3032 = load i64, i64* %RBP.i, align 8
  %3033 = add i64 %3032, -12
  %3034 = load i64, i64* %3, align 8
  %3035 = add i64 %3034, 5
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3033 to float*
  %3037 = load float, float* %3036, align 4
  %3038 = fpext float %3037 to double
  store double %3038, double* %212, align 1
  %3039 = add i64 %3032, -16
  %3040 = add i64 %3034, 10
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to float*
  %3042 = load float, float* %3041, align 4
  %3043 = fpext float %3042 to double
  store double %3043, double* %261, align 1
  %3044 = load double, double* %247, align 1
  %3045 = fmul double %3043, %3044
  store double %3045, double* %247, align 1
  %3046 = load <2 x i32>, <2 x i32>* %2684, align 1
  %3047 = fdiv double %3038, %3045
  %.cast33 = bitcast double %3047 to <2 x i32>
  %3048 = fptrunc double %3047 to float
  store float %3048, float* %46, align 1
  %3049 = extractelement <2 x i32> %.cast33, i32 1
  store i32 %3049, i32* %275, align 1
  %3050 = extractelement <2 x i32> %3046, i32 0
  store i32 %3050, i32* %277, align 1
  %3051 = extractelement <2 x i32> %3046, i32 1
  store i32 %3051, i32* %279, align 1
  %3052 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3053 = sext i32 %3052 to i64
  %3054 = shl nsw i64 %3053, 2
  %3055 = add nsw i64 %3054, 6470532
  %3056 = add i64 %3034, 39
  store i64 %3056, i64* %3, align 8
  %3057 = load <2 x float>, <2 x float>* %83, align 1
  %3058 = extractelement <2 x float> %3057, i32 0
  %3059 = inttoptr i64 %3055 to float*
  store float %3058, float* %3059, align 4
  %3060 = load i64, i64* %3, align 8
  %3061 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3062 = sext i32 %3061 to i64
  store i64 %3062, i64* %RAX.i1480, align 8
  %3063 = shl nsw i64 %3062, 2
  %3064 = add nsw i64 %3063, 6470532
  %3065 = add i64 %3060, 17
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to float*
  %3067 = load float, float* %3066, align 4
  %3068 = fpext float %3067 to double
  %3069 = load double, double* %220, align 1
  %3070 = fdiv double %3069, %3068
  store double %3070, double* %220, align 1
  %3071 = bitcast double %3068 to <2 x i32>
  %3072 = load <2 x i32>, <2 x i32>* %251, align 1
  %3073 = fptrunc double %3070 to float
  store float %3073, float* %46, align 1
  %3074 = extractelement <2 x i32> %3071, i32 1
  store i32 %3074, i32* %275, align 1
  %3075 = extractelement <2 x i32> %3072, i32 0
  store i32 %3075, i32* %277, align 1
  %3076 = extractelement <2 x i32> %3072, i32 1
  store i32 %3076, i32* %279, align 1
  store i64 %3062, i64* %RAX.i1480, align 8
  %3077 = add nsw i64 %3063, 6470592
  %3078 = add i64 %3060, 42
  store i64 %3078, i64* %3, align 8
  %3079 = load <2 x float>, <2 x float>* %83, align 1
  %3080 = extractelement <2 x float> %3079, i32 0
  %3081 = inttoptr i64 %3077 to float*
  store float %3080, float* %3081, align 4
  %3082 = load i64, i64* %RBP.i, align 8
  %3083 = add i64 %3082, -16
  %3084 = load i64, i64* %3, align 8
  %3085 = add i64 %3084, 5
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3083 to i32*
  %3087 = load i32, i32* %3086, align 4
  store i32 %3087, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3088 = add i64 %3082, -8
  %3089 = add i64 %3084, 10
  store i64 %3089, i64* %3, align 8
  %3090 = load <2 x float>, <2 x float>* %83, align 1
  %3091 = inttoptr i64 %3088 to float*
  %3092 = load float, float* %3091, align 4
  %3093 = extractelement <2 x float> %3090, i32 0
  %3094 = fdiv float %3093, %3092
  store float %3094, float* %46, align 1
  %3095 = bitcast <2 x float> %3090 to <2 x i32>
  %3096 = extractelement <2 x i32> %3095, i32 1
  store i32 %3096, i32* %275, align 1
  %3097 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3098 = sext i32 %3097 to i64
  %3099 = shl nsw i64 %3098, 2
  %3100 = add nsw i64 %3099, 6470652
  %3101 = add i64 %3084, 27
  store i64 %3101, i64* %3, align 8
  %3102 = load <2 x float>, <2 x float>* %83, align 1
  %3103 = extractelement <2 x float> %3102, i32 0
  %3104 = inttoptr i64 %3100 to float*
  store float %3103, float* %3104, align 4
  %3105 = load i64, i64* %3, align 8
  %3106 = load i32, i32* inttoptr (i64 6470580 to i32*), align 4
  store i32 %3106, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3107 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3108 = sext i32 %3107 to i64
  store i64 %3108, i64* %RAX.i1480, align 8
  %3109 = shl nsw i64 %3108, 2
  %3110 = add nsw i64 %3109, 6470532
  %3111 = add i64 %3105, 26
  store i64 %3111, i64* %3, align 8
  %3112 = load <2 x float>, <2 x float>* %83, align 1
  %3113 = load <2 x i32>, <2 x i32>* %251, align 1
  %3114 = inttoptr i64 %3110 to float*
  %3115 = load float, float* %3114, align 4
  %3116 = extractelement <2 x float> %3112, i32 0
  %3117 = fadd float %3116, %3115
  store float %3117, float* %46, align 1
  %3118 = bitcast <2 x float> %3112 to <2 x i32>
  %3119 = extractelement <2 x i32> %3118, i32 1
  store i32 %3119, i32* %275, align 1
  %3120 = extractelement <2 x i32> %3113, i32 0
  store i32 %3120, i32* %277, align 1
  %3121 = extractelement <2 x i32> %3113, i32 1
  store i32 %3121, i32* %279, align 1
  %3122 = load <2 x float>, <2 x float>* %83, align 1
  %3123 = extractelement <2 x float> %3122, i32 0
  store float %3123, float* inttoptr (i64 6470580 to float*), align 4
  %3124 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RDI.i1473, align 8
  %3126 = add i64 %3105, 4521
  %3127 = add i64 %3105, 47
  %3128 = load i64, i64* %6, align 8
  %3129 = add i64 %3128, -8
  %3130 = inttoptr i64 %3129 to i64*
  store i64 %3127, i64* %3130, align 8
  store i64 %3129, i64* %6, align 8
  store i64 %3126, i64* %3, align 8
  %call2_4016e1 = tail call %struct.Memory* @sub_402860.print_time(%struct.State* nonnull %0, i64 %3126, %struct.Memory* %call2_401458)
  %3131 = load i64, i64* %3, align 8
  %3132 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %3133 = add i32 %3132, 1
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RAX.i1480, align 8
  %3135 = icmp eq i32 %3132, -1
  %3136 = icmp eq i32 %3133, 0
  %3137 = or i1 %3135, %3136
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %14, align 1
  %3139 = and i32 %3133, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %21, align 1
  %3144 = xor i32 %3133, %3132
  %3145 = lshr i32 %3144, 4
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  store i8 %3147, i8* %27, align 1
  %3148 = zext i1 %3136 to i8
  store i8 %3148, i8* %30, align 1
  %3149 = lshr i32 %3133, 31
  %3150 = trunc i32 %3149 to i8
  store i8 %3150, i8* %33, align 1
  %3151 = lshr i32 %3132, 31
  %3152 = xor i32 %3149, %3151
  %3153 = add nuw nsw i32 %3152, %3149
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %39, align 1
  store i32 %3133, i32* inttoptr (i64 6471700 to i32*), align 4
  %3156 = add i64 %3131, -601
  store i64 %3156, i64* %3, align 8
  br label %block_.L_40148d

block_.L_4016fc:                                  ; preds = %block_.L_40148d
  store i64 4206896, i64* %RSI.i1153, align 8
  %3157 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3157, align 1
  %3158 = add i64 %2710, 5988
  %3159 = add i64 %2710, 21
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i64*
  %3161 = load i64, i64* %3160, align 8
  %3162 = load float, float* inttoptr (i64 6470580 to float*), align 4
  %3163 = fpext float %3162 to double
  %3164 = bitcast i64 %3161 to double
  %3165 = fdiv double %3163, %3164
  store double %3165, double* %247, align 1
  %.cast35 = bitcast i64 %3161 to <2 x i32>
  %3166 = fptrunc double %3165 to float
  store float %3166, float* %938, align 1
  %3167 = extractelement <2 x i32> %.cast35, i32 1
  store i32 %3167, i32* %597, align 1
  store i32 0, i32* %598, align 1
  store i32 0, i32* %600, align 1
  %3168 = load <2 x float>, <2 x float>* %1031, align 1
  %3169 = extractelement <2 x float> %3168, i32 0
  store float %3169, float* inttoptr (i64 6470580 to float*), align 4
  %3170 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %3170, i64* %RDI.i1473, align 8
  store i8 1, i8* %AL.i1414, align 1
  %3171 = add i64 %2710, -4636
  %3172 = add i64 %2710, 62
  %3173 = load i64, i64* %6, align 8
  %3174 = add i64 %3173, -8
  %3175 = inttoptr i64 %3174 to i64*
  store i64 %3172, i64* %3175, align 8
  store i64 %3174, i64* %6, align 8
  store i64 %3171, i64* %3, align 8
  %call2_401735 = tail call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* nonnull %0, i64 %3171, %struct.Memory* %call2_401458)
  %3176 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1478, align 8
  %3177 = load i64, i64* %RBP.i, align 8
  %3178 = add i64 %3177, -996
  %3179 = load i32, i32* %EAX.i1406, align 4
  %3180 = add i64 %3176, 8
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3178 to i32*
  store i32 %3179, i32* %3181, align 4
  %3182 = load i32, i32* %487, align 4
  %3183 = zext i32 %3182 to i64
  %3184 = load i64, i64* %3, align 8
  store i64 %3183, i64* %RAX.i1480, align 8
  %3185 = load i64, i64* %6, align 8
  %3186 = add i64 %3185, 1008
  store i64 %3186, i64* %6, align 8
  %3187 = icmp ugt i64 %3185, -1009
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %14, align 1
  %3189 = trunc i64 %3186 to i32
  %3190 = and i32 %3189, 255
  %3191 = tail call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  store i8 %3194, i8* %21, align 1
  %3195 = xor i64 %3185, 16
  %3196 = xor i64 %3195, %3186
  %3197 = lshr i64 %3196, 4
  %3198 = trunc i64 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %27, align 1
  %3200 = icmp eq i64 %3186, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %30, align 1
  %3202 = lshr i64 %3186, 63
  %3203 = trunc i64 %3202 to i8
  store i8 %3203, i8* %33, align 1
  %3204 = lshr i64 %3185, 63
  %3205 = xor i64 %3202, %3204
  %3206 = add nuw nsw i64 %3205, %3202
  %3207 = icmp eq i64 %3206, 2
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %39, align 1
  %3209 = add i64 %3184, 10
  store i64 %3209, i64* %3, align 8
  %3210 = add i64 %3185, 1016
  %3211 = inttoptr i64 %3186 to i64*
  %3212 = load i64, i64* %3211, align 8
  store i64 %3212, i64* %RBP.i, align 8
  store i64 %3210, i64* %6, align 8
  %3213 = add i64 %3184, 11
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3210 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %3, align 8
  %3216 = add i64 %3185, 1024
  store i64 %3216, i64* %6, align 8
  ret %struct.Memory* %call2_401735
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
define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1008
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
define %struct.Memory* @routine_movq__0x402edb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206299, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x27eb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10227
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
define %struct.Memory* @routine_movq__0x402eba___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206266, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402ea0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206240, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 720, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -852
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
define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 32, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 201, i32* inttoptr (i64 6307920 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* inttoptr (i64 6307924 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -852
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* inttoptr (i64 6307928 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6307904 to i64*), align 64
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x402ee3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206307, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x402eeb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206315, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x402f21___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206369, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f32___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206386, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6307936, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6468736, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9896
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
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9896
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
define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %9 = sext i32 %5 to i64
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %4, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
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
define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl_0x604050___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.matgen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.second(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6469536, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6470336, i64* %R8, align 8
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
define %struct.Memory* @routine_callq_.dgefa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470352 to float*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6468736, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dgesl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470412 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6470352 to i32*), align 16
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* inttoptr (i64 6470412 to float*), align 4
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6470892 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_400927(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6470892 to i32*), align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6468736
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
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
define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6470892 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4009b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RCX to [2 x i32]*
  %9 = bitcast i64* %RCX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40095d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6468736, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6470896, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6307936, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dmxpy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2458__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9311
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9315
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9319
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9323
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.VectorReg* %3 to i32*
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
define %struct.Memory* @routine_jbe_.L_400a58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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
define %struct.Memory* @routine_jmpq_.L_400a7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2420__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9255
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9259
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9263
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9267
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
define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23e6__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9197
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9201
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9205
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9209
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400aca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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
define %struct.Memory* @routine_jmpq_.L_400aee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23ae__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9141
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9145
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9149
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9153
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
define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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
define %struct.Memory* @routine_jmpq_.L_400a07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x231f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8999
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
define %struct.Memory* @routine_callq_.epslon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x402f44___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206404, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2308__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8976
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
define %struct.Memory* @routine_cvtsi2ssl_0x604058___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6470896 to i32*), align 16
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
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
define %struct.Memory* @routine_movl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307928 to i32*), align 8
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
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
define %struct.Memory* @routine_movq__0x402f6b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206443, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -908
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f8e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206478, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 5, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402faf___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206511, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402fe4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206564, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307920 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40301a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206618, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -924
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403052___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206674, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -928
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470472 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_jbe_.L_400cfe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2190__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8600
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
define %struct.Memory* @routine_movsd_0x2198__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8608
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
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
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
define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470532 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* inttoptr (i64 6470532 to float*), align 4
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470592 to float*), align 64
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470532 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470652 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.print_time(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x40305f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206687, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_jge_.L_400dc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40307d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206717, i64* %RSI, align 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_400e1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400d5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x403097___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206743, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movq__0x4030be___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206782, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* inttoptr (i64 6471696 to i32*), align 16
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
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
define %struct.Memory* @routine_jge_.L_400f3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400eb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_400f90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6471696 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400e96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000, i32* inttoptr (i64 6471696 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400fc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6471696 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030ed___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206829, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403101___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206849, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470556 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6471700 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %5, 6
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4012e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40111b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bad0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470352
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4011bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40115d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1c80__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7304
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
define %struct.Memory* @routine_movsd_0x1c88__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7312
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
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* inttoptr (i64 6471696 to i32*), align 16
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movss__xmm0__0x62bb0c___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470412
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470352
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470412
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb48___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movss__xmm0__0x62bb84___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
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
define %struct.Memory* @routine_movss__xmm0__0x62bbc0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470592
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbfc___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6470556 to i32*), align 4
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470532
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6471700 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401072(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403130___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206896, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1b6a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7026
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
define %struct.Memory* @routine_cvtss2sd_0x62bb9c___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* inttoptr (i64 6470556 to float*), align 4
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470556 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403159___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4206937, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -972
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -976
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4013aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6471712, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604054___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401359(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl_0x604054___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6307924 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -980
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -984
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470580 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* inttoptr (i64 6471700 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6471700 to i32*), align 4
  %6 = add i32 %5, -12
  %7 = icmp ult i32 %5, 12
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4016fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4015d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401578(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1865__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 6253
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
define %struct.Memory* @routine_movsd_0x186d__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 6261
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
define %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6470580 to i32*), align 4
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40148d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x174f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5975
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
define %struct.Memory* @routine_cvtss2sd_0x62bbb4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* inttoptr (i64 6470580 to float*), align 4
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* inttoptr (i64 6470580 to float*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1009
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
