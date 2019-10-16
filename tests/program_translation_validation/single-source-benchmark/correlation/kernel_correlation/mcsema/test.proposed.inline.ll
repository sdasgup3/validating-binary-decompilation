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

declare %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400bd0, %struct.Memory** %MEMORY
  %loadMem_400bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i383 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i383
  %27 = load i64, i64* %PC.i382
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i382
  store i64 %26, i64* %RBP.i384, align 8
  store %struct.Memory* %loadMem_400bd1, %struct.Memory** %MEMORY
  %loadMem_400bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i676 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i676
  %36 = load i64, i64* %PC.i675
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i675
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i676, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_400bd4, %struct.Memory** %MEMORY
  %loadMem_400bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %YMM1.i674 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM1.i674 to i8*
  %73 = load i64, i64* %PC.i673
  %74 = add i64 %73, 2160
  %75 = load i64, i64* %PC.i673
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i673
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_400bd8, %struct.Memory** %MEMORY
  %loadMem_400be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i672
  %92 = sub i64 %91, 4
  %93 = load i32, i32* %EDI.i
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i671
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i671
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_400be0, %struct.Memory** %MEMORY
  %loadMem_400be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i670
  %108 = sub i64 %107, 8
  %109 = load i32, i32* %ESI.i
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i669
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i669
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_400be3, %struct.Memory** %MEMORY
  %loadMem_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %120, i64 0, i64 0
  %XMM0.i668 = bitcast %union.VectorReg* %121 to %union.vec128_t*
  %122 = load i64, i64* %RBP.i667
  %123 = sub i64 %122, 16
  %124 = bitcast %union.vec128_t* %XMM0.i668 to i8*
  %125 = load i64, i64* %PC.i666
  %126 = add i64 %125, 5
  store i64 %126, i64* %PC.i666
  %127 = bitcast i8* %124 to double*
  %128 = load double, double* %127, align 1
  %129 = inttoptr i64 %123 to double*
  store double %128, double* %129
  store %struct.Memory* %loadMem_400be6, %struct.Memory** %MEMORY
  %loadMem_400beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 15
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %138 to i64*
  %139 = load i64, i64* %RBP.i665
  %140 = sub i64 %139, 24
  %141 = load i64, i64* %RDX.i664
  %142 = load i64, i64* %PC.i663
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC.i663
  %144 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %144
  store %struct.Memory* %loadMem_400beb, %struct.Memory** %MEMORY
  %loadMem_400bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RBP.i662
  %155 = sub i64 %154, 32
  %156 = load i64, i64* %RCX.i661
  %157 = load i64, i64* %PC.i660
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC.i660
  %159 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %159
  store %struct.Memory* %loadMem_400bef, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 15
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 17
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %R8.i = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RBP.i659
  %170 = sub i64 %169, 40
  %171 = load i64, i64* %R8.i
  %172 = load i64, i64* %PC.i658
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i658
  %174 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %174
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 15
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 19
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %R9.i = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %RBP.i657
  %185 = sub i64 %184, 48
  %186 = load i64, i64* %R9.i
  %187 = load i64, i64* %PC.i656
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC.i656
  %189 = inttoptr i64 %185 to i64*
  store i64 %186, i64* %189
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %196, i64 0, i64 1
  %XMM1.i655 = bitcast %union.VectorReg* %197 to %union.vec128_t*
  %198 = load i64, i64* %RBP.i654
  %199 = sub i64 %198, 72
  %200 = bitcast %union.vec128_t* %XMM1.i655 to i8*
  %201 = load i64, i64* %PC.i653
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC.i653
  %203 = bitcast i8* %200 to double*
  %204 = load double, double* %203, align 1
  %205 = inttoptr i64 %199 to double*
  store double %204, double* %205
  store %struct.Memory* %loadMem_400bfb, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i652
  %213 = sub i64 %212, 56
  %214 = load i64, i64* %PC.i651
  %215 = add i64 %214, 7
  store i64 %215, i64* %PC.i651
  %216 = inttoptr i64 %213 to i32*
  store i32 0, i32* %216
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  br label %block_.L_400c07

block_.L_400c07:                                  ; preds = %block_.L_400c71, %entry
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 15
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RBP.i650
  %227 = sub i64 %226, 56
  %228 = load i64, i64* %PC.i648
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC.i648
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %238 to i32*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %241 to i64*
  %242 = load i32, i32* %EAX.i646
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %RBP.i647
  %245 = sub i64 %244, 4
  %246 = load i64, i64* %PC.i645
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i645
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sub i32 %242, %249
  %251 = icmp ult i32 %242, %249
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %252, i8* %253, align 1
  %254 = and i32 %250, 255
  %255 = call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %258, i8* %259, align 1
  %260 = xor i32 %249, %242
  %261 = xor i32 %260, %250
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %264, i8* %265, align 1
  %266 = icmp eq i32 %250, 0
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %267, i8* %268, align 1
  %269 = lshr i32 %250, 31
  %270 = trunc i32 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %270, i8* %271, align 1
  %272 = lshr i32 %242, 31
  %273 = lshr i32 %249, 31
  %274 = xor i32 %273, %272
  %275 = xor i32 %269, %272
  %276 = add i32 %275, %274
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1
  store %struct.Memory* %loadMem_400c0a, %struct.Memory** %MEMORY
  %loadMem_400c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %PC.i644
  %284 = add i64 %283, 141
  %285 = load i64, i64* %PC.i644
  %286 = add i64 %285, 6
  %287 = load i64, i64* %PC.i644
  %288 = add i64 %287, 6
  store i64 %288, i64* %PC.i644
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %290 = load i8, i8* %289, align 1
  %291 = icmp ne i8 %290, 0
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %293 = load i8, i8* %292, align 1
  %294 = icmp ne i8 %293, 0
  %295 = xor i1 %291, %294
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %BRANCH_TAKEN, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %299 = select i1 %295, i64 %286, i64 %284
  store i64 %299, i64* %298, align 8
  store %struct.Memory* %loadMem_400c0d, %struct.Memory** %MEMORY
  %loadBr_400c0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c0d = icmp eq i8 %loadBr_400c0d, 1
  br i1 %cmpBr_400c0d, label %block_.L_400c9a, label %block_400c13

block_400c13:                                     ; preds = %block_.L_400c07
  %loadMem_400c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %303, i64 0, i64 0
  %YMM0.i642 = bitcast %union.VectorReg* %304 to %"class.std::bitset"*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %305, i64 0, i64 0
  %XMM0.i643 = bitcast %union.VectorReg* %306 to %union.vec128_t*
  %307 = bitcast %"class.std::bitset"* %YMM0.i642 to i8*
  %308 = bitcast %"class.std::bitset"* %YMM0.i642 to i8*
  %309 = bitcast %union.vec128_t* %XMM0.i643 to i8*
  %310 = load i64, i64* %PC.i641
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC.i641
  %312 = bitcast i8* %308 to i64*
  %313 = load i64, i64* %312, align 1
  %314 = getelementptr inbounds i8, i8* %308, i64 8
  %315 = bitcast i8* %314 to i64*
  %316 = load i64, i64* %315, align 1
  %317 = bitcast i8* %309 to i64*
  %318 = load i64, i64* %317, align 1
  %319 = getelementptr inbounds i8, i8* %309, i64 8
  %320 = bitcast i8* %319 to i64*
  %321 = load i64, i64* %320, align 1
  %322 = xor i64 %318, %313
  %323 = xor i64 %321, %316
  %324 = trunc i64 %322 to i32
  %325 = lshr i64 %322, 32
  %326 = trunc i64 %325 to i32
  %327 = bitcast i8* %307 to i32*
  store i32 %324, i32* %327, align 1
  %328 = getelementptr inbounds i8, i8* %307, i64 4
  %329 = bitcast i8* %328 to i32*
  store i32 %326, i32* %329, align 1
  %330 = trunc i64 %323 to i32
  %331 = getelementptr inbounds i8, i8* %307, i64 8
  %332 = bitcast i8* %331 to i32*
  store i32 %330, i32* %332, align 1
  %333 = lshr i64 %323, 32
  %334 = trunc i64 %333 to i32
  %335 = getelementptr inbounds i8, i8* %307, i64 12
  %336 = bitcast i8* %335 to i32*
  store i32 %334, i32* %336, align 1
  store %struct.Memory* %loadMem_400c13, %struct.Memory** %MEMORY
  %loadMem_400c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i640
  %347 = sub i64 %346, 40
  %348 = load i64, i64* %PC.i638
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC.i638
  %350 = inttoptr i64 %347 to i64*
  %351 = load i64, i64* %350
  store i64 %351, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_400c16, %struct.Memory** %MEMORY
  %loadMem_400c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %RBP.i637
  %362 = sub i64 %361, 56
  %363 = load i64, i64* %PC.i635
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC.i635
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_400c1a, %struct.Memory** %MEMORY
  %loadMem_400c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %377, i64 0, i64 0
  %XMM0.i634 = bitcast %union.VectorReg* %378 to %union.vec128_t*
  %379 = load i64, i64* %RAX.i632
  %380 = load i64, i64* %RCX.i633
  %381 = mul i64 %380, 8
  %382 = add i64 %381, %379
  %383 = bitcast %union.vec128_t* %XMM0.i634 to i8*
  %384 = load i64, i64* %PC.i631
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC.i631
  %386 = bitcast i8* %383 to double*
  %387 = load double, double* %386, align 1
  %388 = inttoptr i64 %382 to double*
  store double %387, double* %388
  store %struct.Memory* %loadMem_400c1e, %struct.Memory** %MEMORY
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 15
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RBP.i630
  %396 = sub i64 %395, 52
  %397 = load i64, i64* %PC.i629
  %398 = add i64 %397, 7
  store i64 %398, i64* %PC.i629
  %399 = inttoptr i64 %396 to i32*
  store i32 0, i32* %399
  store %struct.Memory* %loadMem_400c23, %struct.Memory** %MEMORY
  br label %block_.L_400c2a

block_.L_400c2a:                                  ; preds = %block_400c36, %block_400c13
  %loadMem_400c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i628
  %410 = sub i64 %409, 52
  %411 = load i64, i64* %PC.i626
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC.i626
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_400c2a, %struct.Memory** %MEMORY
  %loadMem_400c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %EAX.i624 = bitcast %union.anon* %421 to i32*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 15
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %424 to i64*
  %425 = load i32, i32* %EAX.i624
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* %RBP.i625
  %428 = sub i64 %427, 8
  %429 = load i64, i64* %PC.i623
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC.i623
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431
  %433 = sub i32 %425, %432
  %434 = icmp ult i32 %425, %432
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %435, i8* %436, align 1
  %437 = and i32 %433, 255
  %438 = call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %441, i8* %442, align 1
  %443 = xor i32 %432, %425
  %444 = xor i32 %443, %433
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %447, i8* %448, align 1
  %449 = icmp eq i32 %433, 0
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %450, i8* %451, align 1
  %452 = lshr i32 %433, 31
  %453 = trunc i32 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %453, i8* %454, align 1
  %455 = lshr i32 %425, 31
  %456 = lshr i32 %432, 31
  %457 = xor i32 %456, %455
  %458 = xor i32 %452, %455
  %459 = add i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %461, i8* %462, align 1
  store %struct.Memory* %loadMem_400c2d, %struct.Memory** %MEMORY
  %loadMem_400c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %PC.i622
  %467 = add i64 %466, 65
  %468 = load i64, i64* %PC.i622
  %469 = add i64 %468, 6
  %470 = load i64, i64* %PC.i622
  %471 = add i64 %470, 6
  store i64 %471, i64* %PC.i622
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %473 = load i8, i8* %472, align 1
  %474 = icmp ne i8 %473, 0
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %476 = load i8, i8* %475, align 1
  %477 = icmp ne i8 %476, 0
  %478 = xor i1 %474, %477
  %479 = xor i1 %478, true
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %BRANCH_TAKEN, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %482 = select i1 %478, i64 %469, i64 %467
  store i64 %482, i64* %481, align 8
  store %struct.Memory* %loadMem_400c30, %struct.Memory** %MEMORY
  %loadBr_400c30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c30 = icmp eq i8 %loadBr_400c30, 1
  br i1 %cmpBr_400c30, label %block_.L_400c71, label %block_400c36

block_400c36:                                     ; preds = %block_.L_400c2a
  %loadMem_400c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i621
  %493 = sub i64 %492, 24
  %494 = load i64, i64* %PC.i619
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC.i619
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  store i64 %497, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_400c36, %struct.Memory** %MEMORY
  %loadMem_400c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i618
  %508 = sub i64 %507, 52
  %509 = load i64, i64* %PC.i616
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i616
  %511 = inttoptr i64 %508 to i32*
  %512 = load i32, i32* %511
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i617, align 8
  store %struct.Memory* %loadMem_400c3a, %struct.Memory** %MEMORY
  %loadMem_400c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %519 to i64*
  %520 = load i64, i64* %RCX.i615
  %521 = load i64, i64* %PC.i614
  %522 = add i64 %521, 7
  store i64 %522, i64* %PC.i614
  %523 = sext i64 %520 to i128
  %524 = and i128 %523, -18446744073709551616
  %525 = zext i64 %520 to i128
  %526 = or i128 %524, %525
  %527 = mul i128 8000, %526
  %528 = trunc i128 %527 to i64
  store i64 %528, i64* %RCX.i615, align 8
  %529 = sext i64 %528 to i128
  %530 = icmp ne i128 %529, %527
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %531, i8* %532, align 1
  %533 = trunc i128 %527 to i32
  %534 = and i32 %533, 255
  %535 = call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %538, i8* %539, align 1
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %540, align 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %541, align 1
  %542 = lshr i64 %528, 63
  %543 = trunc i64 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %543, i8* %544, align 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %531, i8* %545, align 1
  store %struct.Memory* %loadMem_400c3e, %struct.Memory** %MEMORY
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RAX.i612
  %556 = load i64, i64* %RCX.i613
  %557 = load i64, i64* %PC.i611
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC.i611
  %559 = add i64 %556, %555
  store i64 %559, i64* %RAX.i612, align 8
  %560 = icmp ult i64 %559, %555
  %561 = icmp ult i64 %559, %556
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1
  %565 = trunc i64 %559 to i32
  %566 = and i32 %565, 255
  %567 = call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %570, i8* %571, align 1
  %572 = xor i64 %556, %555
  %573 = xor i64 %572, %559
  %574 = lshr i64 %573, 4
  %575 = trunc i64 %574 to i8
  %576 = and i8 %575, 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %576, i8* %577, align 1
  %578 = icmp eq i64 %559, 0
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %579, i8* %580, align 1
  %581 = lshr i64 %559, 63
  %582 = trunc i64 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %582, i8* %583, align 1
  %584 = lshr i64 %555, 63
  %585 = lshr i64 %556, 63
  %586 = xor i64 %581, %584
  %587 = xor i64 %581, %585
  %588 = add i64 %586, %587
  %589 = icmp eq i64 %588, 2
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %590, i8* %591, align 1
  store %struct.Memory* %loadMem_400c45, %struct.Memory** %MEMORY
  %loadMem_400c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 5
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i610
  %602 = sub i64 %601, 56
  %603 = load i64, i64* %PC.i608
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC.i608
  %605 = inttoptr i64 %602 to i32*
  %606 = load i32, i32* %605
  %607 = sext i32 %606 to i64
  store i64 %607, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_400c48, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 0
  %YMM0.i607 = bitcast %union.VectorReg* %618 to %"class.std::bitset"*
  %619 = bitcast %"class.std::bitset"* %YMM0.i607 to i8*
  %620 = load i64, i64* %RAX.i605
  %621 = load i64, i64* %RCX.i606
  %622 = mul i64 %621, 8
  %623 = add i64 %622, %620
  %624 = load i64, i64* %PC.i604
  %625 = add i64 %624, 5
  store i64 %625, i64* %PC.i604
  %626 = inttoptr i64 %623 to double*
  %627 = load double, double* %626
  %628 = bitcast i8* %619 to double*
  store double %627, double* %628, align 1
  %629 = getelementptr inbounds i8, i8* %619, i64 8
  %630 = bitcast i8* %629 to double*
  store double 0.000000e+00, double* %630, align 1
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 15
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RBP.i603
  %641 = sub i64 %640, 40
  %642 = load i64, i64* %PC.i601
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC.i601
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644
  store i64 %645, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_400c51, %struct.Memory** %MEMORY
  %loadMem_400c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i600
  %656 = sub i64 %655, 56
  %657 = load i64, i64* %PC.i598
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i598
  %659 = inttoptr i64 %656 to i32*
  %660 = load i32, i32* %659
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_400c55, %struct.Memory** %MEMORY
  %loadMem_400c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %671, i64 0, i64 0
  %YMM0.i597 = bitcast %union.VectorReg* %672 to %"class.std::bitset"*
  %673 = bitcast %"class.std::bitset"* %YMM0.i597 to i8*
  %674 = bitcast %"class.std::bitset"* %YMM0.i597 to i8*
  %675 = load i64, i64* %RAX.i595
  %676 = load i64, i64* %RCX.i596
  %677 = mul i64 %676, 8
  %678 = add i64 %677, %675
  %679 = load i64, i64* %PC.i594
  %680 = add i64 %679, 5
  store i64 %680, i64* %PC.i594
  %681 = bitcast i8* %674 to double*
  %682 = load double, double* %681, align 1
  %683 = getelementptr inbounds i8, i8* %674, i64 8
  %684 = bitcast i8* %683 to i64*
  %685 = load i64, i64* %684, align 1
  %686 = inttoptr i64 %678 to double*
  %687 = load double, double* %686
  %688 = fadd double %682, %687
  %689 = bitcast i8* %673 to double*
  store double %688, double* %689, align 1
  %690 = getelementptr inbounds i8, i8* %673, i64 8
  %691 = bitcast i8* %690 to i64*
  store i64 %685, i64* %691, align 1
  store %struct.Memory* %loadMem_400c59, %struct.Memory** %MEMORY
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 33
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %694 to i64*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 1
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 5
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %701, i64 0, i64 0
  %XMM0.i593 = bitcast %union.VectorReg* %702 to %union.vec128_t*
  %703 = load i64, i64* %RAX.i591
  %704 = load i64, i64* %RCX.i592
  %705 = mul i64 %704, 8
  %706 = add i64 %705, %703
  %707 = bitcast %union.vec128_t* %XMM0.i593 to i8*
  %708 = load i64, i64* %PC.i590
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i590
  %710 = bitcast i8* %707 to double*
  %711 = load double, double* %710, align 1
  %712 = inttoptr i64 %706 to double*
  store double %711, double* %712
  store %struct.Memory* %loadMem_400c5e, %struct.Memory** %MEMORY
  %loadMem_400c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i589
  %723 = sub i64 %722, 52
  %724 = load i64, i64* %PC.i587
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i587
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_400c63, %struct.Memory** %MEMORY
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RAX.i586
  %736 = load i64, i64* %PC.i585
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC.i585
  %738 = trunc i64 %735 to i32
  %739 = add i32 1, %738
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i586, align 8
  %741 = icmp ult i32 %739, %738
  %742 = icmp ult i32 %739, 1
  %743 = or i1 %741, %742
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %744, i8* %745, align 1
  %746 = and i32 %739, 255
  %747 = call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %750, i8* %751, align 1
  %752 = xor i64 1, %735
  %753 = trunc i64 %752 to i32
  %754 = xor i32 %753, %739
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %757, i8* %758, align 1
  %759 = icmp eq i32 %739, 0
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %760, i8* %761, align 1
  %762 = lshr i32 %739, 31
  %763 = trunc i32 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %763, i8* %764, align 1
  %765 = lshr i32 %738, 31
  %766 = xor i32 %762, %765
  %767 = add i32 %766, %762
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %769, i8* %770, align 1
  store %struct.Memory* %loadMem_400c66, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 1
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %EAX.i583 = bitcast %union.anon* %776 to i32*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %RBP.i584
  %781 = sub i64 %780, 52
  %782 = load i32, i32* %EAX.i583
  %783 = zext i32 %782 to i64
  %784 = load i64, i64* %PC.i582
  %785 = add i64 %784, 3
  store i64 %785, i64* %PC.i582
  %786 = inttoptr i64 %781 to i32*
  store i32 %782, i32* %786
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %PC.i581
  %791 = add i64 %790, -66
  %792 = load i64, i64* %PC.i581
  %793 = add i64 %792, 5
  store i64 %793, i64* %PC.i581
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %791, i64* %794, align 8
  store %struct.Memory* %loadMem_400c6c, %struct.Memory** %MEMORY
  br label %block_.L_400c2a

block_.L_400c71:                                  ; preds = %block_.L_400c2a
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %801, i64 0, i64 0
  %YMM0.i580 = bitcast %union.VectorReg* %802 to %"class.std::bitset"*
  %803 = bitcast %"class.std::bitset"* %YMM0.i580 to i8*
  %804 = load i64, i64* %RBP.i579
  %805 = sub i64 %804, 16
  %806 = load i64, i64* %PC.i578
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i578
  %808 = inttoptr i64 %805 to double*
  %809 = load double, double* %808
  %810 = bitcast i8* %803 to double*
  store double %809, double* %810, align 1
  %811 = getelementptr inbounds i8, i8* %803, i64 8
  %812 = bitcast i8* %811 to double*
  store double 0.000000e+00, double* %812, align 1
  store %struct.Memory* %loadMem_400c71, %struct.Memory** %MEMORY
  %loadMem_400c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 1
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 15
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RBP.i577
  %823 = sub i64 %822, 40
  %824 = load i64, i64* %PC.i575
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC.i575
  %826 = inttoptr i64 %823 to i64*
  %827 = load i64, i64* %826
  store i64 %827, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_400c76, %struct.Memory** %MEMORY
  %loadMem_400c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 5
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 15
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RBP.i574
  %838 = sub i64 %837, 56
  %839 = load i64, i64* %PC.i572
  %840 = add i64 %839, 4
  store i64 %840, i64* %PC.i572
  %841 = inttoptr i64 %838 to i32*
  %842 = load i32, i32* %841
  %843 = sext i32 %842 to i64
  store i64 %843, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_400c7a, %struct.Memory** %MEMORY
  %loadMem_400c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 5
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %853, i64 0, i64 1
  %YMM1.i571 = bitcast %union.VectorReg* %854 to %"class.std::bitset"*
  %855 = bitcast %"class.std::bitset"* %YMM1.i571 to i8*
  %856 = load i64, i64* %RAX.i569
  %857 = load i64, i64* %RCX.i570
  %858 = mul i64 %857, 8
  %859 = add i64 %858, %856
  %860 = load i64, i64* %PC.i568
  %861 = add i64 %860, 5
  store i64 %861, i64* %PC.i568
  %862 = inttoptr i64 %859 to double*
  %863 = load double, double* %862
  %864 = bitcast i8* %855 to double*
  store double %863, double* %864, align 1
  %865 = getelementptr inbounds i8, i8* %855, i64 8
  %866 = bitcast i8* %865 to double*
  store double 0.000000e+00, double* %866, align 1
  store %struct.Memory* %loadMem_400c7e, %struct.Memory** %MEMORY
  %loadMem_400c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %870, i64 0, i64 1
  %YMM1.i566 = bitcast %union.VectorReg* %871 to %"class.std::bitset"*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %872, i64 0, i64 0
  %XMM0.i567 = bitcast %union.VectorReg* %873 to %union.vec128_t*
  %874 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %875 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %876 = bitcast %union.vec128_t* %XMM0.i567 to i8*
  %877 = load i64, i64* %PC.i565
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC.i565
  %879 = bitcast i8* %875 to double*
  %880 = load double, double* %879, align 1
  %881 = getelementptr inbounds i8, i8* %875, i64 8
  %882 = bitcast i8* %881 to i64*
  %883 = load i64, i64* %882, align 1
  %884 = bitcast i8* %876 to double*
  %885 = load double, double* %884, align 1
  %886 = fdiv double %880, %885
  %887 = bitcast i8* %874 to double*
  store double %886, double* %887, align 1
  %888 = getelementptr inbounds i8, i8* %874, i64 8
  %889 = bitcast i8* %888 to i64*
  store i64 %883, i64* %889, align 1
  store %struct.Memory* %loadMem_400c83, %struct.Memory** %MEMORY
  %loadMem_400c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %899, i64 0, i64 1
  %XMM1.i564 = bitcast %union.VectorReg* %900 to %union.vec128_t*
  %901 = load i64, i64* %RAX.i562
  %902 = load i64, i64* %RCX.i563
  %903 = mul i64 %902, 8
  %904 = add i64 %903, %901
  %905 = bitcast %union.vec128_t* %XMM1.i564 to i8*
  %906 = load i64, i64* %PC.i561
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i561
  %908 = bitcast i8* %905 to double*
  %909 = load double, double* %908, align 1
  %910 = inttoptr i64 %904 to double*
  store double %909, double* %910
  store %struct.Memory* %loadMem_400c87, %struct.Memory** %MEMORY
  %loadMem_400c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 33
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %913 to i64*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 1
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 15
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %919 to i64*
  %920 = load i64, i64* %RBP.i560
  %921 = sub i64 %920, 56
  %922 = load i64, i64* %PC.i558
  %923 = add i64 %922, 3
  store i64 %923, i64* %PC.i558
  %924 = inttoptr i64 %921 to i32*
  %925 = load i32, i32* %924
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_400c8c, %struct.Memory** %MEMORY
  %loadMem_400c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 1
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RAX.i557
  %934 = load i64, i64* %PC.i556
  %935 = add i64 %934, 3
  store i64 %935, i64* %PC.i556
  %936 = trunc i64 %933 to i32
  %937 = add i32 1, %936
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RAX.i557, align 8
  %939 = icmp ult i32 %937, %936
  %940 = icmp ult i32 %937, 1
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = and i32 %937, 255
  %945 = call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %948, i8* %949, align 1
  %950 = xor i64 1, %933
  %951 = trunc i64 %950 to i32
  %952 = xor i32 %951, %937
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i32 %937, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %937, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %936, 31
  %964 = xor i32 %960, %963
  %965 = add i32 %964, %960
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %967, i8* %968, align 1
  store %struct.Memory* %loadMem_400c8f, %struct.Memory** %MEMORY
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %974 to i32*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RBP.i555
  %979 = sub i64 %978, 56
  %980 = load i32, i32* %EAX.i554
  %981 = zext i32 %980 to i64
  %982 = load i64, i64* %PC.i553
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC.i553
  %984 = inttoptr i64 %979 to i32*
  store i32 %980, i32* %984
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %PC.i552
  %989 = add i64 %988, -142
  %990 = load i64, i64* %PC.i552
  %991 = add i64 %990, 5
  store i64 %991, i64* %PC.i552
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %989, i64* %992, align 8
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  br label %block_.L_400c07

block_.L_400c9a:                                  ; preds = %block_.L_400c07
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 15
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %RBP.i551
  %1000 = sub i64 %999, 56
  %1001 = load i64, i64* %PC.i550
  %1002 = add i64 %1001, 7
  store i64 %1002, i64* %PC.i550
  %1003 = inttoptr i64 %1000 to i32*
  store i32 0, i32* %1003
  store %struct.Memory* %loadMem_400c9a, %struct.Memory** %MEMORY
  br label %block_.L_400ca1

block_.L_400ca1:                                  ; preds = %block_.L_400dbe, %block_.L_400c9a
  %loadMem_400ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i549
  %1014 = sub i64 %1013, 56
  %1015 = load i64, i64* %PC.i547
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %PC.i547
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_400ca1, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 1
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %EAX.i545 = bitcast %union.anon* %1025 to i32*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 15
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %1028 to i64*
  %1029 = load i32, i32* %EAX.i545
  %1030 = zext i32 %1029 to i64
  %1031 = load i64, i64* %RBP.i546
  %1032 = sub i64 %1031, 4
  %1033 = load i64, i64* %PC.i544
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %PC.i544
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035
  %1037 = sub i32 %1029, %1036
  %1038 = icmp ult i32 %1029, %1036
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1039, i8* %1040, align 1
  %1041 = and i32 %1037, 255
  %1042 = call i32 @llvm.ctpop.i32(i32 %1041)
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1045, i8* %1046, align 1
  %1047 = xor i32 %1036, %1029
  %1048 = xor i32 %1047, %1037
  %1049 = lshr i32 %1048, 4
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1051, i8* %1052, align 1
  %1053 = icmp eq i32 %1037, 0
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1054, i8* %1055, align 1
  %1056 = lshr i32 %1037, 31
  %1057 = trunc i32 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1057, i8* %1058, align 1
  %1059 = lshr i32 %1029, 31
  %1060 = lshr i32 %1036, 31
  %1061 = xor i32 %1060, %1059
  %1062 = xor i32 %1056, %1059
  %1063 = add i32 %1062, %1061
  %1064 = icmp eq i32 %1063, 2
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1065, i8* %1066, align 1
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %PC.i543
  %1071 = add i64 %1070, 311
  %1072 = load i64, i64* %PC.i543
  %1073 = add i64 %1072, 6
  %1074 = load i64, i64* %PC.i543
  %1075 = add i64 %1074, 6
  store i64 %1075, i64* %PC.i543
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1077 = load i8, i8* %1076, align 1
  %1078 = icmp ne i8 %1077, 0
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1080 = load i8, i8* %1079, align 1
  %1081 = icmp ne i8 %1080, 0
  %1082 = xor i1 %1078, %1081
  %1083 = xor i1 %1082, true
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %BRANCH_TAKEN, align 1
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1086 = select i1 %1082, i64 %1073, i64 %1071
  store i64 %1086, i64* %1085, align 8
  store %struct.Memory* %loadMem_400ca7, %struct.Memory** %MEMORY
  %loadBr_400ca7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ca7 = icmp eq i8 %loadBr_400ca7, 1
  br i1 %cmpBr_400ca7, label %block_.L_400dde, label %block_400cad

block_400cad:                                     ; preds = %block_.L_400ca1
  %loadMem_400cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1090, i64 0, i64 0
  %YMM0.i541 = bitcast %union.VectorReg* %1091 to %"class.std::bitset"*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1092, i64 0, i64 0
  %XMM0.i542 = bitcast %union.VectorReg* %1093 to %union.vec128_t*
  %1094 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %1095 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %1096 = bitcast %union.vec128_t* %XMM0.i542 to i8*
  %1097 = load i64, i64* %PC.i540
  %1098 = add i64 %1097, 3
  store i64 %1098, i64* %PC.i540
  %1099 = bitcast i8* %1095 to i64*
  %1100 = load i64, i64* %1099, align 1
  %1101 = getelementptr inbounds i8, i8* %1095, i64 8
  %1102 = bitcast i8* %1101 to i64*
  %1103 = load i64, i64* %1102, align 1
  %1104 = bitcast i8* %1096 to i64*
  %1105 = load i64, i64* %1104, align 1
  %1106 = getelementptr inbounds i8, i8* %1096, i64 8
  %1107 = bitcast i8* %1106 to i64*
  %1108 = load i64, i64* %1107, align 1
  %1109 = xor i64 %1105, %1100
  %1110 = xor i64 %1108, %1103
  %1111 = trunc i64 %1109 to i32
  %1112 = lshr i64 %1109, 32
  %1113 = trunc i64 %1112 to i32
  %1114 = bitcast i8* %1094 to i32*
  store i32 %1111, i32* %1114, align 1
  %1115 = getelementptr inbounds i8, i8* %1094, i64 4
  %1116 = bitcast i8* %1115 to i32*
  store i32 %1113, i32* %1116, align 1
  %1117 = trunc i64 %1110 to i32
  %1118 = getelementptr inbounds i8, i8* %1094, i64 8
  %1119 = bitcast i8* %1118 to i32*
  store i32 %1117, i32* %1119, align 1
  %1120 = lshr i64 %1110, 32
  %1121 = trunc i64 %1120 to i32
  %1122 = getelementptr inbounds i8, i8* %1094, i64 12
  %1123 = bitcast i8* %1122 to i32*
  store i32 %1121, i32* %1123, align 1
  store %struct.Memory* %loadMem_400cad, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RBP.i539
  %1134 = sub i64 %1133, 48
  %1135 = load i64, i64* %PC.i537
  %1136 = add i64 %1135, 4
  store i64 %1136, i64* %PC.i537
  %1137 = inttoptr i64 %1134 to i64*
  %1138 = load i64, i64* %1137
  store i64 %1138, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 5
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RBP.i536
  %1149 = sub i64 %1148, 56
  %1150 = load i64, i64* %PC.i534
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC.i534
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = sext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 1
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 5
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1164, i64 0, i64 0
  %XMM0.i533 = bitcast %union.VectorReg* %1165 to %union.vec128_t*
  %1166 = load i64, i64* %RAX.i531
  %1167 = load i64, i64* %RCX.i532
  %1168 = mul i64 %1167, 8
  %1169 = add i64 %1168, %1166
  %1170 = bitcast %union.vec128_t* %XMM0.i533 to i8*
  %1171 = load i64, i64* %PC.i530
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %PC.i530
  %1173 = bitcast i8* %1170 to double*
  %1174 = load double, double* %1173, align 1
  %1175 = inttoptr i64 %1169 to double*
  store double %1174, double* %1175
  store %struct.Memory* %loadMem_400cb8, %struct.Memory** %MEMORY
  %loadMem_400cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %1181 to i64*
  %1182 = load i64, i64* %RBP.i529
  %1183 = sub i64 %1182, 52
  %1184 = load i64, i64* %PC.i528
  %1185 = add i64 %1184, 7
  store i64 %1185, i64* %PC.i528
  %1186 = inttoptr i64 %1183 to i32*
  store i32 0, i32* %1186
  store %struct.Memory* %loadMem_400cbd, %struct.Memory** %MEMORY
  br label %block_.L_400cc4

block_.L_400cc4:                                  ; preds = %block_400cd0, %block_400cad
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RBP.i527
  %1197 = sub i64 %1196, 52
  %1198 = load i64, i64* %PC.i525
  %1199 = add i64 %1198, 3
  store i64 %1199, i64* %PC.i525
  %1200 = inttoptr i64 %1197 to i32*
  %1201 = load i32, i32* %1200
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %1208 to i32*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 15
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %1211 to i64*
  %1212 = load i32, i32* %EAX.i523
  %1213 = zext i32 %1212 to i64
  %1214 = load i64, i64* %RBP.i524
  %1215 = sub i64 %1214, 8
  %1216 = load i64, i64* %PC.i522
  %1217 = add i64 %1216, 3
  store i64 %1217, i64* %PC.i522
  %1218 = inttoptr i64 %1215 to i32*
  %1219 = load i32, i32* %1218
  %1220 = sub i32 %1212, %1219
  %1221 = icmp ult i32 %1212, %1219
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1222, i8* %1223, align 1
  %1224 = and i32 %1220, 255
  %1225 = call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1228, i8* %1229, align 1
  %1230 = xor i32 %1219, %1212
  %1231 = xor i32 %1230, %1220
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1234, i8* %1235, align 1
  %1236 = icmp eq i32 %1220, 0
  %1237 = zext i1 %1236 to i8
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1237, i8* %1238, align 1
  %1239 = lshr i32 %1220, 31
  %1240 = trunc i32 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1240, i8* %1241, align 1
  %1242 = lshr i32 %1212, 31
  %1243 = lshr i32 %1219, 31
  %1244 = xor i32 %1243, %1242
  %1245 = xor i32 %1239, %1242
  %1246 = add i32 %1245, %1244
  %1247 = icmp eq i32 %1246, 2
  %1248 = zext i1 %1247 to i8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1248, i8* %1249, align 1
  store %struct.Memory* %loadMem_400cc7, %struct.Memory** %MEMORY
  %loadMem_400cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i521
  %1254 = add i64 %1253, 122
  %1255 = load i64, i64* %PC.i521
  %1256 = add i64 %1255, 6
  %1257 = load i64, i64* %PC.i521
  %1258 = add i64 %1257, 6
  store i64 %1258, i64* %PC.i521
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1260 = load i8, i8* %1259, align 1
  %1261 = icmp ne i8 %1260, 0
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1263 = load i8, i8* %1262, align 1
  %1264 = icmp ne i8 %1263, 0
  %1265 = xor i1 %1261, %1264
  %1266 = xor i1 %1265, true
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %BRANCH_TAKEN, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1269 = select i1 %1265, i64 %1256, i64 %1254
  store i64 %1269, i64* %1268, align 8
  store %struct.Memory* %loadMem_400cca, %struct.Memory** %MEMORY
  %loadBr_400cca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cca = icmp eq i8 %loadBr_400cca, 1
  br i1 %cmpBr_400cca, label %block_.L_400d44, label %block_400cd0

block_400cd0:                                     ; preds = %block_.L_400cc4
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i520
  %1280 = sub i64 %1279, 24
  %1281 = load i64, i64* %PC.i518
  %1282 = add i64 %1281, 4
  store i64 %1282, i64* %PC.i518
  %1283 = inttoptr i64 %1280 to i64*
  %1284 = load i64, i64* %1283
  store i64 %1284, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_400cd0, %struct.Memory** %MEMORY
  %loadMem_400cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 5
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 15
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %RBP.i517
  %1295 = sub i64 %1294, 52
  %1296 = load i64, i64* %PC.i515
  %1297 = add i64 %1296, 4
  store i64 %1297, i64* %PC.i515
  %1298 = inttoptr i64 %1295 to i32*
  %1299 = load i32, i32* %1298
  %1300 = sext i32 %1299 to i64
  store i64 %1300, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_400cd4, %struct.Memory** %MEMORY
  %loadMem_400cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 5
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %RCX.i514
  %1308 = load i64, i64* %PC.i513
  %1309 = add i64 %1308, 7
  store i64 %1309, i64* %PC.i513
  %1310 = sext i64 %1307 to i128
  %1311 = and i128 %1310, -18446744073709551616
  %1312 = zext i64 %1307 to i128
  %1313 = or i128 %1311, %1312
  %1314 = mul i128 8000, %1313
  %1315 = trunc i128 %1314 to i64
  store i64 %1315, i64* %RCX.i514, align 8
  %1316 = sext i64 %1315 to i128
  %1317 = icmp ne i128 %1316, %1314
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1318, i8* %1319, align 1
  %1320 = trunc i128 %1314 to i32
  %1321 = and i32 %1320, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1327, align 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1328, align 1
  %1329 = lshr i64 %1315, 63
  %1330 = trunc i64 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1330, i8* %1331, align 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1318, i8* %1332, align 1
  store %struct.Memory* %loadMem_400cd8, %struct.Memory** %MEMORY
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 5
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %RAX.i511
  %1343 = load i64, i64* %RCX.i512
  %1344 = load i64, i64* %PC.i510
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i510
  %1346 = add i64 %1343, %1342
  store i64 %1346, i64* %RAX.i511, align 8
  %1347 = icmp ult i64 %1346, %1342
  %1348 = icmp ult i64 %1346, %1343
  %1349 = or i1 %1347, %1348
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1350, i8* %1351, align 1
  %1352 = trunc i64 %1346 to i32
  %1353 = and i32 %1352, 255
  %1354 = call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1357, i8* %1358, align 1
  %1359 = xor i64 %1343, %1342
  %1360 = xor i64 %1359, %1346
  %1361 = lshr i64 %1360, 4
  %1362 = trunc i64 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1363, i8* %1364, align 1
  %1365 = icmp eq i64 %1346, 0
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1366, i8* %1367, align 1
  %1368 = lshr i64 %1346, 63
  %1369 = trunc i64 %1368 to i8
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1369, i8* %1370, align 1
  %1371 = lshr i64 %1342, 63
  %1372 = lshr i64 %1343, 63
  %1373 = xor i64 %1368, %1371
  %1374 = xor i64 %1368, %1372
  %1375 = add i64 %1373, %1374
  %1376 = icmp eq i64 %1375, 2
  %1377 = zext i1 %1376 to i8
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1377, i8* %1378, align 1
  store %struct.Memory* %loadMem_400cdf, %struct.Memory** %MEMORY
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 5
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 15
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RBP.i509
  %1389 = sub i64 %1388, 56
  %1390 = load i64, i64* %PC.i507
  %1391 = add i64 %1390, 4
  store i64 %1391, i64* %PC.i507
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_400ce2, %struct.Memory** %MEMORY
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 1
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 5
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1404, i64 0, i64 0
  %YMM0.i506 = bitcast %union.VectorReg* %1405 to %"class.std::bitset"*
  %1406 = bitcast %"class.std::bitset"* %YMM0.i506 to i8*
  %1407 = load i64, i64* %RAX.i504
  %1408 = load i64, i64* %RCX.i505
  %1409 = mul i64 %1408, 8
  %1410 = add i64 %1409, %1407
  %1411 = load i64, i64* %PC.i503
  %1412 = add i64 %1411, 5
  store i64 %1412, i64* %PC.i503
  %1413 = inttoptr i64 %1410 to double*
  %1414 = load double, double* %1413
  %1415 = bitcast i8* %1406 to double*
  store double %1414, double* %1415, align 1
  %1416 = getelementptr inbounds i8, i8* %1406, i64 8
  %1417 = bitcast i8* %1416 to double*
  store double 0.000000e+00, double* %1417, align 1
  store %struct.Memory* %loadMem_400ce6, %struct.Memory** %MEMORY
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i502
  %1428 = sub i64 %1427, 40
  %1429 = load i64, i64* %PC.i500
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC.i500
  %1431 = inttoptr i64 %1428 to i64*
  %1432 = load i64, i64* %1431
  store i64 %1432, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_400ceb, %struct.Memory** %MEMORY
  %loadMem_400cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 5
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i499
  %1443 = sub i64 %1442, 56
  %1444 = load i64, i64* %PC.i497
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i497
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_400cef, %struct.Memory** %MEMORY
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 5
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1458, i64 0, i64 0
  %YMM0.i496 = bitcast %union.VectorReg* %1459 to %"class.std::bitset"*
  %1460 = bitcast %"class.std::bitset"* %YMM0.i496 to i8*
  %1461 = bitcast %"class.std::bitset"* %YMM0.i496 to i8*
  %1462 = load i64, i64* %RAX.i494
  %1463 = load i64, i64* %RCX.i495
  %1464 = mul i64 %1463, 8
  %1465 = add i64 %1464, %1462
  %1466 = load i64, i64* %PC.i493
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i493
  %1468 = bitcast i8* %1461 to double*
  %1469 = load double, double* %1468, align 1
  %1470 = getelementptr inbounds i8, i8* %1461, i64 8
  %1471 = bitcast i8* %1470 to i64*
  %1472 = load i64, i64* %1471, align 1
  %1473 = inttoptr i64 %1465 to double*
  %1474 = load double, double* %1473
  %1475 = fsub double %1469, %1474
  %1476 = bitcast i8* %1460 to double*
  store double %1475, double* %1476, align 1
  %1477 = getelementptr inbounds i8, i8* %1460, i64 8
  %1478 = bitcast i8* %1477 to i64*
  store i64 %1472, i64* %1478, align 1
  store %struct.Memory* %loadMem_400cf3, %struct.Memory** %MEMORY
  %loadMem_400cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 15
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %RBP.i492
  %1489 = sub i64 %1488, 24
  %1490 = load i64, i64* %PC.i490
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC.i490
  %1492 = inttoptr i64 %1489 to i64*
  %1493 = load i64, i64* %1492
  store i64 %1493, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_400cf8, %struct.Memory** %MEMORY
  %loadMem_400cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 5
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i489
  %1504 = sub i64 %1503, 52
  %1505 = load i64, i64* %PC.i487
  %1506 = add i64 %1505, 4
  store i64 %1506, i64* %PC.i487
  %1507 = inttoptr i64 %1504 to i32*
  %1508 = load i32, i32* %1507
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_400cfc, %struct.Memory** %MEMORY
  %loadMem_400d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RCX.i486
  %1517 = load i64, i64* %PC.i485
  %1518 = add i64 %1517, 7
  store i64 %1518, i64* %PC.i485
  %1519 = sext i64 %1516 to i128
  %1520 = and i128 %1519, -18446744073709551616
  %1521 = zext i64 %1516 to i128
  %1522 = or i128 %1520, %1521
  %1523 = mul i128 8000, %1522
  %1524 = trunc i128 %1523 to i64
  store i64 %1524, i64* %RCX.i486, align 8
  %1525 = sext i64 %1524 to i128
  %1526 = icmp ne i128 %1525, %1523
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1527, i8* %1528, align 1
  %1529 = trunc i128 %1523 to i32
  %1530 = and i32 %1529, 255
  %1531 = call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1534, i8* %1535, align 1
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1536, align 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1537, align 1
  %1538 = lshr i64 %1524, 63
  %1539 = trunc i64 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1539, i8* %1540, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1527, i8* %1541, align 1
  store %struct.Memory* %loadMem_400d00, %struct.Memory** %MEMORY
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RAX.i483
  %1552 = load i64, i64* %RCX.i484
  %1553 = load i64, i64* %PC.i482
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i482
  %1555 = add i64 %1552, %1551
  store i64 %1555, i64* %RAX.i483, align 8
  %1556 = icmp ult i64 %1555, %1551
  %1557 = icmp ult i64 %1555, %1552
  %1558 = or i1 %1556, %1557
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1559, i8* %1560, align 1
  %1561 = trunc i64 %1555 to i32
  %1562 = and i32 %1561, 255
  %1563 = call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1566, i8* %1567, align 1
  %1568 = xor i64 %1552, %1551
  %1569 = xor i64 %1568, %1555
  %1570 = lshr i64 %1569, 4
  %1571 = trunc i64 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1572, i8* %1573, align 1
  %1574 = icmp eq i64 %1555, 0
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1575, i8* %1576, align 1
  %1577 = lshr i64 %1555, 63
  %1578 = trunc i64 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1578, i8* %1579, align 1
  %1580 = lshr i64 %1551, 63
  %1581 = lshr i64 %1552, 63
  %1582 = xor i64 %1577, %1580
  %1583 = xor i64 %1577, %1581
  %1584 = add i64 %1582, %1583
  %1585 = icmp eq i64 %1584, 2
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1586, i8* %1587, align 1
  store %struct.Memory* %loadMem_400d07, %struct.Memory** %MEMORY
  %loadMem_400d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 5
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i481
  %1598 = sub i64 %1597, 56
  %1599 = load i64, i64* %PC.i479
  %1600 = add i64 %1599, 4
  store i64 %1600, i64* %PC.i479
  %1601 = inttoptr i64 %1598 to i32*
  %1602 = load i32, i32* %1601
  %1603 = sext i32 %1602 to i64
  store i64 %1603, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_400d0a, %struct.Memory** %MEMORY
  %loadMem_400d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 5
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1613, i64 0, i64 1
  %YMM1.i478 = bitcast %union.VectorReg* %1614 to %"class.std::bitset"*
  %1615 = bitcast %"class.std::bitset"* %YMM1.i478 to i8*
  %1616 = load i64, i64* %RAX.i476
  %1617 = load i64, i64* %RCX.i477
  %1618 = mul i64 %1617, 8
  %1619 = add i64 %1618, %1616
  %1620 = load i64, i64* %PC.i475
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC.i475
  %1622 = inttoptr i64 %1619 to double*
  %1623 = load double, double* %1622
  %1624 = bitcast i8* %1615 to double*
  store double %1623, double* %1624, align 1
  %1625 = getelementptr inbounds i8, i8* %1615, i64 8
  %1626 = bitcast i8* %1625 to double*
  store double 0.000000e+00, double* %1626, align 1
  store %struct.Memory* %loadMem_400d0e, %struct.Memory** %MEMORY
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RBP.i474
  %1637 = sub i64 %1636, 40
  %1638 = load i64, i64* %PC.i472
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC.i472
  %1640 = inttoptr i64 %1637 to i64*
  %1641 = load i64, i64* %1640
  store i64 %1641, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_400d13, %struct.Memory** %MEMORY
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 5
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i471
  %1652 = sub i64 %1651, 56
  %1653 = load i64, i64* %PC.i469
  %1654 = add i64 %1653, 4
  store i64 %1654, i64* %PC.i469
  %1655 = inttoptr i64 %1652 to i32*
  %1656 = load i32, i32* %1655
  %1657 = sext i32 %1656 to i64
  store i64 %1657, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_400d17, %struct.Memory** %MEMORY
  %loadMem_400d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 5
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1667, i64 0, i64 1
  %YMM1.i468 = bitcast %union.VectorReg* %1668 to %"class.std::bitset"*
  %1669 = bitcast %"class.std::bitset"* %YMM1.i468 to i8*
  %1670 = bitcast %"class.std::bitset"* %YMM1.i468 to i8*
  %1671 = load i64, i64* %RAX.i466
  %1672 = load i64, i64* %RCX.i467
  %1673 = mul i64 %1672, 8
  %1674 = add i64 %1673, %1671
  %1675 = load i64, i64* %PC.i465
  %1676 = add i64 %1675, 5
  store i64 %1676, i64* %PC.i465
  %1677 = bitcast i8* %1670 to double*
  %1678 = load double, double* %1677, align 1
  %1679 = getelementptr inbounds i8, i8* %1670, i64 8
  %1680 = bitcast i8* %1679 to i64*
  %1681 = load i64, i64* %1680, align 1
  %1682 = inttoptr i64 %1674 to double*
  %1683 = load double, double* %1682
  %1684 = fsub double %1678, %1683
  %1685 = bitcast i8* %1669 to double*
  store double %1684, double* %1685, align 1
  %1686 = getelementptr inbounds i8, i8* %1669, i64 8
  %1687 = bitcast i8* %1686 to i64*
  store i64 %1681, i64* %1687, align 1
  store %struct.Memory* %loadMem_400d1b, %struct.Memory** %MEMORY
  %loadMem_400d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 0
  %YMM0.i463 = bitcast %union.VectorReg* %1692 to %"class.std::bitset"*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1693, i64 0, i64 1
  %XMM1.i464 = bitcast %union.VectorReg* %1694 to %union.vec128_t*
  %1695 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1696 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1697 = bitcast %union.vec128_t* %XMM1.i464 to i8*
  %1698 = load i64, i64* %PC.i462
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i462
  %1700 = bitcast i8* %1696 to double*
  %1701 = load double, double* %1700, align 1
  %1702 = getelementptr inbounds i8, i8* %1696, i64 8
  %1703 = bitcast i8* %1702 to i64*
  %1704 = load i64, i64* %1703, align 1
  %1705 = bitcast i8* %1697 to double*
  %1706 = load double, double* %1705, align 1
  %1707 = fmul double %1701, %1706
  %1708 = bitcast i8* %1695 to double*
  store double %1707, double* %1708, align 1
  %1709 = getelementptr inbounds i8, i8* %1695, i64 8
  %1710 = bitcast i8* %1709 to i64*
  store i64 %1704, i64* %1710, align 1
  store %struct.Memory* %loadMem_400d20, %struct.Memory** %MEMORY
  %loadMem_400d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 1
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 15
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %RBP.i461
  %1721 = sub i64 %1720, 48
  %1722 = load i64, i64* %PC.i459
  %1723 = add i64 %1722, 4
  store i64 %1723, i64* %PC.i459
  %1724 = inttoptr i64 %1721 to i64*
  %1725 = load i64, i64* %1724
  store i64 %1725, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_400d24, %struct.Memory** %MEMORY
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 5
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 15
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RBP.i458
  %1736 = sub i64 %1735, 56
  %1737 = load i64, i64* %PC.i456
  %1738 = add i64 %1737, 4
  store i64 %1738, i64* %PC.i456
  %1739 = inttoptr i64 %1736 to i32*
  %1740 = load i32, i32* %1739
  %1741 = sext i32 %1740 to i64
  store i64 %1741, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_400d28, %struct.Memory** %MEMORY
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1751, i64 0, i64 0
  %YMM0.i455 = bitcast %union.VectorReg* %1752 to %"class.std::bitset"*
  %1753 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1754 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1755 = load i64, i64* %RAX.i453
  %1756 = load i64, i64* %RCX.i454
  %1757 = mul i64 %1756, 8
  %1758 = add i64 %1757, %1755
  %1759 = load i64, i64* %PC.i452
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i452
  %1761 = bitcast i8* %1754 to double*
  %1762 = load double, double* %1761, align 1
  %1763 = getelementptr inbounds i8, i8* %1754, i64 8
  %1764 = bitcast i8* %1763 to i64*
  %1765 = load i64, i64* %1764, align 1
  %1766 = inttoptr i64 %1758 to double*
  %1767 = load double, double* %1766
  %1768 = fadd double %1762, %1767
  %1769 = bitcast i8* %1753 to double*
  store double %1768, double* %1769, align 1
  %1770 = getelementptr inbounds i8, i8* %1753, i64 8
  %1771 = bitcast i8* %1770 to i64*
  store i64 %1765, i64* %1771, align 1
  store %struct.Memory* %loadMem_400d2c, %struct.Memory** %MEMORY
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1781, i64 0, i64 0
  %XMM0.i451 = bitcast %union.VectorReg* %1782 to %union.vec128_t*
  %1783 = load i64, i64* %RAX.i449
  %1784 = load i64, i64* %RCX.i450
  %1785 = mul i64 %1784, 8
  %1786 = add i64 %1785, %1783
  %1787 = bitcast %union.vec128_t* %XMM0.i451 to i8*
  %1788 = load i64, i64* %PC.i448
  %1789 = add i64 %1788, 5
  store i64 %1789, i64* %PC.i448
  %1790 = bitcast i8* %1787 to double*
  %1791 = load double, double* %1790, align 1
  %1792 = inttoptr i64 %1786 to double*
  store double %1791, double* %1792
  store %struct.Memory* %loadMem_400d31, %struct.Memory** %MEMORY
  %loadMem_400d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i447
  %1803 = sub i64 %1802, 52
  %1804 = load i64, i64* %PC.i445
  %1805 = add i64 %1804, 3
  store i64 %1805, i64* %PC.i445
  %1806 = inttoptr i64 %1803 to i32*
  %1807 = load i32, i32* %1806
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_400d36, %struct.Memory** %MEMORY
  %loadMem_400d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RAX.i444
  %1816 = load i64, i64* %PC.i443
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %PC.i443
  %1818 = trunc i64 %1815 to i32
  %1819 = add i32 1, %1818
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RAX.i444, align 8
  %1821 = icmp ult i32 %1819, %1818
  %1822 = icmp ult i32 %1819, 1
  %1823 = or i1 %1821, %1822
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1824, i8* %1825, align 1
  %1826 = and i32 %1819, 255
  %1827 = call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1830, i8* %1831, align 1
  %1832 = xor i64 1, %1815
  %1833 = trunc i64 %1832 to i32
  %1834 = xor i32 %1833, %1819
  %1835 = lshr i32 %1834, 4
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1837, i8* %1838, align 1
  %1839 = icmp eq i32 %1819, 0
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i32 %1819, 31
  %1843 = trunc i32 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1843, i8* %1844, align 1
  %1845 = lshr i32 %1818, 31
  %1846 = xor i32 %1842, %1845
  %1847 = add i32 %1846, %1842
  %1848 = icmp eq i32 %1847, 2
  %1849 = zext i1 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1849, i8* %1850, align 1
  store %struct.Memory* %loadMem_400d39, %struct.Memory** %MEMORY
  %loadMem_400d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %EAX.i441 = bitcast %union.anon* %1856 to i32*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RBP.i442
  %1861 = sub i64 %1860, 52
  %1862 = load i32, i32* %EAX.i441
  %1863 = zext i32 %1862 to i64
  %1864 = load i64, i64* %PC.i440
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC.i440
  %1866 = inttoptr i64 %1861 to i32*
  store i32 %1862, i32* %1866
  store %struct.Memory* %loadMem_400d3c, %struct.Memory** %MEMORY
  %loadMem_400d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %PC.i439
  %1871 = add i64 %1870, -123
  %1872 = load i64, i64* %PC.i439
  %1873 = add i64 %1872, 5
  store i64 %1873, i64* %PC.i439
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1871, i64* %1874, align 8
  store %struct.Memory* %loadMem_400d3f, %struct.Memory** %MEMORY
  br label %block_.L_400cc4

block_.L_400d44:                                  ; preds = %block_.L_400cc4
  %loadMem_400d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 15
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1881, i64 0, i64 0
  %YMM0.i438 = bitcast %union.VectorReg* %1882 to %"class.std::bitset"*
  %1883 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %1884 = load i64, i64* %RBP.i437
  %1885 = sub i64 %1884, 16
  %1886 = load i64, i64* %PC.i436
  %1887 = add i64 %1886, 5
  store i64 %1887, i64* %PC.i436
  %1888 = inttoptr i64 %1885 to double*
  %1889 = load double, double* %1888
  %1890 = bitcast i8* %1883 to double*
  store double %1889, double* %1890, align 1
  %1891 = getelementptr inbounds i8, i8* %1883, i64 8
  %1892 = bitcast i8* %1891 to double*
  store double 0.000000e+00, double* %1892, align 1
  store %struct.Memory* %loadMem_400d44, %struct.Memory** %MEMORY
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 1
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RBP.i435
  %1903 = sub i64 %1902, 48
  %1904 = load i64, i64* %PC.i433
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %PC.i433
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906
  store i64 %1907, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_400d49, %struct.Memory** %MEMORY
  %loadMem_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 5
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 15
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RBP.i432
  %1918 = sub i64 %1917, 56
  %1919 = load i64, i64* %PC.i430
  %1920 = add i64 %1919, 4
  store i64 %1920, i64* %PC.i430
  %1921 = inttoptr i64 %1918 to i32*
  %1922 = load i32, i32* %1921
  %1923 = sext i32 %1922 to i64
  store i64 %1923, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_400d4d, %struct.Memory** %MEMORY
  %loadMem_400d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 1
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 5
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1933, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %1934 to %"class.std::bitset"*
  %1935 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %1936 = load i64, i64* %RAX.i427
  %1937 = load i64, i64* %RCX.i428
  %1938 = mul i64 %1937, 8
  %1939 = add i64 %1938, %1936
  %1940 = load i64, i64* %PC.i426
  %1941 = add i64 %1940, 5
  store i64 %1941, i64* %PC.i426
  %1942 = inttoptr i64 %1939 to double*
  %1943 = load double, double* %1942
  %1944 = bitcast i8* %1935 to double*
  store double %1943, double* %1944, align 1
  %1945 = getelementptr inbounds i8, i8* %1935, i64 8
  %1946 = bitcast i8* %1945 to double*
  store double 0.000000e+00, double* %1946, align 1
  store %struct.Memory* %loadMem_400d51, %struct.Memory** %MEMORY
  %loadMem_400d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1951 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1950, i64 0, i64 1
  %YMM1.i424 = bitcast %union.VectorReg* %1951 to %"class.std::bitset"*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1952, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %1953 to %union.vec128_t*
  %1954 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1955 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1956 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %1957 = load i64, i64* %PC.i423
  %1958 = add i64 %1957, 4
  store i64 %1958, i64* %PC.i423
  %1959 = bitcast i8* %1955 to double*
  %1960 = load double, double* %1959, align 1
  %1961 = getelementptr inbounds i8, i8* %1955, i64 8
  %1962 = bitcast i8* %1961 to i64*
  %1963 = load i64, i64* %1962, align 1
  %1964 = bitcast i8* %1956 to double*
  %1965 = load double, double* %1964, align 1
  %1966 = fdiv double %1960, %1965
  %1967 = bitcast i8* %1954 to double*
  store double %1966, double* %1967, align 1
  %1968 = getelementptr inbounds i8, i8* %1954, i64 8
  %1969 = bitcast i8* %1968 to i64*
  store i64 %1963, i64* %1969, align 1
  store %struct.Memory* %loadMem_400d56, %struct.Memory** %MEMORY
  %loadMem_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 1
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 5
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 1
  %XMM1.i422 = bitcast %union.VectorReg* %1980 to %union.vec128_t*
  %1981 = load i64, i64* %RAX.i420
  %1982 = load i64, i64* %RCX.i421
  %1983 = mul i64 %1982, 8
  %1984 = add i64 %1983, %1981
  %1985 = bitcast %union.vec128_t* %XMM1.i422 to i8*
  %1986 = load i64, i64* %PC.i419
  %1987 = add i64 %1986, 5
  store i64 %1987, i64* %PC.i419
  %1988 = bitcast i8* %1985 to double*
  %1989 = load double, double* %1988, align 1
  %1990 = inttoptr i64 %1984 to double*
  store double %1989, double* %1990
  store %struct.Memory* %loadMem_400d5a, %struct.Memory** %MEMORY
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i418
  %2001 = sub i64 %2000, 48
  %2002 = load i64, i64* %PC.i416
  %2003 = add i64 %2002, 4
  store i64 %2003, i64* %PC.i416
  %2004 = inttoptr i64 %2001 to i64*
  %2005 = load i64, i64* %2004
  store i64 %2005, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_400d5f, %struct.Memory** %MEMORY
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 5
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i415
  %2016 = sub i64 %2015, 56
  %2017 = load i64, i64* %PC.i413
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i413
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = sext i32 %2020 to i64
  store i64 %2021, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_400d63, %struct.Memory** %MEMORY
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 5
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2031, i64 0, i64 0
  %YMM0.i412 = bitcast %union.VectorReg* %2032 to %"class.std::bitset"*
  %2033 = bitcast %"class.std::bitset"* %YMM0.i412 to i8*
  %2034 = load i64, i64* %RAX.i410
  %2035 = load i64, i64* %RCX.i411
  %2036 = mul i64 %2035, 8
  %2037 = add i64 %2036, %2034
  %2038 = load i64, i64* %PC.i409
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i409
  %2040 = inttoptr i64 %2037 to double*
  %2041 = load double, double* %2040
  %2042 = bitcast i8* %2033 to double*
  store double %2041, double* %2042, align 1
  %2043 = getelementptr inbounds i8, i8* %2033, i64 8
  %2044 = bitcast i8* %2043 to double*
  store double 0.000000e+00, double* %2044, align 1
  store %struct.Memory* %loadMem_400d67, %struct.Memory** %MEMORY
  %loadMem1_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2047 to i64*
  %2048 = load i64, i64* %PC.i408
  %2049 = add i64 %2048, -1692
  %2050 = load i64, i64* %PC.i408
  %2051 = add i64 %2050, 5
  %2052 = load i64, i64* %PC.i408
  %2053 = add i64 %2052, 5
  store i64 %2053, i64* %PC.i408
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2055 = load i64, i64* %2054, align 8
  %2056 = add i64 %2055, -8
  %2057 = inttoptr i64 %2056 to i64*
  store i64 %2051, i64* %2057
  store i64 %2056, i64* %2054, align 8
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2049, i64* %2058, align 8
  store %struct.Memory* %loadMem1_400d6c, %struct.Memory** %MEMORY
  %loadMem2_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d6c = load i64, i64* %3
  %call2_400d6c = call %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* %0, i64 %loadPC_400d6c, %struct.Memory* %loadMem2_400d6c)
  store %struct.Memory* %call2_400d6c, %struct.Memory** %MEMORY
  %loadMem_400d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 1
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 15
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RBP.i407
  %2069 = sub i64 %2068, 48
  %2070 = load i64, i64* %PC.i405
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %PC.i405
  %2072 = inttoptr i64 %2069 to i64*
  %2073 = load i64, i64* %2072
  store i64 %2073, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_400d71, %struct.Memory** %MEMORY
  %loadMem_400d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 5
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i404
  %2084 = sub i64 %2083, 56
  %2085 = load i64, i64* %PC.i402
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC.i402
  %2087 = inttoptr i64 %2084 to i32*
  %2088 = load i32, i32* %2087
  %2089 = sext i32 %2088 to i64
  store i64 %2089, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_400d75, %struct.Memory** %MEMORY
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 1
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 5
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2099, i64 0, i64 0
  %XMM0.i401 = bitcast %union.VectorReg* %2100 to %union.vec128_t*
  %2101 = load i64, i64* %RAX.i399
  %2102 = load i64, i64* %RCX.i400
  %2103 = mul i64 %2102, 8
  %2104 = add i64 %2103, %2101
  %2105 = bitcast %union.vec128_t* %XMM0.i401 to i8*
  %2106 = load i64, i64* %PC.i398
  %2107 = add i64 %2106, 5
  store i64 %2107, i64* %PC.i398
  %2108 = bitcast i8* %2105 to double*
  %2109 = load double, double* %2108, align 1
  %2110 = inttoptr i64 %2104 to double*
  store double %2109, double* %2110
  store %struct.Memory* %loadMem_400d79, %struct.Memory** %MEMORY
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 33
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 1
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 15
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RBP.i397
  %2121 = sub i64 %2120, 48
  %2122 = load i64, i64* %PC.i395
  %2123 = add i64 %2122, 4
  store i64 %2123, i64* %PC.i395
  %2124 = inttoptr i64 %2121 to i64*
  %2125 = load i64, i64* %2124
  store i64 %2125, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_400d7e, %struct.Memory** %MEMORY
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i394
  %2136 = sub i64 %2135, 56
  %2137 = load i64, i64* %PC.i392
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i392
  %2139 = inttoptr i64 %2136 to i32*
  %2140 = load i32, i32* %2139
  %2141 = sext i32 %2140 to i64
  store i64 %2141, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_400d82, %struct.Memory** %MEMORY
  %loadMem_400d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 1
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 5
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2151, i64 0, i64 0
  %YMM0.i391 = bitcast %union.VectorReg* %2152 to %"class.std::bitset"*
  %2153 = bitcast %"class.std::bitset"* %YMM0.i391 to i8*
  %2154 = load i64, i64* %RAX.i389
  %2155 = load i64, i64* %RCX.i390
  %2156 = mul i64 %2155, 8
  %2157 = add i64 %2156, %2154
  %2158 = load i64, i64* %PC.i388
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %PC.i388
  %2160 = inttoptr i64 %2157 to double*
  %2161 = load double, double* %2160
  %2162 = bitcast i8* %2153 to double*
  store double %2161, double* %2162, align 1
  %2163 = getelementptr inbounds i8, i8* %2153, i64 8
  %2164 = bitcast i8* %2163 to double*
  store double 0.000000e+00, double* %2164, align 1
  store %struct.Memory* %loadMem_400d86, %struct.Memory** %MEMORY
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 1
  %YMM1.i387 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM1.i387 to i8*
  %2174 = load i64, i64* %RBP.i386
  %2175 = sub i64 %2174, 72
  %2176 = load i64, i64* %PC.i385
  %2177 = add i64 %2176, 5
  store i64 %2177, i64* %PC.i385
  %2178 = inttoptr i64 %2175 to double*
  %2179 = load double, double* %2178
  %2180 = bitcast i8* %2173 to double*
  store double %2179, double* %2180, align 1
  %2181 = getelementptr inbounds i8, i8* %2173, i64 8
  %2182 = bitcast i8* %2181 to double*
  store double 0.000000e+00, double* %2182, align 1
  store %struct.Memory* %loadMem_400d8b, %struct.Memory** %MEMORY
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2186, i64 0, i64 0
  %XMM0.i380 = bitcast %union.VectorReg* %2187 to %union.vec128_t*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2188, i64 0, i64 1
  %XMM1.i381 = bitcast %union.VectorReg* %2189 to %union.vec128_t*
  %2190 = bitcast %union.vec128_t* %XMM1.i381 to i8*
  %2191 = bitcast %union.vec128_t* %XMM0.i380 to i8*
  %2192 = load i64, i64* %PC.i379
  %2193 = add i64 %2192, 4
  store i64 %2193, i64* %PC.i379
  %2194 = bitcast i8* %2190 to double*
  %2195 = load double, double* %2194, align 1
  %2196 = bitcast i8* %2191 to double*
  %2197 = load double, double* %2196, align 1
  %2198 = fcmp uno double %2195, %2197
  br i1 %2198, label %2199, label %2211

; <label>:2199:                                   ; preds = %block_.L_400d44
  %2200 = fadd double %2195, %2197
  %2201 = bitcast double %2200 to i64
  %2202 = and i64 %2201, 9221120237041090560
  %2203 = icmp eq i64 %2202, 9218868437227405312
  %2204 = and i64 %2201, 2251799813685247
  %2205 = icmp ne i64 %2204, 0
  %2206 = and i1 %2203, %2205
  br i1 %2206, label %2207, label %2217

; <label>:2207:                                   ; preds = %2199
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2209 = load i64, i64* %2208, align 8
  %2210 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2209, %struct.Memory* %loadMem_400d90)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2211:                                   ; preds = %block_.L_400d44
  %2212 = fcmp ogt double %2195, %2197
  br i1 %2212, label %2217, label %2213

; <label>:2213:                                   ; preds = %2211
  %2214 = fcmp olt double %2195, %2197
  br i1 %2214, label %2217, label %2215

; <label>:2215:                                   ; preds = %2213
  %2216 = fcmp oeq double %2195, %2197
  br i1 %2216, label %2217, label %2224

; <label>:2217:                                   ; preds = %2215, %2213, %2211, %2199
  %2218 = phi i8 [ 0, %2211 ], [ 0, %2213 ], [ 1, %2215 ], [ 1, %2199 ]
  %2219 = phi i8 [ 0, %2211 ], [ 0, %2213 ], [ 0, %2215 ], [ 1, %2199 ]
  %2220 = phi i8 [ 0, %2211 ], [ 1, %2213 ], [ 0, %2215 ], [ 1, %2199 ]
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2218, i8* %2221, align 1
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2219, i8* %2222, align 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2220, i8* %2223, align 1
  br label %2224

; <label>:2224:                                   ; preds = %2217, %2215
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2225, align 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2226, align 1
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2227, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2207, %2224
  %2228 = phi %struct.Memory* [ %2210, %2207 ], [ %loadMem_400d90, %2224 ]
  store %struct.Memory* %2228, %struct.Memory** %MEMORY
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %PC.i378
  %2233 = add i64 %2232, 24
  %2234 = load i64, i64* %PC.i378
  %2235 = add i64 %2234, 6
  %2236 = load i64, i64* %PC.i378
  %2237 = add i64 %2236, 6
  store i64 %2237, i64* %PC.i378
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2239 = load i8, i8* %2238, align 1
  store i8 %2239, i8* %BRANCH_TAKEN, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2241 = icmp ne i8 %2239, 0
  %2242 = select i1 %2241, i64 %2233, i64 %2235
  store i64 %2242, i64* %2240, align 8
  store %struct.Memory* %loadMem_400d94, %struct.Memory** %MEMORY
  %loadBr_400d94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d94 = icmp eq i8 %loadBr_400d94, 1
  br i1 %cmpBr_400d94, label %block_.L_400dac, label %block_400d9a

block_400d9a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2246, i64 0, i64 0
  %YMM0.i377 = bitcast %union.VectorReg* %2247 to %"class.std::bitset"*
  %2248 = bitcast %"class.std::bitset"* %YMM0.i377 to i8*
  %2249 = load i64, i64* %PC.i376
  %2250 = add i64 %2249, 1718
  %2251 = load i64, i64* %PC.i376
  %2252 = add i64 %2251, 8
  store i64 %2252, i64* %PC.i376
  %2253 = inttoptr i64 %2250 to double*
  %2254 = load double, double* %2253
  %2255 = bitcast i8* %2248 to double*
  store double %2254, double* %2255, align 1
  %2256 = getelementptr inbounds i8, i8* %2248, i64 8
  %2257 = bitcast i8* %2256 to double*
  store double 0.000000e+00, double* %2257, align 1
  store %struct.Memory* %loadMem_400d9a, %struct.Memory** %MEMORY
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 15
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2264, i64 0, i64 0
  %XMM0.i375 = bitcast %union.VectorReg* %2265 to %union.vec128_t*
  %2266 = load i64, i64* %RBP.i374
  %2267 = sub i64 %2266, 80
  %2268 = bitcast %union.vec128_t* %XMM0.i375 to i8*
  %2269 = load i64, i64* %PC.i373
  %2270 = add i64 %2269, 5
  store i64 %2270, i64* %PC.i373
  %2271 = bitcast i8* %2268 to double*
  %2272 = load double, double* %2271, align 1
  %2273 = inttoptr i64 %2267 to double*
  store double %2272, double* %2273
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  %loadMem_400da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %PC.i372
  %2278 = add i64 %2277, 23
  %2279 = load i64, i64* %PC.i372
  %2280 = add i64 %2279, 5
  store i64 %2280, i64* %PC.i372
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2278, i64* %2281, align 8
  store %struct.Memory* %loadMem_400da7, %struct.Memory** %MEMORY
  br label %block_.L_400dbe

block_.L_400dac:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 1
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 15
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RBP.i371
  %2292 = sub i64 %2291, 48
  %2293 = load i64, i64* %PC.i369
  %2294 = add i64 %2293, 4
  store i64 %2294, i64* %PC.i369
  %2295 = inttoptr i64 %2292 to i64*
  %2296 = load i64, i64* %2295
  store i64 %2296, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_400dac, %struct.Memory** %MEMORY
  %loadMem_400db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 5
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i368
  %2307 = sub i64 %2306, 56
  %2308 = load i64, i64* %PC.i366
  %2309 = add i64 %2308, 4
  store i64 %2309, i64* %PC.i366
  %2310 = inttoptr i64 %2307 to i32*
  %2311 = load i32, i32* %2310
  %2312 = sext i32 %2311 to i64
  store i64 %2312, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_400db0, %struct.Memory** %MEMORY
  %loadMem_400db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 1
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 5
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %2325 = load i64, i64* %RAX.i363
  %2326 = load i64, i64* %RCX.i364
  %2327 = mul i64 %2326, 8
  %2328 = add i64 %2327, %2325
  %2329 = load i64, i64* %PC.i362
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC.i362
  %2331 = inttoptr i64 %2328 to double*
  %2332 = load double, double* %2331
  %2333 = bitcast i8* %2324 to double*
  store double %2332, double* %2333, align 1
  %2334 = getelementptr inbounds i8, i8* %2324, i64 8
  %2335 = bitcast i8* %2334 to double*
  store double 0.000000e+00, double* %2335, align 1
  store %struct.Memory* %loadMem_400db4, %struct.Memory** %MEMORY
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 15
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2342, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2343 to %union.vec128_t*
  %2344 = load i64, i64* %RBP.i360
  %2345 = sub i64 %2344, 80
  %2346 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2347 = load i64, i64* %PC.i359
  %2348 = add i64 %2347, 5
  store i64 %2348, i64* %PC.i359
  %2349 = bitcast i8* %2346 to double*
  %2350 = load double, double* %2349, align 1
  %2351 = inttoptr i64 %2345 to double*
  store double %2350, double* %2351
  store %struct.Memory* %loadMem_400db9, %struct.Memory** %MEMORY
  br label %block_.L_400dbe

block_.L_400dbe:                                  ; preds = %block_.L_400dac, %block_400d9a
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 15
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2358, i64 0, i64 0
  %YMM0.i358 = bitcast %union.VectorReg* %2359 to %"class.std::bitset"*
  %2360 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %2361 = load i64, i64* %RBP.i357
  %2362 = sub i64 %2361, 80
  %2363 = load i64, i64* %PC.i356
  %2364 = add i64 %2363, 5
  store i64 %2364, i64* %PC.i356
  %2365 = inttoptr i64 %2362 to double*
  %2366 = load double, double* %2365
  %2367 = bitcast i8* %2360 to double*
  store double %2366, double* %2367, align 1
  %2368 = getelementptr inbounds i8, i8* %2360, i64 8
  %2369 = bitcast i8* %2368 to double*
  store double 0.000000e+00, double* %2369, align 1
  store %struct.Memory* %loadMem_400dbe, %struct.Memory** %MEMORY
  %loadMem_400dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 33
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 1
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 15
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2378 to i64*
  %2379 = load i64, i64* %RBP.i355
  %2380 = sub i64 %2379, 48
  %2381 = load i64, i64* %PC.i353
  %2382 = add i64 %2381, 4
  store i64 %2382, i64* %PC.i353
  %2383 = inttoptr i64 %2380 to i64*
  %2384 = load i64, i64* %2383
  store i64 %2384, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_400dc3, %struct.Memory** %MEMORY
  %loadMem_400dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 5
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RBP.i352
  %2395 = sub i64 %2394, 56
  %2396 = load i64, i64* %PC.i350
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i350
  %2398 = inttoptr i64 %2395 to i32*
  %2399 = load i32, i32* %2398
  %2400 = sext i32 %2399 to i64
  store i64 %2400, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_400dc7, %struct.Memory** %MEMORY
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 5
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2410, i64 0, i64 0
  %XMM0.i349 = bitcast %union.VectorReg* %2411 to %union.vec128_t*
  %2412 = load i64, i64* %RAX.i347
  %2413 = load i64, i64* %RCX.i348
  %2414 = mul i64 %2413, 8
  %2415 = add i64 %2414, %2412
  %2416 = bitcast %union.vec128_t* %XMM0.i349 to i8*
  %2417 = load i64, i64* %PC.i346
  %2418 = add i64 %2417, 5
  store i64 %2418, i64* %PC.i346
  %2419 = bitcast i8* %2416 to double*
  %2420 = load double, double* %2419, align 1
  %2421 = inttoptr i64 %2415 to double*
  store double %2420, double* %2421
  store %struct.Memory* %loadMem_400dcb, %struct.Memory** %MEMORY
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 1
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 15
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %RBP.i345
  %2432 = sub i64 %2431, 56
  %2433 = load i64, i64* %PC.i343
  %2434 = add i64 %2433, 3
  store i64 %2434, i64* %PC.i343
  %2435 = inttoptr i64 %2432 to i32*
  %2436 = load i32, i32* %2435
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_400dd0, %struct.Memory** %MEMORY
  %loadMem_400dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RAX.i342
  %2445 = load i64, i64* %PC.i341
  %2446 = add i64 %2445, 3
  store i64 %2446, i64* %PC.i341
  %2447 = trunc i64 %2444 to i32
  %2448 = add i32 1, %2447
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i342, align 8
  %2450 = icmp ult i32 %2448, %2447
  %2451 = icmp ult i32 %2448, 1
  %2452 = or i1 %2450, %2451
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2453, i8* %2454, align 1
  %2455 = and i32 %2448, 255
  %2456 = call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2459, i8* %2460, align 1
  %2461 = xor i64 1, %2444
  %2462 = trunc i64 %2461 to i32
  %2463 = xor i32 %2462, %2448
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2466, i8* %2467, align 1
  %2468 = icmp eq i32 %2448, 0
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2469, i8* %2470, align 1
  %2471 = lshr i32 %2448, 31
  %2472 = trunc i32 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2472, i8* %2473, align 1
  %2474 = lshr i32 %2447, 31
  %2475 = xor i32 %2471, %2474
  %2476 = add i32 %2475, %2471
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2478, i8* %2479, align 1
  store %struct.Memory* %loadMem_400dd3, %struct.Memory** %MEMORY
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 1
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %2485 to i32*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i340
  %2490 = sub i64 %2489, 56
  %2491 = load i32, i32* %EAX.i339
  %2492 = zext i32 %2491 to i64
  %2493 = load i64, i64* %PC.i338
  %2494 = add i64 %2493, 3
  store i64 %2494, i64* %PC.i338
  %2495 = inttoptr i64 %2490 to i32*
  store i32 %2491, i32* %2495
  store %struct.Memory* %loadMem_400dd6, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i337
  %2500 = add i64 %2499, -312
  %2501 = load i64, i64* %PC.i337
  %2502 = add i64 %2501, 5
  store i64 %2502, i64* %PC.i337
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2500, i64* %2503, align 8
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  br label %block_.L_400ca1

block_.L_400dde:                                  ; preds = %block_.L_400ca1
  %loadMem_400dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 15
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %RBP.i336
  %2511 = sub i64 %2510, 52
  %2512 = load i64, i64* %PC.i335
  %2513 = add i64 %2512, 7
  store i64 %2513, i64* %PC.i335
  %2514 = inttoptr i64 %2511 to i32*
  store i32 0, i32* %2514
  store %struct.Memory* %loadMem_400dde, %struct.Memory** %MEMORY
  br label %block_.L_400de5

block_.L_400de5:                                  ; preds = %block_.L_400e83, %block_.L_400dde
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 1
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RBP.i334
  %2525 = sub i64 %2524, 52
  %2526 = load i64, i64* %PC.i332
  %2527 = add i64 %2526, 3
  store i64 %2527, i64* %PC.i332
  %2528 = inttoptr i64 %2525 to i32*
  %2529 = load i32, i32* %2528
  %2530 = zext i32 %2529 to i64
  store i64 %2530, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 1
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %2536 to i32*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 15
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2539 to i64*
  %2540 = load i32, i32* %EAX.i330
  %2541 = zext i32 %2540 to i64
  %2542 = load i64, i64* %RBP.i331
  %2543 = sub i64 %2542, 8
  %2544 = load i64, i64* %PC.i329
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %PC.i329
  %2546 = inttoptr i64 %2543 to i32*
  %2547 = load i32, i32* %2546
  %2548 = sub i32 %2540, %2547
  %2549 = icmp ult i32 %2540, %2547
  %2550 = zext i1 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2550, i8* %2551, align 1
  %2552 = and i32 %2548, 255
  %2553 = call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2556, i8* %2557, align 1
  %2558 = xor i32 %2547, %2540
  %2559 = xor i32 %2558, %2548
  %2560 = lshr i32 %2559, 4
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2562, i8* %2563, align 1
  %2564 = icmp eq i32 %2548, 0
  %2565 = zext i1 %2564 to i8
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2565, i8* %2566, align 1
  %2567 = lshr i32 %2548, 31
  %2568 = trunc i32 %2567 to i8
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2568, i8* %2569, align 1
  %2570 = lshr i32 %2540, 31
  %2571 = lshr i32 %2547, 31
  %2572 = xor i32 %2571, %2570
  %2573 = xor i32 %2567, %2570
  %2574 = add i32 %2573, %2572
  %2575 = icmp eq i32 %2574, 2
  %2576 = zext i1 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2576, i8* %2577, align 1
  store %struct.Memory* %loadMem_400de8, %struct.Memory** %MEMORY
  %loadMem_400deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %PC.i328
  %2582 = add i64 %2581, 166
  %2583 = load i64, i64* %PC.i328
  %2584 = add i64 %2583, 6
  %2585 = load i64, i64* %PC.i328
  %2586 = add i64 %2585, 6
  store i64 %2586, i64* %PC.i328
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2588 = load i8, i8* %2587, align 1
  %2589 = icmp ne i8 %2588, 0
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2591 = load i8, i8* %2590, align 1
  %2592 = icmp ne i8 %2591, 0
  %2593 = xor i1 %2589, %2592
  %2594 = xor i1 %2593, true
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %BRANCH_TAKEN, align 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2597 = select i1 %2593, i64 %2584, i64 %2582
  store i64 %2597, i64* %2596, align 8
  store %struct.Memory* %loadMem_400deb, %struct.Memory** %MEMORY
  %loadBr_400deb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400deb = icmp eq i8 %loadBr_400deb, 1
  br i1 %cmpBr_400deb, label %block_.L_400e91, label %block_400df1

block_400df1:                                     ; preds = %block_.L_400de5
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 15
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RBP.i327
  %2605 = sub i64 %2604, 56
  %2606 = load i64, i64* %PC.i326
  %2607 = add i64 %2606, 7
  store i64 %2607, i64* %PC.i326
  %2608 = inttoptr i64 %2605 to i32*
  store i32 0, i32* %2608
  store %struct.Memory* %loadMem_400df1, %struct.Memory** %MEMORY
  br label %block_.L_400df8

block_.L_400df8:                                  ; preds = %block_400e04, %block_400df1
  %loadMem_400df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i325
  %2619 = sub i64 %2618, 56
  %2620 = load i64, i64* %PC.i323
  %2621 = add i64 %2620, 3
  store i64 %2621, i64* %PC.i323
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_400df8, %struct.Memory** %MEMORY
  %loadMem_400dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %2630 to i32*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 15
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2633 to i64*
  %2634 = load i32, i32* %EAX.i321
  %2635 = zext i32 %2634 to i64
  %2636 = load i64, i64* %RBP.i322
  %2637 = sub i64 %2636, 4
  %2638 = load i64, i64* %PC.i320
  %2639 = add i64 %2638, 3
  store i64 %2639, i64* %PC.i320
  %2640 = inttoptr i64 %2637 to i32*
  %2641 = load i32, i32* %2640
  %2642 = sub i32 %2634, %2641
  %2643 = icmp ult i32 %2634, %2641
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2644, i8* %2645, align 1
  %2646 = and i32 %2642, 255
  %2647 = call i32 @llvm.ctpop.i32(i32 %2646)
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = xor i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2650, i8* %2651, align 1
  %2652 = xor i32 %2641, %2634
  %2653 = xor i32 %2652, %2642
  %2654 = lshr i32 %2653, 4
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2656, i8* %2657, align 1
  %2658 = icmp eq i32 %2642, 0
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2659, i8* %2660, align 1
  %2661 = lshr i32 %2642, 31
  %2662 = trunc i32 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2662, i8* %2663, align 1
  %2664 = lshr i32 %2634, 31
  %2665 = lshr i32 %2641, 31
  %2666 = xor i32 %2665, %2664
  %2667 = xor i32 %2661, %2664
  %2668 = add i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2670, i8* %2671, align 1
  store %struct.Memory* %loadMem_400dfb, %struct.Memory** %MEMORY
  %loadMem_400dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2674 to i64*
  %2675 = load i64, i64* %PC.i319
  %2676 = add i64 %2675, 128
  %2677 = load i64, i64* %PC.i319
  %2678 = add i64 %2677, 6
  %2679 = load i64, i64* %PC.i319
  %2680 = add i64 %2679, 6
  store i64 %2680, i64* %PC.i319
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2682 = load i8, i8* %2681, align 1
  %2683 = icmp ne i8 %2682, 0
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2685 = load i8, i8* %2684, align 1
  %2686 = icmp ne i8 %2685, 0
  %2687 = xor i1 %2683, %2686
  %2688 = xor i1 %2687, true
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %BRANCH_TAKEN, align 1
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2691 = select i1 %2687, i64 %2678, i64 %2676
  store i64 %2691, i64* %2690, align 8
  store %struct.Memory* %loadMem_400dfe, %struct.Memory** %MEMORY
  %loadBr_400dfe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dfe = icmp eq i8 %loadBr_400dfe, 1
  br i1 %cmpBr_400dfe, label %block_.L_400e7e, label %block_400e04

block_400e04:                                     ; preds = %block_.L_400df8
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 1
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 15
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RBP.i318
  %2702 = sub i64 %2701, 40
  %2703 = load i64, i64* %PC.i316
  %2704 = add i64 %2703, 4
  store i64 %2704, i64* %PC.i316
  %2705 = inttoptr i64 %2702 to i64*
  %2706 = load i64, i64* %2705
  store i64 %2706, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_400e04, %struct.Memory** %MEMORY
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 5
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 15
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2715 to i64*
  %2716 = load i64, i64* %RBP.i315
  %2717 = sub i64 %2716, 56
  %2718 = load i64, i64* %PC.i313
  %2719 = add i64 %2718, 4
  store i64 %2719, i64* %PC.i313
  %2720 = inttoptr i64 %2717 to i32*
  %2721 = load i32, i32* %2720
  %2722 = sext i32 %2721 to i64
  store i64 %2722, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_400e08, %struct.Memory** %MEMORY
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 1
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 5
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2732, i64 0, i64 0
  %YMM0.i312 = bitcast %union.VectorReg* %2733 to %"class.std::bitset"*
  %2734 = bitcast %"class.std::bitset"* %YMM0.i312 to i8*
  %2735 = load i64, i64* %RAX.i310
  %2736 = load i64, i64* %RCX.i311
  %2737 = mul i64 %2736, 8
  %2738 = add i64 %2737, %2735
  %2739 = load i64, i64* %PC.i309
  %2740 = add i64 %2739, 5
  store i64 %2740, i64* %PC.i309
  %2741 = inttoptr i64 %2738 to double*
  %2742 = load double, double* %2741
  %2743 = bitcast i8* %2734 to double*
  store double %2742, double* %2743, align 1
  %2744 = getelementptr inbounds i8, i8* %2734, i64 8
  %2745 = bitcast i8* %2744 to double*
  store double 0.000000e+00, double* %2745, align 1
  store %struct.Memory* %loadMem_400e0c, %struct.Memory** %MEMORY
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 1
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RBP.i308
  %2756 = sub i64 %2755, 24
  %2757 = load i64, i64* %PC.i306
  %2758 = add i64 %2757, 4
  store i64 %2758, i64* %PC.i306
  %2759 = inttoptr i64 %2756 to i64*
  %2760 = load i64, i64* %2759
  store i64 %2760, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_400e11, %struct.Memory** %MEMORY
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 5
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i305
  %2771 = sub i64 %2770, 52
  %2772 = load i64, i64* %PC.i303
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %PC.i303
  %2774 = inttoptr i64 %2771 to i32*
  %2775 = load i32, i32* %2774
  %2776 = sext i32 %2775 to i64
  store i64 %2776, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_400e15, %struct.Memory** %MEMORY
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 5
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %RCX.i302
  %2784 = load i64, i64* %PC.i301
  %2785 = add i64 %2784, 7
  store i64 %2785, i64* %PC.i301
  %2786 = sext i64 %2783 to i128
  %2787 = and i128 %2786, -18446744073709551616
  %2788 = zext i64 %2783 to i128
  %2789 = or i128 %2787, %2788
  %2790 = mul i128 8000, %2789
  %2791 = trunc i128 %2790 to i64
  store i64 %2791, i64* %RCX.i302, align 8
  %2792 = sext i64 %2791 to i128
  %2793 = icmp ne i128 %2792, %2790
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2794, i8* %2795, align 1
  %2796 = trunc i128 %2790 to i32
  %2797 = and i32 %2796, 255
  %2798 = call i32 @llvm.ctpop.i32(i32 %2797)
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = xor i8 %2800, 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2801, i8* %2802, align 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2803, align 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2804, align 1
  %2805 = lshr i64 %2791, 63
  %2806 = trunc i64 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2806, i8* %2807, align 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2794, i8* %2808, align 1
  store %struct.Memory* %loadMem_400e19, %struct.Memory** %MEMORY
  %loadMem_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 1
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 5
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RAX.i299
  %2819 = load i64, i64* %RCX.i300
  %2820 = load i64, i64* %PC.i298
  %2821 = add i64 %2820, 3
  store i64 %2821, i64* %PC.i298
  %2822 = add i64 %2819, %2818
  store i64 %2822, i64* %RAX.i299, align 8
  %2823 = icmp ult i64 %2822, %2818
  %2824 = icmp ult i64 %2822, %2819
  %2825 = or i1 %2823, %2824
  %2826 = zext i1 %2825 to i8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2826, i8* %2827, align 1
  %2828 = trunc i64 %2822 to i32
  %2829 = and i32 %2828, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = xor i64 %2819, %2818
  %2836 = xor i64 %2835, %2822
  %2837 = lshr i64 %2836, 4
  %2838 = trunc i64 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2839, i8* %2840, align 1
  %2841 = icmp eq i64 %2822, 0
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2842, i8* %2843, align 1
  %2844 = lshr i64 %2822, 63
  %2845 = trunc i64 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2845, i8* %2846, align 1
  %2847 = lshr i64 %2818, 63
  %2848 = lshr i64 %2819, 63
  %2849 = xor i64 %2844, %2847
  %2850 = xor i64 %2844, %2848
  %2851 = add i64 %2849, %2850
  %2852 = icmp eq i64 %2851, 2
  %2853 = zext i1 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2853, i8* %2854, align 1
  store %struct.Memory* %loadMem_400e20, %struct.Memory** %MEMORY
  %loadMem_400e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i297
  %2865 = sub i64 %2864, 56
  %2866 = load i64, i64* %PC.i295
  %2867 = add i64 %2866, 4
  store i64 %2867, i64* %PC.i295
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = sext i32 %2869 to i64
  store i64 %2870, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_400e23, %struct.Memory** %MEMORY
  %loadMem_400e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 5
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2880, i64 0, i64 1
  %YMM1.i294 = bitcast %union.VectorReg* %2881 to %"class.std::bitset"*
  %2882 = bitcast %"class.std::bitset"* %YMM1.i294 to i8*
  %2883 = load i64, i64* %RAX.i292
  %2884 = load i64, i64* %RCX.i293
  %2885 = mul i64 %2884, 8
  %2886 = add i64 %2885, %2883
  %2887 = load i64, i64* %PC.i291
  %2888 = add i64 %2887, 5
  store i64 %2888, i64* %PC.i291
  %2889 = inttoptr i64 %2886 to double*
  %2890 = load double, double* %2889
  %2891 = bitcast i8* %2882 to double*
  store double %2890, double* %2891, align 1
  %2892 = getelementptr inbounds i8, i8* %2882, i64 8
  %2893 = bitcast i8* %2892 to double*
  store double 0.000000e+00, double* %2893, align 1
  store %struct.Memory* %loadMem_400e27, %struct.Memory** %MEMORY
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2898 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2897, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %2898 to %"class.std::bitset"*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2899, i64 0, i64 0
  %XMM0.i290 = bitcast %union.VectorReg* %2900 to %union.vec128_t*
  %2901 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %2902 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %2903 = bitcast %union.vec128_t* %XMM0.i290 to i8*
  %2904 = load i64, i64* %PC.i288
  %2905 = add i64 %2904, 4
  store i64 %2905, i64* %PC.i288
  %2906 = bitcast i8* %2902 to double*
  %2907 = load double, double* %2906, align 1
  %2908 = getelementptr inbounds i8, i8* %2902, i64 8
  %2909 = bitcast i8* %2908 to i64*
  %2910 = load i64, i64* %2909, align 1
  %2911 = bitcast i8* %2903 to double*
  %2912 = load double, double* %2911, align 1
  %2913 = fsub double %2907, %2912
  %2914 = bitcast i8* %2901 to double*
  store double %2913, double* %2914, align 1
  %2915 = getelementptr inbounds i8, i8* %2901, i64 8
  %2916 = bitcast i8* %2915 to i64*
  store i64 %2910, i64* %2916, align 1
  store %struct.Memory* %loadMem_400e2c, %struct.Memory** %MEMORY
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 1
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 5
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2926, i64 0, i64 1
  %XMM1.i287 = bitcast %union.VectorReg* %2927 to %union.vec128_t*
  %2928 = load i64, i64* %RAX.i285
  %2929 = load i64, i64* %RCX.i286
  %2930 = mul i64 %2929, 8
  %2931 = add i64 %2930, %2928
  %2932 = bitcast %union.vec128_t* %XMM1.i287 to i8*
  %2933 = load i64, i64* %PC.i284
  %2934 = add i64 %2933, 5
  store i64 %2934, i64* %PC.i284
  %2935 = bitcast i8* %2932 to double*
  %2936 = load double, double* %2935, align 1
  %2937 = inttoptr i64 %2931 to double*
  store double %2936, double* %2937
  store %struct.Memory* %loadMem_400e30, %struct.Memory** %MEMORY
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 15
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2944, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %2945 to %"class.std::bitset"*
  %2946 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %2947 = load i64, i64* %RBP.i282
  %2948 = sub i64 %2947, 16
  %2949 = load i64, i64* %PC.i281
  %2950 = add i64 %2949, 5
  store i64 %2950, i64* %PC.i281
  %2951 = inttoptr i64 %2948 to double*
  %2952 = load double, double* %2951
  %2953 = bitcast i8* %2946 to double*
  store double %2952, double* %2953, align 1
  %2954 = getelementptr inbounds i8, i8* %2946, i64 8
  %2955 = bitcast i8* %2954 to double*
  store double 0.000000e+00, double* %2955, align 1
  store %struct.Memory* %loadMem_400e35, %struct.Memory** %MEMORY
  %loadMem1_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %PC.i280
  %2960 = add i64 %2959, -1898
  %2961 = load i64, i64* %PC.i280
  %2962 = add i64 %2961, 5
  %2963 = load i64, i64* %PC.i280
  %2964 = add i64 %2963, 5
  store i64 %2964, i64* %PC.i280
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2966 = load i64, i64* %2965, align 8
  %2967 = add i64 %2966, -8
  %2968 = inttoptr i64 %2967 to i64*
  store i64 %2962, i64* %2968
  store i64 %2967, i64* %2965, align 8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2960, i64* %2969, align 8
  store %struct.Memory* %loadMem1_400e3a, %struct.Memory** %MEMORY
  %loadMem2_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e3a = load i64, i64* %3
  %call2_400e3a = call %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* %0, i64 %loadPC_400e3a, %struct.Memory* %loadMem2_400e3a)
  store %struct.Memory* %call2_400e3a, %struct.Memory** %MEMORY
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 1
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i279
  %2980 = sub i64 %2979, 48
  %2981 = load i64, i64* %PC.i277
  %2982 = add i64 %2981, 4
  store i64 %2982, i64* %PC.i277
  %2983 = inttoptr i64 %2980 to i64*
  %2984 = load i64, i64* %2983
  store i64 %2984, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_400e3f, %struct.Memory** %MEMORY
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 5
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 15
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %RBP.i276
  %2995 = sub i64 %2994, 56
  %2996 = load i64, i64* %PC.i274
  %2997 = add i64 %2996, 4
  store i64 %2997, i64* %PC.i274
  %2998 = inttoptr i64 %2995 to i32*
  %2999 = load i32, i32* %2998
  %3000 = sext i32 %2999 to i64
  store i64 %3000, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_400e43, %struct.Memory** %MEMORY
  %loadMem_400e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3010, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %3011 to %"class.std::bitset"*
  %3012 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %3013 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %3014 = load i64, i64* %RAX.i271
  %3015 = load i64, i64* %RCX.i272
  %3016 = mul i64 %3015, 8
  %3017 = add i64 %3016, %3014
  %3018 = load i64, i64* %PC.i270
  %3019 = add i64 %3018, 5
  store i64 %3019, i64* %PC.i270
  %3020 = bitcast i8* %3013 to double*
  %3021 = load double, double* %3020, align 1
  %3022 = getelementptr inbounds i8, i8* %3013, i64 8
  %3023 = bitcast i8* %3022 to i64*
  %3024 = load i64, i64* %3023, align 1
  %3025 = inttoptr i64 %3017 to double*
  %3026 = load double, double* %3025
  %3027 = fmul double %3021, %3026
  %3028 = bitcast i8* %3012 to double*
  store double %3027, double* %3028, align 1
  %3029 = getelementptr inbounds i8, i8* %3012, i64 8
  %3030 = bitcast i8* %3029 to i64*
  store i64 %3024, i64* %3030, align 1
  store %struct.Memory* %loadMem_400e47, %struct.Memory** %MEMORY
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 1
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i269
  %3041 = sub i64 %3040, 24
  %3042 = load i64, i64* %PC.i267
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %PC.i267
  %3044 = inttoptr i64 %3041 to i64*
  %3045 = load i64, i64* %3044
  store i64 %3045, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_400e4c, %struct.Memory** %MEMORY
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 5
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i266
  %3056 = sub i64 %3055, 52
  %3057 = load i64, i64* %PC.i264
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i264
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_400e50, %struct.Memory** %MEMORY
  %loadMem_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %3067 to i64*
  %3068 = load i64, i64* %RCX.i263
  %3069 = load i64, i64* %PC.i262
  %3070 = add i64 %3069, 7
  store i64 %3070, i64* %PC.i262
  %3071 = sext i64 %3068 to i128
  %3072 = and i128 %3071, -18446744073709551616
  %3073 = zext i64 %3068 to i128
  %3074 = or i128 %3072, %3073
  %3075 = mul i128 8000, %3074
  %3076 = trunc i128 %3075 to i64
  store i64 %3076, i64* %RCX.i263, align 8
  %3077 = sext i64 %3076 to i128
  %3078 = icmp ne i128 %3077, %3075
  %3079 = zext i1 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3079, i8* %3080, align 1
  %3081 = trunc i128 %3075 to i32
  %3082 = and i32 %3081, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3088, align 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3089, align 1
  %3090 = lshr i64 %3076, 63
  %3091 = trunc i64 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3091, i8* %3092, align 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3079, i8* %3093, align 1
  store %struct.Memory* %loadMem_400e54, %struct.Memory** %MEMORY
  %loadMem_400e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 5
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RAX.i260
  %3104 = load i64, i64* %RCX.i261
  %3105 = load i64, i64* %PC.i259
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i259
  %3107 = add i64 %3104, %3103
  store i64 %3107, i64* %RAX.i260, align 8
  %3108 = icmp ult i64 %3107, %3103
  %3109 = icmp ult i64 %3107, %3104
  %3110 = or i1 %3108, %3109
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3111, i8* %3112, align 1
  %3113 = trunc i64 %3107 to i32
  %3114 = and i32 %3113, 255
  %3115 = call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3118, i8* %3119, align 1
  %3120 = xor i64 %3104, %3103
  %3121 = xor i64 %3120, %3107
  %3122 = lshr i64 %3121, 4
  %3123 = trunc i64 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i64 %3107, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i64 %3107, 63
  %3130 = trunc i64 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i64 %3103, 63
  %3133 = lshr i64 %3104, 63
  %3134 = xor i64 %3129, %3132
  %3135 = xor i64 %3129, %3133
  %3136 = add i64 %3134, %3135
  %3137 = icmp eq i64 %3136, 2
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3138, i8* %3139, align 1
  store %struct.Memory* %loadMem_400e5b, %struct.Memory** %MEMORY
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 5
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 15
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RBP.i258
  %3150 = sub i64 %3149, 56
  %3151 = load i64, i64* %PC.i256
  %3152 = add i64 %3151, 4
  store i64 %3152, i64* %PC.i256
  %3153 = inttoptr i64 %3150 to i32*
  %3154 = load i32, i32* %3153
  %3155 = sext i32 %3154 to i64
  store i64 %3155, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_400e5e, %struct.Memory** %MEMORY
  %loadMem_400e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 5
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3165, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %3166 to %"class.std::bitset"*
  %3167 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %3168 = load i64, i64* %RAX.i253
  %3169 = load i64, i64* %RCX.i254
  %3170 = mul i64 %3169, 8
  %3171 = add i64 %3170, %3168
  %3172 = load i64, i64* %PC.i252
  %3173 = add i64 %3172, 5
  store i64 %3173, i64* %PC.i252
  %3174 = inttoptr i64 %3171 to double*
  %3175 = load double, double* %3174
  %3176 = bitcast i8* %3167 to double*
  store double %3175, double* %3176, align 1
  %3177 = getelementptr inbounds i8, i8* %3167, i64 8
  %3178 = bitcast i8* %3177 to double*
  store double 0.000000e+00, double* %3178, align 1
  store %struct.Memory* %loadMem_400e62, %struct.Memory** %MEMORY
  %loadMem_400e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3182, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3183 to %"class.std::bitset"*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3184, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %3185 to %union.vec128_t*
  %3186 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3187 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3188 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %3189 = load i64, i64* %PC.i250
  %3190 = add i64 %3189, 4
  store i64 %3190, i64* %PC.i250
  %3191 = bitcast i8* %3187 to double*
  %3192 = load double, double* %3191, align 1
  %3193 = getelementptr inbounds i8, i8* %3187, i64 8
  %3194 = bitcast i8* %3193 to i64*
  %3195 = load i64, i64* %3194, align 1
  %3196 = bitcast i8* %3188 to double*
  %3197 = load double, double* %3196, align 1
  %3198 = fdiv double %3192, %3197
  %3199 = bitcast i8* %3186 to double*
  store double %3198, double* %3199, align 1
  %3200 = getelementptr inbounds i8, i8* %3186, i64 8
  %3201 = bitcast i8* %3200 to i64*
  store i64 %3195, i64* %3201, align 1
  store %struct.Memory* %loadMem_400e67, %struct.Memory** %MEMORY
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 1
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 5
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3211, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3212 to %union.vec128_t*
  %3213 = load i64, i64* %RAX.i248
  %3214 = load i64, i64* %RCX.i249
  %3215 = mul i64 %3214, 8
  %3216 = add i64 %3215, %3213
  %3217 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3218 = load i64, i64* %PC.i247
  %3219 = add i64 %3218, 5
  store i64 %3219, i64* %PC.i247
  %3220 = bitcast i8* %3217 to double*
  %3221 = load double, double* %3220, align 1
  %3222 = inttoptr i64 %3216 to double*
  store double %3221, double* %3222
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadMem_400e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 1
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 15
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %RBP.i246
  %3233 = sub i64 %3232, 56
  %3234 = load i64, i64* %PC.i244
  %3235 = add i64 %3234, 3
  store i64 %3235, i64* %PC.i244
  %3236 = inttoptr i64 %3233 to i32*
  %3237 = load i32, i32* %3236
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_400e70, %struct.Memory** %MEMORY
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 1
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RAX.i243
  %3246 = load i64, i64* %PC.i242
  %3247 = add i64 %3246, 3
  store i64 %3247, i64* %PC.i242
  %3248 = trunc i64 %3245 to i32
  %3249 = add i32 1, %3248
  %3250 = zext i32 %3249 to i64
  store i64 %3250, i64* %RAX.i243, align 8
  %3251 = icmp ult i32 %3249, %3248
  %3252 = icmp ult i32 %3249, 1
  %3253 = or i1 %3251, %3252
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3254, i8* %3255, align 1
  %3256 = and i32 %3249, 255
  %3257 = call i32 @llvm.ctpop.i32(i32 %3256)
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3260, i8* %3261, align 1
  %3262 = xor i64 1, %3245
  %3263 = trunc i64 %3262 to i32
  %3264 = xor i32 %3263, %3249
  %3265 = lshr i32 %3264, 4
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3267, i8* %3268, align 1
  %3269 = icmp eq i32 %3249, 0
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3270, i8* %3271, align 1
  %3272 = lshr i32 %3249, 31
  %3273 = trunc i32 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3273, i8* %3274, align 1
  %3275 = lshr i32 %3248, 31
  %3276 = xor i32 %3272, %3275
  %3277 = add i32 %3276, %3272
  %3278 = icmp eq i32 %3277, 2
  %3279 = zext i1 %3278 to i8
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3279, i8* %3280, align 1
  store %struct.Memory* %loadMem_400e73, %struct.Memory** %MEMORY
  %loadMem_400e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 1
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %3286 to i32*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 15
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RBP.i241
  %3291 = sub i64 %3290, 56
  %3292 = load i32, i32* %EAX.i240
  %3293 = zext i32 %3292 to i64
  %3294 = load i64, i64* %PC.i239
  %3295 = add i64 %3294, 3
  store i64 %3295, i64* %PC.i239
  %3296 = inttoptr i64 %3291 to i32*
  store i32 %3292, i32* %3296
  store %struct.Memory* %loadMem_400e76, %struct.Memory** %MEMORY
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %PC.i238
  %3301 = add i64 %3300, -129
  %3302 = load i64, i64* %PC.i238
  %3303 = add i64 %3302, 5
  store i64 %3303, i64* %PC.i238
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3301, i64* %3304, align 8
  store %struct.Memory* %loadMem_400e79, %struct.Memory** %MEMORY
  br label %block_.L_400df8

block_.L_400e7e:                                  ; preds = %block_.L_400df8
  %loadMem_400e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %PC.i237
  %3309 = add i64 %3308, 5
  %3310 = load i64, i64* %PC.i237
  %3311 = add i64 %3310, 5
  store i64 %3311, i64* %PC.i237
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3309, i64* %3312, align 8
  store %struct.Memory* %loadMem_400e7e, %struct.Memory** %MEMORY
  br label %block_.L_400e83

block_.L_400e83:                                  ; preds = %block_.L_400e7e
  %loadMem_400e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 1
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 15
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %RBP.i236
  %3323 = sub i64 %3322, 52
  %3324 = load i64, i64* %PC.i234
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %PC.i234
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_400e83, %struct.Memory** %MEMORY
  %loadMem_400e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RAX.i233
  %3336 = load i64, i64* %PC.i232
  %3337 = add i64 %3336, 3
  store i64 %3337, i64* %PC.i232
  %3338 = trunc i64 %3335 to i32
  %3339 = add i32 1, %3338
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RAX.i233, align 8
  %3341 = icmp ult i32 %3339, %3338
  %3342 = icmp ult i32 %3339, 1
  %3343 = or i1 %3341, %3342
  %3344 = zext i1 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3344, i8* %3345, align 1
  %3346 = and i32 %3339, 255
  %3347 = call i32 @llvm.ctpop.i32(i32 %3346)
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  %3350 = xor i8 %3349, 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3350, i8* %3351, align 1
  %3352 = xor i64 1, %3335
  %3353 = trunc i64 %3352 to i32
  %3354 = xor i32 %3353, %3339
  %3355 = lshr i32 %3354, 4
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3357, i8* %3358, align 1
  %3359 = icmp eq i32 %3339, 0
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3339, 31
  %3363 = trunc i32 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3363, i8* %3364, align 1
  %3365 = lshr i32 %3338, 31
  %3366 = xor i32 %3362, %3365
  %3367 = add i32 %3366, %3362
  %3368 = icmp eq i32 %3367, 2
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3369, i8* %3370, align 1
  store %struct.Memory* %loadMem_400e86, %struct.Memory** %MEMORY
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %3376 to i32*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RBP.i231
  %3381 = sub i64 %3380, 52
  %3382 = load i32, i32* %EAX.i230
  %3383 = zext i32 %3382 to i64
  %3384 = load i64, i64* %PC.i229
  %3385 = add i64 %3384, 3
  store i64 %3385, i64* %PC.i229
  %3386 = inttoptr i64 %3381 to i32*
  store i32 %3382, i32* %3386
  store %struct.Memory* %loadMem_400e89, %struct.Memory** %MEMORY
  %loadMem_400e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %PC.i228
  %3391 = add i64 %3390, -167
  %3392 = load i64, i64* %PC.i228
  %3393 = add i64 %3392, 5
  store i64 %3393, i64* %PC.i228
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3391, i64* %3394, align 8
  store %struct.Memory* %loadMem_400e8c, %struct.Memory** %MEMORY
  br label %block_.L_400de5

block_.L_400e91:                                  ; preds = %block_.L_400de5
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 33
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3397 to i64*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 15
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3400 to i64*
  %3401 = load i64, i64* %RBP.i227
  %3402 = sub i64 %3401, 60
  %3403 = load i64, i64* %PC.i226
  %3404 = add i64 %3403, 7
  store i64 %3404, i64* %PC.i226
  %3405 = inttoptr i64 %3402 to i32*
  store i32 0, i32* %3405
  store %struct.Memory* %loadMem_400e91, %struct.Memory** %MEMORY
  br label %block_.L_400e98

block_.L_400e98:                                  ; preds = %block_.L_400fbf, %block_.L_400e91
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 1
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 15
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %RBP.i225
  %3416 = sub i64 %3415, 60
  %3417 = load i64, i64* %PC.i223
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i223
  %3419 = inttoptr i64 %3416 to i32*
  %3420 = load i32, i32* %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_400e98, %struct.Memory** %MEMORY
  %loadMem_400e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 5
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 15
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %RBP.i222
  %3432 = sub i64 %3431, 4
  %3433 = load i64, i64* %PC.i220
  %3434 = add i64 %3433, 3
  store i64 %3434, i64* %PC.i220
  %3435 = inttoptr i64 %3432 to i32*
  %3436 = load i32, i32* %3435
  %3437 = zext i32 %3436 to i64
  store i64 %3437, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_400e9b, %struct.Memory** %MEMORY
  %loadMem_400e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 33
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 5
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RCX.i219
  %3445 = load i64, i64* %PC.i218
  %3446 = add i64 %3445, 3
  store i64 %3446, i64* %PC.i218
  %3447 = trunc i64 %3444 to i32
  %3448 = sub i32 %3447, 1
  %3449 = zext i32 %3448 to i64
  store i64 %3449, i64* %RCX.i219, align 8
  %3450 = icmp ult i32 %3447, 1
  %3451 = zext i1 %3450 to i8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3451, i8* %3452, align 1
  %3453 = and i32 %3448, 255
  %3454 = call i32 @llvm.ctpop.i32(i32 %3453)
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3457, i8* %3458, align 1
  %3459 = xor i64 1, %3444
  %3460 = trunc i64 %3459 to i32
  %3461 = xor i32 %3460, %3448
  %3462 = lshr i32 %3461, 4
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3464, i8* %3465, align 1
  %3466 = icmp eq i32 %3448, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3448, 31
  %3470 = trunc i32 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = lshr i32 %3447, 31
  %3473 = xor i32 %3469, %3472
  %3474 = add i32 %3473, %3472
  %3475 = icmp eq i32 %3474, 2
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3476, i8* %3477, align 1
  store %struct.Memory* %loadMem_400e9e, %struct.Memory** %MEMORY
  %loadMem_400ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %3483 to i32*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 5
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %ECX.i217 = bitcast %union.anon* %3486 to i32*
  %3487 = load i32, i32* %EAX.i216
  %3488 = zext i32 %3487 to i64
  %3489 = load i32, i32* %ECX.i217
  %3490 = zext i32 %3489 to i64
  %3491 = load i64, i64* %PC.i215
  %3492 = add i64 %3491, 2
  store i64 %3492, i64* %PC.i215
  %3493 = sub i32 %3487, %3489
  %3494 = icmp ult i32 %3487, %3489
  %3495 = zext i1 %3494 to i8
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3495, i8* %3496, align 1
  %3497 = and i32 %3493, 255
  %3498 = call i32 @llvm.ctpop.i32(i32 %3497)
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  %3501 = xor i8 %3500, 1
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3501, i8* %3502, align 1
  %3503 = xor i64 %3490, %3488
  %3504 = trunc i64 %3503 to i32
  %3505 = xor i32 %3504, %3493
  %3506 = lshr i32 %3505, 4
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3508, i8* %3509, align 1
  %3510 = icmp eq i32 %3493, 0
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3511, i8* %3512, align 1
  %3513 = lshr i32 %3493, 31
  %3514 = trunc i32 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3514, i8* %3515, align 1
  %3516 = lshr i32 %3487, 31
  %3517 = lshr i32 %3489, 31
  %3518 = xor i32 %3517, %3516
  %3519 = xor i32 %3513, %3516
  %3520 = add i32 %3519, %3518
  %3521 = icmp eq i32 %3520, 2
  %3522 = zext i1 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3522, i8* %3523, align 1
  store %struct.Memory* %loadMem_400ea1, %struct.Memory** %MEMORY
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3526 to i64*
  %3527 = load i64, i64* %PC.i214
  %3528 = add i64 %3527, 298
  %3529 = load i64, i64* %PC.i214
  %3530 = add i64 %3529, 6
  %3531 = load i64, i64* %PC.i214
  %3532 = add i64 %3531, 6
  store i64 %3532, i64* %PC.i214
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3534 = load i8, i8* %3533, align 1
  %3535 = icmp ne i8 %3534, 0
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3537 = load i8, i8* %3536, align 1
  %3538 = icmp ne i8 %3537, 0
  %3539 = xor i1 %3535, %3538
  %3540 = xor i1 %3539, true
  %3541 = zext i1 %3540 to i8
  store i8 %3541, i8* %BRANCH_TAKEN, align 1
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3543 = select i1 %3539, i64 %3530, i64 %3528
  store i64 %3543, i64* %3542, align 8
  store %struct.Memory* %loadMem_400ea3, %struct.Memory** %MEMORY
  %loadBr_400ea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ea3 = icmp eq i8 %loadBr_400ea3, 1
  br i1 %cmpBr_400ea3, label %block_.L_400fcd, label %block_400ea9

block_400ea9:                                     ; preds = %block_.L_400e98
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3547, i64 0, i64 0
  %YMM0.i213 = bitcast %union.VectorReg* %3548 to %"class.std::bitset"*
  %3549 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %3550 = load i64, i64* %PC.i212
  %3551 = add i64 %3550, 1447
  %3552 = load i64, i64* %PC.i212
  %3553 = add i64 %3552, 8
  store i64 %3553, i64* %PC.i212
  %3554 = inttoptr i64 %3551 to double*
  %3555 = load double, double* %3554
  %3556 = bitcast i8* %3549 to double*
  store double %3555, double* %3556, align 1
  %3557 = getelementptr inbounds i8, i8* %3549, i64 8
  %3558 = bitcast i8* %3557 to double*
  store double 0.000000e+00, double* %3558, align 1
  store %struct.Memory* %loadMem_400ea9, %struct.Memory** %MEMORY
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 1
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RBP.i211
  %3569 = sub i64 %3568, 32
  %3570 = load i64, i64* %PC.i209
  %3571 = add i64 %3570, 4
  store i64 %3571, i64* %PC.i209
  %3572 = inttoptr i64 %3569 to i64*
  %3573 = load i64, i64* %3572
  store i64 %3573, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_400eb1, %struct.Memory** %MEMORY
  %loadMem_400eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 5
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i208
  %3584 = sub i64 %3583, 60
  %3585 = load i64, i64* %PC.i206
  %3586 = add i64 %3585, 4
  store i64 %3586, i64* %PC.i206
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587
  %3589 = sext i32 %3588 to i64
  store i64 %3589, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_400eb5, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 5
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RCX.i205
  %3597 = load i64, i64* %PC.i204
  %3598 = add i64 %3597, 7
  store i64 %3598, i64* %PC.i204
  %3599 = sext i64 %3596 to i128
  %3600 = and i128 %3599, -18446744073709551616
  %3601 = zext i64 %3596 to i128
  %3602 = or i128 %3600, %3601
  %3603 = mul i128 8000, %3602
  %3604 = trunc i128 %3603 to i64
  store i64 %3604, i64* %RCX.i205, align 8
  %3605 = sext i64 %3604 to i128
  %3606 = icmp ne i128 %3605, %3603
  %3607 = zext i1 %3606 to i8
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3607, i8* %3608, align 1
  %3609 = trunc i128 %3603 to i32
  %3610 = and i32 %3609, 255
  %3611 = call i32 @llvm.ctpop.i32(i32 %3610)
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3614, i8* %3615, align 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3616, align 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3617, align 1
  %3618 = lshr i64 %3604, 63
  %3619 = trunc i64 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3619, i8* %3620, align 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3607, i8* %3621, align 1
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 1
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 5
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RAX.i202
  %3632 = load i64, i64* %RCX.i203
  %3633 = load i64, i64* %PC.i201
  %3634 = add i64 %3633, 3
  store i64 %3634, i64* %PC.i201
  %3635 = add i64 %3632, %3631
  store i64 %3635, i64* %RAX.i202, align 8
  %3636 = icmp ult i64 %3635, %3631
  %3637 = icmp ult i64 %3635, %3632
  %3638 = or i1 %3636, %3637
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3639, i8* %3640, align 1
  %3641 = trunc i64 %3635 to i32
  %3642 = and i32 %3641, 255
  %3643 = call i32 @llvm.ctpop.i32(i32 %3642)
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3646, i8* %3647, align 1
  %3648 = xor i64 %3632, %3631
  %3649 = xor i64 %3648, %3635
  %3650 = lshr i64 %3649, 4
  %3651 = trunc i64 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3652, i8* %3653, align 1
  %3654 = icmp eq i64 %3635, 0
  %3655 = zext i1 %3654 to i8
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3655, i8* %3656, align 1
  %3657 = lshr i64 %3635, 63
  %3658 = trunc i64 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3658, i8* %3659, align 1
  %3660 = lshr i64 %3631, 63
  %3661 = lshr i64 %3632, 63
  %3662 = xor i64 %3657, %3660
  %3663 = xor i64 %3657, %3661
  %3664 = add i64 %3662, %3663
  %3665 = icmp eq i64 %3664, 2
  %3666 = zext i1 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3666, i8* %3667, align 1
  store %struct.Memory* %loadMem_400ec0, %struct.Memory** %MEMORY
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 5
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 15
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RBP.i200
  %3678 = sub i64 %3677, 60
  %3679 = load i64, i64* %PC.i198
  %3680 = add i64 %3679, 4
  store i64 %3680, i64* %PC.i198
  %3681 = inttoptr i64 %3678 to i32*
  %3682 = load i32, i32* %3681
  %3683 = sext i32 %3682 to i64
  store i64 %3683, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_400ec3, %struct.Memory** %MEMORY
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 1
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 5
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3693, i64 0, i64 0
  %XMM0.i197 = bitcast %union.VectorReg* %3694 to %union.vec128_t*
  %3695 = load i64, i64* %RAX.i195
  %3696 = load i64, i64* %RCX.i196
  %3697 = mul i64 %3696, 8
  %3698 = add i64 %3697, %3695
  %3699 = bitcast %union.vec128_t* %XMM0.i197 to i8*
  %3700 = load i64, i64* %PC.i194
  %3701 = add i64 %3700, 5
  store i64 %3701, i64* %PC.i194
  %3702 = bitcast i8* %3699 to double*
  %3703 = load double, double* %3702, align 1
  %3704 = inttoptr i64 %3698 to double*
  store double %3703, double* %3704
  store %struct.Memory* %loadMem_400ec7, %struct.Memory** %MEMORY
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 7
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 15
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %RBP.i193
  %3715 = sub i64 %3714, 60
  %3716 = load i64, i64* %PC.i191
  %3717 = add i64 %3716, 3
  store i64 %3717, i64* %PC.i191
  %3718 = inttoptr i64 %3715 to i32*
  %3719 = load i32, i32* %3718
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_400ecc, %struct.Memory** %MEMORY
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 7
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RDX.i190
  %3728 = load i64, i64* %PC.i189
  %3729 = add i64 %3728, 3
  store i64 %3729, i64* %PC.i189
  %3730 = trunc i64 %3727 to i32
  %3731 = add i32 1, %3730
  %3732 = zext i32 %3731 to i64
  store i64 %3732, i64* %RDX.i190, align 8
  %3733 = icmp ult i32 %3731, %3730
  %3734 = icmp ult i32 %3731, 1
  %3735 = or i1 %3733, %3734
  %3736 = zext i1 %3735 to i8
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3736, i8* %3737, align 1
  %3738 = and i32 %3731, 255
  %3739 = call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3742, i8* %3743, align 1
  %3744 = xor i64 1, %3727
  %3745 = trunc i64 %3744 to i32
  %3746 = xor i32 %3745, %3731
  %3747 = lshr i32 %3746, 4
  %3748 = trunc i32 %3747 to i8
  %3749 = and i8 %3748, 1
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3749, i8* %3750, align 1
  %3751 = icmp eq i32 %3731, 0
  %3752 = zext i1 %3751 to i8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3752, i8* %3753, align 1
  %3754 = lshr i32 %3731, 31
  %3755 = trunc i32 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3755, i8* %3756, align 1
  %3757 = lshr i32 %3730, 31
  %3758 = xor i32 %3754, %3757
  %3759 = add i32 %3758, %3754
  %3760 = icmp eq i32 %3759, 2
  %3761 = zext i1 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3761, i8* %3762, align 1
  store %struct.Memory* %loadMem_400ecf, %struct.Memory** %MEMORY
  %loadMem_400ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 7
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3768 to i32*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 15
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %RBP.i188
  %3773 = sub i64 %3772, 64
  %3774 = load i32, i32* %EDX.i
  %3775 = zext i32 %3774 to i64
  %3776 = load i64, i64* %PC.i187
  %3777 = add i64 %3776, 3
  store i64 %3777, i64* %PC.i187
  %3778 = inttoptr i64 %3773 to i32*
  store i32 %3774, i32* %3778
  store %struct.Memory* %loadMem_400ed2, %struct.Memory** %MEMORY
  br label %block_.L_400ed5

block_.L_400ed5:                                  ; preds = %block_.L_400f76, %block_400ea9
  %loadMem_400ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 1
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i186
  %3789 = sub i64 %3788, 64
  %3790 = load i64, i64* %PC.i184
  %3791 = add i64 %3790, 3
  store i64 %3791, i64* %PC.i184
  %3792 = inttoptr i64 %3789 to i32*
  %3793 = load i32, i32* %3792
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_400ed5, %struct.Memory** %MEMORY
  %loadMem_400ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 1
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %3800 to i32*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3803 to i64*
  %3804 = load i32, i32* %EAX.i182
  %3805 = zext i32 %3804 to i64
  %3806 = load i64, i64* %RBP.i183
  %3807 = sub i64 %3806, 4
  %3808 = load i64, i64* %PC.i181
  %3809 = add i64 %3808, 3
  store i64 %3809, i64* %PC.i181
  %3810 = inttoptr i64 %3807 to i32*
  %3811 = load i32, i32* %3810
  %3812 = sub i32 %3804, %3811
  %3813 = icmp ult i32 %3804, %3811
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3814, i8* %3815, align 1
  %3816 = and i32 %3812, 255
  %3817 = call i32 @llvm.ctpop.i32(i32 %3816)
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = xor i8 %3819, 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3820, i8* %3821, align 1
  %3822 = xor i32 %3811, %3804
  %3823 = xor i32 %3822, %3812
  %3824 = lshr i32 %3823, 4
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3826, i8* %3827, align 1
  %3828 = icmp eq i32 %3812, 0
  %3829 = zext i1 %3828 to i8
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3829, i8* %3830, align 1
  %3831 = lshr i32 %3812, 31
  %3832 = trunc i32 %3831 to i8
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3832, i8* %3833, align 1
  %3834 = lshr i32 %3804, 31
  %3835 = lshr i32 %3811, 31
  %3836 = xor i32 %3835, %3834
  %3837 = xor i32 %3831, %3834
  %3838 = add i32 %3837, %3836
  %3839 = icmp eq i32 %3838, 2
  %3840 = zext i1 %3839 to i8
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3840, i8* %3841, align 1
  store %struct.Memory* %loadMem_400ed8, %struct.Memory** %MEMORY
  %loadMem_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %PC.i180
  %3846 = add i64 %3845, 223
  %3847 = load i64, i64* %PC.i180
  %3848 = add i64 %3847, 6
  %3849 = load i64, i64* %PC.i180
  %3850 = add i64 %3849, 6
  store i64 %3850, i64* %PC.i180
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3852 = load i8, i8* %3851, align 1
  %3853 = icmp ne i8 %3852, 0
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3855 = load i8, i8* %3854, align 1
  %3856 = icmp ne i8 %3855, 0
  %3857 = xor i1 %3853, %3856
  %3858 = xor i1 %3857, true
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %BRANCH_TAKEN, align 1
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3861 = select i1 %3857, i64 %3848, i64 %3846
  store i64 %3861, i64* %3860, align 8
  store %struct.Memory* %loadMem_400edb, %struct.Memory** %MEMORY
  %loadBr_400edb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400edb = icmp eq i8 %loadBr_400edb, 1
  br i1 %cmpBr_400edb, label %block_.L_400fba, label %block_400ee1

block_400ee1:                                     ; preds = %block_.L_400ed5
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3865, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %3866 to %"class.std::bitset"*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3867, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %3868 to %union.vec128_t*
  %3869 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %3870 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %3871 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %3872 = load i64, i64* %PC.i177
  %3873 = add i64 %3872, 3
  store i64 %3873, i64* %PC.i177
  %3874 = bitcast i8* %3870 to i64*
  %3875 = load i64, i64* %3874, align 1
  %3876 = getelementptr inbounds i8, i8* %3870, i64 8
  %3877 = bitcast i8* %3876 to i64*
  %3878 = load i64, i64* %3877, align 1
  %3879 = bitcast i8* %3871 to i64*
  %3880 = load i64, i64* %3879, align 1
  %3881 = getelementptr inbounds i8, i8* %3871, i64 8
  %3882 = bitcast i8* %3881 to i64*
  %3883 = load i64, i64* %3882, align 1
  %3884 = xor i64 %3880, %3875
  %3885 = xor i64 %3883, %3878
  %3886 = trunc i64 %3884 to i32
  %3887 = lshr i64 %3884, 32
  %3888 = trunc i64 %3887 to i32
  %3889 = bitcast i8* %3869 to i32*
  store i32 %3886, i32* %3889, align 1
  %3890 = getelementptr inbounds i8, i8* %3869, i64 4
  %3891 = bitcast i8* %3890 to i32*
  store i32 %3888, i32* %3891, align 1
  %3892 = trunc i64 %3885 to i32
  %3893 = getelementptr inbounds i8, i8* %3869, i64 8
  %3894 = bitcast i8* %3893 to i32*
  store i32 %3892, i32* %3894, align 1
  %3895 = lshr i64 %3885, 32
  %3896 = trunc i64 %3895 to i32
  %3897 = getelementptr inbounds i8, i8* %3869, i64 12
  %3898 = bitcast i8* %3897 to i32*
  store i32 %3896, i32* %3898, align 1
  store %struct.Memory* %loadMem_400ee1, %struct.Memory** %MEMORY
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 1
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 15
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RBP.i176
  %3909 = sub i64 %3908, 32
  %3910 = load i64, i64* %PC.i174
  %3911 = add i64 %3910, 4
  store i64 %3911, i64* %PC.i174
  %3912 = inttoptr i64 %3909 to i64*
  %3913 = load i64, i64* %3912
  store i64 %3913, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 33
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3916 to i64*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 5
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 15
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %RBP.i173
  %3924 = sub i64 %3923, 60
  %3925 = load i64, i64* %PC.i171
  %3926 = add i64 %3925, 4
  store i64 %3926, i64* %PC.i171
  %3927 = inttoptr i64 %3924 to i32*
  %3928 = load i32, i32* %3927
  %3929 = sext i32 %3928 to i64
  store i64 %3929, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_400ee8, %struct.Memory** %MEMORY
  %loadMem_400eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 33
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 5
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3935 to i64*
  %3936 = load i64, i64* %RCX.i170
  %3937 = load i64, i64* %PC.i169
  %3938 = add i64 %3937, 7
  store i64 %3938, i64* %PC.i169
  %3939 = sext i64 %3936 to i128
  %3940 = and i128 %3939, -18446744073709551616
  %3941 = zext i64 %3936 to i128
  %3942 = or i128 %3940, %3941
  %3943 = mul i128 8000, %3942
  %3944 = trunc i128 %3943 to i64
  store i64 %3944, i64* %RCX.i170, align 8
  %3945 = sext i64 %3944 to i128
  %3946 = icmp ne i128 %3945, %3943
  %3947 = zext i1 %3946 to i8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3947, i8* %3948, align 1
  %3949 = trunc i128 %3943 to i32
  %3950 = and i32 %3949, 255
  %3951 = call i32 @llvm.ctpop.i32(i32 %3950)
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  %3954 = xor i8 %3953, 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3954, i8* %3955, align 1
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3956, align 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3957, align 1
  %3958 = lshr i64 %3944, 63
  %3959 = trunc i64 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3959, i8* %3960, align 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3947, i8* %3961, align 1
  store %struct.Memory* %loadMem_400eec, %struct.Memory** %MEMORY
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 33
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 1
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 5
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %RAX.i167
  %3972 = load i64, i64* %RCX.i168
  %3973 = load i64, i64* %PC.i166
  %3974 = add i64 %3973, 3
  store i64 %3974, i64* %PC.i166
  %3975 = add i64 %3972, %3971
  store i64 %3975, i64* %RAX.i167, align 8
  %3976 = icmp ult i64 %3975, %3971
  %3977 = icmp ult i64 %3975, %3972
  %3978 = or i1 %3976, %3977
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3979, i8* %3980, align 1
  %3981 = trunc i64 %3975 to i32
  %3982 = and i32 %3981, 255
  %3983 = call i32 @llvm.ctpop.i32(i32 %3982)
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3986, i8* %3987, align 1
  %3988 = xor i64 %3972, %3971
  %3989 = xor i64 %3988, %3975
  %3990 = lshr i64 %3989, 4
  %3991 = trunc i64 %3990 to i8
  %3992 = and i8 %3991, 1
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3992, i8* %3993, align 1
  %3994 = icmp eq i64 %3975, 0
  %3995 = zext i1 %3994 to i8
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3995, i8* %3996, align 1
  %3997 = lshr i64 %3975, 63
  %3998 = trunc i64 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3998, i8* %3999, align 1
  %4000 = lshr i64 %3971, 63
  %4001 = lshr i64 %3972, 63
  %4002 = xor i64 %3997, %4000
  %4003 = xor i64 %3997, %4001
  %4004 = add i64 %4002, %4003
  %4005 = icmp eq i64 %4004, 2
  %4006 = zext i1 %4005 to i8
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4006, i8* %4007, align 1
  store %struct.Memory* %loadMem_400ef3, %struct.Memory** %MEMORY
  %loadMem_400ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 5
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 15
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RBP.i165
  %4018 = sub i64 %4017, 64
  %4019 = load i64, i64* %PC.i163
  %4020 = add i64 %4019, 4
  store i64 %4020, i64* %PC.i163
  %4021 = inttoptr i64 %4018 to i32*
  %4022 = load i32, i32* %4021
  %4023 = sext i32 %4022 to i64
  store i64 %4023, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_400ef6, %struct.Memory** %MEMORY
  %loadMem_400efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 1
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 5
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4033, i64 0, i64 0
  %XMM0.i162 = bitcast %union.VectorReg* %4034 to %union.vec128_t*
  %4035 = load i64, i64* %RAX.i160
  %4036 = load i64, i64* %RCX.i161
  %4037 = mul i64 %4036, 8
  %4038 = add i64 %4037, %4035
  %4039 = bitcast %union.vec128_t* %XMM0.i162 to i8*
  %4040 = load i64, i64* %PC.i159
  %4041 = add i64 %4040, 5
  store i64 %4041, i64* %PC.i159
  %4042 = bitcast i8* %4039 to double*
  %4043 = load double, double* %4042, align 1
  %4044 = inttoptr i64 %4038 to double*
  store double %4043, double* %4044
  store %struct.Memory* %loadMem_400efa, %struct.Memory** %MEMORY
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i158
  %4052 = sub i64 %4051, 52
  %4053 = load i64, i64* %PC.i157
  %4054 = add i64 %4053, 7
  store i64 %4054, i64* %PC.i157
  %4055 = inttoptr i64 %4052 to i32*
  store i32 0, i32* %4055
  store %struct.Memory* %loadMem_400eff, %struct.Memory** %MEMORY
  br label %block_.L_400f06

block_.L_400f06:                                  ; preds = %block_400f12, %block_400ee1
  %loadMem_400f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 33
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 1
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 15
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4064 to i64*
  %4065 = load i64, i64* %RBP.i156
  %4066 = sub i64 %4065, 52
  %4067 = load i64, i64* %PC.i154
  %4068 = add i64 %4067, 3
  store i64 %4068, i64* %PC.i154
  %4069 = inttoptr i64 %4066 to i32*
  %4070 = load i32, i32* %4069
  %4071 = zext i32 %4070 to i64
  store i64 %4071, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_400f06, %struct.Memory** %MEMORY
  %loadMem_400f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 33
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 1
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %4077 to i32*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 15
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4080 to i64*
  %4081 = load i32, i32* %EAX.i152
  %4082 = zext i32 %4081 to i64
  %4083 = load i64, i64* %RBP.i153
  %4084 = sub i64 %4083, 8
  %4085 = load i64, i64* %PC.i151
  %4086 = add i64 %4085, 3
  store i64 %4086, i64* %PC.i151
  %4087 = inttoptr i64 %4084 to i32*
  %4088 = load i32, i32* %4087
  %4089 = sub i32 %4081, %4088
  %4090 = icmp ult i32 %4081, %4088
  %4091 = zext i1 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4091, i8* %4092, align 1
  %4093 = and i32 %4089, 255
  %4094 = call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4097, i8* %4098, align 1
  %4099 = xor i32 %4088, %4081
  %4100 = xor i32 %4099, %4089
  %4101 = lshr i32 %4100, 4
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4103, i8* %4104, align 1
  %4105 = icmp eq i32 %4089, 0
  %4106 = zext i1 %4105 to i8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4106, i8* %4107, align 1
  %4108 = lshr i32 %4089, 31
  %4109 = trunc i32 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4109, i8* %4110, align 1
  %4111 = lshr i32 %4081, 31
  %4112 = lshr i32 %4088, 31
  %4113 = xor i32 %4112, %4111
  %4114 = xor i32 %4108, %4111
  %4115 = add i32 %4114, %4113
  %4116 = icmp eq i32 %4115, 2
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4117, i8* %4118, align 1
  store %struct.Memory* %loadMem_400f09, %struct.Memory** %MEMORY
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %PC.i150
  %4123 = add i64 %4122, 106
  %4124 = load i64, i64* %PC.i150
  %4125 = add i64 %4124, 6
  %4126 = load i64, i64* %PC.i150
  %4127 = add i64 %4126, 6
  store i64 %4127, i64* %PC.i150
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4129 = load i8, i8* %4128, align 1
  %4130 = icmp ne i8 %4129, 0
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4132 = load i8, i8* %4131, align 1
  %4133 = icmp ne i8 %4132, 0
  %4134 = xor i1 %4130, %4133
  %4135 = xor i1 %4134, true
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %BRANCH_TAKEN, align 1
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4138 = select i1 %4134, i64 %4125, i64 %4123
  store i64 %4138, i64* %4137, align 8
  store %struct.Memory* %loadMem_400f0c, %struct.Memory** %MEMORY
  %loadBr_400f0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f0c = icmp eq i8 %loadBr_400f0c, 1
  br i1 %cmpBr_400f0c, label %block_.L_400f76, label %block_400f12

block_400f12:                                     ; preds = %block_.L_400f06
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 1
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4144 to i64*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 15
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4147 to i64*
  %4148 = load i64, i64* %RBP.i149
  %4149 = sub i64 %4148, 24
  %4150 = load i64, i64* %PC.i147
  %4151 = add i64 %4150, 4
  store i64 %4151, i64* %PC.i147
  %4152 = inttoptr i64 %4149 to i64*
  %4153 = load i64, i64* %4152
  store i64 %4153, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_400f12, %struct.Memory** %MEMORY
  %loadMem_400f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 5
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 15
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %RBP.i146
  %4164 = sub i64 %4163, 52
  %4165 = load i64, i64* %PC.i144
  %4166 = add i64 %4165, 4
  store i64 %4166, i64* %PC.i144
  %4167 = inttoptr i64 %4164 to i32*
  %4168 = load i32, i32* %4167
  %4169 = sext i32 %4168 to i64
  store i64 %4169, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_400f16, %struct.Memory** %MEMORY
  %loadMem_400f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 5
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %RCX.i143
  %4177 = load i64, i64* %PC.i142
  %4178 = add i64 %4177, 7
  store i64 %4178, i64* %PC.i142
  %4179 = sext i64 %4176 to i128
  %4180 = and i128 %4179, -18446744073709551616
  %4181 = zext i64 %4176 to i128
  %4182 = or i128 %4180, %4181
  %4183 = mul i128 8000, %4182
  %4184 = trunc i128 %4183 to i64
  store i64 %4184, i64* %RCX.i143, align 8
  %4185 = sext i64 %4184 to i128
  %4186 = icmp ne i128 %4185, %4183
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4187, i8* %4188, align 1
  %4189 = trunc i128 %4183 to i32
  %4190 = and i32 %4189, 255
  %4191 = call i32 @llvm.ctpop.i32(i32 %4190)
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  %4194 = xor i8 %4193, 1
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4194, i8* %4195, align 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4196, align 1
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4197, align 1
  %4198 = lshr i64 %4184, 63
  %4199 = trunc i64 %4198 to i8
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4199, i8* %4200, align 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4187, i8* %4201, align 1
  store %struct.Memory* %loadMem_400f1a, %struct.Memory** %MEMORY
  %loadMem_400f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 1
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 5
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RAX.i140
  %4212 = load i64, i64* %RCX.i141
  %4213 = load i64, i64* %PC.i139
  %4214 = add i64 %4213, 3
  store i64 %4214, i64* %PC.i139
  %4215 = add i64 %4212, %4211
  store i64 %4215, i64* %RAX.i140, align 8
  %4216 = icmp ult i64 %4215, %4211
  %4217 = icmp ult i64 %4215, %4212
  %4218 = or i1 %4216, %4217
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4219, i8* %4220, align 1
  %4221 = trunc i64 %4215 to i32
  %4222 = and i32 %4221, 255
  %4223 = call i32 @llvm.ctpop.i32(i32 %4222)
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = xor i8 %4225, 1
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4226, i8* %4227, align 1
  %4228 = xor i64 %4212, %4211
  %4229 = xor i64 %4228, %4215
  %4230 = lshr i64 %4229, 4
  %4231 = trunc i64 %4230 to i8
  %4232 = and i8 %4231, 1
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4232, i8* %4233, align 1
  %4234 = icmp eq i64 %4215, 0
  %4235 = zext i1 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i64 %4215, 63
  %4238 = trunc i64 %4237 to i8
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4238, i8* %4239, align 1
  %4240 = lshr i64 %4211, 63
  %4241 = lshr i64 %4212, 63
  %4242 = xor i64 %4237, %4240
  %4243 = xor i64 %4237, %4241
  %4244 = add i64 %4242, %4243
  %4245 = icmp eq i64 %4244, 2
  %4246 = zext i1 %4245 to i8
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4246, i8* %4247, align 1
  store %struct.Memory* %loadMem_400f21, %struct.Memory** %MEMORY
  %loadMem_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 5
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 15
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RBP.i138
  %4258 = sub i64 %4257, 60
  %4259 = load i64, i64* %PC.i136
  %4260 = add i64 %4259, 4
  store i64 %4260, i64* %PC.i136
  %4261 = inttoptr i64 %4258 to i32*
  %4262 = load i32, i32* %4261
  %4263 = sext i32 %4262 to i64
  store i64 %4263, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_400f24, %struct.Memory** %MEMORY
  %loadMem_400f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 1
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 5
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4273, i64 0, i64 0
  %YMM0.i135 = bitcast %union.VectorReg* %4274 to %"class.std::bitset"*
  %4275 = bitcast %"class.std::bitset"* %YMM0.i135 to i8*
  %4276 = load i64, i64* %RAX.i133
  %4277 = load i64, i64* %RCX.i134
  %4278 = mul i64 %4277, 8
  %4279 = add i64 %4278, %4276
  %4280 = load i64, i64* %PC.i132
  %4281 = add i64 %4280, 5
  store i64 %4281, i64* %PC.i132
  %4282 = inttoptr i64 %4279 to double*
  %4283 = load double, double* %4282
  %4284 = bitcast i8* %4275 to double*
  store double %4283, double* %4284, align 1
  %4285 = getelementptr inbounds i8, i8* %4275, i64 8
  %4286 = bitcast i8* %4285 to double*
  store double 0.000000e+00, double* %4286, align 1
  store %struct.Memory* %loadMem_400f28, %struct.Memory** %MEMORY
  %loadMem_400f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 33
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4289 to i64*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 1
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 15
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %4295 to i64*
  %4296 = load i64, i64* %RBP.i131
  %4297 = sub i64 %4296, 24
  %4298 = load i64, i64* %PC.i129
  %4299 = add i64 %4298, 4
  store i64 %4299, i64* %PC.i129
  %4300 = inttoptr i64 %4297 to i64*
  %4301 = load i64, i64* %4300
  store i64 %4301, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_400f2d, %struct.Memory** %MEMORY
  %loadMem_400f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 5
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 15
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %RBP.i128
  %4312 = sub i64 %4311, 52
  %4313 = load i64, i64* %PC.i126
  %4314 = add i64 %4313, 4
  store i64 %4314, i64* %PC.i126
  %4315 = inttoptr i64 %4312 to i32*
  %4316 = load i32, i32* %4315
  %4317 = sext i32 %4316 to i64
  store i64 %4317, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_400f31, %struct.Memory** %MEMORY
  %loadMem_400f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 5
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %4323 to i64*
  %4324 = load i64, i64* %RCX.i125
  %4325 = load i64, i64* %PC.i124
  %4326 = add i64 %4325, 7
  store i64 %4326, i64* %PC.i124
  %4327 = sext i64 %4324 to i128
  %4328 = and i128 %4327, -18446744073709551616
  %4329 = zext i64 %4324 to i128
  %4330 = or i128 %4328, %4329
  %4331 = mul i128 8000, %4330
  %4332 = trunc i128 %4331 to i64
  store i64 %4332, i64* %RCX.i125, align 8
  %4333 = sext i64 %4332 to i128
  %4334 = icmp ne i128 %4333, %4331
  %4335 = zext i1 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4335, i8* %4336, align 1
  %4337 = trunc i128 %4331 to i32
  %4338 = and i32 %4337, 255
  %4339 = call i32 @llvm.ctpop.i32(i32 %4338)
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = xor i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4342, i8* %4343, align 1
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4344, align 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4345, align 1
  %4346 = lshr i64 %4332, 63
  %4347 = trunc i64 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4347, i8* %4348, align 1
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4335, i8* %4349, align 1
  store %struct.Memory* %loadMem_400f35, %struct.Memory** %MEMORY
  %loadMem_400f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 1
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 5
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RAX.i122
  %4360 = load i64, i64* %RCX.i123
  %4361 = load i64, i64* %PC.i121
  %4362 = add i64 %4361, 3
  store i64 %4362, i64* %PC.i121
  %4363 = add i64 %4360, %4359
  store i64 %4363, i64* %RAX.i122, align 8
  %4364 = icmp ult i64 %4363, %4359
  %4365 = icmp ult i64 %4363, %4360
  %4366 = or i1 %4364, %4365
  %4367 = zext i1 %4366 to i8
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4367, i8* %4368, align 1
  %4369 = trunc i64 %4363 to i32
  %4370 = and i32 %4369, 255
  %4371 = call i32 @llvm.ctpop.i32(i32 %4370)
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = xor i8 %4373, 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4374, i8* %4375, align 1
  %4376 = xor i64 %4360, %4359
  %4377 = xor i64 %4376, %4363
  %4378 = lshr i64 %4377, 4
  %4379 = trunc i64 %4378 to i8
  %4380 = and i8 %4379, 1
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4380, i8* %4381, align 1
  %4382 = icmp eq i64 %4363, 0
  %4383 = zext i1 %4382 to i8
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4383, i8* %4384, align 1
  %4385 = lshr i64 %4363, 63
  %4386 = trunc i64 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i64 %4359, 63
  %4389 = lshr i64 %4360, 63
  %4390 = xor i64 %4385, %4388
  %4391 = xor i64 %4385, %4389
  %4392 = add i64 %4390, %4391
  %4393 = icmp eq i64 %4392, 2
  %4394 = zext i1 %4393 to i8
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4394, i8* %4395, align 1
  store %struct.Memory* %loadMem_400f3c, %struct.Memory** %MEMORY
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 5
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 15
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %RBP.i120
  %4406 = sub i64 %4405, 64
  %4407 = load i64, i64* %PC.i118
  %4408 = add i64 %4407, 4
  store i64 %4408, i64* %PC.i118
  %4409 = inttoptr i64 %4406 to i32*
  %4410 = load i32, i32* %4409
  %4411 = sext i32 %4410 to i64
  store i64 %4411, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_400f3f, %struct.Memory** %MEMORY
  %loadMem_400f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 1
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 5
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4421, i64 0, i64 0
  %YMM0.i117 = bitcast %union.VectorReg* %4422 to %"class.std::bitset"*
  %4423 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %4424 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %4425 = load i64, i64* %RAX.i115
  %4426 = load i64, i64* %RCX.i116
  %4427 = mul i64 %4426, 8
  %4428 = add i64 %4427, %4425
  %4429 = load i64, i64* %PC.i114
  %4430 = add i64 %4429, 5
  store i64 %4430, i64* %PC.i114
  %4431 = bitcast i8* %4424 to double*
  %4432 = load double, double* %4431, align 1
  %4433 = getelementptr inbounds i8, i8* %4424, i64 8
  %4434 = bitcast i8* %4433 to i64*
  %4435 = load i64, i64* %4434, align 1
  %4436 = inttoptr i64 %4428 to double*
  %4437 = load double, double* %4436
  %4438 = fmul double %4432, %4437
  %4439 = bitcast i8* %4423 to double*
  store double %4438, double* %4439, align 1
  %4440 = getelementptr inbounds i8, i8* %4423, i64 8
  %4441 = bitcast i8* %4440 to i64*
  store i64 %4435, i64* %4441, align 1
  store %struct.Memory* %loadMem_400f43, %struct.Memory** %MEMORY
  %loadMem_400f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 1
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 15
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %RBP.i113
  %4452 = sub i64 %4451, 32
  %4453 = load i64, i64* %PC.i111
  %4454 = add i64 %4453, 4
  store i64 %4454, i64* %PC.i111
  %4455 = inttoptr i64 %4452 to i64*
  %4456 = load i64, i64* %4455
  store i64 %4456, i64* %RAX.i112, align 8
  store %struct.Memory* %loadMem_400f48, %struct.Memory** %MEMORY
  %loadMem_400f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 5
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RBP.i110
  %4467 = sub i64 %4466, 60
  %4468 = load i64, i64* %PC.i108
  %4469 = add i64 %4468, 4
  store i64 %4469, i64* %PC.i108
  %4470 = inttoptr i64 %4467 to i32*
  %4471 = load i32, i32* %4470
  %4472 = sext i32 %4471 to i64
  store i64 %4472, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_400f4c, %struct.Memory** %MEMORY
  %loadMem_400f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 5
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RCX.i107
  %4480 = load i64, i64* %PC.i106
  %4481 = add i64 %4480, 7
  store i64 %4481, i64* %PC.i106
  %4482 = sext i64 %4479 to i128
  %4483 = and i128 %4482, -18446744073709551616
  %4484 = zext i64 %4479 to i128
  %4485 = or i128 %4483, %4484
  %4486 = mul i128 8000, %4485
  %4487 = trunc i128 %4486 to i64
  store i64 %4487, i64* %RCX.i107, align 8
  %4488 = sext i64 %4487 to i128
  %4489 = icmp ne i128 %4488, %4486
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4490, i8* %4491, align 1
  %4492 = trunc i128 %4486 to i32
  %4493 = and i32 %4492, 255
  %4494 = call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4497, i8* %4498, align 1
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4499, align 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4500, align 1
  %4501 = lshr i64 %4487, 63
  %4502 = trunc i64 %4501 to i8
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4502, i8* %4503, align 1
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4490, i8* %4504, align 1
  store %struct.Memory* %loadMem_400f50, %struct.Memory** %MEMORY
  %loadMem_400f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 1
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 5
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RAX.i104
  %4515 = load i64, i64* %RCX.i105
  %4516 = load i64, i64* %PC.i103
  %4517 = add i64 %4516, 3
  store i64 %4517, i64* %PC.i103
  %4518 = add i64 %4515, %4514
  store i64 %4518, i64* %RAX.i104, align 8
  %4519 = icmp ult i64 %4518, %4514
  %4520 = icmp ult i64 %4518, %4515
  %4521 = or i1 %4519, %4520
  %4522 = zext i1 %4521 to i8
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4522, i8* %4523, align 1
  %4524 = trunc i64 %4518 to i32
  %4525 = and i32 %4524, 255
  %4526 = call i32 @llvm.ctpop.i32(i32 %4525)
  %4527 = trunc i32 %4526 to i8
  %4528 = and i8 %4527, 1
  %4529 = xor i8 %4528, 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4529, i8* %4530, align 1
  %4531 = xor i64 %4515, %4514
  %4532 = xor i64 %4531, %4518
  %4533 = lshr i64 %4532, 4
  %4534 = trunc i64 %4533 to i8
  %4535 = and i8 %4534, 1
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4535, i8* %4536, align 1
  %4537 = icmp eq i64 %4518, 0
  %4538 = zext i1 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4538, i8* %4539, align 1
  %4540 = lshr i64 %4518, 63
  %4541 = trunc i64 %4540 to i8
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4541, i8* %4542, align 1
  %4543 = lshr i64 %4514, 63
  %4544 = lshr i64 %4515, 63
  %4545 = xor i64 %4540, %4543
  %4546 = xor i64 %4540, %4544
  %4547 = add i64 %4545, %4546
  %4548 = icmp eq i64 %4547, 2
  %4549 = zext i1 %4548 to i8
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4549, i8* %4550, align 1
  store %struct.Memory* %loadMem_400f57, %struct.Memory** %MEMORY
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 5
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 15
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4559 to i64*
  %4560 = load i64, i64* %RBP.i102
  %4561 = sub i64 %4560, 64
  %4562 = load i64, i64* %PC.i100
  %4563 = add i64 %4562, 4
  store i64 %4563, i64* %PC.i100
  %4564 = inttoptr i64 %4561 to i32*
  %4565 = load i32, i32* %4564
  %4566 = sext i32 %4565 to i64
  store i64 %4566, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_400f5a, %struct.Memory** %MEMORY
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 1
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4572 to i64*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 5
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4575 to i64*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4576, i64 0, i64 0
  %YMM0.i99 = bitcast %union.VectorReg* %4577 to %"class.std::bitset"*
  %4578 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4579 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4580 = load i64, i64* %RAX.i97
  %4581 = load i64, i64* %RCX.i98
  %4582 = mul i64 %4581, 8
  %4583 = add i64 %4582, %4580
  %4584 = load i64, i64* %PC.i96
  %4585 = add i64 %4584, 5
  store i64 %4585, i64* %PC.i96
  %4586 = bitcast i8* %4579 to double*
  %4587 = load double, double* %4586, align 1
  %4588 = getelementptr inbounds i8, i8* %4579, i64 8
  %4589 = bitcast i8* %4588 to i64*
  %4590 = load i64, i64* %4589, align 1
  %4591 = inttoptr i64 %4583 to double*
  %4592 = load double, double* %4591
  %4593 = fadd double %4587, %4592
  %4594 = bitcast i8* %4578 to double*
  store double %4593, double* %4594, align 1
  %4595 = getelementptr inbounds i8, i8* %4578, i64 8
  %4596 = bitcast i8* %4595 to i64*
  store i64 %4590, i64* %4596, align 1
  store %struct.Memory* %loadMem_400f5e, %struct.Memory** %MEMORY
  %loadMem_400f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4599 to i64*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 1
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 5
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4607 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4606, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %4607 to %union.vec128_t*
  %4608 = load i64, i64* %RAX.i93
  %4609 = load i64, i64* %RCX.i94
  %4610 = mul i64 %4609, 8
  %4611 = add i64 %4610, %4608
  %4612 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %4613 = load i64, i64* %PC.i92
  %4614 = add i64 %4613, 5
  store i64 %4614, i64* %PC.i92
  %4615 = bitcast i8* %4612 to double*
  %4616 = load double, double* %4615, align 1
  %4617 = inttoptr i64 %4611 to double*
  store double %4616, double* %4617
  store %struct.Memory* %loadMem_400f63, %struct.Memory** %MEMORY
  %loadMem_400f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 33
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 1
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 15
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RBP.i91
  %4628 = sub i64 %4627, 52
  %4629 = load i64, i64* %PC.i89
  %4630 = add i64 %4629, 3
  store i64 %4630, i64* %PC.i89
  %4631 = inttoptr i64 %4628 to i32*
  %4632 = load i32, i32* %4631
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_400f68, %struct.Memory** %MEMORY
  %loadMem_400f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 1
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %4639 to i64*
  %4640 = load i64, i64* %RAX.i88
  %4641 = load i64, i64* %PC.i87
  %4642 = add i64 %4641, 3
  store i64 %4642, i64* %PC.i87
  %4643 = trunc i64 %4640 to i32
  %4644 = add i32 1, %4643
  %4645 = zext i32 %4644 to i64
  store i64 %4645, i64* %RAX.i88, align 8
  %4646 = icmp ult i32 %4644, %4643
  %4647 = icmp ult i32 %4644, 1
  %4648 = or i1 %4646, %4647
  %4649 = zext i1 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4649, i8* %4650, align 1
  %4651 = and i32 %4644, 255
  %4652 = call i32 @llvm.ctpop.i32(i32 %4651)
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = xor i8 %4654, 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4655, i8* %4656, align 1
  %4657 = xor i64 1, %4640
  %4658 = trunc i64 %4657 to i32
  %4659 = xor i32 %4658, %4644
  %4660 = lshr i32 %4659, 4
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4662, i8* %4663, align 1
  %4664 = icmp eq i32 %4644, 0
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4665, i8* %4666, align 1
  %4667 = lshr i32 %4644, 31
  %4668 = trunc i32 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4668, i8* %4669, align 1
  %4670 = lshr i32 %4643, 31
  %4671 = xor i32 %4667, %4670
  %4672 = add i32 %4671, %4667
  %4673 = icmp eq i32 %4672, 2
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4674, i8* %4675, align 1
  store %struct.Memory* %loadMem_400f6b, %struct.Memory** %MEMORY
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 1
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %4681 to i32*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 15
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4684 to i64*
  %4685 = load i64, i64* %RBP.i86
  %4686 = sub i64 %4685, 52
  %4687 = load i32, i32* %EAX.i85
  %4688 = zext i32 %4687 to i64
  %4689 = load i64, i64* %PC.i84
  %4690 = add i64 %4689, 3
  store i64 %4690, i64* %PC.i84
  %4691 = inttoptr i64 %4686 to i32*
  store i32 %4687, i32* %4691
  store %struct.Memory* %loadMem_400f6e, %struct.Memory** %MEMORY
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %PC.i83
  %4696 = add i64 %4695, -107
  %4697 = load i64, i64* %PC.i83
  %4698 = add i64 %4697, 5
  store i64 %4698, i64* %PC.i83
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4696, i64* %4699, align 8
  store %struct.Memory* %loadMem_400f71, %struct.Memory** %MEMORY
  br label %block_.L_400f06

block_.L_400f76:                                  ; preds = %block_.L_400f06
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 1
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 15
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %RBP.i82
  %4710 = sub i64 %4709, 32
  %4711 = load i64, i64* %PC.i80
  %4712 = add i64 %4711, 4
  store i64 %4712, i64* %PC.i80
  %4713 = inttoptr i64 %4710 to i64*
  %4714 = load i64, i64* %4713
  store i64 %4714, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_400f76, %struct.Memory** %MEMORY
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 5
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 15
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RBP.i79
  %4725 = sub i64 %4724, 60
  %4726 = load i64, i64* %PC.i77
  %4727 = add i64 %4726, 4
  store i64 %4727, i64* %PC.i77
  %4728 = inttoptr i64 %4725 to i32*
  %4729 = load i32, i32* %4728
  %4730 = sext i32 %4729 to i64
  store i64 %4730, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_400f7a, %struct.Memory** %MEMORY
  %loadMem_400f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 5
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4736 to i64*
  %4737 = load i64, i64* %RCX.i76
  %4738 = load i64, i64* %PC.i75
  %4739 = add i64 %4738, 7
  store i64 %4739, i64* %PC.i75
  %4740 = sext i64 %4737 to i128
  %4741 = and i128 %4740, -18446744073709551616
  %4742 = zext i64 %4737 to i128
  %4743 = or i128 %4741, %4742
  %4744 = mul i128 8000, %4743
  %4745 = trunc i128 %4744 to i64
  store i64 %4745, i64* %RCX.i76, align 8
  %4746 = sext i64 %4745 to i128
  %4747 = icmp ne i128 %4746, %4744
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4748, i8* %4749, align 1
  %4750 = trunc i128 %4744 to i32
  %4751 = and i32 %4750, 255
  %4752 = call i32 @llvm.ctpop.i32(i32 %4751)
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = xor i8 %4754, 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4755, i8* %4756, align 1
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4757, align 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4758, align 1
  %4759 = lshr i64 %4745, 63
  %4760 = trunc i64 %4759 to i8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4760, i8* %4761, align 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4748, i8* %4762, align 1
  store %struct.Memory* %loadMem_400f7e, %struct.Memory** %MEMORY
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 33
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4765 to i64*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 1
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 5
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %4771 to i64*
  %4772 = load i64, i64* %RAX.i73
  %4773 = load i64, i64* %RCX.i74
  %4774 = load i64, i64* %PC.i72
  %4775 = add i64 %4774, 3
  store i64 %4775, i64* %PC.i72
  %4776 = add i64 %4773, %4772
  store i64 %4776, i64* %RAX.i73, align 8
  %4777 = icmp ult i64 %4776, %4772
  %4778 = icmp ult i64 %4776, %4773
  %4779 = or i1 %4777, %4778
  %4780 = zext i1 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4780, i8* %4781, align 1
  %4782 = trunc i64 %4776 to i32
  %4783 = and i32 %4782, 255
  %4784 = call i32 @llvm.ctpop.i32(i32 %4783)
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4787, i8* %4788, align 1
  %4789 = xor i64 %4773, %4772
  %4790 = xor i64 %4789, %4776
  %4791 = lshr i64 %4790, 4
  %4792 = trunc i64 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4793, i8* %4794, align 1
  %4795 = icmp eq i64 %4776, 0
  %4796 = zext i1 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4796, i8* %4797, align 1
  %4798 = lshr i64 %4776, 63
  %4799 = trunc i64 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4799, i8* %4800, align 1
  %4801 = lshr i64 %4772, 63
  %4802 = lshr i64 %4773, 63
  %4803 = xor i64 %4798, %4801
  %4804 = xor i64 %4798, %4802
  %4805 = add i64 %4803, %4804
  %4806 = icmp eq i64 %4805, 2
  %4807 = zext i1 %4806 to i8
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4807, i8* %4808, align 1
  store %struct.Memory* %loadMem_400f85, %struct.Memory** %MEMORY
  %loadMem_400f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 5
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 15
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4817 to i64*
  %4818 = load i64, i64* %RBP.i71
  %4819 = sub i64 %4818, 64
  %4820 = load i64, i64* %PC.i69
  %4821 = add i64 %4820, 4
  store i64 %4821, i64* %PC.i69
  %4822 = inttoptr i64 %4819 to i32*
  %4823 = load i32, i32* %4822
  %4824 = sext i32 %4823 to i64
  store i64 %4824, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_400f88, %struct.Memory** %MEMORY
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 33
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 1
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 5
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4835 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4834, i64 0, i64 0
  %YMM0.i68 = bitcast %union.VectorReg* %4835 to %"class.std::bitset"*
  %4836 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %4837 = load i64, i64* %RAX.i66
  %4838 = load i64, i64* %RCX.i67
  %4839 = mul i64 %4838, 8
  %4840 = add i64 %4839, %4837
  %4841 = load i64, i64* %PC.i65
  %4842 = add i64 %4841, 5
  store i64 %4842, i64* %PC.i65
  %4843 = inttoptr i64 %4840 to double*
  %4844 = load double, double* %4843
  %4845 = bitcast i8* %4836 to double*
  store double %4844, double* %4845, align 1
  %4846 = getelementptr inbounds i8, i8* %4836, i64 8
  %4847 = bitcast i8* %4846 to double*
  store double 0.000000e+00, double* %4847, align 1
  store %struct.Memory* %loadMem_400f8c, %struct.Memory** %MEMORY
  %loadMem_400f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 1
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 15
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %RBP.i64
  %4858 = sub i64 %4857, 32
  %4859 = load i64, i64* %PC.i62
  %4860 = add i64 %4859, 4
  store i64 %4860, i64* %PC.i62
  %4861 = inttoptr i64 %4858 to i64*
  %4862 = load i64, i64* %4861
  store i64 %4862, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_400f91, %struct.Memory** %MEMORY
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 5
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 15
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RBP.i61
  %4873 = sub i64 %4872, 64
  %4874 = load i64, i64* %PC.i59
  %4875 = add i64 %4874, 4
  store i64 %4875, i64* %PC.i59
  %4876 = inttoptr i64 %4873 to i32*
  %4877 = load i32, i32* %4876
  %4878 = sext i32 %4877 to i64
  store i64 %4878, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_400f95, %struct.Memory** %MEMORY
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 5
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4884 to i64*
  %4885 = load i64, i64* %RCX.i58
  %4886 = load i64, i64* %PC.i57
  %4887 = add i64 %4886, 7
  store i64 %4887, i64* %PC.i57
  %4888 = sext i64 %4885 to i128
  %4889 = and i128 %4888, -18446744073709551616
  %4890 = zext i64 %4885 to i128
  %4891 = or i128 %4889, %4890
  %4892 = mul i128 8000, %4891
  %4893 = trunc i128 %4892 to i64
  store i64 %4893, i64* %RCX.i58, align 8
  %4894 = sext i64 %4893 to i128
  %4895 = icmp ne i128 %4894, %4892
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4896, i8* %4897, align 1
  %4898 = trunc i128 %4892 to i32
  %4899 = and i32 %4898, 255
  %4900 = call i32 @llvm.ctpop.i32(i32 %4899)
  %4901 = trunc i32 %4900 to i8
  %4902 = and i8 %4901, 1
  %4903 = xor i8 %4902, 1
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4903, i8* %4904, align 1
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4905, align 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4906, align 1
  %4907 = lshr i64 %4893, 63
  %4908 = trunc i64 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4908, i8* %4909, align 1
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4896, i8* %4910, align 1
  store %struct.Memory* %loadMem_400f99, %struct.Memory** %MEMORY
  %loadMem_400fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 1
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 5
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RAX.i55
  %4921 = load i64, i64* %RCX.i56
  %4922 = load i64, i64* %PC.i54
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i54
  %4924 = add i64 %4921, %4920
  store i64 %4924, i64* %RAX.i55, align 8
  %4925 = icmp ult i64 %4924, %4920
  %4926 = icmp ult i64 %4924, %4921
  %4927 = or i1 %4925, %4926
  %4928 = zext i1 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4928, i8* %4929, align 1
  %4930 = trunc i64 %4924 to i32
  %4931 = and i32 %4930, 255
  %4932 = call i32 @llvm.ctpop.i32(i32 %4931)
  %4933 = trunc i32 %4932 to i8
  %4934 = and i8 %4933, 1
  %4935 = xor i8 %4934, 1
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4935, i8* %4936, align 1
  %4937 = xor i64 %4921, %4920
  %4938 = xor i64 %4937, %4924
  %4939 = lshr i64 %4938, 4
  %4940 = trunc i64 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4941, i8* %4942, align 1
  %4943 = icmp eq i64 %4924, 0
  %4944 = zext i1 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i64 %4924, 63
  %4947 = trunc i64 %4946 to i8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4947, i8* %4948, align 1
  %4949 = lshr i64 %4920, 63
  %4950 = lshr i64 %4921, 63
  %4951 = xor i64 %4946, %4949
  %4952 = xor i64 %4946, %4950
  %4953 = add i64 %4951, %4952
  %4954 = icmp eq i64 %4953, 2
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4955, i8* %4956, align 1
  store %struct.Memory* %loadMem_400fa0, %struct.Memory** %MEMORY
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 5
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 15
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %RBP.i53
  %4967 = sub i64 %4966, 60
  %4968 = load i64, i64* %PC.i51
  %4969 = add i64 %4968, 4
  store i64 %4969, i64* %PC.i51
  %4970 = inttoptr i64 %4967 to i32*
  %4971 = load i32, i32* %4970
  %4972 = sext i32 %4971 to i64
  store i64 %4972, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_400fa3, %struct.Memory** %MEMORY
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 33
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 1
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 5
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4982, i64 0, i64 0
  %XMM0.i50 = bitcast %union.VectorReg* %4983 to %union.vec128_t*
  %4984 = load i64, i64* %RAX.i48
  %4985 = load i64, i64* %RCX.i49
  %4986 = mul i64 %4985, 8
  %4987 = add i64 %4986, %4984
  %4988 = bitcast %union.vec128_t* %XMM0.i50 to i8*
  %4989 = load i64, i64* %PC.i47
  %4990 = add i64 %4989, 5
  store i64 %4990, i64* %PC.i47
  %4991 = bitcast i8* %4988 to double*
  %4992 = load double, double* %4991, align 1
  %4993 = inttoptr i64 %4987 to double*
  store double %4992, double* %4993
  store %struct.Memory* %loadMem_400fa7, %struct.Memory** %MEMORY
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 1
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i46
  %5004 = sub i64 %5003, 64
  %5005 = load i64, i64* %PC.i44
  %5006 = add i64 %5005, 3
  store i64 %5006, i64* %PC.i44
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400fac, %struct.Memory** %MEMORY
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 1
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RAX.i43
  %5017 = load i64, i64* %PC.i42
  %5018 = add i64 %5017, 3
  store i64 %5018, i64* %PC.i42
  %5019 = trunc i64 %5016 to i32
  %5020 = add i32 1, %5019
  %5021 = zext i32 %5020 to i64
  store i64 %5021, i64* %RAX.i43, align 8
  %5022 = icmp ult i32 %5020, %5019
  %5023 = icmp ult i32 %5020, 1
  %5024 = or i1 %5022, %5023
  %5025 = zext i1 %5024 to i8
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5025, i8* %5026, align 1
  %5027 = and i32 %5020, 255
  %5028 = call i32 @llvm.ctpop.i32(i32 %5027)
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  %5031 = xor i8 %5030, 1
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5031, i8* %5032, align 1
  %5033 = xor i64 1, %5016
  %5034 = trunc i64 %5033 to i32
  %5035 = xor i32 %5034, %5020
  %5036 = lshr i32 %5035, 4
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5038, i8* %5039, align 1
  %5040 = icmp eq i32 %5020, 0
  %5041 = zext i1 %5040 to i8
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5041, i8* %5042, align 1
  %5043 = lshr i32 %5020, 31
  %5044 = trunc i32 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5044, i8* %5045, align 1
  %5046 = lshr i32 %5019, 31
  %5047 = xor i32 %5043, %5046
  %5048 = add i32 %5047, %5043
  %5049 = icmp eq i32 %5048, 2
  %5050 = zext i1 %5049 to i8
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5050, i8* %5051, align 1
  store %struct.Memory* %loadMem_400faf, %struct.Memory** %MEMORY
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 1
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %5057 to i32*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 15
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %RBP.i41
  %5062 = sub i64 %5061, 64
  %5063 = load i32, i32* %EAX.i40
  %5064 = zext i32 %5063 to i64
  %5065 = load i64, i64* %PC.i39
  %5066 = add i64 %5065, 3
  store i64 %5066, i64* %PC.i39
  %5067 = inttoptr i64 %5062 to i32*
  store i32 %5063, i32* %5067
  store %struct.Memory* %loadMem_400fb2, %struct.Memory** %MEMORY
  %loadMem_400fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5070 to i64*
  %5071 = load i64, i64* %PC.i38
  %5072 = add i64 %5071, -224
  %5073 = load i64, i64* %PC.i38
  %5074 = add i64 %5073, 5
  store i64 %5074, i64* %PC.i38
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5072, i64* %5075, align 8
  store %struct.Memory* %loadMem_400fb5, %struct.Memory** %MEMORY
  br label %block_.L_400ed5

block_.L_400fba:                                  ; preds = %block_.L_400ed5
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %PC.i37
  %5080 = add i64 %5079, 5
  %5081 = load i64, i64* %PC.i37
  %5082 = add i64 %5081, 5
  store i64 %5082, i64* %PC.i37
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5080, i64* %5083, align 8
  store %struct.Memory* %loadMem_400fba, %struct.Memory** %MEMORY
  br label %block_.L_400fbf

block_.L_400fbf:                                  ; preds = %block_.L_400fba
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i36
  %5094 = sub i64 %5093, 60
  %5095 = load i64, i64* %PC.i34
  %5096 = add i64 %5095, 3
  store i64 %5096, i64* %PC.i34
  %5097 = inttoptr i64 %5094 to i32*
  %5098 = load i32, i32* %5097
  %5099 = zext i32 %5098 to i64
  store i64 %5099, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 1
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %RAX.i33
  %5107 = load i64, i64* %PC.i32
  %5108 = add i64 %5107, 3
  store i64 %5108, i64* %PC.i32
  %5109 = trunc i64 %5106 to i32
  %5110 = add i32 1, %5109
  %5111 = zext i32 %5110 to i64
  store i64 %5111, i64* %RAX.i33, align 8
  %5112 = icmp ult i32 %5110, %5109
  %5113 = icmp ult i32 %5110, 1
  %5114 = or i1 %5112, %5113
  %5115 = zext i1 %5114 to i8
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5115, i8* %5116, align 1
  %5117 = and i32 %5110, 255
  %5118 = call i32 @llvm.ctpop.i32(i32 %5117)
  %5119 = trunc i32 %5118 to i8
  %5120 = and i8 %5119, 1
  %5121 = xor i8 %5120, 1
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5121, i8* %5122, align 1
  %5123 = xor i64 1, %5106
  %5124 = trunc i64 %5123 to i32
  %5125 = xor i32 %5124, %5110
  %5126 = lshr i32 %5125, 4
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5128, i8* %5129, align 1
  %5130 = icmp eq i32 %5110, 0
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5131, i8* %5132, align 1
  %5133 = lshr i32 %5110, 31
  %5134 = trunc i32 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5134, i8* %5135, align 1
  %5136 = lshr i32 %5109, 31
  %5137 = xor i32 %5133, %5136
  %5138 = add i32 %5137, %5133
  %5139 = icmp eq i32 %5138, 2
  %5140 = zext i1 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5140, i8* %5141, align 1
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 33
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 1
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5147 to i32*
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 15
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5150 to i64*
  %5151 = load i64, i64* %RBP.i31
  %5152 = sub i64 %5151, 60
  %5153 = load i32, i32* %EAX.i
  %5154 = zext i32 %5153 to i64
  %5155 = load i64, i64* %PC.i30
  %5156 = add i64 %5155, 3
  store i64 %5156, i64* %PC.i30
  %5157 = inttoptr i64 %5152 to i32*
  store i32 %5153, i32* %5157
  store %struct.Memory* %loadMem_400fc5, %struct.Memory** %MEMORY
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 33
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i29
  %5162 = add i64 %5161, -304
  %5163 = load i64, i64* %PC.i29
  %5164 = add i64 %5163, 5
  store i64 %5164, i64* %PC.i29
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5162, i64* %5165, align 8
  store %struct.Memory* %loadMem_400fc8, %struct.Memory** %MEMORY
  br label %block_.L_400e98

block_.L_400fcd:                                  ; preds = %block_.L_400e98
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 33
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5169, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5170 to %"class.std::bitset"*
  %5171 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5172 = load i64, i64* %PC.i28
  %5173 = add i64 %5172, 1155
  %5174 = load i64, i64* %PC.i28
  %5175 = add i64 %5174, 8
  store i64 %5175, i64* %PC.i28
  %5176 = inttoptr i64 %5173 to double*
  %5177 = load double, double* %5176
  %5178 = bitcast i8* %5171 to double*
  store double %5177, double* %5178, align 1
  %5179 = getelementptr inbounds i8, i8* %5171, i64 8
  %5180 = bitcast i8* %5179 to double*
  store double 0.000000e+00, double* %5180, align 1
  store %struct.Memory* %loadMem_400fcd, %struct.Memory** %MEMORY
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 1
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 15
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %RBP.i27
  %5191 = sub i64 %5190, 32
  %5192 = load i64, i64* %PC.i25
  %5193 = add i64 %5192, 4
  store i64 %5193, i64* %PC.i25
  %5194 = inttoptr i64 %5191 to i64*
  %5195 = load i64, i64* %5194
  store i64 %5195, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_400fd5, %struct.Memory** %MEMORY
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 5
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 15
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RBP.i24
  %5206 = sub i64 %5205, 4
  %5207 = load i64, i64* %PC.i22
  %5208 = add i64 %5207, 3
  store i64 %5208, i64* %PC.i22
  %5209 = inttoptr i64 %5206 to i32*
  %5210 = load i32, i32* %5209
  %5211 = zext i32 %5210 to i64
  store i64 %5211, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_400fd9, %struct.Memory** %MEMORY
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 5
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %5217 to i64*
  %5218 = load i64, i64* %RCX.i21
  %5219 = load i64, i64* %PC.i20
  %5220 = add i64 %5219, 3
  store i64 %5220, i64* %PC.i20
  %5221 = trunc i64 %5218 to i32
  %5222 = sub i32 %5221, 1
  %5223 = zext i32 %5222 to i64
  store i64 %5223, i64* %RCX.i21, align 8
  %5224 = icmp ult i32 %5221, 1
  %5225 = zext i1 %5224 to i8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5225, i8* %5226, align 1
  %5227 = and i32 %5222, 255
  %5228 = call i32 @llvm.ctpop.i32(i32 %5227)
  %5229 = trunc i32 %5228 to i8
  %5230 = and i8 %5229, 1
  %5231 = xor i8 %5230, 1
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5231, i8* %5232, align 1
  %5233 = xor i64 1, %5218
  %5234 = trunc i64 %5233 to i32
  %5235 = xor i32 %5234, %5222
  %5236 = lshr i32 %5235, 4
  %5237 = trunc i32 %5236 to i8
  %5238 = and i8 %5237, 1
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5238, i8* %5239, align 1
  %5240 = icmp eq i32 %5222, 0
  %5241 = zext i1 %5240 to i8
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5241, i8* %5242, align 1
  %5243 = lshr i32 %5222, 31
  %5244 = trunc i32 %5243 to i8
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5244, i8* %5245, align 1
  %5246 = lshr i32 %5221, 31
  %5247 = xor i32 %5243, %5246
  %5248 = add i32 %5247, %5246
  %5249 = icmp eq i32 %5248, 2
  %5250 = zext i1 %5249 to i8
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5250, i8* %5251, align 1
  store %struct.Memory* %loadMem_400fdc, %struct.Memory** %MEMORY
  %loadMem_400fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 5
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %5257 to i32*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 7
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RDX.i19 = bitcast %union.anon* %5260 to i64*
  %5261 = load i32, i32* %ECX.i18
  %5262 = zext i32 %5261 to i64
  %5263 = load i64, i64* %PC.i17
  %5264 = add i64 %5263, 3
  store i64 %5264, i64* %PC.i17
  %5265 = shl i64 %5262, 32
  %5266 = ashr exact i64 %5265, 32
  store i64 %5266, i64* %RDX.i19, align 8
  store %struct.Memory* %loadMem_400fdf, %struct.Memory** %MEMORY
  %loadMem_400fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 7
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %RDX.i16
  %5274 = load i64, i64* %PC.i15
  %5275 = add i64 %5274, 7
  store i64 %5275, i64* %PC.i15
  %5276 = sext i64 %5273 to i128
  %5277 = and i128 %5276, -18446744073709551616
  %5278 = zext i64 %5273 to i128
  %5279 = or i128 %5277, %5278
  %5280 = mul i128 8000, %5279
  %5281 = trunc i128 %5280 to i64
  store i64 %5281, i64* %RDX.i16, align 8
  %5282 = sext i64 %5281 to i128
  %5283 = icmp ne i128 %5282, %5280
  %5284 = zext i1 %5283 to i8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5284, i8* %5285, align 1
  %5286 = trunc i128 %5280 to i32
  %5287 = and i32 %5286, 255
  %5288 = call i32 @llvm.ctpop.i32(i32 %5287)
  %5289 = trunc i32 %5288 to i8
  %5290 = and i8 %5289, 1
  %5291 = xor i8 %5290, 1
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5291, i8* %5292, align 1
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5293, align 1
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5294, align 1
  %5295 = lshr i64 %5281, 63
  %5296 = trunc i64 %5295 to i8
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5296, i8* %5297, align 1
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5284, i8* %5298, align 1
  store %struct.Memory* %loadMem_400fe2, %struct.Memory** %MEMORY
  %loadMem_400fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 1
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 7
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RDX.i14 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RAX.i13
  %5309 = load i64, i64* %RDX.i14
  %5310 = load i64, i64* %PC.i12
  %5311 = add i64 %5310, 3
  store i64 %5311, i64* %PC.i12
  %5312 = add i64 %5309, %5308
  store i64 %5312, i64* %RAX.i13, align 8
  %5313 = icmp ult i64 %5312, %5308
  %5314 = icmp ult i64 %5312, %5309
  %5315 = or i1 %5313, %5314
  %5316 = zext i1 %5315 to i8
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5316, i8* %5317, align 1
  %5318 = trunc i64 %5312 to i32
  %5319 = and i32 %5318, 255
  %5320 = call i32 @llvm.ctpop.i32(i32 %5319)
  %5321 = trunc i32 %5320 to i8
  %5322 = and i8 %5321, 1
  %5323 = xor i8 %5322, 1
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5323, i8* %5324, align 1
  %5325 = xor i64 %5309, %5308
  %5326 = xor i64 %5325, %5312
  %5327 = lshr i64 %5326, 4
  %5328 = trunc i64 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5329, i8* %5330, align 1
  %5331 = icmp eq i64 %5312, 0
  %5332 = zext i1 %5331 to i8
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5332, i8* %5333, align 1
  %5334 = lshr i64 %5312, 63
  %5335 = trunc i64 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5335, i8* %5336, align 1
  %5337 = lshr i64 %5308, 63
  %5338 = lshr i64 %5309, 63
  %5339 = xor i64 %5334, %5337
  %5340 = xor i64 %5334, %5338
  %5341 = add i64 %5339, %5340
  %5342 = icmp eq i64 %5341, 2
  %5343 = zext i1 %5342 to i8
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5343, i8* %5344, align 1
  store %struct.Memory* %loadMem_400fe9, %struct.Memory** %MEMORY
  %loadMem_400fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 5
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 15
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5353 to i64*
  %5354 = load i64, i64* %RBP.i11
  %5355 = sub i64 %5354, 4
  %5356 = load i64, i64* %PC.i9
  %5357 = add i64 %5356, 3
  store i64 %5357, i64* %PC.i9
  %5358 = inttoptr i64 %5355 to i32*
  %5359 = load i32, i32* %5358
  %5360 = zext i32 %5359 to i64
  store i64 %5360, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_400fec, %struct.Memory** %MEMORY
  %loadMem_400fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 33
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5363 to i64*
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 5
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5366 to i64*
  %5367 = load i64, i64* %RCX.i
  %5368 = load i64, i64* %PC.i8
  %5369 = add i64 %5368, 3
  store i64 %5369, i64* %PC.i8
  %5370 = trunc i64 %5367 to i32
  %5371 = sub i32 %5370, 1
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RCX.i, align 8
  %5373 = icmp ult i32 %5370, 1
  %5374 = zext i1 %5373 to i8
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5374, i8* %5375, align 1
  %5376 = and i32 %5371, 255
  %5377 = call i32 @llvm.ctpop.i32(i32 %5376)
  %5378 = trunc i32 %5377 to i8
  %5379 = and i8 %5378, 1
  %5380 = xor i8 %5379, 1
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5380, i8* %5381, align 1
  %5382 = xor i64 1, %5367
  %5383 = trunc i64 %5382 to i32
  %5384 = xor i32 %5383, %5371
  %5385 = lshr i32 %5384, 4
  %5386 = trunc i32 %5385 to i8
  %5387 = and i8 %5386, 1
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5387, i8* %5388, align 1
  %5389 = icmp eq i32 %5371, 0
  %5390 = zext i1 %5389 to i8
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5390, i8* %5391, align 1
  %5392 = lshr i32 %5371, 31
  %5393 = trunc i32 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5393, i8* %5394, align 1
  %5395 = lshr i32 %5370, 31
  %5396 = xor i32 %5392, %5395
  %5397 = add i32 %5396, %5395
  %5398 = icmp eq i32 %5397, 2
  %5399 = zext i1 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5399, i8* %5400, align 1
  store %struct.Memory* %loadMem_400fef, %struct.Memory** %MEMORY
  %loadMem_400ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 5
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5406 to i32*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 7
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RDX.i7 = bitcast %union.anon* %5409 to i64*
  %5410 = load i32, i32* %ECX.i
  %5411 = zext i32 %5410 to i64
  %5412 = load i64, i64* %PC.i6
  %5413 = add i64 %5412, 3
  store i64 %5413, i64* %PC.i6
  %5414 = shl i64 %5411, 32
  %5415 = ashr exact i64 %5414, 32
  store i64 %5415, i64* %RDX.i7, align 8
  store %struct.Memory* %loadMem_400ff2, %struct.Memory** %MEMORY
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5417 = getelementptr inbounds %struct.GPR, %struct.GPR* %5416, i32 0, i32 33
  %5418 = getelementptr inbounds %struct.Reg, %struct.Reg* %5417, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5418 to i64*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 1
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 7
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5426 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5425, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5426 to %union.vec128_t*
  %5427 = load i64, i64* %RAX.i
  %5428 = load i64, i64* %RDX.i
  %5429 = mul i64 %5428, 8
  %5430 = add i64 %5429, %5427
  %5431 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5432 = load i64, i64* %PC.i5
  %5433 = add i64 %5432, 5
  store i64 %5433, i64* %PC.i5
  %5434 = bitcast i8* %5431 to double*
  %5435 = load double, double* %5434, align 1
  %5436 = inttoptr i64 %5430 to double*
  store double %5435, double* %5436
  store %struct.Memory* %loadMem_400ff5, %struct.Memory** %MEMORY
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 13
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5442 to i64*
  %5443 = load i64, i64* %RSP.i
  %5444 = load i64, i64* %PC.i4
  %5445 = add i64 %5444, 4
  store i64 %5445, i64* %PC.i4
  %5446 = add i64 80, %5443
  store i64 %5446, i64* %RSP.i, align 8
  %5447 = icmp ult i64 %5446, %5443
  %5448 = icmp ult i64 %5446, 80
  %5449 = or i1 %5447, %5448
  %5450 = zext i1 %5449 to i8
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5450, i8* %5451, align 1
  %5452 = trunc i64 %5446 to i32
  %5453 = and i32 %5452, 255
  %5454 = call i32 @llvm.ctpop.i32(i32 %5453)
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  %5457 = xor i8 %5456, 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5457, i8* %5458, align 1
  %5459 = xor i64 80, %5443
  %5460 = xor i64 %5459, %5446
  %5461 = lshr i64 %5460, 4
  %5462 = trunc i64 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5463, i8* %5464, align 1
  %5465 = icmp eq i64 %5446, 0
  %5466 = zext i1 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5466, i8* %5467, align 1
  %5468 = lshr i64 %5446, 63
  %5469 = trunc i64 %5468 to i8
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5469, i8* %5470, align 1
  %5471 = lshr i64 %5443, 63
  %5472 = xor i64 %5468, %5471
  %5473 = add i64 %5472, %5468
  %5474 = icmp eq i64 %5473, 2
  %5475 = zext i1 %5474 to i8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5475, i8* %5476, align 1
  store %struct.Memory* %loadMem_400ffa, %struct.Memory** %MEMORY
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 15
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %PC.i2
  %5484 = add i64 %5483, 1
  store i64 %5484, i64* %PC.i2
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5486 = load i64, i64* %5485, align 8
  %5487 = add i64 %5486, 8
  %5488 = inttoptr i64 %5486 to i64*
  %5489 = load i64, i64* %5488
  store i64 %5489, i64* %RBP.i3, align 8
  store i64 %5487, i64* %5485, align 8
  store %struct.Memory* %loadMem_400ffe, %struct.Memory** %MEMORY
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %PC.i1
  %5494 = add i64 %5493, 1
  store i64 %5494, i64* %PC.i1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5497 = load i64, i64* %5496, align 8
  %5498 = inttoptr i64 %5497 to i64*
  %5499 = load i64, i64* %5498
  store i64 %5499, i64* %5495, align 8
  %5500 = add i64 %5497, 8
  store i64 %5500, i64* %5496, align 8
  store %struct.Memory* %loadMem_400fff, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400fff
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movsd_0x868__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2160
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_400c9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_400c71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 8000, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
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

define %struct.Memory* @routine_jmpq_.L_400c2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
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

define %struct.Memory* @routine_jmpq_.L_400c07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400dde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
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
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
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
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jb_.L_400dac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1718
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

define %struct.Memory* @routine_jmpq_.L_400dbe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ca1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400e91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400e7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
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

define %struct.Memory* @routine_jmpq_.L_400df8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400de5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 1
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
  %24 = xor i64 1, %9
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

define %struct.Memory* @routine_jge_.L_400fcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1447
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_400fba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400f06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ed5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1155
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 8000, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
