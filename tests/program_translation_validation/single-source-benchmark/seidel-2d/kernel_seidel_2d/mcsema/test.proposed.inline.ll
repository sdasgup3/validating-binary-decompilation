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

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_seidel_2d(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400ad0, %struct.Memory** %MEMORY
  %loadMem_400ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i318
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i318
  store i64 %26, i64* %RBP.i319, align 8
  store %struct.Memory* %loadMem_400ad1, %struct.Memory** %MEMORY
  %loadMem_400ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i317
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i316
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i316
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400ad4, %struct.Memory** %MEMORY
  %loadMem_400ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i315
  %55 = sub i64 %54, 8
  %56 = load i32, i32* %ESI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i314
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i314
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_400ad7, %struct.Memory** %MEMORY
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RDX.i312 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %RBP.i313
  %71 = sub i64 %70, 16
  %72 = load i64, i64* %RDX.i312
  %73 = load i64, i64* %PC.i311
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC.i311
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75
  store %struct.Memory* %loadMem_400ada, %struct.Memory** %MEMORY
  %loadMem_400ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RBP.i310
  %83 = sub i64 %82, 20
  %84 = load i64, i64* %PC.i309
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i309
  %86 = inttoptr i64 %83 to i32*
  store i32 0, i32* %86
  store %struct.Memory* %loadMem_400ade, %struct.Memory** %MEMORY
  br label %block_.L_400ae5

block_.L_400ae5:                                  ; preds = %block_.L_400ca2, %entry
  %loadMem_400ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 33
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RBP.i308
  %97 = sub i64 %96, 20
  %98 = load i64, i64* %PC.i306
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC.i306
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_400ae5, %struct.Memory** %MEMORY
  %loadMem_400ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i305
  %113 = sub i64 %112, 4
  %114 = load i64, i64* %PC.i303
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC.i303
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_400ae8, %struct.Memory** %MEMORY
  %loadMem_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RCX.i302
  %126 = load i64, i64* %PC.i301
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i301
  %128 = trunc i64 %125 to i32
  %129 = sub i32 %128, 1
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RCX.i302, align 8
  %131 = icmp ult i32 %128, 1
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %132, i8* %133, align 1
  %134 = and i32 %129, 255
  %135 = call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %138, i8* %139, align 1
  %140 = xor i64 1, %125
  %141 = trunc i64 %140 to i32
  %142 = xor i32 %141, %129
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %145, i8* %146, align 1
  %147 = icmp eq i32 %129, 0
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %148, i8* %149, align 1
  %150 = lshr i32 %129, 31
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %151, i8* %152, align 1
  %153 = lshr i32 %128, 31
  %154 = xor i32 %150, %153
  %155 = add i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %157, i8* %158, align 1
  store %struct.Memory* %loadMem_400aeb, %struct.Memory** %MEMORY
  %loadMem_400aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %ECX.i300 = bitcast %union.anon* %167 to i32*
  %168 = load i32, i32* %EAX.i299
  %169 = zext i32 %168 to i64
  %170 = load i32, i32* %ECX.i300
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %PC.i298
  %173 = add i64 %172, 2
  store i64 %173, i64* %PC.i298
  %174 = sub i32 %168, %170
  %175 = icmp ult i32 %168, %170
  %176 = zext i1 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %176, i8* %177, align 1
  %178 = and i32 %174, 255
  %179 = call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %182, i8* %183, align 1
  %184 = xor i64 %171, %169
  %185 = trunc i64 %184 to i32
  %186 = xor i32 %185, %174
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %189, i8* %190, align 1
  %191 = icmp eq i32 %174, 0
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %193, align 1
  %194 = lshr i32 %174, 31
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %195, i8* %196, align 1
  %197 = lshr i32 %168, 31
  %198 = lshr i32 %170, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %194, %197
  %201 = add i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %203, i8* %204, align 1
  store %struct.Memory* %loadMem_400aee, %struct.Memory** %MEMORY
  %loadMem_400af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %PC.i297
  %209 = add i64 %208, 448
  %210 = load i64, i64* %PC.i297
  %211 = add i64 %210, 6
  %212 = load i64, i64* %PC.i297
  %213 = add i64 %212, 6
  store i64 %213, i64* %PC.i297
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %215 = load i8, i8* %214, align 1
  %216 = icmp eq i8 %215, 0
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  %223 = xor i1 %219, %222
  %224 = xor i1 %223, true
  %225 = and i1 %216, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %BRANCH_TAKEN, align 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %228 = select i1 %225, i64 %209, i64 %211
  store i64 %228, i64* %227, align 8
  store %struct.Memory* %loadMem_400af0, %struct.Memory** %MEMORY
  %loadBr_400af0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400af0 = icmp eq i8 %loadBr_400af0, 1
  br i1 %cmpBr_400af0, label %block_.L_400cb0, label %block_400af6

block_400af6:                                     ; preds = %block_.L_400ae5
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i296
  %236 = sub i64 %235, 24
  %237 = load i64, i64* %PC.i295
  %238 = add i64 %237, 7
  store i64 %238, i64* %PC.i295
  %239 = inttoptr i64 %236 to i32*
  store i32 1, i32* %239
  store %struct.Memory* %loadMem_400af6, %struct.Memory** %MEMORY
  br label %block_.L_400afd

block_.L_400afd:                                  ; preds = %block_.L_400c8f, %block_400af6
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %RBP.i294
  %250 = sub i64 %249, 24
  %251 = load i64, i64* %PC.i292
  %252 = add i64 %251, 3
  store i64 %252, i64* %PC.i292
  %253 = inttoptr i64 %250 to i32*
  %254 = load i32, i32* %253
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_400afd, %struct.Memory** %MEMORY
  %loadMem_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i291
  %266 = sub i64 %265, 8
  %267 = load i64, i64* %PC.i289
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC.i289
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_400b00, %struct.Memory** %MEMORY
  %loadMem_400b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RCX.i288
  %279 = load i64, i64* %PC.i287
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC.i287
  %281 = trunc i64 %278 to i32
  %282 = sub i32 %281, 2
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RCX.i288, align 8
  %284 = icmp ult i32 %281, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %285, i8* %286, align 1
  %287 = and i32 %282, 255
  %288 = call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %291, i8* %292, align 1
  %293 = xor i64 2, %278
  %294 = trunc i64 %293 to i32
  %295 = xor i32 %294, %282
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %298, i8* %299, align 1
  %300 = icmp eq i32 %282, 0
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %301, i8* %302, align 1
  %303 = lshr i32 %282, 31
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %304, i8* %305, align 1
  %306 = lshr i32 %281, 31
  %307 = xor i32 %303, %306
  %308 = add i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %310, i8* %311, align 1
  store %struct.Memory* %loadMem_400b03, %struct.Memory** %MEMORY
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %317 to i32*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %ECX.i286 = bitcast %union.anon* %320 to i32*
  %321 = load i32, i32* %EAX.i285
  %322 = zext i32 %321 to i64
  %323 = load i32, i32* %ECX.i286
  %324 = zext i32 %323 to i64
  %325 = load i64, i64* %PC.i284
  %326 = add i64 %325, 2
  store i64 %326, i64* %PC.i284
  %327 = sub i32 %321, %323
  %328 = icmp ult i32 %321, %323
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1
  %331 = and i32 %327, 255
  %332 = call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %335, i8* %336, align 1
  %337 = xor i64 %324, %322
  %338 = trunc i64 %337 to i32
  %339 = xor i32 %338, %327
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1
  %344 = icmp eq i32 %327, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1
  %347 = lshr i32 %327, 31
  %348 = trunc i32 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1
  %350 = lshr i32 %321, 31
  %351 = lshr i32 %323, 31
  %352 = xor i32 %351, %350
  %353 = xor i32 %347, %350
  %354 = add i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1
  store %struct.Memory* %loadMem_400b06, %struct.Memory** %MEMORY
  %loadMem_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %PC.i283
  %362 = add i64 %361, 405
  %363 = load i64, i64* %PC.i283
  %364 = add i64 %363, 6
  %365 = load i64, i64* %PC.i283
  %366 = add i64 %365, 6
  store i64 %366, i64* %PC.i283
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %368 = load i8, i8* %367, align 1
  %369 = icmp eq i8 %368, 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %371 = load i8, i8* %370, align 1
  %372 = icmp ne i8 %371, 0
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %374 = load i8, i8* %373, align 1
  %375 = icmp ne i8 %374, 0
  %376 = xor i1 %372, %375
  %377 = xor i1 %376, true
  %378 = and i1 %369, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %BRANCH_TAKEN, align 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %381 = select i1 %378, i64 %362, i64 %364
  store i64 %381, i64* %380, align 8
  store %struct.Memory* %loadMem_400b08, %struct.Memory** %MEMORY
  %loadBr_400b08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b08 = icmp eq i8 %loadBr_400b08, 1
  br i1 %cmpBr_400b08, label %block_.L_400c9d, label %block_400b0e

block_400b0e:                                     ; preds = %block_.L_400afd
  %loadMem_400b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 15
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %RBP.i282
  %389 = sub i64 %388, 28
  %390 = load i64, i64* %PC.i281
  %391 = add i64 %390, 7
  store i64 %391, i64* %PC.i281
  %392 = inttoptr i64 %389 to i32*
  store i32 1, i32* %392
  store %struct.Memory* %loadMem_400b0e, %struct.Memory** %MEMORY
  br label %block_.L_400b15

block_.L_400b15:                                  ; preds = %block_400b26, %block_400b0e
  %loadMem_400b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RBP.i280
  %403 = sub i64 %402, 28
  %404 = load i64, i64* %PC.i278
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i278
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_400b15, %struct.Memory** %MEMORY
  %loadMem_400b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i277
  %419 = sub i64 %418, 8
  %420 = load i64, i64* %PC.i275
  %421 = add i64 %420, 3
  store i64 %421, i64* %PC.i275
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_400b18, %struct.Memory** %MEMORY
  %loadMem_400b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RCX.i274
  %432 = load i64, i64* %PC.i273
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC.i273
  %434 = trunc i64 %431 to i32
  %435 = sub i32 %434, 2
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RCX.i274, align 8
  %437 = icmp ult i32 %434, 2
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %438, i8* %439, align 1
  %440 = and i32 %435, 255
  %441 = call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %444, i8* %445, align 1
  %446 = xor i64 2, %431
  %447 = trunc i64 %446 to i32
  %448 = xor i32 %447, %435
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %451, i8* %452, align 1
  %453 = icmp eq i32 %435, 0
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %454, i8* %455, align 1
  %456 = lshr i32 %435, 31
  %457 = trunc i32 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %457, i8* %458, align 1
  %459 = lshr i32 %434, 31
  %460 = xor i32 %456, %459
  %461 = add i32 %460, %459
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %463, i8* %464, align 1
  store %struct.Memory* %loadMem_400b1b, %struct.Memory** %MEMORY
  %loadMem_400b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %470 to i32*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 5
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %ECX.i272 = bitcast %union.anon* %473 to i32*
  %474 = load i32, i32* %EAX.i271
  %475 = zext i32 %474 to i64
  %476 = load i32, i32* %ECX.i272
  %477 = zext i32 %476 to i64
  %478 = load i64, i64* %PC.i270
  %479 = add i64 %478, 2
  store i64 %479, i64* %PC.i270
  %480 = sub i32 %474, %476
  %481 = icmp ult i32 %474, %476
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %482, i8* %483, align 1
  %484 = and i32 %480, 255
  %485 = call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %488, i8* %489, align 1
  %490 = xor i64 %477, %475
  %491 = trunc i64 %490 to i32
  %492 = xor i32 %491, %480
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i32 %480, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %480, 31
  %501 = trunc i32 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = lshr i32 %474, 31
  %504 = lshr i32 %476, 31
  %505 = xor i32 %504, %503
  %506 = xor i32 %500, %503
  %507 = add i32 %506, %505
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %509, i8* %510, align 1
  store %struct.Memory* %loadMem_400b1e, %struct.Memory** %MEMORY
  %loadMem_400b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %PC.i269
  %515 = add i64 %514, 362
  %516 = load i64, i64* %PC.i269
  %517 = add i64 %516, 6
  %518 = load i64, i64* %PC.i269
  %519 = add i64 %518, 6
  store i64 %519, i64* %PC.i269
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %521 = load i8, i8* %520, align 1
  %522 = icmp eq i8 %521, 0
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %524 = load i8, i8* %523, align 1
  %525 = icmp ne i8 %524, 0
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %527 = load i8, i8* %526, align 1
  %528 = icmp ne i8 %527, 0
  %529 = xor i1 %525, %528
  %530 = xor i1 %529, true
  %531 = and i1 %522, %530
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %BRANCH_TAKEN, align 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %534 = select i1 %531, i64 %515, i64 %517
  store i64 %534, i64* %533, align 8
  store %struct.Memory* %loadMem_400b20, %struct.Memory** %MEMORY
  %loadBr_400b20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b20 = icmp eq i8 %loadBr_400b20, 1
  br i1 %cmpBr_400b20, label %block_.L_400c8a, label %block_400b26

block_400b26:                                     ; preds = %block_.L_400b15
  %loadMem_400b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %538, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %539 to %"class.std::bitset"*
  %540 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %541 = load i64, i64* %PC.i268
  %542 = add i64 %541, 1498
  %543 = load i64, i64* %PC.i268
  %544 = add i64 %543, 8
  store i64 %544, i64* %PC.i268
  %545 = inttoptr i64 %542 to double*
  %546 = load double, double* %545
  %547 = bitcast i8* %540 to double*
  store double %546, double* %547, align 1
  %548 = getelementptr inbounds i8, i8* %540, i64 8
  %549 = bitcast i8* %548 to double*
  store double 0.000000e+00, double* %549, align 1
  store %struct.Memory* %loadMem_400b26, %struct.Memory** %MEMORY
  %loadMem_400b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %RBP.i267
  %560 = sub i64 %559, 16
  %561 = load i64, i64* %PC.i265
  %562 = add i64 %561, 4
  store i64 %562, i64* %PC.i265
  %563 = inttoptr i64 %560 to i64*
  %564 = load i64, i64* %563
  store i64 %564, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_400b2e, %struct.Memory** %MEMORY
  %loadMem_400b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 5
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RBP.i264
  %575 = sub i64 %574, 24
  %576 = load i64, i64* %PC.i262
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC.i262
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_400b32, %struct.Memory** %MEMORY
  %loadMem_400b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RCX.i261
  %588 = load i64, i64* %PC.i260
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC.i260
  %590 = trunc i64 %587 to i32
  %591 = sub i32 %590, 1
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RCX.i261, align 8
  %593 = icmp ult i32 %590, 1
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %594, i8* %595, align 1
  %596 = and i32 %591, 255
  %597 = call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %601, align 1
  %602 = xor i64 1, %587
  %603 = trunc i64 %602 to i32
  %604 = xor i32 %603, %591
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %607, i8* %608, align 1
  %609 = icmp eq i32 %591, 0
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %610, i8* %611, align 1
  %612 = lshr i32 %591, 31
  %613 = trunc i32 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %613, i8* %614, align 1
  %615 = lshr i32 %590, 31
  %616 = xor i32 %612, %615
  %617 = add i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1
  store %struct.Memory* %loadMem_400b35, %struct.Memory** %MEMORY
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 5
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %ECX.i258 = bitcast %union.anon* %626 to i32*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 7
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %629 to i64*
  %630 = load i32, i32* %ECX.i258
  %631 = zext i32 %630 to i64
  %632 = load i64, i64* %PC.i257
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC.i257
  %634 = shl i64 %631, 32
  %635 = ashr exact i64 %634, 32
  store i64 %635, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_400b38, %struct.Memory** %MEMORY
  %loadMem_400b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 7
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RDX.i256
  %643 = load i64, i64* %PC.i255
  %644 = add i64 %643, 7
  store i64 %644, i64* %PC.i255
  %645 = sext i64 %642 to i128
  %646 = and i128 %645, -18446744073709551616
  %647 = zext i64 %642 to i128
  %648 = or i128 %646, %647
  %649 = mul i128 8000, %648
  %650 = trunc i128 %649 to i64
  store i64 %650, i64* %RDX.i256, align 8
  %651 = sext i64 %650 to i128
  %652 = icmp ne i128 %651, %649
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %653, i8* %654, align 1
  %655 = trunc i128 %649 to i32
  %656 = and i32 %655, 255
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
  %664 = lshr i64 %650, 63
  %665 = trunc i64 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %653, i8* %667, align 1
  store %struct.Memory* %loadMem_400b3b, %struct.Memory** %MEMORY
  %loadMem_400b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 7
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RAX.i253
  %678 = load i64, i64* %RDX.i254
  %679 = load i64, i64* %PC.i252
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i252
  %681 = add i64 %678, %677
  store i64 %681, i64* %RAX.i253, align 8
  %682 = icmp ult i64 %681, %677
  %683 = icmp ult i64 %681, %678
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %685, i8* %686, align 1
  %687 = trunc i64 %681 to i32
  %688 = and i32 %687, 255
  %689 = call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %692, i8* %693, align 1
  %694 = xor i64 %678, %677
  %695 = xor i64 %694, %681
  %696 = lshr i64 %695, 4
  %697 = trunc i64 %696 to i8
  %698 = and i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %698, i8* %699, align 1
  %700 = icmp eq i64 %681, 0
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %701, i8* %702, align 1
  %703 = lshr i64 %681, 63
  %704 = trunc i64 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %704, i8* %705, align 1
  %706 = lshr i64 %677, 63
  %707 = lshr i64 %678, 63
  %708 = xor i64 %703, %706
  %709 = xor i64 %703, %707
  %710 = add i64 %708, %709
  %711 = icmp eq i64 %710, 2
  %712 = zext i1 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %712, i8* %713, align 1
  store %struct.Memory* %loadMem_400b42, %struct.Memory** %MEMORY
  %loadMem_400b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 5
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i251
  %724 = sub i64 %723, 28
  %725 = load i64, i64* %PC.i249
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC.i249
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_400b45, %struct.Memory** %MEMORY
  %loadMem_400b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 5
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %RCX.i248
  %737 = load i64, i64* %PC.i247
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i247
  %739 = trunc i64 %736 to i32
  %740 = sub i32 %739, 1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RCX.i248, align 8
  %742 = icmp ult i32 %739, 1
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1
  %745 = and i32 %740, 255
  %746 = call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %749, i8* %750, align 1
  %751 = xor i64 1, %736
  %752 = trunc i64 %751 to i32
  %753 = xor i32 %752, %740
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %756, i8* %757, align 1
  %758 = icmp eq i32 %740, 0
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %759, i8* %760, align 1
  %761 = lshr i32 %740, 31
  %762 = trunc i32 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %762, i8* %763, align 1
  %764 = lshr i32 %739, 31
  %765 = xor i32 %761, %764
  %766 = add i32 %765, %764
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %768, i8* %769, align 1
  store %struct.Memory* %loadMem_400b48, %struct.Memory** %MEMORY
  %loadMem_400b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 5
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %ECX.i245 = bitcast %union.anon* %775 to i32*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 7
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %778 to i64*
  %779 = load i32, i32* %ECX.i245
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC.i244
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i244
  %783 = shl i64 %780, 32
  %784 = ashr exact i64 %783, 32
  store i64 %784, i64* %RDX.i246, align 8
  store %struct.Memory* %loadMem_400b4b, %struct.Memory** %MEMORY
  %loadMem_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 1
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 7
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %795 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %794, i64 0, i64 1
  %YMM1.i243 = bitcast %union.VectorReg* %795 to %"class.std::bitset"*
  %796 = bitcast %"class.std::bitset"* %YMM1.i243 to i8*
  %797 = load i64, i64* %RAX.i241
  %798 = load i64, i64* %RDX.i242
  %799 = mul i64 %798, 8
  %800 = add i64 %799, %797
  %801 = load i64, i64* %PC.i240
  %802 = add i64 %801, 5
  store i64 %802, i64* %PC.i240
  %803 = inttoptr i64 %800 to double*
  %804 = load double, double* %803
  %805 = bitcast i8* %796 to double*
  store double %804, double* %805, align 1
  %806 = getelementptr inbounds i8, i8* %796, i64 8
  %807 = bitcast i8* %806 to double*
  store double 0.000000e+00, double* %807, align 1
  store %struct.Memory* %loadMem_400b4e, %struct.Memory** %MEMORY
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 15
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RBP.i239
  %818 = sub i64 %817, 16
  %819 = load i64, i64* %PC.i237
  %820 = add i64 %819, 4
  store i64 %820, i64* %PC.i237
  %821 = inttoptr i64 %818 to i64*
  %822 = load i64, i64* %821
  store i64 %822, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_400b53, %struct.Memory** %MEMORY
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 5
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 15
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %RBP.i236
  %833 = sub i64 %832, 24
  %834 = load i64, i64* %PC.i234
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC.i234
  %836 = inttoptr i64 %833 to i32*
  %837 = load i32, i32* %836
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem_400b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 5
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RCX.i233
  %846 = load i64, i64* %PC.i232
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC.i232
  %848 = trunc i64 %845 to i32
  %849 = sub i32 %848, 1
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i233, align 8
  %851 = icmp ult i32 %848, 1
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %852, i8* %853, align 1
  %854 = and i32 %849, 255
  %855 = call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %858, i8* %859, align 1
  %860 = xor i64 1, %845
  %861 = trunc i64 %860 to i32
  %862 = xor i32 %861, %849
  %863 = lshr i32 %862, 4
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %865, i8* %866, align 1
  %867 = icmp eq i32 %849, 0
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %849, 31
  %871 = trunc i32 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %871, i8* %872, align 1
  %873 = lshr i32 %848, 31
  %874 = xor i32 %870, %873
  %875 = add i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %877, i8* %878, align 1
  store %struct.Memory* %loadMem_400b5a, %struct.Memory** %MEMORY
  %loadMem_400b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 5
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %ECX.i230 = bitcast %union.anon* %884 to i32*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 7
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %887 to i64*
  %888 = load i32, i32* %ECX.i230
  %889 = zext i32 %888 to i64
  %890 = load i64, i64* %PC.i229
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i229
  %892 = shl i64 %889, 32
  %893 = ashr exact i64 %892, 32
  store i64 %893, i64* %RDX.i231, align 8
  store %struct.Memory* %loadMem_400b5d, %struct.Memory** %MEMORY
  %loadMem_400b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 7
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RDX.i228
  %901 = load i64, i64* %PC.i227
  %902 = add i64 %901, 7
  store i64 %902, i64* %PC.i227
  %903 = sext i64 %900 to i128
  %904 = and i128 %903, -18446744073709551616
  %905 = zext i64 %900 to i128
  %906 = or i128 %904, %905
  %907 = mul i128 8000, %906
  %908 = trunc i128 %907 to i64
  store i64 %908, i64* %RDX.i228, align 8
  %909 = sext i64 %908 to i128
  %910 = icmp ne i128 %909, %907
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %911, i8* %912, align 1
  %913 = trunc i128 %907 to i32
  %914 = and i32 %913, 255
  %915 = call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %918, i8* %919, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %920, align 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %921, align 1
  %922 = lshr i64 %908, 63
  %923 = trunc i64 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %923, i8* %924, align 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %911, i8* %925, align 1
  store %struct.Memory* %loadMem_400b60, %struct.Memory** %MEMORY
  %loadMem_400b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 7
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RAX.i225
  %936 = load i64, i64* %RDX.i226
  %937 = load i64, i64* %PC.i224
  %938 = add i64 %937, 3
  store i64 %938, i64* %PC.i224
  %939 = add i64 %936, %935
  store i64 %939, i64* %RAX.i225, align 8
  %940 = icmp ult i64 %939, %935
  %941 = icmp ult i64 %939, %936
  %942 = or i1 %940, %941
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %943, i8* %944, align 1
  %945 = trunc i64 %939 to i32
  %946 = and i32 %945, 255
  %947 = call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %950, i8* %951, align 1
  %952 = xor i64 %936, %935
  %953 = xor i64 %952, %939
  %954 = lshr i64 %953, 4
  %955 = trunc i64 %954 to i8
  %956 = and i8 %955, 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %956, i8* %957, align 1
  %958 = icmp eq i64 %939, 0
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %959, i8* %960, align 1
  %961 = lshr i64 %939, 63
  %962 = trunc i64 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %962, i8* %963, align 1
  %964 = lshr i64 %935, 63
  %965 = lshr i64 %936, 63
  %966 = xor i64 %961, %964
  %967 = xor i64 %961, %965
  %968 = add i64 %966, %967
  %969 = icmp eq i64 %968, 2
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %970, i8* %971, align 1
  store %struct.Memory* %loadMem_400b67, %struct.Memory** %MEMORY
  %loadMem_400b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 7
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RDX.i222 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %RBP.i223
  %982 = sub i64 %981, 28
  %983 = load i64, i64* %PC.i221
  %984 = add i64 %983, 4
  store i64 %984, i64* %PC.i221
  %985 = inttoptr i64 %982 to i32*
  %986 = load i32, i32* %985
  %987 = sext i32 %986 to i64
  store i64 %987, i64* %RDX.i222, align 8
  store %struct.Memory* %loadMem_400b6a, %struct.Memory** %MEMORY
  %loadMem_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 1
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 7
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %997, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %998 to %"class.std::bitset"*
  %999 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %1000 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %1001 = load i64, i64* %RAX.i218
  %1002 = load i64, i64* %RDX.i219
  %1003 = mul i64 %1002, 8
  %1004 = add i64 %1003, %1001
  %1005 = load i64, i64* %PC.i217
  %1006 = add i64 %1005, 5
  store i64 %1006, i64* %PC.i217
  %1007 = bitcast i8* %1000 to double*
  %1008 = load double, double* %1007, align 1
  %1009 = getelementptr inbounds i8, i8* %1000, i64 8
  %1010 = bitcast i8* %1009 to i64*
  %1011 = load i64, i64* %1010, align 1
  %1012 = inttoptr i64 %1004 to double*
  %1013 = load double, double* %1012
  %1014 = fadd double %1008, %1013
  %1015 = bitcast i8* %999 to double*
  store double %1014, double* %1015, align 1
  %1016 = getelementptr inbounds i8, i8* %999, i64 8
  %1017 = bitcast i8* %1016 to i64*
  store i64 %1011, i64* %1017, align 1
  store %struct.Memory* %loadMem_400b6e, %struct.Memory** %MEMORY
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RBP.i216
  %1028 = sub i64 %1027, 16
  %1029 = load i64, i64* %PC.i214
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i214
  %1031 = inttoptr i64 %1028 to i64*
  %1032 = load i64, i64* %1031
  store i64 %1032, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 5
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 15
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %RBP.i213
  %1043 = sub i64 %1042, 24
  %1044 = load i64, i64* %PC.i211
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC.i211
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i212, align 8
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadMem_400b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RCX.i210
  %1056 = load i64, i64* %PC.i209
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %PC.i209
  %1058 = trunc i64 %1055 to i32
  %1059 = sub i32 %1058, 1
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RCX.i210, align 8
  %1061 = icmp ult i32 %1058, 1
  %1062 = zext i1 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1062, i8* %1063, align 1
  %1064 = and i32 %1059, 255
  %1065 = call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1068, i8* %1069, align 1
  %1070 = xor i64 1, %1055
  %1071 = trunc i64 %1070 to i32
  %1072 = xor i32 %1071, %1059
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1075, i8* %1076, align 1
  %1077 = icmp eq i32 %1059, 0
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1078, i8* %1079, align 1
  %1080 = lshr i32 %1059, 31
  %1081 = trunc i32 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1081, i8* %1082, align 1
  %1083 = lshr i32 %1058, 31
  %1084 = xor i32 %1080, %1083
  %1085 = add i32 %1084, %1083
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1087, i8* %1088, align 1
  store %struct.Memory* %loadMem_400b7a, %struct.Memory** %MEMORY
  %loadMem_400b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 5
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %ECX.i207 = bitcast %union.anon* %1094 to i32*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 7
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %1097 to i64*
  %1098 = load i32, i32* %ECX.i207
  %1099 = zext i32 %1098 to i64
  %1100 = load i64, i64* %PC.i206
  %1101 = add i64 %1100, 3
  store i64 %1101, i64* %PC.i206
  %1102 = shl i64 %1099, 32
  %1103 = ashr exact i64 %1102, 32
  store i64 %1103, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_400b7d, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 7
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RDX.i205
  %1111 = load i64, i64* %PC.i204
  %1112 = add i64 %1111, 7
  store i64 %1112, i64* %PC.i204
  %1113 = sext i64 %1110 to i128
  %1114 = and i128 %1113, -18446744073709551616
  %1115 = zext i64 %1110 to i128
  %1116 = or i128 %1114, %1115
  %1117 = mul i128 8000, %1116
  %1118 = trunc i128 %1117 to i64
  store i64 %1118, i64* %RDX.i205, align 8
  %1119 = sext i64 %1118 to i128
  %1120 = icmp ne i128 %1119, %1117
  %1121 = zext i1 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1121, i8* %1122, align 1
  %1123 = trunc i128 %1117 to i32
  %1124 = and i32 %1123, 255
  %1125 = call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1128, i8* %1129, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1130, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1131, align 1
  %1132 = lshr i64 %1118, 63
  %1133 = trunc i64 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1133, i8* %1134, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1121, i8* %1135, align 1
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem_400b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 7
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RAX.i202
  %1146 = load i64, i64* %RDX.i203
  %1147 = load i64, i64* %PC.i201
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i201
  %1149 = add i64 %1146, %1145
  store i64 %1149, i64* %RAX.i202, align 8
  %1150 = icmp ult i64 %1149, %1145
  %1151 = icmp ult i64 %1149, %1146
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1153, i8* %1154, align 1
  %1155 = trunc i64 %1149 to i32
  %1156 = and i32 %1155, 255
  %1157 = call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1160, i8* %1161, align 1
  %1162 = xor i64 %1146, %1145
  %1163 = xor i64 %1162, %1149
  %1164 = lshr i64 %1163, 4
  %1165 = trunc i64 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1166, i8* %1167, align 1
  %1168 = icmp eq i64 %1149, 0
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1169, i8* %1170, align 1
  %1171 = lshr i64 %1149, 63
  %1172 = trunc i64 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1172, i8* %1173, align 1
  %1174 = lshr i64 %1145, 63
  %1175 = lshr i64 %1146, 63
  %1176 = xor i64 %1171, %1174
  %1177 = xor i64 %1171, %1175
  %1178 = add i64 %1176, %1177
  %1179 = icmp eq i64 %1178, 2
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1180, i8* %1181, align 1
  store %struct.Memory* %loadMem_400b87, %struct.Memory** %MEMORY
  %loadMem_400b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 5
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 15
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RBP.i200
  %1192 = sub i64 %1191, 28
  %1193 = load i64, i64* %PC.i198
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC.i198
  %1195 = inttoptr i64 %1192 to i32*
  %1196 = load i32, i32* %1195
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_400b8a, %struct.Memory** %MEMORY
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 5
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RCX.i197
  %1205 = load i64, i64* %PC.i196
  %1206 = add i64 %1205, 3
  store i64 %1206, i64* %PC.i196
  %1207 = trunc i64 %1204 to i32
  %1208 = add i32 1, %1207
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i197, align 8
  %1210 = icmp ult i32 %1208, %1207
  %1211 = icmp ult i32 %1208, 1
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1213, i8* %1214, align 1
  %1215 = and i32 %1208, 255
  %1216 = call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1219, i8* %1220, align 1
  %1221 = xor i64 1, %1204
  %1222 = trunc i64 %1221 to i32
  %1223 = xor i32 %1222, %1208
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1226, i8* %1227, align 1
  %1228 = icmp eq i32 %1208, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1
  %1231 = lshr i32 %1208, 31
  %1232 = trunc i32 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1232, i8* %1233, align 1
  %1234 = lshr i32 %1207, 31
  %1235 = xor i32 %1231, %1234
  %1236 = add i32 %1235, %1231
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1238, i8* %1239, align 1
  store %struct.Memory* %loadMem_400b8d, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 5
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %ECX.i194 = bitcast %union.anon* %1245 to i32*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 7
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %1248 to i64*
  %1249 = load i32, i32* %ECX.i194
  %1250 = zext i32 %1249 to i64
  %1251 = load i64, i64* %PC.i193
  %1252 = add i64 %1251, 3
  store i64 %1252, i64* %PC.i193
  %1253 = shl i64 %1250, 32
  %1254 = ashr exact i64 %1253, 32
  store i64 %1254, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  %loadMem_400b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 7
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1264, i64 0, i64 1
  %YMM1.i192 = bitcast %union.VectorReg* %1265 to %"class.std::bitset"*
  %1266 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %1267 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %1268 = load i64, i64* %RAX.i190
  %1269 = load i64, i64* %RDX.i191
  %1270 = mul i64 %1269, 8
  %1271 = add i64 %1270, %1268
  %1272 = load i64, i64* %PC.i189
  %1273 = add i64 %1272, 5
  store i64 %1273, i64* %PC.i189
  %1274 = bitcast i8* %1267 to double*
  %1275 = load double, double* %1274, align 1
  %1276 = getelementptr inbounds i8, i8* %1267, i64 8
  %1277 = bitcast i8* %1276 to i64*
  %1278 = load i64, i64* %1277, align 1
  %1279 = inttoptr i64 %1271 to double*
  %1280 = load double, double* %1279
  %1281 = fadd double %1275, %1280
  %1282 = bitcast i8* %1266 to double*
  store double %1281, double* %1282, align 1
  %1283 = getelementptr inbounds i8, i8* %1266, i64 8
  %1284 = bitcast i8* %1283 to i64*
  store i64 %1278, i64* %1284, align 1
  store %struct.Memory* %loadMem_400b93, %struct.Memory** %MEMORY
  %loadMem_400b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 1
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 15
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %RBP.i188
  %1295 = sub i64 %1294, 16
  %1296 = load i64, i64* %PC.i186
  %1297 = add i64 %1296, 4
  store i64 %1297, i64* %PC.i186
  %1298 = inttoptr i64 %1295 to i64*
  %1299 = load i64, i64* %1298
  store i64 %1299, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_400b98, %struct.Memory** %MEMORY
  %loadMem_400b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 7
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 15
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RBP.i185
  %1310 = sub i64 %1309, 24
  %1311 = load i64, i64* %PC.i183
  %1312 = add i64 %1311, 4
  store i64 %1312, i64* %PC.i183
  %1313 = inttoptr i64 %1310 to i32*
  %1314 = load i32, i32* %1313
  %1315 = sext i32 %1314 to i64
  store i64 %1315, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_400b9c, %struct.Memory** %MEMORY
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 7
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RDX.i182 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %RDX.i182
  %1323 = load i64, i64* %PC.i181
  %1324 = add i64 %1323, 7
  store i64 %1324, i64* %PC.i181
  %1325 = sext i64 %1322 to i128
  %1326 = and i128 %1325, -18446744073709551616
  %1327 = zext i64 %1322 to i128
  %1328 = or i128 %1326, %1327
  %1329 = mul i128 8000, %1328
  %1330 = trunc i128 %1329 to i64
  store i64 %1330, i64* %RDX.i182, align 8
  %1331 = sext i64 %1330 to i128
  %1332 = icmp ne i128 %1331, %1329
  %1333 = zext i1 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1333, i8* %1334, align 1
  %1335 = trunc i128 %1329 to i32
  %1336 = and i32 %1335, 255
  %1337 = call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1340, i8* %1341, align 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1342, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1343, align 1
  %1344 = lshr i64 %1330, 63
  %1345 = trunc i64 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1345, i8* %1346, align 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1333, i8* %1347, align 1
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  %loadMem_400ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 1
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 7
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RAX.i179
  %1358 = load i64, i64* %RDX.i180
  %1359 = load i64, i64* %PC.i178
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC.i178
  %1361 = add i64 %1358, %1357
  store i64 %1361, i64* %RAX.i179, align 8
  %1362 = icmp ult i64 %1361, %1357
  %1363 = icmp ult i64 %1361, %1358
  %1364 = or i1 %1362, %1363
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1365, i8* %1366, align 1
  %1367 = trunc i64 %1361 to i32
  %1368 = and i32 %1367, 255
  %1369 = call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1372, i8* %1373, align 1
  %1374 = xor i64 %1358, %1357
  %1375 = xor i64 %1374, %1361
  %1376 = lshr i64 %1375, 4
  %1377 = trunc i64 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1378, i8* %1379, align 1
  %1380 = icmp eq i64 %1361, 0
  %1381 = zext i1 %1380 to i8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1381, i8* %1382, align 1
  %1383 = lshr i64 %1361, 63
  %1384 = trunc i64 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1384, i8* %1385, align 1
  %1386 = lshr i64 %1357, 63
  %1387 = lshr i64 %1358, 63
  %1388 = xor i64 %1383, %1386
  %1389 = xor i64 %1383, %1387
  %1390 = add i64 %1388, %1389
  %1391 = icmp eq i64 %1390, 2
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1392, i8* %1393, align 1
  store %struct.Memory* %loadMem_400ba7, %struct.Memory** %MEMORY
  %loadMem_400baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i177
  %1404 = sub i64 %1403, 28
  %1405 = load i64, i64* %PC.i175
  %1406 = add i64 %1405, 3
  store i64 %1406, i64* %PC.i175
  %1407 = inttoptr i64 %1404 to i32*
  %1408 = load i32, i32* %1407
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_400baa, %struct.Memory** %MEMORY
  %loadMem_400bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 5
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %RCX.i174
  %1417 = load i64, i64* %PC.i173
  %1418 = add i64 %1417, 3
  store i64 %1418, i64* %PC.i173
  %1419 = trunc i64 %1416 to i32
  %1420 = sub i32 %1419, 1
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RCX.i174, align 8
  %1422 = icmp ult i32 %1419, 1
  %1423 = zext i1 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1423, i8* %1424, align 1
  %1425 = and i32 %1420, 255
  %1426 = call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1429, i8* %1430, align 1
  %1431 = xor i64 1, %1416
  %1432 = trunc i64 %1431 to i32
  %1433 = xor i32 %1432, %1420
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1436, i8* %1437, align 1
  %1438 = icmp eq i32 %1420, 0
  %1439 = zext i1 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1439, i8* %1440, align 1
  %1441 = lshr i32 %1420, 31
  %1442 = trunc i32 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1442, i8* %1443, align 1
  %1444 = lshr i32 %1419, 31
  %1445 = xor i32 %1441, %1444
  %1446 = add i32 %1445, %1444
  %1447 = icmp eq i32 %1446, 2
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1448, i8* %1449, align 1
  store %struct.Memory* %loadMem_400bad, %struct.Memory** %MEMORY
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 5
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %ECX.i171 = bitcast %union.anon* %1455 to i32*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 7
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %1458 to i64*
  %1459 = load i32, i32* %ECX.i171
  %1460 = zext i32 %1459 to i64
  %1461 = load i64, i64* %PC.i170
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %PC.i170
  %1463 = shl i64 %1460, 32
  %1464 = ashr exact i64 %1463, 32
  store i64 %1464, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_400bb0, %struct.Memory** %MEMORY
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 7
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1474, i64 0, i64 1
  %YMM1.i169 = bitcast %union.VectorReg* %1475 to %"class.std::bitset"*
  %1476 = bitcast %"class.std::bitset"* %YMM1.i169 to i8*
  %1477 = bitcast %"class.std::bitset"* %YMM1.i169 to i8*
  %1478 = load i64, i64* %RAX.i167
  %1479 = load i64, i64* %RDX.i168
  %1480 = mul i64 %1479, 8
  %1481 = add i64 %1480, %1478
  %1482 = load i64, i64* %PC.i166
  %1483 = add i64 %1482, 5
  store i64 %1483, i64* %PC.i166
  %1484 = bitcast i8* %1477 to double*
  %1485 = load double, double* %1484, align 1
  %1486 = getelementptr inbounds i8, i8* %1477, i64 8
  %1487 = bitcast i8* %1486 to i64*
  %1488 = load i64, i64* %1487, align 1
  %1489 = inttoptr i64 %1481 to double*
  %1490 = load double, double* %1489
  %1491 = fadd double %1485, %1490
  %1492 = bitcast i8* %1476 to double*
  store double %1491, double* %1492, align 1
  %1493 = getelementptr inbounds i8, i8* %1476, i64 8
  %1494 = bitcast i8* %1493 to i64*
  store i64 %1488, i64* %1494, align 1
  store %struct.Memory* %loadMem_400bb3, %struct.Memory** %MEMORY
  %loadMem_400bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 1
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i165
  %1505 = sub i64 %1504, 16
  %1506 = load i64, i64* %PC.i163
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC.i163
  %1508 = inttoptr i64 %1505 to i64*
  %1509 = load i64, i64* %1508
  store i64 %1509, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_400bb8, %struct.Memory** %MEMORY
  %loadMem_400bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 7
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i162
  %1520 = sub i64 %1519, 24
  %1521 = load i64, i64* %PC.i160
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i160
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_400bbc, %struct.Memory** %MEMORY
  %loadMem_400bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 7
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RDX.i159
  %1533 = load i64, i64* %PC.i158
  %1534 = add i64 %1533, 7
  store i64 %1534, i64* %PC.i158
  %1535 = sext i64 %1532 to i128
  %1536 = and i128 %1535, -18446744073709551616
  %1537 = zext i64 %1532 to i128
  %1538 = or i128 %1536, %1537
  %1539 = mul i128 8000, %1538
  %1540 = trunc i128 %1539 to i64
  store i64 %1540, i64* %RDX.i159, align 8
  %1541 = sext i64 %1540 to i128
  %1542 = icmp ne i128 %1541, %1539
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1543, i8* %1544, align 1
  %1545 = trunc i128 %1539 to i32
  %1546 = and i32 %1545, 255
  %1547 = call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1550, i8* %1551, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1552, align 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1553, align 1
  %1554 = lshr i64 %1540, 63
  %1555 = trunc i64 %1554 to i8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1555, i8* %1556, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1543, i8* %1557, align 1
  store %struct.Memory* %loadMem_400bc0, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 7
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RAX.i156
  %1568 = load i64, i64* %RDX.i157
  %1569 = load i64, i64* %PC.i155
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i155
  %1571 = add i64 %1568, %1567
  store i64 %1571, i64* %RAX.i156, align 8
  %1572 = icmp ult i64 %1571, %1567
  %1573 = icmp ult i64 %1571, %1568
  %1574 = or i1 %1572, %1573
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1575, i8* %1576, align 1
  %1577 = trunc i64 %1571 to i32
  %1578 = and i32 %1577, 255
  %1579 = call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1582, i8* %1583, align 1
  %1584 = xor i64 %1568, %1567
  %1585 = xor i64 %1584, %1571
  %1586 = lshr i64 %1585, 4
  %1587 = trunc i64 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1588, i8* %1589, align 1
  %1590 = icmp eq i64 %1571, 0
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1591, i8* %1592, align 1
  %1593 = lshr i64 %1571, 63
  %1594 = trunc i64 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1594, i8* %1595, align 1
  %1596 = lshr i64 %1567, 63
  %1597 = lshr i64 %1568, 63
  %1598 = xor i64 %1593, %1596
  %1599 = xor i64 %1593, %1597
  %1600 = add i64 %1598, %1599
  %1601 = icmp eq i64 %1600, 2
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1602, i8* %1603, align 1
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  %loadMem_400bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 7
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i154
  %1614 = sub i64 %1613, 28
  %1615 = load i64, i64* %PC.i152
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %PC.i152
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617
  %1619 = sext i32 %1618 to i64
  store i64 %1619, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_400bca, %struct.Memory** %MEMORY
  %loadMem_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 1
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 7
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %1630 to %"class.std::bitset"*
  %1631 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %1632 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %1633 = load i64, i64* %RAX.i149
  %1634 = load i64, i64* %RDX.i150
  %1635 = mul i64 %1634, 8
  %1636 = add i64 %1635, %1633
  %1637 = load i64, i64* %PC.i148
  %1638 = add i64 %1637, 5
  store i64 %1638, i64* %PC.i148
  %1639 = bitcast i8* %1632 to double*
  %1640 = load double, double* %1639, align 1
  %1641 = getelementptr inbounds i8, i8* %1632, i64 8
  %1642 = bitcast i8* %1641 to i64*
  %1643 = load i64, i64* %1642, align 1
  %1644 = inttoptr i64 %1636 to double*
  %1645 = load double, double* %1644
  %1646 = fadd double %1640, %1645
  %1647 = bitcast i8* %1631 to double*
  store double %1646, double* %1647, align 1
  %1648 = getelementptr inbounds i8, i8* %1631, i64 8
  %1649 = bitcast i8* %1648 to i64*
  store i64 %1643, i64* %1649, align 1
  store %struct.Memory* %loadMem_400bce, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 1
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RBP.i147
  %1660 = sub i64 %1659, 16
  %1661 = load i64, i64* %PC.i145
  %1662 = add i64 %1661, 4
  store i64 %1662, i64* %PC.i145
  %1663 = inttoptr i64 %1660 to i64*
  %1664 = load i64, i64* %1663
  store i64 %1664, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadMem_400bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 7
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i144
  %1675 = sub i64 %1674, 24
  %1676 = load i64, i64* %PC.i142
  %1677 = add i64 %1676, 4
  store i64 %1677, i64* %PC.i142
  %1678 = inttoptr i64 %1675 to i32*
  %1679 = load i32, i32* %1678
  %1680 = sext i32 %1679 to i64
  store i64 %1680, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_400bd7, %struct.Memory** %MEMORY
  %loadMem_400bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 7
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %RDX.i141
  %1688 = load i64, i64* %PC.i140
  %1689 = add i64 %1688, 7
  store i64 %1689, i64* %PC.i140
  %1690 = sext i64 %1687 to i128
  %1691 = and i128 %1690, -18446744073709551616
  %1692 = zext i64 %1687 to i128
  %1693 = or i128 %1691, %1692
  %1694 = mul i128 8000, %1693
  %1695 = trunc i128 %1694 to i64
  store i64 %1695, i64* %RDX.i141, align 8
  %1696 = sext i64 %1695 to i128
  %1697 = icmp ne i128 %1696, %1694
  %1698 = zext i1 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1698, i8* %1699, align 1
  %1700 = trunc i128 %1694 to i32
  %1701 = and i32 %1700, 255
  %1702 = call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1705, i8* %1706, align 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1707, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1708, align 1
  %1709 = lshr i64 %1695, 63
  %1710 = trunc i64 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1710, i8* %1711, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1698, i8* %1712, align 1
  store %struct.Memory* %loadMem_400bdb, %struct.Memory** %MEMORY
  %loadMem_400be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 7
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RAX.i138
  %1723 = load i64, i64* %RDX.i139
  %1724 = load i64, i64* %PC.i137
  %1725 = add i64 %1724, 3
  store i64 %1725, i64* %PC.i137
  %1726 = add i64 %1723, %1722
  store i64 %1726, i64* %RAX.i138, align 8
  %1727 = icmp ult i64 %1726, %1722
  %1728 = icmp ult i64 %1726, %1723
  %1729 = or i1 %1727, %1728
  %1730 = zext i1 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1730, i8* %1731, align 1
  %1732 = trunc i64 %1726 to i32
  %1733 = and i32 %1732, 255
  %1734 = call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1737, i8* %1738, align 1
  %1739 = xor i64 %1723, %1722
  %1740 = xor i64 %1739, %1726
  %1741 = lshr i64 %1740, 4
  %1742 = trunc i64 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1743, i8* %1744, align 1
  %1745 = icmp eq i64 %1726, 0
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1746, i8* %1747, align 1
  %1748 = lshr i64 %1726, 63
  %1749 = trunc i64 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1749, i8* %1750, align 1
  %1751 = lshr i64 %1722, 63
  %1752 = lshr i64 %1723, 63
  %1753 = xor i64 %1748, %1751
  %1754 = xor i64 %1748, %1752
  %1755 = add i64 %1753, %1754
  %1756 = icmp eq i64 %1755, 2
  %1757 = zext i1 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1757, i8* %1758, align 1
  store %struct.Memory* %loadMem_400be2, %struct.Memory** %MEMORY
  %loadMem_400be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 5
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RBP.i136
  %1769 = sub i64 %1768, 28
  %1770 = load i64, i64* %PC.i134
  %1771 = add i64 %1770, 3
  store i64 %1771, i64* %PC.i134
  %1772 = inttoptr i64 %1769 to i32*
  %1773 = load i32, i32* %1772
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_400be5, %struct.Memory** %MEMORY
  %loadMem_400be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %RCX.i133
  %1782 = load i64, i64* %PC.i132
  %1783 = add i64 %1782, 3
  store i64 %1783, i64* %PC.i132
  %1784 = trunc i64 %1781 to i32
  %1785 = add i32 1, %1784
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RCX.i133, align 8
  %1787 = icmp ult i32 %1785, %1784
  %1788 = icmp ult i32 %1785, 1
  %1789 = or i1 %1787, %1788
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1790, i8* %1791, align 1
  %1792 = and i32 %1785, 255
  %1793 = call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1796, i8* %1797, align 1
  %1798 = xor i64 1, %1781
  %1799 = trunc i64 %1798 to i32
  %1800 = xor i32 %1799, %1785
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1803, i8* %1804, align 1
  %1805 = icmp eq i32 %1785, 0
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1785, 31
  %1809 = trunc i32 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1784, 31
  %1812 = xor i32 %1808, %1811
  %1813 = add i32 %1812, %1808
  %1814 = icmp eq i32 %1813, 2
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1815, i8* %1816, align 1
  store %struct.Memory* %loadMem_400be8, %struct.Memory** %MEMORY
  %loadMem_400beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 5
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %ECX.i130 = bitcast %union.anon* %1822 to i32*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 7
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %1825 to i64*
  %1826 = load i32, i32* %ECX.i130
  %1827 = zext i32 %1826 to i64
  %1828 = load i64, i64* %PC.i129
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %PC.i129
  %1830 = shl i64 %1827, 32
  %1831 = ashr exact i64 %1830, 32
  store i64 %1831, i64* %RDX.i131, align 8
  store %struct.Memory* %loadMem_400beb, %struct.Memory** %MEMORY
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 7
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RDX.i127 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1841, i64 0, i64 1
  %YMM1.i128 = bitcast %union.VectorReg* %1842 to %"class.std::bitset"*
  %1843 = bitcast %"class.std::bitset"* %YMM1.i128 to i8*
  %1844 = bitcast %"class.std::bitset"* %YMM1.i128 to i8*
  %1845 = load i64, i64* %RAX.i126
  %1846 = load i64, i64* %RDX.i127
  %1847 = mul i64 %1846, 8
  %1848 = add i64 %1847, %1845
  %1849 = load i64, i64* %PC.i125
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC.i125
  %1851 = bitcast i8* %1844 to double*
  %1852 = load double, double* %1851, align 1
  %1853 = getelementptr inbounds i8, i8* %1844, i64 8
  %1854 = bitcast i8* %1853 to i64*
  %1855 = load i64, i64* %1854, align 1
  %1856 = inttoptr i64 %1848 to double*
  %1857 = load double, double* %1856
  %1858 = fadd double %1852, %1857
  %1859 = bitcast i8* %1843 to double*
  store double %1858, double* %1859, align 1
  %1860 = getelementptr inbounds i8, i8* %1843, i64 8
  %1861 = bitcast i8* %1860 to i64*
  store i64 %1855, i64* %1861, align 1
  store %struct.Memory* %loadMem_400bee, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 15
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RBP.i124
  %1872 = sub i64 %1871, 16
  %1873 = load i64, i64* %PC.i122
  %1874 = add i64 %1873, 4
  store i64 %1874, i64* %PC.i122
  %1875 = inttoptr i64 %1872 to i64*
  %1876 = load i64, i64* %1875
  store i64 %1876, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 5
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RBP.i121
  %1887 = sub i64 %1886, 24
  %1888 = load i64, i64* %PC.i119
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i119
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 5
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RCX.i118
  %1900 = load i64, i64* %PC.i117
  %1901 = add i64 %1900, 3
  store i64 %1901, i64* %PC.i117
  %1902 = trunc i64 %1899 to i32
  %1903 = add i32 1, %1902
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RCX.i118, align 8
  %1905 = icmp ult i32 %1903, %1902
  %1906 = icmp ult i32 %1903, 1
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1908, i8* %1909, align 1
  %1910 = and i32 %1903, 255
  %1911 = call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1914, i8* %1915, align 1
  %1916 = xor i64 1, %1899
  %1917 = trunc i64 %1916 to i32
  %1918 = xor i32 %1917, %1903
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1921, i8* %1922, align 1
  %1923 = icmp eq i32 %1903, 0
  %1924 = zext i1 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1924, i8* %1925, align 1
  %1926 = lshr i32 %1903, 31
  %1927 = trunc i32 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1902, 31
  %1930 = xor i32 %1926, %1929
  %1931 = add i32 %1930, %1926
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1933, i8* %1934, align 1
  store %struct.Memory* %loadMem_400bfa, %struct.Memory** %MEMORY
  %loadMem_400bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 5
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %ECX.i115 = bitcast %union.anon* %1940 to i32*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 7
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %1943 to i64*
  %1944 = load i32, i32* %ECX.i115
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %PC.i114
  %1947 = add i64 %1946, 3
  store i64 %1947, i64* %PC.i114
  %1948 = shl i64 %1945, 32
  %1949 = ashr exact i64 %1948, 32
  store i64 %1949, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_400bfd, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 7
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RDX.i113
  %1957 = load i64, i64* %PC.i112
  %1958 = add i64 %1957, 7
  store i64 %1958, i64* %PC.i112
  %1959 = sext i64 %1956 to i128
  %1960 = and i128 %1959, -18446744073709551616
  %1961 = zext i64 %1956 to i128
  %1962 = or i128 %1960, %1961
  %1963 = mul i128 8000, %1962
  %1964 = trunc i128 %1963 to i64
  store i64 %1964, i64* %RDX.i113, align 8
  %1965 = sext i64 %1964 to i128
  %1966 = icmp ne i128 %1965, %1963
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1
  %1969 = trunc i128 %1963 to i32
  %1970 = and i32 %1969, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1976, align 1
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1977, align 1
  %1978 = lshr i64 %1964, 63
  %1979 = trunc i64 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1979, i8* %1980, align 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1967, i8* %1981, align 1
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 1
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 7
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %1990 to i64*
  %1991 = load i64, i64* %RAX.i110
  %1992 = load i64, i64* %RDX.i111
  %1993 = load i64, i64* %PC.i109
  %1994 = add i64 %1993, 3
  store i64 %1994, i64* %PC.i109
  %1995 = add i64 %1992, %1991
  store i64 %1995, i64* %RAX.i110, align 8
  %1996 = icmp ult i64 %1995, %1991
  %1997 = icmp ult i64 %1995, %1992
  %1998 = or i1 %1996, %1997
  %1999 = zext i1 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1999, i8* %2000, align 1
  %2001 = trunc i64 %1995 to i32
  %2002 = and i32 %2001, 255
  %2003 = call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2006, i8* %2007, align 1
  %2008 = xor i64 %1992, %1991
  %2009 = xor i64 %2008, %1995
  %2010 = lshr i64 %2009, 4
  %2011 = trunc i64 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2012, i8* %2013, align 1
  %2014 = icmp eq i64 %1995, 0
  %2015 = zext i1 %2014 to i8
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2015, i8* %2016, align 1
  %2017 = lshr i64 %1995, 63
  %2018 = trunc i64 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2018, i8* %2019, align 1
  %2020 = lshr i64 %1991, 63
  %2021 = lshr i64 %1992, 63
  %2022 = xor i64 %2017, %2020
  %2023 = xor i64 %2017, %2021
  %2024 = add i64 %2022, %2023
  %2025 = icmp eq i64 %2024, 2
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2026, i8* %2027, align 1
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 5
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 15
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %RBP.i108
  %2038 = sub i64 %2037, 28
  %2039 = load i64, i64* %PC.i106
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC.i106
  %2041 = inttoptr i64 %2038 to i32*
  %2042 = load i32, i32* %2041
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_400c0a, %struct.Memory** %MEMORY
  %loadMem_400c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 5
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RCX.i105
  %2051 = load i64, i64* %PC.i104
  %2052 = add i64 %2051, 3
  store i64 %2052, i64* %PC.i104
  %2053 = trunc i64 %2050 to i32
  %2054 = sub i32 %2053, 1
  %2055 = zext i32 %2054 to i64
  store i64 %2055, i64* %RCX.i105, align 8
  %2056 = icmp ult i32 %2053, 1
  %2057 = zext i1 %2056 to i8
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2057, i8* %2058, align 1
  %2059 = and i32 %2054, 255
  %2060 = call i32 @llvm.ctpop.i32(i32 %2059)
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  %2063 = xor i8 %2062, 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2063, i8* %2064, align 1
  %2065 = xor i64 1, %2050
  %2066 = trunc i64 %2065 to i32
  %2067 = xor i32 %2066, %2054
  %2068 = lshr i32 %2067, 4
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2070, i8* %2071, align 1
  %2072 = icmp eq i32 %2054, 0
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2073, i8* %2074, align 1
  %2075 = lshr i32 %2054, 31
  %2076 = trunc i32 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2076, i8* %2077, align 1
  %2078 = lshr i32 %2053, 31
  %2079 = xor i32 %2075, %2078
  %2080 = add i32 %2079, %2078
  %2081 = icmp eq i32 %2080, 2
  %2082 = zext i1 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2082, i8* %2083, align 1
  store %struct.Memory* %loadMem_400c0d, %struct.Memory** %MEMORY
  %loadMem_400c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 5
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %ECX.i102 = bitcast %union.anon* %2089 to i32*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 7
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %2092 to i64*
  %2093 = load i32, i32* %ECX.i102
  %2094 = zext i32 %2093 to i64
  %2095 = load i64, i64* %PC.i101
  %2096 = add i64 %2095, 3
  store i64 %2096, i64* %PC.i101
  %2097 = shl i64 %2094, 32
  %2098 = ashr exact i64 %2097, 32
  store i64 %2098, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_400c10, %struct.Memory** %MEMORY
  %loadMem_400c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 1
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 7
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2108, i64 0, i64 1
  %YMM1.i100 = bitcast %union.VectorReg* %2109 to %"class.std::bitset"*
  %2110 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %2111 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %2112 = load i64, i64* %RAX.i98
  %2113 = load i64, i64* %RDX.i99
  %2114 = mul i64 %2113, 8
  %2115 = add i64 %2114, %2112
  %2116 = load i64, i64* %PC.i97
  %2117 = add i64 %2116, 5
  store i64 %2117, i64* %PC.i97
  %2118 = bitcast i8* %2111 to double*
  %2119 = load double, double* %2118, align 1
  %2120 = getelementptr inbounds i8, i8* %2111, i64 8
  %2121 = bitcast i8* %2120 to i64*
  %2122 = load i64, i64* %2121, align 1
  %2123 = inttoptr i64 %2115 to double*
  %2124 = load double, double* %2123
  %2125 = fadd double %2119, %2124
  %2126 = bitcast i8* %2110 to double*
  store double %2125, double* %2126, align 1
  %2127 = getelementptr inbounds i8, i8* %2110, i64 8
  %2128 = bitcast i8* %2127 to i64*
  store i64 %2122, i64* %2128, align 1
  store %struct.Memory* %loadMem_400c13, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i96
  %2139 = sub i64 %2138, 16
  %2140 = load i64, i64* %PC.i94
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i94
  %2142 = inttoptr i64 %2139 to i64*
  %2143 = load i64, i64* %2142
  store i64 %2143, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  %loadMem_400c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 5
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RBP.i93
  %2154 = sub i64 %2153, 24
  %2155 = load i64, i64* %PC.i91
  %2156 = add i64 %2155, 3
  store i64 %2156, i64* %PC.i91
  %2157 = inttoptr i64 %2154 to i32*
  %2158 = load i32, i32* %2157
  %2159 = zext i32 %2158 to i64
  store i64 %2159, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_400c1c, %struct.Memory** %MEMORY
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 5
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %RCX.i90
  %2167 = load i64, i64* %PC.i89
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i89
  %2169 = trunc i64 %2166 to i32
  %2170 = add i32 1, %2169
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i90, align 8
  %2172 = icmp ult i32 %2170, %2169
  %2173 = icmp ult i32 %2170, 1
  %2174 = or i1 %2172, %2173
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2175, i8* %2176, align 1
  %2177 = and i32 %2170, 255
  %2178 = call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2181, i8* %2182, align 1
  %2183 = xor i64 1, %2166
  %2184 = trunc i64 %2183 to i32
  %2185 = xor i32 %2184, %2170
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2188, i8* %2189, align 1
  %2190 = icmp eq i32 %2170, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1
  %2193 = lshr i32 %2170, 31
  %2194 = trunc i32 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1
  %2196 = lshr i32 %2169, 31
  %2197 = xor i32 %2193, %2196
  %2198 = add i32 %2197, %2193
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1
  store %struct.Memory* %loadMem_400c1f, %struct.Memory** %MEMORY
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 5
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %ECX.i87 = bitcast %union.anon* %2207 to i32*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 7
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %2210 to i64*
  %2211 = load i32, i32* %ECX.i87
  %2212 = zext i32 %2211 to i64
  %2213 = load i64, i64* %PC.i86
  %2214 = add i64 %2213, 3
  store i64 %2214, i64* %PC.i86
  %2215 = shl i64 %2212, 32
  %2216 = ashr exact i64 %2215, 32
  store i64 %2216, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_400c22, %struct.Memory** %MEMORY
  %loadMem_400c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 7
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %RDX.i85
  %2224 = load i64, i64* %PC.i84
  %2225 = add i64 %2224, 7
  store i64 %2225, i64* %PC.i84
  %2226 = sext i64 %2223 to i128
  %2227 = and i128 %2226, -18446744073709551616
  %2228 = zext i64 %2223 to i128
  %2229 = or i128 %2227, %2228
  %2230 = mul i128 8000, %2229
  %2231 = trunc i128 %2230 to i64
  store i64 %2231, i64* %RDX.i85, align 8
  %2232 = sext i64 %2231 to i128
  %2233 = icmp ne i128 %2232, %2230
  %2234 = zext i1 %2233 to i8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2234, i8* %2235, align 1
  %2236 = trunc i128 %2230 to i32
  %2237 = and i32 %2236, 255
  %2238 = call i32 @llvm.ctpop.i32(i32 %2237)
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = xor i8 %2240, 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2241, i8* %2242, align 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2243, align 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2244, align 1
  %2245 = lshr i64 %2231, 63
  %2246 = trunc i64 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2246, i8* %2247, align 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2234, i8* %2248, align 1
  store %struct.Memory* %loadMem_400c25, %struct.Memory** %MEMORY
  %loadMem_400c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 7
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RAX.i82
  %2259 = load i64, i64* %RDX.i83
  %2260 = load i64, i64* %PC.i81
  %2261 = add i64 %2260, 3
  store i64 %2261, i64* %PC.i81
  %2262 = add i64 %2259, %2258
  store i64 %2262, i64* %RAX.i82, align 8
  %2263 = icmp ult i64 %2262, %2258
  %2264 = icmp ult i64 %2262, %2259
  %2265 = or i1 %2263, %2264
  %2266 = zext i1 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2266, i8* %2267, align 1
  %2268 = trunc i64 %2262 to i32
  %2269 = and i32 %2268, 255
  %2270 = call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2273, i8* %2274, align 1
  %2275 = xor i64 %2259, %2258
  %2276 = xor i64 %2275, %2262
  %2277 = lshr i64 %2276, 4
  %2278 = trunc i64 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2279, i8* %2280, align 1
  %2281 = icmp eq i64 %2262, 0
  %2282 = zext i1 %2281 to i8
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2282, i8* %2283, align 1
  %2284 = lshr i64 %2262, 63
  %2285 = trunc i64 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2285, i8* %2286, align 1
  %2287 = lshr i64 %2258, 63
  %2288 = lshr i64 %2259, 63
  %2289 = xor i64 %2284, %2287
  %2290 = xor i64 %2284, %2288
  %2291 = add i64 %2289, %2290
  %2292 = icmp eq i64 %2291, 2
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2293, i8* %2294, align 1
  store %struct.Memory* %loadMem_400c2c, %struct.Memory** %MEMORY
  %loadMem_400c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 7
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RBP.i80
  %2305 = sub i64 %2304, 28
  %2306 = load i64, i64* %PC.i78
  %2307 = add i64 %2306, 4
  store i64 %2307, i64* %PC.i78
  %2308 = inttoptr i64 %2305 to i32*
  %2309 = load i32, i32* %2308
  %2310 = sext i32 %2309 to i64
  store i64 %2310, i64* %RDX.i79, align 8
  store %struct.Memory* %loadMem_400c2f, %struct.Memory** %MEMORY
  %loadMem_400c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 1
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 7
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2320, i64 0, i64 1
  %YMM1.i77 = bitcast %union.VectorReg* %2321 to %"class.std::bitset"*
  %2322 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %2323 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %2324 = load i64, i64* %RAX.i75
  %2325 = load i64, i64* %RDX.i76
  %2326 = mul i64 %2325, 8
  %2327 = add i64 %2326, %2324
  %2328 = load i64, i64* %PC.i74
  %2329 = add i64 %2328, 5
  store i64 %2329, i64* %PC.i74
  %2330 = bitcast i8* %2323 to double*
  %2331 = load double, double* %2330, align 1
  %2332 = getelementptr inbounds i8, i8* %2323, i64 8
  %2333 = bitcast i8* %2332 to i64*
  %2334 = load i64, i64* %2333, align 1
  %2335 = inttoptr i64 %2327 to double*
  %2336 = load double, double* %2335
  %2337 = fadd double %2331, %2336
  %2338 = bitcast i8* %2322 to double*
  store double %2337, double* %2338, align 1
  %2339 = getelementptr inbounds i8, i8* %2322, i64 8
  %2340 = bitcast i8* %2339 to i64*
  store i64 %2334, i64* %2340, align 1
  store %struct.Memory* %loadMem_400c33, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 1
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RBP.i73
  %2351 = sub i64 %2350, 16
  %2352 = load i64, i64* %PC.i71
  %2353 = add i64 %2352, 4
  store i64 %2353, i64* %PC.i71
  %2354 = inttoptr i64 %2351 to i64*
  %2355 = load i64, i64* %2354
  store i64 %2355, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 5
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i70
  %2366 = sub i64 %2365, 24
  %2367 = load i64, i64* %PC.i68
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %PC.i68
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RCX.i69, align 8
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 5
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RCX.i67
  %2379 = load i64, i64* %PC.i66
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC.i66
  %2381 = trunc i64 %2378 to i32
  %2382 = add i32 1, %2381
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i67, align 8
  %2384 = icmp ult i32 %2382, %2381
  %2385 = icmp ult i32 %2382, 1
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
  %2395 = xor i64 1, %2378
  %2396 = trunc i64 %2395 to i32
  %2397 = xor i32 %2396, %2382
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2400, i8* %2401, align 1
  %2402 = icmp eq i32 %2382, 0
  %2403 = zext i1 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i32 %2382, 31
  %2406 = trunc i32 %2405 to i8
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2406, i8* %2407, align 1
  %2408 = lshr i32 %2381, 31
  %2409 = xor i32 %2405, %2408
  %2410 = add i32 %2409, %2405
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2412, i8* %2413, align 1
  store %struct.Memory* %loadMem_400c3f, %struct.Memory** %MEMORY
  %loadMem_400c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 5
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %ECX.i64 = bitcast %union.anon* %2419 to i32*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 7
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %2422 to i64*
  %2423 = load i32, i32* %ECX.i64
  %2424 = zext i32 %2423 to i64
  %2425 = load i64, i64* %PC.i63
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %PC.i63
  %2427 = shl i64 %2424, 32
  %2428 = ashr exact i64 %2427, 32
  store i64 %2428, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_400c42, %struct.Memory** %MEMORY
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 7
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RDX.i62
  %2436 = load i64, i64* %PC.i61
  %2437 = add i64 %2436, 7
  store i64 %2437, i64* %PC.i61
  %2438 = sext i64 %2435 to i128
  %2439 = and i128 %2438, -18446744073709551616
  %2440 = zext i64 %2435 to i128
  %2441 = or i128 %2439, %2440
  %2442 = mul i128 8000, %2441
  %2443 = trunc i128 %2442 to i64
  store i64 %2443, i64* %RDX.i62, align 8
  %2444 = sext i64 %2443 to i128
  %2445 = icmp ne i128 %2444, %2442
  %2446 = zext i1 %2445 to i8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2446, i8* %2447, align 1
  %2448 = trunc i128 %2442 to i32
  %2449 = and i32 %2448, 255
  %2450 = call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2453, i8* %2454, align 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2455, align 1
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2456, align 1
  %2457 = lshr i64 %2443, 63
  %2458 = trunc i64 %2457 to i8
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2458, i8* %2459, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2446, i8* %2460, align 1
  store %struct.Memory* %loadMem_400c45, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 1
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 7
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RAX.i59
  %2471 = load i64, i64* %RDX.i60
  %2472 = load i64, i64* %PC.i58
  %2473 = add i64 %2472, 3
  store i64 %2473, i64* %PC.i58
  %2474 = add i64 %2471, %2470
  store i64 %2474, i64* %RAX.i59, align 8
  %2475 = icmp ult i64 %2474, %2470
  %2476 = icmp ult i64 %2474, %2471
  %2477 = or i1 %2475, %2476
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2478, i8* %2479, align 1
  %2480 = trunc i64 %2474 to i32
  %2481 = and i32 %2480, 255
  %2482 = call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2485, i8* %2486, align 1
  %2487 = xor i64 %2471, %2470
  %2488 = xor i64 %2487, %2474
  %2489 = lshr i64 %2488, 4
  %2490 = trunc i64 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2491, i8* %2492, align 1
  %2493 = icmp eq i64 %2474, 0
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i64 %2474, 63
  %2497 = trunc i64 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2497, i8* %2498, align 1
  %2499 = lshr i64 %2470, 63
  %2500 = lshr i64 %2471, 63
  %2501 = xor i64 %2496, %2499
  %2502 = xor i64 %2496, %2500
  %2503 = add i64 %2501, %2502
  %2504 = icmp eq i64 %2503, 2
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2505, i8* %2506, align 1
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 15
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %RBP.i57
  %2517 = sub i64 %2516, 28
  %2518 = load i64, i64* %PC.i55
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i55
  %2520 = inttoptr i64 %2517 to i32*
  %2521 = load i32, i32* %2520
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_400c4f, %struct.Memory** %MEMORY
  %loadMem_400c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 5
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2528 to i64*
  %2529 = load i64, i64* %RCX.i
  %2530 = load i64, i64* %PC.i54
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %PC.i54
  %2532 = trunc i64 %2529 to i32
  %2533 = add i32 1, %2532
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RCX.i, align 8
  %2535 = icmp ult i32 %2533, %2532
  %2536 = icmp ult i32 %2533, 1
  %2537 = or i1 %2535, %2536
  %2538 = zext i1 %2537 to i8
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2538, i8* %2539, align 1
  %2540 = and i32 %2533, 255
  %2541 = call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2544, i8* %2545, align 1
  %2546 = xor i64 1, %2529
  %2547 = trunc i64 %2546 to i32
  %2548 = xor i32 %2547, %2533
  %2549 = lshr i32 %2548, 4
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2551, i8* %2552, align 1
  %2553 = icmp eq i32 %2533, 0
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2554, i8* %2555, align 1
  %2556 = lshr i32 %2533, 31
  %2557 = trunc i32 %2556 to i8
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2557, i8* %2558, align 1
  %2559 = lshr i32 %2532, 31
  %2560 = xor i32 %2556, %2559
  %2561 = add i32 %2560, %2556
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2563, i8* %2564, align 1
  store %struct.Memory* %loadMem_400c52, %struct.Memory** %MEMORY
  %loadMem_400c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 5
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2570 to i32*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 7
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %2573 to i64*
  %2574 = load i32, i32* %ECX.i
  %2575 = zext i32 %2574 to i64
  %2576 = load i64, i64* %PC.i52
  %2577 = add i64 %2576, 3
  store i64 %2577, i64* %PC.i52
  %2578 = shl i64 %2575, 32
  %2579 = ashr exact i64 %2578, 32
  store i64 %2579, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_400c55, %struct.Memory** %MEMORY
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 7
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2589, i64 0, i64 1
  %YMM1.i51 = bitcast %union.VectorReg* %2590 to %"class.std::bitset"*
  %2591 = bitcast %"class.std::bitset"* %YMM1.i51 to i8*
  %2592 = bitcast %"class.std::bitset"* %YMM1.i51 to i8*
  %2593 = load i64, i64* %RAX.i49
  %2594 = load i64, i64* %RDX.i50
  %2595 = mul i64 %2594, 8
  %2596 = add i64 %2595, %2593
  %2597 = load i64, i64* %PC.i48
  %2598 = add i64 %2597, 5
  store i64 %2598, i64* %PC.i48
  %2599 = bitcast i8* %2592 to double*
  %2600 = load double, double* %2599, align 1
  %2601 = getelementptr inbounds i8, i8* %2592, i64 8
  %2602 = bitcast i8* %2601 to i64*
  %2603 = load i64, i64* %2602, align 1
  %2604 = inttoptr i64 %2596 to double*
  %2605 = load double, double* %2604
  %2606 = fadd double %2600, %2605
  %2607 = bitcast i8* %2591 to double*
  store double %2606, double* %2607, align 1
  %2608 = getelementptr inbounds i8, i8* %2591, i64 8
  %2609 = bitcast i8* %2608 to i64*
  store i64 %2603, i64* %2609, align 1
  store %struct.Memory* %loadMem_400c58, %struct.Memory** %MEMORY
  %loadMem_400c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2613, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2614 to %"class.std::bitset"*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2615, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2616 to %union.vec128_t*
  %2617 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2618 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2619 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2620 = load i64, i64* %PC.i47
  %2621 = add i64 %2620, 4
  store i64 %2621, i64* %PC.i47
  %2622 = bitcast i8* %2618 to double*
  %2623 = load double, double* %2622, align 1
  %2624 = getelementptr inbounds i8, i8* %2618, i64 8
  %2625 = bitcast i8* %2624 to i64*
  %2626 = load i64, i64* %2625, align 1
  %2627 = bitcast i8* %2619 to double*
  %2628 = load double, double* %2627, align 1
  %2629 = fdiv double %2623, %2628
  %2630 = bitcast i8* %2617 to double*
  store double %2629, double* %2630, align 1
  %2631 = getelementptr inbounds i8, i8* %2617, i64 8
  %2632 = bitcast i8* %2631 to i64*
  store i64 %2626, i64* %2632, align 1
  store %struct.Memory* %loadMem_400c5d, %struct.Memory** %MEMORY
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 1
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i46
  %2643 = sub i64 %2642, 16
  %2644 = load i64, i64* %PC.i44
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i44
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400c61, %struct.Memory** %MEMORY
  %loadMem_400c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 7
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i43
  %2658 = sub i64 %2657, 24
  %2659 = load i64, i64* %PC.i41
  %2660 = add i64 %2659, 4
  store i64 %2660, i64* %PC.i41
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_400c65, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 7
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RDX.i40
  %2671 = load i64, i64* %PC.i39
  %2672 = add i64 %2671, 7
  store i64 %2672, i64* %PC.i39
  %2673 = sext i64 %2670 to i128
  %2674 = and i128 %2673, -18446744073709551616
  %2675 = zext i64 %2670 to i128
  %2676 = or i128 %2674, %2675
  %2677 = mul i128 8000, %2676
  %2678 = trunc i128 %2677 to i64
  store i64 %2678, i64* %RDX.i40, align 8
  %2679 = sext i64 %2678 to i128
  %2680 = icmp ne i128 %2679, %2677
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2681, i8* %2682, align 1
  %2683 = trunc i128 %2677 to i32
  %2684 = and i32 %2683, 255
  %2685 = call i32 @llvm.ctpop.i32(i32 %2684)
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2688, i8* %2689, align 1
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2690, align 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2691, align 1
  %2692 = lshr i64 %2678, 63
  %2693 = trunc i64 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2693, i8* %2694, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2681, i8* %2695, align 1
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 1
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 7
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %RAX.i37
  %2706 = load i64, i64* %RDX.i38
  %2707 = load i64, i64* %PC.i36
  %2708 = add i64 %2707, 3
  store i64 %2708, i64* %PC.i36
  %2709 = add i64 %2706, %2705
  store i64 %2709, i64* %RAX.i37, align 8
  %2710 = icmp ult i64 %2709, %2705
  %2711 = icmp ult i64 %2709, %2706
  %2712 = or i1 %2710, %2711
  %2713 = zext i1 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2713, i8* %2714, align 1
  %2715 = trunc i64 %2709 to i32
  %2716 = and i32 %2715, 255
  %2717 = call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2720, i8* %2721, align 1
  %2722 = xor i64 %2706, %2705
  %2723 = xor i64 %2722, %2709
  %2724 = lshr i64 %2723, 4
  %2725 = trunc i64 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2726, i8* %2727, align 1
  %2728 = icmp eq i64 %2709, 0
  %2729 = zext i1 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2729, i8* %2730, align 1
  %2731 = lshr i64 %2709, 63
  %2732 = trunc i64 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2732, i8* %2733, align 1
  %2734 = lshr i64 %2705, 63
  %2735 = lshr i64 %2706, 63
  %2736 = xor i64 %2731, %2734
  %2737 = xor i64 %2731, %2735
  %2738 = add i64 %2736, %2737
  %2739 = icmp eq i64 %2738, 2
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2740, i8* %2741, align 1
  store %struct.Memory* %loadMem_400c70, %struct.Memory** %MEMORY
  %loadMem_400c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 7
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i35
  %2752 = sub i64 %2751, 28
  %2753 = load i64, i64* %PC.i33
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i33
  %2755 = inttoptr i64 %2752 to i32*
  %2756 = load i32, i32* %2755
  %2757 = sext i32 %2756 to i64
  store i64 %2757, i64* %RDX.i34, align 8
  store %struct.Memory* %loadMem_400c73, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 1
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 7
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2767, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2768 to %union.vec128_t*
  %2769 = load i64, i64* %RAX.i32
  %2770 = load i64, i64* %RDX.i
  %2771 = mul i64 %2770, 8
  %2772 = add i64 %2771, %2769
  %2773 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2774 = load i64, i64* %PC.i31
  %2775 = add i64 %2774, 5
  store i64 %2775, i64* %PC.i31
  %2776 = bitcast i8* %2773 to double*
  %2777 = load double, double* %2776, align 1
  %2778 = inttoptr i64 %2772 to double*
  store double %2777, double* %2778
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 15
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %RBP.i30
  %2789 = sub i64 %2788, 28
  %2790 = load i64, i64* %PC.i28
  %2791 = add i64 %2790, 3
  store i64 %2791, i64* %PC.i28
  %2792 = inttoptr i64 %2789 to i32*
  %2793 = load i32, i32* %2792
  %2794 = zext i32 %2793 to i64
  store i64 %2794, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400c7c, %struct.Memory** %MEMORY
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 1
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %RAX.i27
  %2802 = load i64, i64* %PC.i26
  %2803 = add i64 %2802, 3
  store i64 %2803, i64* %PC.i26
  %2804 = trunc i64 %2801 to i32
  %2805 = add i32 1, %2804
  %2806 = zext i32 %2805 to i64
  store i64 %2806, i64* %RAX.i27, align 8
  %2807 = icmp ult i32 %2805, %2804
  %2808 = icmp ult i32 %2805, 1
  %2809 = or i1 %2807, %2808
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2810, i8* %2811, align 1
  %2812 = and i32 %2805, 255
  %2813 = call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2816, i8* %2817, align 1
  %2818 = xor i64 1, %2801
  %2819 = trunc i64 %2818 to i32
  %2820 = xor i32 %2819, %2805
  %2821 = lshr i32 %2820, 4
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2823, i8* %2824, align 1
  %2825 = icmp eq i32 %2805, 0
  %2826 = zext i1 %2825 to i8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2826, i8* %2827, align 1
  %2828 = lshr i32 %2805, 31
  %2829 = trunc i32 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2829, i8* %2830, align 1
  %2831 = lshr i32 %2804, 31
  %2832 = xor i32 %2828, %2831
  %2833 = add i32 %2832, %2828
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2835, i8* %2836, align 1
  store %struct.Memory* %loadMem_400c7f, %struct.Memory** %MEMORY
  %loadMem_400c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 1
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %2842 to i32*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %RBP.i25
  %2847 = sub i64 %2846, 28
  %2848 = load i32, i32* %EAX.i24
  %2849 = zext i32 %2848 to i64
  %2850 = load i64, i64* %PC.i23
  %2851 = add i64 %2850, 3
  store i64 %2851, i64* %PC.i23
  %2852 = inttoptr i64 %2847 to i32*
  store i32 %2848, i32* %2852
  store %struct.Memory* %loadMem_400c82, %struct.Memory** %MEMORY
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %PC.i22
  %2857 = add i64 %2856, -368
  %2858 = load i64, i64* %PC.i22
  %2859 = add i64 %2858, 5
  store i64 %2859, i64* %PC.i22
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2857, i64* %2860, align 8
  store %struct.Memory* %loadMem_400c85, %struct.Memory** %MEMORY
  br label %block_.L_400b15

block_.L_400c8a:                                  ; preds = %block_.L_400b15
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %PC.i21
  %2865 = add i64 %2864, 5
  %2866 = load i64, i64* %PC.i21
  %2867 = add i64 %2866, 5
  store i64 %2867, i64* %PC.i21
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2865, i64* %2868, align 8
  store %struct.Memory* %loadMem_400c8a, %struct.Memory** %MEMORY
  br label %block_.L_400c8f

block_.L_400c8f:                                  ; preds = %block_.L_400c8a
  %loadMem_400c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 1
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 15
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RBP.i20
  %2879 = sub i64 %2878, 24
  %2880 = load i64, i64* %PC.i18
  %2881 = add i64 %2880, 3
  store i64 %2881, i64* %PC.i18
  %2882 = inttoptr i64 %2879 to i32*
  %2883 = load i32, i32* %2882
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400c8f, %struct.Memory** %MEMORY
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 1
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %RAX.i17
  %2892 = load i64, i64* %PC.i16
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC.i16
  %2894 = trunc i64 %2891 to i32
  %2895 = add i32 1, %2894
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RAX.i17, align 8
  %2897 = icmp ult i32 %2895, %2894
  %2898 = icmp ult i32 %2895, 1
  %2899 = or i1 %2897, %2898
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2900, i8* %2901, align 1
  %2902 = and i32 %2895, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1
  %2908 = xor i64 1, %2891
  %2909 = trunc i64 %2908 to i32
  %2910 = xor i32 %2909, %2895
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2913, i8* %2914, align 1
  %2915 = icmp eq i32 %2895, 0
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2916, i8* %2917, align 1
  %2918 = lshr i32 %2895, 31
  %2919 = trunc i32 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2919, i8* %2920, align 1
  %2921 = lshr i32 %2894, 31
  %2922 = xor i32 %2918, %2921
  %2923 = add i32 %2922, %2918
  %2924 = icmp eq i32 %2923, 2
  %2925 = zext i1 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2925, i8* %2926, align 1
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %2932 to i32*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 15
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RBP.i15
  %2937 = sub i64 %2936, 24
  %2938 = load i32, i32* %EAX.i14
  %2939 = zext i32 %2938 to i64
  %2940 = load i64, i64* %PC.i13
  %2941 = add i64 %2940, 3
  store i64 %2941, i64* %PC.i13
  %2942 = inttoptr i64 %2937 to i32*
  store i32 %2938, i32* %2942
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  %loadMem_400c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %PC.i12
  %2947 = add i64 %2946, -411
  %2948 = load i64, i64* %PC.i12
  %2949 = add i64 %2948, 5
  store i64 %2949, i64* %PC.i12
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2947, i64* %2950, align 8
  store %struct.Memory* %loadMem_400c98, %struct.Memory** %MEMORY
  br label %block_.L_400afd

block_.L_400c9d:                                  ; preds = %block_.L_400afd
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %PC.i11
  %2955 = add i64 %2954, 5
  %2956 = load i64, i64* %PC.i11
  %2957 = add i64 %2956, 5
  store i64 %2957, i64* %PC.i11
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2955, i64* %2958, align 8
  store %struct.Memory* %loadMem_400c9d, %struct.Memory** %MEMORY
  br label %block_.L_400ca2

block_.L_400ca2:                                  ; preds = %block_.L_400c9d
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 1
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 15
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2967 to i64*
  %2968 = load i64, i64* %RBP.i10
  %2969 = sub i64 %2968, 20
  %2970 = load i64, i64* %PC.i8
  %2971 = add i64 %2970, 3
  store i64 %2971, i64* %PC.i8
  %2972 = inttoptr i64 %2969 to i32*
  %2973 = load i32, i32* %2972
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400ca2, %struct.Memory** %MEMORY
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 1
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %RAX.i
  %2982 = load i64, i64* %PC.i7
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %PC.i7
  %2984 = trunc i64 %2981 to i32
  %2985 = add i32 1, %2984
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RAX.i, align 8
  %2987 = icmp ult i32 %2985, %2984
  %2988 = icmp ult i32 %2985, 1
  %2989 = or i1 %2987, %2988
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2990, i8* %2991, align 1
  %2992 = and i32 %2985, 255
  %2993 = call i32 @llvm.ctpop.i32(i32 %2992)
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  %2996 = xor i8 %2995, 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2996, i8* %2997, align 1
  %2998 = xor i64 1, %2981
  %2999 = trunc i64 %2998 to i32
  %3000 = xor i32 %2999, %2985
  %3001 = lshr i32 %3000, 4
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3003, i8* %3004, align 1
  %3005 = icmp eq i32 %2985, 0
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3006, i8* %3007, align 1
  %3008 = lshr i32 %2985, 31
  %3009 = trunc i32 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3009, i8* %3010, align 1
  %3011 = lshr i32 %2984, 31
  %3012 = xor i32 %3008, %3011
  %3013 = add i32 %3012, %3008
  %3014 = icmp eq i32 %3013, 2
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3015, i8* %3016, align 1
  store %struct.Memory* %loadMem_400ca5, %struct.Memory** %MEMORY
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 1
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3022 to i32*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RBP.i6
  %3027 = sub i64 %3026, 20
  %3028 = load i32, i32* %EAX.i
  %3029 = zext i32 %3028 to i64
  %3030 = load i64, i64* %PC.i5
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %PC.i5
  %3032 = inttoptr i64 %3027 to i32*
  store i32 %3028, i32* %3032
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %PC.i4
  %3037 = add i64 %3036, -454
  %3038 = load i64, i64* %PC.i4
  %3039 = add i64 %3038, 5
  store i64 %3039, i64* %PC.i4
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3037, i64* %3040, align 8
  store %struct.Memory* %loadMem_400cab, %struct.Memory** %MEMORY
  br label %block_.L_400ae5

block_.L_400cb0:                                  ; preds = %block_.L_400ae5
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 15
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3046 to i64*
  %3047 = load i64, i64* %PC.i2
  %3048 = add i64 %3047, 1
  store i64 %3048, i64* %PC.i2
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3050 = load i64, i64* %3049, align 8
  %3051 = add i64 %3050, 8
  %3052 = inttoptr i64 %3050 to i64*
  %3053 = load i64, i64* %3052
  store i64 %3053, i64* %RBP.i3, align 8
  store i64 %3051, i64* %3049, align 8
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %PC.i1
  %3058 = add i64 %3057, 1
  store i64 %3058, i64* %PC.i1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3061 = load i64, i64* %3060, align 8
  %3062 = inttoptr i64 %3061 to i64*
  %3063 = load i64, i64* %3062
  store i64 %3063, i64* %3059, align 8
  %3064 = add i64 %3061, 8
  store i64 %3064, i64* %3060, align 8
  store %struct.Memory* %loadMem_400cb1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400cb1
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jg_.L_400cb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jg_.L_400c9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_jg_.L_400c8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x5d2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1498
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
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

define %struct.Memory* @routine_addsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd__xmm1____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
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

define %struct.Memory* @routine_jmpq_.L_400b15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400afd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ca2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ae5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
