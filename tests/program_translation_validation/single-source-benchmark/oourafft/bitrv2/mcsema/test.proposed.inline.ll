; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400388__init_type = type <{ [23 x i8] }>
%seg_4003a0__text_type = type <{ [354 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_400388__init = internal constant %seg_400388__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05e\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003a0__text = internal constant %seg_4003a0__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7\88\04@\00\FF\15&\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\09 \00UH\8D-\9E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: alwaysinline
define %struct.Memory* @bitrv2(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP.i
  %11 = load i64, i64* %PC.i
  %12 = add i64 %11, 1
  store i64 %12, i64* %PC.i
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %10, i64* %16
  store i64 %15, i64* %13, align 8
  store %struct.Memory* %loadMem_4011e0, %struct.Memory** %MEMORY
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1229 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1230 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i1229
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1229
  store i64 %26, i64* %RBP.i1230, align 8
  store %struct.Memory* %loadMem_4011e1, %struct.Memory** %MEMORY
  %loadMem_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i1227 = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i1228 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i1228
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i1227
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i1226
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i1226
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_4011e4, %struct.Memory** %MEMORY
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i1223 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RSI.i1224 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i1225 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i1225
  %55 = sub i64 %54, 16
  %56 = load i64, i64* %RSI.i1224
  %57 = load i64, i64* %PC.i1223
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i1223
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59
  store %struct.Memory* %loadMem_4011e7, %struct.Memory** %MEMORY
  %loadMem_4011eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i1220 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RDX.i1221 = bitcast %union.anon* %65 to i64*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i1222 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i1222
  %70 = sub i64 %69, 24
  %71 = load i64, i64* %RDX.i1221
  %72 = load i64, i64* %PC.i1220
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC.i1220
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74
  store %struct.Memory* %loadMem_4011eb, %struct.Memory** %MEMORY
  %loadMem_4011ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i1217 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDX.i1218 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i1219 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i1219
  %85 = sub i64 %84, 16
  %86 = load i64, i64* %PC.i1217
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i1217
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88
  store i64 %89, i64* %RDX.i1218, align 8
  store %struct.Memory* %loadMem_4011ef, %struct.Memory** %MEMORY
  %loadMem_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i1215 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RDX.i1216 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RDX.i1216
  %97 = load i64, i64* %PC.i1215
  %98 = add i64 %97, 6
  store i64 %98, i64* %PC.i1215
  %99 = inttoptr i64 %96 to i32*
  store i32 0, i32* %99
  store %struct.Memory* %loadMem_4011f3, %struct.Memory** %MEMORY
  %loadMem_4011f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i1213 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RBP.i1214 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %RBP.i1214
  %110 = sub i64 %109, 4
  %111 = load i64, i64* %PC.i1213
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i1213
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4011f9, %struct.Memory** %MEMORY
  %loadMem_4011fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i1211 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %121 to i32*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBP.i1212 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RBP.i1212
  %126 = sub i64 %125, 44
  %127 = load i32, i32* %EDI.i
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC.i1211
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC.i1211
  %131 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %131
  store %struct.Memory* %loadMem_4011fc, %struct.Memory** %MEMORY
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i1209 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i1210 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i1210
  %139 = sub i64 %138, 48
  %140 = load i64, i64* %PC.i1209
  %141 = add i64 %140, 7
  store i64 %141, i64* %PC.i1209
  %142 = inttoptr i64 %139 to i32*
  store i32 1, i32* %142
  store %struct.Memory* %loadMem_4011ff, %struct.Memory** %MEMORY
  br label %block_.L_401206

block_.L_401206:                                  ; preds = %block_.L_40125d, %entry
  %loadMem_401206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i1206 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RAX.i1207 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i1208 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i1208
  %153 = sub i64 %152, 48
  %154 = load i64, i64* %PC.i1206
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i1206
  %156 = inttoptr i64 %153 to i32*
  %157 = load i32, i32* %156
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX.i1207, align 8
  store %struct.Memory* %loadMem_401206, %struct.Memory** %MEMORY
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i1204 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RAX.i1205 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RAX.i1205
  %166 = load i64, i64* %PC.i1204
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i1204
  %168 = and i64 %165, 4294967295
  %169 = shl i64 %168, 2
  %170 = trunc i64 %169 to i32
  %171 = icmp slt i32 %170, 0
  %172 = shl i32 %170, 1
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i1205, align 8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %175 = zext i1 %171 to i8
  store i8 %175, i8* %174, align 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %177 = and i32 %172, 254
  %178 = call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %176, align 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %182, align 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = icmp eq i32 %172, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %183, align 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %187 = lshr i32 %172, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %186, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %189, align 1
  store %struct.Memory* %loadMem_401209, %struct.Memory** %MEMORY
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i1201 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %EAX.i1202 = bitcast %union.anon* %195 to i32*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i1203 = bitcast %union.anon* %198 to i64*
  %199 = load i32, i32* %EAX.i1202
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* %RBP.i1203
  %202 = sub i64 %201, 44
  %203 = load i64, i64* %PC.i1201
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i1201
  %205 = inttoptr i64 %202 to i32*
  %206 = load i32, i32* %205
  %207 = sub i32 %199, %206
  %208 = icmp ult i32 %199, %206
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %209, i8* %210, align 1
  %211 = and i32 %207, 255
  %212 = call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %215, i8* %216, align 1
  %217 = xor i32 %206, %199
  %218 = xor i32 %217, %207
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %221, i8* %222, align 1
  %223 = icmp eq i32 %207, 0
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %224, i8* %225, align 1
  %226 = lshr i32 %207, 31
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %227, i8* %228, align 1
  %229 = lshr i32 %199, 31
  %230 = lshr i32 %206, 31
  %231 = xor i32 %230, %229
  %232 = xor i32 %226, %229
  %233 = add i32 %232, %231
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %235, i8* %236, align 1
  store %struct.Memory* %loadMem_40120c, %struct.Memory** %MEMORY
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i1200 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %PC.i1200
  %241 = add i64 %240, 92
  %242 = load i64, i64* %PC.i1200
  %243 = add i64 %242, 6
  %244 = load i64, i64* %PC.i1200
  %245 = add i64 %244, 6
  store i64 %245, i64* %PC.i1200
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %247 = load i8, i8* %246, align 1
  %248 = icmp ne i8 %247, 0
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %250 = load i8, i8* %249, align 1
  %251 = icmp ne i8 %250, 0
  %252 = xor i1 %248, %251
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %BRANCH_TAKEN, align 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %256 = select i1 %252, i64 %243, i64 %241
  store i64 %256, i64* %255, align 8
  store %struct.Memory* %loadMem_40120f, %struct.Memory** %MEMORY
  %loadBr_40120f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40120f = icmp eq i8 %loadBr_40120f, 1
  br i1 %cmpBr_40120f, label %block_.L_40126b, label %block_401215

block_401215:                                     ; preds = %block_.L_401206
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i1197 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i1198 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i1199 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i1199
  %267 = sub i64 %266, 44
  %268 = load i64, i64* %PC.i1197
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i1197
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i1198, align 8
  store %struct.Memory* %loadMem_401215, %struct.Memory** %MEMORY
  %loadMem_401218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i1195 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RAX.i1196 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RAX.i1196
  %280 = load i64, i64* %PC.i1195
  %281 = add i64 %280, 2
  store i64 %281, i64* %PC.i1195
  %282 = shl i64 %279, 32
  %283 = ashr i64 %282, 33
  %284 = trunc i64 %279 to i8
  %285 = and i8 %284, 1
  %286 = trunc i64 %283 to i32
  %287 = and i64 %283, 4294967295
  store i64 %287, i64* %RAX.i1196, align 8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %285, i8* %288, align 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %290 = and i32 %286, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %289, align 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %295, align 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %297 = icmp eq i32 %286, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %296, align 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %300 = lshr i32 %286, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %299, align 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %302, align 1
  store %struct.Memory* %loadMem_401218, %struct.Memory** %MEMORY
  %loadMem_40121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i1192 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %EAX.i1193 = bitcast %union.anon* %308 to i32*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i1194 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i1194
  %313 = sub i64 %312, 44
  %314 = load i32, i32* %EAX.i1193
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %PC.i1192
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC.i1192
  %318 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %318
  store %struct.Memory* %loadMem_40121b, %struct.Memory** %MEMORY
  %loadMem_40121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i1190 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i1191 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i1191
  %326 = sub i64 %325, 28
  %327 = load i64, i64* %PC.i1190
  %328 = add i64 %327, 7
  store i64 %328, i64* %PC.i1190
  %329 = inttoptr i64 %326 to i32*
  store i32 0, i32* %329
  store %struct.Memory* %loadMem_40121e, %struct.Memory** %MEMORY
  br label %block_.L_401225

block_.L_401225:                                  ; preds = %block_401231, %block_401215
  %loadMem_401225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i1187 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RAX.i1188 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RBP.i1189 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RBP.i1189
  %340 = sub i64 %339, 28
  %341 = load i64, i64* %PC.i1187
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC.i1187
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX.i1188, align 8
  store %struct.Memory* %loadMem_401225, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i1184 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %EAX.i1185 = bitcast %union.anon* %351 to i32*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 15
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RBP.i1186 = bitcast %union.anon* %354 to i64*
  %355 = load i32, i32* %EAX.i1185
  %356 = zext i32 %355 to i64
  %357 = load i64, i64* %RBP.i1186
  %358 = sub i64 %357, 48
  %359 = load i64, i64* %PC.i1184
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC.i1184
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361
  %363 = sub i32 %355, %362
  %364 = icmp ult i32 %355, %362
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %365, i8* %366, align 1
  %367 = and i32 %363, 255
  %368 = call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %371, i8* %372, align 1
  %373 = xor i32 %362, %355
  %374 = xor i32 %373, %363
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %377, i8* %378, align 1
  %379 = icmp eq i32 %363, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1
  %382 = lshr i32 %363, 31
  %383 = trunc i32 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1
  %385 = lshr i32 %355, 31
  %386 = lshr i32 %362, 31
  %387 = xor i32 %386, %385
  %388 = xor i32 %382, %385
  %389 = add i32 %388, %387
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %391, i8* %392, align 1
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i1183 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %PC.i1183
  %397 = add i64 %396, 50
  %398 = load i64, i64* %PC.i1183
  %399 = add i64 %398, 6
  %400 = load i64, i64* %PC.i1183
  %401 = add i64 %400, 6
  store i64 %401, i64* %PC.i1183
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %403 = load i8, i8* %402, align 1
  %404 = icmp ne i8 %403, 0
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %406 = load i8, i8* %405, align 1
  %407 = icmp ne i8 %406, 0
  %408 = xor i1 %404, %407
  %409 = xor i1 %408, true
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %BRANCH_TAKEN, align 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %412 = select i1 %408, i64 %399, i64 %397
  store i64 %412, i64* %411, align 8
  store %struct.Memory* %loadMem_40122b, %struct.Memory** %MEMORY
  %loadBr_40122b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40122b = icmp eq i8 %loadBr_40122b, 1
  br i1 %cmpBr_40122b, label %block_.L_40125d, label %block_401231

block_401231:                                     ; preds = %block_.L_401225
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i1180 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RAX.i1181 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 15
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RBP.i1182 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %RBP.i1182
  %423 = sub i64 %422, 16
  %424 = load i64, i64* %PC.i1180
  %425 = add i64 %424, 4
  store i64 %425, i64* %PC.i1180
  %426 = inttoptr i64 %423 to i64*
  %427 = load i64, i64* %426
  store i64 %427, i64* %RAX.i1181, align 8
  store %struct.Memory* %loadMem_401231, %struct.Memory** %MEMORY
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i1177 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i1178 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i1179 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i1179
  %438 = sub i64 %437, 28
  %439 = load i64, i64* %PC.i1177
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC.i1177
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %RCX.i1178, align 8
  store %struct.Memory* %loadMem_401235, %struct.Memory** %MEMORY
  %loadMem_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i1173 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RAX.i1174 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RCX.i1175 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 7
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RDX.i1176 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RAX.i1174
  %457 = load i64, i64* %RCX.i1175
  %458 = mul i64 %457, 4
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC.i1173
  %461 = add i64 %460, 3
  store i64 %461, i64* %PC.i1173
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RDX.i1176, align 8
  store %struct.Memory* %loadMem_401239, %struct.Memory** %MEMORY
  %loadMem_40123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i1170 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 7
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RDX.i1171 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i1172 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RDX.i1171
  %475 = load i64, i64* %RBP.i1172
  %476 = sub i64 %475, 44
  %477 = load i64, i64* %PC.i1170
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC.i1170
  %479 = trunc i64 %474 to i32
  %480 = inttoptr i64 %476 to i32*
  %481 = load i32, i32* %480
  %482 = add i32 %481, %479
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RDX.i1171, align 8
  %484 = icmp ult i32 %482, %479
  %485 = icmp ult i32 %482, %481
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %487, i8* %488, align 1
  %489 = and i32 %482, 255
  %490 = call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %493, i8* %494, align 1
  %495 = xor i32 %481, %479
  %496 = xor i32 %495, %482
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %499, i8* %500, align 1
  %501 = icmp eq i32 %482, 0
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %502, i8* %503, align 1
  %504 = lshr i32 %482, 31
  %505 = trunc i32 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %505, i8* %506, align 1
  %507 = lshr i32 %479, 31
  %508 = lshr i32 %481, 31
  %509 = xor i32 %504, %507
  %510 = xor i32 %504, %508
  %511 = add i32 %509, %510
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %513, i8* %514, align 1
  store %struct.Memory* %loadMem_40123c, %struct.Memory** %MEMORY
  %loadMem_40123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i1167 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i1168 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i1169 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i1169
  %525 = sub i64 %524, 16
  %526 = load i64, i64* %PC.i1167
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC.i1167
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528
  store i64 %529, i64* %RAX.i1168, align 8
  store %struct.Memory* %loadMem_40123f, %struct.Memory** %MEMORY
  %loadMem_401243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i1164 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 9
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RSI.i1165 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 15
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RBP.i1166 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RBP.i1166
  %540 = sub i64 %539, 48
  %541 = load i64, i64* %PC.i1164
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC.i1164
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RSI.i1165, align 8
  store %struct.Memory* %loadMem_401243, %struct.Memory** %MEMORY
  %loadMem_401246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i1161 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 9
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RSI.i1162 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i1163 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RSI.i1162
  %556 = load i64, i64* %RBP.i1163
  %557 = sub i64 %556, 28
  %558 = load i64, i64* %PC.i1161
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC.i1161
  %560 = trunc i64 %555 to i32
  %561 = inttoptr i64 %557 to i32*
  %562 = load i32, i32* %561
  %563 = add i32 %562, %560
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RSI.i1162, align 8
  %565 = icmp ult i32 %563, %560
  %566 = icmp ult i32 %563, %562
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %568, i8* %569, align 1
  %570 = and i32 %563, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %574, i8* %575, align 1
  %576 = xor i32 %562, %560
  %577 = xor i32 %576, %563
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %580, i8* %581, align 1
  %582 = icmp eq i32 %563, 0
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %563, 31
  %586 = trunc i32 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %586, i8* %587, align 1
  %588 = lshr i32 %560, 31
  %589 = lshr i32 %562, 31
  %590 = xor i32 %585, %588
  %591 = xor i32 %585, %589
  %592 = add i32 %590, %591
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %594, i8* %595, align 1
  store %struct.Memory* %loadMem_401246, %struct.Memory** %MEMORY
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i1158 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 9
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %ESI.i1159 = bitcast %union.anon* %601 to i32*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i1160 = bitcast %union.anon* %604 to i64*
  %605 = load i32, i32* %ESI.i1159
  %606 = zext i32 %605 to i64
  %607 = load i64, i64* %PC.i1158
  %608 = add i64 %607, 3
  store i64 %608, i64* %PC.i1158
  %609 = shl i64 %606, 32
  %610 = ashr exact i64 %609, 32
  store i64 %610, i64* %RCX.i1160, align 8
  store %struct.Memory* %loadMem_401249, %struct.Memory** %MEMORY
  %loadMem_40124c = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i1155 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 7
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %616 to i32*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i1156 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 5
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RCX.i1157 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RAX.i1156
  %624 = load i64, i64* %RCX.i1157
  %625 = mul i64 %624, 4
  %626 = add i64 %625, %623
  %627 = load i32, i32* %EDX.i
  %628 = zext i32 %627 to i64
  %629 = load i64, i64* %PC.i1155
  %630 = add i64 %629, 3
  store i64 %630, i64* %PC.i1155
  %631 = inttoptr i64 %626 to i32*
  store i32 %627, i32* %631
  store %struct.Memory* %loadMem_40124c, %struct.Memory** %MEMORY
  %loadMem_40124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i1152 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RAX.i1153 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i1154 = bitcast %union.anon* %640 to i64*
  %641 = load i64, i64* %RBP.i1154
  %642 = sub i64 %641, 28
  %643 = load i64, i64* %PC.i1152
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC.i1152
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX.i1153, align 8
  store %struct.Memory* %loadMem_40124f, %struct.Memory** %MEMORY
  %loadMem_401252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i1150 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RAX.i1151 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RAX.i1151
  %655 = load i64, i64* %PC.i1150
  %656 = add i64 %655, 3
  store i64 %656, i64* %PC.i1150
  %657 = trunc i64 %654 to i32
  %658 = add i32 1, %657
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RAX.i1151, align 8
  %660 = icmp ult i32 %658, %657
  %661 = icmp ult i32 %658, 1
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %663, i8* %664, align 1
  %665 = and i32 %658, 255
  %666 = call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %669, i8* %670, align 1
  %671 = xor i64 1, %654
  %672 = trunc i64 %671 to i32
  %673 = xor i32 %672, %658
  %674 = lshr i32 %673, 4
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %676, i8* %677, align 1
  %678 = icmp eq i32 %658, 0
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %679, i8* %680, align 1
  %681 = lshr i32 %658, 31
  %682 = trunc i32 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %682, i8* %683, align 1
  %684 = lshr i32 %657, 31
  %685 = xor i32 %681, %684
  %686 = add i32 %685, %681
  %687 = icmp eq i32 %686, 2
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %688, i8* %689, align 1
  store %struct.Memory* %loadMem_401252, %struct.Memory** %MEMORY
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i1147 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %EAX.i1148 = bitcast %union.anon* %695 to i32*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i1149 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RBP.i1149
  %700 = sub i64 %699, 28
  %701 = load i32, i32* %EAX.i1148
  %702 = zext i32 %701 to i64
  %703 = load i64, i64* %PC.i1147
  %704 = add i64 %703, 3
  store i64 %704, i64* %PC.i1147
  %705 = inttoptr i64 %700 to i32*
  store i32 %701, i32* %705
  store %struct.Memory* %loadMem_401255, %struct.Memory** %MEMORY
  %loadMem_401258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i1146 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %PC.i1146
  %710 = add i64 %709, -51
  %711 = load i64, i64* %PC.i1146
  %712 = add i64 %711, 5
  store i64 %712, i64* %PC.i1146
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %710, i64* %713, align 8
  store %struct.Memory* %loadMem_401258, %struct.Memory** %MEMORY
  br label %block_.L_401225

block_.L_40125d:                                  ; preds = %block_.L_401225
  %loadMem_40125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i1143 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RAX.i1144 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i1145 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i1145
  %724 = sub i64 %723, 48
  %725 = load i64, i64* %PC.i1143
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC.i1143
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX.i1144, align 8
  store %struct.Memory* %loadMem_40125d, %struct.Memory** %MEMORY
  %loadMem_401260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i1141 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RAX.i1142 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %RAX.i1142
  %737 = load i64, i64* %PC.i1141
  %738 = add i64 %737, 2
  store i64 %738, i64* %PC.i1141
  %739 = trunc i64 %736 to i32
  %740 = shl i32 %739, 1
  %741 = icmp slt i32 %739, 0
  %742 = icmp slt i32 %740, 0
  %743 = xor i1 %741, %742
  %744 = zext i32 %740 to i64
  store i64 %744, i64* %RAX.i1142, align 8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %746 = zext i1 %741 to i8
  store i8 %746, i8* %745, align 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %748 = and i32 %740, 254
  %749 = call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %747, align 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %753, align 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %755 = icmp eq i32 %740, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %754, align 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %758 = lshr i32 %740, 31
  %759 = trunc i32 %758 to i8
  store i8 %759, i8* %757, align 1
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %761 = zext i1 %743 to i8
  store i8 %761, i8* %760, align 1
  store %struct.Memory* %loadMem_401260, %struct.Memory** %MEMORY
  %loadMem_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i1138 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %EAX.i1139 = bitcast %union.anon* %767 to i32*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 15
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RBP.i1140 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %RBP.i1140
  %772 = sub i64 %771, 48
  %773 = load i32, i32* %EAX.i1139
  %774 = zext i32 %773 to i64
  %775 = load i64, i64* %PC.i1138
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i1138
  %777 = inttoptr i64 %772 to i32*
  store i32 %773, i32* %777
  store %struct.Memory* %loadMem_401263, %struct.Memory** %MEMORY
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i1137 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %PC.i1137
  %782 = add i64 %781, -96
  %783 = load i64, i64* %PC.i1137
  %784 = add i64 %783, 5
  store i64 %784, i64* %PC.i1137
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %782, i64* %785, align 8
  store %struct.Memory* %loadMem_401266, %struct.Memory** %MEMORY
  br label %block_.L_401206

block_.L_40126b:                                  ; preds = %block_.L_401206
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i1134 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RAX.i1135 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 15
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RBP.i1136 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RBP.i1136
  %796 = sub i64 %795, 48
  %797 = load i64, i64* %PC.i1134
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC.i1134
  %799 = inttoptr i64 %796 to i32*
  %800 = load i32, i32* %799
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RAX.i1135, align 8
  store %struct.Memory* %loadMem_40126b, %struct.Memory** %MEMORY
  %loadMem_40126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i1132 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RAX.i1133 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %RAX.i1133
  %809 = load i64, i64* %PC.i1132
  %810 = add i64 %809, 2
  store i64 %810, i64* %PC.i1132
  %811 = trunc i64 %808 to i32
  %812 = shl i32 %811, 1
  %813 = icmp slt i32 %811, 0
  %814 = icmp slt i32 %812, 0
  %815 = xor i1 %813, %814
  %816 = zext i32 %812 to i64
  store i64 %816, i64* %RAX.i1133, align 8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %818 = zext i1 %813 to i8
  store i8 %818, i8* %817, align 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %820 = and i32 %812, 254
  %821 = call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %819, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %825, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %827 = icmp eq i32 %812, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %826, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %830 = lshr i32 %812, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %829, align 1
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %833 = zext i1 %815 to i8
  store i8 %833, i8* %832, align 1
  store %struct.Memory* %loadMem_40126e, %struct.Memory** %MEMORY
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i1129 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %EAX.i1130 = bitcast %union.anon* %839 to i32*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i1131 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RBP.i1131
  %844 = sub i64 %843, 52
  %845 = load i32, i32* %EAX.i1130
  %846 = zext i32 %845 to i64
  %847 = load i64, i64* %PC.i1129
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC.i1129
  %849 = inttoptr i64 %844 to i32*
  store i32 %845, i32* %849
  store %struct.Memory* %loadMem_401271, %struct.Memory** %MEMORY
  %loadMem_401274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i1126 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i1127 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i1128 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RBP.i1128
  %860 = sub i64 %859, 48
  %861 = load i64, i64* %PC.i1126
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC.i1126
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i1127, align 8
  store %struct.Memory* %loadMem_401274, %struct.Memory** %MEMORY
  %loadMem_401277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i1124 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i1125 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %RAX.i1125
  %873 = load i64, i64* %PC.i1124
  %874 = add i64 %873, 3
  store i64 %874, i64* %PC.i1124
  %875 = and i64 %872, 4294967295
  %876 = shl i64 %875, 2
  %877 = trunc i64 %876 to i32
  %878 = icmp slt i32 %877, 0
  %879 = shl i32 %877, 1
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX.i1125, align 8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %882 = zext i1 %878 to i8
  store i8 %882, i8* %881, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %884 = and i32 %879, 254
  %885 = call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %883, align 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %889, align 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %891 = icmp eq i32 %879, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %890, align 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %893, align 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %896, align 1
  store %struct.Memory* %loadMem_401277, %struct.Memory** %MEMORY
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i1121 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 1
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %EAX.i1122 = bitcast %union.anon* %902 to i32*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i1123 = bitcast %union.anon* %905 to i64*
  %906 = load i32, i32* %EAX.i1122
  %907 = zext i32 %906 to i64
  %908 = load i64, i64* %RBP.i1123
  %909 = sub i64 %908, 44
  %910 = load i64, i64* %PC.i1121
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC.i1121
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = sub i32 %906, %913
  %915 = icmp ult i32 %906, %913
  %916 = zext i1 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %916, i8* %917, align 1
  %918 = and i32 %914, 255
  %919 = call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %922, i8* %923, align 1
  %924 = xor i32 %913, %906
  %925 = xor i32 %924, %914
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %928, i8* %929, align 1
  %930 = icmp eq i32 %914, 0
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %931, i8* %932, align 1
  %933 = lshr i32 %914, 31
  %934 = trunc i32 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %934, i8* %935, align 1
  %936 = lshr i32 %906, 31
  %937 = lshr i32 %913, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %933, %936
  %940 = add i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %942, i8* %943, align 1
  store %struct.Memory* %loadMem_40127a, %struct.Memory** %MEMORY
  %loadMem_40127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i1120 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %PC.i1120
  %948 = add i64 %947, 1031
  %949 = load i64, i64* %PC.i1120
  %950 = add i64 %949, 6
  %951 = load i64, i64* %PC.i1120
  %952 = add i64 %951, 6
  store i64 %952, i64* %PC.i1120
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %954 = load i8, i8* %953, align 1
  %955 = icmp eq i8 %954, 0
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %BRANCH_TAKEN, align 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %958 = select i1 %955, i64 %948, i64 %950
  store i64 %958, i64* %957, align 8
  store %struct.Memory* %loadMem_40127d, %struct.Memory** %MEMORY
  %loadBr_40127d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40127d = icmp eq i8 %loadBr_40127d, 1
  br i1 %cmpBr_40127d, label %block_.L_401684, label %block_401283

block_401283:                                     ; preds = %block_.L_40126b
  %loadMem_401283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i1118 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i1119 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %RBP.i1119
  %966 = sub i64 %965, 36
  %967 = load i64, i64* %PC.i1118
  %968 = add i64 %967, 7
  store i64 %968, i64* %PC.i1118
  %969 = inttoptr i64 %966 to i32*
  store i32 0, i32* %969
  store %struct.Memory* %loadMem_401283, %struct.Memory** %MEMORY
  br label %block_.L_40128a

block_.L_40128a:                                  ; preds = %block_.L_4015ad, %block_401283
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i1115 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RAX.i1116 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i1117 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RBP.i1117
  %980 = sub i64 %979, 36
  %981 = load i64, i64* %PC.i1115
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i1115
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i1116, align 8
  store %struct.Memory* %loadMem_40128a, %struct.Memory** %MEMORY
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i1112 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %EAX.i1113 = bitcast %union.anon* %991 to i32*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i1114 = bitcast %union.anon* %994 to i64*
  %995 = load i32, i32* %EAX.i1113
  %996 = zext i32 %995 to i64
  %997 = load i64, i64* %RBP.i1114
  %998 = sub i64 %997, 48
  %999 = load i64, i64* %PC.i1112
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %PC.i1112
  %1001 = inttoptr i64 %998 to i32*
  %1002 = load i32, i32* %1001
  %1003 = sub i32 %995, %1002
  %1004 = icmp ult i32 %995, %1002
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1005, i8* %1006, align 1
  %1007 = and i32 %1003, 255
  %1008 = call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1011, i8* %1012, align 1
  %1013 = xor i32 %1002, %995
  %1014 = xor i32 %1013, %1003
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1017, i8* %1018, align 1
  %1019 = icmp eq i32 %1003, 0
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1020, i8* %1021, align 1
  %1022 = lshr i32 %1003, 31
  %1023 = trunc i32 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1023, i8* %1024, align 1
  %1025 = lshr i32 %995, 31
  %1026 = lshr i32 %1002, 31
  %1027 = xor i32 %1026, %1025
  %1028 = xor i32 %1022, %1025
  %1029 = add i32 %1028, %1027
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1031, i8* %1032, align 1
  store %struct.Memory* %loadMem_40128d, %struct.Memory** %MEMORY
  %loadMem_401290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i1111 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %PC.i1111
  %1037 = add i64 %1036, 1007
  %1038 = load i64, i64* %PC.i1111
  %1039 = add i64 %1038, 6
  %1040 = load i64, i64* %PC.i1111
  %1041 = add i64 %1040, 6
  store i64 %1041, i64* %PC.i1111
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1043 = load i8, i8* %1042, align 1
  %1044 = icmp ne i8 %1043, 0
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1046 = load i8, i8* %1045, align 1
  %1047 = icmp ne i8 %1046, 0
  %1048 = xor i1 %1044, %1047
  %1049 = xor i1 %1048, true
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %BRANCH_TAKEN, align 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1052 = select i1 %1048, i64 %1039, i64 %1037
  store i64 %1052, i64* %1051, align 8
  store %struct.Memory* %loadMem_401290, %struct.Memory** %MEMORY
  %loadBr_401290 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401290 = icmp eq i8 %loadBr_401290, 1
  br i1 %cmpBr_401290, label %block_.L_40167f, label %block_401296

block_401296:                                     ; preds = %block_.L_40128a
  %loadMem_401296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i1109 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 15
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RBP.i1110 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RBP.i1110
  %1060 = sub i64 %1059, 28
  %1061 = load i64, i64* %PC.i1109
  %1062 = add i64 %1061, 7
  store i64 %1062, i64* %PC.i1109
  %1063 = inttoptr i64 %1060 to i32*
  store i32 0, i32* %1063
  store %struct.Memory* %loadMem_401296, %struct.Memory** %MEMORY
  br label %block_.L_40129d

block_.L_40129d:                                  ; preds = %block_4012a9, %block_401296
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i1106 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 1
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RAX.i1107 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i1108 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i1108
  %1074 = sub i64 %1073, 28
  %1075 = load i64, i64* %PC.i1106
  %1076 = add i64 %1075, 3
  store i64 %1076, i64* %PC.i1106
  %1077 = inttoptr i64 %1074 to i32*
  %1078 = load i32, i32* %1077
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i1107, align 8
  store %struct.Memory* %loadMem_40129d, %struct.Memory** %MEMORY
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 33
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %PC.i1103 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 1
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %EAX.i1104 = bitcast %union.anon* %1085 to i32*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 15
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RBP.i1105 = bitcast %union.anon* %1088 to i64*
  %1089 = load i32, i32* %EAX.i1104
  %1090 = zext i32 %1089 to i64
  %1091 = load i64, i64* %RBP.i1105
  %1092 = sub i64 %1091, 36
  %1093 = load i64, i64* %PC.i1103
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i1103
  %1095 = inttoptr i64 %1092 to i32*
  %1096 = load i32, i32* %1095
  %1097 = sub i32 %1089, %1096
  %1098 = icmp ult i32 %1089, %1096
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1099, i8* %1100, align 1
  %1101 = and i32 %1097, 255
  %1102 = call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1105, i8* %1106, align 1
  %1107 = xor i32 %1096, %1089
  %1108 = xor i32 %1107, %1097
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1
  %1113 = icmp eq i32 %1097, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1
  %1116 = lshr i32 %1097, 31
  %1117 = trunc i32 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i32 %1089, 31
  %1120 = lshr i32 %1096, 31
  %1121 = xor i32 %1120, %1119
  %1122 = xor i32 %1116, %1119
  %1123 = add i32 %1122, %1121
  %1124 = icmp eq i32 %1123, 2
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1125, i8* %1126, align 1
  store %struct.Memory* %loadMem_4012a0, %struct.Memory** %MEMORY
  %loadMem_4012a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %PC.i1102
  %1131 = add i64 %1130, 778
  %1132 = load i64, i64* %PC.i1102
  %1133 = add i64 %1132, 6
  %1134 = load i64, i64* %PC.i1102
  %1135 = add i64 %1134, 6
  store i64 %1135, i64* %PC.i1102
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1137 = load i8, i8* %1136, align 1
  %1138 = icmp ne i8 %1137, 0
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1140 = load i8, i8* %1139, align 1
  %1141 = icmp ne i8 %1140, 0
  %1142 = xor i1 %1138, %1141
  %1143 = xor i1 %1142, true
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %BRANCH_TAKEN, align 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1146 = select i1 %1142, i64 %1133, i64 %1131
  store i64 %1146, i64* %1145, align 8
  store %struct.Memory* %loadMem_4012a3, %struct.Memory** %MEMORY
  %loadBr_4012a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012a3 = icmp eq i8 %loadBr_4012a3, 1
  br i1 %cmpBr_4012a3, label %block_.L_4015ad, label %block_4012a9

block_4012a9:                                     ; preds = %block_.L_40129d
  %loadMem_4012a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i1099 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i1100 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 15
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RBP.i1101 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %RBP.i1101
  %1157 = sub i64 %1156, 28
  %1158 = load i64, i64* %PC.i1099
  %1159 = add i64 %1158, 3
  store i64 %1159, i64* %PC.i1099
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i1100, align 8
  store %struct.Memory* %loadMem_4012a9, %struct.Memory** %MEMORY
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i1097 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RAX.i1098 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RAX.i1098
  %1170 = load i64, i64* %PC.i1097
  %1171 = add i64 %1170, 2
  store i64 %1171, i64* %PC.i1097
  %1172 = trunc i64 %1169 to i32
  %1173 = shl i32 %1172, 1
  %1174 = icmp slt i32 %1172, 0
  %1175 = icmp slt i32 %1173, 0
  %1176 = xor i1 %1174, %1175
  %1177 = zext i32 %1173 to i64
  store i64 %1177, i64* %RAX.i1098, align 8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1179 = zext i1 %1174 to i8
  store i8 %1179, i8* %1178, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1181 = and i32 %1173, 254
  %1182 = call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %1180, align 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1186, align 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1188 = icmp eq i32 %1173, 0
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %1187, align 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1191 = lshr i32 %1173, 31
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* %1190, align 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1194 = zext i1 %1176 to i8
  store i8 %1194, i8* %1193, align 1
  store %struct.Memory* %loadMem_4012ac, %struct.Memory** %MEMORY
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 5
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RCX.i1095 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 15
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RBP.i1096 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RBP.i1096
  %1205 = sub i64 %1204, 16
  %1206 = load i64, i64* %PC.i1094
  %1207 = add i64 %1206, 4
  store i64 %1207, i64* %PC.i1094
  %1208 = inttoptr i64 %1205 to i64*
  %1209 = load i64, i64* %1208
  store i64 %1209, i64* %RCX.i1095, align 8
  store %struct.Memory* %loadMem_4012af, %struct.Memory** %MEMORY
  %loadMem_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 7
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RDX.i1092 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 15
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RBP.i1093 = bitcast %union.anon* %1218 to i64*
  %1219 = load i64, i64* %RBP.i1093
  %1220 = sub i64 %1219, 36
  %1221 = load i64, i64* %PC.i1091
  %1222 = add i64 %1221, 4
  store i64 %1222, i64* %PC.i1091
  %1223 = inttoptr i64 %1220 to i32*
  %1224 = load i32, i32* %1223
  %1225 = sext i32 %1224 to i64
  store i64 %1225, i64* %RDX.i1092, align 8
  store %struct.Memory* %loadMem_4012b3, %struct.Memory** %MEMORY
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i1087 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 1
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RAX.i1088 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 5
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %RCX.i1089 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 7
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RDX.i1090 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %RAX.i1088
  %1239 = load i64, i64* %RCX.i1089
  %1240 = load i64, i64* %RDX.i1090
  %1241 = mul i64 %1240, 4
  %1242 = add i64 %1241, %1239
  %1243 = load i64, i64* %PC.i1087
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC.i1087
  %1245 = trunc i64 %1238 to i32
  %1246 = inttoptr i64 %1242 to i32*
  %1247 = load i32, i32* %1246
  %1248 = add i32 %1247, %1245
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RAX.i1088, align 8
  %1250 = icmp ult i32 %1248, %1245
  %1251 = icmp ult i32 %1248, %1247
  %1252 = or i1 %1250, %1251
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1253, i8* %1254, align 1
  %1255 = and i32 %1248, 255
  %1256 = call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1259, i8* %1260, align 1
  %1261 = xor i32 %1247, %1245
  %1262 = xor i32 %1261, %1248
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1265, i8* %1266, align 1
  %1267 = icmp eq i32 %1248, 0
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1268, i8* %1269, align 1
  %1270 = lshr i32 %1248, 31
  %1271 = trunc i32 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1271, i8* %1272, align 1
  %1273 = lshr i32 %1245, 31
  %1274 = lshr i32 %1247, 31
  %1275 = xor i32 %1270, %1273
  %1276 = xor i32 %1270, %1274
  %1277 = add i32 %1275, %1276
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1279, i8* %1280, align 1
  store %struct.Memory* %loadMem_4012b7, %struct.Memory** %MEMORY
  %loadMem_4012ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i1084 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %EAX.i1085 = bitcast %union.anon* %1286 to i32*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 15
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RBP.i1086 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %RBP.i1086
  %1291 = sub i64 %1290, 32
  %1292 = load i32, i32* %EAX.i1085
  %1293 = zext i32 %1292 to i64
  %1294 = load i64, i64* %PC.i1084
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC.i1084
  %1296 = inttoptr i64 %1291 to i32*
  store i32 %1292, i32* %1296
  store %struct.Memory* %loadMem_4012ba, %struct.Memory** %MEMORY
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 33
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %PC.i1081 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 1
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RAX.i1082 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 15
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RBP.i1083 = bitcast %union.anon* %1305 to i64*
  %1306 = load i64, i64* %RBP.i1083
  %1307 = sub i64 %1306, 36
  %1308 = load i64, i64* %PC.i1081
  %1309 = add i64 %1308, 3
  store i64 %1309, i64* %PC.i1081
  %1310 = inttoptr i64 %1307 to i32*
  %1311 = load i32, i32* %1310
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i1082, align 8
  store %struct.Memory* %loadMem_4012bd, %struct.Memory** %MEMORY
  %loadMem_4012c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i1079 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 1
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RAX.i1080 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RAX.i1080
  %1320 = load i64, i64* %PC.i1079
  %1321 = add i64 %1320, 2
  store i64 %1321, i64* %PC.i1079
  %1322 = trunc i64 %1319 to i32
  %1323 = shl i32 %1322, 1
  %1324 = icmp slt i32 %1322, 0
  %1325 = icmp slt i32 %1323, 0
  %1326 = xor i1 %1324, %1325
  %1327 = zext i32 %1323 to i64
  store i64 %1327, i64* %RAX.i1080, align 8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1329 = zext i1 %1324 to i8
  store i8 %1329, i8* %1328, align 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1331 = and i32 %1323, 254
  %1332 = call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %1330, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1336, align 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1338 = icmp eq i32 %1323, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %1337, align 1
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1341 = lshr i32 %1323, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %1340, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1344 = zext i1 %1326 to i8
  store i8 %1344, i8* %1343, align 1
  store %struct.Memory* %loadMem_4012c0, %struct.Memory** %MEMORY
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i1076 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 5
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RCX.i1077 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 15
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RBP.i1078 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i1078
  %1355 = sub i64 %1354, 16
  %1356 = load i64, i64* %PC.i1076
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %PC.i1076
  %1358 = inttoptr i64 %1355 to i64*
  %1359 = load i64, i64* %1358
  store i64 %1359, i64* %RCX.i1077, align 8
  store %struct.Memory* %loadMem_4012c3, %struct.Memory** %MEMORY
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i1073 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 7
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RDX.i1074 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 15
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RBP.i1075 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RBP.i1075
  %1370 = sub i64 %1369, 28
  %1371 = load i64, i64* %PC.i1073
  %1372 = add i64 %1371, 4
  store i64 %1372, i64* %PC.i1073
  %1373 = inttoptr i64 %1370 to i32*
  %1374 = load i32, i32* %1373
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RDX.i1074, align 8
  store %struct.Memory* %loadMem_4012c7, %struct.Memory** %MEMORY
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RAX.i1070 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 5
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RCX.i1071 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 7
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RDX.i1072 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RAX.i1070
  %1389 = load i64, i64* %RCX.i1071
  %1390 = load i64, i64* %RDX.i1072
  %1391 = mul i64 %1390, 4
  %1392 = add i64 %1391, %1389
  %1393 = load i64, i64* %PC.i1069
  %1394 = add i64 %1393, 3
  store i64 %1394, i64* %PC.i1069
  %1395 = trunc i64 %1388 to i32
  %1396 = inttoptr i64 %1392 to i32*
  %1397 = load i32, i32* %1396
  %1398 = add i32 %1397, %1395
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RAX.i1070, align 8
  %1400 = icmp ult i32 %1398, %1395
  %1401 = icmp ult i32 %1398, %1397
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1403, i8* %1404, align 1
  %1405 = and i32 %1398, 255
  %1406 = call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1409, i8* %1410, align 1
  %1411 = xor i32 %1397, %1395
  %1412 = xor i32 %1411, %1398
  %1413 = lshr i32 %1412, 4
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1415, i8* %1416, align 1
  %1417 = icmp eq i32 %1398, 0
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1418, i8* %1419, align 1
  %1420 = lshr i32 %1398, 31
  %1421 = trunc i32 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1421, i8* %1422, align 1
  %1423 = lshr i32 %1395, 31
  %1424 = lshr i32 %1397, 31
  %1425 = xor i32 %1420, %1423
  %1426 = xor i32 %1420, %1424
  %1427 = add i32 %1425, %1426
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1429, i8* %1430, align 1
  store %struct.Memory* %loadMem_4012cb, %struct.Memory** %MEMORY
  %loadMem_4012ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i1066 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %EAX.i1067 = bitcast %union.anon* %1436 to i32*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i1068 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i1068
  %1441 = sub i64 %1440, 40
  %1442 = load i32, i32* %EAX.i1067
  %1443 = zext i32 %1442 to i64
  %1444 = load i64, i64* %PC.i1066
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %PC.i1066
  %1446 = inttoptr i64 %1441 to i32*
  store i32 %1442, i32* %1446
  store %struct.Memory* %loadMem_4012ce, %struct.Memory** %MEMORY
  %loadMem_4012d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i1063 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RCX.i1064 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i1065 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i1065
  %1457 = sub i64 %1456, 24
  %1458 = load i64, i64* %PC.i1063
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i1063
  %1460 = inttoptr i64 %1457 to i64*
  %1461 = load i64, i64* %1460
  store i64 %1461, i64* %RCX.i1064, align 8
  store %struct.Memory* %loadMem_4012d1, %struct.Memory** %MEMORY
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i1060 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 7
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RDX.i1061 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 15
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RBP.i1062 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RBP.i1062
  %1472 = sub i64 %1471, 32
  %1473 = load i64, i64* %PC.i1060
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i1060
  %1475 = inttoptr i64 %1472 to i32*
  %1476 = load i32, i32* %1475
  %1477 = sext i32 %1476 to i64
  store i64 %1477, i64* %RDX.i1061, align 8
  store %struct.Memory* %loadMem_4012d5, %struct.Memory** %MEMORY
  %loadMem_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 33
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %PC.i1056 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 5
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RCX.i1057 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 7
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RDX.i1058 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 0
  %YMM0.i1059 = bitcast %union.VectorReg* %1488 to %"class.std::bitset"*
  %1489 = bitcast %"class.std::bitset"* %YMM0.i1059 to i8*
  %1490 = load i64, i64* %RCX.i1057
  %1491 = load i64, i64* %RDX.i1058
  %1492 = mul i64 %1491, 8
  %1493 = add i64 %1492, %1490
  %1494 = load i64, i64* %PC.i1056
  %1495 = add i64 %1494, 5
  store i64 %1495, i64* %PC.i1056
  %1496 = inttoptr i64 %1493 to double*
  %1497 = load double, double* %1496
  %1498 = bitcast i8* %1489 to double*
  store double %1497, double* %1498, align 1
  %1499 = getelementptr inbounds i8, i8* %1489, i64 8
  %1500 = bitcast i8* %1499 to double*
  store double 0.000000e+00, double* %1500, align 1
  store %struct.Memory* %loadMem_4012d9, %struct.Memory** %MEMORY
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i1053 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 15
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RBP.i1054 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1507, i64 0, i64 0
  %XMM0.i1055 = bitcast %union.VectorReg* %1508 to %union.vec128_t*
  %1509 = load i64, i64* %RBP.i1054
  %1510 = sub i64 %1509, 64
  %1511 = bitcast %union.vec128_t* %XMM0.i1055 to i8*
  %1512 = load i64, i64* %PC.i1053
  %1513 = add i64 %1512, 5
  store i64 %1513, i64* %PC.i1053
  %1514 = bitcast i8* %1511 to double*
  %1515 = load double, double* %1514, align 1
  %1516 = inttoptr i64 %1510 to double*
  store double %1515, double* %1516
  store %struct.Memory* %loadMem_4012de, %struct.Memory** %MEMORY
  %loadMem_4012e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i1050 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 5
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RCX.i1051 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i1052 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i1052
  %1527 = sub i64 %1526, 24
  %1528 = load i64, i64* %PC.i1050
  %1529 = add i64 %1528, 4
  store i64 %1529, i64* %PC.i1050
  %1530 = inttoptr i64 %1527 to i64*
  %1531 = load i64, i64* %1530
  store i64 %1531, i64* %RCX.i1051, align 8
  store %struct.Memory* %loadMem_4012e3, %struct.Memory** %MEMORY
  %loadMem_4012e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i1047 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 1
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RAX.i1048 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 15
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RBP.i1049 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RBP.i1049
  %1542 = sub i64 %1541, 32
  %1543 = load i64, i64* %PC.i1047
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC.i1047
  %1545 = inttoptr i64 %1542 to i32*
  %1546 = load i32, i32* %1545
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX.i1048, align 8
  store %struct.Memory* %loadMem_4012e7, %struct.Memory** %MEMORY
  %loadMem_4012ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RAX.i1046 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RAX.i1046
  %1555 = load i64, i64* %PC.i1045
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i1045
  %1557 = trunc i64 %1554 to i32
  %1558 = add i32 1, %1557
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RAX.i1046, align 8
  %1560 = icmp ult i32 %1558, %1557
  %1561 = icmp ult i32 %1558, 1
  %1562 = or i1 %1560, %1561
  %1563 = zext i1 %1562 to i8
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1563, i8* %1564, align 1
  %1565 = and i32 %1558, 255
  %1566 = call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1569, i8* %1570, align 1
  %1571 = xor i64 1, %1554
  %1572 = trunc i64 %1571 to i32
  %1573 = xor i32 %1572, %1558
  %1574 = lshr i32 %1573, 4
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1576, i8* %1577, align 1
  %1578 = icmp eq i32 %1558, 0
  %1579 = zext i1 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1579, i8* %1580, align 1
  %1581 = lshr i32 %1558, 31
  %1582 = trunc i32 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1582, i8* %1583, align 1
  %1584 = lshr i32 %1557, 31
  %1585 = xor i32 %1581, %1584
  %1586 = add i32 %1585, %1581
  %1587 = icmp eq i32 %1586, 2
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1588, i8* %1589, align 1
  store %struct.Memory* %loadMem_4012ea, %struct.Memory** %MEMORY
  %loadMem_4012ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %EAX.i1043 = bitcast %union.anon* %1595 to i32*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 7
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RDX.i1044 = bitcast %union.anon* %1598 to i64*
  %1599 = load i32, i32* %EAX.i1043
  %1600 = zext i32 %1599 to i64
  %1601 = load i64, i64* %PC.i1042
  %1602 = add i64 %1601, 3
  store i64 %1602, i64* %PC.i1042
  %1603 = shl i64 %1600, 32
  %1604 = ashr exact i64 %1603, 32
  store i64 %1604, i64* %RDX.i1044, align 8
  store %struct.Memory* %loadMem_4012ed, %struct.Memory** %MEMORY
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 5
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RCX.i1039 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 7
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RDX.i1040 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1614, i64 0, i64 0
  %YMM0.i1041 = bitcast %union.VectorReg* %1615 to %"class.std::bitset"*
  %1616 = bitcast %"class.std::bitset"* %YMM0.i1041 to i8*
  %1617 = load i64, i64* %RCX.i1039
  %1618 = load i64, i64* %RDX.i1040
  %1619 = mul i64 %1618, 8
  %1620 = add i64 %1619, %1617
  %1621 = load i64, i64* %PC.i1038
  %1622 = add i64 %1621, 5
  store i64 %1622, i64* %PC.i1038
  %1623 = inttoptr i64 %1620 to double*
  %1624 = load double, double* %1623
  %1625 = bitcast i8* %1616 to double*
  store double %1624, double* %1625, align 1
  %1626 = getelementptr inbounds i8, i8* %1616, i64 8
  %1627 = bitcast i8* %1626 to double*
  store double 0.000000e+00, double* %1627, align 1
  store %struct.Memory* %loadMem_4012f0, %struct.Memory** %MEMORY
  %loadMem_4012f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i1036 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1634, i64 0, i64 0
  %XMM0.i1037 = bitcast %union.VectorReg* %1635 to %union.vec128_t*
  %1636 = load i64, i64* %RBP.i1036
  %1637 = sub i64 %1636, 72
  %1638 = bitcast %union.vec128_t* %XMM0.i1037 to i8*
  %1639 = load i64, i64* %PC.i1035
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC.i1035
  %1641 = bitcast i8* %1638 to double*
  %1642 = load double, double* %1641, align 1
  %1643 = inttoptr i64 %1637 to double*
  store double %1642, double* %1643
  store %struct.Memory* %loadMem_4012f5, %struct.Memory** %MEMORY
  %loadMem_4012fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 5
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RCX.i1033 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i1034 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RBP.i1034
  %1654 = sub i64 %1653, 24
  %1655 = load i64, i64* %PC.i1032
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC.i1032
  %1657 = inttoptr i64 %1654 to i64*
  %1658 = load i64, i64* %1657
  store i64 %1658, i64* %RCX.i1033, align 8
  store %struct.Memory* %loadMem_4012fa, %struct.Memory** %MEMORY
  %loadMem_4012fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 7
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RDX.i1030 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RBP.i1031
  %1669 = sub i64 %1668, 40
  %1670 = load i64, i64* %PC.i1029
  %1671 = add i64 %1670, 4
  store i64 %1671, i64* %PC.i1029
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = sext i32 %1673 to i64
  store i64 %1674, i64* %RDX.i1030, align 8
  store %struct.Memory* %loadMem_4012fe, %struct.Memory** %MEMORY
  %loadMem_401302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 5
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RCX.i1026 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 7
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RDX.i1027 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1684, i64 0, i64 0
  %YMM0.i1028 = bitcast %union.VectorReg* %1685 to %"class.std::bitset"*
  %1686 = bitcast %"class.std::bitset"* %YMM0.i1028 to i8*
  %1687 = load i64, i64* %RCX.i1026
  %1688 = load i64, i64* %RDX.i1027
  %1689 = mul i64 %1688, 8
  %1690 = add i64 %1689, %1687
  %1691 = load i64, i64* %PC.i1025
  %1692 = add i64 %1691, 5
  store i64 %1692, i64* %PC.i1025
  %1693 = inttoptr i64 %1690 to double*
  %1694 = load double, double* %1693
  %1695 = bitcast i8* %1686 to double*
  store double %1694, double* %1695, align 1
  %1696 = getelementptr inbounds i8, i8* %1686, i64 8
  %1697 = bitcast i8* %1696 to double*
  store double 0.000000e+00, double* %1697, align 1
  store %struct.Memory* %loadMem_401302, %struct.Memory** %MEMORY
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 15
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RBP.i1023 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1704, i64 0, i64 0
  %XMM0.i1024 = bitcast %union.VectorReg* %1705 to %union.vec128_t*
  %1706 = load i64, i64* %RBP.i1023
  %1707 = sub i64 %1706, 80
  %1708 = bitcast %union.vec128_t* %XMM0.i1024 to i8*
  %1709 = load i64, i64* %PC.i1022
  %1710 = add i64 %1709, 5
  store i64 %1710, i64* %PC.i1022
  %1711 = bitcast i8* %1708 to double*
  %1712 = load double, double* %1711, align 1
  %1713 = inttoptr i64 %1707 to double*
  store double %1712, double* %1713
  store %struct.Memory* %loadMem_401307, %struct.Memory** %MEMORY
  %loadMem_40130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 5
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RCX.i1020 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 15
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RBP.i1021 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %RBP.i1021
  %1724 = sub i64 %1723, 24
  %1725 = load i64, i64* %PC.i1019
  %1726 = add i64 %1725, 4
  store i64 %1726, i64* %PC.i1019
  %1727 = inttoptr i64 %1724 to i64*
  %1728 = load i64, i64* %1727
  store i64 %1728, i64* %RCX.i1020, align 8
  store %struct.Memory* %loadMem_40130c, %struct.Memory** %MEMORY
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i1017 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 15
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RBP.i1018 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %RBP.i1018
  %1739 = sub i64 %1738, 40
  %1740 = load i64, i64* %PC.i1016
  %1741 = add i64 %1740, 3
  store i64 %1741, i64* %PC.i1016
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX.i1017, align 8
  store %struct.Memory* %loadMem_401310, %struct.Memory** %MEMORY
  %loadMem_401313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 1
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RAX.i1015 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RAX.i1015
  %1752 = load i64, i64* %PC.i1014
  %1753 = add i64 %1752, 3
  store i64 %1753, i64* %PC.i1014
  %1754 = trunc i64 %1751 to i32
  %1755 = add i32 1, %1754
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RAX.i1015, align 8
  %1757 = icmp ult i32 %1755, %1754
  %1758 = icmp ult i32 %1755, 1
  %1759 = or i1 %1757, %1758
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1760, i8* %1761, align 1
  %1762 = and i32 %1755, 255
  %1763 = call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1766, i8* %1767, align 1
  %1768 = xor i64 1, %1751
  %1769 = trunc i64 %1768 to i32
  %1770 = xor i32 %1769, %1755
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1773, i8* %1774, align 1
  %1775 = icmp eq i32 %1755, 0
  %1776 = zext i1 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1755, 31
  %1779 = trunc i32 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1779, i8* %1780, align 1
  %1781 = lshr i32 %1754, 31
  %1782 = xor i32 %1778, %1781
  %1783 = add i32 %1782, %1778
  %1784 = icmp eq i32 %1783, 2
  %1785 = zext i1 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1785, i8* %1786, align 1
  store %struct.Memory* %loadMem_401313, %struct.Memory** %MEMORY
  %loadMem_401316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 1
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %EAX.i1012 = bitcast %union.anon* %1792 to i32*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 7
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RDX.i1013 = bitcast %union.anon* %1795 to i64*
  %1796 = load i32, i32* %EAX.i1012
  %1797 = zext i32 %1796 to i64
  %1798 = load i64, i64* %PC.i1011
  %1799 = add i64 %1798, 3
  store i64 %1799, i64* %PC.i1011
  %1800 = shl i64 %1797, 32
  %1801 = ashr exact i64 %1800, 32
  store i64 %1801, i64* %RDX.i1013, align 8
  store %struct.Memory* %loadMem_401316, %struct.Memory** %MEMORY
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 33
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 5
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RCX.i1008 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 7
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RDX.i1009 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1811, i64 0, i64 0
  %YMM0.i1010 = bitcast %union.VectorReg* %1812 to %"class.std::bitset"*
  %1813 = bitcast %"class.std::bitset"* %YMM0.i1010 to i8*
  %1814 = load i64, i64* %RCX.i1008
  %1815 = load i64, i64* %RDX.i1009
  %1816 = mul i64 %1815, 8
  %1817 = add i64 %1816, %1814
  %1818 = load i64, i64* %PC.i1007
  %1819 = add i64 %1818, 5
  store i64 %1819, i64* %PC.i1007
  %1820 = inttoptr i64 %1817 to double*
  %1821 = load double, double* %1820
  %1822 = bitcast i8* %1813 to double*
  store double %1821, double* %1822, align 1
  %1823 = getelementptr inbounds i8, i8* %1813, i64 8
  %1824 = bitcast i8* %1823 to double*
  store double 0.000000e+00, double* %1824, align 1
  store %struct.Memory* %loadMem_401319, %struct.Memory** %MEMORY
  %loadMem_40131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i1005 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1831, i64 0, i64 0
  %XMM0.i1006 = bitcast %union.VectorReg* %1832 to %union.vec128_t*
  %1833 = load i64, i64* %RBP.i1005
  %1834 = sub i64 %1833, 88
  %1835 = bitcast %union.vec128_t* %XMM0.i1006 to i8*
  %1836 = load i64, i64* %PC.i1004
  %1837 = add i64 %1836, 5
  store i64 %1837, i64* %PC.i1004
  %1838 = bitcast i8* %1835 to double*
  %1839 = load double, double* %1838, align 1
  %1840 = inttoptr i64 %1834 to double*
  store double %1839, double* %1840
  store %struct.Memory* %loadMem_40131e, %struct.Memory** %MEMORY
  %loadMem_401323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 15
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RBP.i1002 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1848 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1847, i64 0, i64 0
  %YMM0.i1003 = bitcast %union.VectorReg* %1848 to %"class.std::bitset"*
  %1849 = bitcast %"class.std::bitset"* %YMM0.i1003 to i8*
  %1850 = load i64, i64* %RBP.i1002
  %1851 = sub i64 %1850, 80
  %1852 = load i64, i64* %PC.i1001
  %1853 = add i64 %1852, 5
  store i64 %1853, i64* %PC.i1001
  %1854 = inttoptr i64 %1851 to double*
  %1855 = load double, double* %1854
  %1856 = bitcast i8* %1849 to double*
  store double %1855, double* %1856, align 1
  %1857 = getelementptr inbounds i8, i8* %1849, i64 8
  %1858 = bitcast i8* %1857 to double*
  store double 0.000000e+00, double* %1858, align 1
  store %struct.Memory* %loadMem_401323, %struct.Memory** %MEMORY
  %loadMem_401328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 5
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RCX.i999 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 15
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RBP.i1000 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %RBP.i1000
  %1869 = sub i64 %1868, 24
  %1870 = load i64, i64* %PC.i998
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %PC.i998
  %1872 = inttoptr i64 %1869 to i64*
  %1873 = load i64, i64* %1872
  store i64 %1873, i64* %RCX.i999, align 8
  store %struct.Memory* %loadMem_401328, %struct.Memory** %MEMORY
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 7
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RDX.i996 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i997
  %1884 = sub i64 %1883, 32
  %1885 = load i64, i64* %PC.i995
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC.i995
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = sext i32 %1888 to i64
  store i64 %1889, i64* %RDX.i996, align 8
  store %struct.Memory* %loadMem_40132c, %struct.Memory** %MEMORY
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 5
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RCX.i992 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 7
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RDX.i993 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1899, i64 0, i64 0
  %XMM0.i994 = bitcast %union.VectorReg* %1900 to %union.vec128_t*
  %1901 = load i64, i64* %RCX.i992
  %1902 = load i64, i64* %RDX.i993
  %1903 = mul i64 %1902, 8
  %1904 = add i64 %1903, %1901
  %1905 = bitcast %union.vec128_t* %XMM0.i994 to i8*
  %1906 = load i64, i64* %PC.i991
  %1907 = add i64 %1906, 5
  store i64 %1907, i64* %PC.i991
  %1908 = bitcast i8* %1905 to double*
  %1909 = load double, double* %1908, align 1
  %1910 = inttoptr i64 %1904 to double*
  store double %1909, double* %1910
  store %struct.Memory* %loadMem_401330, %struct.Memory** %MEMORY
  %loadMem_401335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 15
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1917, i64 0, i64 0
  %YMM0.i990 = bitcast %union.VectorReg* %1918 to %"class.std::bitset"*
  %1919 = bitcast %"class.std::bitset"* %YMM0.i990 to i8*
  %1920 = load i64, i64* %RBP.i989
  %1921 = sub i64 %1920, 88
  %1922 = load i64, i64* %PC.i988
  %1923 = add i64 %1922, 5
  store i64 %1923, i64* %PC.i988
  %1924 = inttoptr i64 %1921 to double*
  %1925 = load double, double* %1924
  %1926 = bitcast i8* %1919 to double*
  store double %1925, double* %1926, align 1
  %1927 = getelementptr inbounds i8, i8* %1919, i64 8
  %1928 = bitcast i8* %1927 to double*
  store double 0.000000e+00, double* %1928, align 1
  store %struct.Memory* %loadMem_401335, %struct.Memory** %MEMORY
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i986 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i987 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i987
  %1939 = sub i64 %1938, 24
  %1940 = load i64, i64* %PC.i985
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i985
  %1942 = inttoptr i64 %1939 to i64*
  %1943 = load i64, i64* %1942
  store i64 %1943, i64* %RCX.i986, align 8
  store %struct.Memory* %loadMem_40133a, %struct.Memory** %MEMORY
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i983 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i984 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RBP.i984
  %1954 = sub i64 %1953, 32
  %1955 = load i64, i64* %PC.i982
  %1956 = add i64 %1955, 3
  store i64 %1956, i64* %PC.i982
  %1957 = inttoptr i64 %1954 to i32*
  %1958 = load i32, i32* %1957
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RAX.i983, align 8
  store %struct.Memory* %loadMem_40133e, %struct.Memory** %MEMORY
  %loadMem_401341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 1
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RAX.i981
  %1967 = load i64, i64* %PC.i980
  %1968 = add i64 %1967, 3
  store i64 %1968, i64* %PC.i980
  %1969 = trunc i64 %1966 to i32
  %1970 = add i32 1, %1969
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i981, align 8
  %1972 = icmp ult i32 %1970, %1969
  %1973 = icmp ult i32 %1970, 1
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1975, i8* %1976, align 1
  %1977 = and i32 %1970, 255
  %1978 = call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1981, i8* %1982, align 1
  %1983 = xor i64 1, %1966
  %1984 = trunc i64 %1983 to i32
  %1985 = xor i32 %1984, %1970
  %1986 = lshr i32 %1985, 4
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1988, i8* %1989, align 1
  %1990 = icmp eq i32 %1970, 0
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1991, i8* %1992, align 1
  %1993 = lshr i32 %1970, 31
  %1994 = trunc i32 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i32 %1969, 31
  %1997 = xor i32 %1993, %1996
  %1998 = add i32 %1997, %1993
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2000, i8* %2001, align 1
  store %struct.Memory* %loadMem_401341, %struct.Memory** %MEMORY
  %loadMem_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %EAX.i978 = bitcast %union.anon* %2007 to i32*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 7
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RDX.i979 = bitcast %union.anon* %2010 to i64*
  %2011 = load i32, i32* %EAX.i978
  %2012 = zext i32 %2011 to i64
  %2013 = load i64, i64* %PC.i977
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i977
  %2015 = shl i64 %2012, 32
  %2016 = ashr exact i64 %2015, 32
  store i64 %2016, i64* %RDX.i979, align 8
  store %struct.Memory* %loadMem_401344, %struct.Memory** %MEMORY
  %loadMem_401347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 5
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RCX.i974 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 7
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RDX.i975 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2026, i64 0, i64 0
  %XMM0.i976 = bitcast %union.VectorReg* %2027 to %union.vec128_t*
  %2028 = load i64, i64* %RCX.i974
  %2029 = load i64, i64* %RDX.i975
  %2030 = mul i64 %2029, 8
  %2031 = add i64 %2030, %2028
  %2032 = bitcast %union.vec128_t* %XMM0.i976 to i8*
  %2033 = load i64, i64* %PC.i973
  %2034 = add i64 %2033, 5
  store i64 %2034, i64* %PC.i973
  %2035 = bitcast i8* %2032 to double*
  %2036 = load double, double* %2035, align 1
  %2037 = inttoptr i64 %2031 to double*
  store double %2036, double* %2037
  store %struct.Memory* %loadMem_401347, %struct.Memory** %MEMORY
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i971 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2044, i64 0, i64 0
  %YMM0.i972 = bitcast %union.VectorReg* %2045 to %"class.std::bitset"*
  %2046 = bitcast %"class.std::bitset"* %YMM0.i972 to i8*
  %2047 = load i64, i64* %RBP.i971
  %2048 = sub i64 %2047, 64
  %2049 = load i64, i64* %PC.i970
  %2050 = add i64 %2049, 5
  store i64 %2050, i64* %PC.i970
  %2051 = inttoptr i64 %2048 to double*
  %2052 = load double, double* %2051
  %2053 = bitcast i8* %2046 to double*
  store double %2052, double* %2053, align 1
  %2054 = getelementptr inbounds i8, i8* %2046, i64 8
  %2055 = bitcast i8* %2054 to double*
  store double 0.000000e+00, double* %2055, align 1
  store %struct.Memory* %loadMem_40134c, %struct.Memory** %MEMORY
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 5
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RCX.i968 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 15
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %RBP.i969
  %2066 = sub i64 %2065, 24
  %2067 = load i64, i64* %PC.i967
  %2068 = add i64 %2067, 4
  store i64 %2068, i64* %PC.i967
  %2069 = inttoptr i64 %2066 to i64*
  %2070 = load i64, i64* %2069
  store i64 %2070, i64* %RCX.i968, align 8
  store %struct.Memory* %loadMem_401351, %struct.Memory** %MEMORY
  %loadMem_401355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 7
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RDX.i965 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 15
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %RBP.i966
  %2081 = sub i64 %2080, 40
  %2082 = load i64, i64* %PC.i964
  %2083 = add i64 %2082, 4
  store i64 %2083, i64* %PC.i964
  %2084 = inttoptr i64 %2081 to i32*
  %2085 = load i32, i32* %2084
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RDX.i965, align 8
  store %struct.Memory* %loadMem_401355, %struct.Memory** %MEMORY
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 5
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RCX.i961 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 7
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RDX.i962 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2096, i64 0, i64 0
  %XMM0.i963 = bitcast %union.VectorReg* %2097 to %union.vec128_t*
  %2098 = load i64, i64* %RCX.i961
  %2099 = load i64, i64* %RDX.i962
  %2100 = mul i64 %2099, 8
  %2101 = add i64 %2100, %2098
  %2102 = bitcast %union.vec128_t* %XMM0.i963 to i8*
  %2103 = load i64, i64* %PC.i960
  %2104 = add i64 %2103, 5
  store i64 %2104, i64* %PC.i960
  %2105 = bitcast i8* %2102 to double*
  %2106 = load double, double* %2105, align 1
  %2107 = inttoptr i64 %2101 to double*
  store double %2106, double* %2107
  store %struct.Memory* %loadMem_401359, %struct.Memory** %MEMORY
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i958 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2114, i64 0, i64 0
  %YMM0.i959 = bitcast %union.VectorReg* %2115 to %"class.std::bitset"*
  %2116 = bitcast %"class.std::bitset"* %YMM0.i959 to i8*
  %2117 = load i64, i64* %RBP.i958
  %2118 = sub i64 %2117, 72
  %2119 = load i64, i64* %PC.i957
  %2120 = add i64 %2119, 5
  store i64 %2120, i64* %PC.i957
  %2121 = inttoptr i64 %2118 to double*
  %2122 = load double, double* %2121
  %2123 = bitcast i8* %2116 to double*
  store double %2122, double* %2123, align 1
  %2124 = getelementptr inbounds i8, i8* %2116, i64 8
  %2125 = bitcast i8* %2124 to double*
  store double 0.000000e+00, double* %2125, align 1
  store %struct.Memory* %loadMem_40135e, %struct.Memory** %MEMORY
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RCX.i955 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i956
  %2136 = sub i64 %2135, 24
  %2137 = load i64, i64* %PC.i954
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i954
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RCX.i955, align 8
  store %struct.Memory* %loadMem_401363, %struct.Memory** %MEMORY
  %loadMem_401367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i952 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i953 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RBP.i953
  %2151 = sub i64 %2150, 40
  %2152 = load i64, i64* %PC.i951
  %2153 = add i64 %2152, 3
  store i64 %2153, i64* %PC.i951
  %2154 = inttoptr i64 %2151 to i32*
  %2155 = load i32, i32* %2154
  %2156 = zext i32 %2155 to i64
  store i64 %2156, i64* %RAX.i952, align 8
  store %struct.Memory* %loadMem_401367, %struct.Memory** %MEMORY
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 1
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %RAX.i950
  %2164 = load i64, i64* %PC.i949
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i949
  %2166 = trunc i64 %2163 to i32
  %2167 = add i32 1, %2166
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RAX.i950, align 8
  %2169 = icmp ult i32 %2167, %2166
  %2170 = icmp ult i32 %2167, 1
  %2171 = or i1 %2169, %2170
  %2172 = zext i1 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2172, i8* %2173, align 1
  %2174 = and i32 %2167, 255
  %2175 = call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2178, i8* %2179, align 1
  %2180 = xor i64 1, %2163
  %2181 = trunc i64 %2180 to i32
  %2182 = xor i32 %2181, %2167
  %2183 = lshr i32 %2182, 4
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2185, i8* %2186, align 1
  %2187 = icmp eq i32 %2167, 0
  %2188 = zext i1 %2187 to i8
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2188, i8* %2189, align 1
  %2190 = lshr i32 %2167, 31
  %2191 = trunc i32 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2191, i8* %2192, align 1
  %2193 = lshr i32 %2166, 31
  %2194 = xor i32 %2190, %2193
  %2195 = add i32 %2194, %2190
  %2196 = icmp eq i32 %2195, 2
  %2197 = zext i1 %2196 to i8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2197, i8* %2198, align 1
  store %struct.Memory* %loadMem_40136a, %struct.Memory** %MEMORY
  %loadMem_40136d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 33
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 1
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %EAX.i947 = bitcast %union.anon* %2204 to i32*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 7
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %RDX.i948 = bitcast %union.anon* %2207 to i64*
  %2208 = load i32, i32* %EAX.i947
  %2209 = zext i32 %2208 to i64
  %2210 = load i64, i64* %PC.i946
  %2211 = add i64 %2210, 3
  store i64 %2211, i64* %PC.i946
  %2212 = shl i64 %2209, 32
  %2213 = ashr exact i64 %2212, 32
  store i64 %2213, i64* %RDX.i948, align 8
  store %struct.Memory* %loadMem_40136d, %struct.Memory** %MEMORY
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 5
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RCX.i943 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 7
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RDX.i944 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2223, i64 0, i64 0
  %XMM0.i945 = bitcast %union.VectorReg* %2224 to %union.vec128_t*
  %2225 = load i64, i64* %RCX.i943
  %2226 = load i64, i64* %RDX.i944
  %2227 = mul i64 %2226, 8
  %2228 = add i64 %2227, %2225
  %2229 = bitcast %union.vec128_t* %XMM0.i945 to i8*
  %2230 = load i64, i64* %PC.i942
  %2231 = add i64 %2230, 5
  store i64 %2231, i64* %PC.i942
  %2232 = bitcast i8* %2229 to double*
  %2233 = load double, double* %2232, align 1
  %2234 = inttoptr i64 %2228 to double*
  store double %2233, double* %2234
  store %struct.Memory* %loadMem_401370, %struct.Memory** %MEMORY
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RAX.i940 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 15
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RBP.i941
  %2245 = sub i64 %2244, 52
  %2246 = load i64, i64* %PC.i939
  %2247 = add i64 %2246, 3
  store i64 %2247, i64* %PC.i939
  %2248 = inttoptr i64 %2245 to i32*
  %2249 = load i32, i32* %2248
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RAX.i940, align 8
  store %struct.Memory* %loadMem_401375, %struct.Memory** %MEMORY
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 1
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RAX.i937
  %2261 = load i64, i64* %RBP.i938
  %2262 = sub i64 %2261, 32
  %2263 = load i64, i64* %PC.i936
  %2264 = add i64 %2263, 3
  store i64 %2264, i64* %PC.i936
  %2265 = trunc i64 %2260 to i32
  %2266 = inttoptr i64 %2262 to i32*
  %2267 = load i32, i32* %2266
  %2268 = add i32 %2267, %2265
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RAX.i937, align 8
  %2270 = icmp ult i32 %2268, %2265
  %2271 = icmp ult i32 %2268, %2267
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2273, i8* %2274, align 1
  %2275 = and i32 %2268, 255
  %2276 = call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2279, i8* %2280, align 1
  %2281 = xor i32 %2267, %2265
  %2282 = xor i32 %2281, %2268
  %2283 = lshr i32 %2282, 4
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2285, i8* %2286, align 1
  %2287 = icmp eq i32 %2268, 0
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2288, i8* %2289, align 1
  %2290 = lshr i32 %2268, 31
  %2291 = trunc i32 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2265, 31
  %2294 = lshr i32 %2267, 31
  %2295 = xor i32 %2290, %2293
  %2296 = xor i32 %2290, %2294
  %2297 = add i32 %2295, %2296
  %2298 = icmp eq i32 %2297, 2
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2299, i8* %2300, align 1
  store %struct.Memory* %loadMem_401378, %struct.Memory** %MEMORY
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 1
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %EAX.i934 = bitcast %union.anon* %2306 to i32*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 15
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %RBP.i935
  %2311 = sub i64 %2310, 32
  %2312 = load i32, i32* %EAX.i934
  %2313 = zext i32 %2312 to i64
  %2314 = load i64, i64* %PC.i933
  %2315 = add i64 %2314, 3
  store i64 %2315, i64* %PC.i933
  %2316 = inttoptr i64 %2311 to i32*
  store i32 %2312, i32* %2316
  store %struct.Memory* %loadMem_40137b, %struct.Memory** %MEMORY
  %loadMem_40137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 15
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RBP.i932
  %2327 = sub i64 %2326, 52
  %2328 = load i64, i64* %PC.i930
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC.i930
  %2330 = inttoptr i64 %2327 to i32*
  %2331 = load i32, i32* %2330
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_40137e, %struct.Memory** %MEMORY
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RAX.i929
  %2340 = load i64, i64* %PC.i928
  %2341 = add i64 %2340, 2
  store i64 %2341, i64* %PC.i928
  %2342 = trunc i64 %2339 to i32
  %2343 = shl i32 %2342, 1
  %2344 = icmp slt i32 %2342, 0
  %2345 = icmp slt i32 %2343, 0
  %2346 = xor i1 %2344, %2345
  %2347 = zext i32 %2343 to i64
  store i64 %2347, i64* %RAX.i929, align 8
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2349 = zext i1 %2344 to i8
  store i8 %2349, i8* %2348, align 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2351 = and i32 %2343, 254
  %2352 = call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %2350, align 1
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2356, align 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2358 = icmp eq i32 %2343, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %2357, align 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2361 = lshr i32 %2343, 31
  %2362 = trunc i32 %2361 to i8
  store i8 %2362, i8* %2360, align 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2364 = zext i1 %2346 to i8
  store i8 %2364, i8* %2363, align 1
  store %struct.Memory* %loadMem_401381, %struct.Memory** %MEMORY
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RAX.i926
  %2375 = load i64, i64* %RBP.i927
  %2376 = sub i64 %2375, 40
  %2377 = load i64, i64* %PC.i925
  %2378 = add i64 %2377, 3
  store i64 %2378, i64* %PC.i925
  %2379 = trunc i64 %2374 to i32
  %2380 = inttoptr i64 %2376 to i32*
  %2381 = load i32, i32* %2380
  %2382 = add i32 %2381, %2379
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i926, align 8
  %2384 = icmp ult i32 %2382, %2379
  %2385 = icmp ult i32 %2382, %2381
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2387, i8* %2388, align 1
  %2389 = and i32 %2382, 255
  %2390 = call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2393, i8* %2394, align 1
  %2395 = xor i32 %2381, %2379
  %2396 = xor i32 %2395, %2382
  %2397 = lshr i32 %2396, 4
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2399, i8* %2400, align 1
  %2401 = icmp eq i32 %2382, 0
  %2402 = zext i1 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2402, i8* %2403, align 1
  %2404 = lshr i32 %2382, 31
  %2405 = trunc i32 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2405, i8* %2406, align 1
  %2407 = lshr i32 %2379, 31
  %2408 = lshr i32 %2381, 31
  %2409 = xor i32 %2404, %2407
  %2410 = xor i32 %2404, %2408
  %2411 = add i32 %2409, %2410
  %2412 = icmp eq i32 %2411, 2
  %2413 = zext i1 %2412 to i8
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2413, i8* %2414, align 1
  store %struct.Memory* %loadMem_401384, %struct.Memory** %MEMORY
  %loadMem_401387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 1
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %EAX.i923 = bitcast %union.anon* %2420 to i32*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 15
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RBP.i924
  %2425 = sub i64 %2424, 40
  %2426 = load i32, i32* %EAX.i923
  %2427 = zext i32 %2426 to i64
  %2428 = load i64, i64* %PC.i922
  %2429 = add i64 %2428, 3
  store i64 %2429, i64* %PC.i922
  %2430 = inttoptr i64 %2425 to i32*
  store i32 %2426, i32* %2430
  store %struct.Memory* %loadMem_401387, %struct.Memory** %MEMORY
  %loadMem_40138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 5
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RCX.i920 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i921
  %2441 = sub i64 %2440, 24
  %2442 = load i64, i64* %PC.i919
  %2443 = add i64 %2442, 4
  store i64 %2443, i64* %PC.i919
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444
  store i64 %2445, i64* %RCX.i920, align 8
  store %struct.Memory* %loadMem_40138a, %struct.Memory** %MEMORY
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RDX.i917 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i918
  %2456 = sub i64 %2455, 32
  %2457 = load i64, i64* %PC.i916
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i916
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459
  %2461 = sext i32 %2460 to i64
  store i64 %2461, i64* %RDX.i917, align 8
  store %struct.Memory* %loadMem_40138e, %struct.Memory** %MEMORY
  %loadMem_401392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 5
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RCX.i913 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 7
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2471, i64 0, i64 0
  %YMM0.i915 = bitcast %union.VectorReg* %2472 to %"class.std::bitset"*
  %2473 = bitcast %"class.std::bitset"* %YMM0.i915 to i8*
  %2474 = load i64, i64* %RCX.i913
  %2475 = load i64, i64* %RDX.i914
  %2476 = mul i64 %2475, 8
  %2477 = add i64 %2476, %2474
  %2478 = load i64, i64* %PC.i912
  %2479 = add i64 %2478, 5
  store i64 %2479, i64* %PC.i912
  %2480 = inttoptr i64 %2477 to double*
  %2481 = load double, double* %2480
  %2482 = bitcast i8* %2473 to double*
  store double %2481, double* %2482, align 1
  %2483 = getelementptr inbounds i8, i8* %2473, i64 8
  %2484 = bitcast i8* %2483 to double*
  store double 0.000000e+00, double* %2484, align 1
  store %struct.Memory* %loadMem_401392, %struct.Memory** %MEMORY
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i910 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2491, i64 0, i64 0
  %XMM0.i911 = bitcast %union.VectorReg* %2492 to %union.vec128_t*
  %2493 = load i64, i64* %RBP.i910
  %2494 = sub i64 %2493, 64
  %2495 = bitcast %union.vec128_t* %XMM0.i911 to i8*
  %2496 = load i64, i64* %PC.i909
  %2497 = add i64 %2496, 5
  store i64 %2497, i64* %PC.i909
  %2498 = bitcast i8* %2495 to double*
  %2499 = load double, double* %2498, align 1
  %2500 = inttoptr i64 %2494 to double*
  store double %2499, double* %2500
  store %struct.Memory* %loadMem_401397, %struct.Memory** %MEMORY
  %loadMem_40139c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 5
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RCX.i907 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 15
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RBP.i908 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %RBP.i908
  %2511 = sub i64 %2510, 24
  %2512 = load i64, i64* %PC.i906
  %2513 = add i64 %2512, 4
  store i64 %2513, i64* %PC.i906
  %2514 = inttoptr i64 %2511 to i64*
  %2515 = load i64, i64* %2514
  store i64 %2515, i64* %RCX.i907, align 8
  store %struct.Memory* %loadMem_40139c, %struct.Memory** %MEMORY
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 1
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RAX.i904 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 15
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %RBP.i905
  %2526 = sub i64 %2525, 32
  %2527 = load i64, i64* %PC.i903
  %2528 = add i64 %2527, 3
  store i64 %2528, i64* %PC.i903
  %2529 = inttoptr i64 %2526 to i32*
  %2530 = load i32, i32* %2529
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RAX.i904, align 8
  store %struct.Memory* %loadMem_4013a0, %struct.Memory** %MEMORY
  %loadMem_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 1
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RAX.i902 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %RAX.i902
  %2539 = load i64, i64* %PC.i901
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC.i901
  %2541 = trunc i64 %2538 to i32
  %2542 = add i32 1, %2541
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RAX.i902, align 8
  %2544 = icmp ult i32 %2542, %2541
  %2545 = icmp ult i32 %2542, 1
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2547, i8* %2548, align 1
  %2549 = and i32 %2542, 255
  %2550 = call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2553, i8* %2554, align 1
  %2555 = xor i64 1, %2538
  %2556 = trunc i64 %2555 to i32
  %2557 = xor i32 %2556, %2542
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2560, i8* %2561, align 1
  %2562 = icmp eq i32 %2542, 0
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2542, 31
  %2566 = trunc i32 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i32 %2541, 31
  %2569 = xor i32 %2565, %2568
  %2570 = add i32 %2569, %2565
  %2571 = icmp eq i32 %2570, 2
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2572, i8* %2573, align 1
  store %struct.Memory* %loadMem_4013a3, %struct.Memory** %MEMORY
  %loadMem_4013a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %EAX.i899 = bitcast %union.anon* %2579 to i32*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 7
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RDX.i900 = bitcast %union.anon* %2582 to i64*
  %2583 = load i32, i32* %EAX.i899
  %2584 = zext i32 %2583 to i64
  %2585 = load i64, i64* %PC.i898
  %2586 = add i64 %2585, 3
  store i64 %2586, i64* %PC.i898
  %2587 = shl i64 %2584, 32
  %2588 = ashr exact i64 %2587, 32
  store i64 %2588, i64* %RDX.i900, align 8
  store %struct.Memory* %loadMem_4013a6, %struct.Memory** %MEMORY
  %loadMem_4013a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 5
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RCX.i895 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 7
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RDX.i896 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2599 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2598, i64 0, i64 0
  %YMM0.i897 = bitcast %union.VectorReg* %2599 to %"class.std::bitset"*
  %2600 = bitcast %"class.std::bitset"* %YMM0.i897 to i8*
  %2601 = load i64, i64* %RCX.i895
  %2602 = load i64, i64* %RDX.i896
  %2603 = mul i64 %2602, 8
  %2604 = add i64 %2603, %2601
  %2605 = load i64, i64* %PC.i894
  %2606 = add i64 %2605, 5
  store i64 %2606, i64* %PC.i894
  %2607 = inttoptr i64 %2604 to double*
  %2608 = load double, double* %2607
  %2609 = bitcast i8* %2600 to double*
  store double %2608, double* %2609, align 1
  %2610 = getelementptr inbounds i8, i8* %2600, i64 8
  %2611 = bitcast i8* %2610 to double*
  store double 0.000000e+00, double* %2611, align 1
  store %struct.Memory* %loadMem_4013a9, %struct.Memory** %MEMORY
  %loadMem_4013ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2619 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2618, i64 0, i64 0
  %XMM0.i893 = bitcast %union.VectorReg* %2619 to %union.vec128_t*
  %2620 = load i64, i64* %RBP.i892
  %2621 = sub i64 %2620, 72
  %2622 = bitcast %union.vec128_t* %XMM0.i893 to i8*
  %2623 = load i64, i64* %PC.i891
  %2624 = add i64 %2623, 5
  store i64 %2624, i64* %PC.i891
  %2625 = bitcast i8* %2622 to double*
  %2626 = load double, double* %2625, align 1
  %2627 = inttoptr i64 %2621 to double*
  store double %2626, double* %2627
  store %struct.Memory* %loadMem_4013ae, %struct.Memory** %MEMORY
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i889 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 15
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %2636 to i64*
  %2637 = load i64, i64* %RBP.i890
  %2638 = sub i64 %2637, 24
  %2639 = load i64, i64* %PC.i888
  %2640 = add i64 %2639, 4
  store i64 %2640, i64* %PC.i888
  %2641 = inttoptr i64 %2638 to i64*
  %2642 = load i64, i64* %2641
  store i64 %2642, i64* %RCX.i889, align 8
  store %struct.Memory* %loadMem_4013b3, %struct.Memory** %MEMORY
  %loadMem_4013b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 7
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RDX.i886 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 15
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %RBP.i887
  %2653 = sub i64 %2652, 40
  %2654 = load i64, i64* %PC.i885
  %2655 = add i64 %2654, 4
  store i64 %2655, i64* %PC.i885
  %2656 = inttoptr i64 %2653 to i32*
  %2657 = load i32, i32* %2656
  %2658 = sext i32 %2657 to i64
  store i64 %2658, i64* %RDX.i886, align 8
  store %struct.Memory* %loadMem_4013b7, %struct.Memory** %MEMORY
  %loadMem_4013bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 5
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 7
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RDX.i883 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2668, i64 0, i64 0
  %YMM0.i884 = bitcast %union.VectorReg* %2669 to %"class.std::bitset"*
  %2670 = bitcast %"class.std::bitset"* %YMM0.i884 to i8*
  %2671 = load i64, i64* %RCX.i882
  %2672 = load i64, i64* %RDX.i883
  %2673 = mul i64 %2672, 8
  %2674 = add i64 %2673, %2671
  %2675 = load i64, i64* %PC.i881
  %2676 = add i64 %2675, 5
  store i64 %2676, i64* %PC.i881
  %2677 = inttoptr i64 %2674 to double*
  %2678 = load double, double* %2677
  %2679 = bitcast i8* %2670 to double*
  store double %2678, double* %2679, align 1
  %2680 = getelementptr inbounds i8, i8* %2670, i64 8
  %2681 = bitcast i8* %2680 to double*
  store double 0.000000e+00, double* %2681, align 1
  store %struct.Memory* %loadMem_4013bb, %struct.Memory** %MEMORY
  %loadMem_4013c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2688, i64 0, i64 0
  %XMM0.i880 = bitcast %union.VectorReg* %2689 to %union.vec128_t*
  %2690 = load i64, i64* %RBP.i879
  %2691 = sub i64 %2690, 80
  %2692 = bitcast %union.vec128_t* %XMM0.i880 to i8*
  %2693 = load i64, i64* %PC.i878
  %2694 = add i64 %2693, 5
  store i64 %2694, i64* %PC.i878
  %2695 = bitcast i8* %2692 to double*
  %2696 = load double, double* %2695, align 1
  %2697 = inttoptr i64 %2691 to double*
  store double %2696, double* %2697
  store %struct.Memory* %loadMem_4013c0, %struct.Memory** %MEMORY
  %loadMem_4013c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 5
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i877 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i877
  %2708 = sub i64 %2707, 24
  %2709 = load i64, i64* %PC.i875
  %2710 = add i64 %2709, 4
  store i64 %2710, i64* %PC.i875
  %2711 = inttoptr i64 %2708 to i64*
  %2712 = load i64, i64* %2711
  store i64 %2712, i64* %RCX.i876, align 8
  store %struct.Memory* %loadMem_4013c5, %struct.Memory** %MEMORY
  %loadMem_4013c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 1
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 15
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RBP.i874 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RBP.i874
  %2723 = sub i64 %2722, 40
  %2724 = load i64, i64* %PC.i872
  %2725 = add i64 %2724, 3
  store i64 %2725, i64* %PC.i872
  %2726 = inttoptr i64 %2723 to i32*
  %2727 = load i32, i32* %2726
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RAX.i873, align 8
  store %struct.Memory* %loadMem_4013c9, %struct.Memory** %MEMORY
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RAX.i871 = bitcast %union.anon* %2734 to i64*
  %2735 = load i64, i64* %RAX.i871
  %2736 = load i64, i64* %PC.i870
  %2737 = add i64 %2736, 3
  store i64 %2737, i64* %PC.i870
  %2738 = trunc i64 %2735 to i32
  %2739 = add i32 1, %2738
  %2740 = zext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i871, align 8
  %2741 = icmp ult i32 %2739, %2738
  %2742 = icmp ult i32 %2739, 1
  %2743 = or i1 %2741, %2742
  %2744 = zext i1 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2744, i8* %2745, align 1
  %2746 = and i32 %2739, 255
  %2747 = call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2750, i8* %2751, align 1
  %2752 = xor i64 1, %2735
  %2753 = trunc i64 %2752 to i32
  %2754 = xor i32 %2753, %2739
  %2755 = lshr i32 %2754, 4
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2757, i8* %2758, align 1
  %2759 = icmp eq i32 %2739, 0
  %2760 = zext i1 %2759 to i8
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2760, i8* %2761, align 1
  %2762 = lshr i32 %2739, 31
  %2763 = trunc i32 %2762 to i8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2763, i8* %2764, align 1
  %2765 = lshr i32 %2738, 31
  %2766 = xor i32 %2762, %2765
  %2767 = add i32 %2766, %2762
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2769, i8* %2770, align 1
  store %struct.Memory* %loadMem_4013cc, %struct.Memory** %MEMORY
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %EAX.i868 = bitcast %union.anon* %2776 to i32*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 7
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RDX.i869 = bitcast %union.anon* %2779 to i64*
  %2780 = load i32, i32* %EAX.i868
  %2781 = zext i32 %2780 to i64
  %2782 = load i64, i64* %PC.i867
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i867
  %2784 = shl i64 %2781, 32
  %2785 = ashr exact i64 %2784, 32
  store i64 %2785, i64* %RDX.i869, align 8
  store %struct.Memory* %loadMem_4013cf, %struct.Memory** %MEMORY
  %loadMem_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 5
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RCX.i864 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 7
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RDX.i865 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2795, i64 0, i64 0
  %YMM0.i866 = bitcast %union.VectorReg* %2796 to %"class.std::bitset"*
  %2797 = bitcast %"class.std::bitset"* %YMM0.i866 to i8*
  %2798 = load i64, i64* %RCX.i864
  %2799 = load i64, i64* %RDX.i865
  %2800 = mul i64 %2799, 8
  %2801 = add i64 %2800, %2798
  %2802 = load i64, i64* %PC.i863
  %2803 = add i64 %2802, 5
  store i64 %2803, i64* %PC.i863
  %2804 = inttoptr i64 %2801 to double*
  %2805 = load double, double* %2804
  %2806 = bitcast i8* %2797 to double*
  store double %2805, double* %2806, align 1
  %2807 = getelementptr inbounds i8, i8* %2797, i64 8
  %2808 = bitcast i8* %2807 to double*
  store double 0.000000e+00, double* %2808, align 1
  store %struct.Memory* %loadMem_4013d2, %struct.Memory** %MEMORY
  %loadMem_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 15
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2815, i64 0, i64 0
  %XMM0.i862 = bitcast %union.VectorReg* %2816 to %union.vec128_t*
  %2817 = load i64, i64* %RBP.i861
  %2818 = sub i64 %2817, 88
  %2819 = bitcast %union.vec128_t* %XMM0.i862 to i8*
  %2820 = load i64, i64* %PC.i860
  %2821 = add i64 %2820, 5
  store i64 %2821, i64* %PC.i860
  %2822 = bitcast i8* %2819 to double*
  %2823 = load double, double* %2822, align 1
  %2824 = inttoptr i64 %2818 to double*
  store double %2823, double* %2824
  store %struct.Memory* %loadMem_4013d7, %struct.Memory** %MEMORY
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 15
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2831, i64 0, i64 0
  %YMM0.i859 = bitcast %union.VectorReg* %2832 to %"class.std::bitset"*
  %2833 = bitcast %"class.std::bitset"* %YMM0.i859 to i8*
  %2834 = load i64, i64* %RBP.i858
  %2835 = sub i64 %2834, 80
  %2836 = load i64, i64* %PC.i857
  %2837 = add i64 %2836, 5
  store i64 %2837, i64* %PC.i857
  %2838 = inttoptr i64 %2835 to double*
  %2839 = load double, double* %2838
  %2840 = bitcast i8* %2833 to double*
  store double %2839, double* %2840, align 1
  %2841 = getelementptr inbounds i8, i8* %2833, i64 8
  %2842 = bitcast i8* %2841 to double*
  store double 0.000000e+00, double* %2842, align 1
  store %struct.Memory* %loadMem_4013dc, %struct.Memory** %MEMORY
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 15
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %RBP.i856
  %2853 = sub i64 %2852, 24
  %2854 = load i64, i64* %PC.i854
  %2855 = add i64 %2854, 4
  store i64 %2855, i64* %PC.i854
  %2856 = inttoptr i64 %2853 to i64*
  %2857 = load i64, i64* %2856
  store i64 %2857, i64* %RCX.i855, align 8
  store %struct.Memory* %loadMem_4013e1, %struct.Memory** %MEMORY
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 7
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RDX.i852 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 15
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RBP.i853
  %2868 = sub i64 %2867, 32
  %2869 = load i64, i64* %PC.i851
  %2870 = add i64 %2869, 4
  store i64 %2870, i64* %PC.i851
  %2871 = inttoptr i64 %2868 to i32*
  %2872 = load i32, i32* %2871
  %2873 = sext i32 %2872 to i64
  store i64 %2873, i64* %RDX.i852, align 8
  store %struct.Memory* %loadMem_4013e5, %struct.Memory** %MEMORY
  %loadMem_4013e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 5
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 7
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RDX.i849 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2883, i64 0, i64 0
  %XMM0.i850 = bitcast %union.VectorReg* %2884 to %union.vec128_t*
  %2885 = load i64, i64* %RCX.i848
  %2886 = load i64, i64* %RDX.i849
  %2887 = mul i64 %2886, 8
  %2888 = add i64 %2887, %2885
  %2889 = bitcast %union.vec128_t* %XMM0.i850 to i8*
  %2890 = load i64, i64* %PC.i847
  %2891 = add i64 %2890, 5
  store i64 %2891, i64* %PC.i847
  %2892 = bitcast i8* %2889 to double*
  %2893 = load double, double* %2892, align 1
  %2894 = inttoptr i64 %2888 to double*
  store double %2893, double* %2894
  store %struct.Memory* %loadMem_4013e9, %struct.Memory** %MEMORY
  %loadMem_4013ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 15
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RBP.i845 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2901, i64 0, i64 0
  %YMM0.i846 = bitcast %union.VectorReg* %2902 to %"class.std::bitset"*
  %2903 = bitcast %"class.std::bitset"* %YMM0.i846 to i8*
  %2904 = load i64, i64* %RBP.i845
  %2905 = sub i64 %2904, 88
  %2906 = load i64, i64* %PC.i844
  %2907 = add i64 %2906, 5
  store i64 %2907, i64* %PC.i844
  %2908 = inttoptr i64 %2905 to double*
  %2909 = load double, double* %2908
  %2910 = bitcast i8* %2903 to double*
  store double %2909, double* %2910, align 1
  %2911 = getelementptr inbounds i8, i8* %2903, i64 8
  %2912 = bitcast i8* %2911 to double*
  store double 0.000000e+00, double* %2912, align 1
  store %struct.Memory* %loadMem_4013ee, %struct.Memory** %MEMORY
  %loadMem_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 5
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RCX.i842 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i843
  %2923 = sub i64 %2922, 24
  %2924 = load i64, i64* %PC.i841
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %PC.i841
  %2926 = inttoptr i64 %2923 to i64*
  %2927 = load i64, i64* %2926
  store i64 %2927, i64* %RCX.i842, align 8
  store %struct.Memory* %loadMem_4013f3, %struct.Memory** %MEMORY
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i840
  %2938 = sub i64 %2937, 32
  %2939 = load i64, i64* %PC.i838
  %2940 = add i64 %2939, 3
  store i64 %2940, i64* %PC.i838
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RAX.i839, align 8
  store %struct.Memory* %loadMem_4013f7, %struct.Memory** %MEMORY
  %loadMem_4013fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 1
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RAX.i837 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RAX.i837
  %2951 = load i64, i64* %PC.i836
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i836
  %2953 = trunc i64 %2950 to i32
  %2954 = add i32 1, %2953
  %2955 = zext i32 %2954 to i64
  store i64 %2955, i64* %RAX.i837, align 8
  %2956 = icmp ult i32 %2954, %2953
  %2957 = icmp ult i32 %2954, 1
  %2958 = or i1 %2956, %2957
  %2959 = zext i1 %2958 to i8
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2959, i8* %2960, align 1
  %2961 = and i32 %2954, 255
  %2962 = call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2965, i8* %2966, align 1
  %2967 = xor i64 1, %2950
  %2968 = trunc i64 %2967 to i32
  %2969 = xor i32 %2968, %2954
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2972, i8* %2973, align 1
  %2974 = icmp eq i32 %2954, 0
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2954, 31
  %2978 = trunc i32 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2978, i8* %2979, align 1
  %2980 = lshr i32 %2953, 31
  %2981 = xor i32 %2977, %2980
  %2982 = add i32 %2981, %2977
  %2983 = icmp eq i32 %2982, 2
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2984, i8* %2985, align 1
  store %struct.Memory* %loadMem_4013fa, %struct.Memory** %MEMORY
  %loadMem_4013fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 1
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %EAX.i834 = bitcast %union.anon* %2991 to i32*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 7
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %2994 to i64*
  %2995 = load i32, i32* %EAX.i834
  %2996 = zext i32 %2995 to i64
  %2997 = load i64, i64* %PC.i833
  %2998 = add i64 %2997, 3
  store i64 %2998, i64* %PC.i833
  %2999 = shl i64 %2996, 32
  %3000 = ashr exact i64 %2999, 32
  store i64 %3000, i64* %RDX.i835, align 8
  store %struct.Memory* %loadMem_4013fd, %struct.Memory** %MEMORY
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 5
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RCX.i830 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDX.i831 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3010, i64 0, i64 0
  %XMM0.i832 = bitcast %union.VectorReg* %3011 to %union.vec128_t*
  %3012 = load i64, i64* %RCX.i830
  %3013 = load i64, i64* %RDX.i831
  %3014 = mul i64 %3013, 8
  %3015 = add i64 %3014, %3012
  %3016 = bitcast %union.vec128_t* %XMM0.i832 to i8*
  %3017 = load i64, i64* %PC.i829
  %3018 = add i64 %3017, 5
  store i64 %3018, i64* %PC.i829
  %3019 = bitcast i8* %3016 to double*
  %3020 = load double, double* %3019, align 1
  %3021 = inttoptr i64 %3015 to double*
  store double %3020, double* %3021
  store %struct.Memory* %loadMem_401400, %struct.Memory** %MEMORY
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 15
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3029 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3028, i64 0, i64 0
  %YMM0.i828 = bitcast %union.VectorReg* %3029 to %"class.std::bitset"*
  %3030 = bitcast %"class.std::bitset"* %YMM0.i828 to i8*
  %3031 = load i64, i64* %RBP.i827
  %3032 = sub i64 %3031, 64
  %3033 = load i64, i64* %PC.i826
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %PC.i826
  %3035 = inttoptr i64 %3032 to double*
  %3036 = load double, double* %3035
  %3037 = bitcast i8* %3030 to double*
  store double %3036, double* %3037, align 1
  %3038 = getelementptr inbounds i8, i8* %3030, i64 8
  %3039 = bitcast i8* %3038 to double*
  store double 0.000000e+00, double* %3039, align 1
  store %struct.Memory* %loadMem_401405, %struct.Memory** %MEMORY
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 5
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 15
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %RBP.i825
  %3050 = sub i64 %3049, 24
  %3051 = load i64, i64* %PC.i823
  %3052 = add i64 %3051, 4
  store i64 %3052, i64* %PC.i823
  %3053 = inttoptr i64 %3050 to i64*
  %3054 = load i64, i64* %3053
  store i64 %3054, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_40140a, %struct.Memory** %MEMORY
  %loadMem_40140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 7
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RDX.i821 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 15
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %RBP.i822
  %3065 = sub i64 %3064, 40
  %3066 = load i64, i64* %PC.i820
  %3067 = add i64 %3066, 4
  store i64 %3067, i64* %PC.i820
  %3068 = inttoptr i64 %3065 to i32*
  %3069 = load i32, i32* %3068
  %3070 = sext i32 %3069 to i64
  store i64 %3070, i64* %RDX.i821, align 8
  store %struct.Memory* %loadMem_40140e, %struct.Memory** %MEMORY
  %loadMem_401412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 5
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 7
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RDX.i818 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3081 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3080, i64 0, i64 0
  %XMM0.i819 = bitcast %union.VectorReg* %3081 to %union.vec128_t*
  %3082 = load i64, i64* %RCX.i817
  %3083 = load i64, i64* %RDX.i818
  %3084 = mul i64 %3083, 8
  %3085 = add i64 %3084, %3082
  %3086 = bitcast %union.vec128_t* %XMM0.i819 to i8*
  %3087 = load i64, i64* %PC.i816
  %3088 = add i64 %3087, 5
  store i64 %3088, i64* %PC.i816
  %3089 = bitcast i8* %3086 to double*
  %3090 = load double, double* %3089, align 1
  %3091 = inttoptr i64 %3085 to double*
  store double %3090, double* %3091
  store %struct.Memory* %loadMem_401412, %struct.Memory** %MEMORY
  %loadMem_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 33
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 15
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3098, i64 0, i64 0
  %YMM0.i815 = bitcast %union.VectorReg* %3099 to %"class.std::bitset"*
  %3100 = bitcast %"class.std::bitset"* %YMM0.i815 to i8*
  %3101 = load i64, i64* %RBP.i814
  %3102 = sub i64 %3101, 72
  %3103 = load i64, i64* %PC.i813
  %3104 = add i64 %3103, 5
  store i64 %3104, i64* %PC.i813
  %3105 = inttoptr i64 %3102 to double*
  %3106 = load double, double* %3105
  %3107 = bitcast i8* %3100 to double*
  store double %3106, double* %3107, align 1
  %3108 = getelementptr inbounds i8, i8* %3100, i64 8
  %3109 = bitcast i8* %3108 to double*
  store double 0.000000e+00, double* %3109, align 1
  store %struct.Memory* %loadMem_401417, %struct.Memory** %MEMORY
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 5
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RCX.i811 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 15
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RBP.i812
  %3120 = sub i64 %3119, 24
  %3121 = load i64, i64* %PC.i810
  %3122 = add i64 %3121, 4
  store i64 %3122, i64* %PC.i810
  %3123 = inttoptr i64 %3120 to i64*
  %3124 = load i64, i64* %3123
  store i64 %3124, i64* %RCX.i811, align 8
  store %struct.Memory* %loadMem_40141c, %struct.Memory** %MEMORY
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 1
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 15
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RBP.i809
  %3135 = sub i64 %3134, 40
  %3136 = load i64, i64* %PC.i807
  %3137 = add i64 %3136, 3
  store i64 %3137, i64* %PC.i807
  %3138 = inttoptr i64 %3135 to i32*
  %3139 = load i32, i32* %3138
  %3140 = zext i32 %3139 to i64
  store i64 %3140, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_401420, %struct.Memory** %MEMORY
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RAX.i806
  %3148 = load i64, i64* %PC.i805
  %3149 = add i64 %3148, 3
  store i64 %3149, i64* %PC.i805
  %3150 = trunc i64 %3147 to i32
  %3151 = add i32 1, %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RAX.i806, align 8
  %3153 = icmp ult i32 %3151, %3150
  %3154 = icmp ult i32 %3151, 1
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3156, i8* %3157, align 1
  %3158 = and i32 %3151, 255
  %3159 = call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3162, i8* %3163, align 1
  %3164 = xor i64 1, %3147
  %3165 = trunc i64 %3164 to i32
  %3166 = xor i32 %3165, %3151
  %3167 = lshr i32 %3166, 4
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3169, i8* %3170, align 1
  %3171 = icmp eq i32 %3151, 0
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i32 %3151, 31
  %3175 = trunc i32 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i32 %3150, 31
  %3178 = xor i32 %3174, %3177
  %3179 = add i32 %3178, %3174
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1
  store %struct.Memory* %loadMem_401423, %struct.Memory** %MEMORY
  %loadMem_401426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 1
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %EAX.i803 = bitcast %union.anon* %3188 to i32*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 7
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RDX.i804 = bitcast %union.anon* %3191 to i64*
  %3192 = load i32, i32* %EAX.i803
  %3193 = zext i32 %3192 to i64
  %3194 = load i64, i64* %PC.i802
  %3195 = add i64 %3194, 3
  store i64 %3195, i64* %PC.i802
  %3196 = shl i64 %3193, 32
  %3197 = ashr exact i64 %3196, 32
  store i64 %3197, i64* %RDX.i804, align 8
  store %struct.Memory* %loadMem_401426, %struct.Memory** %MEMORY
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 5
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RCX.i799 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 7
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RDX.i800 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3207, i64 0, i64 0
  %XMM0.i801 = bitcast %union.VectorReg* %3208 to %union.vec128_t*
  %3209 = load i64, i64* %RCX.i799
  %3210 = load i64, i64* %RDX.i800
  %3211 = mul i64 %3210, 8
  %3212 = add i64 %3211, %3209
  %3213 = bitcast %union.vec128_t* %XMM0.i801 to i8*
  %3214 = load i64, i64* %PC.i798
  %3215 = add i64 %3214, 5
  store i64 %3215, i64* %PC.i798
  %3216 = bitcast i8* %3213 to double*
  %3217 = load double, double* %3216, align 1
  %3218 = inttoptr i64 %3212 to double*
  store double %3217, double* %3218
  store %struct.Memory* %loadMem_401429, %struct.Memory** %MEMORY
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i797
  %3229 = sub i64 %3228, 52
  %3230 = load i64, i64* %PC.i795
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i795
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RAX.i796, align 8
  store %struct.Memory* %loadMem_40142e, %struct.Memory** %MEMORY
  %loadMem_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 1
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 15
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %3243 to i64*
  %3244 = load i64, i64* %RAX.i793
  %3245 = load i64, i64* %RBP.i794
  %3246 = sub i64 %3245, 32
  %3247 = load i64, i64* %PC.i792
  %3248 = add i64 %3247, 3
  store i64 %3248, i64* %PC.i792
  %3249 = trunc i64 %3244 to i32
  %3250 = inttoptr i64 %3246 to i32*
  %3251 = load i32, i32* %3250
  %3252 = add i32 %3251, %3249
  %3253 = zext i32 %3252 to i64
  store i64 %3253, i64* %RAX.i793, align 8
  %3254 = icmp ult i32 %3252, %3249
  %3255 = icmp ult i32 %3252, %3251
  %3256 = or i1 %3254, %3255
  %3257 = zext i1 %3256 to i8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3257, i8* %3258, align 1
  %3259 = and i32 %3252, 255
  %3260 = call i32 @llvm.ctpop.i32(i32 %3259)
  %3261 = trunc i32 %3260 to i8
  %3262 = and i8 %3261, 1
  %3263 = xor i8 %3262, 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3263, i8* %3264, align 1
  %3265 = xor i32 %3251, %3249
  %3266 = xor i32 %3265, %3252
  %3267 = lshr i32 %3266, 4
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3269, i8* %3270, align 1
  %3271 = icmp eq i32 %3252, 0
  %3272 = zext i1 %3271 to i8
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3272, i8* %3273, align 1
  %3274 = lshr i32 %3252, 31
  %3275 = trunc i32 %3274 to i8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3275, i8* %3276, align 1
  %3277 = lshr i32 %3249, 31
  %3278 = lshr i32 %3251, 31
  %3279 = xor i32 %3274, %3277
  %3280 = xor i32 %3274, %3278
  %3281 = add i32 %3279, %3280
  %3282 = icmp eq i32 %3281, 2
  %3283 = zext i1 %3282 to i8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3283, i8* %3284, align 1
  store %struct.Memory* %loadMem_401431, %struct.Memory** %MEMORY
  %loadMem_401434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 1
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %EAX.i790 = bitcast %union.anon* %3290 to i32*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i791
  %3295 = sub i64 %3294, 32
  %3296 = load i32, i32* %EAX.i790
  %3297 = zext i32 %3296 to i64
  %3298 = load i64, i64* %PC.i789
  %3299 = add i64 %3298, 3
  store i64 %3299, i64* %PC.i789
  %3300 = inttoptr i64 %3295 to i32*
  store i32 %3296, i32* %3300
  store %struct.Memory* %loadMem_401434, %struct.Memory** %MEMORY
  %loadMem_401437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 1
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 15
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RBP.i788
  %3311 = sub i64 %3310, 52
  %3312 = load i64, i64* %PC.i786
  %3313 = add i64 %3312, 3
  store i64 %3313, i64* %PC.i786
  %3314 = inttoptr i64 %3311 to i32*
  %3315 = load i32, i32* %3314
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RAX.i787, align 8
  store %struct.Memory* %loadMem_401437, %struct.Memory** %MEMORY
  %loadMem_40143a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 9
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RSI.i784 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 15
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %3325 to i64*
  %3326 = load i64, i64* %RBP.i785
  %3327 = sub i64 %3326, 40
  %3328 = load i64, i64* %PC.i783
  %3329 = add i64 %3328, 3
  store i64 %3329, i64* %PC.i783
  %3330 = inttoptr i64 %3327 to i32*
  %3331 = load i32, i32* %3330
  %3332 = zext i32 %3331 to i64
  store i64 %3332, i64* %RSI.i784, align 8
  store %struct.Memory* %loadMem_40143a, %struct.Memory** %MEMORY
  %loadMem_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 1
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %EAX.i782 = bitcast %union.anon* %3338 to i32*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 9
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RSI.i
  %3343 = load i32, i32* %EAX.i782
  %3344 = zext i32 %3343 to i64
  %3345 = load i64, i64* %PC.i781
  %3346 = add i64 %3345, 2
  store i64 %3346, i64* %PC.i781
  %3347 = trunc i64 %3342 to i32
  %3348 = sub i32 %3347, %3343
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RSI.i, align 8
  %3350 = icmp ult i32 %3347, %3343
  %3351 = zext i1 %3350 to i8
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3351, i8* %3352, align 1
  %3353 = and i32 %3348, 255
  %3354 = call i32 @llvm.ctpop.i32(i32 %3353)
  %3355 = trunc i32 %3354 to i8
  %3356 = and i8 %3355, 1
  %3357 = xor i8 %3356, 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3357, i8* %3358, align 1
  %3359 = xor i64 %3344, %3342
  %3360 = trunc i64 %3359 to i32
  %3361 = xor i32 %3360, %3348
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3364, i8* %3365, align 1
  %3366 = icmp eq i32 %3348, 0
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i32 %3348, 31
  %3370 = trunc i32 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3370, i8* %3371, align 1
  %3372 = lshr i32 %3347, 31
  %3373 = lshr i32 %3343, 31
  %3374 = xor i32 %3373, %3372
  %3375 = xor i32 %3369, %3372
  %3376 = add i32 %3375, %3374
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3378, i8* %3379, align 1
  store %struct.Memory* %loadMem_40143d, %struct.Memory** %MEMORY
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 9
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3385 to i32*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RBP.i780
  %3390 = sub i64 %3389, 40
  %3391 = load i32, i32* %ESI.i
  %3392 = zext i32 %3391 to i64
  %3393 = load i64, i64* %PC.i779
  %3394 = add i64 %3393, 3
  store i64 %3394, i64* %PC.i779
  %3395 = inttoptr i64 %3390 to i32*
  store i32 %3391, i32* %3395
  store %struct.Memory* %loadMem_40143f, %struct.Memory** %MEMORY
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 5
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 15
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RBP.i778
  %3406 = sub i64 %3405, 24
  %3407 = load i64, i64* %PC.i776
  %3408 = add i64 %3407, 4
  store i64 %3408, i64* %PC.i776
  %3409 = inttoptr i64 %3406 to i64*
  %3410 = load i64, i64* %3409
  store i64 %3410, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_401442, %struct.Memory** %MEMORY
  %loadMem_401446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 7
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RDX.i774 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 15
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RBP.i775
  %3421 = sub i64 %3420, 32
  %3422 = load i64, i64* %PC.i773
  %3423 = add i64 %3422, 4
  store i64 %3423, i64* %PC.i773
  %3424 = inttoptr i64 %3421 to i32*
  %3425 = load i32, i32* %3424
  %3426 = sext i32 %3425 to i64
  store i64 %3426, i64* %RDX.i774, align 8
  store %struct.Memory* %loadMem_401446, %struct.Memory** %MEMORY
  %loadMem_40144a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 5
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 7
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RDX.i771 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3436, i64 0, i64 0
  %YMM0.i772 = bitcast %union.VectorReg* %3437 to %"class.std::bitset"*
  %3438 = bitcast %"class.std::bitset"* %YMM0.i772 to i8*
  %3439 = load i64, i64* %RCX.i770
  %3440 = load i64, i64* %RDX.i771
  %3441 = mul i64 %3440, 8
  %3442 = add i64 %3441, %3439
  %3443 = load i64, i64* %PC.i769
  %3444 = add i64 %3443, 5
  store i64 %3444, i64* %PC.i769
  %3445 = inttoptr i64 %3442 to double*
  %3446 = load double, double* %3445
  %3447 = bitcast i8* %3438 to double*
  store double %3446, double* %3447, align 1
  %3448 = getelementptr inbounds i8, i8* %3438, i64 8
  %3449 = bitcast i8* %3448 to double*
  store double 0.000000e+00, double* %3449, align 1
  store %struct.Memory* %loadMem_40144a, %struct.Memory** %MEMORY
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 15
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3456, i64 0, i64 0
  %XMM0.i768 = bitcast %union.VectorReg* %3457 to %union.vec128_t*
  %3458 = load i64, i64* %RBP.i767
  %3459 = sub i64 %3458, 64
  %3460 = bitcast %union.vec128_t* %XMM0.i768 to i8*
  %3461 = load i64, i64* %PC.i766
  %3462 = add i64 %3461, 5
  store i64 %3462, i64* %PC.i766
  %3463 = bitcast i8* %3460 to double*
  %3464 = load double, double* %3463, align 1
  %3465 = inttoptr i64 %3459 to double*
  store double %3464, double* %3465
  store %struct.Memory* %loadMem_40144f, %struct.Memory** %MEMORY
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 5
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 15
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RBP.i765
  %3476 = sub i64 %3475, 24
  %3477 = load i64, i64* %PC.i763
  %3478 = add i64 %3477, 4
  store i64 %3478, i64* %PC.i763
  %3479 = inttoptr i64 %3476 to i64*
  %3480 = load i64, i64* %3479
  store i64 %3480, i64* %RCX.i764, align 8
  store %struct.Memory* %loadMem_401454, %struct.Memory** %MEMORY
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 1
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 15
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RBP.i762
  %3491 = sub i64 %3490, 32
  %3492 = load i64, i64* %PC.i760
  %3493 = add i64 %3492, 3
  store i64 %3493, i64* %PC.i760
  %3494 = inttoptr i64 %3491 to i32*
  %3495 = load i32, i32* %3494
  %3496 = zext i32 %3495 to i64
  store i64 %3496, i64* %RAX.i761, align 8
  store %struct.Memory* %loadMem_401458, %struct.Memory** %MEMORY
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 1
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RAX.i759
  %3504 = load i64, i64* %PC.i758
  %3505 = add i64 %3504, 3
  store i64 %3505, i64* %PC.i758
  %3506 = trunc i64 %3503 to i32
  %3507 = add i32 1, %3506
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RAX.i759, align 8
  %3509 = icmp ult i32 %3507, %3506
  %3510 = icmp ult i32 %3507, 1
  %3511 = or i1 %3509, %3510
  %3512 = zext i1 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3512, i8* %3513, align 1
  %3514 = and i32 %3507, 255
  %3515 = call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3518, i8* %3519, align 1
  %3520 = xor i64 1, %3503
  %3521 = trunc i64 %3520 to i32
  %3522 = xor i32 %3521, %3507
  %3523 = lshr i32 %3522, 4
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3525, i8* %3526, align 1
  %3527 = icmp eq i32 %3507, 0
  %3528 = zext i1 %3527 to i8
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3528, i8* %3529, align 1
  %3530 = lshr i32 %3507, 31
  %3531 = trunc i32 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3531, i8* %3532, align 1
  %3533 = lshr i32 %3506, 31
  %3534 = xor i32 %3530, %3533
  %3535 = add i32 %3534, %3530
  %3536 = icmp eq i32 %3535, 2
  %3537 = zext i1 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3537, i8* %3538, align 1
  store %struct.Memory* %loadMem_40145b, %struct.Memory** %MEMORY
  %loadMem_40145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 1
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %EAX.i756 = bitcast %union.anon* %3544 to i32*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 7
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RDX.i757 = bitcast %union.anon* %3547 to i64*
  %3548 = load i32, i32* %EAX.i756
  %3549 = zext i32 %3548 to i64
  %3550 = load i64, i64* %PC.i755
  %3551 = add i64 %3550, 3
  store i64 %3551, i64* %PC.i755
  %3552 = shl i64 %3549, 32
  %3553 = ashr exact i64 %3552, 32
  store i64 %3553, i64* %RDX.i757, align 8
  store %struct.Memory* %loadMem_40145e, %struct.Memory** %MEMORY
  %loadMem_401461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 5
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 7
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RDX.i753 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3563, i64 0, i64 0
  %YMM0.i754 = bitcast %union.VectorReg* %3564 to %"class.std::bitset"*
  %3565 = bitcast %"class.std::bitset"* %YMM0.i754 to i8*
  %3566 = load i64, i64* %RCX.i752
  %3567 = load i64, i64* %RDX.i753
  %3568 = mul i64 %3567, 8
  %3569 = add i64 %3568, %3566
  %3570 = load i64, i64* %PC.i751
  %3571 = add i64 %3570, 5
  store i64 %3571, i64* %PC.i751
  %3572 = inttoptr i64 %3569 to double*
  %3573 = load double, double* %3572
  %3574 = bitcast i8* %3565 to double*
  store double %3573, double* %3574, align 1
  %3575 = getelementptr inbounds i8, i8* %3565, i64 8
  %3576 = bitcast i8* %3575 to double*
  store double 0.000000e+00, double* %3576, align 1
  store %struct.Memory* %loadMem_401461, %struct.Memory** %MEMORY
  %loadMem_401466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3584 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3583, i64 0, i64 0
  %XMM0.i750 = bitcast %union.VectorReg* %3584 to %union.vec128_t*
  %3585 = load i64, i64* %RBP.i749
  %3586 = sub i64 %3585, 72
  %3587 = bitcast %union.vec128_t* %XMM0.i750 to i8*
  %3588 = load i64, i64* %PC.i748
  %3589 = add i64 %3588, 5
  store i64 %3589, i64* %PC.i748
  %3590 = bitcast i8* %3587 to double*
  %3591 = load double, double* %3590, align 1
  %3592 = inttoptr i64 %3586 to double*
  store double %3591, double* %3592
  store %struct.Memory* %loadMem_401466, %struct.Memory** %MEMORY
  %loadMem_40146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 5
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 15
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %3601 to i64*
  %3602 = load i64, i64* %RBP.i747
  %3603 = sub i64 %3602, 24
  %3604 = load i64, i64* %PC.i745
  %3605 = add i64 %3604, 4
  store i64 %3605, i64* %PC.i745
  %3606 = inttoptr i64 %3603 to i64*
  %3607 = load i64, i64* %3606
  store i64 %3607, i64* %RCX.i746, align 8
  store %struct.Memory* %loadMem_40146b, %struct.Memory** %MEMORY
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 7
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RDX.i743 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 15
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RBP.i744
  %3618 = sub i64 %3617, 40
  %3619 = load i64, i64* %PC.i742
  %3620 = add i64 %3619, 4
  store i64 %3620, i64* %PC.i742
  %3621 = inttoptr i64 %3618 to i32*
  %3622 = load i32, i32* %3621
  %3623 = sext i32 %3622 to i64
  store i64 %3623, i64* %RDX.i743, align 8
  store %struct.Memory* %loadMem_40146f, %struct.Memory** %MEMORY
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 5
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 7
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3633, i64 0, i64 0
  %YMM0.i741 = bitcast %union.VectorReg* %3634 to %"class.std::bitset"*
  %3635 = bitcast %"class.std::bitset"* %YMM0.i741 to i8*
  %3636 = load i64, i64* %RCX.i739
  %3637 = load i64, i64* %RDX.i740
  %3638 = mul i64 %3637, 8
  %3639 = add i64 %3638, %3636
  %3640 = load i64, i64* %PC.i738
  %3641 = add i64 %3640, 5
  store i64 %3641, i64* %PC.i738
  %3642 = inttoptr i64 %3639 to double*
  %3643 = load double, double* %3642
  %3644 = bitcast i8* %3635 to double*
  store double %3643, double* %3644, align 1
  %3645 = getelementptr inbounds i8, i8* %3635, i64 8
  %3646 = bitcast i8* %3645 to double*
  store double 0.000000e+00, double* %3646, align 1
  store %struct.Memory* %loadMem_401473, %struct.Memory** %MEMORY
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3653, i64 0, i64 0
  %XMM0.i737 = bitcast %union.VectorReg* %3654 to %union.vec128_t*
  %3655 = load i64, i64* %RBP.i736
  %3656 = sub i64 %3655, 80
  %3657 = bitcast %union.vec128_t* %XMM0.i737 to i8*
  %3658 = load i64, i64* %PC.i735
  %3659 = add i64 %3658, 5
  store i64 %3659, i64* %PC.i735
  %3660 = bitcast i8* %3657 to double*
  %3661 = load double, double* %3660, align 1
  %3662 = inttoptr i64 %3656 to double*
  store double %3661, double* %3662
  store %struct.Memory* %loadMem_401478, %struct.Memory** %MEMORY
  %loadMem_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 5
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 15
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RBP.i734
  %3673 = sub i64 %3672, 24
  %3674 = load i64, i64* %PC.i732
  %3675 = add i64 %3674, 4
  store i64 %3675, i64* %PC.i732
  %3676 = inttoptr i64 %3673 to i64*
  %3677 = load i64, i64* %3676
  store i64 %3677, i64* %RCX.i733, align 8
  store %struct.Memory* %loadMem_40147d, %struct.Memory** %MEMORY
  %loadMem_401481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 1
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i731
  %3688 = sub i64 %3687, 40
  %3689 = load i64, i64* %PC.i729
  %3690 = add i64 %3689, 3
  store i64 %3690, i64* %PC.i729
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_401481, %struct.Memory** %MEMORY
  %loadMem_401484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RAX.i728
  %3701 = load i64, i64* %PC.i727
  %3702 = add i64 %3701, 3
  store i64 %3702, i64* %PC.i727
  %3703 = trunc i64 %3700 to i32
  %3704 = add i32 1, %3703
  %3705 = zext i32 %3704 to i64
  store i64 %3705, i64* %RAX.i728, align 8
  %3706 = icmp ult i32 %3704, %3703
  %3707 = icmp ult i32 %3704, 1
  %3708 = or i1 %3706, %3707
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3709, i8* %3710, align 1
  %3711 = and i32 %3704, 255
  %3712 = call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3715, i8* %3716, align 1
  %3717 = xor i64 1, %3700
  %3718 = trunc i64 %3717 to i32
  %3719 = xor i32 %3718, %3704
  %3720 = lshr i32 %3719, 4
  %3721 = trunc i32 %3720 to i8
  %3722 = and i8 %3721, 1
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3722, i8* %3723, align 1
  %3724 = icmp eq i32 %3704, 0
  %3725 = zext i1 %3724 to i8
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3725, i8* %3726, align 1
  %3727 = lshr i32 %3704, 31
  %3728 = trunc i32 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3728, i8* %3729, align 1
  %3730 = lshr i32 %3703, 31
  %3731 = xor i32 %3727, %3730
  %3732 = add i32 %3731, %3727
  %3733 = icmp eq i32 %3732, 2
  %3734 = zext i1 %3733 to i8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3734, i8* %3735, align 1
  store %struct.Memory* %loadMem_401484, %struct.Memory** %MEMORY
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 1
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %EAX.i725 = bitcast %union.anon* %3741 to i32*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 7
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %3744 to i64*
  %3745 = load i32, i32* %EAX.i725
  %3746 = zext i32 %3745 to i64
  %3747 = load i64, i64* %PC.i724
  %3748 = add i64 %3747, 3
  store i64 %3748, i64* %PC.i724
  %3749 = shl i64 %3746, 32
  %3750 = ashr exact i64 %3749, 32
  store i64 %3750, i64* %RDX.i726, align 8
  store %struct.Memory* %loadMem_401487, %struct.Memory** %MEMORY
  %loadMem_40148a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 5
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 7
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RDX.i722 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3760, i64 0, i64 0
  %YMM0.i723 = bitcast %union.VectorReg* %3761 to %"class.std::bitset"*
  %3762 = bitcast %"class.std::bitset"* %YMM0.i723 to i8*
  %3763 = load i64, i64* %RCX.i721
  %3764 = load i64, i64* %RDX.i722
  %3765 = mul i64 %3764, 8
  %3766 = add i64 %3765, %3763
  %3767 = load i64, i64* %PC.i720
  %3768 = add i64 %3767, 5
  store i64 %3768, i64* %PC.i720
  %3769 = inttoptr i64 %3766 to double*
  %3770 = load double, double* %3769
  %3771 = bitcast i8* %3762 to double*
  store double %3770, double* %3771, align 1
  %3772 = getelementptr inbounds i8, i8* %3762, i64 8
  %3773 = bitcast i8* %3772 to double*
  store double 0.000000e+00, double* %3773, align 1
  store %struct.Memory* %loadMem_40148a, %struct.Memory** %MEMORY
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3780, i64 0, i64 0
  %XMM0.i719 = bitcast %union.VectorReg* %3781 to %union.vec128_t*
  %3782 = load i64, i64* %RBP.i718
  %3783 = sub i64 %3782, 88
  %3784 = bitcast %union.vec128_t* %XMM0.i719 to i8*
  %3785 = load i64, i64* %PC.i717
  %3786 = add i64 %3785, 5
  store i64 %3786, i64* %PC.i717
  %3787 = bitcast i8* %3784 to double*
  %3788 = load double, double* %3787, align 1
  %3789 = inttoptr i64 %3783 to double*
  store double %3788, double* %3789
  store %struct.Memory* %loadMem_40148f, %struct.Memory** %MEMORY
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 15
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3796, i64 0, i64 0
  %YMM0.i716 = bitcast %union.VectorReg* %3797 to %"class.std::bitset"*
  %3798 = bitcast %"class.std::bitset"* %YMM0.i716 to i8*
  %3799 = load i64, i64* %RBP.i715
  %3800 = sub i64 %3799, 80
  %3801 = load i64, i64* %PC.i714
  %3802 = add i64 %3801, 5
  store i64 %3802, i64* %PC.i714
  %3803 = inttoptr i64 %3800 to double*
  %3804 = load double, double* %3803
  %3805 = bitcast i8* %3798 to double*
  store double %3804, double* %3805, align 1
  %3806 = getelementptr inbounds i8, i8* %3798, i64 8
  %3807 = bitcast i8* %3806 to double*
  store double 0.000000e+00, double* %3807, align 1
  store %struct.Memory* %loadMem_401494, %struct.Memory** %MEMORY
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 5
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 15
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %RBP.i713
  %3818 = sub i64 %3817, 24
  %3819 = load i64, i64* %PC.i711
  %3820 = add i64 %3819, 4
  store i64 %3820, i64* %PC.i711
  %3821 = inttoptr i64 %3818 to i64*
  %3822 = load i64, i64* %3821
  store i64 %3822, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_401499, %struct.Memory** %MEMORY
  %loadMem_40149d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 33
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 7
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 15
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %3831 to i64*
  %3832 = load i64, i64* %RBP.i710
  %3833 = sub i64 %3832, 32
  %3834 = load i64, i64* %PC.i708
  %3835 = add i64 %3834, 4
  store i64 %3835, i64* %PC.i708
  %3836 = inttoptr i64 %3833 to i32*
  %3837 = load i32, i32* %3836
  %3838 = sext i32 %3837 to i64
  store i64 %3838, i64* %RDX.i709, align 8
  store %struct.Memory* %loadMem_40149d, %struct.Memory** %MEMORY
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 5
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 7
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RDX.i706 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3848, i64 0, i64 0
  %XMM0.i707 = bitcast %union.VectorReg* %3849 to %union.vec128_t*
  %3850 = load i64, i64* %RCX.i705
  %3851 = load i64, i64* %RDX.i706
  %3852 = mul i64 %3851, 8
  %3853 = add i64 %3852, %3850
  %3854 = bitcast %union.vec128_t* %XMM0.i707 to i8*
  %3855 = load i64, i64* %PC.i704
  %3856 = add i64 %3855, 5
  store i64 %3856, i64* %PC.i704
  %3857 = bitcast i8* %3854 to double*
  %3858 = load double, double* %3857, align 1
  %3859 = inttoptr i64 %3853 to double*
  store double %3858, double* %3859
  store %struct.Memory* %loadMem_4014a1, %struct.Memory** %MEMORY
  %loadMem_4014a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 15
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3866, i64 0, i64 0
  %YMM0.i703 = bitcast %union.VectorReg* %3867 to %"class.std::bitset"*
  %3868 = bitcast %"class.std::bitset"* %YMM0.i703 to i8*
  %3869 = load i64, i64* %RBP.i702
  %3870 = sub i64 %3869, 88
  %3871 = load i64, i64* %PC.i701
  %3872 = add i64 %3871, 5
  store i64 %3872, i64* %PC.i701
  %3873 = inttoptr i64 %3870 to double*
  %3874 = load double, double* %3873
  %3875 = bitcast i8* %3868 to double*
  store double %3874, double* %3875, align 1
  %3876 = getelementptr inbounds i8, i8* %3868, i64 8
  %3877 = bitcast i8* %3876 to double*
  store double 0.000000e+00, double* %3877, align 1
  store %struct.Memory* %loadMem_4014a6, %struct.Memory** %MEMORY
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 5
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 15
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %RBP.i700
  %3888 = sub i64 %3887, 24
  %3889 = load i64, i64* %PC.i698
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i698
  %3891 = inttoptr i64 %3888 to i64*
  %3892 = load i64, i64* %3891
  store i64 %3892, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_4014ab, %struct.Memory** %MEMORY
  %loadMem_4014af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i697
  %3903 = sub i64 %3902, 32
  %3904 = load i64, i64* %PC.i695
  %3905 = add i64 %3904, 3
  store i64 %3905, i64* %PC.i695
  %3906 = inttoptr i64 %3903 to i32*
  %3907 = load i32, i32* %3906
  %3908 = zext i32 %3907 to i64
  store i64 %3908, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_4014af, %struct.Memory** %MEMORY
  %loadMem_4014b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 1
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RAX.i694
  %3916 = load i64, i64* %PC.i693
  %3917 = add i64 %3916, 3
  store i64 %3917, i64* %PC.i693
  %3918 = trunc i64 %3915 to i32
  %3919 = add i32 1, %3918
  %3920 = zext i32 %3919 to i64
  store i64 %3920, i64* %RAX.i694, align 8
  %3921 = icmp ult i32 %3919, %3918
  %3922 = icmp ult i32 %3919, 1
  %3923 = or i1 %3921, %3922
  %3924 = zext i1 %3923 to i8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3924, i8* %3925, align 1
  %3926 = and i32 %3919, 255
  %3927 = call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3930, i8* %3931, align 1
  %3932 = xor i64 1, %3915
  %3933 = trunc i64 %3932 to i32
  %3934 = xor i32 %3933, %3919
  %3935 = lshr i32 %3934, 4
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3937, i8* %3938, align 1
  %3939 = icmp eq i32 %3919, 0
  %3940 = zext i1 %3939 to i8
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3940, i8* %3941, align 1
  %3942 = lshr i32 %3919, 31
  %3943 = trunc i32 %3942 to i8
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3943, i8* %3944, align 1
  %3945 = lshr i32 %3918, 31
  %3946 = xor i32 %3942, %3945
  %3947 = add i32 %3946, %3942
  %3948 = icmp eq i32 %3947, 2
  %3949 = zext i1 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3949, i8* %3950, align 1
  store %struct.Memory* %loadMem_4014b2, %struct.Memory** %MEMORY
  %loadMem_4014b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 1
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %EAX.i691 = bitcast %union.anon* %3956 to i32*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 7
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %3959 to i64*
  %3960 = load i32, i32* %EAX.i691
  %3961 = zext i32 %3960 to i64
  %3962 = load i64, i64* %PC.i690
  %3963 = add i64 %3962, 3
  store i64 %3963, i64* %PC.i690
  %3964 = shl i64 %3961, 32
  %3965 = ashr exact i64 %3964, 32
  store i64 %3965, i64* %RDX.i692, align 8
  store %struct.Memory* %loadMem_4014b5, %struct.Memory** %MEMORY
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 5
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 7
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RDX.i688 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3975, i64 0, i64 0
  %XMM0.i689 = bitcast %union.VectorReg* %3976 to %union.vec128_t*
  %3977 = load i64, i64* %RCX.i687
  %3978 = load i64, i64* %RDX.i688
  %3979 = mul i64 %3978, 8
  %3980 = add i64 %3979, %3977
  %3981 = bitcast %union.vec128_t* %XMM0.i689 to i8*
  %3982 = load i64, i64* %PC.i686
  %3983 = add i64 %3982, 5
  store i64 %3983, i64* %PC.i686
  %3984 = bitcast i8* %3981 to double*
  %3985 = load double, double* %3984, align 1
  %3986 = inttoptr i64 %3980 to double*
  store double %3985, double* %3986
  store %struct.Memory* %loadMem_4014b8, %struct.Memory** %MEMORY
  %loadMem_4014bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 15
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3994 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3993, i64 0, i64 0
  %YMM0.i685 = bitcast %union.VectorReg* %3994 to %"class.std::bitset"*
  %3995 = bitcast %"class.std::bitset"* %YMM0.i685 to i8*
  %3996 = load i64, i64* %RBP.i684
  %3997 = sub i64 %3996, 64
  %3998 = load i64, i64* %PC.i683
  %3999 = add i64 %3998, 5
  store i64 %3999, i64* %PC.i683
  %4000 = inttoptr i64 %3997 to double*
  %4001 = load double, double* %4000
  %4002 = bitcast i8* %3995 to double*
  store double %4001, double* %4002, align 1
  %4003 = getelementptr inbounds i8, i8* %3995, i64 8
  %4004 = bitcast i8* %4003 to double*
  store double 0.000000e+00, double* %4004, align 1
  store %struct.Memory* %loadMem_4014bd, %struct.Memory** %MEMORY
  %loadMem_4014c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 5
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 15
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RBP.i682
  %4015 = sub i64 %4014, 24
  %4016 = load i64, i64* %PC.i680
  %4017 = add i64 %4016, 4
  store i64 %4017, i64* %PC.i680
  %4018 = inttoptr i64 %4015 to i64*
  %4019 = load i64, i64* %4018
  store i64 %4019, i64* %RCX.i681, align 8
  store %struct.Memory* %loadMem_4014c2, %struct.Memory** %MEMORY
  %loadMem_4014c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 7
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RDX.i678 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 15
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %RBP.i679
  %4030 = sub i64 %4029, 40
  %4031 = load i64, i64* %PC.i677
  %4032 = add i64 %4031, 4
  store i64 %4032, i64* %PC.i677
  %4033 = inttoptr i64 %4030 to i32*
  %4034 = load i32, i32* %4033
  %4035 = sext i32 %4034 to i64
  store i64 %4035, i64* %RDX.i678, align 8
  store %struct.Memory* %loadMem_4014c6, %struct.Memory** %MEMORY
  %loadMem_4014ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 5
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 7
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4045, i64 0, i64 0
  %XMM0.i676 = bitcast %union.VectorReg* %4046 to %union.vec128_t*
  %4047 = load i64, i64* %RCX.i674
  %4048 = load i64, i64* %RDX.i675
  %4049 = mul i64 %4048, 8
  %4050 = add i64 %4049, %4047
  %4051 = bitcast %union.vec128_t* %XMM0.i676 to i8*
  %4052 = load i64, i64* %PC.i673
  %4053 = add i64 %4052, 5
  store i64 %4053, i64* %PC.i673
  %4054 = bitcast i8* %4051 to double*
  %4055 = load double, double* %4054, align 1
  %4056 = inttoptr i64 %4050 to double*
  store double %4055, double* %4056
  store %struct.Memory* %loadMem_4014ca, %struct.Memory** %MEMORY
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4063, i64 0, i64 0
  %YMM0.i672 = bitcast %union.VectorReg* %4064 to %"class.std::bitset"*
  %4065 = bitcast %"class.std::bitset"* %YMM0.i672 to i8*
  %4066 = load i64, i64* %RBP.i671
  %4067 = sub i64 %4066, 72
  %4068 = load i64, i64* %PC.i670
  %4069 = add i64 %4068, 5
  store i64 %4069, i64* %PC.i670
  %4070 = inttoptr i64 %4067 to double*
  %4071 = load double, double* %4070
  %4072 = bitcast i8* %4065 to double*
  store double %4071, double* %4072, align 1
  %4073 = getelementptr inbounds i8, i8* %4065, i64 8
  %4074 = bitcast i8* %4073 to double*
  store double 0.000000e+00, double* %4074, align 1
  store %struct.Memory* %loadMem_4014cf, %struct.Memory** %MEMORY
  %loadMem_4014d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 5
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 15
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %4083 to i64*
  %4084 = load i64, i64* %RBP.i669
  %4085 = sub i64 %4084, 24
  %4086 = load i64, i64* %PC.i667
  %4087 = add i64 %4086, 4
  store i64 %4087, i64* %PC.i667
  %4088 = inttoptr i64 %4085 to i64*
  %4089 = load i64, i64* %4088
  store i64 %4089, i64* %RCX.i668, align 8
  store %struct.Memory* %loadMem_4014d4, %struct.Memory** %MEMORY
  %loadMem_4014d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 15
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %4098 to i64*
  %4099 = load i64, i64* %RBP.i666
  %4100 = sub i64 %4099, 40
  %4101 = load i64, i64* %PC.i664
  %4102 = add i64 %4101, 3
  store i64 %4102, i64* %PC.i664
  %4103 = inttoptr i64 %4100 to i32*
  %4104 = load i32, i32* %4103
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_4014d8, %struct.Memory** %MEMORY
  %loadMem_4014db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 1
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RAX.i663
  %4113 = load i64, i64* %PC.i662
  %4114 = add i64 %4113, 3
  store i64 %4114, i64* %PC.i662
  %4115 = trunc i64 %4112 to i32
  %4116 = add i32 1, %4115
  %4117 = zext i32 %4116 to i64
  store i64 %4117, i64* %RAX.i663, align 8
  %4118 = icmp ult i32 %4116, %4115
  %4119 = icmp ult i32 %4116, 1
  %4120 = or i1 %4118, %4119
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4121, i8* %4122, align 1
  %4123 = and i32 %4116, 255
  %4124 = call i32 @llvm.ctpop.i32(i32 %4123)
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  %4127 = xor i8 %4126, 1
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4127, i8* %4128, align 1
  %4129 = xor i64 1, %4112
  %4130 = trunc i64 %4129 to i32
  %4131 = xor i32 %4130, %4116
  %4132 = lshr i32 %4131, 4
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4134, i8* %4135, align 1
  %4136 = icmp eq i32 %4116, 0
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4137, i8* %4138, align 1
  %4139 = lshr i32 %4116, 31
  %4140 = trunc i32 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4140, i8* %4141, align 1
  %4142 = lshr i32 %4115, 31
  %4143 = xor i32 %4139, %4142
  %4144 = add i32 %4143, %4139
  %4145 = icmp eq i32 %4144, 2
  %4146 = zext i1 %4145 to i8
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4146, i8* %4147, align 1
  store %struct.Memory* %loadMem_4014db, %struct.Memory** %MEMORY
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 1
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %4153 to i32*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 7
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RDX.i661 = bitcast %union.anon* %4156 to i64*
  %4157 = load i32, i32* %EAX.i660
  %4158 = zext i32 %4157 to i64
  %4159 = load i64, i64* %PC.i659
  %4160 = add i64 %4159, 3
  store i64 %4160, i64* %PC.i659
  %4161 = shl i64 %4158, 32
  %4162 = ashr exact i64 %4161, 32
  store i64 %4162, i64* %RDX.i661, align 8
  store %struct.Memory* %loadMem_4014de, %struct.Memory** %MEMORY
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 5
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 7
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4173 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4172, i64 0, i64 0
  %XMM0.i658 = bitcast %union.VectorReg* %4173 to %union.vec128_t*
  %4174 = load i64, i64* %RCX.i656
  %4175 = load i64, i64* %RDX.i657
  %4176 = mul i64 %4175, 8
  %4177 = add i64 %4176, %4174
  %4178 = bitcast %union.vec128_t* %XMM0.i658 to i8*
  %4179 = load i64, i64* %PC.i655
  %4180 = add i64 %4179, 5
  store i64 %4180, i64* %PC.i655
  %4181 = bitcast i8* %4178 to double*
  %4182 = load double, double* %4181, align 1
  %4183 = inttoptr i64 %4177 to double*
  store double %4182, double* %4183
  store %struct.Memory* %loadMem_4014e1, %struct.Memory** %MEMORY
  %loadMem_4014e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 1
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 15
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RBP.i654
  %4194 = sub i64 %4193, 52
  %4195 = load i64, i64* %PC.i652
  %4196 = add i64 %4195, 3
  store i64 %4196, i64* %PC.i652
  %4197 = inttoptr i64 %4194 to i32*
  %4198 = load i32, i32* %4197
  %4199 = zext i32 %4198 to i64
  store i64 %4199, i64* %RAX.i653, align 8
  store %struct.Memory* %loadMem_4014e6, %struct.Memory** %MEMORY
  %loadMem_4014e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 1
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 15
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RAX.i650
  %4210 = load i64, i64* %RBP.i651
  %4211 = sub i64 %4210, 32
  %4212 = load i64, i64* %PC.i649
  %4213 = add i64 %4212, 3
  store i64 %4213, i64* %PC.i649
  %4214 = trunc i64 %4209 to i32
  %4215 = inttoptr i64 %4211 to i32*
  %4216 = load i32, i32* %4215
  %4217 = add i32 %4216, %4214
  %4218 = zext i32 %4217 to i64
  store i64 %4218, i64* %RAX.i650, align 8
  %4219 = icmp ult i32 %4217, %4214
  %4220 = icmp ult i32 %4217, %4216
  %4221 = or i1 %4219, %4220
  %4222 = zext i1 %4221 to i8
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4222, i8* %4223, align 1
  %4224 = and i32 %4217, 255
  %4225 = call i32 @llvm.ctpop.i32(i32 %4224)
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  %4228 = xor i8 %4227, 1
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4228, i8* %4229, align 1
  %4230 = xor i32 %4216, %4214
  %4231 = xor i32 %4230, %4217
  %4232 = lshr i32 %4231, 4
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4234, i8* %4235, align 1
  %4236 = icmp eq i32 %4217, 0
  %4237 = zext i1 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4237, i8* %4238, align 1
  %4239 = lshr i32 %4217, 31
  %4240 = trunc i32 %4239 to i8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4240, i8* %4241, align 1
  %4242 = lshr i32 %4214, 31
  %4243 = lshr i32 %4216, 31
  %4244 = xor i32 %4239, %4242
  %4245 = xor i32 %4239, %4243
  %4246 = add i32 %4244, %4245
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4248, i8* %4249, align 1
  store %struct.Memory* %loadMem_4014e9, %struct.Memory** %MEMORY
  %loadMem_4014ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %EAX.i647 = bitcast %union.anon* %4255 to i32*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 15
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RBP.i648
  %4260 = sub i64 %4259, 32
  %4261 = load i32, i32* %EAX.i647
  %4262 = zext i32 %4261 to i64
  %4263 = load i64, i64* %PC.i646
  %4264 = add i64 %4263, 3
  store i64 %4264, i64* %PC.i646
  %4265 = inttoptr i64 %4260 to i32*
  store i32 %4261, i32* %4265
  store %struct.Memory* %loadMem_4014ec, %struct.Memory** %MEMORY
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 1
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 15
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %4274 to i64*
  %4275 = load i64, i64* %RBP.i645
  %4276 = sub i64 %4275, 52
  %4277 = load i64, i64* %PC.i643
  %4278 = add i64 %4277, 3
  store i64 %4278, i64* %PC.i643
  %4279 = inttoptr i64 %4276 to i32*
  %4280 = load i32, i32* %4279
  %4281 = zext i32 %4280 to i64
  store i64 %4281, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_4014ef, %struct.Memory** %MEMORY
  %loadMem_4014f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 33
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 1
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RAX.i642
  %4289 = load i64, i64* %PC.i641
  %4290 = add i64 %4289, 2
  store i64 %4290, i64* %PC.i641
  %4291 = trunc i64 %4288 to i32
  %4292 = shl i32 %4291, 1
  %4293 = icmp slt i32 %4291, 0
  %4294 = icmp slt i32 %4292, 0
  %4295 = xor i1 %4293, %4294
  %4296 = zext i32 %4292 to i64
  store i64 %4296, i64* %RAX.i642, align 8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4298 = zext i1 %4293 to i8
  store i8 %4298, i8* %4297, align 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4300 = and i32 %4292, 254
  %4301 = call i32 @llvm.ctpop.i32(i32 %4300)
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = xor i8 %4303, 1
  store i8 %4304, i8* %4299, align 1
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4305, align 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4307 = icmp eq i32 %4292, 0
  %4308 = zext i1 %4307 to i8
  store i8 %4308, i8* %4306, align 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4310 = lshr i32 %4292, 31
  %4311 = trunc i32 %4310 to i8
  store i8 %4311, i8* %4309, align 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4313 = zext i1 %4295 to i8
  store i8 %4313, i8* %4312, align 1
  store %struct.Memory* %loadMem_4014f2, %struct.Memory** %MEMORY
  %loadMem_4014f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RAX.i639
  %4324 = load i64, i64* %RBP.i640
  %4325 = sub i64 %4324, 40
  %4326 = load i64, i64* %PC.i638
  %4327 = add i64 %4326, 3
  store i64 %4327, i64* %PC.i638
  %4328 = trunc i64 %4323 to i32
  %4329 = inttoptr i64 %4325 to i32*
  %4330 = load i32, i32* %4329
  %4331 = add i32 %4330, %4328
  %4332 = zext i32 %4331 to i64
  store i64 %4332, i64* %RAX.i639, align 8
  %4333 = icmp ult i32 %4331, %4328
  %4334 = icmp ult i32 %4331, %4330
  %4335 = or i1 %4333, %4334
  %4336 = zext i1 %4335 to i8
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4336, i8* %4337, align 1
  %4338 = and i32 %4331, 255
  %4339 = call i32 @llvm.ctpop.i32(i32 %4338)
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = xor i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4342, i8* %4343, align 1
  %4344 = xor i32 %4330, %4328
  %4345 = xor i32 %4344, %4331
  %4346 = lshr i32 %4345, 4
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4348, i8* %4349, align 1
  %4350 = icmp eq i32 %4331, 0
  %4351 = zext i1 %4350 to i8
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4351, i8* %4352, align 1
  %4353 = lshr i32 %4331, 31
  %4354 = trunc i32 %4353 to i8
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4354, i8* %4355, align 1
  %4356 = lshr i32 %4328, 31
  %4357 = lshr i32 %4330, 31
  %4358 = xor i32 %4353, %4356
  %4359 = xor i32 %4353, %4357
  %4360 = add i32 %4358, %4359
  %4361 = icmp eq i32 %4360, 2
  %4362 = zext i1 %4361 to i8
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4362, i8* %4363, align 1
  store %struct.Memory* %loadMem_4014f5, %struct.Memory** %MEMORY
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 1
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %4369 to i32*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 15
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %RBP.i637
  %4374 = sub i64 %4373, 40
  %4375 = load i32, i32* %EAX.i636
  %4376 = zext i32 %4375 to i64
  %4377 = load i64, i64* %PC.i635
  %4378 = add i64 %4377, 3
  store i64 %4378, i64* %PC.i635
  %4379 = inttoptr i64 %4374 to i32*
  store i32 %4375, i32* %4379
  store %struct.Memory* %loadMem_4014f8, %struct.Memory** %MEMORY
  %loadMem_4014fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 33
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 5
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 15
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %4388 to i64*
  %4389 = load i64, i64* %RBP.i634
  %4390 = sub i64 %4389, 24
  %4391 = load i64, i64* %PC.i632
  %4392 = add i64 %4391, 4
  store i64 %4392, i64* %PC.i632
  %4393 = inttoptr i64 %4390 to i64*
  %4394 = load i64, i64* %4393
  store i64 %4394, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_4014fb, %struct.Memory** %MEMORY
  %loadMem_4014ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 7
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RDX.i630 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 15
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %4403 to i64*
  %4404 = load i64, i64* %RBP.i631
  %4405 = sub i64 %4404, 32
  %4406 = load i64, i64* %PC.i629
  %4407 = add i64 %4406, 4
  store i64 %4407, i64* %PC.i629
  %4408 = inttoptr i64 %4405 to i32*
  %4409 = load i32, i32* %4408
  %4410 = sext i32 %4409 to i64
  store i64 %4410, i64* %RDX.i630, align 8
  store %struct.Memory* %loadMem_4014ff, %struct.Memory** %MEMORY
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 5
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 7
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4421 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4420, i64 0, i64 0
  %YMM0.i628 = bitcast %union.VectorReg* %4421 to %"class.std::bitset"*
  %4422 = bitcast %"class.std::bitset"* %YMM0.i628 to i8*
  %4423 = load i64, i64* %RCX.i626
  %4424 = load i64, i64* %RDX.i627
  %4425 = mul i64 %4424, 8
  %4426 = add i64 %4425, %4423
  %4427 = load i64, i64* %PC.i625
  %4428 = add i64 %4427, 5
  store i64 %4428, i64* %PC.i625
  %4429 = inttoptr i64 %4426 to double*
  %4430 = load double, double* %4429
  %4431 = bitcast i8* %4422 to double*
  store double %4430, double* %4431, align 1
  %4432 = getelementptr inbounds i8, i8* %4422, i64 8
  %4433 = bitcast i8* %4432 to double*
  store double 0.000000e+00, double* %4433, align 1
  store %struct.Memory* %loadMem_401503, %struct.Memory** %MEMORY
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %4436 to i64*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 15
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4440, i64 0, i64 0
  %XMM0.i624 = bitcast %union.VectorReg* %4441 to %union.vec128_t*
  %4442 = load i64, i64* %RBP.i623
  %4443 = sub i64 %4442, 64
  %4444 = bitcast %union.vec128_t* %XMM0.i624 to i8*
  %4445 = load i64, i64* %PC.i622
  %4446 = add i64 %4445, 5
  store i64 %4446, i64* %PC.i622
  %4447 = bitcast i8* %4444 to double*
  %4448 = load double, double* %4447, align 1
  %4449 = inttoptr i64 %4443 to double*
  store double %4448, double* %4449
  store %struct.Memory* %loadMem_401508, %struct.Memory** %MEMORY
  %loadMem_40150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 5
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i621
  %4460 = sub i64 %4459, 24
  %4461 = load i64, i64* %PC.i619
  %4462 = add i64 %4461, 4
  store i64 %4462, i64* %PC.i619
  %4463 = inttoptr i64 %4460 to i64*
  %4464 = load i64, i64* %4463
  store i64 %4464, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_40150d, %struct.Memory** %MEMORY
  %loadMem_401511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 1
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 15
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %RBP.i618
  %4475 = sub i64 %4474, 32
  %4476 = load i64, i64* %PC.i616
  %4477 = add i64 %4476, 3
  store i64 %4477, i64* %PC.i616
  %4478 = inttoptr i64 %4475 to i32*
  %4479 = load i32, i32* %4478
  %4480 = zext i32 %4479 to i64
  store i64 %4480, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_401511, %struct.Memory** %MEMORY
  %loadMem_401514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 33
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 1
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %RAX.i615
  %4488 = load i64, i64* %PC.i614
  %4489 = add i64 %4488, 3
  store i64 %4489, i64* %PC.i614
  %4490 = trunc i64 %4487 to i32
  %4491 = add i32 1, %4490
  %4492 = zext i32 %4491 to i64
  store i64 %4492, i64* %RAX.i615, align 8
  %4493 = icmp ult i32 %4491, %4490
  %4494 = icmp ult i32 %4491, 1
  %4495 = or i1 %4493, %4494
  %4496 = zext i1 %4495 to i8
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4496, i8* %4497, align 1
  %4498 = and i32 %4491, 255
  %4499 = call i32 @llvm.ctpop.i32(i32 %4498)
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  %4502 = xor i8 %4501, 1
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4502, i8* %4503, align 1
  %4504 = xor i64 1, %4487
  %4505 = trunc i64 %4504 to i32
  %4506 = xor i32 %4505, %4491
  %4507 = lshr i32 %4506, 4
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4509, i8* %4510, align 1
  %4511 = icmp eq i32 %4491, 0
  %4512 = zext i1 %4511 to i8
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4512, i8* %4513, align 1
  %4514 = lshr i32 %4491, 31
  %4515 = trunc i32 %4514 to i8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4515, i8* %4516, align 1
  %4517 = lshr i32 %4490, 31
  %4518 = xor i32 %4514, %4517
  %4519 = add i32 %4518, %4514
  %4520 = icmp eq i32 %4519, 2
  %4521 = zext i1 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4521, i8* %4522, align 1
  store %struct.Memory* %loadMem_401514, %struct.Memory** %MEMORY
  %loadMem_401517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 33
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 1
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %EAX.i612 = bitcast %union.anon* %4528 to i32*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 7
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %4531 to i64*
  %4532 = load i32, i32* %EAX.i612
  %4533 = zext i32 %4532 to i64
  %4534 = load i64, i64* %PC.i611
  %4535 = add i64 %4534, 3
  store i64 %4535, i64* %PC.i611
  %4536 = shl i64 %4533, 32
  %4537 = ashr exact i64 %4536, 32
  store i64 %4537, i64* %RDX.i613, align 8
  store %struct.Memory* %loadMem_401517, %struct.Memory** %MEMORY
  %loadMem_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 5
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 7
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4547, i64 0, i64 0
  %YMM0.i610 = bitcast %union.VectorReg* %4548 to %"class.std::bitset"*
  %4549 = bitcast %"class.std::bitset"* %YMM0.i610 to i8*
  %4550 = load i64, i64* %RCX.i608
  %4551 = load i64, i64* %RDX.i609
  %4552 = mul i64 %4551, 8
  %4553 = add i64 %4552, %4550
  %4554 = load i64, i64* %PC.i607
  %4555 = add i64 %4554, 5
  store i64 %4555, i64* %PC.i607
  %4556 = inttoptr i64 %4553 to double*
  %4557 = load double, double* %4556
  %4558 = bitcast i8* %4549 to double*
  store double %4557, double* %4558, align 1
  %4559 = getelementptr inbounds i8, i8* %4549, i64 8
  %4560 = bitcast i8* %4559 to double*
  store double 0.000000e+00, double* %4560, align 1
  store %struct.Memory* %loadMem_40151a, %struct.Memory** %MEMORY
  %loadMem_40151f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 33
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 15
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4567, i64 0, i64 0
  %XMM0.i606 = bitcast %union.VectorReg* %4568 to %union.vec128_t*
  %4569 = load i64, i64* %RBP.i605
  %4570 = sub i64 %4569, 72
  %4571 = bitcast %union.vec128_t* %XMM0.i606 to i8*
  %4572 = load i64, i64* %PC.i604
  %4573 = add i64 %4572, 5
  store i64 %4573, i64* %PC.i604
  %4574 = bitcast i8* %4571 to double*
  %4575 = load double, double* %4574, align 1
  %4576 = inttoptr i64 %4570 to double*
  store double %4575, double* %4576
  store %struct.Memory* %loadMem_40151f, %struct.Memory** %MEMORY
  %loadMem_401524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 5
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i603
  %4587 = sub i64 %4586, 24
  %4588 = load i64, i64* %PC.i601
  %4589 = add i64 %4588, 4
  store i64 %4589, i64* %PC.i601
  %4590 = inttoptr i64 %4587 to i64*
  %4591 = load i64, i64* %4590
  store i64 %4591, i64* %RCX.i602, align 8
  store %struct.Memory* %loadMem_401524, %struct.Memory** %MEMORY
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 7
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 15
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RBP.i600
  %4602 = sub i64 %4601, 40
  %4603 = load i64, i64* %PC.i598
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %PC.i598
  %4605 = inttoptr i64 %4602 to i32*
  %4606 = load i32, i32* %4605
  %4607 = sext i32 %4606 to i64
  store i64 %4607, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_401528, %struct.Memory** %MEMORY
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 5
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 7
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RDX.i596 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4617, i64 0, i64 0
  %YMM0.i597 = bitcast %union.VectorReg* %4618 to %"class.std::bitset"*
  %4619 = bitcast %"class.std::bitset"* %YMM0.i597 to i8*
  %4620 = load i64, i64* %RCX.i595
  %4621 = load i64, i64* %RDX.i596
  %4622 = mul i64 %4621, 8
  %4623 = add i64 %4622, %4620
  %4624 = load i64, i64* %PC.i594
  %4625 = add i64 %4624, 5
  store i64 %4625, i64* %PC.i594
  %4626 = inttoptr i64 %4623 to double*
  %4627 = load double, double* %4626
  %4628 = bitcast i8* %4619 to double*
  store double %4627, double* %4628, align 1
  %4629 = getelementptr inbounds i8, i8* %4619, i64 8
  %4630 = bitcast i8* %4629 to double*
  store double 0.000000e+00, double* %4630, align 1
  store %struct.Memory* %loadMem_40152c, %struct.Memory** %MEMORY
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 33
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4637, i64 0, i64 0
  %XMM0.i593 = bitcast %union.VectorReg* %4638 to %union.vec128_t*
  %4639 = load i64, i64* %RBP.i592
  %4640 = sub i64 %4639, 80
  %4641 = bitcast %union.vec128_t* %XMM0.i593 to i8*
  %4642 = load i64, i64* %PC.i591
  %4643 = add i64 %4642, 5
  store i64 %4643, i64* %PC.i591
  %4644 = bitcast i8* %4641 to double*
  %4645 = load double, double* %4644, align 1
  %4646 = inttoptr i64 %4640 to double*
  store double %4645, double* %4646
  store %struct.Memory* %loadMem_401531, %struct.Memory** %MEMORY
  %loadMem_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 33
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 5
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 15
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %4655 to i64*
  %4656 = load i64, i64* %RBP.i590
  %4657 = sub i64 %4656, 24
  %4658 = load i64, i64* %PC.i588
  %4659 = add i64 %4658, 4
  store i64 %4659, i64* %PC.i588
  %4660 = inttoptr i64 %4657 to i64*
  %4661 = load i64, i64* %4660
  store i64 %4661, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_401536, %struct.Memory** %MEMORY
  %loadMem_40153a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 1
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 15
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RBP.i587
  %4672 = sub i64 %4671, 40
  %4673 = load i64, i64* %PC.i585
  %4674 = add i64 %4673, 3
  store i64 %4674, i64* %PC.i585
  %4675 = inttoptr i64 %4672 to i32*
  %4676 = load i32, i32* %4675
  %4677 = zext i32 %4676 to i64
  store i64 %4677, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_40153a, %struct.Memory** %MEMORY
  %loadMem_40153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 1
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RAX.i584
  %4685 = load i64, i64* %PC.i583
  %4686 = add i64 %4685, 3
  store i64 %4686, i64* %PC.i583
  %4687 = trunc i64 %4684 to i32
  %4688 = add i32 1, %4687
  %4689 = zext i32 %4688 to i64
  store i64 %4689, i64* %RAX.i584, align 8
  %4690 = icmp ult i32 %4688, %4687
  %4691 = icmp ult i32 %4688, 1
  %4692 = or i1 %4690, %4691
  %4693 = zext i1 %4692 to i8
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4693, i8* %4694, align 1
  %4695 = and i32 %4688, 255
  %4696 = call i32 @llvm.ctpop.i32(i32 %4695)
  %4697 = trunc i32 %4696 to i8
  %4698 = and i8 %4697, 1
  %4699 = xor i8 %4698, 1
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4699, i8* %4700, align 1
  %4701 = xor i64 1, %4684
  %4702 = trunc i64 %4701 to i32
  %4703 = xor i32 %4702, %4688
  %4704 = lshr i32 %4703, 4
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4706, i8* %4707, align 1
  %4708 = icmp eq i32 %4688, 0
  %4709 = zext i1 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4709, i8* %4710, align 1
  %4711 = lshr i32 %4688, 31
  %4712 = trunc i32 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4712, i8* %4713, align 1
  %4714 = lshr i32 %4687, 31
  %4715 = xor i32 %4711, %4714
  %4716 = add i32 %4715, %4711
  %4717 = icmp eq i32 %4716, 2
  %4718 = zext i1 %4717 to i8
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4718, i8* %4719, align 1
  store %struct.Memory* %loadMem_40153d, %struct.Memory** %MEMORY
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 1
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %4725 to i32*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 7
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RDX.i582 = bitcast %union.anon* %4728 to i64*
  %4729 = load i32, i32* %EAX.i581
  %4730 = zext i32 %4729 to i64
  %4731 = load i64, i64* %PC.i580
  %4732 = add i64 %4731, 3
  store i64 %4732, i64* %PC.i580
  %4733 = shl i64 %4730, 32
  %4734 = ashr exact i64 %4733, 32
  store i64 %4734, i64* %RDX.i582, align 8
  store %struct.Memory* %loadMem_401540, %struct.Memory** %MEMORY
  %loadMem_401543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 33
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 5
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 7
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4744, i64 0, i64 0
  %YMM0.i579 = bitcast %union.VectorReg* %4745 to %"class.std::bitset"*
  %4746 = bitcast %"class.std::bitset"* %YMM0.i579 to i8*
  %4747 = load i64, i64* %RCX.i577
  %4748 = load i64, i64* %RDX.i578
  %4749 = mul i64 %4748, 8
  %4750 = add i64 %4749, %4747
  %4751 = load i64, i64* %PC.i576
  %4752 = add i64 %4751, 5
  store i64 %4752, i64* %PC.i576
  %4753 = inttoptr i64 %4750 to double*
  %4754 = load double, double* %4753
  %4755 = bitcast i8* %4746 to double*
  store double %4754, double* %4755, align 1
  %4756 = getelementptr inbounds i8, i8* %4746, i64 8
  %4757 = bitcast i8* %4756 to double*
  store double 0.000000e+00, double* %4757, align 1
  store %struct.Memory* %loadMem_401543, %struct.Memory** %MEMORY
  %loadMem_401548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 15
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %4763 to i64*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4764, i64 0, i64 0
  %XMM0.i575 = bitcast %union.VectorReg* %4765 to %union.vec128_t*
  %4766 = load i64, i64* %RBP.i574
  %4767 = sub i64 %4766, 88
  %4768 = bitcast %union.vec128_t* %XMM0.i575 to i8*
  %4769 = load i64, i64* %PC.i573
  %4770 = add i64 %4769, 5
  store i64 %4770, i64* %PC.i573
  %4771 = bitcast i8* %4768 to double*
  %4772 = load double, double* %4771, align 1
  %4773 = inttoptr i64 %4767 to double*
  store double %4772, double* %4773
  store %struct.Memory* %loadMem_401548, %struct.Memory** %MEMORY
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4780, i64 0, i64 0
  %YMM0.i572 = bitcast %union.VectorReg* %4781 to %"class.std::bitset"*
  %4782 = bitcast %"class.std::bitset"* %YMM0.i572 to i8*
  %4783 = load i64, i64* %RBP.i571
  %4784 = sub i64 %4783, 80
  %4785 = load i64, i64* %PC.i570
  %4786 = add i64 %4785, 5
  store i64 %4786, i64* %PC.i570
  %4787 = inttoptr i64 %4784 to double*
  %4788 = load double, double* %4787
  %4789 = bitcast i8* %4782 to double*
  store double %4788, double* %4789, align 1
  %4790 = getelementptr inbounds i8, i8* %4782, i64 8
  %4791 = bitcast i8* %4790 to double*
  store double 0.000000e+00, double* %4791, align 1
  store %struct.Memory* %loadMem_40154d, %struct.Memory** %MEMORY
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 33
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 5
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 15
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %4800 to i64*
  %4801 = load i64, i64* %RBP.i569
  %4802 = sub i64 %4801, 24
  %4803 = load i64, i64* %PC.i567
  %4804 = add i64 %4803, 4
  store i64 %4804, i64* %PC.i567
  %4805 = inttoptr i64 %4802 to i64*
  %4806 = load i64, i64* %4805
  store i64 %4806, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_401552, %struct.Memory** %MEMORY
  %loadMem_401556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 7
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RDX.i565 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i566
  %4817 = sub i64 %4816, 32
  %4818 = load i64, i64* %PC.i564
  %4819 = add i64 %4818, 4
  store i64 %4819, i64* %PC.i564
  %4820 = inttoptr i64 %4817 to i32*
  %4821 = load i32, i32* %4820
  %4822 = sext i32 %4821 to i64
  store i64 %4822, i64* %RDX.i565, align 8
  store %struct.Memory* %loadMem_401556, %struct.Memory** %MEMORY
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 5
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 7
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4832, i64 0, i64 0
  %XMM0.i563 = bitcast %union.VectorReg* %4833 to %union.vec128_t*
  %4834 = load i64, i64* %RCX.i561
  %4835 = load i64, i64* %RDX.i562
  %4836 = mul i64 %4835, 8
  %4837 = add i64 %4836, %4834
  %4838 = bitcast %union.vec128_t* %XMM0.i563 to i8*
  %4839 = load i64, i64* %PC.i560
  %4840 = add i64 %4839, 5
  store i64 %4840, i64* %PC.i560
  %4841 = bitcast i8* %4838 to double*
  %4842 = load double, double* %4841, align 1
  %4843 = inttoptr i64 %4837 to double*
  store double %4842, double* %4843
  store %struct.Memory* %loadMem_40155a, %struct.Memory** %MEMORY
  %loadMem_40155f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 15
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %4849 to i64*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4850, i64 0, i64 0
  %YMM0.i559 = bitcast %union.VectorReg* %4851 to %"class.std::bitset"*
  %4852 = bitcast %"class.std::bitset"* %YMM0.i559 to i8*
  %4853 = load i64, i64* %RBP.i558
  %4854 = sub i64 %4853, 88
  %4855 = load i64, i64* %PC.i557
  %4856 = add i64 %4855, 5
  store i64 %4856, i64* %PC.i557
  %4857 = inttoptr i64 %4854 to double*
  %4858 = load double, double* %4857
  %4859 = bitcast i8* %4852 to double*
  store double %4858, double* %4859, align 1
  %4860 = getelementptr inbounds i8, i8* %4852, i64 8
  %4861 = bitcast i8* %4860 to double*
  store double 0.000000e+00, double* %4861, align 1
  store %struct.Memory* %loadMem_40155f, %struct.Memory** %MEMORY
  %loadMem_401564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 33
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 5
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 15
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %RBP.i556
  %4872 = sub i64 %4871, 24
  %4873 = load i64, i64* %PC.i554
  %4874 = add i64 %4873, 4
  store i64 %4874, i64* %PC.i554
  %4875 = inttoptr i64 %4872 to i64*
  %4876 = load i64, i64* %4875
  store i64 %4876, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_401564, %struct.Memory** %MEMORY
  %loadMem_401568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 1
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 15
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RBP.i553
  %4887 = sub i64 %4886, 32
  %4888 = load i64, i64* %PC.i551
  %4889 = add i64 %4888, 3
  store i64 %4889, i64* %PC.i551
  %4890 = inttoptr i64 %4887 to i32*
  %4891 = load i32, i32* %4890
  %4892 = zext i32 %4891 to i64
  store i64 %4892, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_401568, %struct.Memory** %MEMORY
  %loadMem_40156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 1
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RAX.i550
  %4900 = load i64, i64* %PC.i549
  %4901 = add i64 %4900, 3
  store i64 %4901, i64* %PC.i549
  %4902 = trunc i64 %4899 to i32
  %4903 = add i32 1, %4902
  %4904 = zext i32 %4903 to i64
  store i64 %4904, i64* %RAX.i550, align 8
  %4905 = icmp ult i32 %4903, %4902
  %4906 = icmp ult i32 %4903, 1
  %4907 = or i1 %4905, %4906
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4908, i8* %4909, align 1
  %4910 = and i32 %4903, 255
  %4911 = call i32 @llvm.ctpop.i32(i32 %4910)
  %4912 = trunc i32 %4911 to i8
  %4913 = and i8 %4912, 1
  %4914 = xor i8 %4913, 1
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4914, i8* %4915, align 1
  %4916 = xor i64 1, %4899
  %4917 = trunc i64 %4916 to i32
  %4918 = xor i32 %4917, %4903
  %4919 = lshr i32 %4918, 4
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4921, i8* %4922, align 1
  %4923 = icmp eq i32 %4903, 0
  %4924 = zext i1 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4924, i8* %4925, align 1
  %4926 = lshr i32 %4903, 31
  %4927 = trunc i32 %4926 to i8
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4927, i8* %4928, align 1
  %4929 = lshr i32 %4902, 31
  %4930 = xor i32 %4926, %4929
  %4931 = add i32 %4930, %4926
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4933, i8* %4934, align 1
  store %struct.Memory* %loadMem_40156b, %struct.Memory** %MEMORY
  %loadMem_40156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 1
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %4940 to i32*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 7
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %RDX.i548 = bitcast %union.anon* %4943 to i64*
  %4944 = load i32, i32* %EAX.i547
  %4945 = zext i32 %4944 to i64
  %4946 = load i64, i64* %PC.i546
  %4947 = add i64 %4946, 3
  store i64 %4947, i64* %PC.i546
  %4948 = shl i64 %4945, 32
  %4949 = ashr exact i64 %4948, 32
  store i64 %4949, i64* %RDX.i548, align 8
  store %struct.Memory* %loadMem_40156e, %struct.Memory** %MEMORY
  %loadMem_401571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 33
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %4952 to i64*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 5
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 7
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %4958 to i64*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4959, i64 0, i64 0
  %XMM0.i545 = bitcast %union.VectorReg* %4960 to %union.vec128_t*
  %4961 = load i64, i64* %RCX.i543
  %4962 = load i64, i64* %RDX.i544
  %4963 = mul i64 %4962, 8
  %4964 = add i64 %4963, %4961
  %4965 = bitcast %union.vec128_t* %XMM0.i545 to i8*
  %4966 = load i64, i64* %PC.i542
  %4967 = add i64 %4966, 5
  store i64 %4967, i64* %PC.i542
  %4968 = bitcast i8* %4965 to double*
  %4969 = load double, double* %4968, align 1
  %4970 = inttoptr i64 %4964 to double*
  store double %4969, double* %4970
  store %struct.Memory* %loadMem_401571, %struct.Memory** %MEMORY
  %loadMem_401576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 15
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4977, i64 0, i64 0
  %YMM0.i541 = bitcast %union.VectorReg* %4978 to %"class.std::bitset"*
  %4979 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %4980 = load i64, i64* %RBP.i540
  %4981 = sub i64 %4980, 64
  %4982 = load i64, i64* %PC.i539
  %4983 = add i64 %4982, 5
  store i64 %4983, i64* %PC.i539
  %4984 = inttoptr i64 %4981 to double*
  %4985 = load double, double* %4984
  %4986 = bitcast i8* %4979 to double*
  store double %4985, double* %4986, align 1
  %4987 = getelementptr inbounds i8, i8* %4979, i64 8
  %4988 = bitcast i8* %4987 to double*
  store double 0.000000e+00, double* %4988, align 1
  store %struct.Memory* %loadMem_401576, %struct.Memory** %MEMORY
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 33
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 5
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 15
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %RBP.i538
  %4999 = sub i64 %4998, 24
  %5000 = load i64, i64* %PC.i536
  %5001 = add i64 %5000, 4
  store i64 %5001, i64* %PC.i536
  %5002 = inttoptr i64 %4999 to i64*
  %5003 = load i64, i64* %5002
  store i64 %5003, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_40157b, %struct.Memory** %MEMORY
  %loadMem_40157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 7
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 15
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RBP.i535
  %5014 = sub i64 %5013, 40
  %5015 = load i64, i64* %PC.i533
  %5016 = add i64 %5015, 4
  store i64 %5016, i64* %PC.i533
  %5017 = inttoptr i64 %5014 to i32*
  %5018 = load i32, i32* %5017
  %5019 = sext i32 %5018 to i64
  store i64 %5019, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_40157f, %struct.Memory** %MEMORY
  %loadMem_401583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 5
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 7
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5029, i64 0, i64 0
  %XMM0.i532 = bitcast %union.VectorReg* %5030 to %union.vec128_t*
  %5031 = load i64, i64* %RCX.i530
  %5032 = load i64, i64* %RDX.i531
  %5033 = mul i64 %5032, 8
  %5034 = add i64 %5033, %5031
  %5035 = bitcast %union.vec128_t* %XMM0.i532 to i8*
  %5036 = load i64, i64* %PC.i529
  %5037 = add i64 %5036, 5
  store i64 %5037, i64* %PC.i529
  %5038 = bitcast i8* %5035 to double*
  %5039 = load double, double* %5038, align 1
  %5040 = inttoptr i64 %5034 to double*
  store double %5039, double* %5040
  store %struct.Memory* %loadMem_401583, %struct.Memory** %MEMORY
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 33
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %5043 to i64*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 15
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5047, i64 0, i64 0
  %YMM0.i528 = bitcast %union.VectorReg* %5048 to %"class.std::bitset"*
  %5049 = bitcast %"class.std::bitset"* %YMM0.i528 to i8*
  %5050 = load i64, i64* %RBP.i527
  %5051 = sub i64 %5050, 72
  %5052 = load i64, i64* %PC.i526
  %5053 = add i64 %5052, 5
  store i64 %5053, i64* %PC.i526
  %5054 = inttoptr i64 %5051 to double*
  %5055 = load double, double* %5054
  %5056 = bitcast i8* %5049 to double*
  store double %5055, double* %5056, align 1
  %5057 = getelementptr inbounds i8, i8* %5049, i64 8
  %5058 = bitcast i8* %5057 to double*
  store double 0.000000e+00, double* %5058, align 1
  store %struct.Memory* %loadMem_401588, %struct.Memory** %MEMORY
  %loadMem_40158d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 33
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 5
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %5064 to i64*
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 15
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %RBP.i525
  %5069 = sub i64 %5068, 24
  %5070 = load i64, i64* %PC.i523
  %5071 = add i64 %5070, 4
  store i64 %5071, i64* %PC.i523
  %5072 = inttoptr i64 %5069 to i64*
  %5073 = load i64, i64* %5072
  store i64 %5073, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_40158d, %struct.Memory** %MEMORY
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 1
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 15
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %RBP.i522
  %5084 = sub i64 %5083, 40
  %5085 = load i64, i64* %PC.i520
  %5086 = add i64 %5085, 3
  store i64 %5086, i64* %PC.i520
  %5087 = inttoptr i64 %5084 to i32*
  %5088 = load i32, i32* %5087
  %5089 = zext i32 %5088 to i64
  store i64 %5089, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_401591, %struct.Memory** %MEMORY
  %loadMem_401594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 1
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RAX.i519
  %5097 = load i64, i64* %PC.i518
  %5098 = add i64 %5097, 3
  store i64 %5098, i64* %PC.i518
  %5099 = trunc i64 %5096 to i32
  %5100 = add i32 1, %5099
  %5101 = zext i32 %5100 to i64
  store i64 %5101, i64* %RAX.i519, align 8
  %5102 = icmp ult i32 %5100, %5099
  %5103 = icmp ult i32 %5100, 1
  %5104 = or i1 %5102, %5103
  %5105 = zext i1 %5104 to i8
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5105, i8* %5106, align 1
  %5107 = and i32 %5100, 255
  %5108 = call i32 @llvm.ctpop.i32(i32 %5107)
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = xor i8 %5110, 1
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5111, i8* %5112, align 1
  %5113 = xor i64 1, %5096
  %5114 = trunc i64 %5113 to i32
  %5115 = xor i32 %5114, %5100
  %5116 = lshr i32 %5115, 4
  %5117 = trunc i32 %5116 to i8
  %5118 = and i8 %5117, 1
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5118, i8* %5119, align 1
  %5120 = icmp eq i32 %5100, 0
  %5121 = zext i1 %5120 to i8
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5121, i8* %5122, align 1
  %5123 = lshr i32 %5100, 31
  %5124 = trunc i32 %5123 to i8
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5124, i8* %5125, align 1
  %5126 = lshr i32 %5099, 31
  %5127 = xor i32 %5123, %5126
  %5128 = add i32 %5127, %5123
  %5129 = icmp eq i32 %5128, 2
  %5130 = zext i1 %5129 to i8
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5130, i8* %5131, align 1
  store %struct.Memory* %loadMem_401594, %struct.Memory** %MEMORY
  %loadMem_401597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 33
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 1
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %EAX.i516 = bitcast %union.anon* %5137 to i32*
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 7
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %5140 to i64*
  %5141 = load i32, i32* %EAX.i516
  %5142 = zext i32 %5141 to i64
  %5143 = load i64, i64* %PC.i515
  %5144 = add i64 %5143, 3
  store i64 %5144, i64* %PC.i515
  %5145 = shl i64 %5142, 32
  %5146 = ashr exact i64 %5145, 32
  store i64 %5146, i64* %RDX.i517, align 8
  store %struct.Memory* %loadMem_401597, %struct.Memory** %MEMORY
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 33
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 5
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 7
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 0
  %XMM0.i514 = bitcast %union.VectorReg* %5157 to %union.vec128_t*
  %5158 = load i64, i64* %RCX.i512
  %5159 = load i64, i64* %RDX.i513
  %5160 = mul i64 %5159, 8
  %5161 = add i64 %5160, %5158
  %5162 = bitcast %union.vec128_t* %XMM0.i514 to i8*
  %5163 = load i64, i64* %PC.i511
  %5164 = add i64 %5163, 5
  store i64 %5164, i64* %PC.i511
  %5165 = bitcast i8* %5162 to double*
  %5166 = load double, double* %5165, align 1
  %5167 = inttoptr i64 %5161 to double*
  store double %5166, double* %5167
  store %struct.Memory* %loadMem_40159a, %struct.Memory** %MEMORY
  %loadMem_40159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 1
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 15
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %RBP.i510
  %5178 = sub i64 %5177, 28
  %5179 = load i64, i64* %PC.i508
  %5180 = add i64 %5179, 3
  store i64 %5180, i64* %PC.i508
  %5181 = inttoptr i64 %5178 to i32*
  %5182 = load i32, i32* %5181
  %5183 = zext i32 %5182 to i64
  store i64 %5183, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_40159f, %struct.Memory** %MEMORY
  %loadMem_4015a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 33
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 1
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %RAX.i507
  %5191 = load i64, i64* %PC.i506
  %5192 = add i64 %5191, 3
  store i64 %5192, i64* %PC.i506
  %5193 = trunc i64 %5190 to i32
  %5194 = add i32 1, %5193
  %5195 = zext i32 %5194 to i64
  store i64 %5195, i64* %RAX.i507, align 8
  %5196 = icmp ult i32 %5194, %5193
  %5197 = icmp ult i32 %5194, 1
  %5198 = or i1 %5196, %5197
  %5199 = zext i1 %5198 to i8
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5199, i8* %5200, align 1
  %5201 = and i32 %5194, 255
  %5202 = call i32 @llvm.ctpop.i32(i32 %5201)
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  %5205 = xor i8 %5204, 1
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5205, i8* %5206, align 1
  %5207 = xor i64 1, %5190
  %5208 = trunc i64 %5207 to i32
  %5209 = xor i32 %5208, %5194
  %5210 = lshr i32 %5209, 4
  %5211 = trunc i32 %5210 to i8
  %5212 = and i8 %5211, 1
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5212, i8* %5213, align 1
  %5214 = icmp eq i32 %5194, 0
  %5215 = zext i1 %5214 to i8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5215, i8* %5216, align 1
  %5217 = lshr i32 %5194, 31
  %5218 = trunc i32 %5217 to i8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5218, i8* %5219, align 1
  %5220 = lshr i32 %5193, 31
  %5221 = xor i32 %5217, %5220
  %5222 = add i32 %5221, %5217
  %5223 = icmp eq i32 %5222, 2
  %5224 = zext i1 %5223 to i8
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5224, i8* %5225, align 1
  store %struct.Memory* %loadMem_4015a2, %struct.Memory** %MEMORY
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %EAX.i504 = bitcast %union.anon* %5231 to i32*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 15
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RBP.i505
  %5236 = sub i64 %5235, 28
  %5237 = load i32, i32* %EAX.i504
  %5238 = zext i32 %5237 to i64
  %5239 = load i64, i64* %PC.i503
  %5240 = add i64 %5239, 3
  store i64 %5240, i64* %PC.i503
  %5241 = inttoptr i64 %5236 to i32*
  store i32 %5237, i32* %5241
  store %struct.Memory* %loadMem_4015a5, %struct.Memory** %MEMORY
  %loadMem_4015a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %PC.i502
  %5246 = add i64 %5245, -779
  %5247 = load i64, i64* %PC.i502
  %5248 = add i64 %5247, 5
  store i64 %5248, i64* %PC.i502
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5246, i64* %5249, align 8
  store %struct.Memory* %loadMem_4015a8, %struct.Memory** %MEMORY
  br label %block_.L_40129d

block_.L_4015ad:                                  ; preds = %block_.L_40129d
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 1
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 15
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %5258 to i64*
  %5259 = load i64, i64* %RBP.i501
  %5260 = sub i64 %5259, 36
  %5261 = load i64, i64* %PC.i499
  %5262 = add i64 %5261, 3
  store i64 %5262, i64* %PC.i499
  %5263 = inttoptr i64 %5260 to i32*
  %5264 = load i32, i32* %5263
  %5265 = zext i32 %5264 to i64
  store i64 %5265, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_4015ad, %struct.Memory** %MEMORY
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 33
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %5268 to i64*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 1
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %5271 to i64*
  %5272 = load i64, i64* %RAX.i498
  %5273 = load i64, i64* %PC.i497
  %5274 = add i64 %5273, 2
  store i64 %5274, i64* %PC.i497
  %5275 = trunc i64 %5272 to i32
  %5276 = shl i32 %5275, 1
  %5277 = icmp slt i32 %5275, 0
  %5278 = icmp slt i32 %5276, 0
  %5279 = xor i1 %5277, %5278
  %5280 = zext i32 %5276 to i64
  store i64 %5280, i64* %RAX.i498, align 8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5282 = zext i1 %5277 to i8
  store i8 %5282, i8* %5281, align 1
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5284 = and i32 %5276, 254
  %5285 = call i32 @llvm.ctpop.i32(i32 %5284)
  %5286 = trunc i32 %5285 to i8
  %5287 = and i8 %5286, 1
  %5288 = xor i8 %5287, 1
  store i8 %5288, i8* %5283, align 1
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5289, align 1
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5291 = icmp eq i32 %5276, 0
  %5292 = zext i1 %5291 to i8
  store i8 %5292, i8* %5290, align 1
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5294 = lshr i32 %5276, 31
  %5295 = trunc i32 %5294 to i8
  store i8 %5295, i8* %5293, align 1
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5297 = zext i1 %5279 to i8
  store i8 %5297, i8* %5296, align 1
  store %struct.Memory* %loadMem_4015b0, %struct.Memory** %MEMORY
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 33
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 1
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 15
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %5306 to i64*
  %5307 = load i64, i64* %RAX.i495
  %5308 = load i64, i64* %RBP.i496
  %5309 = sub i64 %5308, 52
  %5310 = load i64, i64* %PC.i494
  %5311 = add i64 %5310, 3
  store i64 %5311, i64* %PC.i494
  %5312 = trunc i64 %5307 to i32
  %5313 = inttoptr i64 %5309 to i32*
  %5314 = load i32, i32* %5313
  %5315 = add i32 %5314, %5312
  %5316 = zext i32 %5315 to i64
  store i64 %5316, i64* %RAX.i495, align 8
  %5317 = icmp ult i32 %5315, %5312
  %5318 = icmp ult i32 %5315, %5314
  %5319 = or i1 %5317, %5318
  %5320 = zext i1 %5319 to i8
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5320, i8* %5321, align 1
  %5322 = and i32 %5315, 255
  %5323 = call i32 @llvm.ctpop.i32(i32 %5322)
  %5324 = trunc i32 %5323 to i8
  %5325 = and i8 %5324, 1
  %5326 = xor i8 %5325, 1
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5326, i8* %5327, align 1
  %5328 = xor i32 %5314, %5312
  %5329 = xor i32 %5328, %5315
  %5330 = lshr i32 %5329, 4
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5332, i8* %5333, align 1
  %5334 = icmp eq i32 %5315, 0
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5335, i8* %5336, align 1
  %5337 = lshr i32 %5315, 31
  %5338 = trunc i32 %5337 to i8
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5338, i8* %5339, align 1
  %5340 = lshr i32 %5312, 31
  %5341 = lshr i32 %5314, 31
  %5342 = xor i32 %5337, %5340
  %5343 = xor i32 %5337, %5341
  %5344 = add i32 %5342, %5343
  %5345 = icmp eq i32 %5344, 2
  %5346 = zext i1 %5345 to i8
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5346, i8* %5347, align 1
  store %struct.Memory* %loadMem_4015b3, %struct.Memory** %MEMORY
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 5
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 15
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %5356 to i64*
  %5357 = load i64, i64* %RBP.i493
  %5358 = sub i64 %5357, 16
  %5359 = load i64, i64* %PC.i491
  %5360 = add i64 %5359, 4
  store i64 %5360, i64* %PC.i491
  %5361 = inttoptr i64 %5358 to i64*
  %5362 = load i64, i64* %5361
  store i64 %5362, i64* %RCX.i492, align 8
  store %struct.Memory* %loadMem_4015b6, %struct.Memory** %MEMORY
  %loadMem_4015ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 33
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 7
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 15
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %RBP.i490
  %5373 = sub i64 %5372, 36
  %5374 = load i64, i64* %PC.i488
  %5375 = add i64 %5374, 4
  store i64 %5375, i64* %PC.i488
  %5376 = inttoptr i64 %5373 to i32*
  %5377 = load i32, i32* %5376
  %5378 = sext i32 %5377 to i64
  store i64 %5378, i64* %RDX.i489, align 8
  store %struct.Memory* %loadMem_4015ba, %struct.Memory** %MEMORY
  %loadMem_4015be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 1
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 5
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 7
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %5390 to i64*
  %5391 = load i64, i64* %RAX.i485
  %5392 = load i64, i64* %RCX.i486
  %5393 = load i64, i64* %RDX.i487
  %5394 = mul i64 %5393, 4
  %5395 = add i64 %5394, %5392
  %5396 = load i64, i64* %PC.i484
  %5397 = add i64 %5396, 3
  store i64 %5397, i64* %PC.i484
  %5398 = trunc i64 %5391 to i32
  %5399 = inttoptr i64 %5395 to i32*
  %5400 = load i32, i32* %5399
  %5401 = add i32 %5400, %5398
  %5402 = zext i32 %5401 to i64
  store i64 %5402, i64* %RAX.i485, align 8
  %5403 = icmp ult i32 %5401, %5398
  %5404 = icmp ult i32 %5401, %5400
  %5405 = or i1 %5403, %5404
  %5406 = zext i1 %5405 to i8
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5406, i8* %5407, align 1
  %5408 = and i32 %5401, 255
  %5409 = call i32 @llvm.ctpop.i32(i32 %5408)
  %5410 = trunc i32 %5409 to i8
  %5411 = and i8 %5410, 1
  %5412 = xor i8 %5411, 1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5412, i8* %5413, align 1
  %5414 = xor i32 %5400, %5398
  %5415 = xor i32 %5414, %5401
  %5416 = lshr i32 %5415, 4
  %5417 = trunc i32 %5416 to i8
  %5418 = and i8 %5417, 1
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5418, i8* %5419, align 1
  %5420 = icmp eq i32 %5401, 0
  %5421 = zext i1 %5420 to i8
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5421, i8* %5422, align 1
  %5423 = lshr i32 %5401, 31
  %5424 = trunc i32 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5424, i8* %5425, align 1
  %5426 = lshr i32 %5398, 31
  %5427 = lshr i32 %5400, 31
  %5428 = xor i32 %5423, %5426
  %5429 = xor i32 %5423, %5427
  %5430 = add i32 %5428, %5429
  %5431 = icmp eq i32 %5430, 2
  %5432 = zext i1 %5431 to i8
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5432, i8* %5433, align 1
  store %struct.Memory* %loadMem_4015be, %struct.Memory** %MEMORY
  %loadMem_4015c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 33
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %5436 to i64*
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 1
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %5439 to i32*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 15
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %5442 to i64*
  %5443 = load i64, i64* %RBP.i483
  %5444 = sub i64 %5443, 32
  %5445 = load i32, i32* %EAX.i482
  %5446 = zext i32 %5445 to i64
  %5447 = load i64, i64* %PC.i481
  %5448 = add i64 %5447, 3
  store i64 %5448, i64* %PC.i481
  %5449 = inttoptr i64 %5444 to i32*
  store i32 %5445, i32* %5449
  store %struct.Memory* %loadMem_4015c1, %struct.Memory** %MEMORY
  %loadMem_4015c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 33
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %5452 to i64*
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 1
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 15
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %5458 to i64*
  %5459 = load i64, i64* %RBP.i480
  %5460 = sub i64 %5459, 32
  %5461 = load i64, i64* %PC.i478
  %5462 = add i64 %5461, 3
  store i64 %5462, i64* %PC.i478
  %5463 = inttoptr i64 %5460 to i32*
  %5464 = load i32, i32* %5463
  %5465 = zext i32 %5464 to i64
  store i64 %5465, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_4015c4, %struct.Memory** %MEMORY
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 1
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 15
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %5474 to i64*
  %5475 = load i64, i64* %RAX.i476
  %5476 = load i64, i64* %RBP.i477
  %5477 = sub i64 %5476, 52
  %5478 = load i64, i64* %PC.i475
  %5479 = add i64 %5478, 3
  store i64 %5479, i64* %PC.i475
  %5480 = trunc i64 %5475 to i32
  %5481 = inttoptr i64 %5477 to i32*
  %5482 = load i32, i32* %5481
  %5483 = add i32 %5482, %5480
  %5484 = zext i32 %5483 to i64
  store i64 %5484, i64* %RAX.i476, align 8
  %5485 = icmp ult i32 %5483, %5480
  %5486 = icmp ult i32 %5483, %5482
  %5487 = or i1 %5485, %5486
  %5488 = zext i1 %5487 to i8
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5488, i8* %5489, align 1
  %5490 = and i32 %5483, 255
  %5491 = call i32 @llvm.ctpop.i32(i32 %5490)
  %5492 = trunc i32 %5491 to i8
  %5493 = and i8 %5492, 1
  %5494 = xor i8 %5493, 1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5494, i8* %5495, align 1
  %5496 = xor i32 %5482, %5480
  %5497 = xor i32 %5496, %5483
  %5498 = lshr i32 %5497, 4
  %5499 = trunc i32 %5498 to i8
  %5500 = and i8 %5499, 1
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5500, i8* %5501, align 1
  %5502 = icmp eq i32 %5483, 0
  %5503 = zext i1 %5502 to i8
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5503, i8* %5504, align 1
  %5505 = lshr i32 %5483, 31
  %5506 = trunc i32 %5505 to i8
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5506, i8* %5507, align 1
  %5508 = lshr i32 %5480, 31
  %5509 = lshr i32 %5482, 31
  %5510 = xor i32 %5505, %5508
  %5511 = xor i32 %5505, %5509
  %5512 = add i32 %5510, %5511
  %5513 = icmp eq i32 %5512, 2
  %5514 = zext i1 %5513 to i8
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5514, i8* %5515, align 1
  store %struct.Memory* %loadMem_4015c7, %struct.Memory** %MEMORY
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 33
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 1
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %5521 to i32*
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 15
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %5524 to i64*
  %5525 = load i64, i64* %RBP.i474
  %5526 = sub i64 %5525, 40
  %5527 = load i32, i32* %EAX.i473
  %5528 = zext i32 %5527 to i64
  %5529 = load i64, i64* %PC.i472
  %5530 = add i64 %5529, 3
  store i64 %5530, i64* %PC.i472
  %5531 = inttoptr i64 %5526 to i32*
  store i32 %5527, i32* %5531
  store %struct.Memory* %loadMem_4015ca, %struct.Memory** %MEMORY
  %loadMem_4015cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 5
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %5537 to i64*
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 15
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %5540 to i64*
  %5541 = load i64, i64* %RBP.i471
  %5542 = sub i64 %5541, 24
  %5543 = load i64, i64* %PC.i469
  %5544 = add i64 %5543, 4
  store i64 %5544, i64* %PC.i469
  %5545 = inttoptr i64 %5542 to i64*
  %5546 = load i64, i64* %5545
  store i64 %5546, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_4015cd, %struct.Memory** %MEMORY
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 33
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %5549 to i64*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 7
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 15
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %5555 to i64*
  %5556 = load i64, i64* %RBP.i468
  %5557 = sub i64 %5556, 32
  %5558 = load i64, i64* %PC.i466
  %5559 = add i64 %5558, 4
  store i64 %5559, i64* %PC.i466
  %5560 = inttoptr i64 %5557 to i32*
  %5561 = load i32, i32* %5560
  %5562 = sext i32 %5561 to i64
  store i64 %5562, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_4015d1, %struct.Memory** %MEMORY
  %loadMem_4015d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 33
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 5
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 7
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5572, i64 0, i64 0
  %YMM0.i465 = bitcast %union.VectorReg* %5573 to %"class.std::bitset"*
  %5574 = bitcast %"class.std::bitset"* %YMM0.i465 to i8*
  %5575 = load i64, i64* %RCX.i463
  %5576 = load i64, i64* %RDX.i464
  %5577 = mul i64 %5576, 8
  %5578 = add i64 %5577, %5575
  %5579 = load i64, i64* %PC.i462
  %5580 = add i64 %5579, 5
  store i64 %5580, i64* %PC.i462
  %5581 = inttoptr i64 %5578 to double*
  %5582 = load double, double* %5581
  %5583 = bitcast i8* %5574 to double*
  store double %5582, double* %5583, align 1
  %5584 = getelementptr inbounds i8, i8* %5574, i64 8
  %5585 = bitcast i8* %5584 to double*
  store double 0.000000e+00, double* %5585, align 1
  store %struct.Memory* %loadMem_4015d5, %struct.Memory** %MEMORY
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 33
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 15
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %5591 to i64*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5592, i64 0, i64 0
  %XMM0.i461 = bitcast %union.VectorReg* %5593 to %union.vec128_t*
  %5594 = load i64, i64* %RBP.i460
  %5595 = sub i64 %5594, 64
  %5596 = bitcast %union.vec128_t* %XMM0.i461 to i8*
  %5597 = load i64, i64* %PC.i459
  %5598 = add i64 %5597, 5
  store i64 %5598, i64* %PC.i459
  %5599 = bitcast i8* %5596 to double*
  %5600 = load double, double* %5599, align 1
  %5601 = inttoptr i64 %5595 to double*
  store double %5600, double* %5601
  store %struct.Memory* %loadMem_4015da, %struct.Memory** %MEMORY
  %loadMem_4015df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 33
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %5604 to i64*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 5
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %5607 to i64*
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 15
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %5610 to i64*
  %5611 = load i64, i64* %RBP.i458
  %5612 = sub i64 %5611, 24
  %5613 = load i64, i64* %PC.i456
  %5614 = add i64 %5613, 4
  store i64 %5614, i64* %PC.i456
  %5615 = inttoptr i64 %5612 to i64*
  %5616 = load i64, i64* %5615
  store i64 %5616, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_4015df, %struct.Memory** %MEMORY
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 33
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %5619 to i64*
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 1
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 15
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %RBP.i455
  %5627 = sub i64 %5626, 32
  %5628 = load i64, i64* %PC.i453
  %5629 = add i64 %5628, 3
  store i64 %5629, i64* %PC.i453
  %5630 = inttoptr i64 %5627 to i32*
  %5631 = load i32, i32* %5630
  %5632 = zext i32 %5631 to i64
  store i64 %5632, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4015e3, %struct.Memory** %MEMORY
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 1
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %5638 to i64*
  %5639 = load i64, i64* %RAX.i452
  %5640 = load i64, i64* %PC.i451
  %5641 = add i64 %5640, 3
  store i64 %5641, i64* %PC.i451
  %5642 = trunc i64 %5639 to i32
  %5643 = add i32 1, %5642
  %5644 = zext i32 %5643 to i64
  store i64 %5644, i64* %RAX.i452, align 8
  %5645 = icmp ult i32 %5643, %5642
  %5646 = icmp ult i32 %5643, 1
  %5647 = or i1 %5645, %5646
  %5648 = zext i1 %5647 to i8
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5648, i8* %5649, align 1
  %5650 = and i32 %5643, 255
  %5651 = call i32 @llvm.ctpop.i32(i32 %5650)
  %5652 = trunc i32 %5651 to i8
  %5653 = and i8 %5652, 1
  %5654 = xor i8 %5653, 1
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5654, i8* %5655, align 1
  %5656 = xor i64 1, %5639
  %5657 = trunc i64 %5656 to i32
  %5658 = xor i32 %5657, %5643
  %5659 = lshr i32 %5658, 4
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5661, i8* %5662, align 1
  %5663 = icmp eq i32 %5643, 0
  %5664 = zext i1 %5663 to i8
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5664, i8* %5665, align 1
  %5666 = lshr i32 %5643, 31
  %5667 = trunc i32 %5666 to i8
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5667, i8* %5668, align 1
  %5669 = lshr i32 %5642, 31
  %5670 = xor i32 %5666, %5669
  %5671 = add i32 %5670, %5666
  %5672 = icmp eq i32 %5671, 2
  %5673 = zext i1 %5672 to i8
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5673, i8* %5674, align 1
  store %struct.Memory* %loadMem_4015e6, %struct.Memory** %MEMORY
  %loadMem_4015e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 33
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %5677 to i64*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 1
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %5680 to i32*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 7
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %5683 to i64*
  %5684 = load i32, i32* %EAX.i449
  %5685 = zext i32 %5684 to i64
  %5686 = load i64, i64* %PC.i448
  %5687 = add i64 %5686, 3
  store i64 %5687, i64* %PC.i448
  %5688 = shl i64 %5685, 32
  %5689 = ashr exact i64 %5688, 32
  store i64 %5689, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_4015e9, %struct.Memory** %MEMORY
  %loadMem_4015ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 5
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 7
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %5698 to i64*
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5699, i64 0, i64 0
  %YMM0.i447 = bitcast %union.VectorReg* %5700 to %"class.std::bitset"*
  %5701 = bitcast %"class.std::bitset"* %YMM0.i447 to i8*
  %5702 = load i64, i64* %RCX.i445
  %5703 = load i64, i64* %RDX.i446
  %5704 = mul i64 %5703, 8
  %5705 = add i64 %5704, %5702
  %5706 = load i64, i64* %PC.i444
  %5707 = add i64 %5706, 5
  store i64 %5707, i64* %PC.i444
  %5708 = inttoptr i64 %5705 to double*
  %5709 = load double, double* %5708
  %5710 = bitcast i8* %5701 to double*
  store double %5709, double* %5710, align 1
  %5711 = getelementptr inbounds i8, i8* %5701, i64 8
  %5712 = bitcast i8* %5711 to double*
  store double 0.000000e+00, double* %5712, align 1
  store %struct.Memory* %loadMem_4015ec, %struct.Memory** %MEMORY
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 33
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %5715 to i64*
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 15
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5719, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %5720 to %union.vec128_t*
  %5721 = load i64, i64* %RBP.i442
  %5722 = sub i64 %5721, 72
  %5723 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %5724 = load i64, i64* %PC.i441
  %5725 = add i64 %5724, 5
  store i64 %5725, i64* %PC.i441
  %5726 = bitcast i8* %5723 to double*
  %5727 = load double, double* %5726, align 1
  %5728 = inttoptr i64 %5722 to double*
  store double %5727, double* %5728
  store %struct.Memory* %loadMem_4015f1, %struct.Memory** %MEMORY
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %5731 to i64*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 5
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 15
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %5737 to i64*
  %5738 = load i64, i64* %RBP.i440
  %5739 = sub i64 %5738, 24
  %5740 = load i64, i64* %PC.i438
  %5741 = add i64 %5740, 4
  store i64 %5741, i64* %PC.i438
  %5742 = inttoptr i64 %5739 to i64*
  %5743 = load i64, i64* %5742
  store i64 %5743, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_4015f6, %struct.Memory** %MEMORY
  %loadMem_4015fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 33
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %5746 to i64*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 7
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %RDX.i436 = bitcast %union.anon* %5749 to i64*
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5751 = getelementptr inbounds %struct.GPR, %struct.GPR* %5750, i32 0, i32 15
  %5752 = getelementptr inbounds %struct.Reg, %struct.Reg* %5751, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %5752 to i64*
  %5753 = load i64, i64* %RBP.i437
  %5754 = sub i64 %5753, 40
  %5755 = load i64, i64* %PC.i435
  %5756 = add i64 %5755, 4
  store i64 %5756, i64* %PC.i435
  %5757 = inttoptr i64 %5754 to i32*
  %5758 = load i32, i32* %5757
  %5759 = sext i32 %5758 to i64
  store i64 %5759, i64* %RDX.i436, align 8
  store %struct.Memory* %loadMem_4015fa, %struct.Memory** %MEMORY
  %loadMem_4015fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 5
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 7
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5769, i64 0, i64 0
  %YMM0.i434 = bitcast %union.VectorReg* %5770 to %"class.std::bitset"*
  %5771 = bitcast %"class.std::bitset"* %YMM0.i434 to i8*
  %5772 = load i64, i64* %RCX.i432
  %5773 = load i64, i64* %RDX.i433
  %5774 = mul i64 %5773, 8
  %5775 = add i64 %5774, %5772
  %5776 = load i64, i64* %PC.i431
  %5777 = add i64 %5776, 5
  store i64 %5777, i64* %PC.i431
  %5778 = inttoptr i64 %5775 to double*
  %5779 = load double, double* %5778
  %5780 = bitcast i8* %5771 to double*
  store double %5779, double* %5780, align 1
  %5781 = getelementptr inbounds i8, i8* %5771, i64 8
  %5782 = bitcast i8* %5781 to double*
  store double 0.000000e+00, double* %5782, align 1
  store %struct.Memory* %loadMem_4015fe, %struct.Memory** %MEMORY
  %loadMem_401603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 15
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5789, i64 0, i64 0
  %XMM0.i430 = bitcast %union.VectorReg* %5790 to %union.vec128_t*
  %5791 = load i64, i64* %RBP.i429
  %5792 = sub i64 %5791, 80
  %5793 = bitcast %union.vec128_t* %XMM0.i430 to i8*
  %5794 = load i64, i64* %PC.i428
  %5795 = add i64 %5794, 5
  store i64 %5795, i64* %PC.i428
  %5796 = bitcast i8* %5793 to double*
  %5797 = load double, double* %5796, align 1
  %5798 = inttoptr i64 %5792 to double*
  store double %5797, double* %5798
  store %struct.Memory* %loadMem_401603, %struct.Memory** %MEMORY
  %loadMem_401608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 5
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %5804 to i64*
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5806 = getelementptr inbounds %struct.GPR, %struct.GPR* %5805, i32 0, i32 15
  %5807 = getelementptr inbounds %struct.Reg, %struct.Reg* %5806, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %5807 to i64*
  %5808 = load i64, i64* %RBP.i427
  %5809 = sub i64 %5808, 24
  %5810 = load i64, i64* %PC.i425
  %5811 = add i64 %5810, 4
  store i64 %5811, i64* %PC.i425
  %5812 = inttoptr i64 %5809 to i64*
  %5813 = load i64, i64* %5812
  store i64 %5813, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_401608, %struct.Memory** %MEMORY
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %5816 to i64*
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 1
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 15
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %RBP.i424
  %5824 = sub i64 %5823, 40
  %5825 = load i64, i64* %PC.i422
  %5826 = add i64 %5825, 3
  store i64 %5826, i64* %PC.i422
  %5827 = inttoptr i64 %5824 to i32*
  %5828 = load i32, i32* %5827
  %5829 = zext i32 %5828 to i64
  store i64 %5829, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_40160c, %struct.Memory** %MEMORY
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 1
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %RAX.i421
  %5837 = load i64, i64* %PC.i420
  %5838 = add i64 %5837, 3
  store i64 %5838, i64* %PC.i420
  %5839 = trunc i64 %5836 to i32
  %5840 = add i32 1, %5839
  %5841 = zext i32 %5840 to i64
  store i64 %5841, i64* %RAX.i421, align 8
  %5842 = icmp ult i32 %5840, %5839
  %5843 = icmp ult i32 %5840, 1
  %5844 = or i1 %5842, %5843
  %5845 = zext i1 %5844 to i8
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5845, i8* %5846, align 1
  %5847 = and i32 %5840, 255
  %5848 = call i32 @llvm.ctpop.i32(i32 %5847)
  %5849 = trunc i32 %5848 to i8
  %5850 = and i8 %5849, 1
  %5851 = xor i8 %5850, 1
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5851, i8* %5852, align 1
  %5853 = xor i64 1, %5836
  %5854 = trunc i64 %5853 to i32
  %5855 = xor i32 %5854, %5840
  %5856 = lshr i32 %5855, 4
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5858, i8* %5859, align 1
  %5860 = icmp eq i32 %5840, 0
  %5861 = zext i1 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5861, i8* %5862, align 1
  %5863 = lshr i32 %5840, 31
  %5864 = trunc i32 %5863 to i8
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5864, i8* %5865, align 1
  %5866 = lshr i32 %5839, 31
  %5867 = xor i32 %5863, %5866
  %5868 = add i32 %5867, %5863
  %5869 = icmp eq i32 %5868, 2
  %5870 = zext i1 %5869 to i8
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5870, i8* %5871, align 1
  store %struct.Memory* %loadMem_40160f, %struct.Memory** %MEMORY
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 33
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5874 to i64*
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 1
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %5877 to i32*
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 7
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %RDX.i419 = bitcast %union.anon* %5880 to i64*
  %5881 = load i32, i32* %EAX.i418
  %5882 = zext i32 %5881 to i64
  %5883 = load i64, i64* %PC.i417
  %5884 = add i64 %5883, 3
  store i64 %5884, i64* %PC.i417
  %5885 = shl i64 %5882, 32
  %5886 = ashr exact i64 %5885, 32
  store i64 %5886, i64* %RDX.i419, align 8
  store %struct.Memory* %loadMem_401612, %struct.Memory** %MEMORY
  %loadMem_401615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 5
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %5892 to i64*
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 7
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %5895 to i64*
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5896, i64 0, i64 0
  %YMM0.i416 = bitcast %union.VectorReg* %5897 to %"class.std::bitset"*
  %5898 = bitcast %"class.std::bitset"* %YMM0.i416 to i8*
  %5899 = load i64, i64* %RCX.i414
  %5900 = load i64, i64* %RDX.i415
  %5901 = mul i64 %5900, 8
  %5902 = add i64 %5901, %5899
  %5903 = load i64, i64* %PC.i413
  %5904 = add i64 %5903, 5
  store i64 %5904, i64* %PC.i413
  %5905 = inttoptr i64 %5902 to double*
  %5906 = load double, double* %5905
  %5907 = bitcast i8* %5898 to double*
  store double %5906, double* %5907, align 1
  %5908 = getelementptr inbounds i8, i8* %5898, i64 8
  %5909 = bitcast i8* %5908 to double*
  store double 0.000000e+00, double* %5909, align 1
  store %struct.Memory* %loadMem_401615, %struct.Memory** %MEMORY
  %loadMem_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 33
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 15
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5916, i64 0, i64 0
  %XMM0.i412 = bitcast %union.VectorReg* %5917 to %union.vec128_t*
  %5918 = load i64, i64* %RBP.i411
  %5919 = sub i64 %5918, 88
  %5920 = bitcast %union.vec128_t* %XMM0.i412 to i8*
  %5921 = load i64, i64* %PC.i410
  %5922 = add i64 %5921, 5
  store i64 %5922, i64* %PC.i410
  %5923 = bitcast i8* %5920 to double*
  %5924 = load double, double* %5923, align 1
  %5925 = inttoptr i64 %5919 to double*
  store double %5924, double* %5925
  store %struct.Memory* %loadMem_40161a, %struct.Memory** %MEMORY
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 15
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5932, i64 0, i64 0
  %YMM0.i409 = bitcast %union.VectorReg* %5933 to %"class.std::bitset"*
  %5934 = bitcast %"class.std::bitset"* %YMM0.i409 to i8*
  %5935 = load i64, i64* %RBP.i408
  %5936 = sub i64 %5935, 80
  %5937 = load i64, i64* %PC.i407
  %5938 = add i64 %5937, 5
  store i64 %5938, i64* %PC.i407
  %5939 = inttoptr i64 %5936 to double*
  %5940 = load double, double* %5939
  %5941 = bitcast i8* %5934 to double*
  store double %5940, double* %5941, align 1
  %5942 = getelementptr inbounds i8, i8* %5934, i64 8
  %5943 = bitcast i8* %5942 to double*
  store double 0.000000e+00, double* %5943, align 1
  store %struct.Memory* %loadMem_40161f, %struct.Memory** %MEMORY
  %loadMem_401624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 33
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5946 to i64*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 5
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 15
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %5952 to i64*
  %5953 = load i64, i64* %RBP.i406
  %5954 = sub i64 %5953, 24
  %5955 = load i64, i64* %PC.i404
  %5956 = add i64 %5955, 4
  store i64 %5956, i64* %PC.i404
  %5957 = inttoptr i64 %5954 to i64*
  %5958 = load i64, i64* %5957
  store i64 %5958, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_401624, %struct.Memory** %MEMORY
  %loadMem_401628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 33
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 7
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 15
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %5967 to i64*
  %5968 = load i64, i64* %RBP.i403
  %5969 = sub i64 %5968, 32
  %5970 = load i64, i64* %PC.i401
  %5971 = add i64 %5970, 4
  store i64 %5971, i64* %PC.i401
  %5972 = inttoptr i64 %5969 to i32*
  %5973 = load i32, i32* %5972
  %5974 = sext i32 %5973 to i64
  store i64 %5974, i64* %RDX.i402, align 8
  store %struct.Memory* %loadMem_401628, %struct.Memory** %MEMORY
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 33
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 5
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %5980 to i64*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 7
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %RDX.i399 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5984, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %5985 to %union.vec128_t*
  %5986 = load i64, i64* %RCX.i398
  %5987 = load i64, i64* %RDX.i399
  %5988 = mul i64 %5987, 8
  %5989 = add i64 %5988, %5986
  %5990 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %5991 = load i64, i64* %PC.i397
  %5992 = add i64 %5991, 5
  store i64 %5992, i64* %PC.i397
  %5993 = bitcast i8* %5990 to double*
  %5994 = load double, double* %5993, align 1
  %5995 = inttoptr i64 %5989 to double*
  store double %5994, double* %5995
  store %struct.Memory* %loadMem_40162c, %struct.Memory** %MEMORY
  %loadMem_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 33
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %5998 to i64*
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 15
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %6001 to i64*
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6002, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %6003 to %"class.std::bitset"*
  %6004 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %6005 = load i64, i64* %RBP.i395
  %6006 = sub i64 %6005, 88
  %6007 = load i64, i64* %PC.i394
  %6008 = add i64 %6007, 5
  store i64 %6008, i64* %PC.i394
  %6009 = inttoptr i64 %6006 to double*
  %6010 = load double, double* %6009
  %6011 = bitcast i8* %6004 to double*
  store double %6010, double* %6011, align 1
  %6012 = getelementptr inbounds i8, i8* %6004, i64 8
  %6013 = bitcast i8* %6012 to double*
  store double 0.000000e+00, double* %6013, align 1
  store %struct.Memory* %loadMem_401631, %struct.Memory** %MEMORY
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6015 = getelementptr inbounds %struct.GPR, %struct.GPR* %6014, i32 0, i32 33
  %6016 = getelementptr inbounds %struct.Reg, %struct.Reg* %6015, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %6016 to i64*
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 5
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %6019 to i64*
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 15
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %6022 to i64*
  %6023 = load i64, i64* %RBP.i393
  %6024 = sub i64 %6023, 24
  %6025 = load i64, i64* %PC.i391
  %6026 = add i64 %6025, 4
  store i64 %6026, i64* %PC.i391
  %6027 = inttoptr i64 %6024 to i64*
  %6028 = load i64, i64* %6027
  store i64 %6028, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_401636, %struct.Memory** %MEMORY
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 33
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %6031 to i64*
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 1
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %6034 to i64*
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 15
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %6037 to i64*
  %6038 = load i64, i64* %RBP.i390
  %6039 = sub i64 %6038, 32
  %6040 = load i64, i64* %PC.i388
  %6041 = add i64 %6040, 3
  store i64 %6041, i64* %PC.i388
  %6042 = inttoptr i64 %6039 to i32*
  %6043 = load i32, i32* %6042
  %6044 = zext i32 %6043 to i64
  store i64 %6044, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_40163a, %struct.Memory** %MEMORY
  %loadMem_40163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 33
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 1
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %6050 to i64*
  %6051 = load i64, i64* %RAX.i387
  %6052 = load i64, i64* %PC.i386
  %6053 = add i64 %6052, 3
  store i64 %6053, i64* %PC.i386
  %6054 = trunc i64 %6051 to i32
  %6055 = add i32 1, %6054
  %6056 = zext i32 %6055 to i64
  store i64 %6056, i64* %RAX.i387, align 8
  %6057 = icmp ult i32 %6055, %6054
  %6058 = icmp ult i32 %6055, 1
  %6059 = or i1 %6057, %6058
  %6060 = zext i1 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6060, i8* %6061, align 1
  %6062 = and i32 %6055, 255
  %6063 = call i32 @llvm.ctpop.i32(i32 %6062)
  %6064 = trunc i32 %6063 to i8
  %6065 = and i8 %6064, 1
  %6066 = xor i8 %6065, 1
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6066, i8* %6067, align 1
  %6068 = xor i64 1, %6051
  %6069 = trunc i64 %6068 to i32
  %6070 = xor i32 %6069, %6055
  %6071 = lshr i32 %6070, 4
  %6072 = trunc i32 %6071 to i8
  %6073 = and i8 %6072, 1
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6073, i8* %6074, align 1
  %6075 = icmp eq i32 %6055, 0
  %6076 = zext i1 %6075 to i8
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6076, i8* %6077, align 1
  %6078 = lshr i32 %6055, 31
  %6079 = trunc i32 %6078 to i8
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6079, i8* %6080, align 1
  %6081 = lshr i32 %6054, 31
  %6082 = xor i32 %6078, %6081
  %6083 = add i32 %6082, %6078
  %6084 = icmp eq i32 %6083, 2
  %6085 = zext i1 %6084 to i8
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6085, i8* %6086, align 1
  store %struct.Memory* %loadMem_40163d, %struct.Memory** %MEMORY
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 33
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %6089 to i64*
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 1
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %EAX.i384 = bitcast %union.anon* %6092 to i32*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 7
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %RDX.i385 = bitcast %union.anon* %6095 to i64*
  %6096 = load i32, i32* %EAX.i384
  %6097 = zext i32 %6096 to i64
  %6098 = load i64, i64* %PC.i383
  %6099 = add i64 %6098, 3
  store i64 %6099, i64* %PC.i383
  %6100 = shl i64 %6097, 32
  %6101 = ashr exact i64 %6100, 32
  store i64 %6101, i64* %RDX.i385, align 8
  store %struct.Memory* %loadMem_401640, %struct.Memory** %MEMORY
  %loadMem_401643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 5
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 7
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %6110 to i64*
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6111, i64 0, i64 0
  %XMM0.i382 = bitcast %union.VectorReg* %6112 to %union.vec128_t*
  %6113 = load i64, i64* %RCX.i380
  %6114 = load i64, i64* %RDX.i381
  %6115 = mul i64 %6114, 8
  %6116 = add i64 %6115, %6113
  %6117 = bitcast %union.vec128_t* %XMM0.i382 to i8*
  %6118 = load i64, i64* %PC.i379
  %6119 = add i64 %6118, 5
  store i64 %6119, i64* %PC.i379
  %6120 = bitcast i8* %6117 to double*
  %6121 = load double, double* %6120, align 1
  %6122 = inttoptr i64 %6116 to double*
  store double %6121, double* %6122
  store %struct.Memory* %loadMem_401643, %struct.Memory** %MEMORY
  %loadMem_401648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 33
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 15
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6129, i64 0, i64 0
  %YMM0.i378 = bitcast %union.VectorReg* %6130 to %"class.std::bitset"*
  %6131 = bitcast %"class.std::bitset"* %YMM0.i378 to i8*
  %6132 = load i64, i64* %RBP.i377
  %6133 = sub i64 %6132, 64
  %6134 = load i64, i64* %PC.i376
  %6135 = add i64 %6134, 5
  store i64 %6135, i64* %PC.i376
  %6136 = inttoptr i64 %6133 to double*
  %6137 = load double, double* %6136
  %6138 = bitcast i8* %6131 to double*
  store double %6137, double* %6138, align 1
  %6139 = getelementptr inbounds i8, i8* %6131, i64 8
  %6140 = bitcast i8* %6139 to double*
  store double 0.000000e+00, double* %6140, align 1
  store %struct.Memory* %loadMem_401648, %struct.Memory** %MEMORY
  %loadMem_40164d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 5
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %6146 to i64*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 15
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %RBP.i375
  %6151 = sub i64 %6150, 24
  %6152 = load i64, i64* %PC.i373
  %6153 = add i64 %6152, 4
  store i64 %6153, i64* %PC.i373
  %6154 = inttoptr i64 %6151 to i64*
  %6155 = load i64, i64* %6154
  store i64 %6155, i64* %RCX.i374, align 8
  store %struct.Memory* %loadMem_40164d, %struct.Memory** %MEMORY
  %loadMem_401651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 33
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %6158 to i64*
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6160 = getelementptr inbounds %struct.GPR, %struct.GPR* %6159, i32 0, i32 7
  %6161 = getelementptr inbounds %struct.Reg, %struct.Reg* %6160, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %6161 to i64*
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 15
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %6164 to i64*
  %6165 = load i64, i64* %RBP.i372
  %6166 = sub i64 %6165, 40
  %6167 = load i64, i64* %PC.i370
  %6168 = add i64 %6167, 4
  store i64 %6168, i64* %PC.i370
  %6169 = inttoptr i64 %6166 to i32*
  %6170 = load i32, i32* %6169
  %6171 = sext i32 %6170 to i64
  store i64 %6171, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_401651, %struct.Memory** %MEMORY
  %loadMem_401655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 33
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %6174 to i64*
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6176 = getelementptr inbounds %struct.GPR, %struct.GPR* %6175, i32 0, i32 5
  %6177 = getelementptr inbounds %struct.Reg, %struct.Reg* %6176, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %6177 to i64*
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 7
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6181, i64 0, i64 0
  %XMM0.i369 = bitcast %union.VectorReg* %6182 to %union.vec128_t*
  %6183 = load i64, i64* %RCX.i367
  %6184 = load i64, i64* %RDX.i368
  %6185 = mul i64 %6184, 8
  %6186 = add i64 %6185, %6183
  %6187 = bitcast %union.vec128_t* %XMM0.i369 to i8*
  %6188 = load i64, i64* %PC.i366
  %6189 = add i64 %6188, 5
  store i64 %6189, i64* %PC.i366
  %6190 = bitcast i8* %6187 to double*
  %6191 = load double, double* %6190, align 1
  %6192 = inttoptr i64 %6186 to double*
  store double %6191, double* %6192
  store %struct.Memory* %loadMem_401655, %struct.Memory** %MEMORY
  %loadMem_40165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 33
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %6195 to i64*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 15
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %6198 to i64*
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6199, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %6200 to %"class.std::bitset"*
  %6201 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %6202 = load i64, i64* %RBP.i364
  %6203 = sub i64 %6202, 72
  %6204 = load i64, i64* %PC.i363
  %6205 = add i64 %6204, 5
  store i64 %6205, i64* %PC.i363
  %6206 = inttoptr i64 %6203 to double*
  %6207 = load double, double* %6206
  %6208 = bitcast i8* %6201 to double*
  store double %6207, double* %6208, align 1
  %6209 = getelementptr inbounds i8, i8* %6201, i64 8
  %6210 = bitcast i8* %6209 to double*
  store double 0.000000e+00, double* %6210, align 1
  store %struct.Memory* %loadMem_40165a, %struct.Memory** %MEMORY
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 33
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %6213 to i64*
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 5
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %6216 to i64*
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 15
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %6219 to i64*
  %6220 = load i64, i64* %RBP.i362
  %6221 = sub i64 %6220, 24
  %6222 = load i64, i64* %PC.i360
  %6223 = add i64 %6222, 4
  store i64 %6223, i64* %PC.i360
  %6224 = inttoptr i64 %6221 to i64*
  %6225 = load i64, i64* %6224
  store i64 %6225, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_40165f, %struct.Memory** %MEMORY
  %loadMem_401663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6227 = getelementptr inbounds %struct.GPR, %struct.GPR* %6226, i32 0, i32 33
  %6228 = getelementptr inbounds %struct.Reg, %struct.Reg* %6227, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %6228 to i64*
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 1
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %6231 to i64*
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 15
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %6234 to i64*
  %6235 = load i64, i64* %RBP.i359
  %6236 = sub i64 %6235, 40
  %6237 = load i64, i64* %PC.i357
  %6238 = add i64 %6237, 3
  store i64 %6238, i64* %PC.i357
  %6239 = inttoptr i64 %6236 to i32*
  %6240 = load i32, i32* %6239
  %6241 = zext i32 %6240 to i64
  store i64 %6241, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_401663, %struct.Memory** %MEMORY
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 33
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %6244 to i64*
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 1
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %6247 to i64*
  %6248 = load i64, i64* %RAX.i356
  %6249 = load i64, i64* %PC.i355
  %6250 = add i64 %6249, 3
  store i64 %6250, i64* %PC.i355
  %6251 = trunc i64 %6248 to i32
  %6252 = add i32 1, %6251
  %6253 = zext i32 %6252 to i64
  store i64 %6253, i64* %RAX.i356, align 8
  %6254 = icmp ult i32 %6252, %6251
  %6255 = icmp ult i32 %6252, 1
  %6256 = or i1 %6254, %6255
  %6257 = zext i1 %6256 to i8
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6257, i8* %6258, align 1
  %6259 = and i32 %6252, 255
  %6260 = call i32 @llvm.ctpop.i32(i32 %6259)
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = xor i8 %6262, 1
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6263, i8* %6264, align 1
  %6265 = xor i64 1, %6248
  %6266 = trunc i64 %6265 to i32
  %6267 = xor i32 %6266, %6252
  %6268 = lshr i32 %6267, 4
  %6269 = trunc i32 %6268 to i8
  %6270 = and i8 %6269, 1
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6270, i8* %6271, align 1
  %6272 = icmp eq i32 %6252, 0
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6273, i8* %6274, align 1
  %6275 = lshr i32 %6252, 31
  %6276 = trunc i32 %6275 to i8
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6276, i8* %6277, align 1
  %6278 = lshr i32 %6251, 31
  %6279 = xor i32 %6275, %6278
  %6280 = add i32 %6279, %6275
  %6281 = icmp eq i32 %6280, 2
  %6282 = zext i1 %6281 to i8
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6282, i8* %6283, align 1
  store %struct.Memory* %loadMem_401666, %struct.Memory** %MEMORY
  %loadMem_401669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 33
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 1
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %6289 to i32*
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 7
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %6292 to i64*
  %6293 = load i32, i32* %EAX.i353
  %6294 = zext i32 %6293 to i64
  %6295 = load i64, i64* %PC.i352
  %6296 = add i64 %6295, 3
  store i64 %6296, i64* %PC.i352
  %6297 = shl i64 %6294, 32
  %6298 = ashr exact i64 %6297, 32
  store i64 %6298, i64* %RDX.i354, align 8
  store %struct.Memory* %loadMem_401669, %struct.Memory** %MEMORY
  %loadMem_40166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 5
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %6304 to i64*
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 7
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6308, i64 0, i64 0
  %XMM0.i351 = bitcast %union.VectorReg* %6309 to %union.vec128_t*
  %6310 = load i64, i64* %RCX.i349
  %6311 = load i64, i64* %RDX.i350
  %6312 = mul i64 %6311, 8
  %6313 = add i64 %6312, %6310
  %6314 = bitcast %union.vec128_t* %XMM0.i351 to i8*
  %6315 = load i64, i64* %PC.i348
  %6316 = add i64 %6315, 5
  store i64 %6316, i64* %PC.i348
  %6317 = bitcast i8* %6314 to double*
  %6318 = load double, double* %6317, align 1
  %6319 = inttoptr i64 %6313 to double*
  store double %6318, double* %6319
  store %struct.Memory* %loadMem_40166c, %struct.Memory** %MEMORY
  %loadMem_401671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 33
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 1
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 15
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %6328 to i64*
  %6329 = load i64, i64* %RBP.i347
  %6330 = sub i64 %6329, 36
  %6331 = load i64, i64* %PC.i345
  %6332 = add i64 %6331, 3
  store i64 %6332, i64* %PC.i345
  %6333 = inttoptr i64 %6330 to i32*
  %6334 = load i32, i32* %6333
  %6335 = zext i32 %6334 to i64
  store i64 %6335, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_401671, %struct.Memory** %MEMORY
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 33
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %6338 to i64*
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6340 = getelementptr inbounds %struct.GPR, %struct.GPR* %6339, i32 0, i32 1
  %6341 = getelementptr inbounds %struct.Reg, %struct.Reg* %6340, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %6341 to i64*
  %6342 = load i64, i64* %RAX.i344
  %6343 = load i64, i64* %PC.i343
  %6344 = add i64 %6343, 3
  store i64 %6344, i64* %PC.i343
  %6345 = trunc i64 %6342 to i32
  %6346 = add i32 1, %6345
  %6347 = zext i32 %6346 to i64
  store i64 %6347, i64* %RAX.i344, align 8
  %6348 = icmp ult i32 %6346, %6345
  %6349 = icmp ult i32 %6346, 1
  %6350 = or i1 %6348, %6349
  %6351 = zext i1 %6350 to i8
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6351, i8* %6352, align 1
  %6353 = and i32 %6346, 255
  %6354 = call i32 @llvm.ctpop.i32(i32 %6353)
  %6355 = trunc i32 %6354 to i8
  %6356 = and i8 %6355, 1
  %6357 = xor i8 %6356, 1
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6357, i8* %6358, align 1
  %6359 = xor i64 1, %6342
  %6360 = trunc i64 %6359 to i32
  %6361 = xor i32 %6360, %6346
  %6362 = lshr i32 %6361, 4
  %6363 = trunc i32 %6362 to i8
  %6364 = and i8 %6363, 1
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6364, i8* %6365, align 1
  %6366 = icmp eq i32 %6346, 0
  %6367 = zext i1 %6366 to i8
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6367, i8* %6368, align 1
  %6369 = lshr i32 %6346, 31
  %6370 = trunc i32 %6369 to i8
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6370, i8* %6371, align 1
  %6372 = lshr i32 %6345, 31
  %6373 = xor i32 %6369, %6372
  %6374 = add i32 %6373, %6369
  %6375 = icmp eq i32 %6374, 2
  %6376 = zext i1 %6375 to i8
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6376, i8* %6377, align 1
  store %struct.Memory* %loadMem_401674, %struct.Memory** %MEMORY
  %loadMem_401677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 33
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %6380 to i64*
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 1
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %6383 to i32*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 15
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %6386 to i64*
  %6387 = load i64, i64* %RBP.i342
  %6388 = sub i64 %6387, 36
  %6389 = load i32, i32* %EAX.i341
  %6390 = zext i32 %6389 to i64
  %6391 = load i64, i64* %PC.i340
  %6392 = add i64 %6391, 3
  store i64 %6392, i64* %PC.i340
  %6393 = inttoptr i64 %6388 to i32*
  store i32 %6389, i32* %6393
  store %struct.Memory* %loadMem_401677, %struct.Memory** %MEMORY
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 33
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6396 to i64*
  %6397 = load i64, i64* %PC.i339
  %6398 = add i64 %6397, -1008
  %6399 = load i64, i64* %PC.i339
  %6400 = add i64 %6399, 5
  store i64 %6400, i64* %PC.i339
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6398, i64* %6401, align 8
  store %struct.Memory* %loadMem_40167a, %struct.Memory** %MEMORY
  br label %block_.L_40128a

block_.L_40167f:                                  ; preds = %block_.L_40128a
  %loadMem_40167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %6404 to i64*
  %6405 = load i64, i64* %PC.i338
  %6406 = add i64 %6405, 467
  %6407 = load i64, i64* %PC.i338
  %6408 = add i64 %6407, 5
  store i64 %6408, i64* %PC.i338
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6406, i64* %6409, align 8
  store %struct.Memory* %loadMem_40167f, %struct.Memory** %MEMORY
  br label %block_.L_401852

block_.L_401684:                                  ; preds = %block_.L_40126b
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 33
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 15
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %6415 to i64*
  %6416 = load i64, i64* %RBP.i337
  %6417 = sub i64 %6416, 36
  %6418 = load i64, i64* %PC.i336
  %6419 = add i64 %6418, 7
  store i64 %6419, i64* %PC.i336
  %6420 = inttoptr i64 %6417 to i32*
  store i32 1, i32* %6420
  store %struct.Memory* %loadMem_401684, %struct.Memory** %MEMORY
  br label %block_.L_40168b

block_.L_40168b:                                  ; preds = %block_.L_40183f, %block_.L_401684
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 33
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 1
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %6426 to i64*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 15
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %6429 to i64*
  %6430 = load i64, i64* %RBP.i335
  %6431 = sub i64 %6430, 36
  %6432 = load i64, i64* %PC.i333
  %6433 = add i64 %6432, 3
  store i64 %6433, i64* %PC.i333
  %6434 = inttoptr i64 %6431 to i32*
  %6435 = load i32, i32* %6434
  %6436 = zext i32 %6435 to i64
  store i64 %6436, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_40168b, %struct.Memory** %MEMORY
  %loadMem_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 1
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %EAX.i331 = bitcast %union.anon* %6442 to i32*
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6444 = getelementptr inbounds %struct.GPR, %struct.GPR* %6443, i32 0, i32 15
  %6445 = getelementptr inbounds %struct.Reg, %struct.Reg* %6444, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %6445 to i64*
  %6446 = load i32, i32* %EAX.i331
  %6447 = zext i32 %6446 to i64
  %6448 = load i64, i64* %RBP.i332
  %6449 = sub i64 %6448, 48
  %6450 = load i64, i64* %PC.i330
  %6451 = add i64 %6450, 3
  store i64 %6451, i64* %PC.i330
  %6452 = inttoptr i64 %6449 to i32*
  %6453 = load i32, i32* %6452
  %6454 = sub i32 %6446, %6453
  %6455 = icmp ult i32 %6446, %6453
  %6456 = zext i1 %6455 to i8
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6456, i8* %6457, align 1
  %6458 = and i32 %6454, 255
  %6459 = call i32 @llvm.ctpop.i32(i32 %6458)
  %6460 = trunc i32 %6459 to i8
  %6461 = and i8 %6460, 1
  %6462 = xor i8 %6461, 1
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6462, i8* %6463, align 1
  %6464 = xor i32 %6453, %6446
  %6465 = xor i32 %6464, %6454
  %6466 = lshr i32 %6465, 4
  %6467 = trunc i32 %6466 to i8
  %6468 = and i8 %6467, 1
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6468, i8* %6469, align 1
  %6470 = icmp eq i32 %6454, 0
  %6471 = zext i1 %6470 to i8
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6471, i8* %6472, align 1
  %6473 = lshr i32 %6454, 31
  %6474 = trunc i32 %6473 to i8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6474, i8* %6475, align 1
  %6476 = lshr i32 %6446, 31
  %6477 = lshr i32 %6453, 31
  %6478 = xor i32 %6477, %6476
  %6479 = xor i32 %6473, %6476
  %6480 = add i32 %6479, %6478
  %6481 = icmp eq i32 %6480, 2
  %6482 = zext i1 %6481 to i8
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6482, i8* %6483, align 1
  store %struct.Memory* %loadMem_40168e, %struct.Memory** %MEMORY
  %loadMem_401691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 33
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %6486 to i64*
  %6487 = load i64, i64* %PC.i329
  %6488 = add i64 %6487, 444
  %6489 = load i64, i64* %PC.i329
  %6490 = add i64 %6489, 6
  %6491 = load i64, i64* %PC.i329
  %6492 = add i64 %6491, 6
  store i64 %6492, i64* %PC.i329
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6494 = load i8, i8* %6493, align 1
  %6495 = icmp ne i8 %6494, 0
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6497 = load i8, i8* %6496, align 1
  %6498 = icmp ne i8 %6497, 0
  %6499 = xor i1 %6495, %6498
  %6500 = xor i1 %6499, true
  %6501 = zext i1 %6500 to i8
  store i8 %6501, i8* %BRANCH_TAKEN, align 1
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6503 = select i1 %6499, i64 %6490, i64 %6488
  store i64 %6503, i64* %6502, align 8
  store %struct.Memory* %loadMem_401691, %struct.Memory** %MEMORY
  %loadBr_401691 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401691 = icmp eq i8 %loadBr_401691, 1
  br i1 %cmpBr_401691, label %block_.L_40184d, label %block_401697

block_401697:                                     ; preds = %block_.L_40168b
  %loadMem_401697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 33
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %6506 to i64*
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 15
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %6509 to i64*
  %6510 = load i64, i64* %RBP.i328
  %6511 = sub i64 %6510, 28
  %6512 = load i64, i64* %PC.i327
  %6513 = add i64 %6512, 7
  store i64 %6513, i64* %PC.i327
  %6514 = inttoptr i64 %6511 to i32*
  store i32 0, i32* %6514
  store %struct.Memory* %loadMem_401697, %struct.Memory** %MEMORY
  br label %block_.L_40169e

block_.L_40169e:                                  ; preds = %block_4016aa, %block_401697
  %loadMem_40169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 33
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %6517 to i64*
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 1
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %6520 to i64*
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 15
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %6523 to i64*
  %6524 = load i64, i64* %RBP.i326
  %6525 = sub i64 %6524, 28
  %6526 = load i64, i64* %PC.i324
  %6527 = add i64 %6526, 3
  store i64 %6527, i64* %PC.i324
  %6528 = inttoptr i64 %6525 to i32*
  %6529 = load i32, i32* %6528
  %6530 = zext i32 %6529 to i64
  store i64 %6530, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_40169e, %struct.Memory** %MEMORY
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6532 = getelementptr inbounds %struct.GPR, %struct.GPR* %6531, i32 0, i32 33
  %6533 = getelementptr inbounds %struct.Reg, %struct.Reg* %6532, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6533 to i64*
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6535 = getelementptr inbounds %struct.GPR, %struct.GPR* %6534, i32 0, i32 1
  %6536 = getelementptr inbounds %struct.Reg, %struct.Reg* %6535, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %6536 to i32*
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 15
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %6539 to i64*
  %6540 = load i32, i32* %EAX.i322
  %6541 = zext i32 %6540 to i64
  %6542 = load i64, i64* %RBP.i323
  %6543 = sub i64 %6542, 36
  %6544 = load i64, i64* %PC.i321
  %6545 = add i64 %6544, 3
  store i64 %6545, i64* %PC.i321
  %6546 = inttoptr i64 %6543 to i32*
  %6547 = load i32, i32* %6546
  %6548 = sub i32 %6540, %6547
  %6549 = icmp ult i32 %6540, %6547
  %6550 = zext i1 %6549 to i8
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6550, i8* %6551, align 1
  %6552 = and i32 %6548, 255
  %6553 = call i32 @llvm.ctpop.i32(i32 %6552)
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  %6556 = xor i8 %6555, 1
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6556, i8* %6557, align 1
  %6558 = xor i32 %6547, %6540
  %6559 = xor i32 %6558, %6548
  %6560 = lshr i32 %6559, 4
  %6561 = trunc i32 %6560 to i8
  %6562 = and i8 %6561, 1
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6562, i8* %6563, align 1
  %6564 = icmp eq i32 %6548, 0
  %6565 = zext i1 %6564 to i8
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6565, i8* %6566, align 1
  %6567 = lshr i32 %6548, 31
  %6568 = trunc i32 %6567 to i8
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6568, i8* %6569, align 1
  %6570 = lshr i32 %6540, 31
  %6571 = lshr i32 %6547, 31
  %6572 = xor i32 %6571, %6570
  %6573 = xor i32 %6567, %6570
  %6574 = add i32 %6573, %6572
  %6575 = icmp eq i32 %6574, 2
  %6576 = zext i1 %6575 to i8
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6576, i8* %6577, align 1
  store %struct.Memory* %loadMem_4016a1, %struct.Memory** %MEMORY
  %loadMem_4016a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6579 = getelementptr inbounds %struct.GPR, %struct.GPR* %6578, i32 0, i32 33
  %6580 = getelementptr inbounds %struct.Reg, %struct.Reg* %6579, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6580 to i64*
  %6581 = load i64, i64* %PC.i320
  %6582 = add i64 %6581, 406
  %6583 = load i64, i64* %PC.i320
  %6584 = add i64 %6583, 6
  %6585 = load i64, i64* %PC.i320
  %6586 = add i64 %6585, 6
  store i64 %6586, i64* %PC.i320
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6588 = load i8, i8* %6587, align 1
  %6589 = icmp ne i8 %6588, 0
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6591 = load i8, i8* %6590, align 1
  %6592 = icmp ne i8 %6591, 0
  %6593 = xor i1 %6589, %6592
  %6594 = xor i1 %6593, true
  %6595 = zext i1 %6594 to i8
  store i8 %6595, i8* %BRANCH_TAKEN, align 1
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6597 = select i1 %6593, i64 %6584, i64 %6582
  store i64 %6597, i64* %6596, align 8
  store %struct.Memory* %loadMem_4016a4, %struct.Memory** %MEMORY
  %loadBr_4016a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016a4 = icmp eq i8 %loadBr_4016a4, 1
  br i1 %cmpBr_4016a4, label %block_.L_40183a, label %block_4016aa

block_4016aa:                                     ; preds = %block_.L_40169e
  %loadMem_4016aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 33
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 1
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 15
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %6606 to i64*
  %6607 = load i64, i64* %RBP.i319
  %6608 = sub i64 %6607, 28
  %6609 = load i64, i64* %PC.i317
  %6610 = add i64 %6609, 3
  store i64 %6610, i64* %PC.i317
  %6611 = inttoptr i64 %6608 to i32*
  %6612 = load i32, i32* %6611
  %6613 = zext i32 %6612 to i64
  store i64 %6613, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_4016aa, %struct.Memory** %MEMORY
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6615 = getelementptr inbounds %struct.GPR, %struct.GPR* %6614, i32 0, i32 33
  %6616 = getelementptr inbounds %struct.Reg, %struct.Reg* %6615, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6616 to i64*
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 1
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %6619 to i64*
  %6620 = load i64, i64* %RAX.i316
  %6621 = load i64, i64* %PC.i315
  %6622 = add i64 %6621, 2
  store i64 %6622, i64* %PC.i315
  %6623 = trunc i64 %6620 to i32
  %6624 = shl i32 %6623, 1
  %6625 = icmp slt i32 %6623, 0
  %6626 = icmp slt i32 %6624, 0
  %6627 = xor i1 %6625, %6626
  %6628 = zext i32 %6624 to i64
  store i64 %6628, i64* %RAX.i316, align 8
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6630 = zext i1 %6625 to i8
  store i8 %6630, i8* %6629, align 1
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6632 = and i32 %6624, 254
  %6633 = call i32 @llvm.ctpop.i32(i32 %6632)
  %6634 = trunc i32 %6633 to i8
  %6635 = and i8 %6634, 1
  %6636 = xor i8 %6635, 1
  store i8 %6636, i8* %6631, align 1
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6637, align 1
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6639 = icmp eq i32 %6624, 0
  %6640 = zext i1 %6639 to i8
  store i8 %6640, i8* %6638, align 1
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6642 = lshr i32 %6624, 31
  %6643 = trunc i32 %6642 to i8
  store i8 %6643, i8* %6641, align 1
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6645 = zext i1 %6627 to i8
  store i8 %6645, i8* %6644, align 1
  store %struct.Memory* %loadMem_4016ad, %struct.Memory** %MEMORY
  %loadMem_4016b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 33
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %6648 to i64*
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6650 = getelementptr inbounds %struct.GPR, %struct.GPR* %6649, i32 0, i32 5
  %6651 = getelementptr inbounds %struct.Reg, %struct.Reg* %6650, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %6651 to i64*
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 15
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %6654 to i64*
  %6655 = load i64, i64* %RBP.i314
  %6656 = sub i64 %6655, 16
  %6657 = load i64, i64* %PC.i312
  %6658 = add i64 %6657, 4
  store i64 %6658, i64* %PC.i312
  %6659 = inttoptr i64 %6656 to i64*
  %6660 = load i64, i64* %6659
  store i64 %6660, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_4016b0, %struct.Memory** %MEMORY
  %loadMem_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 7
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %6666 to i64*
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 15
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %6669 to i64*
  %6670 = load i64, i64* %RBP.i311
  %6671 = sub i64 %6670, 36
  %6672 = load i64, i64* %PC.i309
  %6673 = add i64 %6672, 4
  store i64 %6673, i64* %PC.i309
  %6674 = inttoptr i64 %6671 to i32*
  %6675 = load i32, i32* %6674
  %6676 = sext i32 %6675 to i64
  store i64 %6676, i64* %RDX.i310, align 8
  store %struct.Memory* %loadMem_4016b4, %struct.Memory** %MEMORY
  %loadMem_4016b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 33
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %6679 to i64*
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 1
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %6682 to i64*
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 5
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %6685 to i64*
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 7
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %6688 to i64*
  %6689 = load i64, i64* %RAX.i306
  %6690 = load i64, i64* %RCX.i307
  %6691 = load i64, i64* %RDX.i308
  %6692 = mul i64 %6691, 4
  %6693 = add i64 %6692, %6690
  %6694 = load i64, i64* %PC.i305
  %6695 = add i64 %6694, 3
  store i64 %6695, i64* %PC.i305
  %6696 = trunc i64 %6689 to i32
  %6697 = inttoptr i64 %6693 to i32*
  %6698 = load i32, i32* %6697
  %6699 = add i32 %6698, %6696
  %6700 = zext i32 %6699 to i64
  store i64 %6700, i64* %RAX.i306, align 8
  %6701 = icmp ult i32 %6699, %6696
  %6702 = icmp ult i32 %6699, %6698
  %6703 = or i1 %6701, %6702
  %6704 = zext i1 %6703 to i8
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6704, i8* %6705, align 1
  %6706 = and i32 %6699, 255
  %6707 = call i32 @llvm.ctpop.i32(i32 %6706)
  %6708 = trunc i32 %6707 to i8
  %6709 = and i8 %6708, 1
  %6710 = xor i8 %6709, 1
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6710, i8* %6711, align 1
  %6712 = xor i32 %6698, %6696
  %6713 = xor i32 %6712, %6699
  %6714 = lshr i32 %6713, 4
  %6715 = trunc i32 %6714 to i8
  %6716 = and i8 %6715, 1
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6716, i8* %6717, align 1
  %6718 = icmp eq i32 %6699, 0
  %6719 = zext i1 %6718 to i8
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6719, i8* %6720, align 1
  %6721 = lshr i32 %6699, 31
  %6722 = trunc i32 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6722, i8* %6723, align 1
  %6724 = lshr i32 %6696, 31
  %6725 = lshr i32 %6698, 31
  %6726 = xor i32 %6721, %6724
  %6727 = xor i32 %6721, %6725
  %6728 = add i32 %6726, %6727
  %6729 = icmp eq i32 %6728, 2
  %6730 = zext i1 %6729 to i8
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6730, i8* %6731, align 1
  store %struct.Memory* %loadMem_4016b8, %struct.Memory** %MEMORY
  %loadMem_4016bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 1
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %6737 to i32*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 15
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %6740 to i64*
  %6741 = load i64, i64* %RBP.i304
  %6742 = sub i64 %6741, 32
  %6743 = load i32, i32* %EAX.i303
  %6744 = zext i32 %6743 to i64
  %6745 = load i64, i64* %PC.i302
  %6746 = add i64 %6745, 3
  store i64 %6746, i64* %PC.i302
  %6747 = inttoptr i64 %6742 to i32*
  store i32 %6743, i32* %6747
  store %struct.Memory* %loadMem_4016bb, %struct.Memory** %MEMORY
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 1
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 15
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RBP.i301
  %6758 = sub i64 %6757, 36
  %6759 = load i64, i64* %PC.i299
  %6760 = add i64 %6759, 3
  store i64 %6760, i64* %PC.i299
  %6761 = inttoptr i64 %6758 to i32*
  %6762 = load i32, i32* %6761
  %6763 = zext i32 %6762 to i64
  store i64 %6763, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_4016be, %struct.Memory** %MEMORY
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 1
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %RAX.i298
  %6771 = load i64, i64* %PC.i297
  %6772 = add i64 %6771, 2
  store i64 %6772, i64* %PC.i297
  %6773 = trunc i64 %6770 to i32
  %6774 = shl i32 %6773, 1
  %6775 = icmp slt i32 %6773, 0
  %6776 = icmp slt i32 %6774, 0
  %6777 = xor i1 %6775, %6776
  %6778 = zext i32 %6774 to i64
  store i64 %6778, i64* %RAX.i298, align 8
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6780 = zext i1 %6775 to i8
  store i8 %6780, i8* %6779, align 1
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6782 = and i32 %6774, 254
  %6783 = call i32 @llvm.ctpop.i32(i32 %6782)
  %6784 = trunc i32 %6783 to i8
  %6785 = and i8 %6784, 1
  %6786 = xor i8 %6785, 1
  store i8 %6786, i8* %6781, align 1
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6787, align 1
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6789 = icmp eq i32 %6774, 0
  %6790 = zext i1 %6789 to i8
  store i8 %6790, i8* %6788, align 1
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6792 = lshr i32 %6774, 31
  %6793 = trunc i32 %6792 to i8
  store i8 %6793, i8* %6791, align 1
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6795 = zext i1 %6777 to i8
  store i8 %6795, i8* %6794, align 1
  store %struct.Memory* %loadMem_4016c1, %struct.Memory** %MEMORY
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 33
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 5
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %6801 to i64*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 15
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %RBP.i296
  %6806 = sub i64 %6805, 16
  %6807 = load i64, i64* %PC.i294
  %6808 = add i64 %6807, 4
  store i64 %6808, i64* %PC.i294
  %6809 = inttoptr i64 %6806 to i64*
  %6810 = load i64, i64* %6809
  store i64 %6810, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4016c4, %struct.Memory** %MEMORY
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 33
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6813 to i64*
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 7
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 15
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %6819 to i64*
  %6820 = load i64, i64* %RBP.i293
  %6821 = sub i64 %6820, 28
  %6822 = load i64, i64* %PC.i291
  %6823 = add i64 %6822, 4
  store i64 %6823, i64* %PC.i291
  %6824 = inttoptr i64 %6821 to i32*
  %6825 = load i32, i32* %6824
  %6826 = sext i32 %6825 to i64
  store i64 %6826, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_4016c8, %struct.Memory** %MEMORY
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 33
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %6829 to i64*
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 1
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 5
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %6835 to i64*
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6837 = getelementptr inbounds %struct.GPR, %struct.GPR* %6836, i32 0, i32 7
  %6838 = getelementptr inbounds %struct.Reg, %struct.Reg* %6837, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %6838 to i64*
  %6839 = load i64, i64* %RAX.i288
  %6840 = load i64, i64* %RCX.i289
  %6841 = load i64, i64* %RDX.i290
  %6842 = mul i64 %6841, 4
  %6843 = add i64 %6842, %6840
  %6844 = load i64, i64* %PC.i287
  %6845 = add i64 %6844, 3
  store i64 %6845, i64* %PC.i287
  %6846 = trunc i64 %6839 to i32
  %6847 = inttoptr i64 %6843 to i32*
  %6848 = load i32, i32* %6847
  %6849 = add i32 %6848, %6846
  %6850 = zext i32 %6849 to i64
  store i64 %6850, i64* %RAX.i288, align 8
  %6851 = icmp ult i32 %6849, %6846
  %6852 = icmp ult i32 %6849, %6848
  %6853 = or i1 %6851, %6852
  %6854 = zext i1 %6853 to i8
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6854, i8* %6855, align 1
  %6856 = and i32 %6849, 255
  %6857 = call i32 @llvm.ctpop.i32(i32 %6856)
  %6858 = trunc i32 %6857 to i8
  %6859 = and i8 %6858, 1
  %6860 = xor i8 %6859, 1
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6860, i8* %6861, align 1
  %6862 = xor i32 %6848, %6846
  %6863 = xor i32 %6862, %6849
  %6864 = lshr i32 %6863, 4
  %6865 = trunc i32 %6864 to i8
  %6866 = and i8 %6865, 1
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6866, i8* %6867, align 1
  %6868 = icmp eq i32 %6849, 0
  %6869 = zext i1 %6868 to i8
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6869, i8* %6870, align 1
  %6871 = lshr i32 %6849, 31
  %6872 = trunc i32 %6871 to i8
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6872, i8* %6873, align 1
  %6874 = lshr i32 %6846, 31
  %6875 = lshr i32 %6848, 31
  %6876 = xor i32 %6871, %6874
  %6877 = xor i32 %6871, %6875
  %6878 = add i32 %6876, %6877
  %6879 = icmp eq i32 %6878, 2
  %6880 = zext i1 %6879 to i8
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6880, i8* %6881, align 1
  store %struct.Memory* %loadMem_4016cc, %struct.Memory** %MEMORY
  %loadMem_4016cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 33
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6884 to i64*
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 1
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %6887 to i32*
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 15
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %6890 to i64*
  %6891 = load i64, i64* %RBP.i286
  %6892 = sub i64 %6891, 40
  %6893 = load i32, i32* %EAX.i285
  %6894 = zext i32 %6893 to i64
  %6895 = load i64, i64* %PC.i284
  %6896 = add i64 %6895, 3
  store i64 %6896, i64* %PC.i284
  %6897 = inttoptr i64 %6892 to i32*
  store i32 %6893, i32* %6897
  store %struct.Memory* %loadMem_4016cf, %struct.Memory** %MEMORY
  %loadMem_4016d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 33
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6900 to i64*
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 5
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %6903 to i64*
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 15
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %6906 to i64*
  %6907 = load i64, i64* %RBP.i283
  %6908 = sub i64 %6907, 24
  %6909 = load i64, i64* %PC.i281
  %6910 = add i64 %6909, 4
  store i64 %6910, i64* %PC.i281
  %6911 = inttoptr i64 %6908 to i64*
  %6912 = load i64, i64* %6911
  store i64 %6912, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_4016d2, %struct.Memory** %MEMORY
  %loadMem_4016d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 33
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6915 to i64*
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 7
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %6918 to i64*
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6920 = getelementptr inbounds %struct.GPR, %struct.GPR* %6919, i32 0, i32 15
  %6921 = getelementptr inbounds %struct.Reg, %struct.Reg* %6920, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6921 to i64*
  %6922 = load i64, i64* %RBP.i280
  %6923 = sub i64 %6922, 32
  %6924 = load i64, i64* %PC.i278
  %6925 = add i64 %6924, 4
  store i64 %6925, i64* %PC.i278
  %6926 = inttoptr i64 %6923 to i32*
  %6927 = load i32, i32* %6926
  %6928 = sext i32 %6927 to i64
  store i64 %6928, i64* %RDX.i279, align 8
  store %struct.Memory* %loadMem_4016d6, %struct.Memory** %MEMORY
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 33
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6931 to i64*
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 5
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 7
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6938, i64 0, i64 0
  %YMM0.i277 = bitcast %union.VectorReg* %6939 to %"class.std::bitset"*
  %6940 = bitcast %"class.std::bitset"* %YMM0.i277 to i8*
  %6941 = load i64, i64* %RCX.i275
  %6942 = load i64, i64* %RDX.i276
  %6943 = mul i64 %6942, 8
  %6944 = add i64 %6943, %6941
  %6945 = load i64, i64* %PC.i274
  %6946 = add i64 %6945, 5
  store i64 %6946, i64* %PC.i274
  %6947 = inttoptr i64 %6944 to double*
  %6948 = load double, double* %6947
  %6949 = bitcast i8* %6940 to double*
  store double %6948, double* %6949, align 1
  %6950 = getelementptr inbounds i8, i8* %6940, i64 8
  %6951 = bitcast i8* %6950 to double*
  store double 0.000000e+00, double* %6951, align 1
  store %struct.Memory* %loadMem_4016da, %struct.Memory** %MEMORY
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 33
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6954 to i64*
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6956 = getelementptr inbounds %struct.GPR, %struct.GPR* %6955, i32 0, i32 15
  %6957 = getelementptr inbounds %struct.Reg, %struct.Reg* %6956, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %6957 to i64*
  %6958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6958, i64 0, i64 0
  %XMM0.i273 = bitcast %union.VectorReg* %6959 to %union.vec128_t*
  %6960 = load i64, i64* %RBP.i272
  %6961 = sub i64 %6960, 64
  %6962 = bitcast %union.vec128_t* %XMM0.i273 to i8*
  %6963 = load i64, i64* %PC.i271
  %6964 = add i64 %6963, 5
  store i64 %6964, i64* %PC.i271
  %6965 = bitcast i8* %6962 to double*
  %6966 = load double, double* %6965, align 1
  %6967 = inttoptr i64 %6961 to double*
  store double %6966, double* %6967
  store %struct.Memory* %loadMem_4016df, %struct.Memory** %MEMORY
  %loadMem_4016e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 33
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6970 to i64*
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6972 = getelementptr inbounds %struct.GPR, %struct.GPR* %6971, i32 0, i32 5
  %6973 = getelementptr inbounds %struct.Reg, %struct.Reg* %6972, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %6973 to i64*
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 15
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %6976 to i64*
  %6977 = load i64, i64* %RBP.i270
  %6978 = sub i64 %6977, 24
  %6979 = load i64, i64* %PC.i268
  %6980 = add i64 %6979, 4
  store i64 %6980, i64* %PC.i268
  %6981 = inttoptr i64 %6978 to i64*
  %6982 = load i64, i64* %6981
  store i64 %6982, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_4016e4, %struct.Memory** %MEMORY
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 33
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 1
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %6988 to i64*
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 15
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %6991 to i64*
  %6992 = load i64, i64* %RBP.i267
  %6993 = sub i64 %6992, 32
  %6994 = load i64, i64* %PC.i265
  %6995 = add i64 %6994, 3
  store i64 %6995, i64* %PC.i265
  %6996 = inttoptr i64 %6993 to i32*
  %6997 = load i32, i32* %6996
  %6998 = zext i32 %6997 to i64
  store i64 %6998, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_4016e8, %struct.Memory** %MEMORY
  %loadMem_4016eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 33
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 1
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %7004 to i64*
  %7005 = load i64, i64* %RAX.i264
  %7006 = load i64, i64* %PC.i263
  %7007 = add i64 %7006, 3
  store i64 %7007, i64* %PC.i263
  %7008 = trunc i64 %7005 to i32
  %7009 = add i32 1, %7008
  %7010 = zext i32 %7009 to i64
  store i64 %7010, i64* %RAX.i264, align 8
  %7011 = icmp ult i32 %7009, %7008
  %7012 = icmp ult i32 %7009, 1
  %7013 = or i1 %7011, %7012
  %7014 = zext i1 %7013 to i8
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7014, i8* %7015, align 1
  %7016 = and i32 %7009, 255
  %7017 = call i32 @llvm.ctpop.i32(i32 %7016)
  %7018 = trunc i32 %7017 to i8
  %7019 = and i8 %7018, 1
  %7020 = xor i8 %7019, 1
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7020, i8* %7021, align 1
  %7022 = xor i64 1, %7005
  %7023 = trunc i64 %7022 to i32
  %7024 = xor i32 %7023, %7009
  %7025 = lshr i32 %7024, 4
  %7026 = trunc i32 %7025 to i8
  %7027 = and i8 %7026, 1
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7027, i8* %7028, align 1
  %7029 = icmp eq i32 %7009, 0
  %7030 = zext i1 %7029 to i8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7030, i8* %7031, align 1
  %7032 = lshr i32 %7009, 31
  %7033 = trunc i32 %7032 to i8
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7033, i8* %7034, align 1
  %7035 = lshr i32 %7008, 31
  %7036 = xor i32 %7032, %7035
  %7037 = add i32 %7036, %7032
  %7038 = icmp eq i32 %7037, 2
  %7039 = zext i1 %7038 to i8
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7039, i8* %7040, align 1
  store %struct.Memory* %loadMem_4016eb, %struct.Memory** %MEMORY
  %loadMem_4016ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 1
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %7046 to i32*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 7
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %7049 to i64*
  %7050 = load i32, i32* %EAX.i261
  %7051 = zext i32 %7050 to i64
  %7052 = load i64, i64* %PC.i260
  %7053 = add i64 %7052, 3
  store i64 %7053, i64* %PC.i260
  %7054 = shl i64 %7051, 32
  %7055 = ashr exact i64 %7054, 32
  store i64 %7055, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_4016ee, %struct.Memory** %MEMORY
  %loadMem_4016f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7057 = getelementptr inbounds %struct.GPR, %struct.GPR* %7056, i32 0, i32 33
  %7058 = getelementptr inbounds %struct.Reg, %struct.Reg* %7057, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %7058 to i64*
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 5
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %7061 to i64*
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7063 = getelementptr inbounds %struct.GPR, %struct.GPR* %7062, i32 0, i32 7
  %7064 = getelementptr inbounds %struct.Reg, %struct.Reg* %7063, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %7064 to i64*
  %7065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7065, i64 0, i64 0
  %YMM0.i259 = bitcast %union.VectorReg* %7066 to %"class.std::bitset"*
  %7067 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %7068 = load i64, i64* %RCX.i257
  %7069 = load i64, i64* %RDX.i258
  %7070 = mul i64 %7069, 8
  %7071 = add i64 %7070, %7068
  %7072 = load i64, i64* %PC.i256
  %7073 = add i64 %7072, 5
  store i64 %7073, i64* %PC.i256
  %7074 = inttoptr i64 %7071 to double*
  %7075 = load double, double* %7074
  %7076 = bitcast i8* %7067 to double*
  store double %7075, double* %7076, align 1
  %7077 = getelementptr inbounds i8, i8* %7067, i64 8
  %7078 = bitcast i8* %7077 to double*
  store double 0.000000e+00, double* %7078, align 1
  store %struct.Memory* %loadMem_4016f1, %struct.Memory** %MEMORY
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 33
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %7081 to i64*
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 15
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %7084 to i64*
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7085, i64 0, i64 0
  %XMM0.i255 = bitcast %union.VectorReg* %7086 to %union.vec128_t*
  %7087 = load i64, i64* %RBP.i254
  %7088 = sub i64 %7087, 72
  %7089 = bitcast %union.vec128_t* %XMM0.i255 to i8*
  %7090 = load i64, i64* %PC.i253
  %7091 = add i64 %7090, 5
  store i64 %7091, i64* %PC.i253
  %7092 = bitcast i8* %7089 to double*
  %7093 = load double, double* %7092, align 1
  %7094 = inttoptr i64 %7088 to double*
  store double %7093, double* %7094
  store %struct.Memory* %loadMem_4016f6, %struct.Memory** %MEMORY
  %loadMem_4016fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 33
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %7097 to i64*
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7099 = getelementptr inbounds %struct.GPR, %struct.GPR* %7098, i32 0, i32 5
  %7100 = getelementptr inbounds %struct.Reg, %struct.Reg* %7099, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %7100 to i64*
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 15
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %7103 to i64*
  %7104 = load i64, i64* %RBP.i252
  %7105 = sub i64 %7104, 24
  %7106 = load i64, i64* %PC.i250
  %7107 = add i64 %7106, 4
  store i64 %7107, i64* %PC.i250
  %7108 = inttoptr i64 %7105 to i64*
  %7109 = load i64, i64* %7108
  store i64 %7109, i64* %RCX.i251, align 8
  store %struct.Memory* %loadMem_4016fb, %struct.Memory** %MEMORY
  %loadMem_4016ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 33
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %7112 to i64*
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 7
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %7115 to i64*
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7117 = getelementptr inbounds %struct.GPR, %struct.GPR* %7116, i32 0, i32 15
  %7118 = getelementptr inbounds %struct.Reg, %struct.Reg* %7117, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %7118 to i64*
  %7119 = load i64, i64* %RBP.i249
  %7120 = sub i64 %7119, 40
  %7121 = load i64, i64* %PC.i247
  %7122 = add i64 %7121, 4
  store i64 %7122, i64* %PC.i247
  %7123 = inttoptr i64 %7120 to i32*
  %7124 = load i32, i32* %7123
  %7125 = sext i32 %7124 to i64
  store i64 %7125, i64* %RDX.i248, align 8
  store %struct.Memory* %loadMem_4016ff, %struct.Memory** %MEMORY
  %loadMem_401703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 33
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %7128 to i64*
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7130 = getelementptr inbounds %struct.GPR, %struct.GPR* %7129, i32 0, i32 5
  %7131 = getelementptr inbounds %struct.Reg, %struct.Reg* %7130, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %7131 to i64*
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 7
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7135, i64 0, i64 0
  %YMM0.i246 = bitcast %union.VectorReg* %7136 to %"class.std::bitset"*
  %7137 = bitcast %"class.std::bitset"* %YMM0.i246 to i8*
  %7138 = load i64, i64* %RCX.i244
  %7139 = load i64, i64* %RDX.i245
  %7140 = mul i64 %7139, 8
  %7141 = add i64 %7140, %7138
  %7142 = load i64, i64* %PC.i243
  %7143 = add i64 %7142, 5
  store i64 %7143, i64* %PC.i243
  %7144 = inttoptr i64 %7141 to double*
  %7145 = load double, double* %7144
  %7146 = bitcast i8* %7137 to double*
  store double %7145, double* %7146, align 1
  %7147 = getelementptr inbounds i8, i8* %7137, i64 8
  %7148 = bitcast i8* %7147 to double*
  store double 0.000000e+00, double* %7148, align 1
  store %struct.Memory* %loadMem_401703, %struct.Memory** %MEMORY
  %loadMem_401708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 33
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 15
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %7154 to i64*
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7155, i64 0, i64 0
  %XMM0.i242 = bitcast %union.VectorReg* %7156 to %union.vec128_t*
  %7157 = load i64, i64* %RBP.i241
  %7158 = sub i64 %7157, 80
  %7159 = bitcast %union.vec128_t* %XMM0.i242 to i8*
  %7160 = load i64, i64* %PC.i240
  %7161 = add i64 %7160, 5
  store i64 %7161, i64* %PC.i240
  %7162 = bitcast i8* %7159 to double*
  %7163 = load double, double* %7162, align 1
  %7164 = inttoptr i64 %7158 to double*
  store double %7163, double* %7164
  store %struct.Memory* %loadMem_401708, %struct.Memory** %MEMORY
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 33
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %7167 to i64*
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 5
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 15
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %7173 to i64*
  %7174 = load i64, i64* %RBP.i239
  %7175 = sub i64 %7174, 24
  %7176 = load i64, i64* %PC.i237
  %7177 = add i64 %7176, 4
  store i64 %7177, i64* %PC.i237
  %7178 = inttoptr i64 %7175 to i64*
  %7179 = load i64, i64* %7178
  store i64 %7179, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_40170d, %struct.Memory** %MEMORY
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 33
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 1
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 15
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RBP.i236
  %7190 = sub i64 %7189, 40
  %7191 = load i64, i64* %PC.i234
  %7192 = add i64 %7191, 3
  store i64 %7192, i64* %PC.i234
  %7193 = inttoptr i64 %7190 to i32*
  %7194 = load i32, i32* %7193
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_401711, %struct.Memory** %MEMORY
  %loadMem_401714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 1
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %7201 to i64*
  %7202 = load i64, i64* %RAX.i233
  %7203 = load i64, i64* %PC.i232
  %7204 = add i64 %7203, 3
  store i64 %7204, i64* %PC.i232
  %7205 = trunc i64 %7202 to i32
  %7206 = add i32 1, %7205
  %7207 = zext i32 %7206 to i64
  store i64 %7207, i64* %RAX.i233, align 8
  %7208 = icmp ult i32 %7206, %7205
  %7209 = icmp ult i32 %7206, 1
  %7210 = or i1 %7208, %7209
  %7211 = zext i1 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7211, i8* %7212, align 1
  %7213 = and i32 %7206, 255
  %7214 = call i32 @llvm.ctpop.i32(i32 %7213)
  %7215 = trunc i32 %7214 to i8
  %7216 = and i8 %7215, 1
  %7217 = xor i8 %7216, 1
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7217, i8* %7218, align 1
  %7219 = xor i64 1, %7202
  %7220 = trunc i64 %7219 to i32
  %7221 = xor i32 %7220, %7206
  %7222 = lshr i32 %7221, 4
  %7223 = trunc i32 %7222 to i8
  %7224 = and i8 %7223, 1
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7224, i8* %7225, align 1
  %7226 = icmp eq i32 %7206, 0
  %7227 = zext i1 %7226 to i8
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7227, i8* %7228, align 1
  %7229 = lshr i32 %7206, 31
  %7230 = trunc i32 %7229 to i8
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7230, i8* %7231, align 1
  %7232 = lshr i32 %7205, 31
  %7233 = xor i32 %7229, %7232
  %7234 = add i32 %7233, %7229
  %7235 = icmp eq i32 %7234, 2
  %7236 = zext i1 %7235 to i8
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7236, i8* %7237, align 1
  store %struct.Memory* %loadMem_401714, %struct.Memory** %MEMORY
  %loadMem_401717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7239 = getelementptr inbounds %struct.GPR, %struct.GPR* %7238, i32 0, i32 33
  %7240 = getelementptr inbounds %struct.Reg, %struct.Reg* %7239, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %7240 to i64*
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7242 = getelementptr inbounds %struct.GPR, %struct.GPR* %7241, i32 0, i32 1
  %7243 = getelementptr inbounds %struct.Reg, %struct.Reg* %7242, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %7243 to i32*
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7245 = getelementptr inbounds %struct.GPR, %struct.GPR* %7244, i32 0, i32 7
  %7246 = getelementptr inbounds %struct.Reg, %struct.Reg* %7245, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %7246 to i64*
  %7247 = load i32, i32* %EAX.i230
  %7248 = zext i32 %7247 to i64
  %7249 = load i64, i64* %PC.i229
  %7250 = add i64 %7249, 3
  store i64 %7250, i64* %PC.i229
  %7251 = shl i64 %7248, 32
  %7252 = ashr exact i64 %7251, 32
  store i64 %7252, i64* %RDX.i231, align 8
  store %struct.Memory* %loadMem_401717, %struct.Memory** %MEMORY
  %loadMem_40171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 33
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %7255 to i64*
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 5
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %7258 to i64*
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 7
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %7261 to i64*
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7262, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %7263 to %"class.std::bitset"*
  %7264 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %7265 = load i64, i64* %RCX.i226
  %7266 = load i64, i64* %RDX.i227
  %7267 = mul i64 %7266, 8
  %7268 = add i64 %7267, %7265
  %7269 = load i64, i64* %PC.i225
  %7270 = add i64 %7269, 5
  store i64 %7270, i64* %PC.i225
  %7271 = inttoptr i64 %7268 to double*
  %7272 = load double, double* %7271
  %7273 = bitcast i8* %7264 to double*
  store double %7272, double* %7273, align 1
  %7274 = getelementptr inbounds i8, i8* %7264, i64 8
  %7275 = bitcast i8* %7274 to double*
  store double 0.000000e+00, double* %7275, align 1
  store %struct.Memory* %loadMem_40171a, %struct.Memory** %MEMORY
  %loadMem_40171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7277 = getelementptr inbounds %struct.GPR, %struct.GPR* %7276, i32 0, i32 33
  %7278 = getelementptr inbounds %struct.Reg, %struct.Reg* %7277, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %7278 to i64*
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 15
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7282, i64 0, i64 0
  %XMM0.i224 = bitcast %union.VectorReg* %7283 to %union.vec128_t*
  %7284 = load i64, i64* %RBP.i223
  %7285 = sub i64 %7284, 88
  %7286 = bitcast %union.vec128_t* %XMM0.i224 to i8*
  %7287 = load i64, i64* %PC.i222
  %7288 = add i64 %7287, 5
  store i64 %7288, i64* %PC.i222
  %7289 = bitcast i8* %7286 to double*
  %7290 = load double, double* %7289, align 1
  %7291 = inttoptr i64 %7285 to double*
  store double %7290, double* %7291
  store %struct.Memory* %loadMem_40171f, %struct.Memory** %MEMORY
  %loadMem_401724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 33
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %7294 to i64*
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 15
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7298, i64 0, i64 0
  %YMM0.i221 = bitcast %union.VectorReg* %7299 to %"class.std::bitset"*
  %7300 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %7301 = load i64, i64* %RBP.i220
  %7302 = sub i64 %7301, 80
  %7303 = load i64, i64* %PC.i219
  %7304 = add i64 %7303, 5
  store i64 %7304, i64* %PC.i219
  %7305 = inttoptr i64 %7302 to double*
  %7306 = load double, double* %7305
  %7307 = bitcast i8* %7300 to double*
  store double %7306, double* %7307, align 1
  %7308 = getelementptr inbounds i8, i8* %7300, i64 8
  %7309 = bitcast i8* %7308 to double*
  store double 0.000000e+00, double* %7309, align 1
  store %struct.Memory* %loadMem_401724, %struct.Memory** %MEMORY
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 33
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7312 to i64*
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7314 = getelementptr inbounds %struct.GPR, %struct.GPR* %7313, i32 0, i32 5
  %7315 = getelementptr inbounds %struct.Reg, %struct.Reg* %7314, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %7315 to i64*
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7317 = getelementptr inbounds %struct.GPR, %struct.GPR* %7316, i32 0, i32 15
  %7318 = getelementptr inbounds %struct.Reg, %struct.Reg* %7317, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %7318 to i64*
  %7319 = load i64, i64* %RBP.i218
  %7320 = sub i64 %7319, 24
  %7321 = load i64, i64* %PC.i216
  %7322 = add i64 %7321, 4
  store i64 %7322, i64* %PC.i216
  %7323 = inttoptr i64 %7320 to i64*
  %7324 = load i64, i64* %7323
  store i64 %7324, i64* %RCX.i217, align 8
  store %struct.Memory* %loadMem_401729, %struct.Memory** %MEMORY
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7326 = getelementptr inbounds %struct.GPR, %struct.GPR* %7325, i32 0, i32 33
  %7327 = getelementptr inbounds %struct.Reg, %struct.Reg* %7326, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7327 to i64*
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 7
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %7330 to i64*
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7332 = getelementptr inbounds %struct.GPR, %struct.GPR* %7331, i32 0, i32 15
  %7333 = getelementptr inbounds %struct.Reg, %struct.Reg* %7332, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %7333 to i64*
  %7334 = load i64, i64* %RBP.i215
  %7335 = sub i64 %7334, 32
  %7336 = load i64, i64* %PC.i213
  %7337 = add i64 %7336, 4
  store i64 %7337, i64* %PC.i213
  %7338 = inttoptr i64 %7335 to i32*
  %7339 = load i32, i32* %7338
  %7340 = sext i32 %7339 to i64
  store i64 %7340, i64* %RDX.i214, align 8
  store %struct.Memory* %loadMem_40172d, %struct.Memory** %MEMORY
  %loadMem_401731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 5
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 7
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %7349 to i64*
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7350, i64 0, i64 0
  %XMM0.i212 = bitcast %union.VectorReg* %7351 to %union.vec128_t*
  %7352 = load i64, i64* %RCX.i210
  %7353 = load i64, i64* %RDX.i211
  %7354 = mul i64 %7353, 8
  %7355 = add i64 %7354, %7352
  %7356 = bitcast %union.vec128_t* %XMM0.i212 to i8*
  %7357 = load i64, i64* %PC.i209
  %7358 = add i64 %7357, 5
  store i64 %7358, i64* %PC.i209
  %7359 = bitcast i8* %7356 to double*
  %7360 = load double, double* %7359, align 1
  %7361 = inttoptr i64 %7355 to double*
  store double %7360, double* %7361
  store %struct.Memory* %loadMem_401731, %struct.Memory** %MEMORY
  %loadMem_401736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7363 = getelementptr inbounds %struct.GPR, %struct.GPR* %7362, i32 0, i32 33
  %7364 = getelementptr inbounds %struct.Reg, %struct.Reg* %7363, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7364 to i64*
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 15
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %7367 to i64*
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7368, i64 0, i64 0
  %YMM0.i208 = bitcast %union.VectorReg* %7369 to %"class.std::bitset"*
  %7370 = bitcast %"class.std::bitset"* %YMM0.i208 to i8*
  %7371 = load i64, i64* %RBP.i207
  %7372 = sub i64 %7371, 88
  %7373 = load i64, i64* %PC.i206
  %7374 = add i64 %7373, 5
  store i64 %7374, i64* %PC.i206
  %7375 = inttoptr i64 %7372 to double*
  %7376 = load double, double* %7375
  %7377 = bitcast i8* %7370 to double*
  store double %7376, double* %7377, align 1
  %7378 = getelementptr inbounds i8, i8* %7370, i64 8
  %7379 = bitcast i8* %7378 to double*
  store double 0.000000e+00, double* %7379, align 1
  store %struct.Memory* %loadMem_401736, %struct.Memory** %MEMORY
  %loadMem_40173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 33
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %7382 to i64*
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 5
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %7385 to i64*
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 15
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %7388 to i64*
  %7389 = load i64, i64* %RBP.i205
  %7390 = sub i64 %7389, 24
  %7391 = load i64, i64* %PC.i203
  %7392 = add i64 %7391, 4
  store i64 %7392, i64* %PC.i203
  %7393 = inttoptr i64 %7390 to i64*
  %7394 = load i64, i64* %7393
  store i64 %7394, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_40173b, %struct.Memory** %MEMORY
  %loadMem_40173f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 33
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %7397 to i64*
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7399 = getelementptr inbounds %struct.GPR, %struct.GPR* %7398, i32 0, i32 1
  %7400 = getelementptr inbounds %struct.Reg, %struct.Reg* %7399, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %7400 to i64*
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7402 = getelementptr inbounds %struct.GPR, %struct.GPR* %7401, i32 0, i32 15
  %7403 = getelementptr inbounds %struct.Reg, %struct.Reg* %7402, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %7403 to i64*
  %7404 = load i64, i64* %RBP.i202
  %7405 = sub i64 %7404, 32
  %7406 = load i64, i64* %PC.i200
  %7407 = add i64 %7406, 3
  store i64 %7407, i64* %PC.i200
  %7408 = inttoptr i64 %7405 to i32*
  %7409 = load i32, i32* %7408
  %7410 = zext i32 %7409 to i64
  store i64 %7410, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_40173f, %struct.Memory** %MEMORY
  %loadMem_401742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 33
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7413 to i64*
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 1
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %7416 to i64*
  %7417 = load i64, i64* %RAX.i199
  %7418 = load i64, i64* %PC.i198
  %7419 = add i64 %7418, 3
  store i64 %7419, i64* %PC.i198
  %7420 = trunc i64 %7417 to i32
  %7421 = add i32 1, %7420
  %7422 = zext i32 %7421 to i64
  store i64 %7422, i64* %RAX.i199, align 8
  %7423 = icmp ult i32 %7421, %7420
  %7424 = icmp ult i32 %7421, 1
  %7425 = or i1 %7423, %7424
  %7426 = zext i1 %7425 to i8
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7426, i8* %7427, align 1
  %7428 = and i32 %7421, 255
  %7429 = call i32 @llvm.ctpop.i32(i32 %7428)
  %7430 = trunc i32 %7429 to i8
  %7431 = and i8 %7430, 1
  %7432 = xor i8 %7431, 1
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7432, i8* %7433, align 1
  %7434 = xor i64 1, %7417
  %7435 = trunc i64 %7434 to i32
  %7436 = xor i32 %7435, %7421
  %7437 = lshr i32 %7436, 4
  %7438 = trunc i32 %7437 to i8
  %7439 = and i8 %7438, 1
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7439, i8* %7440, align 1
  %7441 = icmp eq i32 %7421, 0
  %7442 = zext i1 %7441 to i8
  %7443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7442, i8* %7443, align 1
  %7444 = lshr i32 %7421, 31
  %7445 = trunc i32 %7444 to i8
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7445, i8* %7446, align 1
  %7447 = lshr i32 %7420, 31
  %7448 = xor i32 %7444, %7447
  %7449 = add i32 %7448, %7444
  %7450 = icmp eq i32 %7449, 2
  %7451 = zext i1 %7450 to i8
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7451, i8* %7452, align 1
  store %struct.Memory* %loadMem_401742, %struct.Memory** %MEMORY
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 33
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7455 to i64*
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 1
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %7458 to i32*
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 7
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %7461 to i64*
  %7462 = load i32, i32* %EAX.i196
  %7463 = zext i32 %7462 to i64
  %7464 = load i64, i64* %PC.i195
  %7465 = add i64 %7464, 3
  store i64 %7465, i64* %PC.i195
  %7466 = shl i64 %7463, 32
  %7467 = ashr exact i64 %7466, 32
  store i64 %7467, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_401745, %struct.Memory** %MEMORY
  %loadMem_401748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 33
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 5
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %7473 to i64*
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 7
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %RDX.i193 = bitcast %union.anon* %7476 to i64*
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7477, i64 0, i64 0
  %XMM0.i194 = bitcast %union.VectorReg* %7478 to %union.vec128_t*
  %7479 = load i64, i64* %RCX.i192
  %7480 = load i64, i64* %RDX.i193
  %7481 = mul i64 %7480, 8
  %7482 = add i64 %7481, %7479
  %7483 = bitcast %union.vec128_t* %XMM0.i194 to i8*
  %7484 = load i64, i64* %PC.i191
  %7485 = add i64 %7484, 5
  store i64 %7485, i64* %PC.i191
  %7486 = bitcast i8* %7483 to double*
  %7487 = load double, double* %7486, align 1
  %7488 = inttoptr i64 %7482 to double*
  store double %7487, double* %7488
  store %struct.Memory* %loadMem_401748, %struct.Memory** %MEMORY
  %loadMem_40174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7491 to i64*
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 15
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %7494 to i64*
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7495, i64 0, i64 0
  %YMM0.i190 = bitcast %union.VectorReg* %7496 to %"class.std::bitset"*
  %7497 = bitcast %"class.std::bitset"* %YMM0.i190 to i8*
  %7498 = load i64, i64* %RBP.i189
  %7499 = sub i64 %7498, 64
  %7500 = load i64, i64* %PC.i188
  %7501 = add i64 %7500, 5
  store i64 %7501, i64* %PC.i188
  %7502 = inttoptr i64 %7499 to double*
  %7503 = load double, double* %7502
  %7504 = bitcast i8* %7497 to double*
  store double %7503, double* %7504, align 1
  %7505 = getelementptr inbounds i8, i8* %7497, i64 8
  %7506 = bitcast i8* %7505 to double*
  store double 0.000000e+00, double* %7506, align 1
  store %struct.Memory* %loadMem_40174d, %struct.Memory** %MEMORY
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 5
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %7512 to i64*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 15
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %7515 to i64*
  %7516 = load i64, i64* %RBP.i187
  %7517 = sub i64 %7516, 24
  %7518 = load i64, i64* %PC.i185
  %7519 = add i64 %7518, 4
  store i64 %7519, i64* %PC.i185
  %7520 = inttoptr i64 %7517 to i64*
  %7521 = load i64, i64* %7520
  store i64 %7521, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_401752, %struct.Memory** %MEMORY
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7523 = getelementptr inbounds %struct.GPR, %struct.GPR* %7522, i32 0, i32 33
  %7524 = getelementptr inbounds %struct.Reg, %struct.Reg* %7523, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7524 to i64*
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7526 = getelementptr inbounds %struct.GPR, %struct.GPR* %7525, i32 0, i32 7
  %7527 = getelementptr inbounds %struct.Reg, %struct.Reg* %7526, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %7527 to i64*
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7529 = getelementptr inbounds %struct.GPR, %struct.GPR* %7528, i32 0, i32 15
  %7530 = getelementptr inbounds %struct.Reg, %struct.Reg* %7529, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %7530 to i64*
  %7531 = load i64, i64* %RBP.i184
  %7532 = sub i64 %7531, 40
  %7533 = load i64, i64* %PC.i182
  %7534 = add i64 %7533, 4
  store i64 %7534, i64* %PC.i182
  %7535 = inttoptr i64 %7532 to i32*
  %7536 = load i32, i32* %7535
  %7537 = sext i32 %7536 to i64
  store i64 %7537, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_401756, %struct.Memory** %MEMORY
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 33
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7540 to i64*
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 5
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %7543 to i64*
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 7
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %7546 to i64*
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7547, i64 0, i64 0
  %XMM0.i181 = bitcast %union.VectorReg* %7548 to %union.vec128_t*
  %7549 = load i64, i64* %RCX.i179
  %7550 = load i64, i64* %RDX.i180
  %7551 = mul i64 %7550, 8
  %7552 = add i64 %7551, %7549
  %7553 = bitcast %union.vec128_t* %XMM0.i181 to i8*
  %7554 = load i64, i64* %PC.i178
  %7555 = add i64 %7554, 5
  store i64 %7555, i64* %PC.i178
  %7556 = bitcast i8* %7553 to double*
  %7557 = load double, double* %7556, align 1
  %7558 = inttoptr i64 %7552 to double*
  store double %7557, double* %7558
  store %struct.Memory* %loadMem_40175a, %struct.Memory** %MEMORY
  %loadMem_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 33
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7561 to i64*
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 15
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %7564 to i64*
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7566 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7565, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %7566 to %"class.std::bitset"*
  %7567 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %7568 = load i64, i64* %RBP.i176
  %7569 = sub i64 %7568, 72
  %7570 = load i64, i64* %PC.i175
  %7571 = add i64 %7570, 5
  store i64 %7571, i64* %PC.i175
  %7572 = inttoptr i64 %7569 to double*
  %7573 = load double, double* %7572
  %7574 = bitcast i8* %7567 to double*
  store double %7573, double* %7574, align 1
  %7575 = getelementptr inbounds i8, i8* %7567, i64 8
  %7576 = bitcast i8* %7575 to double*
  store double 0.000000e+00, double* %7576, align 1
  store %struct.Memory* %loadMem_40175f, %struct.Memory** %MEMORY
  %loadMem_401764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7578 = getelementptr inbounds %struct.GPR, %struct.GPR* %7577, i32 0, i32 33
  %7579 = getelementptr inbounds %struct.Reg, %struct.Reg* %7578, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7579 to i64*
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 5
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 15
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %RBP.i174
  %7587 = sub i64 %7586, 24
  %7588 = load i64, i64* %PC.i172
  %7589 = add i64 %7588, 4
  store i64 %7589, i64* %PC.i172
  %7590 = inttoptr i64 %7587 to i64*
  %7591 = load i64, i64* %7590
  store i64 %7591, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_401764, %struct.Memory** %MEMORY
  %loadMem_401768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 33
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %7594 to i64*
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 1
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %7597 to i64*
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7599 = getelementptr inbounds %struct.GPR, %struct.GPR* %7598, i32 0, i32 15
  %7600 = getelementptr inbounds %struct.Reg, %struct.Reg* %7599, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %7600 to i64*
  %7601 = load i64, i64* %RBP.i171
  %7602 = sub i64 %7601, 40
  %7603 = load i64, i64* %PC.i169
  %7604 = add i64 %7603, 3
  store i64 %7604, i64* %PC.i169
  %7605 = inttoptr i64 %7602 to i32*
  %7606 = load i32, i32* %7605
  %7607 = zext i32 %7606 to i64
  store i64 %7607, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_401768, %struct.Memory** %MEMORY
  %loadMem_40176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7609 = getelementptr inbounds %struct.GPR, %struct.GPR* %7608, i32 0, i32 33
  %7610 = getelementptr inbounds %struct.Reg, %struct.Reg* %7609, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7610 to i64*
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7612 = getelementptr inbounds %struct.GPR, %struct.GPR* %7611, i32 0, i32 1
  %7613 = getelementptr inbounds %struct.Reg, %struct.Reg* %7612, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %7613 to i64*
  %7614 = load i64, i64* %RAX.i168
  %7615 = load i64, i64* %PC.i167
  %7616 = add i64 %7615, 3
  store i64 %7616, i64* %PC.i167
  %7617 = trunc i64 %7614 to i32
  %7618 = add i32 1, %7617
  %7619 = zext i32 %7618 to i64
  store i64 %7619, i64* %RAX.i168, align 8
  %7620 = icmp ult i32 %7618, %7617
  %7621 = icmp ult i32 %7618, 1
  %7622 = or i1 %7620, %7621
  %7623 = zext i1 %7622 to i8
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7623, i8* %7624, align 1
  %7625 = and i32 %7618, 255
  %7626 = call i32 @llvm.ctpop.i32(i32 %7625)
  %7627 = trunc i32 %7626 to i8
  %7628 = and i8 %7627, 1
  %7629 = xor i8 %7628, 1
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7629, i8* %7630, align 1
  %7631 = xor i64 1, %7614
  %7632 = trunc i64 %7631 to i32
  %7633 = xor i32 %7632, %7618
  %7634 = lshr i32 %7633, 4
  %7635 = trunc i32 %7634 to i8
  %7636 = and i8 %7635, 1
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7636, i8* %7637, align 1
  %7638 = icmp eq i32 %7618, 0
  %7639 = zext i1 %7638 to i8
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7639, i8* %7640, align 1
  %7641 = lshr i32 %7618, 31
  %7642 = trunc i32 %7641 to i8
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7642, i8* %7643, align 1
  %7644 = lshr i32 %7617, 31
  %7645 = xor i32 %7641, %7644
  %7646 = add i32 %7645, %7641
  %7647 = icmp eq i32 %7646, 2
  %7648 = zext i1 %7647 to i8
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7648, i8* %7649, align 1
  store %struct.Memory* %loadMem_40176b, %struct.Memory** %MEMORY
  %loadMem_40176e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7651 = getelementptr inbounds %struct.GPR, %struct.GPR* %7650, i32 0, i32 33
  %7652 = getelementptr inbounds %struct.Reg, %struct.Reg* %7651, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7652 to i64*
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7654 = getelementptr inbounds %struct.GPR, %struct.GPR* %7653, i32 0, i32 1
  %7655 = getelementptr inbounds %struct.Reg, %struct.Reg* %7654, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %7655 to i32*
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7657 = getelementptr inbounds %struct.GPR, %struct.GPR* %7656, i32 0, i32 7
  %7658 = getelementptr inbounds %struct.Reg, %struct.Reg* %7657, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %7658 to i64*
  %7659 = load i32, i32* %EAX.i165
  %7660 = zext i32 %7659 to i64
  %7661 = load i64, i64* %PC.i164
  %7662 = add i64 %7661, 3
  store i64 %7662, i64* %PC.i164
  %7663 = shl i64 %7660, 32
  %7664 = ashr exact i64 %7663, 32
  store i64 %7664, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_40176e, %struct.Memory** %MEMORY
  %loadMem_401771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7667 to i64*
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 5
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %7670 to i64*
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7672 = getelementptr inbounds %struct.GPR, %struct.GPR* %7671, i32 0, i32 7
  %7673 = getelementptr inbounds %struct.Reg, %struct.Reg* %7672, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %7673 to i64*
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7674, i64 0, i64 0
  %XMM0.i163 = bitcast %union.VectorReg* %7675 to %union.vec128_t*
  %7676 = load i64, i64* %RCX.i161
  %7677 = load i64, i64* %RDX.i162
  %7678 = mul i64 %7677, 8
  %7679 = add i64 %7678, %7676
  %7680 = bitcast %union.vec128_t* %XMM0.i163 to i8*
  %7681 = load i64, i64* %PC.i160
  %7682 = add i64 %7681, 5
  store i64 %7682, i64* %PC.i160
  %7683 = bitcast i8* %7680 to double*
  %7684 = load double, double* %7683, align 1
  %7685 = inttoptr i64 %7679 to double*
  store double %7684, double* %7685
  store %struct.Memory* %loadMem_401771, %struct.Memory** %MEMORY
  %loadMem_401776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 33
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 1
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %7691 to i64*
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 15
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7694 to i64*
  %7695 = load i64, i64* %RBP.i159
  %7696 = sub i64 %7695, 52
  %7697 = load i64, i64* %PC.i157
  %7698 = add i64 %7697, 3
  store i64 %7698, i64* %PC.i157
  %7699 = inttoptr i64 %7696 to i32*
  %7700 = load i32, i32* %7699
  %7701 = zext i32 %7700 to i64
  store i64 %7701, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_401776, %struct.Memory** %MEMORY
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 33
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 1
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %7707 to i64*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 15
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %7710 to i64*
  %7711 = load i64, i64* %RAX.i155
  %7712 = load i64, i64* %RBP.i156
  %7713 = sub i64 %7712, 32
  %7714 = load i64, i64* %PC.i154
  %7715 = add i64 %7714, 3
  store i64 %7715, i64* %PC.i154
  %7716 = trunc i64 %7711 to i32
  %7717 = inttoptr i64 %7713 to i32*
  %7718 = load i32, i32* %7717
  %7719 = add i32 %7718, %7716
  %7720 = zext i32 %7719 to i64
  store i64 %7720, i64* %RAX.i155, align 8
  %7721 = icmp ult i32 %7719, %7716
  %7722 = icmp ult i32 %7719, %7718
  %7723 = or i1 %7721, %7722
  %7724 = zext i1 %7723 to i8
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7724, i8* %7725, align 1
  %7726 = and i32 %7719, 255
  %7727 = call i32 @llvm.ctpop.i32(i32 %7726)
  %7728 = trunc i32 %7727 to i8
  %7729 = and i8 %7728, 1
  %7730 = xor i8 %7729, 1
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7730, i8* %7731, align 1
  %7732 = xor i32 %7718, %7716
  %7733 = xor i32 %7732, %7719
  %7734 = lshr i32 %7733, 4
  %7735 = trunc i32 %7734 to i8
  %7736 = and i8 %7735, 1
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7736, i8* %7737, align 1
  %7738 = icmp eq i32 %7719, 0
  %7739 = zext i1 %7738 to i8
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7739, i8* %7740, align 1
  %7741 = lshr i32 %7719, 31
  %7742 = trunc i32 %7741 to i8
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7742, i8* %7743, align 1
  %7744 = lshr i32 %7716, 31
  %7745 = lshr i32 %7718, 31
  %7746 = xor i32 %7741, %7744
  %7747 = xor i32 %7741, %7745
  %7748 = add i32 %7746, %7747
  %7749 = icmp eq i32 %7748, 2
  %7750 = zext i1 %7749 to i8
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7750, i8* %7751, align 1
  store %struct.Memory* %loadMem_401779, %struct.Memory** %MEMORY
  %loadMem_40177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 33
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %7754 to i64*
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 1
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %7757 to i32*
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 15
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %7760 to i64*
  %7761 = load i64, i64* %RBP.i153
  %7762 = sub i64 %7761, 32
  %7763 = load i32, i32* %EAX.i152
  %7764 = zext i32 %7763 to i64
  %7765 = load i64, i64* %PC.i151
  %7766 = add i64 %7765, 3
  store i64 %7766, i64* %PC.i151
  %7767 = inttoptr i64 %7762 to i32*
  store i32 %7763, i32* %7767
  store %struct.Memory* %loadMem_40177c, %struct.Memory** %MEMORY
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 33
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %7770 to i64*
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7772 = getelementptr inbounds %struct.GPR, %struct.GPR* %7771, i32 0, i32 1
  %7773 = getelementptr inbounds %struct.Reg, %struct.Reg* %7772, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %7773 to i64*
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7775 = getelementptr inbounds %struct.GPR, %struct.GPR* %7774, i32 0, i32 15
  %7776 = getelementptr inbounds %struct.Reg, %struct.Reg* %7775, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %7776 to i64*
  %7777 = load i64, i64* %RBP.i150
  %7778 = sub i64 %7777, 52
  %7779 = load i64, i64* %PC.i148
  %7780 = add i64 %7779, 3
  store i64 %7780, i64* %PC.i148
  %7781 = inttoptr i64 %7778 to i32*
  %7782 = load i32, i32* %7781
  %7783 = zext i32 %7782 to i64
  store i64 %7783, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_40177f, %struct.Memory** %MEMORY
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7785 = getelementptr inbounds %struct.GPR, %struct.GPR* %7784, i32 0, i32 33
  %7786 = getelementptr inbounds %struct.Reg, %struct.Reg* %7785, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7786 to i64*
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 1
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %7789 to i64*
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 15
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %7792 to i64*
  %7793 = load i64, i64* %RAX.i146
  %7794 = load i64, i64* %RBP.i147
  %7795 = sub i64 %7794, 40
  %7796 = load i64, i64* %PC.i145
  %7797 = add i64 %7796, 3
  store i64 %7797, i64* %PC.i145
  %7798 = trunc i64 %7793 to i32
  %7799 = inttoptr i64 %7795 to i32*
  %7800 = load i32, i32* %7799
  %7801 = add i32 %7800, %7798
  %7802 = zext i32 %7801 to i64
  store i64 %7802, i64* %RAX.i146, align 8
  %7803 = icmp ult i32 %7801, %7798
  %7804 = icmp ult i32 %7801, %7800
  %7805 = or i1 %7803, %7804
  %7806 = zext i1 %7805 to i8
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7806, i8* %7807, align 1
  %7808 = and i32 %7801, 255
  %7809 = call i32 @llvm.ctpop.i32(i32 %7808)
  %7810 = trunc i32 %7809 to i8
  %7811 = and i8 %7810, 1
  %7812 = xor i8 %7811, 1
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7812, i8* %7813, align 1
  %7814 = xor i32 %7800, %7798
  %7815 = xor i32 %7814, %7801
  %7816 = lshr i32 %7815, 4
  %7817 = trunc i32 %7816 to i8
  %7818 = and i8 %7817, 1
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7818, i8* %7819, align 1
  %7820 = icmp eq i32 %7801, 0
  %7821 = zext i1 %7820 to i8
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7821, i8* %7822, align 1
  %7823 = lshr i32 %7801, 31
  %7824 = trunc i32 %7823 to i8
  %7825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7824, i8* %7825, align 1
  %7826 = lshr i32 %7798, 31
  %7827 = lshr i32 %7800, 31
  %7828 = xor i32 %7823, %7826
  %7829 = xor i32 %7823, %7827
  %7830 = add i32 %7828, %7829
  %7831 = icmp eq i32 %7830, 2
  %7832 = zext i1 %7831 to i8
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7832, i8* %7833, align 1
  store %struct.Memory* %loadMem_401782, %struct.Memory** %MEMORY
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7835 = getelementptr inbounds %struct.GPR, %struct.GPR* %7834, i32 0, i32 33
  %7836 = getelementptr inbounds %struct.Reg, %struct.Reg* %7835, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7836 to i64*
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 1
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %7839 to i32*
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 15
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %7842 to i64*
  %7843 = load i64, i64* %RBP.i144
  %7844 = sub i64 %7843, 40
  %7845 = load i32, i32* %EAX.i143
  %7846 = zext i32 %7845 to i64
  %7847 = load i64, i64* %PC.i142
  %7848 = add i64 %7847, 3
  store i64 %7848, i64* %PC.i142
  %7849 = inttoptr i64 %7844 to i32*
  store i32 %7845, i32* %7849
  store %struct.Memory* %loadMem_401785, %struct.Memory** %MEMORY
  %loadMem_401788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7851 = getelementptr inbounds %struct.GPR, %struct.GPR* %7850, i32 0, i32 33
  %7852 = getelementptr inbounds %struct.Reg, %struct.Reg* %7851, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7852 to i64*
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7854 = getelementptr inbounds %struct.GPR, %struct.GPR* %7853, i32 0, i32 5
  %7855 = getelementptr inbounds %struct.Reg, %struct.Reg* %7854, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %7855 to i64*
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 15
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %7858 to i64*
  %7859 = load i64, i64* %RBP.i141
  %7860 = sub i64 %7859, 24
  %7861 = load i64, i64* %PC.i139
  %7862 = add i64 %7861, 4
  store i64 %7862, i64* %PC.i139
  %7863 = inttoptr i64 %7860 to i64*
  %7864 = load i64, i64* %7863
  store i64 %7864, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_401788, %struct.Memory** %MEMORY
  %loadMem_40178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 33
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7867 to i64*
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 7
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %7870 to i64*
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7872 = getelementptr inbounds %struct.GPR, %struct.GPR* %7871, i32 0, i32 15
  %7873 = getelementptr inbounds %struct.Reg, %struct.Reg* %7872, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %7873 to i64*
  %7874 = load i64, i64* %RBP.i138
  %7875 = sub i64 %7874, 32
  %7876 = load i64, i64* %PC.i136
  %7877 = add i64 %7876, 4
  store i64 %7877, i64* %PC.i136
  %7878 = inttoptr i64 %7875 to i32*
  %7879 = load i32, i32* %7878
  %7880 = sext i32 %7879 to i64
  store i64 %7880, i64* %RDX.i137, align 8
  store %struct.Memory* %loadMem_40178c, %struct.Memory** %MEMORY
  %loadMem_401790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7882 = getelementptr inbounds %struct.GPR, %struct.GPR* %7881, i32 0, i32 33
  %7883 = getelementptr inbounds %struct.Reg, %struct.Reg* %7882, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7883 to i64*
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7885 = getelementptr inbounds %struct.GPR, %struct.GPR* %7884, i32 0, i32 5
  %7886 = getelementptr inbounds %struct.Reg, %struct.Reg* %7885, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %7886 to i64*
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7888 = getelementptr inbounds %struct.GPR, %struct.GPR* %7887, i32 0, i32 7
  %7889 = getelementptr inbounds %struct.Reg, %struct.Reg* %7888, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %7889 to i64*
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7890, i64 0, i64 0
  %YMM0.i135 = bitcast %union.VectorReg* %7891 to %"class.std::bitset"*
  %7892 = bitcast %"class.std::bitset"* %YMM0.i135 to i8*
  %7893 = load i64, i64* %RCX.i133
  %7894 = load i64, i64* %RDX.i134
  %7895 = mul i64 %7894, 8
  %7896 = add i64 %7895, %7893
  %7897 = load i64, i64* %PC.i132
  %7898 = add i64 %7897, 5
  store i64 %7898, i64* %PC.i132
  %7899 = inttoptr i64 %7896 to double*
  %7900 = load double, double* %7899
  %7901 = bitcast i8* %7892 to double*
  store double %7900, double* %7901, align 1
  %7902 = getelementptr inbounds i8, i8* %7892, i64 8
  %7903 = bitcast i8* %7902 to double*
  store double 0.000000e+00, double* %7903, align 1
  store %struct.Memory* %loadMem_401790, %struct.Memory** %MEMORY
  %loadMem_401795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7905 = getelementptr inbounds %struct.GPR, %struct.GPR* %7904, i32 0, i32 33
  %7906 = getelementptr inbounds %struct.Reg, %struct.Reg* %7905, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7906 to i64*
  %7907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7908 = getelementptr inbounds %struct.GPR, %struct.GPR* %7907, i32 0, i32 15
  %7909 = getelementptr inbounds %struct.Reg, %struct.Reg* %7908, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %7909 to i64*
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7910, i64 0, i64 0
  %XMM0.i131 = bitcast %union.VectorReg* %7911 to %union.vec128_t*
  %7912 = load i64, i64* %RBP.i130
  %7913 = sub i64 %7912, 64
  %7914 = bitcast %union.vec128_t* %XMM0.i131 to i8*
  %7915 = load i64, i64* %PC.i129
  %7916 = add i64 %7915, 5
  store i64 %7916, i64* %PC.i129
  %7917 = bitcast i8* %7914 to double*
  %7918 = load double, double* %7917, align 1
  %7919 = inttoptr i64 %7913 to double*
  store double %7918, double* %7919
  store %struct.Memory* %loadMem_401795, %struct.Memory** %MEMORY
  %loadMem_40179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7921 = getelementptr inbounds %struct.GPR, %struct.GPR* %7920, i32 0, i32 33
  %7922 = getelementptr inbounds %struct.Reg, %struct.Reg* %7921, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7922 to i64*
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7924 = getelementptr inbounds %struct.GPR, %struct.GPR* %7923, i32 0, i32 5
  %7925 = getelementptr inbounds %struct.Reg, %struct.Reg* %7924, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %7925 to i64*
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7927 = getelementptr inbounds %struct.GPR, %struct.GPR* %7926, i32 0, i32 15
  %7928 = getelementptr inbounds %struct.Reg, %struct.Reg* %7927, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %7928 to i64*
  %7929 = load i64, i64* %RBP.i128
  %7930 = sub i64 %7929, 24
  %7931 = load i64, i64* %PC.i126
  %7932 = add i64 %7931, 4
  store i64 %7932, i64* %PC.i126
  %7933 = inttoptr i64 %7930 to i64*
  %7934 = load i64, i64* %7933
  store i64 %7934, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_40179a, %struct.Memory** %MEMORY
  %loadMem_40179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7936 = getelementptr inbounds %struct.GPR, %struct.GPR* %7935, i32 0, i32 33
  %7937 = getelementptr inbounds %struct.Reg, %struct.Reg* %7936, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7937 to i64*
  %7938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7939 = getelementptr inbounds %struct.GPR, %struct.GPR* %7938, i32 0, i32 1
  %7940 = getelementptr inbounds %struct.Reg, %struct.Reg* %7939, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %7940 to i64*
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7942 = getelementptr inbounds %struct.GPR, %struct.GPR* %7941, i32 0, i32 15
  %7943 = getelementptr inbounds %struct.Reg, %struct.Reg* %7942, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %7943 to i64*
  %7944 = load i64, i64* %RBP.i125
  %7945 = sub i64 %7944, 32
  %7946 = load i64, i64* %PC.i123
  %7947 = add i64 %7946, 3
  store i64 %7947, i64* %PC.i123
  %7948 = inttoptr i64 %7945 to i32*
  %7949 = load i32, i32* %7948
  %7950 = zext i32 %7949 to i64
  store i64 %7950, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_40179e, %struct.Memory** %MEMORY
  %loadMem_4017a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7952 = getelementptr inbounds %struct.GPR, %struct.GPR* %7951, i32 0, i32 33
  %7953 = getelementptr inbounds %struct.Reg, %struct.Reg* %7952, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7953 to i64*
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7955 = getelementptr inbounds %struct.GPR, %struct.GPR* %7954, i32 0, i32 1
  %7956 = getelementptr inbounds %struct.Reg, %struct.Reg* %7955, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %7956 to i64*
  %7957 = load i64, i64* %RAX.i122
  %7958 = load i64, i64* %PC.i121
  %7959 = add i64 %7958, 3
  store i64 %7959, i64* %PC.i121
  %7960 = trunc i64 %7957 to i32
  %7961 = add i32 1, %7960
  %7962 = zext i32 %7961 to i64
  store i64 %7962, i64* %RAX.i122, align 8
  %7963 = icmp ult i32 %7961, %7960
  %7964 = icmp ult i32 %7961, 1
  %7965 = or i1 %7963, %7964
  %7966 = zext i1 %7965 to i8
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7966, i8* %7967, align 1
  %7968 = and i32 %7961, 255
  %7969 = call i32 @llvm.ctpop.i32(i32 %7968)
  %7970 = trunc i32 %7969 to i8
  %7971 = and i8 %7970, 1
  %7972 = xor i8 %7971, 1
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7972, i8* %7973, align 1
  %7974 = xor i64 1, %7957
  %7975 = trunc i64 %7974 to i32
  %7976 = xor i32 %7975, %7961
  %7977 = lshr i32 %7976, 4
  %7978 = trunc i32 %7977 to i8
  %7979 = and i8 %7978, 1
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7979, i8* %7980, align 1
  %7981 = icmp eq i32 %7961, 0
  %7982 = zext i1 %7981 to i8
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7982, i8* %7983, align 1
  %7984 = lshr i32 %7961, 31
  %7985 = trunc i32 %7984 to i8
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7985, i8* %7986, align 1
  %7987 = lshr i32 %7960, 31
  %7988 = xor i32 %7984, %7987
  %7989 = add i32 %7988, %7984
  %7990 = icmp eq i32 %7989, 2
  %7991 = zext i1 %7990 to i8
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7991, i8* %7992, align 1
  store %struct.Memory* %loadMem_4017a1, %struct.Memory** %MEMORY
  %loadMem_4017a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7994 = getelementptr inbounds %struct.GPR, %struct.GPR* %7993, i32 0, i32 33
  %7995 = getelementptr inbounds %struct.Reg, %struct.Reg* %7994, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7995 to i64*
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 1
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %7998 to i32*
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8000 = getelementptr inbounds %struct.GPR, %struct.GPR* %7999, i32 0, i32 7
  %8001 = getelementptr inbounds %struct.Reg, %struct.Reg* %8000, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %8001 to i64*
  %8002 = load i32, i32* %EAX.i119
  %8003 = zext i32 %8002 to i64
  %8004 = load i64, i64* %PC.i118
  %8005 = add i64 %8004, 3
  store i64 %8005, i64* %PC.i118
  %8006 = shl i64 %8003, 32
  %8007 = ashr exact i64 %8006, 32
  store i64 %8007, i64* %RDX.i120, align 8
  store %struct.Memory* %loadMem_4017a4, %struct.Memory** %MEMORY
  %loadMem_4017a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8009 = getelementptr inbounds %struct.GPR, %struct.GPR* %8008, i32 0, i32 33
  %8010 = getelementptr inbounds %struct.Reg, %struct.Reg* %8009, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %8010 to i64*
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 5
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %8013 to i64*
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 7
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %8016 to i64*
  %8017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8017, i64 0, i64 0
  %YMM0.i117 = bitcast %union.VectorReg* %8018 to %"class.std::bitset"*
  %8019 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %8020 = load i64, i64* %RCX.i115
  %8021 = load i64, i64* %RDX.i116
  %8022 = mul i64 %8021, 8
  %8023 = add i64 %8022, %8020
  %8024 = load i64, i64* %PC.i114
  %8025 = add i64 %8024, 5
  store i64 %8025, i64* %PC.i114
  %8026 = inttoptr i64 %8023 to double*
  %8027 = load double, double* %8026
  %8028 = bitcast i8* %8019 to double*
  store double %8027, double* %8028, align 1
  %8029 = getelementptr inbounds i8, i8* %8019, i64 8
  %8030 = bitcast i8* %8029 to double*
  store double 0.000000e+00, double* %8030, align 1
  store %struct.Memory* %loadMem_4017a7, %struct.Memory** %MEMORY
  %loadMem_4017ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 33
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %8033 to i64*
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8035 = getelementptr inbounds %struct.GPR, %struct.GPR* %8034, i32 0, i32 15
  %8036 = getelementptr inbounds %struct.Reg, %struct.Reg* %8035, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %8036 to i64*
  %8037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8037, i64 0, i64 0
  %XMM0.i113 = bitcast %union.VectorReg* %8038 to %union.vec128_t*
  %8039 = load i64, i64* %RBP.i112
  %8040 = sub i64 %8039, 72
  %8041 = bitcast %union.vec128_t* %XMM0.i113 to i8*
  %8042 = load i64, i64* %PC.i111
  %8043 = add i64 %8042, 5
  store i64 %8043, i64* %PC.i111
  %8044 = bitcast i8* %8041 to double*
  %8045 = load double, double* %8044, align 1
  %8046 = inttoptr i64 %8040 to double*
  store double %8045, double* %8046
  store %struct.Memory* %loadMem_4017ac, %struct.Memory** %MEMORY
  %loadMem_4017b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 33
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %8049 to i64*
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8051 = getelementptr inbounds %struct.GPR, %struct.GPR* %8050, i32 0, i32 5
  %8052 = getelementptr inbounds %struct.Reg, %struct.Reg* %8051, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %8052 to i64*
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8054 = getelementptr inbounds %struct.GPR, %struct.GPR* %8053, i32 0, i32 15
  %8055 = getelementptr inbounds %struct.Reg, %struct.Reg* %8054, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %8055 to i64*
  %8056 = load i64, i64* %RBP.i110
  %8057 = sub i64 %8056, 24
  %8058 = load i64, i64* %PC.i108
  %8059 = add i64 %8058, 4
  store i64 %8059, i64* %PC.i108
  %8060 = inttoptr i64 %8057 to i64*
  %8061 = load i64, i64* %8060
  store i64 %8061, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_4017b1, %struct.Memory** %MEMORY
  %loadMem_4017b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 33
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8064 to i64*
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8066 = getelementptr inbounds %struct.GPR, %struct.GPR* %8065, i32 0, i32 7
  %8067 = getelementptr inbounds %struct.Reg, %struct.Reg* %8066, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %8067 to i64*
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8069 = getelementptr inbounds %struct.GPR, %struct.GPR* %8068, i32 0, i32 15
  %8070 = getelementptr inbounds %struct.Reg, %struct.Reg* %8069, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %8070 to i64*
  %8071 = load i64, i64* %RBP.i107
  %8072 = sub i64 %8071, 40
  %8073 = load i64, i64* %PC.i105
  %8074 = add i64 %8073, 4
  store i64 %8074, i64* %PC.i105
  %8075 = inttoptr i64 %8072 to i32*
  %8076 = load i32, i32* %8075
  %8077 = sext i32 %8076 to i64
  store i64 %8077, i64* %RDX.i106, align 8
  store %struct.Memory* %loadMem_4017b5, %struct.Memory** %MEMORY
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 33
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %8080 to i64*
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8082 = getelementptr inbounds %struct.GPR, %struct.GPR* %8081, i32 0, i32 5
  %8083 = getelementptr inbounds %struct.Reg, %struct.Reg* %8082, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %8083 to i64*
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8085 = getelementptr inbounds %struct.GPR, %struct.GPR* %8084, i32 0, i32 7
  %8086 = getelementptr inbounds %struct.Reg, %struct.Reg* %8085, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %8086 to i64*
  %8087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8087, i64 0, i64 0
  %YMM0.i104 = bitcast %union.VectorReg* %8088 to %"class.std::bitset"*
  %8089 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %8090 = load i64, i64* %RCX.i102
  %8091 = load i64, i64* %RDX.i103
  %8092 = mul i64 %8091, 8
  %8093 = add i64 %8092, %8090
  %8094 = load i64, i64* %PC.i101
  %8095 = add i64 %8094, 5
  store i64 %8095, i64* %PC.i101
  %8096 = inttoptr i64 %8093 to double*
  %8097 = load double, double* %8096
  %8098 = bitcast i8* %8089 to double*
  store double %8097, double* %8098, align 1
  %8099 = getelementptr inbounds i8, i8* %8089, i64 8
  %8100 = bitcast i8* %8099 to double*
  store double 0.000000e+00, double* %8100, align 1
  store %struct.Memory* %loadMem_4017b9, %struct.Memory** %MEMORY
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 33
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8103 to i64*
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 15
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8107, i64 0, i64 0
  %XMM0.i100 = bitcast %union.VectorReg* %8108 to %union.vec128_t*
  %8109 = load i64, i64* %RBP.i99
  %8110 = sub i64 %8109, 80
  %8111 = bitcast %union.vec128_t* %XMM0.i100 to i8*
  %8112 = load i64, i64* %PC.i98
  %8113 = add i64 %8112, 5
  store i64 %8113, i64* %PC.i98
  %8114 = bitcast i8* %8111 to double*
  %8115 = load double, double* %8114, align 1
  %8116 = inttoptr i64 %8110 to double*
  store double %8115, double* %8116
  store %struct.Memory* %loadMem_4017be, %struct.Memory** %MEMORY
  %loadMem_4017c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8118 = getelementptr inbounds %struct.GPR, %struct.GPR* %8117, i32 0, i32 33
  %8119 = getelementptr inbounds %struct.Reg, %struct.Reg* %8118, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8119 to i64*
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 5
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 15
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %8125 to i64*
  %8126 = load i64, i64* %RBP.i97
  %8127 = sub i64 %8126, 24
  %8128 = load i64, i64* %PC.i95
  %8129 = add i64 %8128, 4
  store i64 %8129, i64* %PC.i95
  %8130 = inttoptr i64 %8127 to i64*
  %8131 = load i64, i64* %8130
  store i64 %8131, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_4017c3, %struct.Memory** %MEMORY
  %loadMem_4017c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8133 = getelementptr inbounds %struct.GPR, %struct.GPR* %8132, i32 0, i32 33
  %8134 = getelementptr inbounds %struct.Reg, %struct.Reg* %8133, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8134 to i64*
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 1
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %8137 to i64*
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %8138, i32 0, i32 15
  %8140 = getelementptr inbounds %struct.Reg, %struct.Reg* %8139, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %8140 to i64*
  %8141 = load i64, i64* %RBP.i94
  %8142 = sub i64 %8141, 40
  %8143 = load i64, i64* %PC.i92
  %8144 = add i64 %8143, 3
  store i64 %8144, i64* %PC.i92
  %8145 = inttoptr i64 %8142 to i32*
  %8146 = load i32, i32* %8145
  %8147 = zext i32 %8146 to i64
  store i64 %8147, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_4017c7, %struct.Memory** %MEMORY
  %loadMem_4017ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8149 = getelementptr inbounds %struct.GPR, %struct.GPR* %8148, i32 0, i32 33
  %8150 = getelementptr inbounds %struct.Reg, %struct.Reg* %8149, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8150 to i64*
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8152 = getelementptr inbounds %struct.GPR, %struct.GPR* %8151, i32 0, i32 1
  %8153 = getelementptr inbounds %struct.Reg, %struct.Reg* %8152, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %8153 to i64*
  %8154 = load i64, i64* %RAX.i91
  %8155 = load i64, i64* %PC.i90
  %8156 = add i64 %8155, 3
  store i64 %8156, i64* %PC.i90
  %8157 = trunc i64 %8154 to i32
  %8158 = add i32 1, %8157
  %8159 = zext i32 %8158 to i64
  store i64 %8159, i64* %RAX.i91, align 8
  %8160 = icmp ult i32 %8158, %8157
  %8161 = icmp ult i32 %8158, 1
  %8162 = or i1 %8160, %8161
  %8163 = zext i1 %8162 to i8
  %8164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8163, i8* %8164, align 1
  %8165 = and i32 %8158, 255
  %8166 = call i32 @llvm.ctpop.i32(i32 %8165)
  %8167 = trunc i32 %8166 to i8
  %8168 = and i8 %8167, 1
  %8169 = xor i8 %8168, 1
  %8170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8169, i8* %8170, align 1
  %8171 = xor i64 1, %8154
  %8172 = trunc i64 %8171 to i32
  %8173 = xor i32 %8172, %8158
  %8174 = lshr i32 %8173, 4
  %8175 = trunc i32 %8174 to i8
  %8176 = and i8 %8175, 1
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8176, i8* %8177, align 1
  %8178 = icmp eq i32 %8158, 0
  %8179 = zext i1 %8178 to i8
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8179, i8* %8180, align 1
  %8181 = lshr i32 %8158, 31
  %8182 = trunc i32 %8181 to i8
  %8183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8182, i8* %8183, align 1
  %8184 = lshr i32 %8157, 31
  %8185 = xor i32 %8181, %8184
  %8186 = add i32 %8185, %8181
  %8187 = icmp eq i32 %8186, 2
  %8188 = zext i1 %8187 to i8
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8188, i8* %8189, align 1
  store %struct.Memory* %loadMem_4017ca, %struct.Memory** %MEMORY
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8191 = getelementptr inbounds %struct.GPR, %struct.GPR* %8190, i32 0, i32 33
  %8192 = getelementptr inbounds %struct.Reg, %struct.Reg* %8191, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8192 to i64*
  %8193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8194 = getelementptr inbounds %struct.GPR, %struct.GPR* %8193, i32 0, i32 1
  %8195 = getelementptr inbounds %struct.Reg, %struct.Reg* %8194, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %8195 to i32*
  %8196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8197 = getelementptr inbounds %struct.GPR, %struct.GPR* %8196, i32 0, i32 7
  %8198 = getelementptr inbounds %struct.Reg, %struct.Reg* %8197, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %8198 to i64*
  %8199 = load i32, i32* %EAX.i88
  %8200 = zext i32 %8199 to i64
  %8201 = load i64, i64* %PC.i87
  %8202 = add i64 %8201, 3
  store i64 %8202, i64* %PC.i87
  %8203 = shl i64 %8200, 32
  %8204 = ashr exact i64 %8203, 32
  store i64 %8204, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_4017cd, %struct.Memory** %MEMORY
  %loadMem_4017d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8206 = getelementptr inbounds %struct.GPR, %struct.GPR* %8205, i32 0, i32 33
  %8207 = getelementptr inbounds %struct.Reg, %struct.Reg* %8206, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8207 to i64*
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 5
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %8210 to i64*
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 7
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %8213 to i64*
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8214, i64 0, i64 0
  %YMM0.i86 = bitcast %union.VectorReg* %8215 to %"class.std::bitset"*
  %8216 = bitcast %"class.std::bitset"* %YMM0.i86 to i8*
  %8217 = load i64, i64* %RCX.i84
  %8218 = load i64, i64* %RDX.i85
  %8219 = mul i64 %8218, 8
  %8220 = add i64 %8219, %8217
  %8221 = load i64, i64* %PC.i83
  %8222 = add i64 %8221, 5
  store i64 %8222, i64* %PC.i83
  %8223 = inttoptr i64 %8220 to double*
  %8224 = load double, double* %8223
  %8225 = bitcast i8* %8216 to double*
  store double %8224, double* %8225, align 1
  %8226 = getelementptr inbounds i8, i8* %8216, i64 8
  %8227 = bitcast i8* %8226 to double*
  store double 0.000000e+00, double* %8227, align 1
  store %struct.Memory* %loadMem_4017d0, %struct.Memory** %MEMORY
  %loadMem_4017d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8229 = getelementptr inbounds %struct.GPR, %struct.GPR* %8228, i32 0, i32 33
  %8230 = getelementptr inbounds %struct.Reg, %struct.Reg* %8229, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8230 to i64*
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8232 = getelementptr inbounds %struct.GPR, %struct.GPR* %8231, i32 0, i32 15
  %8233 = getelementptr inbounds %struct.Reg, %struct.Reg* %8232, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %8233 to i64*
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8234, i64 0, i64 0
  %XMM0.i82 = bitcast %union.VectorReg* %8235 to %union.vec128_t*
  %8236 = load i64, i64* %RBP.i81
  %8237 = sub i64 %8236, 88
  %8238 = bitcast %union.vec128_t* %XMM0.i82 to i8*
  %8239 = load i64, i64* %PC.i80
  %8240 = add i64 %8239, 5
  store i64 %8240, i64* %PC.i80
  %8241 = bitcast i8* %8238 to double*
  %8242 = load double, double* %8241, align 1
  %8243 = inttoptr i64 %8237 to double*
  store double %8242, double* %8243
  store %struct.Memory* %loadMem_4017d5, %struct.Memory** %MEMORY
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8245 = getelementptr inbounds %struct.GPR, %struct.GPR* %8244, i32 0, i32 33
  %8246 = getelementptr inbounds %struct.Reg, %struct.Reg* %8245, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8246 to i64*
  %8247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8248 = getelementptr inbounds %struct.GPR, %struct.GPR* %8247, i32 0, i32 15
  %8249 = getelementptr inbounds %struct.Reg, %struct.Reg* %8248, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %8249 to i64*
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8250, i64 0, i64 0
  %YMM0.i79 = bitcast %union.VectorReg* %8251 to %"class.std::bitset"*
  %8252 = bitcast %"class.std::bitset"* %YMM0.i79 to i8*
  %8253 = load i64, i64* %RBP.i78
  %8254 = sub i64 %8253, 80
  %8255 = load i64, i64* %PC.i77
  %8256 = add i64 %8255, 5
  store i64 %8256, i64* %PC.i77
  %8257 = inttoptr i64 %8254 to double*
  %8258 = load double, double* %8257
  %8259 = bitcast i8* %8252 to double*
  store double %8258, double* %8259, align 1
  %8260 = getelementptr inbounds i8, i8* %8252, i64 8
  %8261 = bitcast i8* %8260 to double*
  store double 0.000000e+00, double* %8261, align 1
  store %struct.Memory* %loadMem_4017da, %struct.Memory** %MEMORY
  %loadMem_4017df = load %struct.Memory*, %struct.Memory** %MEMORY
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 33
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %8264 to i64*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 5
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %8267 to i64*
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 15
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %8270 to i64*
  %8271 = load i64, i64* %RBP.i76
  %8272 = sub i64 %8271, 24
  %8273 = load i64, i64* %PC.i74
  %8274 = add i64 %8273, 4
  store i64 %8274, i64* %PC.i74
  %8275 = inttoptr i64 %8272 to i64*
  %8276 = load i64, i64* %8275
  store i64 %8276, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_4017df, %struct.Memory** %MEMORY
  %loadMem_4017e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8278 = getelementptr inbounds %struct.GPR, %struct.GPR* %8277, i32 0, i32 33
  %8279 = getelementptr inbounds %struct.Reg, %struct.Reg* %8278, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %8279 to i64*
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8281 = getelementptr inbounds %struct.GPR, %struct.GPR* %8280, i32 0, i32 7
  %8282 = getelementptr inbounds %struct.Reg, %struct.Reg* %8281, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %8282 to i64*
  %8283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8284 = getelementptr inbounds %struct.GPR, %struct.GPR* %8283, i32 0, i32 15
  %8285 = getelementptr inbounds %struct.Reg, %struct.Reg* %8284, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %8285 to i64*
  %8286 = load i64, i64* %RBP.i73
  %8287 = sub i64 %8286, 32
  %8288 = load i64, i64* %PC.i71
  %8289 = add i64 %8288, 4
  store i64 %8289, i64* %PC.i71
  %8290 = inttoptr i64 %8287 to i32*
  %8291 = load i32, i32* %8290
  %8292 = sext i32 %8291 to i64
  store i64 %8292, i64* %RDX.i72, align 8
  store %struct.Memory* %loadMem_4017e3, %struct.Memory** %MEMORY
  %loadMem_4017e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8294 = getelementptr inbounds %struct.GPR, %struct.GPR* %8293, i32 0, i32 33
  %8295 = getelementptr inbounds %struct.Reg, %struct.Reg* %8294, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8295 to i64*
  %8296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8297 = getelementptr inbounds %struct.GPR, %struct.GPR* %8296, i32 0, i32 5
  %8298 = getelementptr inbounds %struct.Reg, %struct.Reg* %8297, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %8298 to i64*
  %8299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8300 = getelementptr inbounds %struct.GPR, %struct.GPR* %8299, i32 0, i32 7
  %8301 = getelementptr inbounds %struct.Reg, %struct.Reg* %8300, i32 0, i32 0
  %RDX.i69 = bitcast %union.anon* %8301 to i64*
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8302, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %8303 to %union.vec128_t*
  %8304 = load i64, i64* %RCX.i68
  %8305 = load i64, i64* %RDX.i69
  %8306 = mul i64 %8305, 8
  %8307 = add i64 %8306, %8304
  %8308 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %8309 = load i64, i64* %PC.i67
  %8310 = add i64 %8309, 5
  store i64 %8310, i64* %PC.i67
  %8311 = bitcast i8* %8308 to double*
  %8312 = load double, double* %8311, align 1
  %8313 = inttoptr i64 %8307 to double*
  store double %8312, double* %8313
  store %struct.Memory* %loadMem_4017e7, %struct.Memory** %MEMORY
  %loadMem_4017ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8315 = getelementptr inbounds %struct.GPR, %struct.GPR* %8314, i32 0, i32 33
  %8316 = getelementptr inbounds %struct.Reg, %struct.Reg* %8315, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8316 to i64*
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8318 = getelementptr inbounds %struct.GPR, %struct.GPR* %8317, i32 0, i32 15
  %8319 = getelementptr inbounds %struct.Reg, %struct.Reg* %8318, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %8319 to i64*
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8320, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %8321 to %"class.std::bitset"*
  %8322 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %8323 = load i64, i64* %RBP.i65
  %8324 = sub i64 %8323, 88
  %8325 = load i64, i64* %PC.i64
  %8326 = add i64 %8325, 5
  store i64 %8326, i64* %PC.i64
  %8327 = inttoptr i64 %8324 to double*
  %8328 = load double, double* %8327
  %8329 = bitcast i8* %8322 to double*
  store double %8328, double* %8329, align 1
  %8330 = getelementptr inbounds i8, i8* %8322, i64 8
  %8331 = bitcast i8* %8330 to double*
  store double 0.000000e+00, double* %8331, align 1
  store %struct.Memory* %loadMem_4017ec, %struct.Memory** %MEMORY
  %loadMem_4017f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8333 = getelementptr inbounds %struct.GPR, %struct.GPR* %8332, i32 0, i32 33
  %8334 = getelementptr inbounds %struct.Reg, %struct.Reg* %8333, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8334 to i64*
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8336 = getelementptr inbounds %struct.GPR, %struct.GPR* %8335, i32 0, i32 5
  %8337 = getelementptr inbounds %struct.Reg, %struct.Reg* %8336, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %8337 to i64*
  %8338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8339 = getelementptr inbounds %struct.GPR, %struct.GPR* %8338, i32 0, i32 15
  %8340 = getelementptr inbounds %struct.Reg, %struct.Reg* %8339, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %8340 to i64*
  %8341 = load i64, i64* %RBP.i63
  %8342 = sub i64 %8341, 24
  %8343 = load i64, i64* %PC.i61
  %8344 = add i64 %8343, 4
  store i64 %8344, i64* %PC.i61
  %8345 = inttoptr i64 %8342 to i64*
  %8346 = load i64, i64* %8345
  store i64 %8346, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_4017f1, %struct.Memory** %MEMORY
  %loadMem_4017f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8348 = getelementptr inbounds %struct.GPR, %struct.GPR* %8347, i32 0, i32 33
  %8349 = getelementptr inbounds %struct.Reg, %struct.Reg* %8348, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8349 to i64*
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8351 = getelementptr inbounds %struct.GPR, %struct.GPR* %8350, i32 0, i32 1
  %8352 = getelementptr inbounds %struct.Reg, %struct.Reg* %8351, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %8352 to i64*
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8354 = getelementptr inbounds %struct.GPR, %struct.GPR* %8353, i32 0, i32 15
  %8355 = getelementptr inbounds %struct.Reg, %struct.Reg* %8354, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %8355 to i64*
  %8356 = load i64, i64* %RBP.i60
  %8357 = sub i64 %8356, 32
  %8358 = load i64, i64* %PC.i58
  %8359 = add i64 %8358, 3
  store i64 %8359, i64* %PC.i58
  %8360 = inttoptr i64 %8357 to i32*
  %8361 = load i32, i32* %8360
  %8362 = zext i32 %8361 to i64
  store i64 %8362, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_4017f5, %struct.Memory** %MEMORY
  %loadMem_4017f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8364 = getelementptr inbounds %struct.GPR, %struct.GPR* %8363, i32 0, i32 33
  %8365 = getelementptr inbounds %struct.Reg, %struct.Reg* %8364, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8365 to i64*
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8367 = getelementptr inbounds %struct.GPR, %struct.GPR* %8366, i32 0, i32 1
  %8368 = getelementptr inbounds %struct.Reg, %struct.Reg* %8367, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %8368 to i64*
  %8369 = load i64, i64* %RAX.i57
  %8370 = load i64, i64* %PC.i56
  %8371 = add i64 %8370, 3
  store i64 %8371, i64* %PC.i56
  %8372 = trunc i64 %8369 to i32
  %8373 = add i32 1, %8372
  %8374 = zext i32 %8373 to i64
  store i64 %8374, i64* %RAX.i57, align 8
  %8375 = icmp ult i32 %8373, %8372
  %8376 = icmp ult i32 %8373, 1
  %8377 = or i1 %8375, %8376
  %8378 = zext i1 %8377 to i8
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8378, i8* %8379, align 1
  %8380 = and i32 %8373, 255
  %8381 = call i32 @llvm.ctpop.i32(i32 %8380)
  %8382 = trunc i32 %8381 to i8
  %8383 = and i8 %8382, 1
  %8384 = xor i8 %8383, 1
  %8385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8384, i8* %8385, align 1
  %8386 = xor i64 1, %8369
  %8387 = trunc i64 %8386 to i32
  %8388 = xor i32 %8387, %8373
  %8389 = lshr i32 %8388, 4
  %8390 = trunc i32 %8389 to i8
  %8391 = and i8 %8390, 1
  %8392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8391, i8* %8392, align 1
  %8393 = icmp eq i32 %8373, 0
  %8394 = zext i1 %8393 to i8
  %8395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8394, i8* %8395, align 1
  %8396 = lshr i32 %8373, 31
  %8397 = trunc i32 %8396 to i8
  %8398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8397, i8* %8398, align 1
  %8399 = lshr i32 %8372, 31
  %8400 = xor i32 %8396, %8399
  %8401 = add i32 %8400, %8396
  %8402 = icmp eq i32 %8401, 2
  %8403 = zext i1 %8402 to i8
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8403, i8* %8404, align 1
  store %struct.Memory* %loadMem_4017f8, %struct.Memory** %MEMORY
  %loadMem_4017fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 33
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8407 to i64*
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 1
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %8410 to i32*
  %8411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8412 = getelementptr inbounds %struct.GPR, %struct.GPR* %8411, i32 0, i32 7
  %8413 = getelementptr inbounds %struct.Reg, %struct.Reg* %8412, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %8413 to i64*
  %8414 = load i32, i32* %EAX.i54
  %8415 = zext i32 %8414 to i64
  %8416 = load i64, i64* %PC.i53
  %8417 = add i64 %8416, 3
  store i64 %8417, i64* %PC.i53
  %8418 = shl i64 %8415, 32
  %8419 = ashr exact i64 %8418, 32
  store i64 %8419, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_4017fb, %struct.Memory** %MEMORY
  %loadMem_4017fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8421 = getelementptr inbounds %struct.GPR, %struct.GPR* %8420, i32 0, i32 33
  %8422 = getelementptr inbounds %struct.Reg, %struct.Reg* %8421, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8422 to i64*
  %8423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8424 = getelementptr inbounds %struct.GPR, %struct.GPR* %8423, i32 0, i32 5
  %8425 = getelementptr inbounds %struct.Reg, %struct.Reg* %8424, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %8425 to i64*
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 7
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %8428 to i64*
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8429, i64 0, i64 0
  %XMM0.i52 = bitcast %union.VectorReg* %8430 to %union.vec128_t*
  %8431 = load i64, i64* %RCX.i50
  %8432 = load i64, i64* %RDX.i51
  %8433 = mul i64 %8432, 8
  %8434 = add i64 %8433, %8431
  %8435 = bitcast %union.vec128_t* %XMM0.i52 to i8*
  %8436 = load i64, i64* %PC.i49
  %8437 = add i64 %8436, 5
  store i64 %8437, i64* %PC.i49
  %8438 = bitcast i8* %8435 to double*
  %8439 = load double, double* %8438, align 1
  %8440 = inttoptr i64 %8434 to double*
  store double %8439, double* %8440
  store %struct.Memory* %loadMem_4017fe, %struct.Memory** %MEMORY
  %loadMem_401803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8442 = getelementptr inbounds %struct.GPR, %struct.GPR* %8441, i32 0, i32 33
  %8443 = getelementptr inbounds %struct.Reg, %struct.Reg* %8442, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %8443 to i64*
  %8444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8445 = getelementptr inbounds %struct.GPR, %struct.GPR* %8444, i32 0, i32 15
  %8446 = getelementptr inbounds %struct.Reg, %struct.Reg* %8445, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %8446 to i64*
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8447, i64 0, i64 0
  %YMM0.i48 = bitcast %union.VectorReg* %8448 to %"class.std::bitset"*
  %8449 = bitcast %"class.std::bitset"* %YMM0.i48 to i8*
  %8450 = load i64, i64* %RBP.i47
  %8451 = sub i64 %8450, 64
  %8452 = load i64, i64* %PC.i46
  %8453 = add i64 %8452, 5
  store i64 %8453, i64* %PC.i46
  %8454 = inttoptr i64 %8451 to double*
  %8455 = load double, double* %8454
  %8456 = bitcast i8* %8449 to double*
  store double %8455, double* %8456, align 1
  %8457 = getelementptr inbounds i8, i8* %8449, i64 8
  %8458 = bitcast i8* %8457 to double*
  store double 0.000000e+00, double* %8458, align 1
  store %struct.Memory* %loadMem_401803, %struct.Memory** %MEMORY
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8460 = getelementptr inbounds %struct.GPR, %struct.GPR* %8459, i32 0, i32 33
  %8461 = getelementptr inbounds %struct.Reg, %struct.Reg* %8460, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8461 to i64*
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8463 = getelementptr inbounds %struct.GPR, %struct.GPR* %8462, i32 0, i32 5
  %8464 = getelementptr inbounds %struct.Reg, %struct.Reg* %8463, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %8464 to i64*
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8466 = getelementptr inbounds %struct.GPR, %struct.GPR* %8465, i32 0, i32 15
  %8467 = getelementptr inbounds %struct.Reg, %struct.Reg* %8466, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %8467 to i64*
  %8468 = load i64, i64* %RBP.i45
  %8469 = sub i64 %8468, 24
  %8470 = load i64, i64* %PC.i43
  %8471 = add i64 %8470, 4
  store i64 %8471, i64* %PC.i43
  %8472 = inttoptr i64 %8469 to i64*
  %8473 = load i64, i64* %8472
  store i64 %8473, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_401808, %struct.Memory** %MEMORY
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8475 = getelementptr inbounds %struct.GPR, %struct.GPR* %8474, i32 0, i32 33
  %8476 = getelementptr inbounds %struct.Reg, %struct.Reg* %8475, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8476 to i64*
  %8477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8478 = getelementptr inbounds %struct.GPR, %struct.GPR* %8477, i32 0, i32 7
  %8479 = getelementptr inbounds %struct.Reg, %struct.Reg* %8478, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %8479 to i64*
  %8480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8481 = getelementptr inbounds %struct.GPR, %struct.GPR* %8480, i32 0, i32 15
  %8482 = getelementptr inbounds %struct.Reg, %struct.Reg* %8481, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8482 to i64*
  %8483 = load i64, i64* %RBP.i42
  %8484 = sub i64 %8483, 40
  %8485 = load i64, i64* %PC.i40
  %8486 = add i64 %8485, 4
  store i64 %8486, i64* %PC.i40
  %8487 = inttoptr i64 %8484 to i32*
  %8488 = load i32, i32* %8487
  %8489 = sext i32 %8488 to i64
  store i64 %8489, i64* %RDX.i41, align 8
  store %struct.Memory* %loadMem_40180c, %struct.Memory** %MEMORY
  %loadMem_401810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8491 = getelementptr inbounds %struct.GPR, %struct.GPR* %8490, i32 0, i32 33
  %8492 = getelementptr inbounds %struct.Reg, %struct.Reg* %8491, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8492 to i64*
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8494 = getelementptr inbounds %struct.GPR, %struct.GPR* %8493, i32 0, i32 5
  %8495 = getelementptr inbounds %struct.Reg, %struct.Reg* %8494, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %8495 to i64*
  %8496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8497 = getelementptr inbounds %struct.GPR, %struct.GPR* %8496, i32 0, i32 7
  %8498 = getelementptr inbounds %struct.Reg, %struct.Reg* %8497, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %8498 to i64*
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8499, i64 0, i64 0
  %XMM0.i39 = bitcast %union.VectorReg* %8500 to %union.vec128_t*
  %8501 = load i64, i64* %RCX.i37
  %8502 = load i64, i64* %RDX.i38
  %8503 = mul i64 %8502, 8
  %8504 = add i64 %8503, %8501
  %8505 = bitcast %union.vec128_t* %XMM0.i39 to i8*
  %8506 = load i64, i64* %PC.i36
  %8507 = add i64 %8506, 5
  store i64 %8507, i64* %PC.i36
  %8508 = bitcast i8* %8505 to double*
  %8509 = load double, double* %8508, align 1
  %8510 = inttoptr i64 %8504 to double*
  store double %8509, double* %8510
  store %struct.Memory* %loadMem_401810, %struct.Memory** %MEMORY
  %loadMem_401815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8512 = getelementptr inbounds %struct.GPR, %struct.GPR* %8511, i32 0, i32 33
  %8513 = getelementptr inbounds %struct.Reg, %struct.Reg* %8512, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8513 to i64*
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8515 = getelementptr inbounds %struct.GPR, %struct.GPR* %8514, i32 0, i32 15
  %8516 = getelementptr inbounds %struct.Reg, %struct.Reg* %8515, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %8516 to i64*
  %8517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8517, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %8518 to %"class.std::bitset"*
  %8519 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %8520 = load i64, i64* %RBP.i35
  %8521 = sub i64 %8520, 72
  %8522 = load i64, i64* %PC.i34
  %8523 = add i64 %8522, 5
  store i64 %8523, i64* %PC.i34
  %8524 = inttoptr i64 %8521 to double*
  %8525 = load double, double* %8524
  %8526 = bitcast i8* %8519 to double*
  store double %8525, double* %8526, align 1
  %8527 = getelementptr inbounds i8, i8* %8519, i64 8
  %8528 = bitcast i8* %8527 to double*
  store double 0.000000e+00, double* %8528, align 1
  store %struct.Memory* %loadMem_401815, %struct.Memory** %MEMORY
  %loadMem_40181a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8530 = getelementptr inbounds %struct.GPR, %struct.GPR* %8529, i32 0, i32 33
  %8531 = getelementptr inbounds %struct.Reg, %struct.Reg* %8530, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8531 to i64*
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8533 = getelementptr inbounds %struct.GPR, %struct.GPR* %8532, i32 0, i32 5
  %8534 = getelementptr inbounds %struct.Reg, %struct.Reg* %8533, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %8534 to i64*
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8536 = getelementptr inbounds %struct.GPR, %struct.GPR* %8535, i32 0, i32 15
  %8537 = getelementptr inbounds %struct.Reg, %struct.Reg* %8536, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8537 to i64*
  %8538 = load i64, i64* %RBP.i33
  %8539 = sub i64 %8538, 24
  %8540 = load i64, i64* %PC.i31
  %8541 = add i64 %8540, 4
  store i64 %8541, i64* %PC.i31
  %8542 = inttoptr i64 %8539 to i64*
  %8543 = load i64, i64* %8542
  store i64 %8543, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_40181a, %struct.Memory** %MEMORY
  %loadMem_40181e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8545 = getelementptr inbounds %struct.GPR, %struct.GPR* %8544, i32 0, i32 33
  %8546 = getelementptr inbounds %struct.Reg, %struct.Reg* %8545, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8546 to i64*
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8548 = getelementptr inbounds %struct.GPR, %struct.GPR* %8547, i32 0, i32 1
  %8549 = getelementptr inbounds %struct.Reg, %struct.Reg* %8548, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8549 to i64*
  %8550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8551 = getelementptr inbounds %struct.GPR, %struct.GPR* %8550, i32 0, i32 15
  %8552 = getelementptr inbounds %struct.Reg, %struct.Reg* %8551, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %8552 to i64*
  %8553 = load i64, i64* %RBP.i30
  %8554 = sub i64 %8553, 40
  %8555 = load i64, i64* %PC.i28
  %8556 = add i64 %8555, 3
  store i64 %8556, i64* %PC.i28
  %8557 = inttoptr i64 %8554 to i32*
  %8558 = load i32, i32* %8557
  %8559 = zext i32 %8558 to i64
  store i64 %8559, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_40181e, %struct.Memory** %MEMORY
  %loadMem_401821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8561 = getelementptr inbounds %struct.GPR, %struct.GPR* %8560, i32 0, i32 33
  %8562 = getelementptr inbounds %struct.Reg, %struct.Reg* %8561, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8562 to i64*
  %8563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8564 = getelementptr inbounds %struct.GPR, %struct.GPR* %8563, i32 0, i32 1
  %8565 = getelementptr inbounds %struct.Reg, %struct.Reg* %8564, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %8565 to i64*
  %8566 = load i64, i64* %RAX.i27
  %8567 = load i64, i64* %PC.i26
  %8568 = add i64 %8567, 3
  store i64 %8568, i64* %PC.i26
  %8569 = trunc i64 %8566 to i32
  %8570 = add i32 1, %8569
  %8571 = zext i32 %8570 to i64
  store i64 %8571, i64* %RAX.i27, align 8
  %8572 = icmp ult i32 %8570, %8569
  %8573 = icmp ult i32 %8570, 1
  %8574 = or i1 %8572, %8573
  %8575 = zext i1 %8574 to i8
  %8576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8575, i8* %8576, align 1
  %8577 = and i32 %8570, 255
  %8578 = call i32 @llvm.ctpop.i32(i32 %8577)
  %8579 = trunc i32 %8578 to i8
  %8580 = and i8 %8579, 1
  %8581 = xor i8 %8580, 1
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8581, i8* %8582, align 1
  %8583 = xor i64 1, %8566
  %8584 = trunc i64 %8583 to i32
  %8585 = xor i32 %8584, %8570
  %8586 = lshr i32 %8585, 4
  %8587 = trunc i32 %8586 to i8
  %8588 = and i8 %8587, 1
  %8589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8588, i8* %8589, align 1
  %8590 = icmp eq i32 %8570, 0
  %8591 = zext i1 %8590 to i8
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8591, i8* %8592, align 1
  %8593 = lshr i32 %8570, 31
  %8594 = trunc i32 %8593 to i8
  %8595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8594, i8* %8595, align 1
  %8596 = lshr i32 %8569, 31
  %8597 = xor i32 %8593, %8596
  %8598 = add i32 %8597, %8593
  %8599 = icmp eq i32 %8598, 2
  %8600 = zext i1 %8599 to i8
  %8601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8600, i8* %8601, align 1
  store %struct.Memory* %loadMem_401821, %struct.Memory** %MEMORY
  %loadMem_401824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8603 = getelementptr inbounds %struct.GPR, %struct.GPR* %8602, i32 0, i32 33
  %8604 = getelementptr inbounds %struct.Reg, %struct.Reg* %8603, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8604 to i64*
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8606 = getelementptr inbounds %struct.GPR, %struct.GPR* %8605, i32 0, i32 1
  %8607 = getelementptr inbounds %struct.Reg, %struct.Reg* %8606, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %8607 to i32*
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8609 = getelementptr inbounds %struct.GPR, %struct.GPR* %8608, i32 0, i32 7
  %8610 = getelementptr inbounds %struct.Reg, %struct.Reg* %8609, i32 0, i32 0
  %RDX.i25 = bitcast %union.anon* %8610 to i64*
  %8611 = load i32, i32* %EAX.i24
  %8612 = zext i32 %8611 to i64
  %8613 = load i64, i64* %PC.i23
  %8614 = add i64 %8613, 3
  store i64 %8614, i64* %PC.i23
  %8615 = shl i64 %8612, 32
  %8616 = ashr exact i64 %8615, 32
  store i64 %8616, i64* %RDX.i25, align 8
  store %struct.Memory* %loadMem_401824, %struct.Memory** %MEMORY
  %loadMem_401827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8618 = getelementptr inbounds %struct.GPR, %struct.GPR* %8617, i32 0, i32 33
  %8619 = getelementptr inbounds %struct.Reg, %struct.Reg* %8618, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8619 to i64*
  %8620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8621 = getelementptr inbounds %struct.GPR, %struct.GPR* %8620, i32 0, i32 5
  %8622 = getelementptr inbounds %struct.Reg, %struct.Reg* %8621, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8622 to i64*
  %8623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8624 = getelementptr inbounds %struct.GPR, %struct.GPR* %8623, i32 0, i32 7
  %8625 = getelementptr inbounds %struct.Reg, %struct.Reg* %8624, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8625 to i64*
  %8626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8626, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %8627 to %union.vec128_t*
  %8628 = load i64, i64* %RCX.i
  %8629 = load i64, i64* %RDX.i
  %8630 = mul i64 %8629, 8
  %8631 = add i64 %8630, %8628
  %8632 = bitcast %union.vec128_t* %XMM0.i to i8*
  %8633 = load i64, i64* %PC.i22
  %8634 = add i64 %8633, 5
  store i64 %8634, i64* %PC.i22
  %8635 = bitcast i8* %8632 to double*
  %8636 = load double, double* %8635, align 1
  %8637 = inttoptr i64 %8631 to double*
  store double %8636, double* %8637
  store %struct.Memory* %loadMem_401827, %struct.Memory** %MEMORY
  %loadMem_40182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8639 = getelementptr inbounds %struct.GPR, %struct.GPR* %8638, i32 0, i32 33
  %8640 = getelementptr inbounds %struct.Reg, %struct.Reg* %8639, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8640 to i64*
  %8641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8642 = getelementptr inbounds %struct.GPR, %struct.GPR* %8641, i32 0, i32 1
  %8643 = getelementptr inbounds %struct.Reg, %struct.Reg* %8642, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8643 to i64*
  %8644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8645 = getelementptr inbounds %struct.GPR, %struct.GPR* %8644, i32 0, i32 15
  %8646 = getelementptr inbounds %struct.Reg, %struct.Reg* %8645, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8646 to i64*
  %8647 = load i64, i64* %RBP.i21
  %8648 = sub i64 %8647, 28
  %8649 = load i64, i64* %PC.i19
  %8650 = add i64 %8649, 3
  store i64 %8650, i64* %PC.i19
  %8651 = inttoptr i64 %8648 to i32*
  %8652 = load i32, i32* %8651
  %8653 = zext i32 %8652 to i64
  store i64 %8653, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_40182c, %struct.Memory** %MEMORY
  %loadMem_40182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8655 = getelementptr inbounds %struct.GPR, %struct.GPR* %8654, i32 0, i32 33
  %8656 = getelementptr inbounds %struct.Reg, %struct.Reg* %8655, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8656 to i64*
  %8657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8658 = getelementptr inbounds %struct.GPR, %struct.GPR* %8657, i32 0, i32 1
  %8659 = getelementptr inbounds %struct.Reg, %struct.Reg* %8658, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8659 to i64*
  %8660 = load i64, i64* %RAX.i18
  %8661 = load i64, i64* %PC.i17
  %8662 = add i64 %8661, 3
  store i64 %8662, i64* %PC.i17
  %8663 = trunc i64 %8660 to i32
  %8664 = add i32 1, %8663
  %8665 = zext i32 %8664 to i64
  store i64 %8665, i64* %RAX.i18, align 8
  %8666 = icmp ult i32 %8664, %8663
  %8667 = icmp ult i32 %8664, 1
  %8668 = or i1 %8666, %8667
  %8669 = zext i1 %8668 to i8
  %8670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8669, i8* %8670, align 1
  %8671 = and i32 %8664, 255
  %8672 = call i32 @llvm.ctpop.i32(i32 %8671)
  %8673 = trunc i32 %8672 to i8
  %8674 = and i8 %8673, 1
  %8675 = xor i8 %8674, 1
  %8676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8675, i8* %8676, align 1
  %8677 = xor i64 1, %8660
  %8678 = trunc i64 %8677 to i32
  %8679 = xor i32 %8678, %8664
  %8680 = lshr i32 %8679, 4
  %8681 = trunc i32 %8680 to i8
  %8682 = and i8 %8681, 1
  %8683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8682, i8* %8683, align 1
  %8684 = icmp eq i32 %8664, 0
  %8685 = zext i1 %8684 to i8
  %8686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8685, i8* %8686, align 1
  %8687 = lshr i32 %8664, 31
  %8688 = trunc i32 %8687 to i8
  %8689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8688, i8* %8689, align 1
  %8690 = lshr i32 %8663, 31
  %8691 = xor i32 %8687, %8690
  %8692 = add i32 %8691, %8687
  %8693 = icmp eq i32 %8692, 2
  %8694 = zext i1 %8693 to i8
  %8695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8694, i8* %8695, align 1
  store %struct.Memory* %loadMem_40182f, %struct.Memory** %MEMORY
  %loadMem_401832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8697 = getelementptr inbounds %struct.GPR, %struct.GPR* %8696, i32 0, i32 33
  %8698 = getelementptr inbounds %struct.Reg, %struct.Reg* %8697, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8698 to i64*
  %8699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8700 = getelementptr inbounds %struct.GPR, %struct.GPR* %8699, i32 0, i32 1
  %8701 = getelementptr inbounds %struct.Reg, %struct.Reg* %8700, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %8701 to i32*
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8703 = getelementptr inbounds %struct.GPR, %struct.GPR* %8702, i32 0, i32 15
  %8704 = getelementptr inbounds %struct.Reg, %struct.Reg* %8703, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8704 to i64*
  %8705 = load i64, i64* %RBP.i16
  %8706 = sub i64 %8705, 28
  %8707 = load i32, i32* %EAX.i15
  %8708 = zext i32 %8707 to i64
  %8709 = load i64, i64* %PC.i14
  %8710 = add i64 %8709, 3
  store i64 %8710, i64* %PC.i14
  %8711 = inttoptr i64 %8706 to i32*
  store i32 %8707, i32* %8711
  store %struct.Memory* %loadMem_401832, %struct.Memory** %MEMORY
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8713 = getelementptr inbounds %struct.GPR, %struct.GPR* %8712, i32 0, i32 33
  %8714 = getelementptr inbounds %struct.Reg, %struct.Reg* %8713, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8714 to i64*
  %8715 = load i64, i64* %PC.i13
  %8716 = add i64 %8715, -407
  %8717 = load i64, i64* %PC.i13
  %8718 = add i64 %8717, 5
  store i64 %8718, i64* %PC.i13
  %8719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8716, i64* %8719, align 8
  store %struct.Memory* %loadMem_401835, %struct.Memory** %MEMORY
  br label %block_.L_40169e

block_.L_40183a:                                  ; preds = %block_.L_40169e
  %loadMem_40183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8721 = getelementptr inbounds %struct.GPR, %struct.GPR* %8720, i32 0, i32 33
  %8722 = getelementptr inbounds %struct.Reg, %struct.Reg* %8721, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8722 to i64*
  %8723 = load i64, i64* %PC.i12
  %8724 = add i64 %8723, 5
  %8725 = load i64, i64* %PC.i12
  %8726 = add i64 %8725, 5
  store i64 %8726, i64* %PC.i12
  %8727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8724, i64* %8727, align 8
  store %struct.Memory* %loadMem_40183a, %struct.Memory** %MEMORY
  br label %block_.L_40183f

block_.L_40183f:                                  ; preds = %block_.L_40183a
  %loadMem_40183f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8729 = getelementptr inbounds %struct.GPR, %struct.GPR* %8728, i32 0, i32 33
  %8730 = getelementptr inbounds %struct.Reg, %struct.Reg* %8729, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8730 to i64*
  %8731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8732 = getelementptr inbounds %struct.GPR, %struct.GPR* %8731, i32 0, i32 1
  %8733 = getelementptr inbounds %struct.Reg, %struct.Reg* %8732, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %8733 to i64*
  %8734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8735 = getelementptr inbounds %struct.GPR, %struct.GPR* %8734, i32 0, i32 15
  %8736 = getelementptr inbounds %struct.Reg, %struct.Reg* %8735, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8736 to i64*
  %8737 = load i64, i64* %RBP.i11
  %8738 = sub i64 %8737, 36
  %8739 = load i64, i64* %PC.i9
  %8740 = add i64 %8739, 3
  store i64 %8740, i64* %PC.i9
  %8741 = inttoptr i64 %8738 to i32*
  %8742 = load i32, i32* %8741
  %8743 = zext i32 %8742 to i64
  store i64 %8743, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_40183f, %struct.Memory** %MEMORY
  %loadMem_401842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8745 = getelementptr inbounds %struct.GPR, %struct.GPR* %8744, i32 0, i32 33
  %8746 = getelementptr inbounds %struct.Reg, %struct.Reg* %8745, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8746 to i64*
  %8747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8748 = getelementptr inbounds %struct.GPR, %struct.GPR* %8747, i32 0, i32 1
  %8749 = getelementptr inbounds %struct.Reg, %struct.Reg* %8748, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8749 to i64*
  %8750 = load i64, i64* %RAX.i
  %8751 = load i64, i64* %PC.i8
  %8752 = add i64 %8751, 3
  store i64 %8752, i64* %PC.i8
  %8753 = trunc i64 %8750 to i32
  %8754 = add i32 1, %8753
  %8755 = zext i32 %8754 to i64
  store i64 %8755, i64* %RAX.i, align 8
  %8756 = icmp ult i32 %8754, %8753
  %8757 = icmp ult i32 %8754, 1
  %8758 = or i1 %8756, %8757
  %8759 = zext i1 %8758 to i8
  %8760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8759, i8* %8760, align 1
  %8761 = and i32 %8754, 255
  %8762 = call i32 @llvm.ctpop.i32(i32 %8761)
  %8763 = trunc i32 %8762 to i8
  %8764 = and i8 %8763, 1
  %8765 = xor i8 %8764, 1
  %8766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8765, i8* %8766, align 1
  %8767 = xor i64 1, %8750
  %8768 = trunc i64 %8767 to i32
  %8769 = xor i32 %8768, %8754
  %8770 = lshr i32 %8769, 4
  %8771 = trunc i32 %8770 to i8
  %8772 = and i8 %8771, 1
  %8773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8772, i8* %8773, align 1
  %8774 = icmp eq i32 %8754, 0
  %8775 = zext i1 %8774 to i8
  %8776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8775, i8* %8776, align 1
  %8777 = lshr i32 %8754, 31
  %8778 = trunc i32 %8777 to i8
  %8779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8778, i8* %8779, align 1
  %8780 = lshr i32 %8753, 31
  %8781 = xor i32 %8777, %8780
  %8782 = add i32 %8781, %8777
  %8783 = icmp eq i32 %8782, 2
  %8784 = zext i1 %8783 to i8
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8784, i8* %8785, align 1
  store %struct.Memory* %loadMem_401842, %struct.Memory** %MEMORY
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8787 = getelementptr inbounds %struct.GPR, %struct.GPR* %8786, i32 0, i32 33
  %8788 = getelementptr inbounds %struct.Reg, %struct.Reg* %8787, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8788 to i64*
  %8789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8790 = getelementptr inbounds %struct.GPR, %struct.GPR* %8789, i32 0, i32 1
  %8791 = getelementptr inbounds %struct.Reg, %struct.Reg* %8790, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8791 to i32*
  %8792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8793 = getelementptr inbounds %struct.GPR, %struct.GPR* %8792, i32 0, i32 15
  %8794 = getelementptr inbounds %struct.Reg, %struct.Reg* %8793, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8794 to i64*
  %8795 = load i64, i64* %RBP.i7
  %8796 = sub i64 %8795, 36
  %8797 = load i32, i32* %EAX.i
  %8798 = zext i32 %8797 to i64
  %8799 = load i64, i64* %PC.i6
  %8800 = add i64 %8799, 3
  store i64 %8800, i64* %PC.i6
  %8801 = inttoptr i64 %8796 to i32*
  store i32 %8797, i32* %8801
  store %struct.Memory* %loadMem_401845, %struct.Memory** %MEMORY
  %loadMem_401848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8803 = getelementptr inbounds %struct.GPR, %struct.GPR* %8802, i32 0, i32 33
  %8804 = getelementptr inbounds %struct.Reg, %struct.Reg* %8803, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8804 to i64*
  %8805 = load i64, i64* %PC.i5
  %8806 = add i64 %8805, -445
  %8807 = load i64, i64* %PC.i5
  %8808 = add i64 %8807, 5
  store i64 %8808, i64* %PC.i5
  %8809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8806, i64* %8809, align 8
  store %struct.Memory* %loadMem_401848, %struct.Memory** %MEMORY
  br label %block_.L_40168b

block_.L_40184d:                                  ; preds = %block_.L_40168b
  %loadMem_40184d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8811 = getelementptr inbounds %struct.GPR, %struct.GPR* %8810, i32 0, i32 33
  %8812 = getelementptr inbounds %struct.Reg, %struct.Reg* %8811, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8812 to i64*
  %8813 = load i64, i64* %PC.i4
  %8814 = add i64 %8813, 5
  %8815 = load i64, i64* %PC.i4
  %8816 = add i64 %8815, 5
  store i64 %8816, i64* %PC.i4
  %8817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8814, i64* %8817, align 8
  store %struct.Memory* %loadMem_40184d, %struct.Memory** %MEMORY
  br label %block_.L_401852

block_.L_401852:                                  ; preds = %block_.L_40184d, %block_.L_40167f
  %loadMem_401852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8819 = getelementptr inbounds %struct.GPR, %struct.GPR* %8818, i32 0, i32 33
  %8820 = getelementptr inbounds %struct.Reg, %struct.Reg* %8819, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8820 to i64*
  %8821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8822 = getelementptr inbounds %struct.GPR, %struct.GPR* %8821, i32 0, i32 15
  %8823 = getelementptr inbounds %struct.Reg, %struct.Reg* %8822, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8823 to i64*
  %8824 = load i64, i64* %PC.i2
  %8825 = add i64 %8824, 1
  store i64 %8825, i64* %PC.i2
  %8826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8827 = load i64, i64* %8826, align 8
  %8828 = add i64 %8827, 8
  %8829 = inttoptr i64 %8827 to i64*
  %8830 = load i64, i64* %8829
  store i64 %8830, i64* %RBP.i3, align 8
  store i64 %8828, i64* %8826, align 8
  store %struct.Memory* %loadMem_401852, %struct.Memory** %MEMORY
  %loadMem_401853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8832 = getelementptr inbounds %struct.GPR, %struct.GPR* %8831, i32 0, i32 33
  %8833 = getelementptr inbounds %struct.Reg, %struct.Reg* %8832, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8833 to i64*
  %8834 = load i64, i64* %PC.i1
  %8835 = add i64 %8834, 1
  store i64 %8835, i64* %PC.i1
  %8836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8838 = load i64, i64* %8837, align 8
  %8839 = inttoptr i64 %8838 to i64*
  %8840 = load i64, i64* %8839
  store i64 %8840, i64* %8836, align 8
  %8841 = add i64 %8838, 8
  store i64 %8841, i64* %8837, align 8
  store %struct.Memory* %loadMem_401853, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_401853
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %12, %19
  %21 = icmp ult i32 %12, %19
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %20, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %19, %12
  %31 = xor i32 %30, %20
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %20, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %12, 31
  %43 = lshr i32 %19, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40126b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %12, %19
  %21 = icmp ult i32 %12, %19
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %20, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %19, %12
  %31 = xor i32 %30, %20
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %20, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %12, 31
  %43 = lshr i32 %19, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40125d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %9
  %27 = trunc i64 %26 to i32
  %28 = xor i32 %27, %13
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %13, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %13, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %12, 31
  %40 = xor i32 %36, %39
  %41 = add i32 %40, %36
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401225(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401206(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401684(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40167f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %12, %19
  %21 = icmp ult i32 %12, %19
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %20, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %19, %12
  %31 = xor i32 %30, %20
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %20, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %12, 31
  %43 = lshr i32 %19, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4015ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40129d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40128a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401852(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40184d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40183a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40169e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40183f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40168b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBP, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline }
