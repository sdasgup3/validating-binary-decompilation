; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1c3f__rip__4199017__type = type <{ [16 x i8] }>
%G_0x1c3f__rip__4199025__type = type <{ [16 x i8] }>
%G_0x1c3f__rip__4199033__type = type <{ [16 x i8] }>
%G_0x1cd0__rip__4198856__type = type <{ [16 x i8] }>
%G_0x1cd0__rip__4198864__type = type <{ [16 x i8] }>
%G_0x1d82__rip__4198718__type = type <{ [16 x i8] }>
%G_0x1d82__rip__4198726__type = type <{ [16 x i8] }>
%G_0x1dd9__rip__4198607__type = type <{ [16 x i8] }>
%G_0x1e09__rip__4198599__type = type <{ [16 x i8] }>
%G_0x1e60__rip__4198480__type = type <{ [16 x i8] }>
%G_0x1e60__rip__4198488__type = type <{ [16 x i8] }>
%G_0x1eb2__rip__4198358__type = type <{ [16 x i8] }>
%G_0x1eb2__rip__4198366__type = type <{ [16 x i8] }>
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
@G_0x1c3f__rip__4199017_ = local_unnamed_addr global %G_0x1c3f__rip__4199017__type zeroinitializer
@G_0x1c3f__rip__4199025_ = local_unnamed_addr global %G_0x1c3f__rip__4199025__type zeroinitializer
@G_0x1c3f__rip__4199033_ = local_unnamed_addr global %G_0x1c3f__rip__4199033__type zeroinitializer
@G_0x1cd0__rip__4198856_ = local_unnamed_addr global %G_0x1cd0__rip__4198856__type zeroinitializer
@G_0x1cd0__rip__4198864_ = local_unnamed_addr global %G_0x1cd0__rip__4198864__type zeroinitializer
@G_0x1d82__rip__4198718_ = local_unnamed_addr global %G_0x1d82__rip__4198718__type zeroinitializer
@G_0x1d82__rip__4198726_ = local_unnamed_addr global %G_0x1d82__rip__4198726__type zeroinitializer
@G_0x1dd9__rip__4198607_ = local_unnamed_addr global %G_0x1dd9__rip__4198607__type zeroinitializer
@G_0x1e09__rip__4198599_ = local_unnamed_addr global %G_0x1e09__rip__4198599__type zeroinitializer
@G_0x1e60__rip__4198480_ = local_unnamed_addr global %G_0x1e60__rip__4198480__type zeroinitializer
@G_0x1e60__rip__4198488_ = local_unnamed_addr global %G_0x1e60__rip__4198488__type zeroinitializer
@G_0x1eb2__rip__4198358_ = local_unnamed_addr global %G_0x1eb2__rip__4198358__type zeroinitializer
@G_0x1eb2__rip__4198366_ = local_unnamed_addr global %G_0x1eb2__rip__4198366__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @init_array(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i680, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i678, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i676, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i674, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i672, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %RAX.i670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %35 = load i64, i64* %RAX.i670, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  %38 = add i64 %7, -56
  %39 = inttoptr i64 %38 to i64*
  store i64 %35, i64* %39, align 8
  store i64 %38, i64* %6, align 8
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, 88
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %RAX.i670, align 8
  %R10.i665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %46 = add i64 %40, 80
  %47 = add i64 %42, 8
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %R10.i665, align 8
  %R11.i662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %50 = add i64 %40, 72
  %51 = add i64 %42, 12
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %R11.i662, align 8
  %54 = add i64 %40, 64
  %55 = add i64 %42, 16
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %RBX.i672, align 8
  %58 = add i64 %40, 56
  %59 = add i64 %42, 20
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %R14.i678, align 8
  %62 = add i64 %40, 48
  %63 = add i64 %42, 24
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %R15.i680, align 8
  %66 = add i64 %40, 40
  %67 = add i64 %42, 28
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %R12.i674, align 8
  %70 = add i64 %40, 32
  %71 = add i64 %42, 32
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %R13.i676, align 8
  %74 = add i64 %40, -104
  %75 = add i64 %42, 36
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  store i64 %45, i64* %76, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, 24
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RAX.i670, align 8
  %83 = add i64 %77, -112
  %84 = add i64 %79, 8
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, 16
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RAX.i670, align 8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %93 = load i64, i64* bitcast (%G_0x1eb2__rip__4198358__type* @G_0x1eb2__rip__4198358_ to i64*), align 8
  %94 = bitcast [32 x %union.VectorReg]* %92 to double*
  %95 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %92, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %93, i64* %95, align 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %97 = bitcast i64* %96 to double*
  store double 0.000000e+00, double* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %99 = load i64, i64* bitcast (%G_0x1eb2__rip__4198366__type* @G_0x1eb2__rip__4198366_ to i64*), align 8
  %100 = bitcast %union.VectorReg* %98 to double*
  %101 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %98, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %99, i64* %101, align 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %103 = bitcast i64* %102 to double*
  store double 0.000000e+00, double* %103, align 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %104 to i32*
  %105 = add i64 %86, -44
  %106 = load i32, i32* %EDI.i, align 4
  %107 = add i64 %88, 23
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %109 to i32*
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -48
  %112 = load i32, i32* %ESI.i, align 4
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %115, align 4
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %116 to i32*
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -52
  %119 = load i32, i32* %EDX.i, align 4
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %122, align 4
  %RCX.i621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -64
  %125 = load i64, i64* %RCX.i621, align 8
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 4
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -72
  %131 = load i64, i64* %R8.i, align 8
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -80
  %137 = load i64, i64* %R9.i, align 8
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 4
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -64
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RCX.i621, align 8
  %147 = add i64 %143, 8
  store i64 %147, i64* %3, align 8
  %148 = load i64, i64* %101, align 1
  %149 = inttoptr i64 %146 to i64*
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -72
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %151 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RCX.i621, align 8
  %156 = add i64 %152, 8
  store i64 %156, i64* %3, align 8
  %157 = load i64, i64* %95, align 1
  %158 = inttoptr i64 %155 to i64*
  store i64 %157, i64* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -84
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 7
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 0, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -120
  %166 = load i64, i64* %R13.i676, align 8
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 4
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %165 to i64*
  store i64 %166, i64* %169, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -128
  %172 = load i64, i64* %R14.i678, align 8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -136
  %178 = load i64, i64* %R15.i680, align 8
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181, align 8
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -144
  %184 = load i64, i64* %R12.i674, align 8
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 7
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -152
  %190 = load i64, i64* %RBX.i672, align 8
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -160
  %196 = load i64, i64* %R11.i662, align 8
  %197 = load i64, i64* %3, align 8
  %198 = add i64 %197, 7
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199, align 8
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -168
  %202 = load i64, i64* %RAX.i670, align 8
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -176
  %208 = load i64, i64* %R10.i665, align 8
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211, align 8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %219 = bitcast %union.VectorReg* %218 to double*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %RDX.i546 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40103c

block_.L_40103c:                                  ; preds = %block_401048, %entry
  %221 = phi i64 [ %343, %block_401048 ], [ %.pre, %entry ]
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -84
  %224 = add i64 %221, 3
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RAX.i670, align 8
  %228 = add i64 %222, -44
  %229 = add i64 %221, 6
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sub i32 %226, %231
  %233 = icmp ult i32 %226, %231
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %212, align 1
  %235 = and i32 %232, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %213, align 1
  %240 = xor i32 %231, %226
  %241 = xor i32 %240, %232
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %214, align 1
  %245 = icmp eq i32 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %215, align 1
  %247 = lshr i32 %232, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %216, align 1
  %249 = lshr i32 %226, 31
  %250 = lshr i32 %231, 31
  %251 = xor i32 %250, %249
  %252 = xor i32 %247, %249
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %217, align 1
  %256 = icmp ne i8 %248, 0
  %257 = xor i1 %256, %254
  %.demorgan = or i1 %245, %257
  %.v = select i1 %.demorgan, i64 12, i64 112
  %258 = add i64 %221, %.v
  store i64 %258, i64* %3, align 8
  br i1 %.demorgan, label %block_401048, label %block_.L_4010ac

block_401048:                                     ; preds = %block_.L_40103c
  %259 = load i64, i64* bitcast (%G_0x1e60__rip__4198480__type* @G_0x1e60__rip__4198480_ to i64*), align 8
  store i64 %259, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %260 = load double, double* bitcast (%G_0x1e60__rip__4198488__type* @G_0x1e60__rip__4198488_ to double*), align 8
  store double %260, double* %100, align 1
  store double 0.000000e+00, double* %103, align 1
  %261 = add i64 %258, 19
  store i64 %261, i64* %3, align 8
  %262 = load i32, i32* %225, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RAX.i670, align 8
  %264 = sitofp i32 %262 to double
  %265 = fadd double %264, %260
  store double %265, double* %219, align 1
  %266 = add i64 %222, -48
  %267 = add i64 %258, 30
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i670, align 8
  %271 = sitofp i32 %269 to double
  store double %271, double* %100, align 1
  %272 = fdiv double %265, %271
  store double %272, double* %219, align 1
  %273 = add i64 %222, 48
  %274 = add i64 %258, 42
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RCX.i621, align 8
  %277 = add i64 %258, 46
  store i64 %277, i64* %3, align 8
  %278 = load i32, i32* %225, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RDX.i546, align 8
  %280 = shl nsw i64 %279, 3
  %281 = add i64 %280, %276
  %282 = add i64 %258, 51
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to double*
  store double %272, double* %283, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -84
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 3
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i670, align 8
  %291 = sitofp i32 %289 to double
  %292 = load double, double* %94, align 1
  %293 = fadd double %291, %292
  store double %293, double* %100, align 1
  %294 = add i64 %284, -48
  %295 = add i64 %286, 14
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i670, align 8
  %299 = sitofp i32 %297 to double
  store double %299, double* %94, align 1
  %300 = fdiv double %293, %299
  store double %300, double* %100, align 1
  %301 = add i64 %284, 56
  %302 = add i64 %286, 26
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RCX.i621, align 8
  %305 = add i64 %286, 30
  store i64 %305, i64* %3, align 8
  %306 = load i32, i32* %288, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RDX.i546, align 8
  %308 = shl nsw i64 %307, 3
  %309 = add i64 %308, %304
  %310 = add i64 %286, 35
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to double*
  store double %300, double* %311, align 8
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -84
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 3
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = add i32 %317, 1
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX.i670, align 8
  %320 = icmp eq i32 %317, -1
  %321 = icmp eq i32 %318, 0
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %212, align 1
  %324 = and i32 %318, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %213, align 1
  %329 = xor i32 %317, %318
  %330 = lshr i32 %329, 4
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %214, align 1
  %333 = zext i1 %321 to i8
  store i8 %333, i8* %215, align 1
  %334 = lshr i32 %318, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %216, align 1
  %336 = lshr i32 %317, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %334
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %217, align 1
  %341 = add i64 %314, 9
  store i64 %341, i64* %3, align 8
  store i32 %318, i32* %316, align 4
  %342 = load i64, i64* %3, align 8
  %343 = add i64 %342, -107
  store i64 %343, i64* %3, align 8
  br label %block_.L_40103c

block_.L_4010ac:                                  ; preds = %block_.L_40103c
  %344 = add i64 %258, 7
  store i64 %344, i64* %3, align 8
  store i32 0, i32* %225, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_4010b3

block_.L_4010b3:                                  ; preds = %block_4010bf, %block_.L_4010ac
  %345 = phi i64 [ %465, %block_4010bf ], [ %.pre1, %block_.L_4010ac ]
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -84
  %348 = add i64 %345, 3
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RAX.i670, align 8
  %352 = add i64 %346, -48
  %353 = add i64 %345, 6
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sub i32 %350, %355
  %357 = icmp ult i32 %350, %355
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %212, align 1
  %359 = and i32 %356, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %213, align 1
  %364 = xor i32 %355, %350
  %365 = xor i32 %364, %356
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %214, align 1
  %369 = icmp eq i32 %356, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %215, align 1
  %371 = lshr i32 %356, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %216, align 1
  %373 = lshr i32 %350, 31
  %374 = lshr i32 %355, 31
  %375 = xor i32 %374, %373
  %376 = xor i32 %371, %373
  %377 = add nuw nsw i32 %376, %375
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %217, align 1
  %380 = icmp ne i8 %372, 0
  %381 = xor i1 %380, %378
  %.demorgan6 = or i1 %369, %381
  %.v7 = select i1 %.demorgan6, i64 12, i64 112
  %382 = add i64 %345, %.v7
  store i64 %382, i64* %3, align 8
  br i1 %.demorgan6, label %block_4010bf, label %block_.L_401123

block_4010bf:                                     ; preds = %block_.L_4010b3
  %383 = load i64, i64* bitcast (%G_0x1e09__rip__4198599__type* @G_0x1e09__rip__4198599_ to i64*), align 8
  store i64 %383, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %384 = load double, double* bitcast (%G_0x1dd9__rip__4198607__type* @G_0x1dd9__rip__4198607_ to double*), align 8
  store double %384, double* %100, align 1
  store double 0.000000e+00, double* %103, align 1
  %385 = add i64 %382, 19
  store i64 %385, i64* %3, align 8
  %386 = load i32, i32* %349, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i670, align 8
  %388 = sitofp i32 %386 to double
  %389 = fadd double %388, %384
  store double %389, double* %219, align 1
  %390 = add i64 %382, 30
  store i64 %390, i64* %3, align 8
  %391 = load i32, i32* %354, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RAX.i670, align 8
  %393 = sitofp i32 %391 to double
  store double %393, double* %100, align 1
  %394 = fdiv double %389, %393
  store double %394, double* %219, align 1
  %395 = add i64 %346, 64
  %396 = add i64 %382, 42
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RCX.i621, align 8
  %399 = add i64 %382, 46
  store i64 %399, i64* %3, align 8
  %400 = load i32, i32* %349, align 4
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RDX.i546, align 8
  %402 = shl nsw i64 %401, 3
  %403 = add i64 %402, %398
  %404 = add i64 %382, 51
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to double*
  store double %394, double* %405, align 8
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -84
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 3
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RAX.i670, align 8
  %413 = sitofp i32 %411 to double
  %414 = load double, double* %94, align 1
  %415 = fadd double %413, %414
  store double %415, double* %100, align 1
  %416 = add i64 %406, -48
  %417 = add i64 %408, 14
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i670, align 8
  %421 = sitofp i32 %419 to double
  store double %421, double* %94, align 1
  %422 = fdiv double %415, %421
  store double %422, double* %100, align 1
  %423 = add i64 %406, 72
  %424 = add i64 %408, 26
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RCX.i621, align 8
  %427 = add i64 %408, 30
  store i64 %427, i64* %3, align 8
  %428 = load i32, i32* %410, align 4
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RDX.i546, align 8
  %430 = shl nsw i64 %429, 3
  %431 = add i64 %430, %426
  %432 = add i64 %408, 35
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to double*
  store double %422, double* %433, align 8
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -84
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 3
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %435 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = add i32 %439, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i670, align 8
  %442 = icmp eq i32 %439, -1
  %443 = icmp eq i32 %440, 0
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %212, align 1
  %446 = and i32 %440, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %213, align 1
  %451 = xor i32 %439, %440
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %214, align 1
  %455 = zext i1 %443 to i8
  store i8 %455, i8* %215, align 1
  %456 = lshr i32 %440, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %216, align 1
  %458 = lshr i32 %439, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %456
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %217, align 1
  %463 = add i64 %436, 9
  store i64 %463, i64* %3, align 8
  store i32 %440, i32* %438, align 4
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, -107
  store i64 %465, i64* %3, align 8
  br label %block_.L_4010b3

block_.L_401123:                                  ; preds = %block_.L_4010b3
  %466 = add i64 %382, 7
  store i64 %466, i64* %3, align 8
  store i32 0, i32* %349, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_40112a

block_.L_40112a:                                  ; preds = %block_401136, %block_.L_401123
  %467 = phi i64 [ %589, %block_401136 ], [ %.pre2, %block_.L_401123 ]
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -84
  %470 = add i64 %467, 3
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i670, align 8
  %474 = add i64 %468, -52
  %475 = add i64 %467, 6
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sub i32 %472, %477
  %479 = icmp ult i32 %472, %477
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %212, align 1
  %481 = and i32 %478, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %213, align 1
  %486 = xor i32 %477, %472
  %487 = xor i32 %486, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %214, align 1
  %491 = icmp eq i32 %478, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %215, align 1
  %493 = lshr i32 %478, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %216, align 1
  %495 = lshr i32 %472, 31
  %496 = lshr i32 %477, 31
  %497 = xor i32 %496, %495
  %498 = xor i32 %493, %495
  %499 = add nuw nsw i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %217, align 1
  %502 = icmp ne i8 %494, 0
  %503 = xor i1 %502, %500
  %.demorgan8 = or i1 %491, %503
  %.v9 = select i1 %.demorgan8, i64 12, i64 112
  %504 = add i64 %467, %.v9
  store i64 %504, i64* %3, align 8
  br i1 %.demorgan8, label %block_401136, label %block_.L_40119a

block_401136:                                     ; preds = %block_.L_40112a
  %505 = load i64, i64* bitcast (%G_0x1d82__rip__4198718__type* @G_0x1d82__rip__4198718_ to i64*), align 8
  store i64 %505, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %506 = load double, double* bitcast (%G_0x1d82__rip__4198726__type* @G_0x1d82__rip__4198726_ to double*), align 8
  store double %506, double* %100, align 1
  store double 0.000000e+00, double* %103, align 1
  %507 = add i64 %504, 19
  store i64 %507, i64* %3, align 8
  %508 = load i32, i32* %471, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX.i670, align 8
  %510 = sitofp i32 %508 to double
  %511 = fadd double %510, %506
  store double %511, double* %219, align 1
  %512 = add i64 %468, -48
  %513 = add i64 %504, 30
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i670, align 8
  %517 = sitofp i32 %515 to double
  store double %517, double* %100, align 1
  %518 = fdiv double %511, %517
  store double %518, double* %219, align 1
  %519 = add i64 %468, 80
  %520 = add i64 %504, 42
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RCX.i621, align 8
  %523 = add i64 %504, 46
  store i64 %523, i64* %3, align 8
  %524 = load i32, i32* %471, align 4
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RDX.i546, align 8
  %526 = shl nsw i64 %525, 3
  %527 = add i64 %526, %522
  %528 = add i64 %504, 51
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to double*
  store double %518, double* %529, align 8
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -84
  %532 = load i64, i64* %3, align 8
  %533 = add i64 %532, 3
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RAX.i670, align 8
  %537 = sitofp i32 %535 to double
  %538 = load double, double* %94, align 1
  %539 = fadd double %537, %538
  store double %539, double* %100, align 1
  %540 = add i64 %530, -48
  %541 = add i64 %532, 14
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX.i670, align 8
  %545 = sitofp i32 %543 to double
  store double %545, double* %94, align 1
  %546 = fdiv double %539, %545
  store double %546, double* %100, align 1
  %547 = add i64 %530, 88
  %548 = add i64 %532, 26
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RCX.i621, align 8
  %551 = add i64 %532, 30
  store i64 %551, i64* %3, align 8
  %552 = load i32, i32* %534, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RDX.i546, align 8
  %554 = shl nsw i64 %553, 3
  %555 = add i64 %554, %550
  %556 = add i64 %532, 35
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to double*
  store double %546, double* %557, align 8
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -84
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 3
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, 1
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i670, align 8
  %566 = icmp eq i32 %563, -1
  %567 = icmp eq i32 %564, 0
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %212, align 1
  %570 = and i32 %564, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %213, align 1
  %575 = xor i32 %563, %564
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %214, align 1
  %579 = zext i1 %567 to i8
  store i8 %579, i8* %215, align 1
  %580 = lshr i32 %564, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %216, align 1
  %582 = lshr i32 %563, 31
  %583 = xor i32 %580, %582
  %584 = add nuw nsw i32 %583, %580
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %217, align 1
  %587 = add i64 %560, 9
  store i64 %587, i64* %3, align 8
  store i32 %564, i32* %562, align 4
  %588 = load i64, i64* %3, align 8
  %589 = add i64 %588, -107
  store i64 %589, i64* %3, align 8
  br label %block_.L_40112a

block_.L_40119a:                                  ; preds = %block_.L_40112a
  %590 = add i64 %504, 7
  store i64 %590, i64* %3, align 8
  store i32 0, i32* %471, align 4
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %592 = bitcast %union.VectorReg* %591 to double*
  %593 = bitcast i64* %220 to double*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %595 = bitcast %union.VectorReg* %594 to double*
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_4011a1

block_.L_4011a1:                                  ; preds = %block_.L_4013a2, %block_.L_40119a
  %596 = phi i64 [ %1384, %block_.L_4013a2 ], [ %.pre3, %block_.L_40119a ]
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -84
  %599 = add i64 %596, 3
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX.i670, align 8
  %603 = add i64 %597, -44
  %604 = add i64 %596, 6
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sub i32 %601, %606
  %608 = icmp ult i32 %601, %606
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %212, align 1
  %610 = and i32 %607, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %213, align 1
  %615 = xor i32 %606, %601
  %616 = xor i32 %615, %607
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %214, align 1
  %620 = icmp eq i32 %607, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %215, align 1
  %622 = lshr i32 %607, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %216, align 1
  %624 = lshr i32 %601, 31
  %625 = lshr i32 %606, 31
  %626 = xor i32 %625, %624
  %627 = xor i32 %622, %624
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %217, align 1
  %631 = icmp ne i8 %623, 0
  %632 = xor i1 %631, %629
  %.demorgan10 = or i1 %620, %632
  %.v11 = select i1 %.demorgan10, i64 12, i64 532
  %633 = add i64 %596, %.v11
  store i64 %633, i64* %3, align 8
  br i1 %.demorgan10, label %block_4011ad, label %block_.L_4013b5

block_4011ad:                                     ; preds = %block_.L_4011a1
  %634 = add i64 %597, -88
  %635 = add i64 %633, 7
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  store i32 0, i32* %636, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_4011b4

block_.L_4011b4:                                  ; preds = %block_.L_40138f, %block_4011ad
  %637 = phi i64 [ %1354, %block_.L_40138f ], [ %.pre4, %block_4011ad ]
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -88
  %640 = add i64 %637, 3
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RAX.i670, align 8
  %644 = add i64 %638, -52
  %645 = add i64 %637, 6
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sub i32 %642, %647
  %649 = icmp ult i32 %642, %647
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %212, align 1
  %651 = and i32 %648, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %213, align 1
  %656 = xor i32 %647, %642
  %657 = xor i32 %656, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %214, align 1
  %661 = icmp eq i32 %648, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %215, align 1
  %663 = lshr i32 %648, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %216, align 1
  %665 = lshr i32 %642, 31
  %666 = lshr i32 %647, 31
  %667 = xor i32 %666, %665
  %668 = xor i32 %663, %665
  %669 = add nuw nsw i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %217, align 1
  %672 = icmp ne i8 %664, 0
  %673 = xor i1 %672, %670
  %.demorgan12 = or i1 %661, %673
  %.v13 = select i1 %.demorgan12, i64 12, i64 494
  %674 = add i64 %637, %.v13
  store i64 %674, i64* %3, align 8
  br i1 %.demorgan12, label %block_4011c0, label %block_.L_4013a2

block_4011c0:                                     ; preds = %block_.L_4011b4
  %675 = load i64, i64* bitcast (%G_0x1cd0__rip__4198856__type* @G_0x1cd0__rip__4198856_ to i64*), align 8
  store i64 %675, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %676 = load double, double* bitcast (%G_0x1cd0__rip__4198864__type* @G_0x1cd0__rip__4198864_ to double*), align 8
  store double %676, double* %100, align 1
  store double 0.000000e+00, double* %103, align 1
  %677 = add i64 %638, -84
  %678 = add i64 %674, 19
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX.i670, align 8
  %682 = sitofp i32 %680 to double
  store double %682, double* %219, align 1
  %683 = add i64 %674, 26
  store i64 %683, i64* %3, align 8
  %684 = load i32, i32* %641, align 4
  %685 = add i32 %684, 1
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i670, align 8
  %687 = icmp eq i32 %684, -1
  %688 = icmp eq i32 %685, 0
  %689 = or i1 %687, %688
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %212, align 1
  %691 = and i32 %685, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %213, align 1
  %696 = xor i32 %684, %685
  %697 = lshr i32 %696, 4
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  store i8 %699, i8* %214, align 1
  %700 = zext i1 %688 to i8
  store i8 %700, i8* %215, align 1
  %701 = lshr i32 %685, 31
  %702 = trunc i32 %701 to i8
  store i8 %702, i8* %216, align 1
  %703 = lshr i32 %684, 31
  %704 = xor i32 %701, %703
  %705 = add nuw nsw i32 %704, %701
  %706 = icmp eq i32 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %217, align 1
  %708 = sitofp i32 %685 to double
  store double %708, double* %592, align 1
  %709 = fmul double %682, %708
  %710 = fadd double %709, %676
  store double %710, double* %219, align 1
  %711 = add i64 %674, 44
  store i64 %711, i64* %3, align 8
  %712 = load i32, i32* %646, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX.i670, align 8
  %714 = sitofp i32 %712 to double
  store double %714, double* %100, align 1
  %715 = fdiv double %710, %714
  store double %715, double* %219, align 1
  %716 = add i64 %638, 16
  %717 = add i64 %674, 56
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RCX.i621, align 8
  %720 = add i64 %674, 60
  store i64 %720, i64* %3, align 8
  %721 = load i32, i32* %679, align 4
  %722 = sext i32 %721 to i64
  %723 = mul nsw i64 %722, 520
  store i64 %723, i64* %RDX.i546, align 8
  %724 = lshr i64 %723, 63
  %725 = add i64 %723, %719
  store i64 %725, i64* %RCX.i621, align 8
  %726 = icmp ult i64 %725, %719
  %727 = icmp ult i64 %725, %723
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %212, align 1
  %730 = trunc i64 %725 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %213, align 1
  %736 = xor i64 %723, %719
  %737 = xor i64 %736, %725
  %738 = lshr i64 %737, 4
  %739 = trunc i64 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %214, align 1
  %741 = icmp eq i64 %725, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %215, align 1
  %743 = lshr i64 %725, 63
  %744 = trunc i64 %743 to i8
  store i8 %744, i8* %216, align 1
  %745 = lshr i64 %719, 63
  %746 = xor i64 %743, %745
  %747 = xor i64 %743, %724
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %217, align 1
  %751 = load i64, i64* %RBP.i, align 8
  %752 = add i64 %751, -88
  %753 = add i64 %674, 74
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  store i64 %756, i64* %RDX.i546, align 8
  %757 = shl nsw i64 %756, 3
  %758 = add i64 %757, %725
  %759 = add i64 %674, 79
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to double*
  store double %715, double* %760, align 8
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -84
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 3
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RAX.i670, align 8
  %768 = sitofp i32 %766 to double
  store double %768, double* %100, align 1
  %769 = add i64 %761, -88
  %770 = add i64 %763, 10
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = add i32 %772, 2
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i670, align 8
  %775 = icmp ugt i32 %772, -3
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %212, align 1
  %777 = and i32 %773, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %213, align 1
  %782 = xor i32 %772, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %214, align 1
  %786 = icmp eq i32 %773, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %215, align 1
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %216, align 1
  %790 = lshr i32 %772, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %788
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %217, align 1
  %795 = sitofp i32 %773 to double
  store double %795, double* %219, align 1
  %796 = fmul double %768, %795
  %797 = load double, double* %94, align 1
  %798 = fadd double %796, %797
  store double %798, double* %100, align 1
  %799 = add i64 %761, -52
  %800 = add i64 %763, 28
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i670, align 8
  %804 = sitofp i32 %802 to double
  store double %804, double* %94, align 1
  %805 = fdiv double %798, %804
  store double %805, double* %100, align 1
  %806 = add i64 %761, -80
  %807 = add i64 %763, 40
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %RCX.i621, align 8
  %810 = add i64 %763, 44
  store i64 %810, i64* %3, align 8
  %811 = load i32, i32* %765, align 4
  %812 = sext i32 %811 to i64
  %813 = mul nsw i64 %812, 520
  store i64 %813, i64* %RDX.i546, align 8
  %814 = lshr i64 %813, 63
  %815 = add i64 %813, %809
  store i64 %815, i64* %RCX.i621, align 8
  %816 = icmp ult i64 %815, %809
  %817 = icmp ult i64 %815, %813
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %212, align 1
  %820 = trunc i64 %815 to i32
  %821 = and i32 %820, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %213, align 1
  %826 = xor i64 %813, %809
  %827 = xor i64 %826, %815
  %828 = lshr i64 %827, 4
  %829 = trunc i64 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %214, align 1
  %831 = icmp eq i64 %815, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %215, align 1
  %833 = lshr i64 %815, 63
  %834 = trunc i64 %833 to i8
  store i8 %834, i8* %216, align 1
  %835 = lshr i64 %809, 63
  %836 = xor i64 %833, %835
  %837 = xor i64 %833, %814
  %838 = add nuw nsw i64 %836, %837
  %839 = icmp eq i64 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %217, align 1
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -88
  %843 = add i64 %763, 58
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RDX.i546, align 8
  %847 = shl nsw i64 %846, 3
  %848 = add i64 %847, %815
  %849 = add i64 %763, 63
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to double*
  store double %805, double* %850, align 8
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -92
  %853 = load i64, i64* %3, align 8
  %854 = add i64 %853, 7
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %852 to i32*
  store i32 0, i32* %855, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_401255

block_.L_401255:                                  ; preds = %block_401261, %block_4011c0
  %856 = phi i64 [ %1324, %block_401261 ], [ %.pre5, %block_4011c0 ]
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -92
  %859 = add i64 %856, 3
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RAX.i670, align 8
  %863 = add i64 %857, -48
  %864 = add i64 %856, 6
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sub i32 %861, %866
  %868 = icmp ult i32 %861, %866
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %212, align 1
  %870 = and i32 %867, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %213, align 1
  %875 = xor i32 %866, %861
  %876 = xor i32 %875, %867
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %214, align 1
  %880 = icmp eq i32 %867, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %215, align 1
  %882 = lshr i32 %867, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %216, align 1
  %884 = lshr i32 %861, 31
  %885 = lshr i32 %866, 31
  %886 = xor i32 %885, %884
  %887 = xor i32 %882, %884
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %217, align 1
  %891 = icmp ne i8 %883, 0
  %892 = xor i1 %891, %889
  %.demorgan14 = or i1 %880, %892
  %.v15 = select i1 %.demorgan14, i64 12, i64 314
  %893 = add i64 %856, %.v15
  store i64 %893, i64* %3, align 8
  br i1 %.demorgan14, label %block_401261, label %block_.L_40138f

block_401261:                                     ; preds = %block_.L_401255
  %894 = load i64, i64* bitcast (%G_0x1c3f__rip__4199017__type* @G_0x1c3f__rip__4199017_ to i64*), align 8
  store i64 %894, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %895 = load i64, i64* bitcast (%G_0x1c3f__rip__4199025__type* @G_0x1c3f__rip__4199025_ to i64*), align 8
  store i64 %895, i64* %101, align 1
  store double 0.000000e+00, double* %103, align 1
  %896 = load double, double* bitcast (%G_0x1c3f__rip__4199033__type* @G_0x1c3f__rip__4199033_ to double*), align 8
  store double %896, double* %219, align 1
  store double 0.000000e+00, double* %593, align 1
  %897 = add i64 %857, -84
  %898 = add i64 %893, 27
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i670, align 8
  %902 = sitofp i32 %900 to double
  store double %902, double* %592, align 1
  %903 = add i64 %857, -88
  %904 = add i64 %893, 34
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, 3
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i670, align 8
  %909 = icmp ugt i32 %906, -4
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %212, align 1
  %911 = and i32 %907, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %213, align 1
  %916 = xor i32 %906, %907
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %214, align 1
  %920 = icmp eq i32 %907, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %215, align 1
  %922 = lshr i32 %907, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %216, align 1
  %924 = lshr i32 %906, 31
  %925 = xor i32 %922, %924
  %926 = add nuw nsw i32 %925, %922
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %217, align 1
  %929 = sitofp i32 %907 to double
  store double %929, double* %595, align 1
  %930 = fmul double %902, %929
  store double %930, double* %592, align 1
  %931 = add i64 %893, 48
  store i64 %931, i64* %3, align 8
  %932 = load i32, i32* %860, align 4
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RAX.i670, align 8
  %934 = sitofp i32 %932 to double
  store double %934, double* %595, align 1
  %935 = fadd double %930, %934
  %936 = fadd double %935, %896
  store double %936, double* %592, align 1
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -48
  %939 = add i64 %893, 63
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX.i670, align 8
  %943 = sitofp i32 %941 to double
  store double %943, double* %219, align 1
  %944 = fdiv double %936, %943
  store double %944, double* %592, align 1
  %945 = add i64 %937, 24
  %946 = add i64 %893, 75
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RCX.i621, align 8
  %949 = add i64 %937, -84
  %950 = add i64 %893, 79
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  %954 = mul nsw i64 %953, 33800
  store i64 %954, i64* %RDX.i546, align 8
  %955 = lshr i64 %954, 63
  %956 = add i64 %954, %948
  store i64 %956, i64* %RCX.i621, align 8
  %957 = icmp ult i64 %956, %948
  %958 = icmp ult i64 %956, %954
  %959 = or i1 %957, %958
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %212, align 1
  %961 = trunc i64 %956 to i32
  %962 = and i32 %961, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %213, align 1
  %967 = xor i64 %954, %948
  %968 = xor i64 %967, %956
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %214, align 1
  %972 = icmp eq i64 %956, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %215, align 1
  %974 = lshr i64 %956, 63
  %975 = trunc i64 %974 to i8
  store i8 %975, i8* %216, align 1
  %976 = lshr i64 %948, 63
  %977 = xor i64 %974, %976
  %978 = xor i64 %974, %955
  %979 = add nuw nsw i64 %977, %978
  %980 = icmp eq i64 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %217, align 1
  %982 = add i64 %937, -88
  %983 = add i64 %893, 93
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sext i32 %985 to i64
  %987 = mul nsw i64 %986, 520
  store i64 %987, i64* %RDX.i546, align 8
  %988 = lshr i64 %987, 63
  %989 = add i64 %987, %956
  store i64 %989, i64* %RCX.i621, align 8
  %990 = icmp ult i64 %989, %956
  %991 = icmp ult i64 %989, %987
  %992 = or i1 %990, %991
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %212, align 1
  %994 = trunc i64 %989 to i32
  %995 = and i32 %994, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %213, align 1
  %1000 = xor i64 %987, %956
  %1001 = xor i64 %1000, %989
  %1002 = lshr i64 %1001, 4
  %1003 = trunc i64 %1002 to i8
  %1004 = and i8 %1003, 1
  store i8 %1004, i8* %214, align 1
  %1005 = icmp eq i64 %989, 0
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %215, align 1
  %1007 = lshr i64 %989, 63
  %1008 = trunc i64 %1007 to i8
  store i8 %1008, i8* %216, align 1
  %1009 = xor i64 %1007, %974
  %1010 = xor i64 %1007, %988
  %1011 = add nuw nsw i64 %1009, %1010
  %1012 = icmp eq i64 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %217, align 1
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -92
  %1016 = add i64 %893, 107
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i546, align 8
  %1020 = shl nsw i64 %1019, 3
  %1021 = add i64 %1020, %989
  %1022 = add i64 %893, 112
  store i64 %1022, i64* %3, align 8
  %1023 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %591, i64 0, i32 0, i32 0, i32 0, i64 0
  %1024 = load i64, i64* %1023, align 1
  %1025 = inttoptr i64 %1021 to i64*
  store i64 %1024, i64* %1025, align 8
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -84
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1027 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RAX.i670, align 8
  %1033 = sitofp i32 %1031 to double
  store double %1033, double* %219, align 1
  %1034 = add i64 %1026, -88
  %1035 = add i64 %1028, 10
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = add i32 %1037, 4
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RAX.i670, align 8
  %1040 = icmp ugt i32 %1037, -5
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %212, align 1
  %1042 = and i32 %1038, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %213, align 1
  %1047 = xor i32 %1037, %1038
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %214, align 1
  %1051 = icmp eq i32 %1038, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %215, align 1
  %1053 = lshr i32 %1038, 31
  %1054 = trunc i32 %1053 to i8
  store i8 %1054, i8* %216, align 1
  %1055 = lshr i32 %1037, 31
  %1056 = xor i32 %1053, %1055
  %1057 = add nuw nsw i32 %1056, %1053
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %217, align 1
  %1060 = sitofp i32 %1038 to double
  store double %1060, double* %592, align 1
  %1061 = fmul double %1033, %1060
  store double %1061, double* %219, align 1
  %1062 = add i64 %1026, -92
  %1063 = add i64 %1028, 24
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX.i670, align 8
  %1067 = sitofp i32 %1065 to double
  store double %1067, double* %592, align 1
  %1068 = fadd double %1061, %1067
  %1069 = load double, double* %100, align 1
  %1070 = fadd double %1068, %1069
  store double %1070, double* %219, align 1
  %1071 = add i64 %1026, -52
  %1072 = add i64 %1028, 39
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i670, align 8
  %1076 = sitofp i32 %1074 to double
  store double %1076, double* %100, align 1
  %1077 = fdiv double %1070, %1076
  store double %1077, double* %219, align 1
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, 32
  %1080 = add i64 %1028, 51
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i64*
  %1082 = load i64, i64* %1081, align 8
  store i64 %1082, i64* %RCX.i621, align 8
  %1083 = add i64 %1078, -84
  %1084 = add i64 %1028, 55
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = mul nsw i64 %1087, 33800
  store i64 %1088, i64* %RDX.i546, align 8
  %1089 = lshr i64 %1088, 63
  %1090 = add i64 %1088, %1082
  store i64 %1090, i64* %RCX.i621, align 8
  %1091 = icmp ult i64 %1090, %1082
  %1092 = icmp ult i64 %1090, %1088
  %1093 = or i1 %1091, %1092
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %212, align 1
  %1095 = trunc i64 %1090 to i32
  %1096 = and i32 %1095, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %213, align 1
  %1101 = xor i64 %1088, %1082
  %1102 = xor i64 %1101, %1090
  %1103 = lshr i64 %1102, 4
  %1104 = trunc i64 %1103 to i8
  %1105 = and i8 %1104, 1
  store i8 %1105, i8* %214, align 1
  %1106 = icmp eq i64 %1090, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %215, align 1
  %1108 = lshr i64 %1090, 63
  %1109 = trunc i64 %1108 to i8
  store i8 %1109, i8* %216, align 1
  %1110 = lshr i64 %1082, 63
  %1111 = xor i64 %1108, %1110
  %1112 = xor i64 %1108, %1089
  %1113 = add nuw nsw i64 %1111, %1112
  %1114 = icmp eq i64 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %217, align 1
  %1116 = add i64 %1078, -88
  %1117 = add i64 %1028, 69
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = mul nsw i64 %1120, 520
  store i64 %1121, i64* %RDX.i546, align 8
  %1122 = lshr i64 %1121, 63
  %1123 = add i64 %1121, %1090
  store i64 %1123, i64* %RCX.i621, align 8
  %1124 = icmp ult i64 %1123, %1090
  %1125 = icmp ult i64 %1123, %1121
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %212, align 1
  %1128 = trunc i64 %1123 to i32
  %1129 = and i32 %1128, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %213, align 1
  %1134 = xor i64 %1121, %1090
  %1135 = xor i64 %1134, %1123
  %1136 = lshr i64 %1135, 4
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  store i8 %1138, i8* %214, align 1
  %1139 = icmp eq i64 %1123, 0
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %215, align 1
  %1141 = lshr i64 %1123, 63
  %1142 = trunc i64 %1141 to i8
  store i8 %1142, i8* %216, align 1
  %1143 = xor i64 %1141, %1108
  %1144 = xor i64 %1141, %1122
  %1145 = add nuw nsw i64 %1143, %1144
  %1146 = icmp eq i64 %1145, 2
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %217, align 1
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -92
  %1150 = add i64 %1028, 83
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RDX.i546, align 8
  %1154 = shl nsw i64 %1153, 3
  %1155 = add i64 %1154, %1123
  %1156 = add i64 %1028, 88
  store i64 %1156, i64* %3, align 8
  %1157 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %218, i64 0, i32 0, i32 0, i32 0, i64 0
  %1158 = load i64, i64* %1157, align 1
  %1159 = inttoptr i64 %1155 to i64*
  store i64 %1158, i64* %1159, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -84
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i670, align 8
  %1167 = sitofp i32 %1165 to double
  store double %1167, double* %100, align 1
  %1168 = add i64 %1160, -88
  %1169 = add i64 %1162, 10
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = add i32 %1171, 5
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX.i670, align 8
  %1174 = icmp ugt i32 %1171, -6
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %212, align 1
  %1176 = and i32 %1172, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %213, align 1
  %1181 = xor i32 %1171, %1172
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %214, align 1
  %1185 = icmp eq i32 %1172, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %215, align 1
  %1187 = lshr i32 %1172, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %216, align 1
  %1189 = lshr i32 %1171, 31
  %1190 = xor i32 %1187, %1189
  %1191 = add nuw nsw i32 %1190, %1187
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %217, align 1
  %1194 = sitofp i32 %1172 to double
  store double %1194, double* %219, align 1
  %1195 = fmul double %1167, %1194
  store double %1195, double* %100, align 1
  %1196 = add i64 %1160, -92
  %1197 = add i64 %1162, 24
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i670, align 8
  %1201 = sitofp i32 %1199 to double
  store double %1201, double* %219, align 1
  %1202 = fadd double %1195, %1201
  %1203 = load double, double* %94, align 1
  %1204 = fadd double %1202, %1203
  store double %1204, double* %100, align 1
  %1205 = add i64 %1160, -44
  %1206 = add i64 %1162, 39
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RAX.i670, align 8
  %1210 = sitofp i32 %1208 to double
  store double %1210, double* %94, align 1
  %1211 = fdiv double %1204, %1210
  store double %1211, double* %100, align 1
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, 40
  %1214 = add i64 %1162, 51
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RCX.i621, align 8
  %1217 = add i64 %1212, -84
  %1218 = add i64 %1162, 55
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = mul nsw i64 %1221, 33800
  store i64 %1222, i64* %RDX.i546, align 8
  %1223 = lshr i64 %1222, 63
  %1224 = add i64 %1222, %1216
  store i64 %1224, i64* %RCX.i621, align 8
  %1225 = icmp ult i64 %1224, %1216
  %1226 = icmp ult i64 %1224, %1222
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %212, align 1
  %1229 = trunc i64 %1224 to i32
  %1230 = and i32 %1229, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %213, align 1
  %1235 = xor i64 %1222, %1216
  %1236 = xor i64 %1235, %1224
  %1237 = lshr i64 %1236, 4
  %1238 = trunc i64 %1237 to i8
  %1239 = and i8 %1238, 1
  store i8 %1239, i8* %214, align 1
  %1240 = icmp eq i64 %1224, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %215, align 1
  %1242 = lshr i64 %1224, 63
  %1243 = trunc i64 %1242 to i8
  store i8 %1243, i8* %216, align 1
  %1244 = lshr i64 %1216, 63
  %1245 = xor i64 %1242, %1244
  %1246 = xor i64 %1242, %1223
  %1247 = add nuw nsw i64 %1245, %1246
  %1248 = icmp eq i64 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %217, align 1
  %1250 = add i64 %1212, -88
  %1251 = add i64 %1162, 69
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = mul nsw i64 %1254, 520
  store i64 %1255, i64* %RDX.i546, align 8
  %1256 = lshr i64 %1255, 63
  %1257 = add i64 %1255, %1224
  store i64 %1257, i64* %RCX.i621, align 8
  %1258 = icmp ult i64 %1257, %1224
  %1259 = icmp ult i64 %1257, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %212, align 1
  %1262 = trunc i64 %1257 to i32
  %1263 = and i32 %1262, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %213, align 1
  %1268 = xor i64 %1255, %1224
  %1269 = xor i64 %1268, %1257
  %1270 = lshr i64 %1269, 4
  %1271 = trunc i64 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %214, align 1
  %1273 = icmp eq i64 %1257, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %215, align 1
  %1275 = lshr i64 %1257, 63
  %1276 = trunc i64 %1275 to i8
  store i8 %1276, i8* %216, align 1
  %1277 = xor i64 %1275, %1242
  %1278 = xor i64 %1275, %1256
  %1279 = add nuw nsw i64 %1277, %1278
  %1280 = icmp eq i64 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %217, align 1
  %1282 = load i64, i64* %RBP.i, align 8
  %1283 = add i64 %1282, -92
  %1284 = add i64 %1162, 83
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sext i32 %1286 to i64
  store i64 %1287, i64* %RDX.i546, align 8
  %1288 = shl nsw i64 %1287, 3
  %1289 = add i64 %1288, %1257
  %1290 = add i64 %1162, 88
  store i64 %1290, i64* %3, align 8
  %1291 = load i64, i64* %101, align 1
  %1292 = inttoptr i64 %1289 to i64*
  store i64 %1291, i64* %1292, align 8
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -92
  %1295 = load i64, i64* %3, align 8
  %1296 = add i64 %1295, 3
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1294 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = add i32 %1298, 1
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX.i670, align 8
  %1301 = icmp eq i32 %1298, -1
  %1302 = icmp eq i32 %1299, 0
  %1303 = or i1 %1301, %1302
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %212, align 1
  %1305 = and i32 %1299, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %213, align 1
  %1310 = xor i32 %1298, %1299
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %214, align 1
  %1314 = zext i1 %1302 to i8
  store i8 %1314, i8* %215, align 1
  %1315 = lshr i32 %1299, 31
  %1316 = trunc i32 %1315 to i8
  store i8 %1316, i8* %216, align 1
  %1317 = lshr i32 %1298, 31
  %1318 = xor i32 %1315, %1317
  %1319 = add nuw nsw i32 %1318, %1315
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %217, align 1
  %1322 = add i64 %1295, 9
  store i64 %1322, i64* %3, align 8
  store i32 %1299, i32* %1297, align 4
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, -309
  store i64 %1324, i64* %3, align 8
  br label %block_.L_401255

block_.L_40138f:                                  ; preds = %block_.L_401255
  %1325 = add i64 %857, -88
  %1326 = add i64 %893, 8
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = add i32 %1328, 1
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RAX.i670, align 8
  %1331 = icmp eq i32 %1328, -1
  %1332 = icmp eq i32 %1329, 0
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %212, align 1
  %1335 = and i32 %1329, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %213, align 1
  %1340 = xor i32 %1328, %1329
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %214, align 1
  %1344 = zext i1 %1332 to i8
  store i8 %1344, i8* %215, align 1
  %1345 = lshr i32 %1329, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %216, align 1
  %1347 = lshr i32 %1328, 31
  %1348 = xor i32 %1345, %1347
  %1349 = add nuw nsw i32 %1348, %1345
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %217, align 1
  %1352 = add i64 %893, 14
  store i64 %1352, i64* %3, align 8
  store i32 %1329, i32* %1327, align 4
  %1353 = load i64, i64* %3, align 8
  %1354 = add i64 %1353, -489
  store i64 %1354, i64* %3, align 8
  br label %block_.L_4011b4

block_.L_4013a2:                                  ; preds = %block_.L_4011b4
  %1355 = add i64 %638, -84
  %1356 = add i64 %674, 8
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = add i32 %1358, 1
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i670, align 8
  %1361 = icmp eq i32 %1358, -1
  %1362 = icmp eq i32 %1359, 0
  %1363 = or i1 %1361, %1362
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %212, align 1
  %1365 = and i32 %1359, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %213, align 1
  %1370 = xor i32 %1358, %1359
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %214, align 1
  %1374 = zext i1 %1362 to i8
  store i8 %1374, i8* %215, align 1
  %1375 = lshr i32 %1359, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %216, align 1
  %1377 = lshr i32 %1358, 31
  %1378 = xor i32 %1375, %1377
  %1379 = add nuw nsw i32 %1378, %1375
  %1380 = icmp eq i32 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %217, align 1
  %1382 = add i64 %674, 14
  store i64 %1382, i64* %3, align 8
  store i32 %1359, i32* %1357, align 4
  %1383 = load i64, i64* %3, align 8
  %1384 = add i64 %1383, -527
  store i64 %1384, i64* %3, align 8
  br label %block_.L_4011a1

block_.L_4013b5:                                  ; preds = %block_.L_4011a1
  %1385 = load i64, i64* %6, align 8
  %1386 = add i64 %1385, 8
  store i64 %1386, i64* %6, align 8
  %1387 = icmp ugt i64 %1385, -9
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %212, align 1
  %1389 = trunc i64 %1386 to i32
  %1390 = and i32 %1389, 255
  %1391 = tail call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %213, align 1
  %1395 = xor i64 %1385, %1386
  %1396 = lshr i64 %1395, 4
  %1397 = trunc i64 %1396 to i8
  %1398 = and i8 %1397, 1
  store i8 %1398, i8* %214, align 1
  %1399 = icmp eq i64 %1386, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %215, align 1
  %1401 = lshr i64 %1386, 63
  %1402 = trunc i64 %1401 to i8
  store i8 %1402, i8* %216, align 1
  %1403 = lshr i64 %1385, 63
  %1404 = xor i64 %1401, %1403
  %1405 = add nuw nsw i64 %1404, %1401
  %1406 = icmp eq i64 %1405, 2
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %217, align 1
  %1408 = add i64 %633, 5
  store i64 %1408, i64* %3, align 8
  %1409 = add i64 %1385, 16
  %1410 = inttoptr i64 %1386 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RBX.i672, align 8
  store i64 %1409, i64* %6, align 8
  %1412 = add i64 %633, 7
  store i64 %1412, i64* %3, align 8
  %1413 = add i64 %1385, 24
  %1414 = inttoptr i64 %1409 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %R12.i674, align 8
  store i64 %1413, i64* %6, align 8
  %1416 = add i64 %633, 9
  store i64 %1416, i64* %3, align 8
  %1417 = add i64 %1385, 32
  %1418 = inttoptr i64 %1413 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %R13.i676, align 8
  store i64 %1417, i64* %6, align 8
  %1420 = add i64 %633, 11
  store i64 %1420, i64* %3, align 8
  %1421 = add i64 %1385, 40
  %1422 = inttoptr i64 %1417 to i64*
  %1423 = load i64, i64* %1422, align 8
  store i64 %1423, i64* %R14.i678, align 8
  store i64 %1421, i64* %6, align 8
  %1424 = add i64 %633, 13
  store i64 %1424, i64* %3, align 8
  %1425 = add i64 %1385, 48
  %1426 = inttoptr i64 %1421 to i64*
  %1427 = load i64, i64* %1426, align 8
  store i64 %1427, i64* %R15.i680, align 8
  store i64 %1425, i64* %6, align 8
  %1428 = add i64 %633, 14
  store i64 %1428, i64* %3, align 8
  %1429 = add i64 %1385, 56
  %1430 = inttoptr i64 %1425 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RBP.i, align 8
  store i64 %1429, i64* %6, align 8
  %1432 = add i64 %633, 15
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1429 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %3, align 8
  %1435 = add i64 %1385, 64
  store i64 %1435, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

define %struct.Memory* @routine_pushq__rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1eb2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1eb2__rip__4198358__type* @G_0x1eb2__rip__4198358_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1eb2__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1eb2__rip__4198366__type* @G_0x1eb2__rip__4198366_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_4010ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1e60__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1e60__rip__4198480__type* @G_0x1e60__rip__4198480_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1e60__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1e60__rip__4198488__type* @G_0x1e60__rip__4198488_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_40103c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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

define %struct.Memory* @routine_jg_.L_401123(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1e09__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1e09__rip__4198599__type* @G_0x1e09__rip__4198599_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1dd9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1dd9__rip__4198607__type* @G_0x1dd9__rip__4198607_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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

define %struct.Memory* @routine_jg_.L_40119a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1d82__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1d82__rip__4198718__type* @G_0x1d82__rip__4198718_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1d82__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1d82__rip__4198726__type* @G_0x1d82__rip__4198726_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40112a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4013b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_4013a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1cd0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1cd0__rip__4198856__type* @G_0x1cd0__rip__4198856_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1cd0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1cd0__rip__4198864__type* @G_0x1cd0__rip__4198864_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x208___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 520
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40138f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1c3f__rip__4199017__type* @G_0x1c3f__rip__4199017_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1c3f__rip__4199025__type* @G_0x1c3f__rip__4199025_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1c3f__rip__4199033__type* @G_0x1c3f__rip__4199033_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -4
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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

define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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

define %struct.Memory* @routine_addsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x8408___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 33800
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -6
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401255(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401394(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4011b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4013a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -9
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
