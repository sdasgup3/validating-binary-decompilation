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
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
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
%struct.anon.2 = type { i8, i8 }

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
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400590.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @fourn(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400b60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400b60, %struct.Memory** %MEMORY
  %loadMem_400b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i378 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i378
  %27 = load i64, i64* %PC.i377
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i377
  store i64 %26, i64* %RBP.i379, align 8
  store %struct.Memory* %loadMem_400b61, %struct.Memory** %MEMORY
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i729 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i729
  %36 = load i64, i64* %PC.i728
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i728
  %38 = sub i64 %35, 192
  store i64 %38, i64* %RSP.i729, align 8
  %39 = icmp ult i64 %35, 192
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %41, align 1
  %42 = trunc i64 %38 to i32
  %43 = and i32 %42, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %47, i8* %48, align 1
  %49 = xor i64 192, %35
  %50 = xor i64 %49, %38
  %51 = lshr i64 %50, 4
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %53, i8* %54, align 1
  %55 = icmp eq i64 %38, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %38, 63
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1
  %61 = lshr i64 %35, 63
  %62 = xor i64 %58, %61
  %63 = add i64 %62, %61
  %64 = icmp eq i64 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1
  store %struct.Memory* %loadMem_400b64, %struct.Memory** %MEMORY
  %loadMem_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i814
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i
  %79 = load i64, i64* %PC.i813
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i813
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_400b6b, %struct.Memory** %MEMORY
  %loadMem_400b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i811 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i812
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i811
  %94 = load i64, i64* %PC.i810
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i810
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_400b6f, %struct.Memory** %MEMORY
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EDX.i808 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i809
  %107 = sub i64 %106, 20
  %108 = load i32, i32* %EDX.i808
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i807
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i807
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %ECX.i805 = bitcast %union.anon* %118 to i32*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i806
  %123 = sub i64 %122, 24
  %124 = load i32, i32* %ECX.i805
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC.i804
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i804
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  store %struct.Memory* %loadMem_400b76, %struct.Memory** %MEMORY
  %loadMem_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i803
  %136 = sub i64 %135, 96
  %137 = load i64, i64* %PC.i802
  %138 = add i64 %137, 7
  store i64 %138, i64* %PC.i802
  %139 = inttoptr i64 %136 to i32*
  store i32 1, i32* %139
  store %struct.Memory* %loadMem_400b79, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i801
  %147 = sub i64 %146, 72
  %148 = load i64, i64* %PC.i800
  %149 = add i64 %148, 7
  store i64 %149, i64* %PC.i800
  %150 = inttoptr i64 %147 to i32*
  store i32 1, i32* %150
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  br label %block_.L_400b87

block_.L_400b87:                                  ; preds = %block_400b93, %entry
  %loadMem_400b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i799
  %161 = sub i64 %160, 72
  %162 = load i64, i64* %PC.i797
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i797
  %164 = inttoptr i64 %161 to i32*
  %165 = load i32, i32* %164
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_400b87, %struct.Memory** %MEMORY
  %loadMem_400b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %172 to i32*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %175 to i64*
  %176 = load i32, i32* %EAX.i795
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %RBP.i796
  %179 = sub i64 %178, 20
  %180 = load i64, i64* %PC.i794
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC.i794
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = sub i32 %176, %183
  %185 = icmp ult i32 %176, %183
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %186, i8* %187, align 1
  %188 = and i32 %184, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %192, i8* %193, align 1
  %194 = xor i32 %183, %176
  %195 = xor i32 %194, %184
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %198, i8* %199, align 1
  %200 = icmp eq i32 %184, 0
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %201, i8* %202, align 1
  %203 = lshr i32 %184, 31
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %204, i8* %205, align 1
  %206 = lshr i32 %176, 31
  %207 = lshr i32 %183, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %203, %206
  %210 = add i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1
  store %struct.Memory* %loadMem_400b8a, %struct.Memory** %MEMORY
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %PC.i793
  %218 = add i64 %217, 38
  %219 = load i64, i64* %PC.i793
  %220 = add i64 %219, 6
  %221 = load i64, i64* %PC.i793
  %222 = add i64 %221, 6
  store i64 %222, i64* %PC.i793
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %224 = load i8, i8* %223, align 1
  %225 = icmp eq i8 %224, 0
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %227 = load i8, i8* %226, align 1
  %228 = icmp ne i8 %227, 0
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %230 = load i8, i8* %229, align 1
  %231 = icmp ne i8 %230, 0
  %232 = xor i1 %228, %231
  %233 = xor i1 %232, true
  %234 = and i1 %225, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %BRANCH_TAKEN, align 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %237 = select i1 %234, i64 %218, i64 %220
  store i64 %237, i64* %236, align 8
  store %struct.Memory* %loadMem_400b8d, %struct.Memory** %MEMORY
  %loadBr_400b8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b8d = icmp eq i8 %loadBr_400b8d, 1
  br i1 %cmpBr_400b8d, label %block_.L_400bb3, label %block_400b93

block_400b93:                                     ; preds = %block_.L_400b87
  %loadMem_400b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i792
  %248 = sub i64 %247, 16
  %249 = load i64, i64* %PC.i790
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i790
  %251 = inttoptr i64 %248 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %RAX.i791, align 8
  store %struct.Memory* %loadMem_400b93, %struct.Memory** %MEMORY
  %loadMem_400b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i789
  %263 = sub i64 %262, 72
  %264 = load i64, i64* %PC.i787
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC.i787
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %RCX.i788, align 8
  store %struct.Memory* %loadMem_400b97, %struct.Memory** %MEMORY
  %loadMem_400b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RDX.i786 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RAX.i784
  %282 = load i64, i64* %RCX.i785
  %283 = mul i64 %282, 4
  %284 = add i64 %283, %281
  %285 = load i64, i64* %PC.i783
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC.i783
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RDX.i786, align 8
  store %struct.Memory* %loadMem_400b9b, %struct.Memory** %MEMORY
  %loadMem_400b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 15
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %298 to i64*
  %299 = load i64, i64* %RDX.i781
  %300 = load i64, i64* %RBP.i782
  %301 = sub i64 %300, 96
  %302 = load i64, i64* %PC.i780
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC.i780
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = shl i64 %299, 32
  %307 = ashr exact i64 %306, 32
  %308 = sext i32 %305 to i64
  %309 = mul i64 %308, %307
  %310 = trunc i64 %309 to i32
  %311 = and i64 %309, 4294967295
  store i64 %311, i64* %RDX.i781, align 8
  %312 = shl i64 %309, 32
  %313 = ashr exact i64 %312, 32
  %314 = icmp ne i64 %313, %309
  %315 = zext i1 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %315, i8* %316, align 1
  %317 = and i32 %310, 255
  %318 = call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %321, i8* %322, align 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %323, align 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %324, align 1
  %325 = lshr i32 %310, 31
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %326, i8* %327, align 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %315, i8* %328, align 1
  store %struct.Memory* %loadMem_400b9e, %struct.Memory** %MEMORY
  %loadMem_400ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %EDX.i778 = bitcast %union.anon* %334 to i32*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i779
  %339 = sub i64 %338, 96
  %340 = load i32, i32* %EDX.i778
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC.i777
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC.i777
  %344 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %344
  store %struct.Memory* %loadMem_400ba2, %struct.Memory** %MEMORY
  %loadMem_400ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i776
  %355 = sub i64 %354, 72
  %356 = load i64, i64* %PC.i774
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC.i774
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_400ba5, %struct.Memory** %MEMORY
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RAX.i773
  %368 = load i64, i64* %PC.i772
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC.i772
  %370 = trunc i64 %367 to i32
  %371 = add i32 1, %370
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX.i773, align 8
  %373 = icmp ult i32 %371, %370
  %374 = icmp ult i32 %371, 1
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %376, i8* %377, align 1
  %378 = and i32 %371, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = xor i64 1, %367
  %385 = trunc i64 %384 to i32
  %386 = xor i32 %385, %371
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i32 %371, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %371, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %370, 31
  %398 = xor i32 %394, %397
  %399 = add i32 %398, %394
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %401, i8* %402, align 1
  store %struct.Memory* %loadMem_400ba8, %struct.Memory** %MEMORY
  %loadMem_400bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EAX.i770 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i771
  %413 = sub i64 %412, 72
  %414 = load i32, i32* %EAX.i770
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC.i769
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC.i769
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  store %struct.Memory* %loadMem_400bab, %struct.Memory** %MEMORY
  %loadMem_400bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i768
  %423 = add i64 %422, -39
  %424 = load i64, i64* %PC.i768
  %425 = add i64 %424, 5
  store i64 %425, i64* %PC.i768
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %423, i64* %426, align 8
  store %struct.Memory* %loadMem_400bae, %struct.Memory** %MEMORY
  br label %block_.L_400b87

block_.L_400bb3:                                  ; preds = %block_.L_400b87
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 15
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RBP.i767
  %434 = sub i64 %433, 88
  %435 = load i64, i64* %PC.i766
  %436 = add i64 %435, 7
  store i64 %436, i64* %PC.i766
  %437 = inttoptr i64 %434 to i32*
  store i32 1, i32* %437
  store %struct.Memory* %loadMem_400bb3, %struct.Memory** %MEMORY
  %loadMem_400bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RBP.i765
  %448 = sub i64 %447, 20
  %449 = load i64, i64* %PC.i763
  %450 = add i64 %449, 3
  store i64 %450, i64* %PC.i763
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i764, align 8
  store %struct.Memory* %loadMem_400bba, %struct.Memory** %MEMORY
  %loadMem_400bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %EAX.i761 = bitcast %union.anon* %459 to i32*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 15
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %RBP.i762
  %464 = sub i64 %463, 72
  %465 = load i32, i32* %EAX.i761
  %466 = zext i32 %465 to i64
  %467 = load i64, i64* %PC.i760
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC.i760
  %469 = inttoptr i64 %464 to i32*
  store i32 %465, i32* %469
  store %struct.Memory* %loadMem_400bbd, %struct.Memory** %MEMORY
  br label %block_.L_400bc0

block_.L_400bc0:                                  ; preds = %block_.L_40103e, %block_.L_400bb3
  %loadMem_400bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 15
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RBP.i759
  %477 = sub i64 %476, 72
  %478 = load i64, i64* %PC.i758
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i758
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480
  %482 = sub i32 %481, 1
  %483 = icmp ult i32 %481, 1
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %484, i8* %485, align 1
  %486 = and i32 %482, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1
  %492 = xor i32 %481, 1
  %493 = xor i32 %492, %482
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %496, i8* %497, align 1
  %498 = icmp eq i32 %482, 0
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %499, i8* %500, align 1
  %501 = lshr i32 %482, 31
  %502 = trunc i32 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %502, i8* %503, align 1
  %504 = lshr i32 %481, 31
  %505 = xor i32 %501, %504
  %506 = add i32 %505, %504
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %508, i8* %509, align 1
  store %struct.Memory* %loadMem_400bc0, %struct.Memory** %MEMORY
  %loadMem_400bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %PC.i757
  %514 = add i64 %513, 1170
  %515 = load i64, i64* %PC.i757
  %516 = add i64 %515, 6
  %517 = load i64, i64* %PC.i757
  %518 = add i64 %517, 6
  store i64 %518, i64* %PC.i757
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %520 = load i8, i8* %519, align 1
  %521 = icmp ne i8 %520, 0
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %523 = load i8, i8* %522, align 1
  %524 = icmp ne i8 %523, 0
  %525 = xor i1 %521, %524
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %BRANCH_TAKEN, align 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %528 = select i1 %525, i64 %514, i64 %516
  store i64 %528, i64* %527, align 8
  store %struct.Memory* %loadMem_400bc4, %struct.Memory** %MEMORY
  %loadBr_400bc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bc4 = icmp eq i8 %loadBr_400bc4, 1
  br i1 %cmpBr_400bc4, label %block_.L_401056, label %block_400bca

block_400bca:                                     ; preds = %block_.L_400bc0
  %loadMem_400bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i756
  %539 = sub i64 %538, 16
  %540 = load i64, i64* %PC.i754
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC.i754
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX.i755, align 8
  store %struct.Memory* %loadMem_400bca, %struct.Memory** %MEMORY
  %loadMem_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 5
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 15
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RBP.i753
  %554 = sub i64 %553, 72
  %555 = load i64, i64* %PC.i751
  %556 = add i64 %555, 4
  store i64 %556, i64* %PC.i751
  %557 = inttoptr i64 %554 to i32*
  %558 = load i32, i32* %557
  %559 = sext i32 %558 to i64
  store i64 %559, i64* %RCX.i752, align 8
  store %struct.Memory* %loadMem_400bce, %struct.Memory** %MEMORY
  %loadMem_400bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 5
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RCX.i749 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 7
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RDX.i750 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RAX.i748
  %573 = load i64, i64* %RCX.i749
  %574 = mul i64 %573, 4
  %575 = add i64 %574, %572
  %576 = load i64, i64* %PC.i747
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC.i747
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RDX.i750, align 8
  store %struct.Memory* %loadMem_400bd2, %struct.Memory** %MEMORY
  %loadMem_400bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 7
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %EDX.i745 = bitcast %union.anon* %586 to i32*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i746
  %591 = sub i64 %590, 84
  %592 = load i32, i32* %EDX.i745
  %593 = zext i32 %592 to i64
  %594 = load i64, i64* %PC.i744
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i744
  %596 = inttoptr i64 %591 to i32*
  store i32 %592, i32* %596
  store %struct.Memory* %loadMem_400bd5, %struct.Memory** %MEMORY
  %loadMem_400bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i743
  %607 = sub i64 %606, 96
  %608 = load i64, i64* %PC.i741
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC.i741
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i742, align 8
  store %struct.Memory* %loadMem_400bd8, %struct.Memory** %MEMORY
  %loadMem_400bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 7
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RDX.i739 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 15
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %RBP.i740
  %623 = sub i64 %622, 84
  %624 = load i64, i64* %PC.i738
  %625 = add i64 %624, 3
  store i64 %625, i64* %PC.i738
  %626 = inttoptr i64 %623 to i32*
  %627 = load i32, i32* %626
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RDX.i739, align 8
  store %struct.Memory* %loadMem_400bdb, %struct.Memory** %MEMORY
  %loadMem_400bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 7
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RDX.i736
  %639 = load i64, i64* %RBP.i737
  %640 = sub i64 %639, 88
  %641 = load i64, i64* %PC.i735
  %642 = add i64 %641, 4
  store i64 %642, i64* %PC.i735
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = shl i64 %638, 32
  %646 = ashr exact i64 %645, 32
  %647 = sext i32 %644 to i64
  %648 = mul i64 %647, %646
  %649 = trunc i64 %648 to i32
  %650 = and i64 %648, 4294967295
  store i64 %650, i64* %RDX.i736, align 8
  %651 = shl i64 %648, 32
  %652 = ashr exact i64 %651, 32
  %653 = icmp ne i64 %652, %648
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %654, i8* %655, align 1
  %656 = and i32 %649, 255
  %657 = call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %660, i8* %661, align 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %662, align 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %663, align 1
  %664 = lshr i32 %649, 31
  %665 = trunc i32 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %654, i8* %667, align 1
  store %struct.Memory* %loadMem_400bde, %struct.Memory** %MEMORY
  %loadMem_400be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %673 to i32*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i734
  %678 = sub i64 %677, 164
  %679 = load i32, i32* %EDX.i
  %680 = zext i32 %679 to i64
  %681 = load i64, i64* %PC.i733
  %682 = add i64 %681, 6
  store i64 %682, i64* %PC.i733
  %683 = inttoptr i64 %678 to i32*
  store i32 %679, i32* %683
  store %struct.Memory* %loadMem_400be2, %struct.Memory** %MEMORY
  %loadMem_400be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i732
  %688 = add i64 %687, 1
  store i64 %688, i64* %PC.i732
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %691 = bitcast %union.anon* %690 to i32*
  %692 = load i32, i32* %691, align 8
  %693 = sext i32 %692 to i64
  %694 = lshr i64 %693, 32
  store i64 %694, i64* %689, align 8
  store %struct.Memory* %loadMem_400be8, %struct.Memory** %MEMORY
  %loadMem_400be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 9
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i731
  %705 = sub i64 %704, 164
  %706 = load i64, i64* %PC.i730
  %707 = add i64 %706, 6
  store i64 %707, i64* %PC.i730
  %708 = inttoptr i64 %705 to i32*
  %709 = load i32, i32* %708
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400be9, %struct.Memory** %MEMORY
  %loadMem_400bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 9
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %716 to i32*
  %717 = load i32, i32* %ESI.i
  %718 = zext i32 %717 to i64
  %719 = load i64, i64* %PC.i727
  %720 = add i64 %719, 2
  store i64 %720, i64* %PC.i727
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %722 = bitcast %union.anon* %721 to i32*
  %723 = load i32, i32* %722, align 8
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %726 = bitcast %union.anon* %725 to i32*
  %727 = load i32, i32* %726, align 8
  %728 = zext i32 %727 to i64
  %729 = shl i64 %718, 32
  %730 = ashr exact i64 %729, 32
  %731 = shl i64 %728, 32
  %732 = or i64 %731, %724
  %733 = sdiv i64 %732, %730
  %734 = shl i64 %733, 32
  %735 = ashr exact i64 %734, 32
  %736 = icmp eq i64 %733, %735
  br i1 %736, label %741, label %737

; <label>:737:                                    ; preds = %block_400bca
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %739, %struct.Memory* %loadMem_400bef)
  br label %routine_idivl__esi.exit

; <label>:741:                                    ; preds = %block_400bca
  %742 = srem i64 %732, %730
  %743 = getelementptr inbounds %union.anon, %union.anon* %721, i64 0, i32 0
  %744 = and i64 %733, 4294967295
  store i64 %744, i64* %743, align 8
  %745 = getelementptr inbounds %union.anon, %union.anon* %725, i64 0, i32 0
  %746 = and i64 %742, 4294967295
  store i64 %746, i64* %745, align 8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %747, align 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %748, align 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %749, align 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %750, align 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %751, align 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %752, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %737, %741
  %753 = phi %struct.Memory* [ %740, %737 ], [ %loadMem_400bef, %741 ]
  store %struct.Memory* %753, %struct.Memory** %MEMORY
  %loadMem_400bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %EAX.i725 = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RBP.i726
  %764 = sub i64 %763, 92
  %765 = load i32, i32* %EAX.i725
  %766 = zext i32 %765 to i64
  %767 = load i64, i64* %PC.i724
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i724
  %769 = inttoptr i64 %764 to i32*
  store i32 %765, i32* %769
  store %struct.Memory* %loadMem_400bf1, %struct.Memory** %MEMORY
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i723
  %780 = sub i64 %779, 88
  %781 = load i64, i64* %PC.i721
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i721
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RAX.i722, align 8
  store %struct.Memory* %loadMem_400bf4, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RAX.i720
  %793 = load i64, i64* %PC.i719
  %794 = add i64 %793, 2
  store i64 %794, i64* %PC.i719
  %795 = trunc i64 %792 to i32
  %796 = shl i32 %795, 1
  %797 = icmp slt i32 %795, 0
  %798 = icmp slt i32 %796, 0
  %799 = xor i1 %797, %798
  %800 = zext i32 %796 to i64
  store i64 %800, i64* %RAX.i720, align 8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %802 = zext i1 %797 to i8
  store i8 %802, i8* %801, align 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %804 = and i32 %796, 254
  %805 = call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %803, align 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %809, align 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %811 = icmp eq i32 %796, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %810, align 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %814 = lshr i32 %796, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %813, align 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %817 = zext i1 %799 to i8
  store i8 %817, i8* %816, align 1
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %EAX.i717 = bitcast %union.anon* %823 to i32*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %826 to i64*
  %827 = load i64, i64* %RBP.i718
  %828 = sub i64 %827, 48
  %829 = load i32, i32* %EAX.i717
  %830 = zext i32 %829 to i64
  %831 = load i64, i64* %PC.i716
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i716
  %833 = inttoptr i64 %828 to i32*
  store i32 %829, i32* %833
  store %struct.Memory* %loadMem_400bfa, %struct.Memory** %MEMORY
  %loadMem_400bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RBP.i715
  %844 = sub i64 %843, 48
  %845 = load i64, i64* %PC.i713
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i713
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX.i714, align 8
  store %struct.Memory* %loadMem_400bfd, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RAX.i711
  %860 = load i64, i64* %RBP.i712
  %861 = sub i64 %860, 84
  %862 = load i64, i64* %PC.i710
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC.i710
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = shl i64 %859, 32
  %867 = ashr exact i64 %866, 32
  %868 = sext i32 %865 to i64
  %869 = mul i64 %868, %867
  %870 = trunc i64 %869 to i32
  %871 = and i64 %869, 4294967295
  store i64 %871, i64* %RAX.i711, align 8
  %872 = shl i64 %869, 32
  %873 = ashr exact i64 %872, 32
  %874 = icmp ne i64 %873, %869
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %875, i8* %876, align 1
  %877 = and i32 %870, 255
  %878 = call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %881, i8* %882, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %883, align 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %884, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %875, i8* %888, align 1
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  %loadMem_400c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 1
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %EAX.i708 = bitcast %union.anon* %894 to i32*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 15
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RBP.i709
  %899 = sub i64 %898, 52
  %900 = load i32, i32* %EAX.i708
  %901 = zext i32 %900 to i64
  %902 = load i64, i64* %PC.i707
  %903 = add i64 %902, 3
  store i64 %903, i64* %PC.i707
  %904 = inttoptr i64 %899 to i32*
  store i32 %900, i32* %904
  store %struct.Memory* %loadMem_400c04, %struct.Memory** %MEMORY
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 15
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RBP.i706
  %915 = sub i64 %914, 52
  %916 = load i64, i64* %PC.i704
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC.i704
  %918 = inttoptr i64 %915 to i32*
  %919 = load i32, i32* %918
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RAX.i702
  %931 = load i64, i64* %RBP.i703
  %932 = sub i64 %931, 92
  %933 = load i64, i64* %PC.i701
  %934 = add i64 %933, 4
  store i64 %934, i64* %PC.i701
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935
  %937 = shl i64 %930, 32
  %938 = ashr exact i64 %937, 32
  %939 = sext i32 %936 to i64
  %940 = mul i64 %939, %938
  %941 = trunc i64 %940 to i32
  %942 = and i64 %940, 4294967295
  store i64 %942, i64* %RAX.i702, align 8
  %943 = shl i64 %940, 32
  %944 = ashr exact i64 %943, 32
  %945 = icmp ne i64 %944, %940
  %946 = zext i1 %945 to i8
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %946, i8* %947, align 1
  %948 = and i32 %941, 255
  %949 = call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %952, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %954, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %955, align 1
  %956 = lshr i32 %941, 31
  %957 = trunc i32 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %957, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %946, i8* %959, align 1
  store %struct.Memory* %loadMem_400c0a, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %EAX.i699 = bitcast %union.anon* %965 to i32*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i700
  %970 = sub i64 %969, 56
  %971 = load i32, i32* %EAX.i699
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %PC.i698
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i698
  %975 = inttoptr i64 %970 to i32*
  store i32 %971, i32* %975
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i697
  %983 = sub i64 %982, 40
  %984 = load i64, i64* %PC.i696
  %985 = add i64 %984, 7
  store i64 %985, i64* %PC.i696
  %986 = inttoptr i64 %983 to i32*
  store i32 1, i32* %986
  store %struct.Memory* %loadMem_400c11, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 15
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RBP.i695
  %994 = sub i64 %993, 32
  %995 = load i64, i64* %PC.i694
  %996 = add i64 %995, 7
  store i64 %996, i64* %PC.i694
  %997 = inttoptr i64 %994 to i32*
  store i32 1, i32* %997
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  br label %block_.L_400c1f

block_.L_400c1f:                                  ; preds = %block_.L_400d7f, %routine_idivl__esi.exit
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %RBP.i693
  %1008 = sub i64 %1007, 32
  %1009 = load i64, i64* %PC.i691
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i691
  %1011 = inttoptr i64 %1008 to i32*
  %1012 = load i32, i32* %1011
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_400c1f, %struct.Memory** %MEMORY
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 1
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %EAX.i689 = bitcast %union.anon* %1019 to i32*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1022 to i64*
  %1023 = load i32, i32* %EAX.i689
  %1024 = zext i32 %1023 to i64
  %1025 = load i64, i64* %RBP.i690
  %1026 = sub i64 %1025, 52
  %1027 = load i64, i64* %PC.i688
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %PC.i688
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = sub i32 %1023, %1030
  %1032 = icmp ult i32 %1023, %1030
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1033, i8* %1034, align 1
  %1035 = and i32 %1031, 255
  %1036 = call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1039, i8* %1040, align 1
  %1041 = xor i32 %1030, %1023
  %1042 = xor i32 %1041, %1031
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1045, i8* %1046, align 1
  %1047 = icmp eq i32 %1031, 0
  %1048 = zext i1 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1048, i8* %1049, align 1
  %1050 = lshr i32 %1031, 31
  %1051 = trunc i32 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1051, i8* %1052, align 1
  %1053 = lshr i32 %1023, 31
  %1054 = lshr i32 %1030, 31
  %1055 = xor i32 %1054, %1053
  %1056 = xor i32 %1050, %1053
  %1057 = add i32 %1056, %1055
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1059, i8* %1060, align 1
  store %struct.Memory* %loadMem_400c22, %struct.Memory** %MEMORY
  %loadMem_400c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %PC.i687
  %1065 = add i64 %1064, 369
  %1066 = load i64, i64* %PC.i687
  %1067 = add i64 %1066, 6
  %1068 = load i64, i64* %PC.i687
  %1069 = add i64 %1068, 6
  store i64 %1069, i64* %PC.i687
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1071 = load i8, i8* %1070, align 1
  %1072 = icmp eq i8 %1071, 0
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1074 = load i8, i8* %1073, align 1
  %1075 = icmp ne i8 %1074, 0
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1077 = load i8, i8* %1076, align 1
  %1078 = icmp ne i8 %1077, 0
  %1079 = xor i1 %1075, %1078
  %1080 = xor i1 %1079, true
  %1081 = and i1 %1072, %1080
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %BRANCH_TAKEN, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1084 = select i1 %1081, i64 %1065, i64 %1067
  store i64 %1084, i64* %1083, align 8
  store %struct.Memory* %loadMem_400c25, %struct.Memory** %MEMORY
  %loadBr_400c25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c25 = icmp eq i8 %loadBr_400c25, 1
  br i1 %cmpBr_400c25, label %block_.L_400d96, label %block_400c2b

block_400c2b:                                     ; preds = %block_.L_400c1f
  %loadMem_400c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 1
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 15
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RBP.i686
  %1095 = sub i64 %1094, 32
  %1096 = load i64, i64* %PC.i684
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %PC.i684
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_400c2b, %struct.Memory** %MEMORY
  %loadMem_400c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %1106 to i32*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1109 to i64*
  %1110 = load i32, i32* %EAX.i682
  %1111 = zext i32 %1110 to i64
  %1112 = load i64, i64* %RBP.i683
  %1113 = sub i64 %1112, 40
  %1114 = load i64, i64* %PC.i681
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i681
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = sub i32 %1110, %1117
  %1119 = icmp ult i32 %1110, %1117
  %1120 = zext i1 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1120, i8* %1121, align 1
  %1122 = and i32 %1118, 255
  %1123 = call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1126, i8* %1127, align 1
  %1128 = xor i32 %1117, %1110
  %1129 = xor i32 %1128, %1118
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1132, i8* %1133, align 1
  %1134 = icmp eq i32 %1118, 0
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1135, i8* %1136, align 1
  %1137 = lshr i32 %1118, 31
  %1138 = trunc i32 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1138, i8* %1139, align 1
  %1140 = lshr i32 %1110, 31
  %1141 = lshr i32 %1117, 31
  %1142 = xor i32 %1141, %1140
  %1143 = xor i32 %1137, %1140
  %1144 = add i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1146, i8* %1147, align 1
  store %struct.Memory* %loadMem_400c2e, %struct.Memory** %MEMORY
  %loadMem_400c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %PC.i680
  %1152 = add i64 %1151, 244
  %1153 = load i64, i64* %PC.i680
  %1154 = add i64 %1153, 6
  %1155 = load i64, i64* %PC.i680
  %1156 = add i64 %1155, 6
  store i64 %1156, i64* %PC.i680
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1158 = load i8, i8* %1157, align 1
  %1159 = icmp ne i8 %1158, 0
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1161 = load i8, i8* %1160, align 1
  %1162 = icmp ne i8 %1161, 0
  %1163 = xor i1 %1159, %1162
  %1164 = xor i1 %1163, true
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %BRANCH_TAKEN, align 1
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1167 = select i1 %1163, i64 %1154, i64 %1152
  store i64 %1167, i64* %1166, align 8
  store %struct.Memory* %loadMem_400c31, %struct.Memory** %MEMORY
  %loadBr_400c31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c31 = icmp eq i8 %loadBr_400c31, 1
  br i1 %cmpBr_400c31, label %block_.L_400d25, label %block_400c37

block_400c37:                                     ; preds = %block_400c2b
  %loadMem_400c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 15
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %1176 to i64*
  %1177 = load i64, i64* %RBP.i679
  %1178 = sub i64 %1177, 32
  %1179 = load i64, i64* %PC.i677
  %1180 = add i64 %1179, 3
  store i64 %1180, i64* %PC.i677
  %1181 = inttoptr i64 %1178 to i32*
  %1182 = load i32, i32* %1181
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_400c37, %struct.Memory** %MEMORY
  %loadMem_400c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 1
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %EAX.i675 = bitcast %union.anon* %1189 to i32*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 15
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %RBP.i676
  %1194 = sub i64 %1193, 28
  %1195 = load i32, i32* %EAX.i675
  %1196 = zext i32 %1195 to i64
  %1197 = load i64, i64* %PC.i674
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i674
  %1199 = inttoptr i64 %1194 to i32*
  store i32 %1195, i32* %1199
  store %struct.Memory* %loadMem_400c3a, %struct.Memory** %MEMORY
  br label %block_.L_400c3d

block_.L_400c3d:                                  ; preds = %block_.L_400d12, %block_400c37
  %loadMem_400c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 1
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 15
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %RBP.i673
  %1210 = sub i64 %1209, 28
  %1211 = load i64, i64* %PC.i671
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i671
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_400c3d, %struct.Memory** %MEMORY
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 5
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 15
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %RBP.i670
  %1226 = sub i64 %1225, 32
  %1227 = load i64, i64* %PC.i668
  %1228 = add i64 %1227, 3
  store i64 %1228, i64* %PC.i668
  %1229 = inttoptr i64 %1226 to i32*
  %1230 = load i32, i32* %1229
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_400c40, %struct.Memory** %MEMORY
  %loadMem_400c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 5
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RCX.i666
  %1242 = load i64, i64* %RBP.i667
  %1243 = sub i64 %1242, 48
  %1244 = load i64, i64* %PC.i665
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i665
  %1246 = trunc i64 %1241 to i32
  %1247 = inttoptr i64 %1243 to i32*
  %1248 = load i32, i32* %1247
  %1249 = add i32 %1248, %1246
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i666, align 8
  %1251 = icmp ult i32 %1249, %1246
  %1252 = icmp ult i32 %1249, %1248
  %1253 = or i1 %1251, %1252
  %1254 = zext i1 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1254, i8* %1255, align 1
  %1256 = and i32 %1249, 255
  %1257 = call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1260, i8* %1261, align 1
  %1262 = xor i32 %1248, %1246
  %1263 = xor i32 %1262, %1249
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1266, i8* %1267, align 1
  %1268 = icmp eq i32 %1249, 0
  %1269 = zext i1 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1269, i8* %1270, align 1
  %1271 = lshr i32 %1249, 31
  %1272 = trunc i32 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1272, i8* %1273, align 1
  %1274 = lshr i32 %1246, 31
  %1275 = lshr i32 %1248, 31
  %1276 = xor i32 %1271, %1274
  %1277 = xor i32 %1271, %1275
  %1278 = add i32 %1276, %1277
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1280, i8* %1281, align 1
  store %struct.Memory* %loadMem_400c43, %struct.Memory** %MEMORY
  %loadMem_400c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 5
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RCX.i664
  %1289 = load i64, i64* %PC.i663
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC.i663
  %1291 = trunc i64 %1288 to i32
  %1292 = sub i32 %1291, 2
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RCX.i664, align 8
  %1294 = icmp ult i32 %1291, 2
  %1295 = zext i1 %1294 to i8
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1295, i8* %1296, align 1
  %1297 = and i32 %1292, 255
  %1298 = call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1301, i8* %1302, align 1
  %1303 = xor i64 2, %1288
  %1304 = trunc i64 %1303 to i32
  %1305 = xor i32 %1304, %1292
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1308, i8* %1309, align 1
  %1310 = icmp eq i32 %1292, 0
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1311, i8* %1312, align 1
  %1313 = lshr i32 %1292, 31
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1314, i8* %1315, align 1
  %1316 = lshr i32 %1291, 31
  %1317 = xor i32 %1313, %1316
  %1318 = add i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1320, i8* %1321, align 1
  store %struct.Memory* %loadMem_400c46, %struct.Memory** %MEMORY
  %loadMem_400c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 1
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %EAX.i661 = bitcast %union.anon* %1327 to i32*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 5
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %ECX.i662 = bitcast %union.anon* %1330 to i32*
  %1331 = load i32, i32* %EAX.i661
  %1332 = zext i32 %1331 to i64
  %1333 = load i32, i32* %ECX.i662
  %1334 = zext i32 %1333 to i64
  %1335 = load i64, i64* %PC.i660
  %1336 = add i64 %1335, 2
  store i64 %1336, i64* %PC.i660
  %1337 = sub i32 %1331, %1333
  %1338 = icmp ult i32 %1331, %1333
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1339, i8* %1340, align 1
  %1341 = and i32 %1337, 255
  %1342 = call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1345, i8* %1346, align 1
  %1347 = xor i64 %1334, %1332
  %1348 = trunc i64 %1347 to i32
  %1349 = xor i32 %1348, %1337
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1352, i8* %1353, align 1
  %1354 = icmp eq i32 %1337, 0
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1355, i8* %1356, align 1
  %1357 = lshr i32 %1337, 31
  %1358 = trunc i32 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1358, i8* %1359, align 1
  %1360 = lshr i32 %1331, 31
  %1361 = lshr i32 %1333, 31
  %1362 = xor i32 %1361, %1360
  %1363 = xor i32 %1357, %1360
  %1364 = add i32 %1363, %1362
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1366, i8* %1367, align 1
  store %struct.Memory* %loadMem_400c49, %struct.Memory** %MEMORY
  %loadMem_400c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %PC.i659
  %1372 = add i64 %1371, 213
  %1373 = load i64, i64* %PC.i659
  %1374 = add i64 %1373, 6
  %1375 = load i64, i64* %PC.i659
  %1376 = add i64 %1375, 6
  store i64 %1376, i64* %PC.i659
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1378 = load i8, i8* %1377, align 1
  %1379 = icmp eq i8 %1378, 0
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1381 = load i8, i8* %1380, align 1
  %1382 = icmp ne i8 %1381, 0
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1384 = load i8, i8* %1383, align 1
  %1385 = icmp ne i8 %1384, 0
  %1386 = xor i1 %1382, %1385
  %1387 = xor i1 %1386, true
  %1388 = and i1 %1379, %1387
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %BRANCH_TAKEN, align 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1391 = select i1 %1388, i64 %1372, i64 %1374
  store i64 %1391, i64* %1390, align 8
  store %struct.Memory* %loadMem_400c4b, %struct.Memory** %MEMORY
  %loadBr_400c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c4b = icmp eq i8 %loadBr_400c4b, 1
  br i1 %cmpBr_400c4b, label %block_.L_400d20, label %block_400c51

block_400c51:                                     ; preds = %block_.L_400c3d
  %loadMem_400c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i658
  %1402 = sub i64 %1401, 28
  %1403 = load i64, i64* %PC.i656
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC.i656
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_400c51, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 1
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %EAX.i654 = bitcast %union.anon* %1413 to i32*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 15
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %RBP.i655
  %1418 = sub i64 %1417, 36
  %1419 = load i32, i32* %EAX.i654
  %1420 = zext i32 %1419 to i64
  %1421 = load i64, i64* %PC.i653
  %1422 = add i64 %1421, 3
  store i64 %1422, i64* %PC.i653
  %1423 = inttoptr i64 %1418 to i32*
  store i32 %1419, i32* %1423
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  br label %block_.L_400c57

block_.L_400c57:                                  ; preds = %block_400c63, %block_400c51
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 15
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RBP.i652
  %1434 = sub i64 %1433, 36
  %1435 = load i64, i64* %PC.i650
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC.i650
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 1
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %EAX.i648 = bitcast %union.anon* %1445 to i32*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 15
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %1448 to i64*
  %1449 = load i32, i32* %EAX.i648
  %1450 = zext i32 %1449 to i64
  %1451 = load i64, i64* %RBP.i649
  %1452 = sub i64 %1451, 56
  %1453 = load i64, i64* %PC.i647
  %1454 = add i64 %1453, 3
  store i64 %1454, i64* %PC.i647
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455
  %1457 = sub i32 %1449, %1456
  %1458 = icmp ult i32 %1449, %1456
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1459, i8* %1460, align 1
  %1461 = and i32 %1457, 255
  %1462 = call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1466, align 1
  %1467 = xor i32 %1456, %1449
  %1468 = xor i32 %1467, %1457
  %1469 = lshr i32 %1468, 4
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1471, i8* %1472, align 1
  %1473 = icmp eq i32 %1457, 0
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1474, i8* %1475, align 1
  %1476 = lshr i32 %1457, 31
  %1477 = trunc i32 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1477, i8* %1478, align 1
  %1479 = lshr i32 %1449, 31
  %1480 = lshr i32 %1456, 31
  %1481 = xor i32 %1480, %1479
  %1482 = xor i32 %1476, %1479
  %1483 = add i32 %1482, %1481
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1485, i8* %1486, align 1
  store %struct.Memory* %loadMem_400c5a, %struct.Memory** %MEMORY
  %loadMem_400c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %PC.i646
  %1491 = add i64 %1490, 176
  %1492 = load i64, i64* %PC.i646
  %1493 = add i64 %1492, 6
  %1494 = load i64, i64* %PC.i646
  %1495 = add i64 %1494, 6
  store i64 %1495, i64* %PC.i646
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1497 = load i8, i8* %1496, align 1
  %1498 = icmp eq i8 %1497, 0
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1500 = load i8, i8* %1499, align 1
  %1501 = icmp ne i8 %1500, 0
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1503 = load i8, i8* %1502, align 1
  %1504 = icmp ne i8 %1503, 0
  %1505 = xor i1 %1501, %1504
  %1506 = xor i1 %1505, true
  %1507 = and i1 %1498, %1506
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %BRANCH_TAKEN, align 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1510 = select i1 %1507, i64 %1491, i64 %1493
  store i64 %1510, i64* %1509, align 8
  store %struct.Memory* %loadMem_400c5d, %struct.Memory** %MEMORY
  %loadBr_400c5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c5d = icmp eq i8 %loadBr_400c5d, 1
  br i1 %cmpBr_400c5d, label %block_.L_400d0d, label %block_400c63

block_400c63:                                     ; preds = %block_.L_400c57
  %loadMem_400c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i645
  %1521 = sub i64 %1520, 40
  %1522 = load i64, i64* %PC.i643
  %1523 = add i64 %1522, 3
  store i64 %1523, i64* %PC.i643
  %1524 = inttoptr i64 %1521 to i32*
  %1525 = load i32, i32* %1524
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_400c63, %struct.Memory** %MEMORY
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 1
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RAX.i641
  %1537 = load i64, i64* %RBP.i642
  %1538 = sub i64 %1537, 36
  %1539 = load i64, i64* %PC.i640
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC.i640
  %1541 = trunc i64 %1536 to i32
  %1542 = inttoptr i64 %1538 to i32*
  %1543 = load i32, i32* %1542
  %1544 = add i32 %1543, %1541
  %1545 = zext i32 %1544 to i64
  store i64 %1545, i64* %RAX.i641, align 8
  %1546 = icmp ult i32 %1544, %1541
  %1547 = icmp ult i32 %1544, %1543
  %1548 = or i1 %1546, %1547
  %1549 = zext i1 %1548 to i8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1549, i8* %1550, align 1
  %1551 = and i32 %1544, 255
  %1552 = call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1555, i8* %1556, align 1
  %1557 = xor i32 %1543, %1541
  %1558 = xor i32 %1557, %1544
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1561, i8* %1562, align 1
  %1563 = icmp eq i32 %1544, 0
  %1564 = zext i1 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1544, 31
  %1567 = trunc i32 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1
  %1569 = lshr i32 %1541, 31
  %1570 = lshr i32 %1543, 31
  %1571 = xor i32 %1566, %1569
  %1572 = xor i32 %1566, %1570
  %1573 = add i32 %1571, %1572
  %1574 = icmp eq i32 %1573, 2
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1575, i8* %1576, align 1
  store %struct.Memory* %loadMem_400c66, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RAX.i638
  %1587 = load i64, i64* %RBP.i639
  %1588 = sub i64 %1587, 32
  %1589 = load i64, i64* %PC.i637
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC.i637
  %1591 = trunc i64 %1586 to i32
  %1592 = inttoptr i64 %1588 to i32*
  %1593 = load i32, i32* %1592
  %1594 = sub i32 %1591, %1593
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i638, align 8
  %1596 = icmp ult i32 %1591, %1593
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1597, i8* %1598, align 1
  %1599 = and i32 %1594, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = xor i32 %1593, %1591
  %1606 = xor i32 %1605, %1594
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1609, i8* %1610, align 1
  %1611 = icmp eq i32 %1594, 0
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i32 %1594, 31
  %1615 = trunc i32 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1615, i8* %1616, align 1
  %1617 = lshr i32 %1591, 31
  %1618 = lshr i32 %1593, 31
  %1619 = xor i32 %1618, %1617
  %1620 = xor i32 %1614, %1617
  %1621 = add i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1623, i8* %1624, align 1
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %EAX.i635 = bitcast %union.anon* %1630 to i32*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i636
  %1635 = sub i64 %1634, 44
  %1636 = load i32, i32* %EAX.i635
  %1637 = zext i32 %1636 to i64
  %1638 = load i64, i64* %PC.i634
  %1639 = add i64 %1638, 3
  store i64 %1639, i64* %PC.i634
  %1640 = inttoptr i64 %1635 to i32*
  store i32 %1636, i32* %1640
  store %struct.Memory* %loadMem_400c6c, %struct.Memory** %MEMORY
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 5
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 15
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %1649 to i64*
  %1650 = load i64, i64* %RBP.i633
  %1651 = sub i64 %1650, 8
  %1652 = load i64, i64* %PC.i631
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %PC.i631
  %1654 = inttoptr i64 %1651 to i64*
  %1655 = load i64, i64* %1654
  store i64 %1655, i64* %RCX.i632, align 8
  store %struct.Memory* %loadMem_400c6f, %struct.Memory** %MEMORY
  %loadMem_400c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 7
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 15
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %1664 to i64*
  %1665 = load i64, i64* %RBP.i630
  %1666 = sub i64 %1665, 36
  %1667 = load i64, i64* %PC.i628
  %1668 = add i64 %1667, 4
  store i64 %1668, i64* %PC.i628
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669
  %1671 = sext i32 %1670 to i64
  store i64 %1671, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_400c73, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 5
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 7
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 0
  %YMM0.i627 = bitcast %union.VectorReg* %1682 to %"class.std::bitset"*
  %1683 = bitcast %"class.std::bitset"* %YMM0.i627 to i8*
  %1684 = load i64, i64* %RCX.i625
  %1685 = load i64, i64* %RDX.i626
  %1686 = mul i64 %1685, 8
  %1687 = add i64 %1686, %1684
  %1688 = load i64, i64* %PC.i624
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC.i624
  %1690 = inttoptr i64 %1687 to double*
  %1691 = load double, double* %1690
  %1692 = bitcast i8* %1683 to double*
  store double %1691, double* %1692, align 1
  %1693 = getelementptr inbounds i8, i8* %1683, i64 8
  %1694 = bitcast i8* %1693 to double*
  store double 0.000000e+00, double* %1694, align 1
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1701, i64 0, i64 0
  %XMM0.i623 = bitcast %union.VectorReg* %1702 to %union.vec128_t*
  %1703 = load i64, i64* %RBP.i622
  %1704 = sub i64 %1703, 112
  %1705 = bitcast %union.vec128_t* %XMM0.i623 to i8*
  %1706 = load i64, i64* %PC.i621
  %1707 = add i64 %1706, 5
  store i64 %1707, i64* %PC.i621
  %1708 = bitcast i8* %1705 to double*
  %1709 = load double, double* %1708, align 1
  %1710 = inttoptr i64 %1704 to double*
  store double %1709, double* %1710
  store %struct.Memory* %loadMem_400c7c, %struct.Memory** %MEMORY
  %loadMem_400c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 5
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RCX.i619 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 15
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %RBP.i620
  %1721 = sub i64 %1720, 8
  %1722 = load i64, i64* %PC.i618
  %1723 = add i64 %1722, 4
  store i64 %1723, i64* %PC.i618
  %1724 = inttoptr i64 %1721 to i64*
  %1725 = load i64, i64* %1724
  store i64 %1725, i64* %RCX.i619, align 8
  store %struct.Memory* %loadMem_400c81, %struct.Memory** %MEMORY
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 7
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RDX.i616 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 15
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RBP.i617
  %1736 = sub i64 %1735, 44
  %1737 = load i64, i64* %PC.i615
  %1738 = add i64 %1737, 4
  store i64 %1738, i64* %PC.i615
  %1739 = inttoptr i64 %1736 to i32*
  %1740 = load i32, i32* %1739
  %1741 = sext i32 %1740 to i64
  store i64 %1741, i64* %RDX.i616, align 8
  store %struct.Memory* %loadMem_400c85, %struct.Memory** %MEMORY
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 5
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 7
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1751, i64 0, i64 0
  %YMM0.i614 = bitcast %union.VectorReg* %1752 to %"class.std::bitset"*
  %1753 = bitcast %"class.std::bitset"* %YMM0.i614 to i8*
  %1754 = load i64, i64* %RCX.i612
  %1755 = load i64, i64* %RDX.i613
  %1756 = mul i64 %1755, 8
  %1757 = add i64 %1756, %1754
  %1758 = load i64, i64* %PC.i611
  %1759 = add i64 %1758, 5
  store i64 %1759, i64* %PC.i611
  %1760 = inttoptr i64 %1757 to double*
  %1761 = load double, double* %1760
  %1762 = bitcast i8* %1753 to double*
  store double %1761, double* %1762, align 1
  %1763 = getelementptr inbounds i8, i8* %1753, i64 8
  %1764 = bitcast i8* %1763 to double*
  store double 0.000000e+00, double* %1764, align 1
  store %struct.Memory* %loadMem_400c89, %struct.Memory** %MEMORY
  %loadMem_400c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 5
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i610
  %1775 = sub i64 %1774, 8
  %1776 = load i64, i64* %PC.i608
  %1777 = add i64 %1776, 4
  store i64 %1777, i64* %PC.i608
  %1778 = inttoptr i64 %1775 to i64*
  %1779 = load i64, i64* %1778
  store i64 %1779, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_400c8e, %struct.Memory** %MEMORY
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 7
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RDX.i606 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 15
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %1788 to i64*
  %1789 = load i64, i64* %RBP.i607
  %1790 = sub i64 %1789, 36
  %1791 = load i64, i64* %PC.i605
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %PC.i605
  %1793 = inttoptr i64 %1790 to i32*
  %1794 = load i32, i32* %1793
  %1795 = sext i32 %1794 to i64
  store i64 %1795, i64* %RDX.i606, align 8
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 5
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 7
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1805, i64 0, i64 0
  %XMM0.i604 = bitcast %union.VectorReg* %1806 to %union.vec128_t*
  %1807 = load i64, i64* %RCX.i602
  %1808 = load i64, i64* %RDX.i603
  %1809 = mul i64 %1808, 8
  %1810 = add i64 %1809, %1807
  %1811 = bitcast %union.vec128_t* %XMM0.i604 to i8*
  %1812 = load i64, i64* %PC.i601
  %1813 = add i64 %1812, 5
  store i64 %1813, i64* %PC.i601
  %1814 = bitcast i8* %1811 to double*
  %1815 = load double, double* %1814, align 1
  %1816 = inttoptr i64 %1810 to double*
  store double %1815, double* %1816
  store %struct.Memory* %loadMem_400c96, %struct.Memory** %MEMORY
  %loadMem_400c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1823, i64 0, i64 0
  %YMM0.i600 = bitcast %union.VectorReg* %1824 to %"class.std::bitset"*
  %1825 = bitcast %"class.std::bitset"* %YMM0.i600 to i8*
  %1826 = load i64, i64* %RBP.i599
  %1827 = sub i64 %1826, 112
  %1828 = load i64, i64* %PC.i598
  %1829 = add i64 %1828, 5
  store i64 %1829, i64* %PC.i598
  %1830 = inttoptr i64 %1827 to double*
  %1831 = load double, double* %1830
  %1832 = bitcast i8* %1825 to double*
  store double %1831, double* %1832, align 1
  %1833 = getelementptr inbounds i8, i8* %1825, i64 8
  %1834 = bitcast i8* %1833 to double*
  store double 0.000000e+00, double* %1834, align 1
  store %struct.Memory* %loadMem_400c9b, %struct.Memory** %MEMORY
  %loadMem_400ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 5
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i597
  %1845 = sub i64 %1844, 8
  %1846 = load i64, i64* %PC.i595
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC.i595
  %1848 = inttoptr i64 %1845 to i64*
  %1849 = load i64, i64* %1848
  store i64 %1849, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_400ca0, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 7
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i594
  %1860 = sub i64 %1859, 44
  %1861 = load i64, i64* %PC.i592
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC.i592
  %1863 = inttoptr i64 %1860 to i32*
  %1864 = load i32, i32* %1863
  %1865 = sext i32 %1864 to i64
  store i64 %1865, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 5
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 7
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RDX.i590 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1875, i64 0, i64 0
  %XMM0.i591 = bitcast %union.VectorReg* %1876 to %union.vec128_t*
  %1877 = load i64, i64* %RCX.i589
  %1878 = load i64, i64* %RDX.i590
  %1879 = mul i64 %1878, 8
  %1880 = add i64 %1879, %1877
  %1881 = bitcast %union.vec128_t* %XMM0.i591 to i8*
  %1882 = load i64, i64* %PC.i588
  %1883 = add i64 %1882, 5
  store i64 %1883, i64* %PC.i588
  %1884 = bitcast i8* %1881 to double*
  %1885 = load double, double* %1884, align 1
  %1886 = inttoptr i64 %1880 to double*
  store double %1885, double* %1886
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 5
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RBP.i587
  %1897 = sub i64 %1896, 8
  %1898 = load i64, i64* %PC.i585
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %PC.i585
  %1900 = inttoptr i64 %1897 to i64*
  %1901 = load i64, i64* %1900
  store i64 %1901, i64* %RCX.i586, align 8
  store %struct.Memory* %loadMem_400cad, %struct.Memory** %MEMORY
  %loadMem_400cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 1
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 15
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RBP.i584
  %1912 = sub i64 %1911, 36
  %1913 = load i64, i64* %PC.i582
  %1914 = add i64 %1913, 3
  store i64 %1914, i64* %PC.i582
  %1915 = inttoptr i64 %1912 to i32*
  %1916 = load i32, i32* %1915
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_400cb1, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RAX.i581
  %1925 = load i64, i64* %PC.i580
  %1926 = add i64 %1925, 3
  store i64 %1926, i64* %PC.i580
  %1927 = trunc i64 %1924 to i32
  %1928 = add i32 1, %1927
  %1929 = zext i32 %1928 to i64
  store i64 %1929, i64* %RAX.i581, align 8
  %1930 = icmp ult i32 %1928, %1927
  %1931 = icmp ult i32 %1928, 1
  %1932 = or i1 %1930, %1931
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1933, i8* %1934, align 1
  %1935 = and i32 %1928, 255
  %1936 = call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1939, i8* %1940, align 1
  %1941 = xor i64 1, %1924
  %1942 = trunc i64 %1941 to i32
  %1943 = xor i32 %1942, %1928
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1946, i8* %1947, align 1
  %1948 = icmp eq i32 %1928, 0
  %1949 = zext i1 %1948 to i8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1949, i8* %1950, align 1
  %1951 = lshr i32 %1928, 31
  %1952 = trunc i32 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1952, i8* %1953, align 1
  %1954 = lshr i32 %1927, 31
  %1955 = xor i32 %1951, %1954
  %1956 = add i32 %1955, %1951
  %1957 = icmp eq i32 %1956, 2
  %1958 = zext i1 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1958, i8* %1959, align 1
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 1
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %1965 to i32*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 7
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %1968 to i64*
  %1969 = load i32, i32* %EAX.i578
  %1970 = zext i32 %1969 to i64
  %1971 = load i64, i64* %PC.i577
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %PC.i577
  %1973 = shl i64 %1970, 32
  %1974 = ashr exact i64 %1973, 32
  store i64 %1974, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 5
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 7
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RDX.i575 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1984, i64 0, i64 0
  %YMM0.i576 = bitcast %union.VectorReg* %1985 to %"class.std::bitset"*
  %1986 = bitcast %"class.std::bitset"* %YMM0.i576 to i8*
  %1987 = load i64, i64* %RCX.i574
  %1988 = load i64, i64* %RDX.i575
  %1989 = mul i64 %1988, 8
  %1990 = add i64 %1989, %1987
  %1991 = load i64, i64* %PC.i573
  %1992 = add i64 %1991, 5
  store i64 %1992, i64* %PC.i573
  %1993 = inttoptr i64 %1990 to double*
  %1994 = load double, double* %1993
  %1995 = bitcast i8* %1986 to double*
  store double %1994, double* %1995, align 1
  %1996 = getelementptr inbounds i8, i8* %1986, i64 8
  %1997 = bitcast i8* %1996 to double*
  store double 0.000000e+00, double* %1997, align 1
  store %struct.Memory* %loadMem_400cba, %struct.Memory** %MEMORY
  %loadMem_400cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2004, i64 0, i64 0
  %XMM0.i572 = bitcast %union.VectorReg* %2005 to %union.vec128_t*
  %2006 = load i64, i64* %RBP.i571
  %2007 = sub i64 %2006, 112
  %2008 = bitcast %union.vec128_t* %XMM0.i572 to i8*
  %2009 = load i64, i64* %PC.i570
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i570
  %2011 = bitcast i8* %2008 to double*
  %2012 = load double, double* %2011, align 1
  %2013 = inttoptr i64 %2007 to double*
  store double %2012, double* %2013
  store %struct.Memory* %loadMem_400cbf, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 5
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 15
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %RBP.i569
  %2024 = sub i64 %2023, 8
  %2025 = load i64, i64* %PC.i567
  %2026 = add i64 %2025, 4
  store i64 %2026, i64* %PC.i567
  %2027 = inttoptr i64 %2024 to i64*
  %2028 = load i64, i64* %2027
  store i64 %2028, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 1
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 15
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RBP.i566
  %2039 = sub i64 %2038, 44
  %2040 = load i64, i64* %PC.i564
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i564
  %2042 = inttoptr i64 %2039 to i32*
  %2043 = load i32, i32* %2042
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RAX.i563
  %2052 = load i64, i64* %PC.i562
  %2053 = add i64 %2052, 3
  store i64 %2053, i64* %PC.i562
  %2054 = trunc i64 %2051 to i32
  %2055 = add i32 1, %2054
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RAX.i563, align 8
  %2057 = icmp ult i32 %2055, %2054
  %2058 = icmp ult i32 %2055, 1
  %2059 = or i1 %2057, %2058
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2060, i8* %2061, align 1
  %2062 = and i32 %2055, 255
  %2063 = call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2066, i8* %2067, align 1
  %2068 = xor i64 1, %2051
  %2069 = trunc i64 %2068 to i32
  %2070 = xor i32 %2069, %2055
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2073, i8* %2074, align 1
  %2075 = icmp eq i32 %2055, 0
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2076, i8* %2077, align 1
  %2078 = lshr i32 %2055, 31
  %2079 = trunc i32 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i32 %2054, 31
  %2082 = xor i32 %2078, %2081
  %2083 = add i32 %2082, %2078
  %2084 = icmp eq i32 %2083, 2
  %2085 = zext i1 %2084 to i8
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2085, i8* %2086, align 1
  store %struct.Memory* %loadMem_400ccb, %struct.Memory** %MEMORY
  %loadMem_400cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 1
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %2092 to i32*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 7
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %2095 to i64*
  %2096 = load i32, i32* %EAX.i560
  %2097 = zext i32 %2096 to i64
  %2098 = load i64, i64* %PC.i559
  %2099 = add i64 %2098, 3
  store i64 %2099, i64* %PC.i559
  %2100 = shl i64 %2097, 32
  %2101 = ashr exact i64 %2100, 32
  store i64 %2101, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_400cce, %struct.Memory** %MEMORY
  %loadMem_400cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 5
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 7
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2111, i64 0, i64 0
  %YMM0.i558 = bitcast %union.VectorReg* %2112 to %"class.std::bitset"*
  %2113 = bitcast %"class.std::bitset"* %YMM0.i558 to i8*
  %2114 = load i64, i64* %RCX.i556
  %2115 = load i64, i64* %RDX.i557
  %2116 = mul i64 %2115, 8
  %2117 = add i64 %2116, %2114
  %2118 = load i64, i64* %PC.i555
  %2119 = add i64 %2118, 5
  store i64 %2119, i64* %PC.i555
  %2120 = inttoptr i64 %2117 to double*
  %2121 = load double, double* %2120
  %2122 = bitcast i8* %2113 to double*
  store double %2121, double* %2122, align 1
  %2123 = getelementptr inbounds i8, i8* %2113, i64 8
  %2124 = bitcast i8* %2123 to double*
  store double 0.000000e+00, double* %2124, align 1
  store %struct.Memory* %loadMem_400cd1, %struct.Memory** %MEMORY
  %loadMem_400cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 5
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 15
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %2133 to i64*
  %2134 = load i64, i64* %RBP.i554
  %2135 = sub i64 %2134, 8
  %2136 = load i64, i64* %PC.i552
  %2137 = add i64 %2136, 4
  store i64 %2137, i64* %PC.i552
  %2138 = inttoptr i64 %2135 to i64*
  %2139 = load i64, i64* %2138
  store i64 %2139, i64* %RCX.i553, align 8
  store %struct.Memory* %loadMem_400cd6, %struct.Memory** %MEMORY
  %loadMem_400cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 15
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RBP.i551
  %2150 = sub i64 %2149, 36
  %2151 = load i64, i64* %PC.i549
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC.i549
  %2153 = inttoptr i64 %2150 to i32*
  %2154 = load i32, i32* %2153
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_400cda, %struct.Memory** %MEMORY
  %loadMem_400cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %RAX.i548
  %2163 = load i64, i64* %PC.i547
  %2164 = add i64 %2163, 3
  store i64 %2164, i64* %PC.i547
  %2165 = trunc i64 %2162 to i32
  %2166 = add i32 1, %2165
  %2167 = zext i32 %2166 to i64
  store i64 %2167, i64* %RAX.i548, align 8
  %2168 = icmp ult i32 %2166, %2165
  %2169 = icmp ult i32 %2166, 1
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2171, i8* %2172, align 1
  %2173 = and i32 %2166, 255
  %2174 = call i32 @llvm.ctpop.i32(i32 %2173)
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  %2177 = xor i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2177, i8* %2178, align 1
  %2179 = xor i64 1, %2162
  %2180 = trunc i64 %2179 to i32
  %2181 = xor i32 %2180, %2166
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2184, i8* %2185, align 1
  %2186 = icmp eq i32 %2166, 0
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2187, i8* %2188, align 1
  %2189 = lshr i32 %2166, 31
  %2190 = trunc i32 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i32 %2165, 31
  %2193 = xor i32 %2189, %2192
  %2194 = add i32 %2193, %2189
  %2195 = icmp eq i32 %2194, 2
  %2196 = zext i1 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2196, i8* %2197, align 1
  store %struct.Memory* %loadMem_400cdd, %struct.Memory** %MEMORY
  %loadMem_400ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 1
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %EAX.i545 = bitcast %union.anon* %2203 to i32*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 7
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %2206 to i64*
  %2207 = load i32, i32* %EAX.i545
  %2208 = zext i32 %2207 to i64
  %2209 = load i64, i64* %PC.i544
  %2210 = add i64 %2209, 3
  store i64 %2210, i64* %PC.i544
  %2211 = shl i64 %2208, 32
  %2212 = ashr exact i64 %2211, 32
  store i64 %2212, i64* %RDX.i546, align 8
  store %struct.Memory* %loadMem_400ce0, %struct.Memory** %MEMORY
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 5
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 7
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2222, i64 0, i64 0
  %XMM0.i543 = bitcast %union.VectorReg* %2223 to %union.vec128_t*
  %2224 = load i64, i64* %RCX.i541
  %2225 = load i64, i64* %RDX.i542
  %2226 = mul i64 %2225, 8
  %2227 = add i64 %2226, %2224
  %2228 = bitcast %union.vec128_t* %XMM0.i543 to i8*
  %2229 = load i64, i64* %PC.i540
  %2230 = add i64 %2229, 5
  store i64 %2230, i64* %PC.i540
  %2231 = bitcast i8* %2228 to double*
  %2232 = load double, double* %2231, align 1
  %2233 = inttoptr i64 %2227 to double*
  store double %2232, double* %2233
  store %struct.Memory* %loadMem_400ce3, %struct.Memory** %MEMORY
  %loadMem_400ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 15
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2240, i64 0, i64 0
  %YMM0.i539 = bitcast %union.VectorReg* %2241 to %"class.std::bitset"*
  %2242 = bitcast %"class.std::bitset"* %YMM0.i539 to i8*
  %2243 = load i64, i64* %RBP.i538
  %2244 = sub i64 %2243, 112
  %2245 = load i64, i64* %PC.i537
  %2246 = add i64 %2245, 5
  store i64 %2246, i64* %PC.i537
  %2247 = inttoptr i64 %2244 to double*
  %2248 = load double, double* %2247
  %2249 = bitcast i8* %2242 to double*
  store double %2248, double* %2249, align 1
  %2250 = getelementptr inbounds i8, i8* %2242, i64 8
  %2251 = bitcast i8* %2250 to double*
  store double 0.000000e+00, double* %2251, align 1
  store %struct.Memory* %loadMem_400ce8, %struct.Memory** %MEMORY
  %loadMem_400ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 5
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i536
  %2262 = sub i64 %2261, 8
  %2263 = load i64, i64* %PC.i534
  %2264 = add i64 %2263, 4
  store i64 %2264, i64* %PC.i534
  %2265 = inttoptr i64 %2262 to i64*
  %2266 = load i64, i64* %2265
  store i64 %2266, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_400ced, %struct.Memory** %MEMORY
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RBP.i533
  %2277 = sub i64 %2276, 44
  %2278 = load i64, i64* %PC.i531
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i531
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_400cf1, %struct.Memory** %MEMORY
  %loadMem_400cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RAX.i530
  %2290 = load i64, i64* %PC.i529
  %2291 = add i64 %2290, 3
  store i64 %2291, i64* %PC.i529
  %2292 = trunc i64 %2289 to i32
  %2293 = add i32 1, %2292
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RAX.i530, align 8
  %2295 = icmp ult i32 %2293, %2292
  %2296 = icmp ult i32 %2293, 1
  %2297 = or i1 %2295, %2296
  %2298 = zext i1 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2298, i8* %2299, align 1
  %2300 = and i32 %2293, 255
  %2301 = call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2304, i8* %2305, align 1
  %2306 = xor i64 1, %2289
  %2307 = trunc i64 %2306 to i32
  %2308 = xor i32 %2307, %2293
  %2309 = lshr i32 %2308, 4
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2311, i8* %2312, align 1
  %2313 = icmp eq i32 %2293, 0
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2314, i8* %2315, align 1
  %2316 = lshr i32 %2293, 31
  %2317 = trunc i32 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2317, i8* %2318, align 1
  %2319 = lshr i32 %2292, 31
  %2320 = xor i32 %2316, %2319
  %2321 = add i32 %2320, %2316
  %2322 = icmp eq i32 %2321, 2
  %2323 = zext i1 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2323, i8* %2324, align 1
  store %struct.Memory* %loadMem_400cf4, %struct.Memory** %MEMORY
  %loadMem_400cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 1
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %2330 to i32*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 7
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RDX.i528 = bitcast %union.anon* %2333 to i64*
  %2334 = load i32, i32* %EAX.i527
  %2335 = zext i32 %2334 to i64
  %2336 = load i64, i64* %PC.i526
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC.i526
  %2338 = shl i64 %2335, 32
  %2339 = ashr exact i64 %2338, 32
  store i64 %2339, i64* %RDX.i528, align 8
  store %struct.Memory* %loadMem_400cf7, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 5
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 7
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2349, i64 0, i64 0
  %XMM0.i525 = bitcast %union.VectorReg* %2350 to %union.vec128_t*
  %2351 = load i64, i64* %RCX.i523
  %2352 = load i64, i64* %RDX.i524
  %2353 = mul i64 %2352, 8
  %2354 = add i64 %2353, %2351
  %2355 = bitcast %union.vec128_t* %XMM0.i525 to i8*
  %2356 = load i64, i64* %PC.i522
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i522
  %2358 = bitcast i8* %2355 to double*
  %2359 = load double, double* %2358, align 1
  %2360 = inttoptr i64 %2354 to double*
  store double %2359, double* %2360
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  %loadMem_400cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 1
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 15
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %RBP.i521
  %2371 = sub i64 %2370, 52
  %2372 = load i64, i64* %PC.i519
  %2373 = add i64 %2372, 3
  store i64 %2373, i64* %PC.i519
  %2374 = inttoptr i64 %2371 to i32*
  %2375 = load i32, i32* %2374
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_400cff, %struct.Memory** %MEMORY
  %loadMem_400d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RAX.i517
  %2387 = load i64, i64* %RBP.i518
  %2388 = sub i64 %2387, 36
  %2389 = load i64, i64* %PC.i516
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i516
  %2391 = trunc i64 %2386 to i32
  %2392 = inttoptr i64 %2388 to i32*
  %2393 = load i32, i32* %2392
  %2394 = add i32 %2393, %2391
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RAX.i517, align 8
  %2396 = icmp ult i32 %2394, %2391
  %2397 = icmp ult i32 %2394, %2393
  %2398 = or i1 %2396, %2397
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2399, i8* %2400, align 1
  %2401 = and i32 %2394, 255
  %2402 = call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2405, i8* %2406, align 1
  %2407 = xor i32 %2393, %2391
  %2408 = xor i32 %2407, %2394
  %2409 = lshr i32 %2408, 4
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2411, i8* %2412, align 1
  %2413 = icmp eq i32 %2394, 0
  %2414 = zext i1 %2413 to i8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2414, i8* %2415, align 1
  %2416 = lshr i32 %2394, 31
  %2417 = trunc i32 %2416 to i8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2417, i8* %2418, align 1
  %2419 = lshr i32 %2391, 31
  %2420 = lshr i32 %2393, 31
  %2421 = xor i32 %2416, %2419
  %2422 = xor i32 %2416, %2420
  %2423 = add i32 %2421, %2422
  %2424 = icmp eq i32 %2423, 2
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2425, i8* %2426, align 1
  store %struct.Memory* %loadMem_400d02, %struct.Memory** %MEMORY
  %loadMem_400d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 1
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %2432 to i32*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RBP.i515
  %2437 = sub i64 %2436, 36
  %2438 = load i32, i32* %EAX.i514
  %2439 = zext i32 %2438 to i64
  %2440 = load i64, i64* %PC.i513
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i513
  %2442 = inttoptr i64 %2437 to i32*
  store i32 %2438, i32* %2442
  store %struct.Memory* %loadMem_400d05, %struct.Memory** %MEMORY
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %PC.i512
  %2447 = add i64 %2446, -177
  %2448 = load i64, i64* %PC.i512
  %2449 = add i64 %2448, 5
  store i64 %2449, i64* %PC.i512
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2447, i64* %2450, align 8
  store %struct.Memory* %loadMem_400d08, %struct.Memory** %MEMORY
  br label %block_.L_400c57

block_.L_400d0d:                                  ; preds = %block_.L_400c57
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %PC.i511
  %2455 = add i64 %2454, 5
  %2456 = load i64, i64* %PC.i511
  %2457 = add i64 %2456, 5
  store i64 %2457, i64* %PC.i511
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2455, i64* %2458, align 8
  store %struct.Memory* %loadMem_400d0d, %struct.Memory** %MEMORY
  br label %block_.L_400d12

block_.L_400d12:                                  ; preds = %block_.L_400d0d
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i510
  %2469 = sub i64 %2468, 28
  %2470 = load i64, i64* %PC.i508
  %2471 = add i64 %2470, 3
  store i64 %2471, i64* %PC.i508
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem_400d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 1
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RAX.i507
  %2482 = load i64, i64* %PC.i506
  %2483 = add i64 %2482, 3
  store i64 %2483, i64* %PC.i506
  %2484 = trunc i64 %2481 to i32
  %2485 = add i32 2, %2484
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RAX.i507, align 8
  %2487 = icmp ult i32 %2485, %2484
  %2488 = icmp ult i32 %2485, 2
  %2489 = or i1 %2487, %2488
  %2490 = zext i1 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2490, i8* %2491, align 1
  %2492 = and i32 %2485, 255
  %2493 = call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2496, i8* %2497, align 1
  %2498 = xor i64 2, %2481
  %2499 = trunc i64 %2498 to i32
  %2500 = xor i32 %2499, %2485
  %2501 = lshr i32 %2500, 4
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2503, i8* %2504, align 1
  %2505 = icmp eq i32 %2485, 0
  %2506 = zext i1 %2505 to i8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2506, i8* %2507, align 1
  %2508 = lshr i32 %2485, 31
  %2509 = trunc i32 %2508 to i8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2509, i8* %2510, align 1
  %2511 = lshr i32 %2484, 31
  %2512 = xor i32 %2508, %2511
  %2513 = add i32 %2512, %2508
  %2514 = icmp eq i32 %2513, 2
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2515, i8* %2516, align 1
  store %struct.Memory* %loadMem_400d15, %struct.Memory** %MEMORY
  %loadMem_400d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 1
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %EAX.i504 = bitcast %union.anon* %2522 to i32*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 15
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2525 to i64*
  %2526 = load i64, i64* %RBP.i505
  %2527 = sub i64 %2526, 28
  %2528 = load i32, i32* %EAX.i504
  %2529 = zext i32 %2528 to i64
  %2530 = load i64, i64* %PC.i503
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %PC.i503
  %2532 = inttoptr i64 %2527 to i32*
  store i32 %2528, i32* %2532
  store %struct.Memory* %loadMem_400d18, %struct.Memory** %MEMORY
  %loadMem_400d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %PC.i502
  %2537 = add i64 %2536, -222
  %2538 = load i64, i64* %PC.i502
  %2539 = add i64 %2538, 5
  store i64 %2539, i64* %PC.i502
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2537, i64* %2540, align 8
  store %struct.Memory* %loadMem_400d1b, %struct.Memory** %MEMORY
  br label %block_.L_400c3d

block_.L_400d20:                                  ; preds = %block_.L_400c3d
  %loadMem_400d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2543 to i64*
  %2544 = load i64, i64* %PC.i501
  %2545 = add i64 %2544, 5
  %2546 = load i64, i64* %PC.i501
  %2547 = add i64 %2546, 5
  store i64 %2547, i64* %PC.i501
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2545, i64* %2548, align 8
  store %struct.Memory* %loadMem_400d20, %struct.Memory** %MEMORY
  br label %block_.L_400d25

block_.L_400d25:                                  ; preds = %block_.L_400d20, %block_400c2b
  %loadMem_400d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 1
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 15
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RBP.i500
  %2559 = sub i64 %2558, 52
  %2560 = load i64, i64* %PC.i498
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i498
  %2562 = inttoptr i64 %2559 to i32*
  %2563 = load i32, i32* %2562
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_400d25, %struct.Memory** %MEMORY
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 1
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RAX.i497
  %2572 = load i64, i64* %PC.i496
  %2573 = add i64 %2572, 2
  store i64 %2573, i64* %PC.i496
  %2574 = shl i64 %2571, 32
  %2575 = ashr i64 %2574, 33
  %2576 = trunc i64 %2571 to i8
  %2577 = and i8 %2576, 1
  %2578 = trunc i64 %2575 to i32
  %2579 = and i64 %2575, 4294967295
  store i64 %2579, i64* %RAX.i497, align 8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2577, i8* %2580, align 1
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2582 = and i32 %2578, 255
  %2583 = call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %2581, align 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2587, align 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2589 = icmp eq i32 %2578, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %2588, align 1
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2592 = lshr i32 %2578, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %2591, align 1
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2594, align 1
  store %struct.Memory* %loadMem_400d28, %struct.Memory** %MEMORY
  %loadMem_400d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 1
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %2600 to i32*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 15
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RBP.i495
  %2605 = sub i64 %2604, 68
  %2606 = load i32, i32* %EAX.i494
  %2607 = zext i32 %2606 to i64
  %2608 = load i64, i64* %PC.i493
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %PC.i493
  %2610 = inttoptr i64 %2605 to i32*
  store i32 %2606, i32* %2610
  store %struct.Memory* %loadMem_400d2b, %struct.Memory** %MEMORY
  br label %block_.L_400d2e

block_.L_400d2e:                                  ; preds = %block_.L_400d66, %block_.L_400d25
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 33
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 1
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %EAX.i491 = bitcast %union.anon* %2616 to i32*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 1
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2619 to i64*
  %2620 = load i64, i64* %RAX.i492
  %2621 = load i32, i32* %EAX.i491
  %2622 = zext i32 %2621 to i64
  %2623 = load i64, i64* %PC.i490
  %2624 = add i64 %2623, 2
  store i64 %2624, i64* %PC.i490
  %2625 = xor i64 %2622, %2620
  %2626 = trunc i64 %2625 to i32
  %2627 = and i64 %2625, 4294967295
  store i64 %2627, i64* %RAX.i492, align 8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2628, align 1
  %2629 = and i32 %2626, 255
  %2630 = call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2633, i8* %2634, align 1
  %2635 = icmp eq i32 %2626, 0
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2636, i8* %2637, align 1
  %2638 = lshr i32 %2626, 31
  %2639 = trunc i32 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2639, i8* %2640, align 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2641, align 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2642, align 1
  store %struct.Memory* %loadMem_400d2e, %struct.Memory** %MEMORY
  %loadMem_400d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 1
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %2649 = bitcast %union.anon* %2648 to %struct.anon.2*
  %AL.i488 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2649, i32 0, i32 0
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 5
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %2653 = bitcast %union.anon* %2652 to %struct.anon.2*
  %CL.i489 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2653, i32 0, i32 0
  %2654 = load i8, i8* %AL.i488
  %2655 = zext i8 %2654 to i64
  %2656 = load i64, i64* %PC.i487
  %2657 = add i64 %2656, 2
  store i64 %2657, i64* %PC.i487
  store i8 %2654, i8* %CL.i489, align 1
  store %struct.Memory* %loadMem_400d30, %struct.Memory** %MEMORY
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i486
  %2668 = sub i64 %2667, 68
  %2669 = load i64, i64* %PC.i484
  %2670 = add i64 %2669, 3
  store i64 %2670, i64* %PC.i484
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i485, align 8
  store %struct.Memory* %loadMem_400d32, %struct.Memory** %MEMORY
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %2679 to i32*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2682 to i64*
  %2683 = load i32, i32* %EAX.i482
  %2684 = zext i32 %2683 to i64
  %2685 = load i64, i64* %RBP.i483
  %2686 = sub i64 %2685, 48
  %2687 = load i64, i64* %PC.i481
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i481
  %2689 = inttoptr i64 %2686 to i32*
  %2690 = load i32, i32* %2689
  %2691 = sub i32 %2683, %2690
  %2692 = icmp ult i32 %2683, %2690
  %2693 = zext i1 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2693, i8* %2694, align 1
  %2695 = and i32 %2691, 255
  %2696 = call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2699, i8* %2700, align 1
  %2701 = xor i32 %2690, %2683
  %2702 = xor i32 %2701, %2691
  %2703 = lshr i32 %2702, 4
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2705, i8* %2706, align 1
  %2707 = icmp eq i32 %2691, 0
  %2708 = zext i1 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2708, i8* %2709, align 1
  %2710 = lshr i32 %2691, 31
  %2711 = trunc i32 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2711, i8* %2712, align 1
  %2713 = lshr i32 %2683, 31
  %2714 = lshr i32 %2690, 31
  %2715 = xor i32 %2714, %2713
  %2716 = xor i32 %2710, %2713
  %2717 = add i32 %2716, %2715
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2719, i8* %2720, align 1
  store %struct.Memory* %loadMem_400d35, %struct.Memory** %MEMORY
  %loadMem_400d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 5
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %2727 = bitcast %union.anon* %2726 to %struct.anon.2*
  %CL.i479 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2727, i32 0, i32 0
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 15
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %RBP.i480
  %2732 = sub i64 %2731, 165
  %2733 = load i8, i8* %CL.i479
  %2734 = zext i8 %2733 to i64
  %2735 = load i64, i64* %PC.i478
  %2736 = add i64 %2735, 6
  store i64 %2736, i64* %PC.i478
  %2737 = inttoptr i64 %2732 to i8*
  store i8 %2733, i8* %2737
  store %struct.Memory* %loadMem_400d38, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %PC.i477
  %2742 = add i64 %2741, 21
  %2743 = load i64, i64* %PC.i477
  %2744 = add i64 %2743, 6
  %2745 = load i64, i64* %PC.i477
  %2746 = add i64 %2745, 6
  store i64 %2746, i64* %PC.i477
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2748 = load i8, i8* %2747, align 1
  %2749 = icmp ne i8 %2748, 0
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2751 = load i8, i8* %2750, align 1
  %2752 = icmp ne i8 %2751, 0
  %2753 = xor i1 %2749, %2752
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %BRANCH_TAKEN, align 1
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2756 = select i1 %2753, i64 %2742, i64 %2744
  store i64 %2756, i64* %2755, align 8
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadBr_400d3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d3e = icmp eq i8 %loadBr_400d3e, 1
  br i1 %cmpBr_400d3e, label %block_.L_400d53, label %block_400d44

block_400d44:                                     ; preds = %block_.L_400d2e
  %loadMem_400d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 1
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 15
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RBP.i476
  %2767 = sub i64 %2766, 40
  %2768 = load i64, i64* %PC.i474
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i474
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_400d44, %struct.Memory** %MEMORY
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 1
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %2778 to i32*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 15
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %2781 to i64*
  %2782 = load i32, i32* %EAX.i472
  %2783 = zext i32 %2782 to i64
  %2784 = load i64, i64* %RBP.i473
  %2785 = sub i64 %2784, 68
  %2786 = load i64, i64* %PC.i471
  %2787 = add i64 %2786, 3
  store i64 %2787, i64* %PC.i471
  %2788 = inttoptr i64 %2785 to i32*
  %2789 = load i32, i32* %2788
  %2790 = sub i32 %2782, %2789
  %2791 = icmp ult i32 %2782, %2789
  %2792 = zext i1 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2792, i8* %2793, align 1
  %2794 = and i32 %2790, 255
  %2795 = call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2798, i8* %2799, align 1
  %2800 = xor i32 %2789, %2782
  %2801 = xor i32 %2800, %2790
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2804, i8* %2805, align 1
  %2806 = icmp eq i32 %2790, 0
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2807, i8* %2808, align 1
  %2809 = lshr i32 %2790, 31
  %2810 = trunc i32 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2810, i8* %2811, align 1
  %2812 = lshr i32 %2782, 31
  %2813 = lshr i32 %2789, 31
  %2814 = xor i32 %2813, %2812
  %2815 = xor i32 %2809, %2812
  %2816 = add i32 %2815, %2814
  %2817 = icmp eq i32 %2816, 2
  %2818 = zext i1 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2818, i8* %2819, align 1
  store %struct.Memory* %loadMem_400d47, %struct.Memory** %MEMORY
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 5
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %2826 = bitcast %union.anon* %2825 to %struct.anon.2*
  %CL.i470 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2826, i32 0, i32 0
  %2827 = load i64, i64* %PC.i469
  %2828 = add i64 %2827, 3
  store i64 %2828, i64* %PC.i469
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2830 = load i8, i8* %2829, align 1
  %2831 = icmp eq i8 %2830, 0
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2833 = load i8, i8* %2832, align 1
  %2834 = icmp ne i8 %2833, 0
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2836 = load i8, i8* %2835, align 1
  %2837 = icmp ne i8 %2836, 0
  %2838 = xor i1 %2834, %2837
  %2839 = xor i1 %2838, true
  %2840 = and i1 %2831, %2839
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %CL.i470, align 1
  store %struct.Memory* %loadMem_400d4a, %struct.Memory** %MEMORY
  %loadMem_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 5
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %2848 = bitcast %union.anon* %2847 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2848, i32 0, i32 0
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 15
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %RBP.i468
  %2853 = sub i64 %2852, 165
  %2854 = load i8, i8* %CL.i
  %2855 = zext i8 %2854 to i64
  %2856 = load i64, i64* %PC.i467
  %2857 = add i64 %2856, 6
  store i64 %2857, i64* %PC.i467
  %2858 = inttoptr i64 %2853 to i8*
  store i8 %2854, i8* %2858
  store %struct.Memory* %loadMem_400d4d, %struct.Memory** %MEMORY
  br label %block_.L_400d53

block_.L_400d53:                                  ; preds = %block_400d44, %block_.L_400d2e
  %loadMem_400d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 1
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %2865 = bitcast %union.anon* %2864 to %struct.anon.2*
  %AL.i465 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2865, i32 0, i32 0
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RBP.i466
  %2870 = sub i64 %2869, 165
  %2871 = load i64, i64* %PC.i464
  %2872 = add i64 %2871, 6
  store i64 %2872, i64* %PC.i464
  %2873 = inttoptr i64 %2870 to i8*
  %2874 = load i8, i8* %2873
  store i8 %2874, i8* %AL.i465, align 1
  store %struct.Memory* %loadMem_400d53, %struct.Memory** %MEMORY
  %loadMem_400d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 1
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %2881 = bitcast %union.anon* %2880 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2881, i32 0, i32 0
  %2882 = load i8, i8* %AL.i
  %2883 = zext i8 %2882 to i64
  %2884 = load i64, i64* %PC.i463
  %2885 = add i64 %2884, 2
  store i64 %2885, i64* %PC.i463
  %2886 = and i64 1, %2883
  %2887 = trunc i64 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2888, align 1
  %2889 = trunc i64 %2886 to i32
  %2890 = and i32 %2889, 255
  %2891 = call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2894, i8* %2895, align 1
  %2896 = icmp eq i8 %2887, 0
  %2897 = zext i1 %2896 to i8
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2897, i8* %2898, align 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2899, align 1
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2900, align 1
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2901, align 1
  store %struct.Memory* %loadMem_400d59, %struct.Memory** %MEMORY
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %PC.i462
  %2906 = add i64 %2905, 11
  %2907 = load i64, i64* %PC.i462
  %2908 = add i64 %2907, 6
  %2909 = load i64, i64* %PC.i462
  %2910 = add i64 %2909, 6
  store i64 %2910, i64* %PC.i462
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2912 = load i8, i8* %2911, align 1
  %2913 = icmp eq i8 %2912, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %BRANCH_TAKEN, align 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2916 = select i1 %2913, i64 %2906, i64 %2908
  store i64 %2916, i64* %2915, align 8
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  %loadBr_400d5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d5b = icmp eq i8 %loadBr_400d5b, 1
  br i1 %cmpBr_400d5b, label %block_.L_400d66, label %block_400d61

block_400d61:                                     ; preds = %block_.L_400d53
  %loadMem_400d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %PC.i461
  %2921 = add i64 %2920, 30
  %2922 = load i64, i64* %PC.i461
  %2923 = add i64 %2922, 5
  store i64 %2923, i64* %PC.i461
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2921, i64* %2924, align 8
  store %struct.Memory* %loadMem_400d61, %struct.Memory** %MEMORY
  br label %block_.L_400d7f

block_.L_400d66:                                  ; preds = %block_.L_400d53
  %loadMem_400d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 1
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RBP.i460
  %2935 = sub i64 %2934, 68
  %2936 = load i64, i64* %PC.i458
  %2937 = add i64 %2936, 3
  store i64 %2937, i64* %PC.i458
  %2938 = inttoptr i64 %2935 to i32*
  %2939 = load i32, i32* %2938
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_400d66, %struct.Memory** %MEMORY
  %loadMem_400d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 15
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RBP.i457
  %2951 = sub i64 %2950, 40
  %2952 = load i64, i64* %PC.i455
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i455
  %2954 = inttoptr i64 %2951 to i32*
  %2955 = load i32, i32* %2954
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_400d69, %struct.Memory** %MEMORY
  %loadMem_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %EAX.i453 = bitcast %union.anon* %2962 to i32*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 5
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %RCX.i454
  %2967 = load i32, i32* %EAX.i453
  %2968 = zext i32 %2967 to i64
  %2969 = load i64, i64* %PC.i452
  %2970 = add i64 %2969, 2
  store i64 %2970, i64* %PC.i452
  %2971 = trunc i64 %2966 to i32
  %2972 = sub i32 %2971, %2967
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RCX.i454, align 8
  %2974 = icmp ult i32 %2971, %2967
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2975, i8* %2976, align 1
  %2977 = and i32 %2972, 255
  %2978 = call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2981, i8* %2982, align 1
  %2983 = xor i64 %2968, %2966
  %2984 = trunc i64 %2983 to i32
  %2985 = xor i32 %2984, %2972
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2988, i8* %2989, align 1
  %2990 = icmp eq i32 %2972, 0
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2991, i8* %2992, align 1
  %2993 = lshr i32 %2972, 31
  %2994 = trunc i32 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i32 %2971, 31
  %2997 = lshr i32 %2967, 31
  %2998 = xor i32 %2997, %2996
  %2999 = xor i32 %2993, %2996
  %3000 = add i32 %2999, %2998
  %3001 = icmp eq i32 %3000, 2
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3002, i8* %3003, align 1
  store %struct.Memory* %loadMem_400d6c, %struct.Memory** %MEMORY
  %loadMem_400d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %ECX.i450 = bitcast %union.anon* %3009 to i32*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i451
  %3014 = sub i64 %3013, 40
  %3015 = load i32, i32* %ECX.i450
  %3016 = zext i32 %3015 to i64
  %3017 = load i64, i64* %PC.i449
  %3018 = add i64 %3017, 3
  store i64 %3018, i64* %PC.i449
  %3019 = inttoptr i64 %3014 to i32*
  store i32 %3015, i32* %3019
  store %struct.Memory* %loadMem_400d6e, %struct.Memory** %MEMORY
  %loadMem_400d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 15
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RBP.i448
  %3030 = sub i64 %3029, 68
  %3031 = load i64, i64* %PC.i446
  %3032 = add i64 %3031, 3
  store i64 %3032, i64* %PC.i446
  %3033 = inttoptr i64 %3030 to i32*
  %3034 = load i32, i32* %3033
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_400d71, %struct.Memory** %MEMORY
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 1
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RAX.i445
  %3043 = load i64, i64* %PC.i444
  %3044 = add i64 %3043, 2
  store i64 %3044, i64* %PC.i444
  %3045 = shl i64 %3042, 32
  %3046 = ashr i64 %3045, 33
  %3047 = trunc i64 %3042 to i8
  %3048 = and i8 %3047, 1
  %3049 = trunc i64 %3046 to i32
  %3050 = and i64 %3046, 4294967295
  store i64 %3050, i64* %RAX.i445, align 8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3048, i8* %3051, align 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3053 = and i32 %3049, 255
  %3054 = call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %3052, align 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3058, align 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3060 = icmp eq i32 %3049, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %3059, align 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3063 = lshr i32 %3049, 31
  %3064 = trunc i32 %3063 to i8
  store i8 %3064, i8* %3062, align 1
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3065, align 1
  store %struct.Memory* %loadMem_400d74, %struct.Memory** %MEMORY
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 1
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %3071 to i32*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i443
  %3076 = sub i64 %3075, 68
  %3077 = load i32, i32* %EAX.i442
  %3078 = zext i32 %3077 to i64
  %3079 = load i64, i64* %PC.i441
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i441
  %3081 = inttoptr i64 %3076 to i32*
  store i32 %3077, i32* %3081
  store %struct.Memory* %loadMem_400d77, %struct.Memory** %MEMORY
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %PC.i440
  %3086 = add i64 %3085, -76
  %3087 = load i64, i64* %PC.i440
  %3088 = add i64 %3087, 5
  store i64 %3088, i64* %PC.i440
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3086, i64* %3089, align 8
  store %struct.Memory* %loadMem_400d7a, %struct.Memory** %MEMORY
  br label %block_.L_400d2e

block_.L_400d7f:                                  ; preds = %block_400d61
  %loadMem_400d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 1
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i439
  %3100 = sub i64 %3099, 68
  %3101 = load i64, i64* %PC.i437
  %3102 = add i64 %3101, 3
  store i64 %3102, i64* %PC.i437
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_400d7f, %struct.Memory** %MEMORY
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 15
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RAX.i435
  %3116 = load i64, i64* %RBP.i436
  %3117 = sub i64 %3116, 40
  %3118 = load i64, i64* %PC.i434
  %3119 = add i64 %3118, 3
  store i64 %3119, i64* %PC.i434
  %3120 = trunc i64 %3115 to i32
  %3121 = inttoptr i64 %3117 to i32*
  %3122 = load i32, i32* %3121
  %3123 = add i32 %3122, %3120
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RAX.i435, align 8
  %3125 = icmp ult i32 %3123, %3120
  %3126 = icmp ult i32 %3123, %3122
  %3127 = or i1 %3125, %3126
  %3128 = zext i1 %3127 to i8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3128, i8* %3129, align 1
  %3130 = and i32 %3123, 255
  %3131 = call i32 @llvm.ctpop.i32(i32 %3130)
  %3132 = trunc i32 %3131 to i8
  %3133 = and i8 %3132, 1
  %3134 = xor i8 %3133, 1
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3134, i8* %3135, align 1
  %3136 = xor i32 %3122, %3120
  %3137 = xor i32 %3136, %3123
  %3138 = lshr i32 %3137, 4
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3140, i8* %3141, align 1
  %3142 = icmp eq i32 %3123, 0
  %3143 = zext i1 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3143, i8* %3144, align 1
  %3145 = lshr i32 %3123, 31
  %3146 = trunc i32 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3146, i8* %3147, align 1
  %3148 = lshr i32 %3120, 31
  %3149 = lshr i32 %3122, 31
  %3150 = xor i32 %3145, %3148
  %3151 = xor i32 %3145, %3149
  %3152 = add i32 %3150, %3151
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3154, i8* %3155, align 1
  store %struct.Memory* %loadMem_400d82, %struct.Memory** %MEMORY
  %loadMem_400d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %3161 to i32*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i433
  %3166 = sub i64 %3165, 40
  %3167 = load i32, i32* %EAX.i432
  %3168 = zext i32 %3167 to i64
  %3169 = load i64, i64* %PC.i431
  %3170 = add i64 %3169, 3
  store i64 %3170, i64* %PC.i431
  %3171 = inttoptr i64 %3166 to i32*
  store i32 %3167, i32* %3171
  store %struct.Memory* %loadMem_400d85, %struct.Memory** %MEMORY
  %loadMem_400d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 1
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 15
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %RBP.i430
  %3182 = sub i64 %3181, 48
  %3183 = load i64, i64* %PC.i428
  %3184 = add i64 %3183, 3
  store i64 %3184, i64* %PC.i428
  %3185 = inttoptr i64 %3182 to i32*
  %3186 = load i32, i32* %3185
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_400d88, %struct.Memory** %MEMORY
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 15
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RAX.i426
  %3198 = load i64, i64* %RBP.i427
  %3199 = sub i64 %3198, 32
  %3200 = load i64, i64* %PC.i425
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i425
  %3202 = trunc i64 %3197 to i32
  %3203 = inttoptr i64 %3199 to i32*
  %3204 = load i32, i32* %3203
  %3205 = add i32 %3204, %3202
  %3206 = zext i32 %3205 to i64
  store i64 %3206, i64* %RAX.i426, align 8
  %3207 = icmp ult i32 %3205, %3202
  %3208 = icmp ult i32 %3205, %3204
  %3209 = or i1 %3207, %3208
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3210, i8* %3211, align 1
  %3212 = and i32 %3205, 255
  %3213 = call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3216, i8* %3217, align 1
  %3218 = xor i32 %3204, %3202
  %3219 = xor i32 %3218, %3205
  %3220 = lshr i32 %3219, 4
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3222, i8* %3223, align 1
  %3224 = icmp eq i32 %3205, 0
  %3225 = zext i1 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3225, i8* %3226, align 1
  %3227 = lshr i32 %3205, 31
  %3228 = trunc i32 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3228, i8* %3229, align 1
  %3230 = lshr i32 %3202, 31
  %3231 = lshr i32 %3204, 31
  %3232 = xor i32 %3227, %3230
  %3233 = xor i32 %3227, %3231
  %3234 = add i32 %3232, %3233
  %3235 = icmp eq i32 %3234, 2
  %3236 = zext i1 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3236, i8* %3237, align 1
  store %struct.Memory* %loadMem_400d8b, %struct.Memory** %MEMORY
  %loadMem_400d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 1
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %EAX.i423 = bitcast %union.anon* %3243 to i32*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 15
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %RBP.i424
  %3248 = sub i64 %3247, 32
  %3249 = load i32, i32* %EAX.i423
  %3250 = zext i32 %3249 to i64
  %3251 = load i64, i64* %PC.i422
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC.i422
  %3253 = inttoptr i64 %3248 to i32*
  store i32 %3249, i32* %3253
  store %struct.Memory* %loadMem_400d8e, %struct.Memory** %MEMORY
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i421
  %3258 = add i64 %3257, -370
  %3259 = load i64, i64* %PC.i421
  %3260 = add i64 %3259, 5
  store i64 %3260, i64* %PC.i421
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3258, i64* %3261, align 8
  store %struct.Memory* %loadMem_400d91, %struct.Memory** %MEMORY
  br label %block_.L_400c1f

block_.L_400d96:                                  ; preds = %block_.L_400c1f
  %loadMem_400d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 1
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 15
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RBP.i420
  %3272 = sub i64 %3271, 48
  %3273 = load i64, i64* %PC.i418
  %3274 = add i64 %3273, 3
  store i64 %3274, i64* %PC.i418
  %3275 = inttoptr i64 %3272 to i32*
  %3276 = load i32, i32* %3275
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_400d96, %struct.Memory** %MEMORY
  %loadMem_400d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %EAX.i416 = bitcast %union.anon* %3283 to i32*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 15
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RBP.i417
  %3288 = sub i64 %3287, 60
  %3289 = load i32, i32* %EAX.i416
  %3290 = zext i32 %3289 to i64
  %3291 = load i64, i64* %PC.i415
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i415
  %3293 = inttoptr i64 %3288 to i32*
  store i32 %3289, i32* %3293
  store %struct.Memory* %loadMem_400d99, %struct.Memory** %MEMORY
  br label %block_.L_400d9c

block_.L_400d9c:                                  ; preds = %block_.L_401033, %block_.L_400d96
  %loadMem_400d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 1
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RBP.i414
  %3304 = sub i64 %3303, 60
  %3305 = load i64, i64* %PC.i412
  %3306 = add i64 %3305, 3
  store i64 %3306, i64* %PC.i412
  %3307 = inttoptr i64 %3304 to i32*
  %3308 = load i32, i32* %3307
  %3309 = zext i32 %3308 to i64
  store i64 %3309, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_400d9c, %struct.Memory** %MEMORY
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 1
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %3315 to i32*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 15
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3318 to i64*
  %3319 = load i32, i32* %EAX.i410
  %3320 = zext i32 %3319 to i64
  %3321 = load i64, i64* %RBP.i411
  %3322 = sub i64 %3321, 52
  %3323 = load i64, i64* %PC.i409
  %3324 = add i64 %3323, 3
  store i64 %3324, i64* %PC.i409
  %3325 = inttoptr i64 %3322 to i32*
  %3326 = load i32, i32* %3325
  %3327 = sub i32 %3319, %3326
  %3328 = icmp ult i32 %3319, %3326
  %3329 = zext i1 %3328 to i8
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3329, i8* %3330, align 1
  %3331 = and i32 %3327, 255
  %3332 = call i32 @llvm.ctpop.i32(i32 %3331)
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = xor i8 %3334, 1
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3335, i8* %3336, align 1
  %3337 = xor i32 %3326, %3319
  %3338 = xor i32 %3337, %3327
  %3339 = lshr i32 %3338, 4
  %3340 = trunc i32 %3339 to i8
  %3341 = and i8 %3340, 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3341, i8* %3342, align 1
  %3343 = icmp eq i32 %3327, 0
  %3344 = zext i1 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3344, i8* %3345, align 1
  %3346 = lshr i32 %3327, 31
  %3347 = trunc i32 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3347, i8* %3348, align 1
  %3349 = lshr i32 %3319, 31
  %3350 = lshr i32 %3326, 31
  %3351 = xor i32 %3350, %3349
  %3352 = xor i32 %3346, %3349
  %3353 = add i32 %3352, %3351
  %3354 = icmp eq i32 %3353, 2
  %3355 = zext i1 %3354 to i8
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3355, i8* %3356, align 1
  store %struct.Memory* %loadMem_400d9f, %struct.Memory** %MEMORY
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %PC.i408
  %3361 = add i64 %3360, 668
  %3362 = load i64, i64* %PC.i408
  %3363 = add i64 %3362, 6
  %3364 = load i64, i64* %PC.i408
  %3365 = add i64 %3364, 6
  store i64 %3365, i64* %PC.i408
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3367 = load i8, i8* %3366, align 1
  %3368 = icmp ne i8 %3367, 0
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3370 = load i8, i8* %3369, align 1
  %3371 = icmp ne i8 %3370, 0
  %3372 = xor i1 %3368, %3371
  %3373 = xor i1 %3372, true
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %BRANCH_TAKEN, align 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3376 = select i1 %3372, i64 %3363, i64 %3361
  store i64 %3376, i64* %3375, align 8
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  %loadBr_400da2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400da2 = icmp eq i8 %loadBr_400da2, 1
  br i1 %cmpBr_400da2, label %block_.L_40103e, label %block_400da8

block_400da8:                                     ; preds = %block_.L_400d9c
  %loadMem_400da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3380, i64 0, i64 0
  %YMM0.i406 = bitcast %union.VectorReg* %3381 to %"class.std::bitset"*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3382, i64 0, i64 0
  %XMM0.i407 = bitcast %union.VectorReg* %3383 to %union.vec128_t*
  %3384 = bitcast %"class.std::bitset"* %YMM0.i406 to i8*
  %3385 = bitcast %"class.std::bitset"* %YMM0.i406 to i8*
  %3386 = bitcast %union.vec128_t* %XMM0.i407 to i8*
  %3387 = load i64, i64* %PC.i405
  %3388 = add i64 %3387, 3
  store i64 %3388, i64* %PC.i405
  %3389 = bitcast i8* %3385 to i64*
  %3390 = load i64, i64* %3389, align 1
  %3391 = getelementptr inbounds i8, i8* %3385, i64 8
  %3392 = bitcast i8* %3391 to i64*
  %3393 = load i64, i64* %3392, align 1
  %3394 = bitcast i8* %3386 to i64*
  %3395 = load i64, i64* %3394, align 1
  %3396 = getelementptr inbounds i8, i8* %3386, i64 8
  %3397 = bitcast i8* %3396 to i64*
  %3398 = load i64, i64* %3397, align 1
  %3399 = xor i64 %3395, %3390
  %3400 = xor i64 %3398, %3393
  %3401 = trunc i64 %3399 to i32
  %3402 = lshr i64 %3399, 32
  %3403 = trunc i64 %3402 to i32
  %3404 = bitcast i8* %3384 to i32*
  store i32 %3401, i32* %3404, align 1
  %3405 = getelementptr inbounds i8, i8* %3384, i64 4
  %3406 = bitcast i8* %3405 to i32*
  store i32 %3403, i32* %3406, align 1
  %3407 = trunc i64 %3400 to i32
  %3408 = getelementptr inbounds i8, i8* %3384, i64 8
  %3409 = bitcast i8* %3408 to i32*
  store i32 %3407, i32* %3409, align 1
  %3410 = lshr i64 %3400, 32
  %3411 = trunc i64 %3410 to i32
  %3412 = getelementptr inbounds i8, i8* %3384, i64 12
  %3413 = bitcast i8* %3412 to i32*
  store i32 %3411, i32* %3413, align 1
  store %struct.Memory* %loadMem_400da8, %struct.Memory** %MEMORY
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3417, i64 0, i64 1
  %YMM1.i404 = bitcast %union.VectorReg* %3418 to %"class.std::bitset"*
  %3419 = bitcast %"class.std::bitset"* %YMM1.i404 to i8*
  %3420 = load i64, i64* %PC.i403
  %3421 = add i64 %3420, 861
  %3422 = load i64, i64* %PC.i403
  %3423 = add i64 %3422, 8
  store i64 %3423, i64* %PC.i403
  %3424 = inttoptr i64 %3421 to double*
  %3425 = load double, double* %3424
  %3426 = bitcast i8* %3419 to double*
  store double %3425, double* %3426, align 1
  %3427 = getelementptr inbounds i8, i8* %3419, i64 8
  %3428 = bitcast i8* %3427 to double*
  store double 0.000000e+00, double* %3428, align 1
  store %struct.Memory* %loadMem_400dab, %struct.Memory** %MEMORY
  %loadMem_400db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3432, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3433 to %"class.std::bitset"*
  %3434 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3435 = load i64, i64* %PC.i402
  %3436 = add i64 %3435, 861
  %3437 = load i64, i64* %PC.i402
  %3438 = add i64 %3437, 8
  store i64 %3438, i64* %PC.i402
  %3439 = inttoptr i64 %3436 to double*
  %3440 = load double, double* %3439
  %3441 = bitcast i8* %3434 to double*
  store double %3440, double* %3441, align 1
  %3442 = getelementptr inbounds i8, i8* %3434, i64 8
  %3443 = bitcast i8* %3442 to double*
  store double 0.000000e+00, double* %3443, align 1
  store %struct.Memory* %loadMem_400db3, %struct.Memory** %MEMORY
  %loadMem_400dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3447, i64 0, i64 3
  %YMM3.i401 = bitcast %union.VectorReg* %3448 to %"class.std::bitset"*
  %3449 = bitcast %"class.std::bitset"* %YMM3.i401 to i8*
  %3450 = load i64, i64* %PC.i400
  %3451 = add i64 %3450, 861
  %3452 = load i64, i64* %PC.i400
  %3453 = add i64 %3452, 8
  store i64 %3453, i64* %PC.i400
  %3454 = inttoptr i64 %3451 to double*
  %3455 = load double, double* %3454
  %3456 = bitcast i8* %3449 to double*
  store double %3455, double* %3456, align 1
  %3457 = getelementptr inbounds i8, i8* %3449, i64 8
  %3458 = bitcast i8* %3457 to double*
  store double 0.000000e+00, double* %3458, align 1
  store %struct.Memory* %loadMem_400dbb, %struct.Memory** %MEMORY
  %loadMem_400dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3462, i64 0, i64 4
  %YMM4.i399 = bitcast %union.VectorReg* %3463 to %"class.std::bitset"*
  %3464 = bitcast %"class.std::bitset"* %YMM4.i399 to i8*
  %3465 = load i64, i64* %PC.i398
  %3466 = add i64 %3465, 861
  %3467 = load i64, i64* %PC.i398
  %3468 = add i64 %3467, 8
  store i64 %3468, i64* %PC.i398
  %3469 = inttoptr i64 %3466 to double*
  %3470 = load double, double* %3469
  %3471 = bitcast i8* %3464 to double*
  store double %3470, double* %3471, align 1
  %3472 = getelementptr inbounds i8, i8* %3464, i64 8
  %3473 = bitcast i8* %3472 to double*
  store double 0.000000e+00, double* %3473, align 1
  store %struct.Memory* %loadMem_400dc3, %struct.Memory** %MEMORY
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RBP.i397
  %3484 = sub i64 %3483, 60
  %3485 = load i64, i64* %PC.i395
  %3486 = add i64 %3485, 3
  store i64 %3486, i64* %PC.i395
  %3487 = inttoptr i64 %3484 to i32*
  %3488 = load i32, i32* %3487
  %3489 = zext i32 %3488 to i64
  store i64 %3489, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_400dcb, %struct.Memory** %MEMORY
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RAX.i394
  %3497 = load i64, i64* %PC.i393
  %3498 = add i64 %3497, 2
  store i64 %3498, i64* %PC.i393
  %3499 = trunc i64 %3496 to i32
  %3500 = shl i32 %3499, 1
  %3501 = icmp slt i32 %3499, 0
  %3502 = icmp slt i32 %3500, 0
  %3503 = xor i1 %3501, %3502
  %3504 = zext i32 %3500 to i64
  store i64 %3504, i64* %RAX.i394, align 8
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3506 = zext i1 %3501 to i8
  store i8 %3506, i8* %3505, align 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3508 = and i32 %3500, 254
  %3509 = call i32 @llvm.ctpop.i32(i32 %3508)
  %3510 = trunc i32 %3509 to i8
  %3511 = and i8 %3510, 1
  %3512 = xor i8 %3511, 1
  store i8 %3512, i8* %3507, align 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3513, align 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3515 = icmp eq i32 %3500, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %3514, align 1
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3518 = lshr i32 %3500, 31
  %3519 = trunc i32 %3518 to i8
  store i8 %3519, i8* %3517, align 1
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3521 = zext i1 %3503 to i8
  store i8 %3521, i8* %3520, align 1
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 1
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %3527 to i32*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 15
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %RBP.i392
  %3532 = sub i64 %3531, 64
  %3533 = load i32, i32* %EAX.i391
  %3534 = zext i32 %3533 to i64
  %3535 = load i64, i64* %PC.i390
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC.i390
  %3537 = inttoptr i64 %3532 to i32*
  store i32 %3533, i32* %3537
  store %struct.Memory* %loadMem_400dd1, %struct.Memory** %MEMORY
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 33
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 15
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3544, i64 0, i64 5
  %YMM5.i389 = bitcast %union.VectorReg* %3545 to %"class.std::bitset"*
  %3546 = bitcast %"class.std::bitset"* %YMM5.i389 to i8*
  %3547 = load i64, i64* %RBP.i388
  %3548 = sub i64 %3547, 24
  %3549 = load i64, i64* %PC.i387
  %3550 = add i64 %3549, 5
  store i64 %3550, i64* %PC.i387
  %3551 = inttoptr i64 %3548 to i32*
  %3552 = load i32, i32* %3551
  %3553 = sitofp i32 %3552 to double
  %3554 = bitcast i8* %3546 to double*
  store double %3553, double* %3554, align 1
  store %struct.Memory* %loadMem_400dd4, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3558, i64 0, i64 5
  %YMM5.i385 = bitcast %union.VectorReg* %3559 to %"class.std::bitset"*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3560, i64 0, i64 4
  %XMM4.i386 = bitcast %union.VectorReg* %3561 to %union.vec128_t*
  %3562 = bitcast %"class.std::bitset"* %YMM5.i385 to i8*
  %3563 = bitcast %"class.std::bitset"* %YMM5.i385 to i8*
  %3564 = bitcast %union.vec128_t* %XMM4.i386 to i8*
  %3565 = load i64, i64* %PC.i384
  %3566 = add i64 %3565, 4
  store i64 %3566, i64* %PC.i384
  %3567 = bitcast i8* %3563 to double*
  %3568 = load double, double* %3567, align 1
  %3569 = getelementptr inbounds i8, i8* %3563, i64 8
  %3570 = bitcast i8* %3569 to i64*
  %3571 = load i64, i64* %3570, align 1
  %3572 = bitcast i8* %3564 to double*
  %3573 = load double, double* %3572, align 1
  %3574 = fmul double %3568, %3573
  %3575 = bitcast i8* %3562 to double*
  store double %3574, double* %3575, align 1
  %3576 = getelementptr inbounds i8, i8* %3562, i64 8
  %3577 = bitcast i8* %3576 to i64*
  store i64 %3571, i64* %3577, align 1
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 33
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 1
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 15
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RBP.i383
  %3588 = sub i64 %3587, 64
  %3589 = load i64, i64* %PC.i381
  %3590 = add i64 %3589, 3
  store i64 %3590, i64* %PC.i381
  %3591 = inttoptr i64 %3588 to i32*
  %3592 = load i32, i32* %3591
  %3593 = zext i32 %3592 to i64
  store i64 %3593, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_400ddd, %struct.Memory** %MEMORY
  %loadMem_400de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %PC.i380
  %3598 = add i64 %3597, 1
  store i64 %3598, i64* %PC.i380
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3601 = bitcast %union.anon* %3600 to i32*
  %3602 = load i32, i32* %3601, align 8
  %3603 = sext i32 %3602 to i64
  %3604 = lshr i64 %3603, 32
  store i64 %3604, i64* %3599, align 8
  store %struct.Memory* %loadMem_400de0, %struct.Memory** %MEMORY
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 15
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3610 to i64*
  %3611 = load i64, i64* %RBP.i376
  %3612 = sub i64 %3611, 48
  %3613 = load i64, i64* %PC.i375
  %3614 = add i64 %3613, 3
  store i64 %3614, i64* %PC.i375
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3616 = bitcast %union.anon* %3615 to i32*
  %3617 = load i32, i32* %3616, align 8
  %3618 = zext i32 %3617 to i64
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3620 = bitcast %union.anon* %3619 to i32*
  %3621 = load i32, i32* %3620, align 8
  %3622 = zext i32 %3621 to i64
  %3623 = inttoptr i64 %3612 to i32*
  %3624 = load i32, i32* %3623
  %3625 = sext i32 %3624 to i64
  %3626 = shl i64 %3622, 32
  %3627 = or i64 %3626, %3618
  %3628 = sdiv i64 %3627, %3625
  %3629 = shl i64 %3628, 32
  %3630 = ashr exact i64 %3629, 32
  %3631 = icmp eq i64 %3628, %3630
  br i1 %3631, label %3636, label %3632

; <label>:3632:                                   ; preds = %block_400da8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3634 = load i64, i64* %3633, align 8
  %3635 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3634, %struct.Memory* %loadMem_400de1)
  br label %routine_idivl_MINUS0x30__rbp_.exit

; <label>:3636:                                   ; preds = %block_400da8
  %3637 = srem i64 %3627, %3625
  %3638 = getelementptr inbounds %union.anon, %union.anon* %3615, i64 0, i32 0
  %3639 = and i64 %3628, 4294967295
  store i64 %3639, i64* %3638, align 8
  %3640 = getelementptr inbounds %union.anon, %union.anon* %3619, i64 0, i32 0
  %3641 = and i64 %3637, 4294967295
  store i64 %3641, i64* %3640, align 8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3642, align 1
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3643, align 1
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3644, align 1
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3645, align 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3646, align 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3647, align 1
  br label %routine_idivl_MINUS0x30__rbp_.exit

routine_idivl_MINUS0x30__rbp_.exit:               ; preds = %3632, %3636
  %3648 = phi %struct.Memory* [ %3635, %3632 ], [ %loadMem_400de1, %3636 ]
  store %struct.Memory* %3648, %struct.Memory** %MEMORY
  %loadMem_400de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 33
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 1
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %3654 to i32*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3655, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %3656 to %"class.std::bitset"*
  %3657 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %3658 = load i32, i32* %EAX.i374
  %3659 = zext i32 %3658 to i64
  %3660 = load i64, i64* %PC.i373
  %3661 = add i64 %3660, 4
  store i64 %3661, i64* %PC.i373
  %3662 = sitofp i32 %3658 to double
  %3663 = bitcast i8* %3657 to double*
  store double %3662, double* %3663, align 1
  store %struct.Memory* %loadMem_400de4, %struct.Memory** %MEMORY
  %loadMem_400de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3667, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %3668 to %"class.std::bitset"*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3669, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %3670 to %union.vec128_t*
  %3671 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3672 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3673 = bitcast %union.vec128_t* %XMM4.i to i8*
  %3674 = load i64, i64* %PC.i372
  %3675 = add i64 %3674, 4
  store i64 %3675, i64* %PC.i372
  %3676 = bitcast i8* %3672 to double*
  %3677 = load double, double* %3676, align 1
  %3678 = getelementptr inbounds i8, i8* %3672, i64 8
  %3679 = bitcast i8* %3678 to i64*
  %3680 = load i64, i64* %3679, align 1
  %3681 = bitcast i8* %3673 to double*
  %3682 = load double, double* %3681, align 1
  %3683 = fdiv double %3677, %3682
  %3684 = bitcast i8* %3671 to double*
  store double %3683, double* %3684, align 1
  %3685 = getelementptr inbounds i8, i8* %3671, i64 8
  %3686 = bitcast i8* %3685 to i64*
  store i64 %3680, i64* %3686, align 1
  store %struct.Memory* %loadMem_400de8, %struct.Memory** %MEMORY
  %loadMem_400dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3693, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %3694 to %union.vec128_t*
  %3695 = load i64, i64* %RBP.i371
  %3696 = sub i64 %3695, 120
  %3697 = bitcast %union.vec128_t* %XMM5.i to i8*
  %3698 = load i64, i64* %PC.i370
  %3699 = add i64 %3698, 5
  store i64 %3699, i64* %PC.i370
  %3700 = bitcast i8* %3697 to double*
  %3701 = load double, double* %3700, align 1
  %3702 = inttoptr i64 %3696 to double*
  store double %3701, double* %3702
  store %struct.Memory* %loadMem_400dec, %struct.Memory** %MEMORY
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3709, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %3710 to %"class.std::bitset"*
  %3711 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3712 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3713 = load i64, i64* %RBP.i369
  %3714 = sub i64 %3713, 120
  %3715 = load i64, i64* %PC.i368
  %3716 = add i64 %3715, 5
  store i64 %3716, i64* %PC.i368
  %3717 = bitcast i8* %3712 to double*
  %3718 = load double, double* %3717, align 1
  %3719 = getelementptr inbounds i8, i8* %3712, i64 8
  %3720 = bitcast i8* %3719 to i64*
  %3721 = load i64, i64* %3720, align 1
  %3722 = inttoptr i64 %3714 to double*
  %3723 = load double, double* %3722
  %3724 = fmul double %3718, %3723
  %3725 = bitcast i8* %3711 to double*
  store double %3724, double* %3725, align 1
  %3726 = getelementptr inbounds i8, i8* %3711, i64 8
  %3727 = bitcast i8* %3726 to i64*
  store i64 %3721, i64* %3727, align 1
  store %struct.Memory* %loadMem_400df1, %struct.Memory** %MEMORY
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 15
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3734, i64 0, i64 0
  %XMM0.i367 = bitcast %union.VectorReg* %3735 to %union.vec128_t*
  %3736 = load i64, i64* %RBP.i366
  %3737 = sub i64 %3736, 176
  %3738 = bitcast %union.vec128_t* %XMM0.i367 to i8*
  %3739 = load i64, i64* %PC.i365
  %3740 = add i64 %3739, 8
  store i64 %3740, i64* %PC.i365
  %3741 = bitcast i8* %3738 to double*
  %3742 = load double, double* %3741, align 1
  %3743 = inttoptr i64 %3737 to double*
  store double %3742, double* %3743
  store %struct.Memory* %loadMem_400df6, %struct.Memory** %MEMORY
  %loadMem_400dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3747, i64 0, i64 0
  %YMM0.i364 = bitcast %union.VectorReg* %3748 to %"class.std::bitset"*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3749, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %3750 to %union.vec128_t*
  %3751 = bitcast %"class.std::bitset"* %YMM0.i364 to i8*
  %3752 = bitcast %union.vec128_t* %XMM3.i to i8*
  %3753 = load i64, i64* %PC.i363
  %3754 = add i64 %3753, 3
  store i64 %3754, i64* %PC.i363
  %3755 = bitcast i8* %3752 to <2 x i32>*
  %3756 = load <2 x i32>, <2 x i32>* %3755, align 1
  %3757 = getelementptr inbounds i8, i8* %3752, i64 8
  %3758 = bitcast i8* %3757 to <2 x i32>*
  %3759 = load <2 x i32>, <2 x i32>* %3758, align 1
  %3760 = extractelement <2 x i32> %3756, i32 0
  %3761 = bitcast i8* %3751 to i32*
  store i32 %3760, i32* %3761, align 1
  %3762 = extractelement <2 x i32> %3756, i32 1
  %3763 = getelementptr inbounds i8, i8* %3751, i64 4
  %3764 = bitcast i8* %3763 to i32*
  store i32 %3762, i32* %3764, align 1
  %3765 = extractelement <2 x i32> %3759, i32 0
  %3766 = getelementptr inbounds i8, i8* %3751, i64 8
  %3767 = bitcast i8* %3766 to i32*
  store i32 %3765, i32* %3767, align 1
  %3768 = extractelement <2 x i32> %3759, i32 1
  %3769 = getelementptr inbounds i8, i8* %3751, i64 12
  %3770 = bitcast i8* %3769 to i32*
  store i32 %3768, i32* %3770, align 1
  store %struct.Memory* %loadMem_400dfe, %struct.Memory** %MEMORY
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3777, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3778 to %union.vec128_t*
  %3779 = load i64, i64* %RBP.i362
  %3780 = sub i64 %3779, 184
  %3781 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3782 = load i64, i64* %PC.i361
  %3783 = add i64 %3782, 8
  store i64 %3783, i64* %PC.i361
  %3784 = bitcast i8* %3781 to double*
  %3785 = load double, double* %3784, align 1
  %3786 = inttoptr i64 %3780 to double*
  store double %3785, double* %3786
  store %struct.Memory* %loadMem_400e01, %struct.Memory** %MEMORY
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3794 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3793, i64 0, i64 1
  %XMM1.i360 = bitcast %union.VectorReg* %3794 to %union.vec128_t*
  %3795 = load i64, i64* %RBP.i359
  %3796 = sub i64 %3795, 192
  %3797 = bitcast %union.vec128_t* %XMM1.i360 to i8*
  %3798 = load i64, i64* %PC.i358
  %3799 = add i64 %3798, 8
  store i64 %3799, i64* %PC.i358
  %3800 = bitcast i8* %3797 to double*
  %3801 = load double, double* %3800, align 1
  %3802 = inttoptr i64 %3796 to double*
  store double %3801, double* %3802
  store %struct.Memory* %loadMem_400e09, %struct.Memory** %MEMORY
  %loadMem1_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i357
  %3807 = add i64 %3806, -2177
  %3808 = load i64, i64* %PC.i357
  %3809 = add i64 %3808, 5
  %3810 = load i64, i64* %PC.i357
  %3811 = add i64 %3810, 5
  store i64 %3811, i64* %PC.i357
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3813 = load i64, i64* %3812, align 8
  %3814 = add i64 %3813, -8
  %3815 = inttoptr i64 %3814 to i64*
  store i64 %3809, i64* %3815
  store i64 %3814, i64* %3812, align 8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3807, i64* %3816, align 8
  store %struct.Memory* %loadMem1_400e11, %struct.Memory** %MEMORY
  %loadMem2_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e11 = load i64, i64* %3
  %call2_400e11 = call %struct.Memory* @sub_400590.sin_plt(%struct.State* %0, i64 %loadPC_400e11, %struct.Memory* %loadMem2_400e11)
  store %struct.Memory* %call2_400e11, %struct.Memory** %MEMORY
  %loadMem_400e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 15
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3823, i64 0, i64 0
  %XMM0.i356 = bitcast %union.VectorReg* %3824 to %union.vec128_t*
  %3825 = load i64, i64* %RBP.i355
  %3826 = sub i64 %3825, 160
  %3827 = bitcast %union.vec128_t* %XMM0.i356 to i8*
  %3828 = load i64, i64* %PC.i354
  %3829 = add i64 %3828, 8
  store i64 %3829, i64* %PC.i354
  %3830 = bitcast i8* %3827 to double*
  %3831 = load double, double* %3830, align 1
  %3832 = inttoptr i64 %3826 to double*
  store double %3831, double* %3832
  store %struct.Memory* %loadMem_400e16, %struct.Memory** %MEMORY
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3839, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %3840 to %"class.std::bitset"*
  %3841 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %3842 = load i64, i64* %RBP.i352
  %3843 = sub i64 %3842, 184
  %3844 = load i64, i64* %PC.i351
  %3845 = add i64 %3844, 8
  store i64 %3845, i64* %PC.i351
  %3846 = inttoptr i64 %3843 to double*
  %3847 = load double, double* %3846
  %3848 = bitcast i8* %3841 to double*
  store double %3847, double* %3848, align 1
  %3849 = getelementptr inbounds i8, i8* %3841, i64 8
  %3850 = bitcast i8* %3849 to double*
  store double 0.000000e+00, double* %3850, align 1
  store %struct.Memory* %loadMem_400e1e, %struct.Memory** %MEMORY
  %loadMem_400e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 15
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3857, i64 0, i64 0
  %YMM0.i350 = bitcast %union.VectorReg* %3858 to %"class.std::bitset"*
  %3859 = bitcast %"class.std::bitset"* %YMM0.i350 to i8*
  %3860 = bitcast %"class.std::bitset"* %YMM0.i350 to i8*
  %3861 = load i64, i64* %RBP.i349
  %3862 = sub i64 %3861, 160
  %3863 = load i64, i64* %PC.i348
  %3864 = add i64 %3863, 8
  store i64 %3864, i64* %PC.i348
  %3865 = bitcast i8* %3860 to double*
  %3866 = load double, double* %3865, align 1
  %3867 = getelementptr inbounds i8, i8* %3860, i64 8
  %3868 = bitcast i8* %3867 to i64*
  %3869 = load i64, i64* %3868, align 1
  %3870 = inttoptr i64 %3862 to double*
  %3871 = load double, double* %3870
  %3872 = fmul double %3866, %3871
  %3873 = bitcast i8* %3859 to double*
  store double %3872, double* %3873, align 1
  %3874 = getelementptr inbounds i8, i8* %3859, i64 8
  %3875 = bitcast i8* %3874 to i64*
  store i64 %3869, i64* %3875, align 1
  store %struct.Memory* %loadMem_400e26, %struct.Memory** %MEMORY
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 15
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3882, i64 0, i64 0
  %YMM0.i347 = bitcast %union.VectorReg* %3883 to %"class.std::bitset"*
  %3884 = bitcast %"class.std::bitset"* %YMM0.i347 to i8*
  %3885 = bitcast %"class.std::bitset"* %YMM0.i347 to i8*
  %3886 = load i64, i64* %RBP.i346
  %3887 = sub i64 %3886, 160
  %3888 = load i64, i64* %PC.i345
  %3889 = add i64 %3888, 8
  store i64 %3889, i64* %PC.i345
  %3890 = bitcast i8* %3885 to double*
  %3891 = load double, double* %3890, align 1
  %3892 = getelementptr inbounds i8, i8* %3885, i64 8
  %3893 = bitcast i8* %3892 to i64*
  %3894 = load i64, i64* %3893, align 1
  %3895 = inttoptr i64 %3887 to double*
  %3896 = load double, double* %3895
  %3897 = fmul double %3891, %3896
  %3898 = bitcast i8* %3884 to double*
  store double %3897, double* %3898, align 1
  %3899 = getelementptr inbounds i8, i8* %3884, i64 8
  %3900 = bitcast i8* %3899 to i64*
  store i64 %3894, i64* %3900, align 1
  store %struct.Memory* %loadMem_400e2e, %struct.Memory** %MEMORY
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 15
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3907, i64 0, i64 0
  %XMM0.i344 = bitcast %union.VectorReg* %3908 to %union.vec128_t*
  %3909 = load i64, i64* %RBP.i343
  %3910 = sub i64 %3909, 144
  %3911 = bitcast %union.vec128_t* %XMM0.i344 to i8*
  %3912 = load i64, i64* %PC.i342
  %3913 = add i64 %3912, 8
  store i64 %3913, i64* %PC.i342
  %3914 = bitcast i8* %3911 to double*
  %3915 = load double, double* %3914, align 1
  %3916 = inttoptr i64 %3910 to double*
  store double %3915, double* %3916
  store %struct.Memory* %loadMem_400e36, %struct.Memory** %MEMORY
  %loadMem_400e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 15
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3923, i64 0, i64 0
  %YMM0.i341 = bitcast %union.VectorReg* %3924 to %"class.std::bitset"*
  %3925 = bitcast %"class.std::bitset"* %YMM0.i341 to i8*
  %3926 = load i64, i64* %RBP.i340
  %3927 = sub i64 %3926, 120
  %3928 = load i64, i64* %PC.i339
  %3929 = add i64 %3928, 5
  store i64 %3929, i64* %PC.i339
  %3930 = inttoptr i64 %3927 to double*
  %3931 = load double, double* %3930
  %3932 = bitcast i8* %3925 to double*
  store double %3931, double* %3932, align 1
  %3933 = getelementptr inbounds i8, i8* %3925, i64 8
  %3934 = bitcast i8* %3933 to double*
  store double 0.000000e+00, double* %3934, align 1
  store %struct.Memory* %loadMem_400e3e, %struct.Memory** %MEMORY
  %loadMem1_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3937 to i64*
  %3938 = load i64, i64* %PC.i338
  %3939 = add i64 %3938, -2227
  %3940 = load i64, i64* %PC.i338
  %3941 = add i64 %3940, 5
  %3942 = load i64, i64* %PC.i338
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i338
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3945 = load i64, i64* %3944, align 8
  %3946 = add i64 %3945, -8
  %3947 = inttoptr i64 %3946 to i64*
  store i64 %3941, i64* %3947
  store i64 %3946, i64* %3944, align 8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3939, i64* %3948, align 8
  store %struct.Memory* %loadMem1_400e43, %struct.Memory** %MEMORY
  %loadMem2_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e43 = load i64, i64* %3
  %call2_400e43 = call %struct.Memory* @sub_400590.sin_plt(%struct.State* %0, i64 %loadPC_400e43, %struct.Memory* %loadMem2_400e43)
  store %struct.Memory* %call2_400e43, %struct.Memory** %MEMORY
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3955, i64 0, i64 0
  %XMM0.i337 = bitcast %union.VectorReg* %3956 to %union.vec128_t*
  %3957 = load i64, i64* %RBP.i336
  %3958 = sub i64 %3957, 136
  %3959 = bitcast %union.vec128_t* %XMM0.i337 to i8*
  %3960 = load i64, i64* %PC.i335
  %3961 = add i64 %3960, 8
  store i64 %3961, i64* %PC.i335
  %3962 = bitcast i8* %3959 to double*
  %3963 = load double, double* %3962, align 1
  %3964 = inttoptr i64 %3958 to double*
  store double %3963, double* %3964
  store %struct.Memory* %loadMem_400e48, %struct.Memory** %MEMORY
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 15
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3971, i64 0, i64 0
  %YMM0.i334 = bitcast %union.VectorReg* %3972 to %"class.std::bitset"*
  %3973 = bitcast %"class.std::bitset"* %YMM0.i334 to i8*
  %3974 = load i64, i64* %RBP.i333
  %3975 = sub i64 %3974, 192
  %3976 = load i64, i64* %PC.i332
  %3977 = add i64 %3976, 8
  store i64 %3977, i64* %PC.i332
  %3978 = inttoptr i64 %3975 to double*
  %3979 = load double, double* %3978
  %3980 = bitcast i8* %3973 to double*
  store double %3979, double* %3980, align 1
  %3981 = getelementptr inbounds i8, i8* %3973, i64 8
  %3982 = bitcast i8* %3981 to double*
  store double 0.000000e+00, double* %3982, align 1
  store %struct.Memory* %loadMem_400e50, %struct.Memory** %MEMORY
  %loadMem_400e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 15
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3990 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3989, i64 0, i64 0
  %XMM0.i331 = bitcast %union.VectorReg* %3990 to %union.vec128_t*
  %3991 = load i64, i64* %RBP.i330
  %3992 = sub i64 %3991, 152
  %3993 = bitcast %union.vec128_t* %XMM0.i331 to i8*
  %3994 = load i64, i64* %PC.i329
  %3995 = add i64 %3994, 8
  store i64 %3995, i64* %PC.i329
  %3996 = bitcast i8* %3993 to double*
  %3997 = load double, double* %3996, align 1
  %3998 = inttoptr i64 %3992 to double*
  store double %3997, double* %3998
  store %struct.Memory* %loadMem_400e58, %struct.Memory** %MEMORY
  %loadMem_400e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 15
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4005, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %4006 to %"class.std::bitset"*
  %4007 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %4008 = load i64, i64* %RBP.i327
  %4009 = sub i64 %4008, 176
  %4010 = load i64, i64* %PC.i326
  %4011 = add i64 %4010, 8
  store i64 %4011, i64* %PC.i326
  %4012 = inttoptr i64 %4009 to double*
  %4013 = load double, double* %4012
  %4014 = bitcast i8* %4007 to double*
  store double %4013, double* %4014, align 1
  %4015 = getelementptr inbounds i8, i8* %4007, i64 8
  %4016 = bitcast i8* %4015 to double*
  store double 0.000000e+00, double* %4016, align 1
  store %struct.Memory* %loadMem_400e60, %struct.Memory** %MEMORY
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4023, i64 0, i64 1
  %XMM1.i325 = bitcast %union.VectorReg* %4024 to %union.vec128_t*
  %4025 = load i64, i64* %RBP.i324
  %4026 = sub i64 %4025, 128
  %4027 = bitcast %union.vec128_t* %XMM1.i325 to i8*
  %4028 = load i64, i64* %PC.i323
  %4029 = add i64 %4028, 5
  store i64 %4029, i64* %PC.i323
  %4030 = bitcast i8* %4027 to double*
  %4031 = load double, double* %4030, align 1
  %4032 = inttoptr i64 %4026 to double*
  store double %4031, double* %4032
  store %struct.Memory* %loadMem_400e68, %struct.Memory** %MEMORY
  %loadMem_400e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 15
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RBP.i322
  %4040 = sub i64 %4039, 36
  %4041 = load i64, i64* %PC.i321
  %4042 = add i64 %4041, 7
  store i64 %4042, i64* %PC.i321
  %4043 = inttoptr i64 %4040 to i32*
  store i32 1, i32* %4043
  store %struct.Memory* %loadMem_400e6d, %struct.Memory** %MEMORY
  br label %block_.L_400e74

block_.L_400e74:                                  ; preds = %block_.L_400fc1, %routine_idivl_MINUS0x30__rbp_.exit
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 1
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RBP.i320
  %4054 = sub i64 %4053, 36
  %4055 = load i64, i64* %PC.i318
  %4056 = add i64 %4055, 3
  store i64 %4056, i64* %PC.i318
  %4057 = inttoptr i64 %4054 to i32*
  %4058 = load i32, i32* %4057
  %4059 = zext i32 %4058 to i64
  store i64 %4059, i64* %RAX.i319, align 8
  store %struct.Memory* %loadMem_400e74, %struct.Memory** %MEMORY
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 33
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %4065 to i32*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 15
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %4068 to i64*
  %4069 = load i32, i32* %EAX.i316
  %4070 = zext i32 %4069 to i64
  %4071 = load i64, i64* %RBP.i317
  %4072 = sub i64 %4071, 60
  %4073 = load i64, i64* %PC.i315
  %4074 = add i64 %4073, 3
  store i64 %4074, i64* %PC.i315
  %4075 = inttoptr i64 %4072 to i32*
  %4076 = load i32, i32* %4075
  %4077 = sub i32 %4069, %4076
  %4078 = icmp ult i32 %4069, %4076
  %4079 = zext i1 %4078 to i8
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4079, i8* %4080, align 1
  %4081 = and i32 %4077, 255
  %4082 = call i32 @llvm.ctpop.i32(i32 %4081)
  %4083 = trunc i32 %4082 to i8
  %4084 = and i8 %4083, 1
  %4085 = xor i8 %4084, 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4085, i8* %4086, align 1
  %4087 = xor i32 %4076, %4069
  %4088 = xor i32 %4087, %4077
  %4089 = lshr i32 %4088, 4
  %4090 = trunc i32 %4089 to i8
  %4091 = and i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4091, i8* %4092, align 1
  %4093 = icmp eq i32 %4077, 0
  %4094 = zext i1 %4093 to i8
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4094, i8* %4095, align 1
  %4096 = lshr i32 %4077, 31
  %4097 = trunc i32 %4096 to i8
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4097, i8* %4098, align 1
  %4099 = lshr i32 %4069, 31
  %4100 = lshr i32 %4076, 31
  %4101 = xor i32 %4100, %4099
  %4102 = xor i32 %4096, %4099
  %4103 = add i32 %4102, %4101
  %4104 = icmp eq i32 %4103, 2
  %4105 = zext i1 %4104 to i8
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4105, i8* %4106, align 1
  store %struct.Memory* %loadMem_400e77, %struct.Memory** %MEMORY
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 33
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %PC.i314
  %4111 = add i64 %4110, 441
  %4112 = load i64, i64* %PC.i314
  %4113 = add i64 %4112, 6
  %4114 = load i64, i64* %PC.i314
  %4115 = add i64 %4114, 6
  store i64 %4115, i64* %PC.i314
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4117 = load i8, i8* %4116, align 1
  %4118 = icmp eq i8 %4117, 0
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4120 = load i8, i8* %4119, align 1
  %4121 = icmp ne i8 %4120, 0
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4123 = load i8, i8* %4122, align 1
  %4124 = icmp ne i8 %4123, 0
  %4125 = xor i1 %4121, %4124
  %4126 = xor i1 %4125, true
  %4127 = and i1 %4118, %4126
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %BRANCH_TAKEN, align 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4130 = select i1 %4127, i64 %4111, i64 %4113
  store i64 %4130, i64* %4129, align 8
  store %struct.Memory* %loadMem_400e7a, %struct.Memory** %MEMORY
  %loadBr_400e7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e7a = icmp eq i8 %loadBr_400e7a, 1
  br i1 %cmpBr_400e7a, label %block_.L_401033, label %block_400e80

block_400e80:                                     ; preds = %block_.L_400e74
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 1
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 15
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %4139 to i64*
  %4140 = load i64, i64* %RBP.i313
  %4141 = sub i64 %4140, 36
  %4142 = load i64, i64* %PC.i311
  %4143 = add i64 %4142, 3
  store i64 %4143, i64* %PC.i311
  %4144 = inttoptr i64 %4141 to i32*
  %4145 = load i32, i32* %4144
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_400e80, %struct.Memory** %MEMORY
  %loadMem_400e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %4152 to i32*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 15
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RBP.i310
  %4157 = sub i64 %4156, 28
  %4158 = load i32, i32* %EAX.i309
  %4159 = zext i32 %4158 to i64
  %4160 = load i64, i64* %PC.i308
  %4161 = add i64 %4160, 3
  store i64 %4161, i64* %PC.i308
  %4162 = inttoptr i64 %4157 to i32*
  store i32 %4158, i32* %4162
  store %struct.Memory* %loadMem_400e83, %struct.Memory** %MEMORY
  br label %block_.L_400e86

block_.L_400e86:                                  ; preds = %block_.L_400fb3, %block_400e80
  %loadMem_400e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RBP.i307
  %4173 = sub i64 %4172, 28
  %4174 = load i64, i64* %PC.i305
  %4175 = add i64 %4174, 3
  store i64 %4175, i64* %PC.i305
  %4176 = inttoptr i64 %4173 to i32*
  %4177 = load i32, i32* %4176
  %4178 = zext i32 %4177 to i64
  store i64 %4178, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_400e86, %struct.Memory** %MEMORY
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 5
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i304
  %4189 = sub i64 %4188, 36
  %4190 = load i64, i64* %PC.i302
  %4191 = add i64 %4190, 3
  store i64 %4191, i64* %PC.i302
  %4192 = inttoptr i64 %4189 to i32*
  %4193 = load i32, i32* %4192
  %4194 = zext i32 %4193 to i64
  store i64 %4194, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_400e89, %struct.Memory** %MEMORY
  %loadMem_400e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 5
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 15
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %RCX.i300
  %4205 = load i64, i64* %RBP.i301
  %4206 = sub i64 %4205, 48
  %4207 = load i64, i64* %PC.i299
  %4208 = add i64 %4207, 3
  store i64 %4208, i64* %PC.i299
  %4209 = trunc i64 %4204 to i32
  %4210 = inttoptr i64 %4206 to i32*
  %4211 = load i32, i32* %4210
  %4212 = add i32 %4211, %4209
  %4213 = zext i32 %4212 to i64
  store i64 %4213, i64* %RCX.i300, align 8
  %4214 = icmp ult i32 %4212, %4209
  %4215 = icmp ult i32 %4212, %4211
  %4216 = or i1 %4214, %4215
  %4217 = zext i1 %4216 to i8
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4217, i8* %4218, align 1
  %4219 = and i32 %4212, 255
  %4220 = call i32 @llvm.ctpop.i32(i32 %4219)
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4223, i8* %4224, align 1
  %4225 = xor i32 %4211, %4209
  %4226 = xor i32 %4225, %4212
  %4227 = lshr i32 %4226, 4
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4229, i8* %4230, align 1
  %4231 = icmp eq i32 %4212, 0
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4232, i8* %4233, align 1
  %4234 = lshr i32 %4212, 31
  %4235 = trunc i32 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i32 %4209, 31
  %4238 = lshr i32 %4211, 31
  %4239 = xor i32 %4234, %4237
  %4240 = xor i32 %4234, %4238
  %4241 = add i32 %4239, %4240
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4243, i8* %4244, align 1
  store %struct.Memory* %loadMem_400e8c, %struct.Memory** %MEMORY
  %loadMem_400e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 5
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RCX.i298
  %4252 = load i64, i64* %PC.i297
  %4253 = add i64 %4252, 3
  store i64 %4253, i64* %PC.i297
  %4254 = trunc i64 %4251 to i32
  %4255 = sub i32 %4254, 2
  %4256 = zext i32 %4255 to i64
  store i64 %4256, i64* %RCX.i298, align 8
  %4257 = icmp ult i32 %4254, 2
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4258, i8* %4259, align 1
  %4260 = and i32 %4255, 255
  %4261 = call i32 @llvm.ctpop.i32(i32 %4260)
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  %4264 = xor i8 %4263, 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4264, i8* %4265, align 1
  %4266 = xor i64 2, %4251
  %4267 = trunc i64 %4266 to i32
  %4268 = xor i32 %4267, %4255
  %4269 = lshr i32 %4268, 4
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4271, i8* %4272, align 1
  %4273 = icmp eq i32 %4255, 0
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4274, i8* %4275, align 1
  %4276 = lshr i32 %4255, 31
  %4277 = trunc i32 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4277, i8* %4278, align 1
  %4279 = lshr i32 %4254, 31
  %4280 = xor i32 %4276, %4279
  %4281 = add i32 %4280, %4279
  %4282 = icmp eq i32 %4281, 2
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4283, i8* %4284, align 1
  store %struct.Memory* %loadMem_400e8f, %struct.Memory** %MEMORY
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 1
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %4290 to i32*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 5
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4293 to i32*
  %4294 = load i32, i32* %EAX.i296
  %4295 = zext i32 %4294 to i64
  %4296 = load i32, i32* %ECX.i
  %4297 = zext i32 %4296 to i64
  %4298 = load i64, i64* %PC.i295
  %4299 = add i64 %4298, 2
  store i64 %4299, i64* %PC.i295
  %4300 = sub i32 %4294, %4296
  %4301 = icmp ult i32 %4294, %4296
  %4302 = zext i1 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4302, i8* %4303, align 1
  %4304 = and i32 %4300, 255
  %4305 = call i32 @llvm.ctpop.i32(i32 %4304)
  %4306 = trunc i32 %4305 to i8
  %4307 = and i8 %4306, 1
  %4308 = xor i8 %4307, 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4308, i8* %4309, align 1
  %4310 = xor i64 %4297, %4295
  %4311 = trunc i64 %4310 to i32
  %4312 = xor i32 %4311, %4300
  %4313 = lshr i32 %4312, 4
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4315, i8* %4316, align 1
  %4317 = icmp eq i32 %4300, 0
  %4318 = zext i1 %4317 to i8
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4318, i8* %4319, align 1
  %4320 = lshr i32 %4300, 31
  %4321 = trunc i32 %4320 to i8
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4321, i8* %4322, align 1
  %4323 = lshr i32 %4294, 31
  %4324 = lshr i32 %4296, 31
  %4325 = xor i32 %4324, %4323
  %4326 = xor i32 %4320, %4323
  %4327 = add i32 %4326, %4325
  %4328 = icmp eq i32 %4327, 2
  %4329 = zext i1 %4328 to i8
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4329, i8* %4330, align 1
  store %struct.Memory* %loadMem_400e92, %struct.Memory** %MEMORY
  %loadMem_400e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %PC.i294
  %4335 = add i64 %4334, 301
  %4336 = load i64, i64* %PC.i294
  %4337 = add i64 %4336, 6
  %4338 = load i64, i64* %PC.i294
  %4339 = add i64 %4338, 6
  store i64 %4339, i64* %PC.i294
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4341 = load i8, i8* %4340, align 1
  %4342 = icmp eq i8 %4341, 0
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4344 = load i8, i8* %4343, align 1
  %4345 = icmp ne i8 %4344, 0
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4347 = load i8, i8* %4346, align 1
  %4348 = icmp ne i8 %4347, 0
  %4349 = xor i1 %4345, %4348
  %4350 = xor i1 %4349, true
  %4351 = and i1 %4342, %4350
  %4352 = zext i1 %4351 to i8
  store i8 %4352, i8* %BRANCH_TAKEN, align 1
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4354 = select i1 %4351, i64 %4335, i64 %4337
  store i64 %4354, i64* %4353, align 8
  store %struct.Memory* %loadMem_400e94, %struct.Memory** %MEMORY
  %loadBr_400e94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e94 = icmp eq i8 %loadBr_400e94, 1
  br i1 %cmpBr_400e94, label %block_.L_400fc1, label %block_400e9a

block_400e9a:                                     ; preds = %block_.L_400e86
  %loadMem_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 1
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 15
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %RBP.i293
  %4365 = sub i64 %4364, 28
  %4366 = load i64, i64* %PC.i291
  %4367 = add i64 %4366, 3
  store i64 %4367, i64* %PC.i291
  %4368 = inttoptr i64 %4365 to i32*
  %4369 = load i32, i32* %4368
  %4370 = zext i32 %4369 to i64
  store i64 %4370, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_400e9a, %struct.Memory** %MEMORY
  %loadMem_400e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 1
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %4376 to i32*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 15
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %4379 to i64*
  %4380 = load i64, i64* %RBP.i290
  %4381 = sub i64 %4380, 32
  %4382 = load i32, i32* %EAX.i289
  %4383 = zext i32 %4382 to i64
  %4384 = load i64, i64* %PC.i288
  %4385 = add i64 %4384, 3
  store i64 %4385, i64* %PC.i288
  %4386 = inttoptr i64 %4381 to i32*
  store i32 %4382, i32* %4386
  store %struct.Memory* %loadMem_400e9d, %struct.Memory** %MEMORY
  br label %block_.L_400ea0

block_.L_400ea0:                                  ; preds = %block_400eac, %block_400e9a
  %loadMem_400ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 33
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 1
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 15
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %4395 to i64*
  %4396 = load i64, i64* %RBP.i287
  %4397 = sub i64 %4396, 32
  %4398 = load i64, i64* %PC.i285
  %4399 = add i64 %4398, 3
  store i64 %4399, i64* %PC.i285
  %4400 = inttoptr i64 %4397 to i32*
  %4401 = load i32, i32* %4400
  %4402 = zext i32 %4401 to i64
  store i64 %4402, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_400ea0, %struct.Memory** %MEMORY
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 1
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %4408 to i32*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 15
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %4411 to i64*
  %4412 = load i32, i32* %EAX.i283
  %4413 = zext i32 %4412 to i64
  %4414 = load i64, i64* %RBP.i284
  %4415 = sub i64 %4414, 56
  %4416 = load i64, i64* %PC.i282
  %4417 = add i64 %4416, 3
  store i64 %4417, i64* %PC.i282
  %4418 = inttoptr i64 %4415 to i32*
  %4419 = load i32, i32* %4418
  %4420 = sub i32 %4412, %4419
  %4421 = icmp ult i32 %4412, %4419
  %4422 = zext i1 %4421 to i8
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4422, i8* %4423, align 1
  %4424 = and i32 %4420, 255
  %4425 = call i32 @llvm.ctpop.i32(i32 %4424)
  %4426 = trunc i32 %4425 to i8
  %4427 = and i8 %4426, 1
  %4428 = xor i8 %4427, 1
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4428, i8* %4429, align 1
  %4430 = xor i32 %4419, %4412
  %4431 = xor i32 %4430, %4420
  %4432 = lshr i32 %4431, 4
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4434, i8* %4435, align 1
  %4436 = icmp eq i32 %4420, 0
  %4437 = zext i1 %4436 to i8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4437, i8* %4438, align 1
  %4439 = lshr i32 %4420, 31
  %4440 = trunc i32 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i32 %4412, 31
  %4443 = lshr i32 %4419, 31
  %4444 = xor i32 %4443, %4442
  %4445 = xor i32 %4439, %4442
  %4446 = add i32 %4445, %4444
  %4447 = icmp eq i32 %4446, 2
  %4448 = zext i1 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4448, i8* %4449, align 1
  store %struct.Memory* %loadMem_400ea3, %struct.Memory** %MEMORY
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4452 to i64*
  %4453 = load i64, i64* %PC.i281
  %4454 = add i64 %4453, 264
  %4455 = load i64, i64* %PC.i281
  %4456 = add i64 %4455, 6
  %4457 = load i64, i64* %PC.i281
  %4458 = add i64 %4457, 6
  store i64 %4458, i64* %PC.i281
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4460 = load i8, i8* %4459, align 1
  %4461 = icmp eq i8 %4460, 0
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4463 = load i8, i8* %4462, align 1
  %4464 = icmp ne i8 %4463, 0
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4466 = load i8, i8* %4465, align 1
  %4467 = icmp ne i8 %4466, 0
  %4468 = xor i1 %4464, %4467
  %4469 = xor i1 %4468, true
  %4470 = and i1 %4461, %4469
  %4471 = zext i1 %4470 to i8
  store i8 %4471, i8* %BRANCH_TAKEN, align 1
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4473 = select i1 %4470, i64 %4454, i64 %4456
  store i64 %4473, i64* %4472, align 8
  store %struct.Memory* %loadMem_400ea6, %struct.Memory** %MEMORY
  %loadBr_400ea6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ea6 = icmp eq i8 %loadBr_400ea6, 1
  br i1 %cmpBr_400ea6, label %block_.L_400fae, label %block_400eac

block_400eac:                                     ; preds = %block_.L_400ea0
  %loadMem_400eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 15
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %RBP.i280
  %4484 = sub i64 %4483, 32
  %4485 = load i64, i64* %PC.i278
  %4486 = add i64 %4485, 3
  store i64 %4486, i64* %PC.i278
  %4487 = inttoptr i64 %4484 to i32*
  %4488 = load i32, i32* %4487
  %4489 = zext i32 %4488 to i64
  store i64 %4489, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_400eac, %struct.Memory** %MEMORY
  %loadMem_400eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %4495 to i32*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RBP.i277
  %4500 = sub i64 %4499, 76
  %4501 = load i32, i32* %EAX.i276
  %4502 = zext i32 %4501 to i64
  %4503 = load i64, i64* %PC.i275
  %4504 = add i64 %4503, 3
  store i64 %4504, i64* %PC.i275
  %4505 = inttoptr i64 %4500 to i32*
  store i32 %4501, i32* %4505
  store %struct.Memory* %loadMem_400eaf, %struct.Memory** %MEMORY
  %loadMem_400eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 1
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 15
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %4514 to i64*
  %4515 = load i64, i64* %RBP.i274
  %4516 = sub i64 %4515, 76
  %4517 = load i64, i64* %PC.i272
  %4518 = add i64 %4517, 3
  store i64 %4518, i64* %PC.i272
  %4519 = inttoptr i64 %4516 to i32*
  %4520 = load i32, i32* %4519
  %4521 = zext i32 %4520 to i64
  store i64 %4521, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_400eb2, %struct.Memory** %MEMORY
  %loadMem_400eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 1
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 15
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4530 to i64*
  %4531 = load i64, i64* %RAX.i270
  %4532 = load i64, i64* %RBP.i271
  %4533 = sub i64 %4532, 60
  %4534 = load i64, i64* %PC.i269
  %4535 = add i64 %4534, 3
  store i64 %4535, i64* %PC.i269
  %4536 = trunc i64 %4531 to i32
  %4537 = inttoptr i64 %4533 to i32*
  %4538 = load i32, i32* %4537
  %4539 = add i32 %4538, %4536
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RAX.i270, align 8
  %4541 = icmp ult i32 %4539, %4536
  %4542 = icmp ult i32 %4539, %4538
  %4543 = or i1 %4541, %4542
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4544, i8* %4545, align 1
  %4546 = and i32 %4539, 255
  %4547 = call i32 @llvm.ctpop.i32(i32 %4546)
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = xor i8 %4549, 1
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4550, i8* %4551, align 1
  %4552 = xor i32 %4538, %4536
  %4553 = xor i32 %4552, %4539
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4556, i8* %4557, align 1
  %4558 = icmp eq i32 %4539, 0
  %4559 = zext i1 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4559, i8* %4560, align 1
  %4561 = lshr i32 %4539, 31
  %4562 = trunc i32 %4561 to i8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4562, i8* %4563, align 1
  %4564 = lshr i32 %4536, 31
  %4565 = lshr i32 %4538, 31
  %4566 = xor i32 %4561, %4564
  %4567 = xor i32 %4561, %4565
  %4568 = add i32 %4566, %4567
  %4569 = icmp eq i32 %4568, 2
  %4570 = zext i1 %4569 to i8
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4570, i8* %4571, align 1
  store %struct.Memory* %loadMem_400eb5, %struct.Memory** %MEMORY
  %loadMem_400eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 1
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %4577 to i32*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 15
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %RBP.i268
  %4582 = sub i64 %4581, 80
  %4583 = load i32, i32* %EAX.i267
  %4584 = zext i32 %4583 to i64
  %4585 = load i64, i64* %PC.i266
  %4586 = add i64 %4585, 3
  store i64 %4586, i64* %PC.i266
  %4587 = inttoptr i64 %4582 to i32*
  store i32 %4583, i32* %4587
  store %struct.Memory* %loadMem_400eb8, %struct.Memory** %MEMORY
  %loadMem_400ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 33
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 15
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4594, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %4595 to %"class.std::bitset"*
  %4596 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %4597 = load i64, i64* %RBP.i264
  %4598 = sub i64 %4597, 152
  %4599 = load i64, i64* %PC.i263
  %4600 = add i64 %4599, 8
  store i64 %4600, i64* %PC.i263
  %4601 = inttoptr i64 %4598 to double*
  %4602 = load double, double* %4601
  %4603 = bitcast i8* %4596 to double*
  store double %4602, double* %4603, align 1
  %4604 = getelementptr inbounds i8, i8* %4596, i64 8
  %4605 = bitcast i8* %4604 to double*
  store double 0.000000e+00, double* %4605, align 1
  store %struct.Memory* %loadMem_400ebb, %struct.Memory** %MEMORY
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 33
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 5
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 15
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %4614 to i64*
  %4615 = load i64, i64* %RBP.i262
  %4616 = sub i64 %4615, 8
  %4617 = load i64, i64* %PC.i260
  %4618 = add i64 %4617, 4
  store i64 %4618, i64* %PC.i260
  %4619 = inttoptr i64 %4616 to i64*
  %4620 = load i64, i64* %4619
  store i64 %4620, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_400ec3, %struct.Memory** %MEMORY
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 7
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %4626 to i64*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 15
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %4629 to i64*
  %4630 = load i64, i64* %RBP.i259
  %4631 = sub i64 %4630, 80
  %4632 = load i64, i64* %PC.i257
  %4633 = add i64 %4632, 4
  store i64 %4633, i64* %PC.i257
  %4634 = inttoptr i64 %4631 to i32*
  %4635 = load i32, i32* %4634
  %4636 = sext i32 %4635 to i64
  store i64 %4636, i64* %RDX.i258, align 8
  store %struct.Memory* %loadMem_400ec7, %struct.Memory** %MEMORY
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 5
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 7
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %4645 to i64*
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4646, i64 0, i64 0
  %YMM0.i256 = bitcast %union.VectorReg* %4647 to %"class.std::bitset"*
  %4648 = bitcast %"class.std::bitset"* %YMM0.i256 to i8*
  %4649 = bitcast %"class.std::bitset"* %YMM0.i256 to i8*
  %4650 = load i64, i64* %RCX.i254
  %4651 = load i64, i64* %RDX.i255
  %4652 = mul i64 %4651, 8
  %4653 = add i64 %4652, %4650
  %4654 = load i64, i64* %PC.i253
  %4655 = add i64 %4654, 5
  store i64 %4655, i64* %PC.i253
  %4656 = bitcast i8* %4649 to double*
  %4657 = load double, double* %4656, align 1
  %4658 = getelementptr inbounds i8, i8* %4649, i64 8
  %4659 = bitcast i8* %4658 to i64*
  %4660 = load i64, i64* %4659, align 1
  %4661 = inttoptr i64 %4653 to double*
  %4662 = load double, double* %4661
  %4663 = fmul double %4657, %4662
  %4664 = bitcast i8* %4648 to double*
  store double %4663, double* %4664, align 1
  %4665 = getelementptr inbounds i8, i8* %4648, i64 8
  %4666 = bitcast i8* %4665 to i64*
  store i64 %4660, i64* %4666, align 1
  store %struct.Memory* %loadMem_400ecb, %struct.Memory** %MEMORY
  %loadMem_400ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 15
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4673, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %4674 to %"class.std::bitset"*
  %4675 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %4676 = load i64, i64* %RBP.i251
  %4677 = sub i64 %4676, 128
  %4678 = load i64, i64* %PC.i250
  %4679 = add i64 %4678, 5
  store i64 %4679, i64* %PC.i250
  %4680 = inttoptr i64 %4677 to double*
  %4681 = load double, double* %4680
  %4682 = bitcast i8* %4675 to double*
  store double %4681, double* %4682, align 1
  %4683 = getelementptr inbounds i8, i8* %4675, i64 8
  %4684 = bitcast i8* %4683 to double*
  store double 0.000000e+00, double* %4684, align 1
  store %struct.Memory* %loadMem_400ed0, %struct.Memory** %MEMORY
  %loadMem_400ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 5
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 15
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %RBP.i249
  %4695 = sub i64 %4694, 8
  %4696 = load i64, i64* %PC.i247
  %4697 = add i64 %4696, 4
  store i64 %4697, i64* %PC.i247
  %4698 = inttoptr i64 %4695 to i64*
  %4699 = load i64, i64* %4698
  store i64 %4699, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_400ed5, %struct.Memory** %MEMORY
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 1
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 15
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %RBP.i246
  %4710 = sub i64 %4709, 80
  %4711 = load i64, i64* %PC.i244
  %4712 = add i64 %4711, 3
  store i64 %4712, i64* %PC.i244
  %4713 = inttoptr i64 %4710 to i32*
  %4714 = load i32, i32* %4713
  %4715 = zext i32 %4714 to i64
  store i64 %4715, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_400ed9, %struct.Memory** %MEMORY
  %loadMem_400edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RAX.i243
  %4723 = load i64, i64* %PC.i242
  %4724 = add i64 %4723, 3
  store i64 %4724, i64* %PC.i242
  %4725 = trunc i64 %4722 to i32
  %4726 = add i32 1, %4725
  %4727 = zext i32 %4726 to i64
  store i64 %4727, i64* %RAX.i243, align 8
  %4728 = icmp ult i32 %4726, %4725
  %4729 = icmp ult i32 %4726, 1
  %4730 = or i1 %4728, %4729
  %4731 = zext i1 %4730 to i8
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4731, i8* %4732, align 1
  %4733 = and i32 %4726, 255
  %4734 = call i32 @llvm.ctpop.i32(i32 %4733)
  %4735 = trunc i32 %4734 to i8
  %4736 = and i8 %4735, 1
  %4737 = xor i8 %4736, 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4737, i8* %4738, align 1
  %4739 = xor i64 1, %4722
  %4740 = trunc i64 %4739 to i32
  %4741 = xor i32 %4740, %4726
  %4742 = lshr i32 %4741, 4
  %4743 = trunc i32 %4742 to i8
  %4744 = and i8 %4743, 1
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4744, i8* %4745, align 1
  %4746 = icmp eq i32 %4726, 0
  %4747 = zext i1 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4747, i8* %4748, align 1
  %4749 = lshr i32 %4726, 31
  %4750 = trunc i32 %4749 to i8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4750, i8* %4751, align 1
  %4752 = lshr i32 %4725, 31
  %4753 = xor i32 %4749, %4752
  %4754 = add i32 %4753, %4749
  %4755 = icmp eq i32 %4754, 2
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4756, i8* %4757, align 1
  store %struct.Memory* %loadMem_400edc, %struct.Memory** %MEMORY
  %loadMem_400edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 1
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 7
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %4766 to i64*
  %4767 = load i32, i32* %EAX.i240
  %4768 = zext i32 %4767 to i64
  %4769 = load i64, i64* %PC.i239
  %4770 = add i64 %4769, 3
  store i64 %4770, i64* %PC.i239
  %4771 = shl i64 %4768, 32
  %4772 = ashr exact i64 %4771, 32
  store i64 %4772, i64* %RDX.i241, align 8
  store %struct.Memory* %loadMem_400edf, %struct.Memory** %MEMORY
  %loadMem_400ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 5
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 7
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4782, i64 0, i64 1
  %YMM1.i238 = bitcast %union.VectorReg* %4783 to %"class.std::bitset"*
  %4784 = bitcast %"class.std::bitset"* %YMM1.i238 to i8*
  %4785 = bitcast %"class.std::bitset"* %YMM1.i238 to i8*
  %4786 = load i64, i64* %RCX.i236
  %4787 = load i64, i64* %RDX.i237
  %4788 = mul i64 %4787, 8
  %4789 = add i64 %4788, %4786
  %4790 = load i64, i64* %PC.i235
  %4791 = add i64 %4790, 5
  store i64 %4791, i64* %PC.i235
  %4792 = bitcast i8* %4785 to double*
  %4793 = load double, double* %4792, align 1
  %4794 = getelementptr inbounds i8, i8* %4785, i64 8
  %4795 = bitcast i8* %4794 to i64*
  %4796 = load i64, i64* %4795, align 1
  %4797 = inttoptr i64 %4789 to double*
  %4798 = load double, double* %4797
  %4799 = fmul double %4793, %4798
  %4800 = bitcast i8* %4784 to double*
  store double %4799, double* %4800, align 1
  %4801 = getelementptr inbounds i8, i8* %4784, i64 8
  %4802 = bitcast i8* %4801 to i64*
  store i64 %4796, i64* %4802, align 1
  store %struct.Memory* %loadMem_400ee2, %struct.Memory** %MEMORY
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4806, i64 0, i64 0
  %YMM0.i233 = bitcast %union.VectorReg* %4807 to %"class.std::bitset"*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4808, i64 0, i64 1
  %XMM1.i234 = bitcast %union.VectorReg* %4809 to %union.vec128_t*
  %4810 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %4811 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %4812 = bitcast %union.vec128_t* %XMM1.i234 to i8*
  %4813 = load i64, i64* %PC.i232
  %4814 = add i64 %4813, 4
  store i64 %4814, i64* %PC.i232
  %4815 = bitcast i8* %4811 to double*
  %4816 = load double, double* %4815, align 1
  %4817 = getelementptr inbounds i8, i8* %4811, i64 8
  %4818 = bitcast i8* %4817 to i64*
  %4819 = load i64, i64* %4818, align 1
  %4820 = bitcast i8* %4812 to double*
  %4821 = load double, double* %4820, align 1
  %4822 = fsub double %4816, %4821
  %4823 = bitcast i8* %4810 to double*
  store double %4822, double* %4823, align 1
  %4824 = getelementptr inbounds i8, i8* %4810, i64 8
  %4825 = bitcast i8* %4824 to i64*
  store i64 %4819, i64* %4825, align 1
  store %struct.Memory* %loadMem_400ee7, %struct.Memory** %MEMORY
  %loadMem_400eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 15
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4832, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %4833 to %union.vec128_t*
  %4834 = load i64, i64* %RBP.i230
  %4835 = sub i64 %4834, 112
  %4836 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %4837 = load i64, i64* %PC.i229
  %4838 = add i64 %4837, 5
  store i64 %4838, i64* %PC.i229
  %4839 = bitcast i8* %4836 to double*
  %4840 = load double, double* %4839, align 1
  %4841 = inttoptr i64 %4835 to double*
  store double %4840, double* %4841
  store %struct.Memory* %loadMem_400eeb, %struct.Memory** %MEMORY
  %loadMem_400ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 15
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4848, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %4849 to %"class.std::bitset"*
  %4850 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %4851 = load i64, i64* %RBP.i227
  %4852 = sub i64 %4851, 152
  %4853 = load i64, i64* %PC.i226
  %4854 = add i64 %4853, 8
  store i64 %4854, i64* %PC.i226
  %4855 = inttoptr i64 %4852 to double*
  %4856 = load double, double* %4855
  %4857 = bitcast i8* %4850 to double*
  store double %4856, double* %4857, align 1
  %4858 = getelementptr inbounds i8, i8* %4850, i64 8
  %4859 = bitcast i8* %4858 to double*
  store double 0.000000e+00, double* %4859, align 1
  store %struct.Memory* %loadMem_400ef0, %struct.Memory** %MEMORY
  %loadMem_400ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 33
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 5
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 15
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4868 to i64*
  %4869 = load i64, i64* %RBP.i225
  %4870 = sub i64 %4869, 8
  %4871 = load i64, i64* %PC.i223
  %4872 = add i64 %4871, 4
  store i64 %4872, i64* %PC.i223
  %4873 = inttoptr i64 %4870 to i64*
  %4874 = load i64, i64* %4873
  store i64 %4874, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_400ef8, %struct.Memory** %MEMORY
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 33
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 1
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 15
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %4883 to i64*
  %4884 = load i64, i64* %RBP.i222
  %4885 = sub i64 %4884, 80
  %4886 = load i64, i64* %PC.i220
  %4887 = add i64 %4886, 3
  store i64 %4887, i64* %PC.i220
  %4888 = inttoptr i64 %4885 to i32*
  %4889 = load i32, i32* %4888
  %4890 = zext i32 %4889 to i64
  store i64 %4890, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_400efc, %struct.Memory** %MEMORY
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 1
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %RAX.i219
  %4898 = load i64, i64* %PC.i218
  %4899 = add i64 %4898, 3
  store i64 %4899, i64* %PC.i218
  %4900 = trunc i64 %4897 to i32
  %4901 = add i32 1, %4900
  %4902 = zext i32 %4901 to i64
  store i64 %4902, i64* %RAX.i219, align 8
  %4903 = icmp ult i32 %4901, %4900
  %4904 = icmp ult i32 %4901, 1
  %4905 = or i1 %4903, %4904
  %4906 = zext i1 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4906, i8* %4907, align 1
  %4908 = and i32 %4901, 255
  %4909 = call i32 @llvm.ctpop.i32(i32 %4908)
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4912, i8* %4913, align 1
  %4914 = xor i64 1, %4897
  %4915 = trunc i64 %4914 to i32
  %4916 = xor i32 %4915, %4901
  %4917 = lshr i32 %4916, 4
  %4918 = trunc i32 %4917 to i8
  %4919 = and i8 %4918, 1
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4919, i8* %4920, align 1
  %4921 = icmp eq i32 %4901, 0
  %4922 = zext i1 %4921 to i8
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4922, i8* %4923, align 1
  %4924 = lshr i32 %4901, 31
  %4925 = trunc i32 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4925, i8* %4926, align 1
  %4927 = lshr i32 %4900, 31
  %4928 = xor i32 %4924, %4927
  %4929 = add i32 %4928, %4924
  %4930 = icmp eq i32 %4929, 2
  %4931 = zext i1 %4930 to i8
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4931, i8* %4932, align 1
  store %struct.Memory* %loadMem_400eff, %struct.Memory** %MEMORY
  %loadMem_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 33
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 1
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %4938 to i32*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 7
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %4941 to i64*
  %4942 = load i32, i32* %EAX.i216
  %4943 = zext i32 %4942 to i64
  %4944 = load i64, i64* %PC.i215
  %4945 = add i64 %4944, 3
  store i64 %4945, i64* %PC.i215
  %4946 = shl i64 %4943, 32
  %4947 = ashr exact i64 %4946, 32
  store i64 %4947, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_400f02, %struct.Memory** %MEMORY
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 5
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 7
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4957, i64 0, i64 0
  %YMM0.i214 = bitcast %union.VectorReg* %4958 to %"class.std::bitset"*
  %4959 = bitcast %"class.std::bitset"* %YMM0.i214 to i8*
  %4960 = bitcast %"class.std::bitset"* %YMM0.i214 to i8*
  %4961 = load i64, i64* %RCX.i212
  %4962 = load i64, i64* %RDX.i213
  %4963 = mul i64 %4962, 8
  %4964 = add i64 %4963, %4961
  %4965 = load i64, i64* %PC.i211
  %4966 = add i64 %4965, 5
  store i64 %4966, i64* %PC.i211
  %4967 = bitcast i8* %4960 to double*
  %4968 = load double, double* %4967, align 1
  %4969 = getelementptr inbounds i8, i8* %4960, i64 8
  %4970 = bitcast i8* %4969 to i64*
  %4971 = load i64, i64* %4970, align 1
  %4972 = inttoptr i64 %4964 to double*
  %4973 = load double, double* %4972
  %4974 = fmul double %4968, %4973
  %4975 = bitcast i8* %4959 to double*
  store double %4974, double* %4975, align 1
  %4976 = getelementptr inbounds i8, i8* %4959, i64 8
  %4977 = bitcast i8* %4976 to i64*
  store i64 %4971, i64* %4977, align 1
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  %loadMem_400f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4984, i64 0, i64 1
  %YMM1.i210 = bitcast %union.VectorReg* %4985 to %"class.std::bitset"*
  %4986 = bitcast %"class.std::bitset"* %YMM1.i210 to i8*
  %4987 = load i64, i64* %RBP.i209
  %4988 = sub i64 %4987, 128
  %4989 = load i64, i64* %PC.i208
  %4990 = add i64 %4989, 5
  store i64 %4990, i64* %PC.i208
  %4991 = inttoptr i64 %4988 to double*
  %4992 = load double, double* %4991
  %4993 = bitcast i8* %4986 to double*
  store double %4992, double* %4993, align 1
  %4994 = getelementptr inbounds i8, i8* %4986, i64 8
  %4995 = bitcast i8* %4994 to double*
  store double 0.000000e+00, double* %4995, align 1
  store %struct.Memory* %loadMem_400f0a, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 5
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 15
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %RBP.i207
  %5006 = sub i64 %5005, 8
  %5007 = load i64, i64* %PC.i205
  %5008 = add i64 %5007, 4
  store i64 %5008, i64* %PC.i205
  %5009 = inttoptr i64 %5006 to i64*
  %5010 = load i64, i64* %5009
  store i64 %5010, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 7
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 15
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %5019 to i64*
  %5020 = load i64, i64* %RBP.i204
  %5021 = sub i64 %5020, 80
  %5022 = load i64, i64* %PC.i202
  %5023 = add i64 %5022, 4
  store i64 %5023, i64* %PC.i202
  %5024 = inttoptr i64 %5021 to i32*
  %5025 = load i32, i32* %5024
  %5026 = sext i32 %5025 to i64
  store i64 %5026, i64* %RDX.i203, align 8
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 33
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 5
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 7
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %5035 to i64*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5037 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5036, i64 0, i64 1
  %YMM1.i201 = bitcast %union.VectorReg* %5037 to %"class.std::bitset"*
  %5038 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %5039 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %5040 = load i64, i64* %RCX.i199
  %5041 = load i64, i64* %RDX.i200
  %5042 = mul i64 %5041, 8
  %5043 = add i64 %5042, %5040
  %5044 = load i64, i64* %PC.i198
  %5045 = add i64 %5044, 5
  store i64 %5045, i64* %PC.i198
  %5046 = bitcast i8* %5039 to double*
  %5047 = load double, double* %5046, align 1
  %5048 = getelementptr inbounds i8, i8* %5039, i64 8
  %5049 = bitcast i8* %5048 to i64*
  %5050 = load i64, i64* %5049, align 1
  %5051 = inttoptr i64 %5043 to double*
  %5052 = load double, double* %5051
  %5053 = fmul double %5047, %5052
  %5054 = bitcast i8* %5038 to double*
  store double %5053, double* %5054, align 1
  %5055 = getelementptr inbounds i8, i8* %5038, i64 8
  %5056 = bitcast i8* %5055 to i64*
  store i64 %5050, i64* %5056, align 1
  store %struct.Memory* %loadMem_400f17, %struct.Memory** %MEMORY
  %loadMem_400f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 33
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5060, i64 0, i64 0
  %YMM0.i196 = bitcast %union.VectorReg* %5061 to %"class.std::bitset"*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5062, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %5063 to %union.vec128_t*
  %5064 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %5065 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %5066 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %5067 = load i64, i64* %PC.i195
  %5068 = add i64 %5067, 4
  store i64 %5068, i64* %PC.i195
  %5069 = bitcast i8* %5065 to double*
  %5070 = load double, double* %5069, align 1
  %5071 = getelementptr inbounds i8, i8* %5065, i64 8
  %5072 = bitcast i8* %5071 to i64*
  %5073 = load i64, i64* %5072, align 1
  %5074 = bitcast i8* %5066 to double*
  %5075 = load double, double* %5074, align 1
  %5076 = fadd double %5070, %5075
  %5077 = bitcast i8* %5064 to double*
  store double %5076, double* %5077, align 1
  %5078 = getelementptr inbounds i8, i8* %5064, i64 8
  %5079 = bitcast i8* %5078 to i64*
  store i64 %5073, i64* %5079, align 1
  store %struct.Memory* %loadMem_400f1c, %struct.Memory** %MEMORY
  %loadMem_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 15
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5086, i64 0, i64 0
  %XMM0.i194 = bitcast %union.VectorReg* %5087 to %union.vec128_t*
  %5088 = load i64, i64* %RBP.i193
  %5089 = sub i64 %5088, 104
  %5090 = bitcast %union.vec128_t* %XMM0.i194 to i8*
  %5091 = load i64, i64* %PC.i192
  %5092 = add i64 %5091, 5
  store i64 %5092, i64* %PC.i192
  %5093 = bitcast i8* %5090 to double*
  %5094 = load double, double* %5093, align 1
  %5095 = inttoptr i64 %5089 to double*
  store double %5094, double* %5095
  store %struct.Memory* %loadMem_400f20, %struct.Memory** %MEMORY
  %loadMem_400f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 5
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 15
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RBP.i191
  %5106 = sub i64 %5105, 8
  %5107 = load i64, i64* %PC.i189
  %5108 = add i64 %5107, 4
  store i64 %5108, i64* %PC.i189
  %5109 = inttoptr i64 %5106 to i64*
  %5110 = load i64, i64* %5109
  store i64 %5110, i64* %RCX.i190, align 8
  store %struct.Memory* %loadMem_400f25, %struct.Memory** %MEMORY
  %loadMem_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 7
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RDX.i187 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %RBP.i188
  %5121 = sub i64 %5120, 76
  %5122 = load i64, i64* %PC.i186
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %PC.i186
  %5124 = inttoptr i64 %5121 to i32*
  %5125 = load i32, i32* %5124
  %5126 = sext i32 %5125 to i64
  store i64 %5126, i64* %RDX.i187, align 8
  store %struct.Memory* %loadMem_400f29, %struct.Memory** %MEMORY
  %loadMem_400f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 5
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 7
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5136, i64 0, i64 0
  %YMM0.i185 = bitcast %union.VectorReg* %5137 to %"class.std::bitset"*
  %5138 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %5139 = load i64, i64* %RCX.i183
  %5140 = load i64, i64* %RDX.i184
  %5141 = mul i64 %5140, 8
  %5142 = add i64 %5141, %5139
  %5143 = load i64, i64* %PC.i182
  %5144 = add i64 %5143, 5
  store i64 %5144, i64* %PC.i182
  %5145 = inttoptr i64 %5142 to double*
  %5146 = load double, double* %5145
  %5147 = bitcast i8* %5138 to double*
  store double %5146, double* %5147, align 1
  %5148 = getelementptr inbounds i8, i8* %5138, i64 8
  %5149 = bitcast i8* %5148 to double*
  store double 0.000000e+00, double* %5149, align 1
  store %struct.Memory* %loadMem_400f2d, %struct.Memory** %MEMORY
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 15
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 0
  %YMM0.i181 = bitcast %union.VectorReg* %5157 to %"class.std::bitset"*
  %5158 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %5159 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %5160 = load i64, i64* %RBP.i180
  %5161 = sub i64 %5160, 112
  %5162 = load i64, i64* %PC.i179
  %5163 = add i64 %5162, 5
  store i64 %5163, i64* %PC.i179
  %5164 = bitcast i8* %5159 to double*
  %5165 = load double, double* %5164, align 1
  %5166 = getelementptr inbounds i8, i8* %5159, i64 8
  %5167 = bitcast i8* %5166 to i64*
  %5168 = load i64, i64* %5167, align 1
  %5169 = inttoptr i64 %5161 to double*
  %5170 = load double, double* %5169
  %5171 = fsub double %5165, %5170
  %5172 = bitcast i8* %5158 to double*
  store double %5171, double* %5172, align 1
  %5173 = getelementptr inbounds i8, i8* %5158, i64 8
  %5174 = bitcast i8* %5173 to i64*
  store i64 %5168, i64* %5174, align 1
  store %struct.Memory* %loadMem_400f32, %struct.Memory** %MEMORY
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 33
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 5
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 15
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %RBP.i178
  %5185 = sub i64 %5184, 8
  %5186 = load i64, i64* %PC.i176
  %5187 = add i64 %5186, 4
  store i64 %5187, i64* %PC.i176
  %5188 = inttoptr i64 %5185 to i64*
  %5189 = load i64, i64* %5188
  store i64 %5189, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_400f37, %struct.Memory** %MEMORY
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 33
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5192 to i64*
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 7
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 15
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %5198 to i64*
  %5199 = load i64, i64* %RBP.i175
  %5200 = sub i64 %5199, 80
  %5201 = load i64, i64* %PC.i173
  %5202 = add i64 %5201, 4
  store i64 %5202, i64* %PC.i173
  %5203 = inttoptr i64 %5200 to i32*
  %5204 = load i32, i32* %5203
  %5205 = sext i32 %5204 to i64
  store i64 %5205, i64* %RDX.i174, align 8
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 33
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5208 to i64*
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 5
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 7
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5215, i64 0, i64 0
  %XMM0.i172 = bitcast %union.VectorReg* %5216 to %union.vec128_t*
  %5217 = load i64, i64* %RCX.i170
  %5218 = load i64, i64* %RDX.i171
  %5219 = mul i64 %5218, 8
  %5220 = add i64 %5219, %5217
  %5221 = bitcast %union.vec128_t* %XMM0.i172 to i8*
  %5222 = load i64, i64* %PC.i169
  %5223 = add i64 %5222, 5
  store i64 %5223, i64* %PC.i169
  %5224 = bitcast i8* %5221 to double*
  %5225 = load double, double* %5224, align 1
  %5226 = inttoptr i64 %5220 to double*
  store double %5225, double* %5226
  store %struct.Memory* %loadMem_400f3f, %struct.Memory** %MEMORY
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 33
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5229 to i64*
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 5
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %5232 to i64*
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 15
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %5235 to i64*
  %5236 = load i64, i64* %RBP.i168
  %5237 = sub i64 %5236, 8
  %5238 = load i64, i64* %PC.i166
  %5239 = add i64 %5238, 4
  store i64 %5239, i64* %PC.i166
  %5240 = inttoptr i64 %5237 to i64*
  %5241 = load i64, i64* %5240
  store i64 %5241, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_400f44, %struct.Memory** %MEMORY
  %loadMem_400f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 1
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 15
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %5250 to i64*
  %5251 = load i64, i64* %RBP.i165
  %5252 = sub i64 %5251, 76
  %5253 = load i64, i64* %PC.i163
  %5254 = add i64 %5253, 3
  store i64 %5254, i64* %PC.i163
  %5255 = inttoptr i64 %5252 to i32*
  %5256 = load i32, i32* %5255
  %5257 = zext i32 %5256 to i64
  store i64 %5257, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_400f48, %struct.Memory** %MEMORY
  %loadMem_400f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 1
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RAX.i162
  %5265 = load i64, i64* %PC.i161
  %5266 = add i64 %5265, 3
  store i64 %5266, i64* %PC.i161
  %5267 = trunc i64 %5264 to i32
  %5268 = add i32 1, %5267
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RAX.i162, align 8
  %5270 = icmp ult i32 %5268, %5267
  %5271 = icmp ult i32 %5268, 1
  %5272 = or i1 %5270, %5271
  %5273 = zext i1 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5273, i8* %5274, align 1
  %5275 = and i32 %5268, 255
  %5276 = call i32 @llvm.ctpop.i32(i32 %5275)
  %5277 = trunc i32 %5276 to i8
  %5278 = and i8 %5277, 1
  %5279 = xor i8 %5278, 1
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5279, i8* %5280, align 1
  %5281 = xor i64 1, %5264
  %5282 = trunc i64 %5281 to i32
  %5283 = xor i32 %5282, %5268
  %5284 = lshr i32 %5283, 4
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5286, i8* %5287, align 1
  %5288 = icmp eq i32 %5268, 0
  %5289 = zext i1 %5288 to i8
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5289, i8* %5290, align 1
  %5291 = lshr i32 %5268, 31
  %5292 = trunc i32 %5291 to i8
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5292, i8* %5293, align 1
  %5294 = lshr i32 %5267, 31
  %5295 = xor i32 %5291, %5294
  %5296 = add i32 %5295, %5291
  %5297 = icmp eq i32 %5296, 2
  %5298 = zext i1 %5297 to i8
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5298, i8* %5299, align 1
  store %struct.Memory* %loadMem_400f4b, %struct.Memory** %MEMORY
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 33
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 1
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %5305 to i32*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 7
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %5308 to i64*
  %5309 = load i32, i32* %EAX.i159
  %5310 = zext i32 %5309 to i64
  %5311 = load i64, i64* %PC.i158
  %5312 = add i64 %5311, 3
  store i64 %5312, i64* %PC.i158
  %5313 = shl i64 %5310, 32
  %5314 = ashr exact i64 %5313, 32
  store i64 %5314, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_400f4e, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 5
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 7
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5324, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %5325 to %"class.std::bitset"*
  %5326 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %5327 = load i64, i64* %RCX.i155
  %5328 = load i64, i64* %RDX.i156
  %5329 = mul i64 %5328, 8
  %5330 = add i64 %5329, %5327
  %5331 = load i64, i64* %PC.i154
  %5332 = add i64 %5331, 5
  store i64 %5332, i64* %PC.i154
  %5333 = inttoptr i64 %5330 to double*
  %5334 = load double, double* %5333
  %5335 = bitcast i8* %5326 to double*
  store double %5334, double* %5335, align 1
  %5336 = getelementptr inbounds i8, i8* %5326, i64 8
  %5337 = bitcast i8* %5336 to double*
  store double 0.000000e+00, double* %5337, align 1
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 15
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5344, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %5345 to %"class.std::bitset"*
  %5346 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %5347 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %5348 = load i64, i64* %RBP.i152
  %5349 = sub i64 %5348, 104
  %5350 = load i64, i64* %PC.i151
  %5351 = add i64 %5350, 5
  store i64 %5351, i64* %PC.i151
  %5352 = bitcast i8* %5347 to double*
  %5353 = load double, double* %5352, align 1
  %5354 = getelementptr inbounds i8, i8* %5347, i64 8
  %5355 = bitcast i8* %5354 to i64*
  %5356 = load i64, i64* %5355, align 1
  %5357 = inttoptr i64 %5349 to double*
  %5358 = load double, double* %5357
  %5359 = fsub double %5353, %5358
  %5360 = bitcast i8* %5346 to double*
  store double %5359, double* %5360, align 1
  %5361 = getelementptr inbounds i8, i8* %5346, i64 8
  %5362 = bitcast i8* %5361 to i64*
  store i64 %5356, i64* %5362, align 1
  store %struct.Memory* %loadMem_400f56, %struct.Memory** %MEMORY
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 33
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 5
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 15
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %RBP.i150
  %5373 = sub i64 %5372, 8
  %5374 = load i64, i64* %PC.i148
  %5375 = add i64 %5374, 4
  store i64 %5375, i64* %PC.i148
  %5376 = inttoptr i64 %5373 to i64*
  %5377 = load i64, i64* %5376
  store i64 %5377, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_400f5b, %struct.Memory** %MEMORY
  %loadMem_400f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i147
  %5388 = sub i64 %5387, 80
  %5389 = load i64, i64* %PC.i145
  %5390 = add i64 %5389, 3
  store i64 %5390, i64* %PC.i145
  %5391 = inttoptr i64 %5388 to i32*
  %5392 = load i32, i32* %5391
  %5393 = zext i32 %5392 to i64
  store i64 %5393, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_400f5f, %struct.Memory** %MEMORY
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 1
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %RAX.i144
  %5401 = load i64, i64* %PC.i143
  %5402 = add i64 %5401, 3
  store i64 %5402, i64* %PC.i143
  %5403 = trunc i64 %5400 to i32
  %5404 = add i32 1, %5403
  %5405 = zext i32 %5404 to i64
  store i64 %5405, i64* %RAX.i144, align 8
  %5406 = icmp ult i32 %5404, %5403
  %5407 = icmp ult i32 %5404, 1
  %5408 = or i1 %5406, %5407
  %5409 = zext i1 %5408 to i8
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5409, i8* %5410, align 1
  %5411 = and i32 %5404, 255
  %5412 = call i32 @llvm.ctpop.i32(i32 %5411)
  %5413 = trunc i32 %5412 to i8
  %5414 = and i8 %5413, 1
  %5415 = xor i8 %5414, 1
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5415, i8* %5416, align 1
  %5417 = xor i64 1, %5400
  %5418 = trunc i64 %5417 to i32
  %5419 = xor i32 %5418, %5404
  %5420 = lshr i32 %5419, 4
  %5421 = trunc i32 %5420 to i8
  %5422 = and i8 %5421, 1
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5422, i8* %5423, align 1
  %5424 = icmp eq i32 %5404, 0
  %5425 = zext i1 %5424 to i8
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5425, i8* %5426, align 1
  %5427 = lshr i32 %5404, 31
  %5428 = trunc i32 %5427 to i8
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5428, i8* %5429, align 1
  %5430 = lshr i32 %5403, 31
  %5431 = xor i32 %5427, %5430
  %5432 = add i32 %5431, %5427
  %5433 = icmp eq i32 %5432, 2
  %5434 = zext i1 %5433 to i8
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5434, i8* %5435, align 1
  store %struct.Memory* %loadMem_400f62, %struct.Memory** %MEMORY
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 33
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 1
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %5441 to i32*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 7
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %5444 to i64*
  %5445 = load i32, i32* %EAX.i141
  %5446 = zext i32 %5445 to i64
  %5447 = load i64, i64* %PC.i140
  %5448 = add i64 %5447, 3
  store i64 %5448, i64* %PC.i140
  %5449 = shl i64 %5446, 32
  %5450 = ashr exact i64 %5449, 32
  store i64 %5450, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_400f65, %struct.Memory** %MEMORY
  %loadMem_400f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 5
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 7
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5461 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5460, i64 0, i64 0
  %XMM0.i139 = bitcast %union.VectorReg* %5461 to %union.vec128_t*
  %5462 = load i64, i64* %RCX.i137
  %5463 = load i64, i64* %RDX.i138
  %5464 = mul i64 %5463, 8
  %5465 = add i64 %5464, %5462
  %5466 = bitcast %union.vec128_t* %XMM0.i139 to i8*
  %5467 = load i64, i64* %PC.i136
  %5468 = add i64 %5467, 5
  store i64 %5468, i64* %PC.i136
  %5469 = bitcast i8* %5466 to double*
  %5470 = load double, double* %5469, align 1
  %5471 = inttoptr i64 %5465 to double*
  store double %5470, double* %5471
  store %struct.Memory* %loadMem_400f68, %struct.Memory** %MEMORY
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 33
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 15
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %5477 to i64*
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5478, i64 0, i64 0
  %YMM0.i135 = bitcast %union.VectorReg* %5479 to %"class.std::bitset"*
  %5480 = bitcast %"class.std::bitset"* %YMM0.i135 to i8*
  %5481 = load i64, i64* %RBP.i134
  %5482 = sub i64 %5481, 112
  %5483 = load i64, i64* %PC.i133
  %5484 = add i64 %5483, 5
  store i64 %5484, i64* %PC.i133
  %5485 = inttoptr i64 %5482 to double*
  %5486 = load double, double* %5485
  %5487 = bitcast i8* %5480 to double*
  store double %5486, double* %5487, align 1
  %5488 = getelementptr inbounds i8, i8* %5480, i64 8
  %5489 = bitcast i8* %5488 to double*
  store double 0.000000e+00, double* %5489, align 1
  store %struct.Memory* %loadMem_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5492 to i64*
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 5
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 15
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5498 to i64*
  %5499 = load i64, i64* %RBP.i132
  %5500 = sub i64 %5499, 8
  %5501 = load i64, i64* %PC.i130
  %5502 = add i64 %5501, 4
  store i64 %5502, i64* %PC.i130
  %5503 = inttoptr i64 %5500 to i64*
  %5504 = load i64, i64* %5503
  store i64 %5504, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_400f72, %struct.Memory** %MEMORY
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 33
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5507 to i64*
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 7
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %5510 to i64*
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 15
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5513 to i64*
  %5514 = load i64, i64* %RBP.i129
  %5515 = sub i64 %5514, 76
  %5516 = load i64, i64* %PC.i127
  %5517 = add i64 %5516, 4
  store i64 %5517, i64* %PC.i127
  %5518 = inttoptr i64 %5515 to i32*
  %5519 = load i32, i32* %5518
  %5520 = sext i32 %5519 to i64
  store i64 %5520, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_400f76, %struct.Memory** %MEMORY
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5522 = getelementptr inbounds %struct.GPR, %struct.GPR* %5521, i32 0, i32 33
  %5523 = getelementptr inbounds %struct.Reg, %struct.Reg* %5522, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5523 to i64*
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 5
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 7
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5530, i64 0, i64 0
  %YMM0.i126 = bitcast %union.VectorReg* %5531 to %"class.std::bitset"*
  %5532 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %5533 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %5534 = load i64, i64* %RCX.i124
  %5535 = load i64, i64* %RDX.i125
  %5536 = mul i64 %5535, 8
  %5537 = add i64 %5536, %5534
  %5538 = load i64, i64* %PC.i123
  %5539 = add i64 %5538, 5
  store i64 %5539, i64* %PC.i123
  %5540 = bitcast i8* %5533 to double*
  %5541 = load double, double* %5540, align 1
  %5542 = getelementptr inbounds i8, i8* %5533, i64 8
  %5543 = bitcast i8* %5542 to i64*
  %5544 = load i64, i64* %5543, align 1
  %5545 = inttoptr i64 %5537 to double*
  %5546 = load double, double* %5545
  %5547 = fadd double %5541, %5546
  %5548 = bitcast i8* %5532 to double*
  store double %5547, double* %5548, align 1
  %5549 = getelementptr inbounds i8, i8* %5532, i64 8
  %5550 = bitcast i8* %5549 to i64*
  store i64 %5544, i64* %5550, align 1
  store %struct.Memory* %loadMem_400f7a, %struct.Memory** %MEMORY
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 5
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %5556 to i64*
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 7
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %RDX.i121 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5560, i64 0, i64 0
  %XMM0.i122 = bitcast %union.VectorReg* %5561 to %union.vec128_t*
  %5562 = load i64, i64* %RCX.i120
  %5563 = load i64, i64* %RDX.i121
  %5564 = mul i64 %5563, 8
  %5565 = add i64 %5564, %5562
  %5566 = bitcast %union.vec128_t* %XMM0.i122 to i8*
  %5567 = load i64, i64* %PC.i119
  %5568 = add i64 %5567, 5
  store i64 %5568, i64* %PC.i119
  %5569 = bitcast i8* %5566 to double*
  %5570 = load double, double* %5569, align 1
  %5571 = inttoptr i64 %5565 to double*
  store double %5570, double* %5571
  store %struct.Memory* %loadMem_400f7f, %struct.Memory** %MEMORY
  %loadMem_400f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 15
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5578, i64 0, i64 0
  %YMM0.i118 = bitcast %union.VectorReg* %5579 to %"class.std::bitset"*
  %5580 = bitcast %"class.std::bitset"* %YMM0.i118 to i8*
  %5581 = load i64, i64* %RBP.i117
  %5582 = sub i64 %5581, 104
  %5583 = load i64, i64* %PC.i116
  %5584 = add i64 %5583, 5
  store i64 %5584, i64* %PC.i116
  %5585 = inttoptr i64 %5582 to double*
  %5586 = load double, double* %5585
  %5587 = bitcast i8* %5580 to double*
  store double %5586, double* %5587, align 1
  %5588 = getelementptr inbounds i8, i8* %5580, i64 8
  %5589 = bitcast i8* %5588 to double*
  store double 0.000000e+00, double* %5589, align 1
  store %struct.Memory* %loadMem_400f84, %struct.Memory** %MEMORY
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 33
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 5
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 15
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RBP.i115
  %5600 = sub i64 %5599, 8
  %5601 = load i64, i64* %PC.i113
  %5602 = add i64 %5601, 4
  store i64 %5602, i64* %PC.i113
  %5603 = inttoptr i64 %5600 to i64*
  %5604 = load i64, i64* %5603
  store i64 %5604, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_400f89, %struct.Memory** %MEMORY
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 33
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5607 to i64*
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 1
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %5610 to i64*
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 15
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5613 to i64*
  %5614 = load i64, i64* %RBP.i112
  %5615 = sub i64 %5614, 76
  %5616 = load i64, i64* %PC.i110
  %5617 = add i64 %5616, 3
  store i64 %5617, i64* %PC.i110
  %5618 = inttoptr i64 %5615 to i32*
  %5619 = load i32, i32* %5618
  %5620 = zext i32 %5619 to i64
  store i64 %5620, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_400f8d, %struct.Memory** %MEMORY
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 33
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 1
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %5626 to i64*
  %5627 = load i64, i64* %RAX.i109
  %5628 = load i64, i64* %PC.i108
  %5629 = add i64 %5628, 3
  store i64 %5629, i64* %PC.i108
  %5630 = trunc i64 %5627 to i32
  %5631 = add i32 1, %5630
  %5632 = zext i32 %5631 to i64
  store i64 %5632, i64* %RAX.i109, align 8
  %5633 = icmp ult i32 %5631, %5630
  %5634 = icmp ult i32 %5631, 1
  %5635 = or i1 %5633, %5634
  %5636 = zext i1 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5636, i8* %5637, align 1
  %5638 = and i32 %5631, 255
  %5639 = call i32 @llvm.ctpop.i32(i32 %5638)
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  %5642 = xor i8 %5641, 1
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5642, i8* %5643, align 1
  %5644 = xor i64 1, %5627
  %5645 = trunc i64 %5644 to i32
  %5646 = xor i32 %5645, %5631
  %5647 = lshr i32 %5646, 4
  %5648 = trunc i32 %5647 to i8
  %5649 = and i8 %5648, 1
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5649, i8* %5650, align 1
  %5651 = icmp eq i32 %5631, 0
  %5652 = zext i1 %5651 to i8
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5652, i8* %5653, align 1
  %5654 = lshr i32 %5631, 31
  %5655 = trunc i32 %5654 to i8
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5655, i8* %5656, align 1
  %5657 = lshr i32 %5630, 31
  %5658 = xor i32 %5654, %5657
  %5659 = add i32 %5658, %5654
  %5660 = icmp eq i32 %5659, 2
  %5661 = zext i1 %5660 to i8
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5661, i8* %5662, align 1
  store %struct.Memory* %loadMem_400f90, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 33
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 1
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %5668 to i32*
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 7
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %5671 to i64*
  %5672 = load i32, i32* %EAX.i106
  %5673 = zext i32 %5672 to i64
  %5674 = load i64, i64* %PC.i105
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC.i105
  %5676 = shl i64 %5673, 32
  %5677 = ashr exact i64 %5676, 32
  store i64 %5677, i64* %RDX.i107, align 8
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 33
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %5680 to i64*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 5
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5683 to i64*
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 7
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5687, i64 0, i64 0
  %YMM0.i104 = bitcast %union.VectorReg* %5688 to %"class.std::bitset"*
  %5689 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %5690 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %5691 = load i64, i64* %RCX.i102
  %5692 = load i64, i64* %RDX.i103
  %5693 = mul i64 %5692, 8
  %5694 = add i64 %5693, %5691
  %5695 = load i64, i64* %PC.i101
  %5696 = add i64 %5695, 5
  store i64 %5696, i64* %PC.i101
  %5697 = bitcast i8* %5690 to double*
  %5698 = load double, double* %5697, align 1
  %5699 = getelementptr inbounds i8, i8* %5690, i64 8
  %5700 = bitcast i8* %5699 to i64*
  %5701 = load i64, i64* %5700, align 1
  %5702 = inttoptr i64 %5694 to double*
  %5703 = load double, double* %5702
  %5704 = fadd double %5698, %5703
  %5705 = bitcast i8* %5689 to double*
  store double %5704, double* %5705, align 1
  %5706 = getelementptr inbounds i8, i8* %5689, i64 8
  %5707 = bitcast i8* %5706 to i64*
  store i64 %5701, i64* %5707, align 1
  store %struct.Memory* %loadMem_400f96, %struct.Memory** %MEMORY
  %loadMem_400f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 33
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5710 to i64*
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 5
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5713 to i64*
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 7
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5716 to i64*
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5717, i64 0, i64 0
  %XMM0.i100 = bitcast %union.VectorReg* %5718 to %union.vec128_t*
  %5719 = load i64, i64* %RCX.i
  %5720 = load i64, i64* %RDX.i
  %5721 = mul i64 %5720, 8
  %5722 = add i64 %5721, %5719
  %5723 = bitcast %union.vec128_t* %XMM0.i100 to i8*
  %5724 = load i64, i64* %PC.i99
  %5725 = add i64 %5724, 5
  store i64 %5725, i64* %PC.i99
  %5726 = bitcast i8* %5723 to double*
  %5727 = load double, double* %5726, align 1
  %5728 = inttoptr i64 %5722 to double*
  store double %5727, double* %5728
  store %struct.Memory* %loadMem_400f9b, %struct.Memory** %MEMORY
  %loadMem_400fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5731 to i64*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 1
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 15
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %5737 to i64*
  %5738 = load i64, i64* %RBP.i98
  %5739 = sub i64 %5738, 64
  %5740 = load i64, i64* %PC.i96
  %5741 = add i64 %5740, 3
  store i64 %5741, i64* %PC.i96
  %5742 = inttoptr i64 %5739 to i32*
  %5743 = load i32, i32* %5742
  %5744 = zext i32 %5743 to i64
  store i64 %5744, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_400fa0, %struct.Memory** %MEMORY
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5746 = getelementptr inbounds %struct.GPR, %struct.GPR* %5745, i32 0, i32 33
  %5747 = getelementptr inbounds %struct.Reg, %struct.Reg* %5746, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5747 to i64*
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 1
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 15
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %RAX.i94
  %5755 = load i64, i64* %RBP.i95
  %5756 = sub i64 %5755, 32
  %5757 = load i64, i64* %PC.i93
  %5758 = add i64 %5757, 3
  store i64 %5758, i64* %PC.i93
  %5759 = trunc i64 %5754 to i32
  %5760 = inttoptr i64 %5756 to i32*
  %5761 = load i32, i32* %5760
  %5762 = add i32 %5761, %5759
  %5763 = zext i32 %5762 to i64
  store i64 %5763, i64* %RAX.i94, align 8
  %5764 = icmp ult i32 %5762, %5759
  %5765 = icmp ult i32 %5762, %5761
  %5766 = or i1 %5764, %5765
  %5767 = zext i1 %5766 to i8
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5767, i8* %5768, align 1
  %5769 = and i32 %5762, 255
  %5770 = call i32 @llvm.ctpop.i32(i32 %5769)
  %5771 = trunc i32 %5770 to i8
  %5772 = and i8 %5771, 1
  %5773 = xor i8 %5772, 1
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5773, i8* %5774, align 1
  %5775 = xor i32 %5761, %5759
  %5776 = xor i32 %5775, %5762
  %5777 = lshr i32 %5776, 4
  %5778 = trunc i32 %5777 to i8
  %5779 = and i8 %5778, 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5779, i8* %5780, align 1
  %5781 = icmp eq i32 %5762, 0
  %5782 = zext i1 %5781 to i8
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5782, i8* %5783, align 1
  %5784 = lshr i32 %5762, 31
  %5785 = trunc i32 %5784 to i8
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5785, i8* %5786, align 1
  %5787 = lshr i32 %5759, 31
  %5788 = lshr i32 %5761, 31
  %5789 = xor i32 %5784, %5787
  %5790 = xor i32 %5784, %5788
  %5791 = add i32 %5789, %5790
  %5792 = icmp eq i32 %5791, 2
  %5793 = zext i1 %5792 to i8
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5793, i8* %5794, align 1
  store %struct.Memory* %loadMem_400fa3, %struct.Memory** %MEMORY
  %loadMem_400fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 33
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5797 to i64*
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5799 = getelementptr inbounds %struct.GPR, %struct.GPR* %5798, i32 0, i32 1
  %5800 = getelementptr inbounds %struct.Reg, %struct.Reg* %5799, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %5800 to i32*
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 15
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %5803 to i64*
  %5804 = load i64, i64* %RBP.i92
  %5805 = sub i64 %5804, 32
  %5806 = load i32, i32* %EAX.i91
  %5807 = zext i32 %5806 to i64
  %5808 = load i64, i64* %PC.i90
  %5809 = add i64 %5808, 3
  store i64 %5809, i64* %PC.i90
  %5810 = inttoptr i64 %5805 to i32*
  store i32 %5806, i32* %5810
  store %struct.Memory* %loadMem_400fa6, %struct.Memory** %MEMORY
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 33
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5813 to i64*
  %5814 = load i64, i64* %PC.i89
  %5815 = add i64 %5814, -265
  %5816 = load i64, i64* %PC.i89
  %5817 = add i64 %5816, 5
  store i64 %5817, i64* %PC.i89
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5815, i64* %5818, align 8
  store %struct.Memory* %loadMem_400fa9, %struct.Memory** %MEMORY
  br label %block_.L_400ea0

block_.L_400fae:                                  ; preds = %block_.L_400ea0
  %loadMem_400fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 33
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5821 to i64*
  %5822 = load i64, i64* %PC.i88
  %5823 = add i64 %5822, 5
  %5824 = load i64, i64* %PC.i88
  %5825 = add i64 %5824, 5
  store i64 %5825, i64* %PC.i88
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5823, i64* %5826, align 8
  store %struct.Memory* %loadMem_400fae, %struct.Memory** %MEMORY
  br label %block_.L_400fb3

block_.L_400fb3:                                  ; preds = %block_.L_400fae
  %loadMem_400fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 33
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 1
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 15
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %RBP.i87
  %5837 = sub i64 %5836, 28
  %5838 = load i64, i64* %PC.i85
  %5839 = add i64 %5838, 3
  store i64 %5839, i64* %PC.i85
  %5840 = inttoptr i64 %5837 to i32*
  %5841 = load i32, i32* %5840
  %5842 = zext i32 %5841 to i64
  store i64 %5842, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_400fb3, %struct.Memory** %MEMORY
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 1
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %5848 to i64*
  %5849 = load i64, i64* %RAX.i84
  %5850 = load i64, i64* %PC.i83
  %5851 = add i64 %5850, 3
  store i64 %5851, i64* %PC.i83
  %5852 = trunc i64 %5849 to i32
  %5853 = add i32 2, %5852
  %5854 = zext i32 %5853 to i64
  store i64 %5854, i64* %RAX.i84, align 8
  %5855 = icmp ult i32 %5853, %5852
  %5856 = icmp ult i32 %5853, 2
  %5857 = or i1 %5855, %5856
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5858, i8* %5859, align 1
  %5860 = and i32 %5853, 255
  %5861 = call i32 @llvm.ctpop.i32(i32 %5860)
  %5862 = trunc i32 %5861 to i8
  %5863 = and i8 %5862, 1
  %5864 = xor i8 %5863, 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5864, i8* %5865, align 1
  %5866 = xor i64 2, %5849
  %5867 = trunc i64 %5866 to i32
  %5868 = xor i32 %5867, %5853
  %5869 = lshr i32 %5868, 4
  %5870 = trunc i32 %5869 to i8
  %5871 = and i8 %5870, 1
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5871, i8* %5872, align 1
  %5873 = icmp eq i32 %5853, 0
  %5874 = zext i1 %5873 to i8
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5874, i8* %5875, align 1
  %5876 = lshr i32 %5853, 31
  %5877 = trunc i32 %5876 to i8
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5877, i8* %5878, align 1
  %5879 = lshr i32 %5852, 31
  %5880 = xor i32 %5876, %5879
  %5881 = add i32 %5880, %5876
  %5882 = icmp eq i32 %5881, 2
  %5883 = zext i1 %5882 to i8
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5883, i8* %5884, align 1
  store %struct.Memory* %loadMem_400fb6, %struct.Memory** %MEMORY
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 33
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 1
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %5890 to i32*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 15
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5893 to i64*
  %5894 = load i64, i64* %RBP.i82
  %5895 = sub i64 %5894, 28
  %5896 = load i32, i32* %EAX.i81
  %5897 = zext i32 %5896 to i64
  %5898 = load i64, i64* %PC.i80
  %5899 = add i64 %5898, 3
  store i64 %5899, i64* %PC.i80
  %5900 = inttoptr i64 %5895 to i32*
  store i32 %5896, i32* %5900
  store %struct.Memory* %loadMem_400fb9, %struct.Memory** %MEMORY
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5903 to i64*
  %5904 = load i64, i64* %PC.i79
  %5905 = add i64 %5904, -310
  %5906 = load i64, i64* %PC.i79
  %5907 = add i64 %5906, 5
  store i64 %5907, i64* %PC.i79
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5905, i64* %5908, align 8
  store %struct.Memory* %loadMem_400fbc, %struct.Memory** %MEMORY
  br label %block_.L_400e86

block_.L_400fc1:                                  ; preds = %block_.L_400e86
  %loadMem_400fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 33
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 15
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %5914 to i64*
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5915, i64 0, i64 0
  %YMM0.i78 = bitcast %union.VectorReg* %5916 to %"class.std::bitset"*
  %5917 = bitcast %"class.std::bitset"* %YMM0.i78 to i8*
  %5918 = load i64, i64* %RBP.i77
  %5919 = sub i64 %5918, 152
  %5920 = load i64, i64* %PC.i76
  %5921 = add i64 %5920, 8
  store i64 %5921, i64* %PC.i76
  %5922 = inttoptr i64 %5919 to double*
  %5923 = load double, double* %5922
  %5924 = bitcast i8* %5917 to double*
  store double %5923, double* %5924, align 1
  %5925 = getelementptr inbounds i8, i8* %5917, i64 8
  %5926 = bitcast i8* %5925 to double*
  store double 0.000000e+00, double* %5926, align 1
  store %struct.Memory* %loadMem_400fc1, %struct.Memory** %MEMORY
  %loadMem_400fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 33
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5929 to i64*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 15
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %5932 to i64*
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5933, i64 0, i64 0
  %XMM0.i75 = bitcast %union.VectorReg* %5934 to %union.vec128_t*
  %5935 = load i64, i64* %RBP.i74
  %5936 = sub i64 %5935, 160
  %5937 = bitcast %union.vec128_t* %XMM0.i75 to i8*
  %5938 = load i64, i64* %PC.i73
  %5939 = add i64 %5938, 8
  store i64 %5939, i64* %PC.i73
  %5940 = bitcast i8* %5937 to double*
  %5941 = load double, double* %5940, align 1
  %5942 = inttoptr i64 %5936 to double*
  store double %5941, double* %5942
  store %struct.Memory* %loadMem_400fc9, %struct.Memory** %MEMORY
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 15
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5949, i64 0, i64 0
  %YMM0.i72 = bitcast %union.VectorReg* %5950 to %"class.std::bitset"*
  %5951 = bitcast %"class.std::bitset"* %YMM0.i72 to i8*
  %5952 = bitcast %"class.std::bitset"* %YMM0.i72 to i8*
  %5953 = load i64, i64* %RBP.i71
  %5954 = sub i64 %5953, 144
  %5955 = load i64, i64* %PC.i70
  %5956 = add i64 %5955, 8
  store i64 %5956, i64* %PC.i70
  %5957 = bitcast i8* %5952 to double*
  %5958 = load double, double* %5957, align 1
  %5959 = getelementptr inbounds i8, i8* %5952, i64 8
  %5960 = bitcast i8* %5959 to i64*
  %5961 = load i64, i64* %5960, align 1
  %5962 = inttoptr i64 %5954 to double*
  %5963 = load double, double* %5962
  %5964 = fmul double %5958, %5963
  %5965 = bitcast i8* %5951 to double*
  store double %5964, double* %5965, align 1
  %5966 = getelementptr inbounds i8, i8* %5951, i64 8
  %5967 = bitcast i8* %5966 to i64*
  store i64 %5961, i64* %5967, align 1
  store %struct.Memory* %loadMem_400fd1, %struct.Memory** %MEMORY
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 15
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5974, i64 0, i64 1
  %YMM1.i69 = bitcast %union.VectorReg* %5975 to %"class.std::bitset"*
  %5976 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %5977 = load i64, i64* %RBP.i68
  %5978 = sub i64 %5977, 128
  %5979 = load i64, i64* %PC.i67
  %5980 = add i64 %5979, 5
  store i64 %5980, i64* %PC.i67
  %5981 = inttoptr i64 %5978 to double*
  %5982 = load double, double* %5981
  %5983 = bitcast i8* %5976 to double*
  store double %5982, double* %5983, align 1
  %5984 = getelementptr inbounds i8, i8* %5976, i64 8
  %5985 = bitcast i8* %5984 to double*
  store double 0.000000e+00, double* %5985, align 1
  store %struct.Memory* %loadMem_400fd9, %struct.Memory** %MEMORY
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 33
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5988 to i64*
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 15
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5992, i64 0, i64 1
  %YMM1.i66 = bitcast %union.VectorReg* %5993 to %"class.std::bitset"*
  %5994 = bitcast %"class.std::bitset"* %YMM1.i66 to i8*
  %5995 = bitcast %"class.std::bitset"* %YMM1.i66 to i8*
  %5996 = load i64, i64* %RBP.i65
  %5997 = sub i64 %5996, 136
  %5998 = load i64, i64* %PC.i64
  %5999 = add i64 %5998, 8
  store i64 %5999, i64* %PC.i64
  %6000 = bitcast i8* %5995 to double*
  %6001 = load double, double* %6000, align 1
  %6002 = getelementptr inbounds i8, i8* %5995, i64 8
  %6003 = bitcast i8* %6002 to i64*
  %6004 = load i64, i64* %6003, align 1
  %6005 = inttoptr i64 %5997 to double*
  %6006 = load double, double* %6005
  %6007 = fmul double %6001, %6006
  %6008 = bitcast i8* %5994 to double*
  store double %6007, double* %6008, align 1
  %6009 = getelementptr inbounds i8, i8* %5994, i64 8
  %6010 = bitcast i8* %6009 to i64*
  store i64 %6004, i64* %6010, align 1
  store %struct.Memory* %loadMem_400fde, %struct.Memory** %MEMORY
  %loadMem_400fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 33
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6013 to i64*
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6014, i64 0, i64 0
  %YMM0.i62 = bitcast %union.VectorReg* %6015 to %"class.std::bitset"*
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6017 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6016, i64 0, i64 1
  %XMM1.i63 = bitcast %union.VectorReg* %6017 to %union.vec128_t*
  %6018 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %6019 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %6020 = bitcast %union.vec128_t* %XMM1.i63 to i8*
  %6021 = load i64, i64* %PC.i61
  %6022 = add i64 %6021, 4
  store i64 %6022, i64* %PC.i61
  %6023 = bitcast i8* %6019 to double*
  %6024 = load double, double* %6023, align 1
  %6025 = getelementptr inbounds i8, i8* %6019, i64 8
  %6026 = bitcast i8* %6025 to i64*
  %6027 = load i64, i64* %6026, align 1
  %6028 = bitcast i8* %6020 to double*
  %6029 = load double, double* %6028, align 1
  %6030 = fsub double %6024, %6029
  %6031 = bitcast i8* %6018 to double*
  store double %6030, double* %6031, align 1
  %6032 = getelementptr inbounds i8, i8* %6018, i64 8
  %6033 = bitcast i8* %6032 to i64*
  store i64 %6027, i64* %6033, align 1
  store %struct.Memory* %loadMem_400fe6, %struct.Memory** %MEMORY
  %loadMem_400fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 33
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 15
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6041 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6040, i64 0, i64 0
  %YMM0.i60 = bitcast %union.VectorReg* %6041 to %"class.std::bitset"*
  %6042 = bitcast %"class.std::bitset"* %YMM0.i60 to i8*
  %6043 = bitcast %"class.std::bitset"* %YMM0.i60 to i8*
  %6044 = load i64, i64* %RBP.i59
  %6045 = sub i64 %6044, 152
  %6046 = load i64, i64* %PC.i58
  %6047 = add i64 %6046, 8
  store i64 %6047, i64* %PC.i58
  %6048 = bitcast i8* %6043 to double*
  %6049 = load double, double* %6048, align 1
  %6050 = getelementptr inbounds i8, i8* %6043, i64 8
  %6051 = bitcast i8* %6050 to i64*
  %6052 = load i64, i64* %6051, align 1
  %6053 = inttoptr i64 %6045 to double*
  %6054 = load double, double* %6053
  %6055 = fadd double %6049, %6054
  %6056 = bitcast i8* %6042 to double*
  store double %6055, double* %6056, align 1
  %6057 = getelementptr inbounds i8, i8* %6042, i64 8
  %6058 = bitcast i8* %6057 to i64*
  store i64 %6052, i64* %6058, align 1
  store %struct.Memory* %loadMem_400fea, %struct.Memory** %MEMORY
  %loadMem_400ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 33
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6061 to i64*
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 15
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6065, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %6066 to %union.vec128_t*
  %6067 = load i64, i64* %RBP.i56
  %6068 = sub i64 %6067, 152
  %6069 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %6070 = load i64, i64* %PC.i55
  %6071 = add i64 %6070, 8
  store i64 %6071, i64* %PC.i55
  %6072 = bitcast i8* %6069 to double*
  %6073 = load double, double* %6072, align 1
  %6074 = inttoptr i64 %6068 to double*
  store double %6073, double* %6074
  store %struct.Memory* %loadMem_400ff2, %struct.Memory** %MEMORY
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 33
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6077 to i64*
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 15
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6082 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6081, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %6082 to %"class.std::bitset"*
  %6083 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %6084 = load i64, i64* %RBP.i53
  %6085 = sub i64 %6084, 128
  %6086 = load i64, i64* %PC.i52
  %6087 = add i64 %6086, 5
  store i64 %6087, i64* %PC.i52
  %6088 = inttoptr i64 %6085 to double*
  %6089 = load double, double* %6088
  %6090 = bitcast i8* %6083 to double*
  store double %6089, double* %6090, align 1
  %6091 = getelementptr inbounds i8, i8* %6083, i64 8
  %6092 = bitcast i8* %6091 to double*
  store double 0.000000e+00, double* %6092, align 1
  store %struct.Memory* %loadMem_400ffa, %struct.Memory** %MEMORY
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 33
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6099, i64 0, i64 0
  %YMM0.i51 = bitcast %union.VectorReg* %6100 to %"class.std::bitset"*
  %6101 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %6102 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %6103 = load i64, i64* %RBP.i50
  %6104 = sub i64 %6103, 144
  %6105 = load i64, i64* %PC.i49
  %6106 = add i64 %6105, 8
  store i64 %6106, i64* %PC.i49
  %6107 = bitcast i8* %6102 to double*
  %6108 = load double, double* %6107, align 1
  %6109 = getelementptr inbounds i8, i8* %6102, i64 8
  %6110 = bitcast i8* %6109 to i64*
  %6111 = load i64, i64* %6110, align 1
  %6112 = inttoptr i64 %6104 to double*
  %6113 = load double, double* %6112
  %6114 = fmul double %6108, %6113
  %6115 = bitcast i8* %6101 to double*
  store double %6114, double* %6115, align 1
  %6116 = getelementptr inbounds i8, i8* %6101, i64 8
  %6117 = bitcast i8* %6116 to i64*
  store i64 %6111, i64* %6117, align 1
  store %struct.Memory* %loadMem_400fff, %struct.Memory** %MEMORY
  %loadMem_401007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 33
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6120 to i64*
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 15
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %6123 to i64*
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6124, i64 0, i64 1
  %YMM1.i48 = bitcast %union.VectorReg* %6125 to %"class.std::bitset"*
  %6126 = bitcast %"class.std::bitset"* %YMM1.i48 to i8*
  %6127 = load i64, i64* %RBP.i47
  %6128 = sub i64 %6127, 160
  %6129 = load i64, i64* %PC.i46
  %6130 = add i64 %6129, 8
  store i64 %6130, i64* %PC.i46
  %6131 = inttoptr i64 %6128 to double*
  %6132 = load double, double* %6131
  %6133 = bitcast i8* %6126 to double*
  store double %6132, double* %6133, align 1
  %6134 = getelementptr inbounds i8, i8* %6126, i64 8
  %6135 = bitcast i8* %6134 to double*
  store double 0.000000e+00, double* %6135, align 1
  store %struct.Memory* %loadMem_401007, %struct.Memory** %MEMORY
  %loadMem_40100f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6142, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %6143 to %"class.std::bitset"*
  %6144 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6145 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6146 = load i64, i64* %RBP.i45
  %6147 = sub i64 %6146, 136
  %6148 = load i64, i64* %PC.i44
  %6149 = add i64 %6148, 8
  store i64 %6149, i64* %PC.i44
  %6150 = bitcast i8* %6145 to double*
  %6151 = load double, double* %6150, align 1
  %6152 = getelementptr inbounds i8, i8* %6145, i64 8
  %6153 = bitcast i8* %6152 to i64*
  %6154 = load i64, i64* %6153, align 1
  %6155 = inttoptr i64 %6147 to double*
  %6156 = load double, double* %6155
  %6157 = fmul double %6151, %6156
  %6158 = bitcast i8* %6144 to double*
  store double %6157, double* %6158, align 1
  %6159 = getelementptr inbounds i8, i8* %6144, i64 8
  %6160 = bitcast i8* %6159 to i64*
  store i64 %6154, i64* %6160, align 1
  store %struct.Memory* %loadMem_40100f, %struct.Memory** %MEMORY
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 33
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6163 to i64*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6164, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %6165 to %"class.std::bitset"*
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6166, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %6167 to %union.vec128_t*
  %6168 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %6169 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %6170 = bitcast %union.vec128_t* %XMM1.i to i8*
  %6171 = load i64, i64* %PC.i42
  %6172 = add i64 %6171, 4
  store i64 %6172, i64* %PC.i42
  %6173 = bitcast i8* %6169 to double*
  %6174 = load double, double* %6173, align 1
  %6175 = getelementptr inbounds i8, i8* %6169, i64 8
  %6176 = bitcast i8* %6175 to i64*
  %6177 = load i64, i64* %6176, align 1
  %6178 = bitcast i8* %6170 to double*
  %6179 = load double, double* %6178, align 1
  %6180 = fadd double %6174, %6179
  %6181 = bitcast i8* %6168 to double*
  store double %6180, double* %6181, align 1
  %6182 = getelementptr inbounds i8, i8* %6168, i64 8
  %6183 = bitcast i8* %6182 to i64*
  store i64 %6177, i64* %6183, align 1
  store %struct.Memory* %loadMem_401017, %struct.Memory** %MEMORY
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 33
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %6186 to i64*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 15
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %6189 to i64*
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6190, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6191 to %"class.std::bitset"*
  %6192 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6193 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6194 = load i64, i64* %RBP.i41
  %6195 = sub i64 %6194, 128
  %6196 = load i64, i64* %PC.i40
  %6197 = add i64 %6196, 5
  store i64 %6197, i64* %PC.i40
  %6198 = bitcast i8* %6193 to double*
  %6199 = load double, double* %6198, align 1
  %6200 = getelementptr inbounds i8, i8* %6193, i64 8
  %6201 = bitcast i8* %6200 to i64*
  %6202 = load i64, i64* %6201, align 1
  %6203 = inttoptr i64 %6195 to double*
  %6204 = load double, double* %6203
  %6205 = fadd double %6199, %6204
  %6206 = bitcast i8* %6192 to double*
  store double %6205, double* %6206, align 1
  %6207 = getelementptr inbounds i8, i8* %6192, i64 8
  %6208 = bitcast i8* %6207 to i64*
  store i64 %6202, i64* %6208, align 1
  store %struct.Memory* %loadMem_40101b, %struct.Memory** %MEMORY
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 33
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6211 to i64*
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 15
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6215, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6216 to %union.vec128_t*
  %6217 = load i64, i64* %RBP.i39
  %6218 = sub i64 %6217, 128
  %6219 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6220 = load i64, i64* %PC.i38
  %6221 = add i64 %6220, 5
  store i64 %6221, i64* %PC.i38
  %6222 = bitcast i8* %6219 to double*
  %6223 = load double, double* %6222, align 1
  %6224 = inttoptr i64 %6218 to double*
  store double %6223, double* %6224
  store %struct.Memory* %loadMem_401020, %struct.Memory** %MEMORY
  %loadMem_401025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 33
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6227 to i64*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 1
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %6230 to i64*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 15
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6233 to i64*
  %6234 = load i64, i64* %RBP.i37
  %6235 = sub i64 %6234, 48
  %6236 = load i64, i64* %PC.i35
  %6237 = add i64 %6236, 3
  store i64 %6237, i64* %PC.i35
  %6238 = inttoptr i64 %6235 to i32*
  %6239 = load i32, i32* %6238
  %6240 = zext i32 %6239 to i64
  store i64 %6240, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_401025, %struct.Memory** %MEMORY
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 33
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6243 to i64*
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 1
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6246 to i64*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 15
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6249 to i64*
  %6250 = load i64, i64* %RAX.i33
  %6251 = load i64, i64* %RBP.i34
  %6252 = sub i64 %6251, 36
  %6253 = load i64, i64* %PC.i32
  %6254 = add i64 %6253, 3
  store i64 %6254, i64* %PC.i32
  %6255 = trunc i64 %6250 to i32
  %6256 = inttoptr i64 %6252 to i32*
  %6257 = load i32, i32* %6256
  %6258 = add i32 %6257, %6255
  %6259 = zext i32 %6258 to i64
  store i64 %6259, i64* %RAX.i33, align 8
  %6260 = icmp ult i32 %6258, %6255
  %6261 = icmp ult i32 %6258, %6257
  %6262 = or i1 %6260, %6261
  %6263 = zext i1 %6262 to i8
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6263, i8* %6264, align 1
  %6265 = and i32 %6258, 255
  %6266 = call i32 @llvm.ctpop.i32(i32 %6265)
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  %6269 = xor i8 %6268, 1
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6269, i8* %6270, align 1
  %6271 = xor i32 %6257, %6255
  %6272 = xor i32 %6271, %6258
  %6273 = lshr i32 %6272, 4
  %6274 = trunc i32 %6273 to i8
  %6275 = and i8 %6274, 1
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6275, i8* %6276, align 1
  %6277 = icmp eq i32 %6258, 0
  %6278 = zext i1 %6277 to i8
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6278, i8* %6279, align 1
  %6280 = lshr i32 %6258, 31
  %6281 = trunc i32 %6280 to i8
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6281, i8* %6282, align 1
  %6283 = lshr i32 %6255, 31
  %6284 = lshr i32 %6257, 31
  %6285 = xor i32 %6280, %6283
  %6286 = xor i32 %6280, %6284
  %6287 = add i32 %6285, %6286
  %6288 = icmp eq i32 %6287, 2
  %6289 = zext i1 %6288 to i8
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6289, i8* %6290, align 1
  store %struct.Memory* %loadMem_401028, %struct.Memory** %MEMORY
  %loadMem_40102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 33
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6293 to i64*
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 1
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %6296 to i32*
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 15
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %6299 to i64*
  %6300 = load i64, i64* %RBP.i31
  %6301 = sub i64 %6300, 36
  %6302 = load i32, i32* %EAX.i30
  %6303 = zext i32 %6302 to i64
  %6304 = load i64, i64* %PC.i29
  %6305 = add i64 %6304, 3
  store i64 %6305, i64* %PC.i29
  %6306 = inttoptr i64 %6301 to i32*
  store i32 %6302, i32* %6306
  store %struct.Memory* %loadMem_40102b, %struct.Memory** %MEMORY
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 33
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6309 to i64*
  %6310 = load i64, i64* %PC.i28
  %6311 = add i64 %6310, -442
  %6312 = load i64, i64* %PC.i28
  %6313 = add i64 %6312, 5
  store i64 %6313, i64* %PC.i28
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6311, i64* %6314, align 8
  store %struct.Memory* %loadMem_40102e, %struct.Memory** %MEMORY
  br label %block_.L_400e74

block_.L_401033:                                  ; preds = %block_.L_400e74
  %loadMem_401033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6316 = getelementptr inbounds %struct.GPR, %struct.GPR* %6315, i32 0, i32 33
  %6317 = getelementptr inbounds %struct.Reg, %struct.Reg* %6316, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6317 to i64*
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 1
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %6320 to i64*
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 15
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %6323 to i64*
  %6324 = load i64, i64* %RBP.i27
  %6325 = sub i64 %6324, 64
  %6326 = load i64, i64* %PC.i25
  %6327 = add i64 %6326, 3
  store i64 %6327, i64* %PC.i25
  %6328 = inttoptr i64 %6325 to i32*
  %6329 = load i32, i32* %6328
  %6330 = zext i32 %6329 to i64
  store i64 %6330, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_401033, %struct.Memory** %MEMORY
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 33
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6333 to i64*
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 1
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %6336 to i32*
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 15
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6339 to i64*
  %6340 = load i64, i64* %RBP.i24
  %6341 = sub i64 %6340, 60
  %6342 = load i32, i32* %EAX.i23
  %6343 = zext i32 %6342 to i64
  %6344 = load i64, i64* %PC.i22
  %6345 = add i64 %6344, 3
  store i64 %6345, i64* %PC.i22
  %6346 = inttoptr i64 %6341 to i32*
  store i32 %6342, i32* %6346
  store %struct.Memory* %loadMem_401036, %struct.Memory** %MEMORY
  %loadMem_401039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 33
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6349 to i64*
  %6350 = load i64, i64* %PC.i21
  %6351 = add i64 %6350, -669
  %6352 = load i64, i64* %PC.i21
  %6353 = add i64 %6352, 5
  store i64 %6353, i64* %PC.i21
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6351, i64* %6354, align 8
  store %struct.Memory* %loadMem_401039, %struct.Memory** %MEMORY
  br label %block_.L_400d9c

block_.L_40103e:                                  ; preds = %block_.L_400d9c
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 33
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6357 to i64*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 1
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %6360 to i64*
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6362 = getelementptr inbounds %struct.GPR, %struct.GPR* %6361, i32 0, i32 15
  %6363 = getelementptr inbounds %struct.Reg, %struct.Reg* %6362, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %6363 to i64*
  %6364 = load i64, i64* %RBP.i20
  %6365 = sub i64 %6364, 84
  %6366 = load i64, i64* %PC.i18
  %6367 = add i64 %6366, 3
  store i64 %6367, i64* %PC.i18
  %6368 = inttoptr i64 %6365 to i32*
  %6369 = load i32, i32* %6368
  %6370 = zext i32 %6369 to i64
  store i64 %6370, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_40103e, %struct.Memory** %MEMORY
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 1
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 15
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6379 to i64*
  %6380 = load i64, i64* %RAX.i16
  %6381 = load i64, i64* %RBP.i17
  %6382 = sub i64 %6381, 88
  %6383 = load i64, i64* %PC.i15
  %6384 = add i64 %6383, 4
  store i64 %6384, i64* %PC.i15
  %6385 = inttoptr i64 %6382 to i32*
  %6386 = load i32, i32* %6385
  %6387 = shl i64 %6380, 32
  %6388 = ashr exact i64 %6387, 32
  %6389 = sext i32 %6386 to i64
  %6390 = mul i64 %6389, %6388
  %6391 = trunc i64 %6390 to i32
  %6392 = and i64 %6390, 4294967295
  store i64 %6392, i64* %RAX.i16, align 8
  %6393 = shl i64 %6390, 32
  %6394 = ashr exact i64 %6393, 32
  %6395 = icmp ne i64 %6394, %6390
  %6396 = zext i1 %6395 to i8
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6396, i8* %6397, align 1
  %6398 = and i32 %6391, 255
  %6399 = call i32 @llvm.ctpop.i32(i32 %6398)
  %6400 = trunc i32 %6399 to i8
  %6401 = and i8 %6400, 1
  %6402 = xor i8 %6401, 1
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6402, i8* %6403, align 1
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6404, align 1
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6405, align 1
  %6406 = lshr i32 %6391, 31
  %6407 = trunc i32 %6406 to i8
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6407, i8* %6408, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6396, i8* %6409, align 1
  store %struct.Memory* %loadMem_401041, %struct.Memory** %MEMORY
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 33
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 1
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %6415 to i32*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 15
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6418 to i64*
  %6419 = load i64, i64* %RBP.i14
  %6420 = sub i64 %6419, 88
  %6421 = load i32, i32* %EAX.i13
  %6422 = zext i32 %6421 to i64
  %6423 = load i64, i64* %PC.i12
  %6424 = add i64 %6423, 3
  store i64 %6424, i64* %PC.i12
  %6425 = inttoptr i64 %6420 to i32*
  store i32 %6421, i32* %6425
  store %struct.Memory* %loadMem_401045, %struct.Memory** %MEMORY
  %loadMem_401048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 33
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6428 to i64*
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 1
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6431 to i64*
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 15
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6434 to i64*
  %6435 = load i64, i64* %RBP.i11
  %6436 = sub i64 %6435, 72
  %6437 = load i64, i64* %PC.i9
  %6438 = add i64 %6437, 3
  store i64 %6438, i64* %PC.i9
  %6439 = inttoptr i64 %6436 to i32*
  %6440 = load i32, i32* %6439
  %6441 = zext i32 %6440 to i64
  store i64 %6441, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_401048, %struct.Memory** %MEMORY
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 33
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6444 to i64*
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 1
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6447 to i64*
  %6448 = load i64, i64* %RAX.i
  %6449 = load i64, i64* %PC.i8
  %6450 = add i64 %6449, 3
  store i64 %6450, i64* %PC.i8
  %6451 = trunc i64 %6448 to i32
  %6452 = add i32 -1, %6451
  %6453 = zext i32 %6452 to i64
  store i64 %6453, i64* %RAX.i, align 8
  %6454 = icmp ult i32 %6452, %6451
  %6455 = icmp ult i32 %6452, -1
  %6456 = or i1 %6454, %6455
  %6457 = zext i1 %6456 to i8
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6457, i8* %6458, align 1
  %6459 = and i32 %6452, 255
  %6460 = call i32 @llvm.ctpop.i32(i32 %6459)
  %6461 = trunc i32 %6460 to i8
  %6462 = and i8 %6461, 1
  %6463 = xor i8 %6462, 1
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6463, i8* %6464, align 1
  %6465 = xor i64 -1, %6448
  %6466 = trunc i64 %6465 to i32
  %6467 = xor i32 %6466, %6452
  %6468 = lshr i32 %6467, 4
  %6469 = trunc i32 %6468 to i8
  %6470 = and i8 %6469, 1
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6470, i8* %6471, align 1
  %6472 = icmp eq i32 %6452, 0
  %6473 = zext i1 %6472 to i8
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6473, i8* %6474, align 1
  %6475 = lshr i32 %6452, 31
  %6476 = trunc i32 %6475 to i8
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6476, i8* %6477, align 1
  %6478 = lshr i32 %6451, 31
  %6479 = xor i32 %6475, %6478
  %6480 = xor i32 %6475, 1
  %6481 = add i32 %6479, %6480
  %6482 = icmp eq i32 %6481, 2
  %6483 = zext i1 %6482 to i8
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6483, i8* %6484, align 1
  store %struct.Memory* %loadMem_40104b, %struct.Memory** %MEMORY
  %loadMem_40104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 33
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6487 to i64*
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 1
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6490 to i32*
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 15
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6493 to i64*
  %6494 = load i64, i64* %RBP.i7
  %6495 = sub i64 %6494, 72
  %6496 = load i32, i32* %EAX.i
  %6497 = zext i32 %6496 to i64
  %6498 = load i64, i64* %PC.i6
  %6499 = add i64 %6498, 3
  store i64 %6499, i64* %PC.i6
  %6500 = inttoptr i64 %6495 to i32*
  store i32 %6496, i32* %6500
  store %struct.Memory* %loadMem_40104e, %struct.Memory** %MEMORY
  %loadMem_401051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6502 = getelementptr inbounds %struct.GPR, %struct.GPR* %6501, i32 0, i32 33
  %6503 = getelementptr inbounds %struct.Reg, %struct.Reg* %6502, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6503 to i64*
  %6504 = load i64, i64* %PC.i5
  %6505 = add i64 %6504, -1169
  %6506 = load i64, i64* %PC.i5
  %6507 = add i64 %6506, 5
  store i64 %6507, i64* %PC.i5
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6505, i64* %6508, align 8
  store %struct.Memory* %loadMem_401051, %struct.Memory** %MEMORY
  br label %block_.L_400bc0

block_.L_401056:                                  ; preds = %block_.L_400bc0
  %loadMem_401056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 13
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6514 to i64*
  %6515 = load i64, i64* %RSP.i
  %6516 = load i64, i64* %PC.i4
  %6517 = add i64 %6516, 7
  store i64 %6517, i64* %PC.i4
  %6518 = add i64 192, %6515
  store i64 %6518, i64* %RSP.i, align 8
  %6519 = icmp ult i64 %6518, %6515
  %6520 = icmp ult i64 %6518, 192
  %6521 = or i1 %6519, %6520
  %6522 = zext i1 %6521 to i8
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6522, i8* %6523, align 1
  %6524 = trunc i64 %6518 to i32
  %6525 = and i32 %6524, 255
  %6526 = call i32 @llvm.ctpop.i32(i32 %6525)
  %6527 = trunc i32 %6526 to i8
  %6528 = and i8 %6527, 1
  %6529 = xor i8 %6528, 1
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6529, i8* %6530, align 1
  %6531 = xor i64 192, %6515
  %6532 = xor i64 %6531, %6518
  %6533 = lshr i64 %6532, 4
  %6534 = trunc i64 %6533 to i8
  %6535 = and i8 %6534, 1
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6535, i8* %6536, align 1
  %6537 = icmp eq i64 %6518, 0
  %6538 = zext i1 %6537 to i8
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6538, i8* %6539, align 1
  %6540 = lshr i64 %6518, 63
  %6541 = trunc i64 %6540 to i8
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6541, i8* %6542, align 1
  %6543 = lshr i64 %6515, 63
  %6544 = xor i64 %6540, %6543
  %6545 = add i64 %6544, %6540
  %6546 = icmp eq i64 %6545, 2
  %6547 = zext i1 %6546 to i8
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6547, i8* %6548, align 1
  store %struct.Memory* %loadMem_401056, %struct.Memory** %MEMORY
  %loadMem_40105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6550 = getelementptr inbounds %struct.GPR, %struct.GPR* %6549, i32 0, i32 33
  %6551 = getelementptr inbounds %struct.Reg, %struct.Reg* %6550, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6551 to i64*
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6553 = getelementptr inbounds %struct.GPR, %struct.GPR* %6552, i32 0, i32 15
  %6554 = getelementptr inbounds %struct.Reg, %struct.Reg* %6553, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6554 to i64*
  %6555 = load i64, i64* %PC.i2
  %6556 = add i64 %6555, 1
  store i64 %6556, i64* %PC.i2
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6558 = load i64, i64* %6557, align 8
  %6559 = add i64 %6558, 8
  %6560 = inttoptr i64 %6558 to i64*
  %6561 = load i64, i64* %6560
  store i64 %6561, i64* %RBP.i3, align 8
  store i64 %6559, i64* %6557, align 8
  store %struct.Memory* %loadMem_40105d, %struct.Memory** %MEMORY
  %loadMem_40105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6563 = getelementptr inbounds %struct.GPR, %struct.GPR* %6562, i32 0, i32 33
  %6564 = getelementptr inbounds %struct.Reg, %struct.Reg* %6563, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6564 to i64*
  %6565 = load i64, i64* %PC.i1
  %6566 = add i64 %6565, 1
  store i64 %6566, i64* %PC.i1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6569 = load i64, i64* %6568, align 8
  %6570 = inttoptr i64 %6569 to i64*
  %6571 = load i64, i64* %6570
  store i64 %6571, i64* %6567, align 8
  %6572 = add i64 %6569, 8
  store i64 %6572, i64* %6568, align 8
  store %struct.Memory* %loadMem_40105e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40105e
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 192
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 192
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 192, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jg_.L_400bb3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %14, 1
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, 1
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_401056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = lshr i64 %12, 32
  store i64 %13, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 %10, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %20, 32
  %24 = or i64 %23, %16
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = and i64 %34, 4294967295
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_imull_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jg_.L_400d96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jge_.L_400d25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 2, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400d20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_jg_.L_400d0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %17, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %19, %17
  %32 = xor i32 %31, %20
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %20, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %17, 31
  %44 = lshr i32 %19, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_jmpq_.L_400c57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_jmpq_.L_400c3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %18, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
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

define %struct.Memory* @routine_movb__cl__MINUS0xa5__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 165
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400d53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 68
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

define %struct.Memory* @routine_setg__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa5__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 165
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400d66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400d7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40103e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x355__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 861
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x355__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 861
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x355__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 861
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x355__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 861
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x18__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %10 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = shl i64 %20, 32
  %25 = or i64 %24, %16
  %26 = sdiv i64 %25, %23
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %block_400488
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = srem i64 %25, %23
  %36 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %37 = and i64 %26, 4294967295
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %39 = and i64 %35, 4294967295
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %34
  %46 = phi %struct.Memory* [ %33, %30 ], [ %2, %34 ]
  ret %struct.Memory* %46
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM5 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_mulsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
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

define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 60
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

define %struct.Memory* @routine_jg_.L_401033(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400fc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400fae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_jmpq_.L_400ea0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fb3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_mulsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_jmpq_.L_400e74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 192, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 192
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = trunc i64 %12 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i64 192, %9
  %26 = xor i64 %25, %12
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i64 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %12, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i64 %9, 63
  %38 = xor i64 %34, %37
  %39 = add i64 %38, %34
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
