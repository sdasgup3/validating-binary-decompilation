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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_3mm(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400dd0, %struct.Memory** %MEMORY
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i459
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i459
  store i64 %26, i64* %RBP.i460, align 8
  store %struct.Memory* %loadMem_400dd1, %struct.Memory** %MEMORY
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i458 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i458
  %36 = load i64, i64* %PC.i457
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i457
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_400dd4, %struct.Memory** %MEMORY
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i456 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i456
  %49 = load i64, i64* %PC.i455
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i455
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_400dd6, %struct.Memory** %MEMORY
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i454 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i454
  %62 = load i64, i64* %PC.i453
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i453
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_400dd8, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %73 to i64*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %76 to i64*
  %77 = load i64, i64* %RBP.i452
  %78 = add i64 %77, 56
  %79 = load i64, i64* %PC.i450
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i450
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81
  store i64 %82, i64* %RAX.i451, align 8
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 21
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %R10.i449 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i448
  %93 = add i64 %92, 48
  %94 = load i64, i64* %PC.i447
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i447
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %R10.i449, align 8
  store %struct.Memory* %loadMem_400ddd, %struct.Memory** %MEMORY
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 23
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %R11.i446 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i445
  %108 = add i64 %107, 40
  %109 = load i64, i64* %PC.i444
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i444
  %111 = inttoptr i64 %108 to i64*
  %112 = load i64, i64* %111
  store i64 %112, i64* %R11.i446, align 8
  store %struct.Memory* %loadMem_400de1, %struct.Memory** %MEMORY
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBX.i442 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i443
  %123 = add i64 %122, 32
  %124 = load i64, i64* %PC.i441
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC.i441
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126
  store i64 %127, i64* %RBX.i442, align 8
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 29
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %R14.i440 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i439
  %138 = add i64 %137, 24
  %139 = load i64, i64* %PC.i438
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC.i438
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %R14.i440, align 8
  store %struct.Memory* %loadMem_400de9, %struct.Memory** %MEMORY
  %loadMem_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 31
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %R15.i437 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i436
  %153 = add i64 %152, 16
  %154 = load i64, i64* %PC.i435
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i435
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %R15.i437, align 8
  store %struct.Memory* %loadMem_400ded, %struct.Memory** %MEMORY
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %163 to i32*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 15
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RBP.i434
  %168 = sub i64 %167, 28
  %169 = load i32, i32* %EDI.i
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %PC.i433
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC.i433
  %173 = inttoptr i64 %168 to i32*
  store i32 %169, i32* %173
  store %struct.Memory* %loadMem_400df1, %struct.Memory** %MEMORY
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i432
  %184 = sub i64 %183, 32
  %185 = load i32, i32* %ESI.i
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC.i431
  %188 = add i64 %187, 3
  store i64 %188, i64* %PC.i431
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  store %struct.Memory* %loadMem_400df4, %struct.Memory** %MEMORY
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %195 to i32*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i430
  %200 = sub i64 %199, 36
  %201 = load i32, i32* %EDX.i
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC.i429
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i429
  %205 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %205
  store %struct.Memory* %loadMem_400df7, %struct.Memory** %MEMORY
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %211 to i32*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 15
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RBP.i428
  %216 = sub i64 %215, 40
  %217 = load i32, i32* %ECX.i
  %218 = zext i32 %217 to i64
  %219 = load i64, i64* %PC.i427
  %220 = add i64 %219, 3
  store i64 %220, i64* %PC.i427
  %221 = inttoptr i64 %216 to i32*
  store i32 %217, i32* %221
  store %struct.Memory* %loadMem_400dfa, %struct.Memory** %MEMORY
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 17
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i426
  %232 = sub i64 %231, 44
  %233 = load i32, i32* %R8D.i
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i425
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC.i425
  %237 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %237
  store %struct.Memory* %loadMem_400dfd, %struct.Memory** %MEMORY
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 19
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %R9.i = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i424
  %248 = sub i64 %247, 56
  %249 = load i64, i64* %R9.i
  %250 = load i64, i64* %PC.i423
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC.i423
  %252 = inttoptr i64 %248 to i64*
  store i64 %249, i64* %252
  store %struct.Memory* %loadMem_400e01, %struct.Memory** %MEMORY
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 31
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %R15.i422 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i421
  %263 = sub i64 %262, 64
  %264 = load i64, i64* %R15.i422
  %265 = load i64, i64* %PC.i420
  %266 = add i64 %265, 4
  store i64 %266, i64* %PC.i420
  %267 = inttoptr i64 %263 to i64*
  store i64 %264, i64* %267
  store %struct.Memory* %loadMem_400e05, %struct.Memory** %MEMORY
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 15
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 29
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %R14.i419 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RBP.i418
  %278 = sub i64 %277, 72
  %279 = load i64, i64* %R14.i419
  %280 = load i64, i64* %PC.i417
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC.i417
  %282 = inttoptr i64 %278 to i64*
  store i64 %279, i64* %282
  store %struct.Memory* %loadMem_400e09, %struct.Memory** %MEMORY
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBX.i415 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %RBP.i416
  %293 = sub i64 %292, 80
  %294 = load i64, i64* %RBX.i415
  %295 = load i64, i64* %PC.i414
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC.i414
  %297 = inttoptr i64 %293 to i64*
  store i64 %294, i64* %297
  store %struct.Memory* %loadMem_400e0d, %struct.Memory** %MEMORY
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 23
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %R11.i = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RBP.i413
  %308 = sub i64 %307, 88
  %309 = load i64, i64* %R11.i
  %310 = load i64, i64* %PC.i412
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC.i412
  %312 = inttoptr i64 %308 to i64*
  store i64 %309, i64* %312
  store %struct.Memory* %loadMem_400e11, %struct.Memory** %MEMORY
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 21
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %R10.i = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %RBP.i411
  %323 = sub i64 %322, 96
  %324 = load i64, i64* %R10.i
  %325 = load i64, i64* %PC.i410
  %326 = add i64 %325, 4
  store i64 %326, i64* %PC.i410
  %327 = inttoptr i64 %323 to i64*
  store i64 %324, i64* %327
  store %struct.Memory* %loadMem_400e15, %struct.Memory** %MEMORY
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RBP.i409
  %338 = sub i64 %337, 104
  %339 = load i64, i64* %RAX.i408
  %340 = load i64, i64* %PC.i407
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC.i407
  %342 = inttoptr i64 %338 to i64*
  store i64 %339, i64* %342
  store %struct.Memory* %loadMem_400e19, %struct.Memory** %MEMORY
  %loadMem_400e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i406
  %350 = sub i64 %349, 108
  %351 = load i64, i64* %PC.i405
  %352 = add i64 %351, 7
  store i64 %352, i64* %PC.i405
  %353 = inttoptr i64 %350 to i32*
  store i32 0, i32* %353
  store %struct.Memory* %loadMem_400e1d, %struct.Memory** %MEMORY
  br label %block_.L_400e24

block_.L_400e24:                                  ; preds = %block_.L_400ee4, %entry
  %loadMem_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i404
  %364 = sub i64 %363, 108
  %365 = load i64, i64* %PC.i402
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC.i402
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_400e24, %struct.Memory** %MEMORY
  %loadMem_400e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %EAX.i400 = bitcast %union.anon* %375 to i32*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %378 to i64*
  %379 = load i32, i32* %EAX.i400
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %RBP.i401
  %382 = sub i64 %381, 28
  %383 = load i64, i64* %PC.i399
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i399
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = sub i32 %379, %386
  %388 = icmp ult i32 %379, %386
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %389, i8* %390, align 1
  %391 = and i32 %387, 255
  %392 = call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %395, i8* %396, align 1
  %397 = xor i32 %386, %379
  %398 = xor i32 %397, %387
  %399 = lshr i32 %398, 4
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %401, i8* %402, align 1
  %403 = icmp eq i32 %387, 0
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %404, i8* %405, align 1
  %406 = lshr i32 %387, 31
  %407 = trunc i32 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %407, i8* %408, align 1
  %409 = lshr i32 %379, 31
  %410 = lshr i32 %386, 31
  %411 = xor i32 %410, %409
  %412 = xor i32 %406, %409
  %413 = add i32 %412, %411
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_400e27, %struct.Memory** %MEMORY
  %loadMem_400e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %PC.i398
  %421 = add i64 %420, 200
  %422 = load i64, i64* %PC.i398
  %423 = add i64 %422, 6
  %424 = load i64, i64* %PC.i398
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC.i398
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %427 = load i8, i8* %426, align 1
  %428 = icmp ne i8 %427, 0
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %430 = load i8, i8* %429, align 1
  %431 = icmp ne i8 %430, 0
  %432 = xor i1 %428, %431
  %433 = xor i1 %432, true
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %BRANCH_TAKEN, align 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %436 = select i1 %432, i64 %423, i64 %421
  store i64 %436, i64* %435, align 8
  store %struct.Memory* %loadMem_400e2a, %struct.Memory** %MEMORY
  %loadBr_400e2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e2a = icmp eq i8 %loadBr_400e2a, 1
  br i1 %cmpBr_400e2a, label %block_.L_400ef2, label %block_400e30

block_400e30:                                     ; preds = %block_.L_400e24
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 15
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RBP.i397
  %444 = sub i64 %443, 112
  %445 = load i64, i64* %PC.i396
  %446 = add i64 %445, 7
  store i64 %446, i64* %PC.i396
  %447 = inttoptr i64 %444 to i32*
  store i32 0, i32* %447
  store %struct.Memory* %loadMem_400e30, %struct.Memory** %MEMORY
  br label %block_.L_400e37

block_.L_400e37:                                  ; preds = %block_.L_400ed1, %block_400e30
  %loadMem_400e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i395
  %458 = sub i64 %457, 112
  %459 = load i64, i64* %PC.i393
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i393
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_400e37, %struct.Memory** %MEMORY
  %loadMem_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %469 to i32*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 15
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %472 to i64*
  %473 = load i32, i32* %EAX.i391
  %474 = zext i32 %473 to i64
  %475 = load i64, i64* %RBP.i392
  %476 = sub i64 %475, 32
  %477 = load i64, i64* %PC.i390
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC.i390
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479
  %481 = sub i32 %473, %480
  %482 = icmp ult i32 %473, %480
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %483, i8* %484, align 1
  %485 = and i32 %481, 255
  %486 = call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %489, i8* %490, align 1
  %491 = xor i32 %480, %473
  %492 = xor i32 %491, %481
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i32 %481, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %481, 31
  %501 = trunc i32 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = lshr i32 %473, 31
  %504 = lshr i32 %480, 31
  %505 = xor i32 %504, %503
  %506 = xor i32 %500, %503
  %507 = add i32 %506, %505
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %509, i8* %510, align 1
  store %struct.Memory* %loadMem_400e3a, %struct.Memory** %MEMORY
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %PC.i389
  %515 = add i64 %514, 162
  %516 = load i64, i64* %PC.i389
  %517 = add i64 %516, 6
  %518 = load i64, i64* %PC.i389
  %519 = add i64 %518, 6
  store i64 %519, i64* %PC.i389
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %521 = load i8, i8* %520, align 1
  %522 = icmp ne i8 %521, 0
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %524 = load i8, i8* %523, align 1
  %525 = icmp ne i8 %524, 0
  %526 = xor i1 %522, %525
  %527 = xor i1 %526, true
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %BRANCH_TAKEN, align 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %530 = select i1 %526, i64 %517, i64 %515
  store i64 %530, i64* %529, align 8
  store %struct.Memory* %loadMem_400e3d, %struct.Memory** %MEMORY
  %loadBr_400e3d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e3d = icmp eq i8 %loadBr_400e3d, 1
  br i1 %cmpBr_400e3d, label %block_.L_400edf, label %block_400e43

block_400e43:                                     ; preds = %block_.L_400e37
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %534, i64 0, i64 0
  %YMM0.i387 = bitcast %union.VectorReg* %535 to %"class.std::bitset"*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %536, i64 0, i64 0
  %XMM0.i388 = bitcast %union.VectorReg* %537 to %union.vec128_t*
  %538 = bitcast %"class.std::bitset"* %YMM0.i387 to i8*
  %539 = bitcast %"class.std::bitset"* %YMM0.i387 to i8*
  %540 = bitcast %union.vec128_t* %XMM0.i388 to i8*
  %541 = load i64, i64* %PC.i386
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC.i386
  %543 = bitcast i8* %539 to i64*
  %544 = load i64, i64* %543, align 1
  %545 = getelementptr inbounds i8, i8* %539, i64 8
  %546 = bitcast i8* %545 to i64*
  %547 = load i64, i64* %546, align 1
  %548 = bitcast i8* %540 to i64*
  %549 = load i64, i64* %548, align 1
  %550 = getelementptr inbounds i8, i8* %540, i64 8
  %551 = bitcast i8* %550 to i64*
  %552 = load i64, i64* %551, align 1
  %553 = xor i64 %549, %544
  %554 = xor i64 %552, %547
  %555 = trunc i64 %553 to i32
  %556 = lshr i64 %553, 32
  %557 = trunc i64 %556 to i32
  %558 = bitcast i8* %538 to i32*
  store i32 %555, i32* %558, align 1
  %559 = getelementptr inbounds i8, i8* %538, i64 4
  %560 = bitcast i8* %559 to i32*
  store i32 %557, i32* %560, align 1
  %561 = trunc i64 %554 to i32
  %562 = getelementptr inbounds i8, i8* %538, i64 8
  %563 = bitcast i8* %562 to i32*
  store i32 %561, i32* %563, align 1
  %564 = lshr i64 %554, 32
  %565 = trunc i64 %564 to i32
  %566 = getelementptr inbounds i8, i8* %538, i64 12
  %567 = bitcast i8* %566 to i32*
  store i32 %565, i32* %567, align 1
  store %struct.Memory* %loadMem_400e43, %struct.Memory** %MEMORY
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RBP.i385
  %578 = sub i64 %577, 56
  %579 = load i64, i64* %PC.i383
  %580 = add i64 %579, 4
  store i64 %580, i64* %PC.i383
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581
  store i64 %582, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_400e46, %struct.Memory** %MEMORY
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 5
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 15
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i382
  %593 = sub i64 %592, 108
  %594 = load i64, i64* %PC.i380
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i380
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_400e4a, %struct.Memory** %MEMORY
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RCX.i379
  %606 = load i64, i64* %PC.i378
  %607 = add i64 %606, 4
  store i64 %607, i64* %PC.i378
  %608 = shl i64 %605, 12
  %609 = icmp slt i64 %608, 0
  %610 = shl i64 %608, 1
  store i64 %610, i64* %RCX.i379, align 8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %612 = zext i1 %609 to i8
  store i8 %612, i8* %611, align 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %614 = trunc i64 %610 to i32
  store i8 1, i8* %613, align 1
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %615, align 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %617 = icmp eq i64 %610, 0
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %616, align 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %620 = lshr i64 %610, 63
  %621 = trunc i64 %620 to i8
  store i8 %621, i8* %619, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %622, align 1
  store %struct.Memory* %loadMem_400e4e, %struct.Memory** %MEMORY
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RAX.i376
  %633 = load i64, i64* %RCX.i377
  %634 = load i64, i64* %PC.i375
  %635 = add i64 %634, 3
  store i64 %635, i64* %PC.i375
  %636 = add i64 %633, %632
  store i64 %636, i64* %RAX.i376, align 8
  %637 = icmp ult i64 %636, %632
  %638 = icmp ult i64 %636, %633
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %640, i8* %641, align 1
  %642 = trunc i64 %636 to i32
  %643 = and i32 %642, 255
  %644 = call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %647, i8* %648, align 1
  %649 = xor i64 %633, %632
  %650 = xor i64 %649, %636
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %653, i8* %654, align 1
  %655 = icmp eq i64 %636, 0
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %656, i8* %657, align 1
  %658 = lshr i64 %636, 63
  %659 = trunc i64 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %659, i8* %660, align 1
  %661 = lshr i64 %632, 63
  %662 = lshr i64 %633, 63
  %663 = xor i64 %658, %661
  %664 = xor i64 %658, %662
  %665 = add i64 %663, %664
  %666 = icmp eq i64 %665, 2
  %667 = zext i1 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %667, i8* %668, align 1
  store %struct.Memory* %loadMem_400e52, %struct.Memory** %MEMORY
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 5
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 15
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %RBP.i374
  %679 = sub i64 %678, 112
  %680 = load i64, i64* %PC.i372
  %681 = add i64 %680, 4
  store i64 %681, i64* %PC.i372
  %682 = inttoptr i64 %679 to i32*
  %683 = load i32, i32* %682
  %684 = sext i32 %683 to i64
  store i64 %684, i64* %RCX.i373, align 8
  store %struct.Memory* %loadMem_400e55, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %694, i64 0, i64 0
  %XMM0.i371 = bitcast %union.VectorReg* %695 to %union.vec128_t*
  %696 = load i64, i64* %RAX.i369
  %697 = load i64, i64* %RCX.i370
  %698 = mul i64 %697, 8
  %699 = add i64 %698, %696
  %700 = bitcast %union.vec128_t* %XMM0.i371 to i8*
  %701 = load i64, i64* %PC.i368
  %702 = add i64 %701, 5
  store i64 %702, i64* %PC.i368
  %703 = bitcast i8* %700 to double*
  %704 = load double, double* %703, align 1
  %705 = inttoptr i64 %699 to double*
  store double %704, double* %705
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 15
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RBP.i367
  %713 = sub i64 %712, 116
  %714 = load i64, i64* %PC.i366
  %715 = add i64 %714, 7
  store i64 %715, i64* %PC.i366
  %716 = inttoptr i64 %713 to i32*
  store i32 0, i32* %716
  store %struct.Memory* %loadMem_400e5e, %struct.Memory** %MEMORY
  br label %block_.L_400e65

block_.L_400e65:                                  ; preds = %block_400e71, %block_400e43
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 15
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %RBP.i365
  %727 = sub i64 %726, 116
  %728 = load i64, i64* %PC.i363
  %729 = add i64 %728, 3
  store i64 %729, i64* %PC.i363
  %730 = inttoptr i64 %727 to i32*
  %731 = load i32, i32* %730
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_400e65, %struct.Memory** %MEMORY
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %738 to i32*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %741 to i64*
  %742 = load i32, i32* %EAX.i361
  %743 = zext i32 %742 to i64
  %744 = load i64, i64* %RBP.i362
  %745 = sub i64 %744, 36
  %746 = load i64, i64* %PC.i360
  %747 = add i64 %746, 3
  store i64 %747, i64* %PC.i360
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748
  %750 = sub i32 %742, %749
  %751 = icmp ult i32 %742, %749
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %752, i8* %753, align 1
  %754 = and i32 %750, 255
  %755 = call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %758, i8* %759, align 1
  %760 = xor i32 %749, %742
  %761 = xor i32 %760, %750
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %764, i8* %765, align 1
  %766 = icmp eq i32 %750, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %750, 31
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1
  %772 = lshr i32 %742, 31
  %773 = lshr i32 %749, 31
  %774 = xor i32 %773, %772
  %775 = xor i32 %769, %772
  %776 = add i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %778, i8* %779, align 1
  store %struct.Memory* %loadMem_400e68, %struct.Memory** %MEMORY
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i359
  %784 = add i64 %783, 97
  %785 = load i64, i64* %PC.i359
  %786 = add i64 %785, 6
  %787 = load i64, i64* %PC.i359
  %788 = add i64 %787, 6
  store i64 %788, i64* %PC.i359
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %790 = load i8, i8* %789, align 1
  %791 = icmp ne i8 %790, 0
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %793 = load i8, i8* %792, align 1
  %794 = icmp ne i8 %793, 0
  %795 = xor i1 %791, %794
  %796 = xor i1 %795, true
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %BRANCH_TAKEN, align 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %799 = select i1 %795, i64 %786, i64 %784
  store i64 %799, i64* %798, align 8
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadBr_400e6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e6b = icmp eq i8 %loadBr_400e6b, 1
  br i1 %cmpBr_400e6b, label %block_.L_400ecc, label %block_400e71

block_400e71:                                     ; preds = %block_.L_400e65
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 1
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i358
  %810 = sub i64 %809, 64
  %811 = load i64, i64* %PC.i356
  %812 = add i64 %811, 4
  store i64 %812, i64* %PC.i356
  %813 = inttoptr i64 %810 to i64*
  %814 = load i64, i64* %813
  store i64 %814, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_400e71, %struct.Memory** %MEMORY
  %loadMem_400e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 5
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 15
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %RBP.i355
  %825 = sub i64 %824, 108
  %826 = load i64, i64* %PC.i353
  %827 = add i64 %826, 4
  store i64 %827, i64* %PC.i353
  %828 = inttoptr i64 %825 to i32*
  %829 = load i32, i32* %828
  %830 = sext i32 %829 to i64
  store i64 %830, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_400e75, %struct.Memory** %MEMORY
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 5
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RCX.i352
  %838 = load i64, i64* %PC.i351
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC.i351
  %840 = shl i64 %837, 12
  %841 = icmp slt i64 %840, 0
  %842 = shl i64 %840, 1
  store i64 %842, i64* %RCX.i352, align 8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %844 = zext i1 %841 to i8
  store i8 %844, i8* %843, align 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %846 = trunc i64 %842 to i32
  store i8 1, i8* %845, align 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %847, align 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %849 = icmp eq i64 %842, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %848, align 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %852 = lshr i64 %842, 63
  %853 = trunc i64 %852 to i8
  store i8 %853, i8* %851, align 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %854, align 1
  store %struct.Memory* %loadMem_400e79, %struct.Memory** %MEMORY
  %loadMem_400e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 5
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RAX.i349
  %865 = load i64, i64* %RCX.i350
  %866 = load i64, i64* %PC.i348
  %867 = add i64 %866, 3
  store i64 %867, i64* %PC.i348
  %868 = add i64 %865, %864
  store i64 %868, i64* %RAX.i349, align 8
  %869 = icmp ult i64 %868, %864
  %870 = icmp ult i64 %868, %865
  %871 = or i1 %869, %870
  %872 = zext i1 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %872, i8* %873, align 1
  %874 = trunc i64 %868 to i32
  %875 = and i32 %874, 255
  %876 = call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %879, i8* %880, align 1
  %881 = xor i64 %865, %864
  %882 = xor i64 %881, %868
  %883 = lshr i64 %882, 4
  %884 = trunc i64 %883 to i8
  %885 = and i8 %884, 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %885, i8* %886, align 1
  %887 = icmp eq i64 %868, 0
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %888, i8* %889, align 1
  %890 = lshr i64 %868, 63
  %891 = trunc i64 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %891, i8* %892, align 1
  %893 = lshr i64 %864, 63
  %894 = lshr i64 %865, 63
  %895 = xor i64 %890, %893
  %896 = xor i64 %890, %894
  %897 = add i64 %895, %896
  %898 = icmp eq i64 %897, 2
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %899, i8* %900, align 1
  store %struct.Memory* %loadMem_400e7d, %struct.Memory** %MEMORY
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RBP.i347
  %911 = sub i64 %910, 116
  %912 = load i64, i64* %PC.i345
  %913 = add i64 %912, 4
  store i64 %913, i64* %PC.i345
  %914 = inttoptr i64 %911 to i32*
  %915 = load i32, i32* %914
  %916 = sext i32 %915 to i64
  store i64 %916, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_400e80, %struct.Memory** %MEMORY
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 1
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 5
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %926, i64 0, i64 0
  %YMM0.i344 = bitcast %union.VectorReg* %927 to %"class.std::bitset"*
  %928 = bitcast %"class.std::bitset"* %YMM0.i344 to i8*
  %929 = load i64, i64* %RAX.i342
  %930 = load i64, i64* %RCX.i343
  %931 = mul i64 %930, 8
  %932 = add i64 %931, %929
  %933 = load i64, i64* %PC.i341
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC.i341
  %935 = inttoptr i64 %932 to double*
  %936 = load double, double* %935
  %937 = bitcast i8* %928 to double*
  store double %936, double* %937, align 1
  %938 = getelementptr inbounds i8, i8* %928, i64 8
  %939 = bitcast i8* %938 to double*
  store double 0.000000e+00, double* %939, align 1
  store %struct.Memory* %loadMem_400e84, %struct.Memory** %MEMORY
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 15
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %RBP.i340
  %950 = sub i64 %949, 72
  %951 = load i64, i64* %PC.i338
  %952 = add i64 %951, 4
  store i64 %952, i64* %PC.i338
  %953 = inttoptr i64 %950 to i64*
  %954 = load i64, i64* %953
  store i64 %954, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_400e89, %struct.Memory** %MEMORY
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 5
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RBP.i337
  %965 = sub i64 %964, 116
  %966 = load i64, i64* %PC.i335
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC.i335
  %968 = inttoptr i64 %965 to i32*
  %969 = load i32, i32* %968
  %970 = sext i32 %969 to i64
  store i64 %970, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_400e8d, %struct.Memory** %MEMORY
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RCX.i334
  %978 = load i64, i64* %PC.i333
  %979 = add i64 %978, 4
  store i64 %979, i64* %PC.i333
  %980 = shl i64 %977, 12
  %981 = icmp slt i64 %980, 0
  %982 = shl i64 %980, 1
  store i64 %982, i64* %RCX.i334, align 8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %984 = zext i1 %981 to i8
  store i8 %984, i8* %983, align 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %986 = trunc i64 %982 to i32
  store i8 1, i8* %985, align 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %989 = icmp eq i64 %982, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %988, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %992 = lshr i64 %982, 63
  %993 = trunc i64 %992 to i8
  store i8 %993, i8* %991, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %994, align 1
  store %struct.Memory* %loadMem_400e91, %struct.Memory** %MEMORY
  %loadMem_400e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 5
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RAX.i331
  %1005 = load i64, i64* %RCX.i332
  %1006 = load i64, i64* %PC.i330
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC.i330
  %1008 = add i64 %1005, %1004
  store i64 %1008, i64* %RAX.i331, align 8
  %1009 = icmp ult i64 %1008, %1004
  %1010 = icmp ult i64 %1008, %1005
  %1011 = or i1 %1009, %1010
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1012, i8* %1013, align 1
  %1014 = trunc i64 %1008 to i32
  %1015 = and i32 %1014, 255
  %1016 = call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1019, i8* %1020, align 1
  %1021 = xor i64 %1005, %1004
  %1022 = xor i64 %1021, %1008
  %1023 = lshr i64 %1022, 4
  %1024 = trunc i64 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1025, i8* %1026, align 1
  %1027 = icmp eq i64 %1008, 0
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1028, i8* %1029, align 1
  %1030 = lshr i64 %1008, 63
  %1031 = trunc i64 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1031, i8* %1032, align 1
  %1033 = lshr i64 %1004, 63
  %1034 = lshr i64 %1005, 63
  %1035 = xor i64 %1030, %1033
  %1036 = xor i64 %1030, %1034
  %1037 = add i64 %1035, %1036
  %1038 = icmp eq i64 %1037, 2
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1039, i8* %1040, align 1
  store %struct.Memory* %loadMem_400e95, %struct.Memory** %MEMORY
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 5
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RBP.i329
  %1051 = sub i64 %1050, 112
  %1052 = load i64, i64* %PC.i327
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %PC.i327
  %1054 = inttoptr i64 %1051 to i32*
  %1055 = load i32, i32* %1054
  %1056 = sext i32 %1055 to i64
  store i64 %1056, i64* %RCX.i328, align 8
  store %struct.Memory* %loadMem_400e98, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 5
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1066, i64 0, i64 0
  %YMM0.i326 = bitcast %union.VectorReg* %1067 to %"class.std::bitset"*
  %1068 = bitcast %"class.std::bitset"* %YMM0.i326 to i8*
  %1069 = bitcast %"class.std::bitset"* %YMM0.i326 to i8*
  %1070 = load i64, i64* %RAX.i324
  %1071 = load i64, i64* %RCX.i325
  %1072 = mul i64 %1071, 8
  %1073 = add i64 %1072, %1070
  %1074 = load i64, i64* %PC.i323
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %PC.i323
  %1076 = bitcast i8* %1069 to double*
  %1077 = load double, double* %1076, align 1
  %1078 = getelementptr inbounds i8, i8* %1069, i64 8
  %1079 = bitcast i8* %1078 to i64*
  %1080 = load i64, i64* %1079, align 1
  %1081 = inttoptr i64 %1073 to double*
  %1082 = load double, double* %1081
  %1083 = fmul double %1077, %1082
  %1084 = bitcast i8* %1068 to double*
  store double %1083, double* %1084, align 1
  %1085 = getelementptr inbounds i8, i8* %1068, i64 8
  %1086 = bitcast i8* %1085 to i64*
  store i64 %1080, i64* %1086, align 1
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadMem_400ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 15
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RBP.i322
  %1097 = sub i64 %1096, 56
  %1098 = load i64, i64* %PC.i320
  %1099 = add i64 %1098, 4
  store i64 %1099, i64* %PC.i320
  %1100 = inttoptr i64 %1097 to i64*
  %1101 = load i64, i64* %1100
  store i64 %1101, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_400ea1, %struct.Memory** %MEMORY
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 5
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 15
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1110 to i64*
  %1111 = load i64, i64* %RBP.i319
  %1112 = sub i64 %1111, 108
  %1113 = load i64, i64* %PC.i317
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %PC.i317
  %1115 = inttoptr i64 %1112 to i32*
  %1116 = load i32, i32* %1115
  %1117 = sext i32 %1116 to i64
  store i64 %1117, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_400ea5, %struct.Memory** %MEMORY
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 5
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RCX.i316
  %1125 = load i64, i64* %PC.i315
  %1126 = add i64 %1125, 4
  store i64 %1126, i64* %PC.i315
  %1127 = shl i64 %1124, 12
  %1128 = icmp slt i64 %1127, 0
  %1129 = shl i64 %1127, 1
  store i64 %1129, i64* %RCX.i316, align 8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1131 = zext i1 %1128 to i8
  store i8 %1131, i8* %1130, align 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1133 = trunc i64 %1129 to i32
  store i8 1, i8* %1132, align 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1134, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1136 = icmp eq i64 %1129, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %1135, align 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1139 = lshr i64 %1129, 63
  %1140 = trunc i64 %1139 to i8
  store i8 %1140, i8* %1138, align 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1141, align 1
  store %struct.Memory* %loadMem_400ea9, %struct.Memory** %MEMORY
  %loadMem_400ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 1
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 5
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RAX.i313
  %1152 = load i64, i64* %RCX.i314
  %1153 = load i64, i64* %PC.i312
  %1154 = add i64 %1153, 3
  store i64 %1154, i64* %PC.i312
  %1155 = add i64 %1152, %1151
  store i64 %1155, i64* %RAX.i313, align 8
  %1156 = icmp ult i64 %1155, %1151
  %1157 = icmp ult i64 %1155, %1152
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1159, i8* %1160, align 1
  %1161 = trunc i64 %1155 to i32
  %1162 = and i32 %1161, 255
  %1163 = call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1166, i8* %1167, align 1
  %1168 = xor i64 %1152, %1151
  %1169 = xor i64 %1168, %1155
  %1170 = lshr i64 %1169, 4
  %1171 = trunc i64 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1172, i8* %1173, align 1
  %1174 = icmp eq i64 %1155, 0
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1175, i8* %1176, align 1
  %1177 = lshr i64 %1155, 63
  %1178 = trunc i64 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1178, i8* %1179, align 1
  %1180 = lshr i64 %1151, 63
  %1181 = lshr i64 %1152, 63
  %1182 = xor i64 %1177, %1180
  %1183 = xor i64 %1177, %1181
  %1184 = add i64 %1182, %1183
  %1185 = icmp eq i64 %1184, 2
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1186, i8* %1187, align 1
  store %struct.Memory* %loadMem_400ead, %struct.Memory** %MEMORY
  %loadMem_400eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 5
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 15
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RBP.i311
  %1198 = sub i64 %1197, 112
  %1199 = load i64, i64* %PC.i309
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %PC.i309
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_400eb0, %struct.Memory** %MEMORY
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 5
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %1214 to %"class.std::bitset"*
  %1215 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1216 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1217 = load i64, i64* %RAX.i306
  %1218 = load i64, i64* %RCX.i307
  %1219 = mul i64 %1218, 8
  %1220 = add i64 %1219, %1217
  %1221 = load i64, i64* %PC.i305
  %1222 = add i64 %1221, 5
  store i64 %1222, i64* %PC.i305
  %1223 = bitcast i8* %1216 to double*
  %1224 = load double, double* %1223, align 1
  %1225 = getelementptr inbounds i8, i8* %1216, i64 8
  %1226 = bitcast i8* %1225 to i64*
  %1227 = load i64, i64* %1226, align 1
  %1228 = inttoptr i64 %1220 to double*
  %1229 = load double, double* %1228
  %1230 = fadd double %1224, %1229
  %1231 = bitcast i8* %1215 to double*
  store double %1230, double* %1231, align 1
  %1232 = getelementptr inbounds i8, i8* %1215, i64 8
  %1233 = bitcast i8* %1232 to i64*
  store i64 %1227, i64* %1233, align 1
  store %struct.Memory* %loadMem_400eb4, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 5
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1243, i64 0, i64 0
  %XMM0.i304 = bitcast %union.VectorReg* %1244 to %union.vec128_t*
  %1245 = load i64, i64* %RAX.i302
  %1246 = load i64, i64* %RCX.i303
  %1247 = mul i64 %1246, 8
  %1248 = add i64 %1247, %1245
  %1249 = bitcast %union.vec128_t* %XMM0.i304 to i8*
  %1250 = load i64, i64* %PC.i301
  %1251 = add i64 %1250, 5
  store i64 %1251, i64* %PC.i301
  %1252 = bitcast i8* %1249 to double*
  %1253 = load double, double* %1252, align 1
  %1254 = inttoptr i64 %1248 to double*
  store double %1253, double* %1254
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  %loadMem_400ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i300
  %1265 = sub i64 %1264, 116
  %1266 = load i64, i64* %PC.i298
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i298
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_400ebe, %struct.Memory** %MEMORY
  %loadMem_400ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RAX.i297
  %1278 = load i64, i64* %PC.i296
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC.i296
  %1280 = trunc i64 %1277 to i32
  %1281 = add i32 1, %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RAX.i297, align 8
  %1283 = icmp ult i32 %1281, %1280
  %1284 = icmp ult i32 %1281, 1
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1287, align 1
  %1288 = and i32 %1281, 255
  %1289 = call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1292, i8* %1293, align 1
  %1294 = xor i64 1, %1277
  %1295 = trunc i64 %1294 to i32
  %1296 = xor i32 %1295, %1281
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1299, i8* %1300, align 1
  %1301 = icmp eq i32 %1281, 0
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i32 %1281, 31
  %1305 = trunc i32 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = lshr i32 %1280, 31
  %1308 = xor i32 %1304, %1307
  %1309 = add i32 %1308, %1304
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1311, i8* %1312, align 1
  store %struct.Memory* %loadMem_400ec1, %struct.Memory** %MEMORY
  %loadMem_400ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 1
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %1318 to i32*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 15
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %RBP.i295
  %1323 = sub i64 %1322, 116
  %1324 = load i32, i32* %EAX.i294
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC.i293
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i293
  %1328 = inttoptr i64 %1323 to i32*
  store i32 %1324, i32* %1328
  store %struct.Memory* %loadMem_400ec4, %struct.Memory** %MEMORY
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %PC.i292
  %1333 = add i64 %1332, -98
  %1334 = load i64, i64* %PC.i292
  %1335 = add i64 %1334, 5
  store i64 %1335, i64* %PC.i292
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1333, i64* %1336, align 8
  store %struct.Memory* %loadMem_400ec7, %struct.Memory** %MEMORY
  br label %block_.L_400e65

block_.L_400ecc:                                  ; preds = %block_.L_400e65
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %PC.i291
  %1341 = add i64 %1340, 5
  %1342 = load i64, i64* %PC.i291
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC.i291
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1341, i64* %1344, align 8
  store %struct.Memory* %loadMem_400ecc, %struct.Memory** %MEMORY
  br label %block_.L_400ed1

block_.L_400ed1:                                  ; preds = %block_.L_400ecc
  %loadMem_400ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 15
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i290
  %1355 = sub i64 %1354, 112
  %1356 = load i64, i64* %PC.i288
  %1357 = add i64 %1356, 3
  store i64 %1357, i64* %PC.i288
  %1358 = inttoptr i64 %1355 to i32*
  %1359 = load i32, i32* %1358
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_400ed1, %struct.Memory** %MEMORY
  %loadMem_400ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 1
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RAX.i287
  %1368 = load i64, i64* %PC.i286
  %1369 = add i64 %1368, 3
  store i64 %1369, i64* %PC.i286
  %1370 = trunc i64 %1367 to i32
  %1371 = add i32 1, %1370
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX.i287, align 8
  %1373 = icmp ult i32 %1371, %1370
  %1374 = icmp ult i32 %1371, 1
  %1375 = or i1 %1373, %1374
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1376, i8* %1377, align 1
  %1378 = and i32 %1371, 255
  %1379 = call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1382, i8* %1383, align 1
  %1384 = xor i64 1, %1367
  %1385 = trunc i64 %1384 to i32
  %1386 = xor i32 %1385, %1371
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1389, i8* %1390, align 1
  %1391 = icmp eq i32 %1371, 0
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1392, i8* %1393, align 1
  %1394 = lshr i32 %1371, 31
  %1395 = trunc i32 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1395, i8* %1396, align 1
  %1397 = lshr i32 %1370, 31
  %1398 = xor i32 %1394, %1397
  %1399 = add i32 %1398, %1394
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1401, i8* %1402, align 1
  store %struct.Memory* %loadMem_400ed4, %struct.Memory** %MEMORY
  %loadMem_400ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 1
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %EAX.i284 = bitcast %union.anon* %1408 to i32*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 15
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %RBP.i285
  %1413 = sub i64 %1412, 112
  %1414 = load i32, i32* %EAX.i284
  %1415 = zext i32 %1414 to i64
  %1416 = load i64, i64* %PC.i283
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC.i283
  %1418 = inttoptr i64 %1413 to i32*
  store i32 %1414, i32* %1418
  store %struct.Memory* %loadMem_400ed7, %struct.Memory** %MEMORY
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i282
  %1423 = add i64 %1422, -163
  %1424 = load i64, i64* %PC.i282
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i282
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1426, align 8
  store %struct.Memory* %loadMem_400eda, %struct.Memory** %MEMORY
  br label %block_.L_400e37

block_.L_400edf:                                  ; preds = %block_.L_400e37
  %loadMem_400edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %PC.i281
  %1431 = add i64 %1430, 5
  %1432 = load i64, i64* %PC.i281
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i281
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1431, i64* %1434, align 8
  store %struct.Memory* %loadMem_400edf, %struct.Memory** %MEMORY
  br label %block_.L_400ee4

block_.L_400ee4:                                  ; preds = %block_.L_400edf
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 1
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i280
  %1445 = sub i64 %1444, 108
  %1446 = load i64, i64* %PC.i278
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC.i278
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 1
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %RAX.i277
  %1458 = load i64, i64* %PC.i276
  %1459 = add i64 %1458, 3
  store i64 %1459, i64* %PC.i276
  %1460 = trunc i64 %1457 to i32
  %1461 = add i32 1, %1460
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX.i277, align 8
  %1463 = icmp ult i32 %1461, %1460
  %1464 = icmp ult i32 %1461, 1
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1466, i8* %1467, align 1
  %1468 = and i32 %1461, 255
  %1469 = call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1472, i8* %1473, align 1
  %1474 = xor i64 1, %1457
  %1475 = trunc i64 %1474 to i32
  %1476 = xor i32 %1475, %1461
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1479, i8* %1480, align 1
  %1481 = icmp eq i32 %1461, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1461, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1460, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add i32 %1488, %1484
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_400ee7, %struct.Memory** %MEMORY
  %loadMem_400eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %1498 to i32*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i275
  %1503 = sub i64 %1502, 108
  %1504 = load i32, i32* %EAX.i274
  %1505 = zext i32 %1504 to i64
  %1506 = load i64, i64* %PC.i273
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i273
  %1508 = inttoptr i64 %1503 to i32*
  store i32 %1504, i32* %1508
  store %struct.Memory* %loadMem_400eea, %struct.Memory** %MEMORY
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %PC.i272
  %1513 = add i64 %1512, -201
  %1514 = load i64, i64* %PC.i272
  %1515 = add i64 %1514, 5
  store i64 %1515, i64* %PC.i272
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1513, i64* %1516, align 8
  store %struct.Memory* %loadMem_400eed, %struct.Memory** %MEMORY
  br label %block_.L_400e24

block_.L_400ef2:                                  ; preds = %block_.L_400e24
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RBP.i271
  %1524 = sub i64 %1523, 108
  %1525 = load i64, i64* %PC.i270
  %1526 = add i64 %1525, 7
  store i64 %1526, i64* %PC.i270
  %1527 = inttoptr i64 %1524 to i32*
  store i32 0, i32* %1527
  store %struct.Memory* %loadMem_400ef2, %struct.Memory** %MEMORY
  br label %block_.L_400ef9

block_.L_400ef9:                                  ; preds = %block_.L_400fb9, %block_.L_400ef2
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i269
  %1538 = sub i64 %1537, 108
  %1539 = load i64, i64* %PC.i267
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC.i267
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_400ef9, %struct.Memory** %MEMORY
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %1549 to i32*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 15
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %1552 to i64*
  %1553 = load i32, i32* %EAX.i265
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %RBP.i266
  %1556 = sub i64 %1555, 32
  %1557 = load i64, i64* %PC.i264
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i264
  %1559 = inttoptr i64 %1556 to i32*
  %1560 = load i32, i32* %1559
  %1561 = sub i32 %1553, %1560
  %1562 = icmp ult i32 %1553, %1560
  %1563 = zext i1 %1562 to i8
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1563, i8* %1564, align 1
  %1565 = and i32 %1561, 255
  %1566 = call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1569, i8* %1570, align 1
  %1571 = xor i32 %1560, %1553
  %1572 = xor i32 %1571, %1561
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1575, i8* %1576, align 1
  %1577 = icmp eq i32 %1561, 0
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1578, i8* %1579, align 1
  %1580 = lshr i32 %1561, 31
  %1581 = trunc i32 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1581, i8* %1582, align 1
  %1583 = lshr i32 %1553, 31
  %1584 = lshr i32 %1560, 31
  %1585 = xor i32 %1584, %1583
  %1586 = xor i32 %1580, %1583
  %1587 = add i32 %1586, %1585
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1589, i8* %1590, align 1
  store %struct.Memory* %loadMem_400efc, %struct.Memory** %MEMORY
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %PC.i263
  %1595 = add i64 %1594, 200
  %1596 = load i64, i64* %PC.i263
  %1597 = add i64 %1596, 6
  %1598 = load i64, i64* %PC.i263
  %1599 = add i64 %1598, 6
  store i64 %1599, i64* %PC.i263
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1601 = load i8, i8* %1600, align 1
  %1602 = icmp ne i8 %1601, 0
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1604 = load i8, i8* %1603, align 1
  %1605 = icmp ne i8 %1604, 0
  %1606 = xor i1 %1602, %1605
  %1607 = xor i1 %1606, true
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %BRANCH_TAKEN, align 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1610 = select i1 %1606, i64 %1597, i64 %1595
  store i64 %1610, i64* %1609, align 8
  store %struct.Memory* %loadMem_400eff, %struct.Memory** %MEMORY
  %loadBr_400eff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eff = icmp eq i8 %loadBr_400eff, 1
  br i1 %cmpBr_400eff, label %block_.L_400fc7, label %block_400f05

block_400f05:                                     ; preds = %block_.L_400ef9
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 15
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RBP.i262
  %1618 = sub i64 %1617, 112
  %1619 = load i64, i64* %PC.i261
  %1620 = add i64 %1619, 7
  store i64 %1620, i64* %PC.i261
  %1621 = inttoptr i64 %1618 to i32*
  store i32 0, i32* %1621
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  br label %block_.L_400f0c

block_.L_400f0c:                                  ; preds = %block_.L_400fa6, %block_400f05
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 1
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i260
  %1632 = sub i64 %1631, 112
  %1633 = load i64, i64* %PC.i258
  %1634 = add i64 %1633, 3
  store i64 %1634, i64* %PC.i258
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_400f0c, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %1643 to i32*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %1646 to i64*
  %1647 = load i32, i32* %EAX.i256
  %1648 = zext i32 %1647 to i64
  %1649 = load i64, i64* %RBP.i257
  %1650 = sub i64 %1649, 40
  %1651 = load i64, i64* %PC.i255
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i255
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653
  %1655 = sub i32 %1647, %1654
  %1656 = icmp ult i32 %1647, %1654
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1657, i8* %1658, align 1
  %1659 = and i32 %1655, 255
  %1660 = call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1663, i8* %1664, align 1
  %1665 = xor i32 %1654, %1647
  %1666 = xor i32 %1665, %1655
  %1667 = lshr i32 %1666, 4
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1669, i8* %1670, align 1
  %1671 = icmp eq i32 %1655, 0
  %1672 = zext i1 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1672, i8* %1673, align 1
  %1674 = lshr i32 %1655, 31
  %1675 = trunc i32 %1674 to i8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1675, i8* %1676, align 1
  %1677 = lshr i32 %1647, 31
  %1678 = lshr i32 %1654, 31
  %1679 = xor i32 %1678, %1677
  %1680 = xor i32 %1674, %1677
  %1681 = add i32 %1680, %1679
  %1682 = icmp eq i32 %1681, 2
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1683, i8* %1684, align 1
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %PC.i254
  %1689 = add i64 %1688, 162
  %1690 = load i64, i64* %PC.i254
  %1691 = add i64 %1690, 6
  %1692 = load i64, i64* %PC.i254
  %1693 = add i64 %1692, 6
  store i64 %1693, i64* %PC.i254
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1695 = load i8, i8* %1694, align 1
  %1696 = icmp ne i8 %1695, 0
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1698 = load i8, i8* %1697, align 1
  %1699 = icmp ne i8 %1698, 0
  %1700 = xor i1 %1696, %1699
  %1701 = xor i1 %1700, true
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %BRANCH_TAKEN, align 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1704 = select i1 %1700, i64 %1691, i64 %1689
  store i64 %1704, i64* %1703, align 8
  store %struct.Memory* %loadMem_400f12, %struct.Memory** %MEMORY
  %loadBr_400f12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f12 = icmp eq i8 %loadBr_400f12, 1
  br i1 %cmpBr_400f12, label %block_.L_400fb4, label %block_400f18

block_400f18:                                     ; preds = %block_.L_400f0c
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1708, i64 0, i64 0
  %YMM0.i252 = bitcast %union.VectorReg* %1709 to %"class.std::bitset"*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1710, i64 0, i64 0
  %XMM0.i253 = bitcast %union.VectorReg* %1711 to %union.vec128_t*
  %1712 = bitcast %"class.std::bitset"* %YMM0.i252 to i8*
  %1713 = bitcast %"class.std::bitset"* %YMM0.i252 to i8*
  %1714 = bitcast %union.vec128_t* %XMM0.i253 to i8*
  %1715 = load i64, i64* %PC.i251
  %1716 = add i64 %1715, 3
  store i64 %1716, i64* %PC.i251
  %1717 = bitcast i8* %1713 to i64*
  %1718 = load i64, i64* %1717, align 1
  %1719 = getelementptr inbounds i8, i8* %1713, i64 8
  %1720 = bitcast i8* %1719 to i64*
  %1721 = load i64, i64* %1720, align 1
  %1722 = bitcast i8* %1714 to i64*
  %1723 = load i64, i64* %1722, align 1
  %1724 = getelementptr inbounds i8, i8* %1714, i64 8
  %1725 = bitcast i8* %1724 to i64*
  %1726 = load i64, i64* %1725, align 1
  %1727 = xor i64 %1723, %1718
  %1728 = xor i64 %1726, %1721
  %1729 = trunc i64 %1727 to i32
  %1730 = lshr i64 %1727, 32
  %1731 = trunc i64 %1730 to i32
  %1732 = bitcast i8* %1712 to i32*
  store i32 %1729, i32* %1732, align 1
  %1733 = getelementptr inbounds i8, i8* %1712, i64 4
  %1734 = bitcast i8* %1733 to i32*
  store i32 %1731, i32* %1734, align 1
  %1735 = trunc i64 %1728 to i32
  %1736 = getelementptr inbounds i8, i8* %1712, i64 8
  %1737 = bitcast i8* %1736 to i32*
  store i32 %1735, i32* %1737, align 1
  %1738 = lshr i64 %1728, 32
  %1739 = trunc i64 %1738 to i32
  %1740 = getelementptr inbounds i8, i8* %1712, i64 12
  %1741 = bitcast i8* %1740 to i32*
  store i32 %1739, i32* %1741, align 1
  store %struct.Memory* %loadMem_400f18, %struct.Memory** %MEMORY
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 15
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RBP.i250
  %1752 = sub i64 %1751, 80
  %1753 = load i64, i64* %PC.i248
  %1754 = add i64 %1753, 4
  store i64 %1754, i64* %PC.i248
  %1755 = inttoptr i64 %1752 to i64*
  %1756 = load i64, i64* %1755
  store i64 %1756, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_400f1b, %struct.Memory** %MEMORY
  %loadMem_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 5
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 15
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RBP.i247
  %1767 = sub i64 %1766, 108
  %1768 = load i64, i64* %PC.i245
  %1769 = add i64 %1768, 4
  store i64 %1769, i64* %PC.i245
  %1770 = inttoptr i64 %1767 to i32*
  %1771 = load i32, i32* %1770
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_400f1f, %struct.Memory** %MEMORY
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RCX.i244
  %1780 = load i64, i64* %PC.i243
  %1781 = add i64 %1780, 4
  store i64 %1781, i64* %PC.i243
  %1782 = shl i64 %1779, 12
  %1783 = icmp slt i64 %1782, 0
  %1784 = shl i64 %1782, 1
  store i64 %1784, i64* %RCX.i244, align 8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1786 = zext i1 %1783 to i8
  store i8 %1786, i8* %1785, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1788 = trunc i64 %1784 to i32
  store i8 1, i8* %1787, align 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1789, align 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1791 = icmp eq i64 %1784, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %1790, align 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1794 = lshr i64 %1784, 63
  %1795 = trunc i64 %1794 to i8
  store i8 %1795, i8* %1793, align 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1796, align 1
  store %struct.Memory* %loadMem_400f23, %struct.Memory** %MEMORY
  %loadMem_400f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 5
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RAX.i241
  %1807 = load i64, i64* %RCX.i242
  %1808 = load i64, i64* %PC.i240
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i240
  %1810 = add i64 %1807, %1806
  store i64 %1810, i64* %RAX.i241, align 8
  %1811 = icmp ult i64 %1810, %1806
  %1812 = icmp ult i64 %1810, %1807
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1814, i8* %1815, align 1
  %1816 = trunc i64 %1810 to i32
  %1817 = and i32 %1816, 255
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1821, i8* %1822, align 1
  %1823 = xor i64 %1807, %1806
  %1824 = xor i64 %1823, %1810
  %1825 = lshr i64 %1824, 4
  %1826 = trunc i64 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1827, i8* %1828, align 1
  %1829 = icmp eq i64 %1810, 0
  %1830 = zext i1 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1830, i8* %1831, align 1
  %1832 = lshr i64 %1810, 63
  %1833 = trunc i64 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i64 %1806, 63
  %1836 = lshr i64 %1807, 63
  %1837 = xor i64 %1832, %1835
  %1838 = xor i64 %1832, %1836
  %1839 = add i64 %1837, %1838
  %1840 = icmp eq i64 %1839, 2
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1841, i8* %1842, align 1
  store %struct.Memory* %loadMem_400f27, %struct.Memory** %MEMORY
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 5
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RBP.i239
  %1853 = sub i64 %1852, 112
  %1854 = load i64, i64* %PC.i237
  %1855 = add i64 %1854, 4
  store i64 %1855, i64* %PC.i237
  %1856 = inttoptr i64 %1853 to i32*
  %1857 = load i32, i32* %1856
  %1858 = sext i32 %1857 to i64
  store i64 %1858, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_400f2a, %struct.Memory** %MEMORY
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 1
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 5
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1868, i64 0, i64 0
  %XMM0.i236 = bitcast %union.VectorReg* %1869 to %union.vec128_t*
  %1870 = load i64, i64* %RAX.i234
  %1871 = load i64, i64* %RCX.i235
  %1872 = mul i64 %1871, 8
  %1873 = add i64 %1872, %1870
  %1874 = bitcast %union.vec128_t* %XMM0.i236 to i8*
  %1875 = load i64, i64* %PC.i233
  %1876 = add i64 %1875, 5
  store i64 %1876, i64* %PC.i233
  %1877 = bitcast i8* %1874 to double*
  %1878 = load double, double* %1877, align 1
  %1879 = inttoptr i64 %1873 to double*
  store double %1878, double* %1879
  store %struct.Memory* %loadMem_400f2e, %struct.Memory** %MEMORY
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %RBP.i232
  %1887 = sub i64 %1886, 116
  %1888 = load i64, i64* %PC.i231
  %1889 = add i64 %1888, 7
  store i64 %1889, i64* %PC.i231
  %1890 = inttoptr i64 %1887 to i32*
  store i32 0, i32* %1890
  store %struct.Memory* %loadMem_400f33, %struct.Memory** %MEMORY
  br label %block_.L_400f3a

block_.L_400f3a:                                  ; preds = %block_400f46, %block_400f18
  %loadMem_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 1
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 15
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RBP.i230
  %1901 = sub i64 %1900, 116
  %1902 = load i64, i64* %PC.i228
  %1903 = add i64 %1902, 3
  store i64 %1903, i64* %PC.i228
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904
  %1906 = zext i32 %1905 to i64
  store i64 %1906, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_400f3a, %struct.Memory** %MEMORY
  %loadMem_400f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %1912 to i32*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 15
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1915 to i64*
  %1916 = load i32, i32* %EAX.i226
  %1917 = zext i32 %1916 to i64
  %1918 = load i64, i64* %RBP.i227
  %1919 = sub i64 %1918, 44
  %1920 = load i64, i64* %PC.i225
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i225
  %1922 = inttoptr i64 %1919 to i32*
  %1923 = load i32, i32* %1922
  %1924 = sub i32 %1916, %1923
  %1925 = icmp ult i32 %1916, %1923
  %1926 = zext i1 %1925 to i8
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1926, i8* %1927, align 1
  %1928 = and i32 %1924, 255
  %1929 = call i32 @llvm.ctpop.i32(i32 %1928)
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = xor i8 %1931, 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1932, i8* %1933, align 1
  %1934 = xor i32 %1923, %1916
  %1935 = xor i32 %1934, %1924
  %1936 = lshr i32 %1935, 4
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1938, i8* %1939, align 1
  %1940 = icmp eq i32 %1924, 0
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1941, i8* %1942, align 1
  %1943 = lshr i32 %1924, 31
  %1944 = trunc i32 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1944, i8* %1945, align 1
  %1946 = lshr i32 %1916, 31
  %1947 = lshr i32 %1923, 31
  %1948 = xor i32 %1947, %1946
  %1949 = xor i32 %1943, %1946
  %1950 = add i32 %1949, %1948
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1952, i8* %1953, align 1
  store %struct.Memory* %loadMem_400f3d, %struct.Memory** %MEMORY
  %loadMem_400f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %PC.i224
  %1958 = add i64 %1957, 97
  %1959 = load i64, i64* %PC.i224
  %1960 = add i64 %1959, 6
  %1961 = load i64, i64* %PC.i224
  %1962 = add i64 %1961, 6
  store i64 %1962, i64* %PC.i224
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1964 = load i8, i8* %1963, align 1
  %1965 = icmp ne i8 %1964, 0
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1967 = load i8, i8* %1966, align 1
  %1968 = icmp ne i8 %1967, 0
  %1969 = xor i1 %1965, %1968
  %1970 = xor i1 %1969, true
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %BRANCH_TAKEN, align 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1973 = select i1 %1969, i64 %1960, i64 %1958
  store i64 %1973, i64* %1972, align 8
  store %struct.Memory* %loadMem_400f40, %struct.Memory** %MEMORY
  %loadBr_400f40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f40 = icmp eq i8 %loadBr_400f40, 1
  br i1 %cmpBr_400f40, label %block_.L_400fa1, label %block_400f46

block_400f46:                                     ; preds = %block_.L_400f3a
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 1
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %RBP.i223
  %1984 = sub i64 %1983, 88
  %1985 = load i64, i64* %PC.i221
  %1986 = add i64 %1985, 4
  store i64 %1986, i64* %PC.i221
  %1987 = inttoptr i64 %1984 to i64*
  %1988 = load i64, i64* %1987
  store i64 %1988, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_400f46, %struct.Memory** %MEMORY
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 5
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i220
  %1999 = sub i64 %1998, 108
  %2000 = load i64, i64* %PC.i218
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %PC.i218
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = sext i32 %2003 to i64
  store i64 %2004, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_400f4a, %struct.Memory** %MEMORY
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 5
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RCX.i217
  %2012 = load i64, i64* %PC.i216
  %2013 = add i64 %2012, 4
  store i64 %2013, i64* %PC.i216
  %2014 = shl i64 %2011, 12
  %2015 = icmp slt i64 %2014, 0
  %2016 = shl i64 %2014, 1
  store i64 %2016, i64* %RCX.i217, align 8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2018 = zext i1 %2015 to i8
  store i8 %2018, i8* %2017, align 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2020 = trunc i64 %2016 to i32
  store i8 1, i8* %2019, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2021, align 1
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2023 = icmp eq i64 %2016, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %2022, align 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2026 = lshr i64 %2016, 63
  %2027 = trunc i64 %2026 to i8
  store i8 %2027, i8* %2025, align 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2028, align 1
  store %struct.Memory* %loadMem_400f4e, %struct.Memory** %MEMORY
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 1
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 5
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RAX.i214
  %2039 = load i64, i64* %RCX.i215
  %2040 = load i64, i64* %PC.i213
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i213
  %2042 = add i64 %2039, %2038
  store i64 %2042, i64* %RAX.i214, align 8
  %2043 = icmp ult i64 %2042, %2038
  %2044 = icmp ult i64 %2042, %2039
  %2045 = or i1 %2043, %2044
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2046, i8* %2047, align 1
  %2048 = trunc i64 %2042 to i32
  %2049 = and i32 %2048, 255
  %2050 = call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2053, i8* %2054, align 1
  %2055 = xor i64 %2039, %2038
  %2056 = xor i64 %2055, %2042
  %2057 = lshr i64 %2056, 4
  %2058 = trunc i64 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2059, i8* %2060, align 1
  %2061 = icmp eq i64 %2042, 0
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i64 %2042, 63
  %2065 = trunc i64 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2065, i8* %2066, align 1
  %2067 = lshr i64 %2038, 63
  %2068 = lshr i64 %2039, 63
  %2069 = xor i64 %2064, %2067
  %2070 = xor i64 %2064, %2068
  %2071 = add i64 %2069, %2070
  %2072 = icmp eq i64 %2071, 2
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2073, i8* %2074, align 1
  store %struct.Memory* %loadMem_400f52, %struct.Memory** %MEMORY
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 5
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i212
  %2085 = sub i64 %2084, 116
  %2086 = load i64, i64* %PC.i210
  %2087 = add i64 %2086, 4
  store i64 %2087, i64* %PC.i210
  %2088 = inttoptr i64 %2085 to i32*
  %2089 = load i32, i32* %2088
  %2090 = sext i32 %2089 to i64
  store i64 %2090, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_400f55, %struct.Memory** %MEMORY
  %loadMem_400f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 5
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2100, i64 0, i64 0
  %YMM0.i209 = bitcast %union.VectorReg* %2101 to %"class.std::bitset"*
  %2102 = bitcast %"class.std::bitset"* %YMM0.i209 to i8*
  %2103 = load i64, i64* %RAX.i207
  %2104 = load i64, i64* %RCX.i208
  %2105 = mul i64 %2104, 8
  %2106 = add i64 %2105, %2103
  %2107 = load i64, i64* %PC.i206
  %2108 = add i64 %2107, 5
  store i64 %2108, i64* %PC.i206
  %2109 = inttoptr i64 %2106 to double*
  %2110 = load double, double* %2109
  %2111 = bitcast i8* %2102 to double*
  store double %2110, double* %2111, align 1
  %2112 = getelementptr inbounds i8, i8* %2102, i64 8
  %2113 = bitcast i8* %2112 to double*
  store double 0.000000e+00, double* %2113, align 1
  store %struct.Memory* %loadMem_400f59, %struct.Memory** %MEMORY
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 1
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 15
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2122 to i64*
  %2123 = load i64, i64* %RBP.i205
  %2124 = sub i64 %2123, 96
  %2125 = load i64, i64* %PC.i203
  %2126 = add i64 %2125, 4
  store i64 %2126, i64* %PC.i203
  %2127 = inttoptr i64 %2124 to i64*
  %2128 = load i64, i64* %2127
  store i64 %2128, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_400f5e, %struct.Memory** %MEMORY
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 5
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i202
  %2139 = sub i64 %2138, 116
  %2140 = load i64, i64* %PC.i200
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i200
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142
  %2144 = sext i32 %2143 to i64
  store i64 %2144, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_400f62, %struct.Memory** %MEMORY
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 5
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %RCX.i199
  %2152 = load i64, i64* %PC.i198
  %2153 = add i64 %2152, 4
  store i64 %2153, i64* %PC.i198
  %2154 = shl i64 %2151, 12
  %2155 = icmp slt i64 %2154, 0
  %2156 = shl i64 %2154, 1
  store i64 %2156, i64* %RCX.i199, align 8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2158 = zext i1 %2155 to i8
  store i8 %2158, i8* %2157, align 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2160 = trunc i64 %2156 to i32
  store i8 1, i8* %2159, align 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2161, align 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2163 = icmp eq i64 %2156, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %2162, align 1
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2166 = lshr i64 %2156, 63
  %2167 = trunc i64 %2166 to i8
  store i8 %2167, i8* %2165, align 1
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2168, align 1
  store %struct.Memory* %loadMem_400f66, %struct.Memory** %MEMORY
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 1
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 5
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %RAX.i196
  %2179 = load i64, i64* %RCX.i197
  %2180 = load i64, i64* %PC.i195
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i195
  %2182 = add i64 %2179, %2178
  store i64 %2182, i64* %RAX.i196, align 8
  %2183 = icmp ult i64 %2182, %2178
  %2184 = icmp ult i64 %2182, %2179
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1
  %2188 = trunc i64 %2182 to i32
  %2189 = and i32 %2188, 255
  %2190 = call i32 @llvm.ctpop.i32(i32 %2189)
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2193, i8* %2194, align 1
  %2195 = xor i64 %2179, %2178
  %2196 = xor i64 %2195, %2182
  %2197 = lshr i64 %2196, 4
  %2198 = trunc i64 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2199, i8* %2200, align 1
  %2201 = icmp eq i64 %2182, 0
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2202, i8* %2203, align 1
  %2204 = lshr i64 %2182, 63
  %2205 = trunc i64 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2205, i8* %2206, align 1
  %2207 = lshr i64 %2178, 63
  %2208 = lshr i64 %2179, 63
  %2209 = xor i64 %2204, %2207
  %2210 = xor i64 %2204, %2208
  %2211 = add i64 %2209, %2210
  %2212 = icmp eq i64 %2211, 2
  %2213 = zext i1 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2213, i8* %2214, align 1
  store %struct.Memory* %loadMem_400f6a, %struct.Memory** %MEMORY
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 15
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RBP.i194
  %2225 = sub i64 %2224, 112
  %2226 = load i64, i64* %PC.i192
  %2227 = add i64 %2226, 4
  store i64 %2227, i64* %PC.i192
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228
  %2230 = sext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 1
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 5
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2240, i64 0, i64 0
  %YMM0.i191 = bitcast %union.VectorReg* %2241 to %"class.std::bitset"*
  %2242 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %2243 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %2244 = load i64, i64* %RAX.i189
  %2245 = load i64, i64* %RCX.i190
  %2246 = mul i64 %2245, 8
  %2247 = add i64 %2246, %2244
  %2248 = load i64, i64* %PC.i188
  %2249 = add i64 %2248, 5
  store i64 %2249, i64* %PC.i188
  %2250 = bitcast i8* %2243 to double*
  %2251 = load double, double* %2250, align 1
  %2252 = getelementptr inbounds i8, i8* %2243, i64 8
  %2253 = bitcast i8* %2252 to i64*
  %2254 = load i64, i64* %2253, align 1
  %2255 = inttoptr i64 %2247 to double*
  %2256 = load double, double* %2255
  %2257 = fmul double %2251, %2256
  %2258 = bitcast i8* %2242 to double*
  store double %2257, double* %2258, align 1
  %2259 = getelementptr inbounds i8, i8* %2242, i64 8
  %2260 = bitcast i8* %2259 to i64*
  store i64 %2254, i64* %2260, align 1
  store %struct.Memory* %loadMem_400f71, %struct.Memory** %MEMORY
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 1
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 15
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2269 to i64*
  %2270 = load i64, i64* %RBP.i187
  %2271 = sub i64 %2270, 80
  %2272 = load i64, i64* %PC.i185
  %2273 = add i64 %2272, 4
  store i64 %2273, i64* %PC.i185
  %2274 = inttoptr i64 %2271 to i64*
  %2275 = load i64, i64* %2274
  store i64 %2275, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_400f76, %struct.Memory** %MEMORY
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 5
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 15
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %RBP.i184
  %2286 = sub i64 %2285, 108
  %2287 = load i64, i64* %PC.i182
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC.i182
  %2289 = inttoptr i64 %2286 to i32*
  %2290 = load i32, i32* %2289
  %2291 = sext i32 %2290 to i64
  store i64 %2291, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_400f7a, %struct.Memory** %MEMORY
  %loadMem_400f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 5
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RCX.i181
  %2299 = load i64, i64* %PC.i180
  %2300 = add i64 %2299, 4
  store i64 %2300, i64* %PC.i180
  %2301 = shl i64 %2298, 12
  %2302 = icmp slt i64 %2301, 0
  %2303 = shl i64 %2301, 1
  store i64 %2303, i64* %RCX.i181, align 8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2305 = zext i1 %2302 to i8
  store i8 %2305, i8* %2304, align 1
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2307 = trunc i64 %2303 to i32
  store i8 1, i8* %2306, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2308, align 1
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2310 = icmp eq i64 %2303, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %2309, align 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2313 = lshr i64 %2303, 63
  %2314 = trunc i64 %2313 to i8
  store i8 %2314, i8* %2312, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2315, align 1
  store %struct.Memory* %loadMem_400f7e, %struct.Memory** %MEMORY
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 1
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 5
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %2324 to i64*
  %2325 = load i64, i64* %RAX.i178
  %2326 = load i64, i64* %RCX.i179
  %2327 = load i64, i64* %PC.i177
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i177
  %2329 = add i64 %2326, %2325
  store i64 %2329, i64* %RAX.i178, align 8
  %2330 = icmp ult i64 %2329, %2325
  %2331 = icmp ult i64 %2329, %2326
  %2332 = or i1 %2330, %2331
  %2333 = zext i1 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2333, i8* %2334, align 1
  %2335 = trunc i64 %2329 to i32
  %2336 = and i32 %2335, 255
  %2337 = call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2340, i8* %2341, align 1
  %2342 = xor i64 %2326, %2325
  %2343 = xor i64 %2342, %2329
  %2344 = lshr i64 %2343, 4
  %2345 = trunc i64 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2346, i8* %2347, align 1
  %2348 = icmp eq i64 %2329, 0
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i64 %2329, 63
  %2352 = trunc i64 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i64 %2325, 63
  %2355 = lshr i64 %2326, 63
  %2356 = xor i64 %2351, %2354
  %2357 = xor i64 %2351, %2355
  %2358 = add i64 %2356, %2357
  %2359 = icmp eq i64 %2358, 2
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2360, i8* %2361, align 1
  store %struct.Memory* %loadMem_400f82, %struct.Memory** %MEMORY
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 5
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i176
  %2372 = sub i64 %2371, 112
  %2373 = load i64, i64* %PC.i174
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %PC.i174
  %2375 = inttoptr i64 %2372 to i32*
  %2376 = load i32, i32* %2375
  %2377 = sext i32 %2376 to i64
  store i64 %2377, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_400f85, %struct.Memory** %MEMORY
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 5
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2387, i64 0, i64 0
  %YMM0.i173 = bitcast %union.VectorReg* %2388 to %"class.std::bitset"*
  %2389 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %2390 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %2391 = load i64, i64* %RAX.i171
  %2392 = load i64, i64* %RCX.i172
  %2393 = mul i64 %2392, 8
  %2394 = add i64 %2393, %2391
  %2395 = load i64, i64* %PC.i170
  %2396 = add i64 %2395, 5
  store i64 %2396, i64* %PC.i170
  %2397 = bitcast i8* %2390 to double*
  %2398 = load double, double* %2397, align 1
  %2399 = getelementptr inbounds i8, i8* %2390, i64 8
  %2400 = bitcast i8* %2399 to i64*
  %2401 = load i64, i64* %2400, align 1
  %2402 = inttoptr i64 %2394 to double*
  %2403 = load double, double* %2402
  %2404 = fadd double %2398, %2403
  %2405 = bitcast i8* %2389 to double*
  store double %2404, double* %2405, align 1
  %2406 = getelementptr inbounds i8, i8* %2389, i64 8
  %2407 = bitcast i8* %2406 to i64*
  store i64 %2401, i64* %2407, align 1
  store %struct.Memory* %loadMem_400f89, %struct.Memory** %MEMORY
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 1
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 5
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 0
  %XMM0.i169 = bitcast %union.VectorReg* %2418 to %union.vec128_t*
  %2419 = load i64, i64* %RAX.i167
  %2420 = load i64, i64* %RCX.i168
  %2421 = mul i64 %2420, 8
  %2422 = add i64 %2421, %2419
  %2423 = bitcast %union.vec128_t* %XMM0.i169 to i8*
  %2424 = load i64, i64* %PC.i166
  %2425 = add i64 %2424, 5
  store i64 %2425, i64* %PC.i166
  %2426 = bitcast i8* %2423 to double*
  %2427 = load double, double* %2426, align 1
  %2428 = inttoptr i64 %2422 to double*
  store double %2427, double* %2428
  store %struct.Memory* %loadMem_400f8e, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 1
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RBP.i165
  %2439 = sub i64 %2438, 116
  %2440 = load i64, i64* %PC.i163
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i163
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 1
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %RAX.i162
  %2452 = load i64, i64* %PC.i161
  %2453 = add i64 %2452, 3
  store i64 %2453, i64* %PC.i161
  %2454 = trunc i64 %2451 to i32
  %2455 = add i32 1, %2454
  %2456 = zext i32 %2455 to i64
  store i64 %2456, i64* %RAX.i162, align 8
  %2457 = icmp ult i32 %2455, %2454
  %2458 = icmp ult i32 %2455, 1
  %2459 = or i1 %2457, %2458
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2460, i8* %2461, align 1
  %2462 = and i32 %2455, 255
  %2463 = call i32 @llvm.ctpop.i32(i32 %2462)
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = xor i8 %2465, 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2466, i8* %2467, align 1
  %2468 = xor i64 1, %2451
  %2469 = trunc i64 %2468 to i32
  %2470 = xor i32 %2469, %2455
  %2471 = lshr i32 %2470, 4
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2473, i8* %2474, align 1
  %2475 = icmp eq i32 %2455, 0
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2476, i8* %2477, align 1
  %2478 = lshr i32 %2455, 31
  %2479 = trunc i32 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2479, i8* %2480, align 1
  %2481 = lshr i32 %2454, 31
  %2482 = xor i32 %2478, %2481
  %2483 = add i32 %2482, %2478
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2485, i8* %2486, align 1
  store %struct.Memory* %loadMem_400f96, %struct.Memory** %MEMORY
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %2492 to i32*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i160
  %2497 = sub i64 %2496, 116
  %2498 = load i32, i32* %EAX.i159
  %2499 = zext i32 %2498 to i64
  %2500 = load i64, i64* %PC.i158
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i158
  %2502 = inttoptr i64 %2497 to i32*
  store i32 %2498, i32* %2502
  store %struct.Memory* %loadMem_400f99, %struct.Memory** %MEMORY
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %PC.i157
  %2507 = add i64 %2506, -98
  %2508 = load i64, i64* %PC.i157
  %2509 = add i64 %2508, 5
  store i64 %2509, i64* %PC.i157
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2507, i64* %2510, align 8
  store %struct.Memory* %loadMem_400f9c, %struct.Memory** %MEMORY
  br label %block_.L_400f3a

block_.L_400fa1:                                  ; preds = %block_.L_400f3a
  %loadMem_400fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %PC.i156
  %2515 = add i64 %2514, 5
  %2516 = load i64, i64* %PC.i156
  %2517 = add i64 %2516, 5
  store i64 %2517, i64* %PC.i156
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2515, i64* %2518, align 8
  store %struct.Memory* %loadMem_400fa1, %struct.Memory** %MEMORY
  br label %block_.L_400fa6

block_.L_400fa6:                                  ; preds = %block_.L_400fa1
  %loadMem_400fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 1
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 15
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RBP.i155
  %2529 = sub i64 %2528, 112
  %2530 = load i64, i64* %PC.i153
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %PC.i153
  %2532 = inttoptr i64 %2529 to i32*
  %2533 = load i32, i32* %2532
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_400fa6, %struct.Memory** %MEMORY
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 1
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %RAX.i152
  %2542 = load i64, i64* %PC.i151
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %PC.i151
  %2544 = trunc i64 %2541 to i32
  %2545 = add i32 1, %2544
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RAX.i152, align 8
  %2547 = icmp ult i32 %2545, %2544
  %2548 = icmp ult i32 %2545, 1
  %2549 = or i1 %2547, %2548
  %2550 = zext i1 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2550, i8* %2551, align 1
  %2552 = and i32 %2545, 255
  %2553 = call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2556, i8* %2557, align 1
  %2558 = xor i64 1, %2541
  %2559 = trunc i64 %2558 to i32
  %2560 = xor i32 %2559, %2545
  %2561 = lshr i32 %2560, 4
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2563, i8* %2564, align 1
  %2565 = icmp eq i32 %2545, 0
  %2566 = zext i1 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i32 %2545, 31
  %2569 = trunc i32 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2569, i8* %2570, align 1
  %2571 = lshr i32 %2544, 31
  %2572 = xor i32 %2568, %2571
  %2573 = add i32 %2572, %2568
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2575, i8* %2576, align 1
  store %struct.Memory* %loadMem_400fa9, %struct.Memory** %MEMORY
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 1
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %2582 to i32*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RBP.i150
  %2587 = sub i64 %2586, 112
  %2588 = load i32, i32* %EAX.i149
  %2589 = zext i32 %2588 to i64
  %2590 = load i64, i64* %PC.i148
  %2591 = add i64 %2590, 3
  store i64 %2591, i64* %PC.i148
  %2592 = inttoptr i64 %2587 to i32*
  store i32 %2588, i32* %2592
  store %struct.Memory* %loadMem_400fac, %struct.Memory** %MEMORY
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %PC.i147
  %2597 = add i64 %2596, -163
  %2598 = load i64, i64* %PC.i147
  %2599 = add i64 %2598, 5
  store i64 %2599, i64* %PC.i147
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2597, i64* %2600, align 8
  store %struct.Memory* %loadMem_400faf, %struct.Memory** %MEMORY
  br label %block_.L_400f0c

block_.L_400fb4:                                  ; preds = %block_.L_400f0c
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %PC.i146
  %2605 = add i64 %2604, 5
  %2606 = load i64, i64* %PC.i146
  %2607 = add i64 %2606, 5
  store i64 %2607, i64* %PC.i146
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2605, i64* %2608, align 8
  store %struct.Memory* %loadMem_400fb4, %struct.Memory** %MEMORY
  br label %block_.L_400fb9

block_.L_400fb9:                                  ; preds = %block_.L_400fb4
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i145
  %2619 = sub i64 %2618, 108
  %2620 = load i64, i64* %PC.i143
  %2621 = add i64 %2620, 3
  store i64 %2621, i64* %PC.i143
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_400fb9, %struct.Memory** %MEMORY
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RAX.i142
  %2632 = load i64, i64* %PC.i141
  %2633 = add i64 %2632, 3
  store i64 %2633, i64* %PC.i141
  %2634 = trunc i64 %2631 to i32
  %2635 = add i32 1, %2634
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RAX.i142, align 8
  %2637 = icmp ult i32 %2635, %2634
  %2638 = icmp ult i32 %2635, 1
  %2639 = or i1 %2637, %2638
  %2640 = zext i1 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2640, i8* %2641, align 1
  %2642 = and i32 %2635, 255
  %2643 = call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2646, i8* %2647, align 1
  %2648 = xor i64 1, %2631
  %2649 = trunc i64 %2648 to i32
  %2650 = xor i32 %2649, %2635
  %2651 = lshr i32 %2650, 4
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2653, i8* %2654, align 1
  %2655 = icmp eq i32 %2635, 0
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2656, i8* %2657, align 1
  %2658 = lshr i32 %2635, 31
  %2659 = trunc i32 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2659, i8* %2660, align 1
  %2661 = lshr i32 %2634, 31
  %2662 = xor i32 %2658, %2661
  %2663 = add i32 %2662, %2658
  %2664 = icmp eq i32 %2663, 2
  %2665 = zext i1 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2665, i8* %2666, align 1
  store %struct.Memory* %loadMem_400fbc, %struct.Memory** %MEMORY
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 1
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %2672 to i32*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i140
  %2677 = sub i64 %2676, 108
  %2678 = load i32, i32* %EAX.i139
  %2679 = zext i32 %2678 to i64
  %2680 = load i64, i64* %PC.i138
  %2681 = add i64 %2680, 3
  store i64 %2681, i64* %PC.i138
  %2682 = inttoptr i64 %2677 to i32*
  store i32 %2678, i32* %2682
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %PC.i137
  %2687 = add i64 %2686, -201
  %2688 = load i64, i64* %PC.i137
  %2689 = add i64 %2688, 5
  store i64 %2689, i64* %PC.i137
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2687, i64* %2690, align 8
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  br label %block_.L_400ef9

block_.L_400fc7:                                  ; preds = %block_.L_400ef9
  %loadMem_400fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i136
  %2698 = sub i64 %2697, 108
  %2699 = load i64, i64* %PC.i135
  %2700 = add i64 %2699, 7
  store i64 %2700, i64* %PC.i135
  %2701 = inttoptr i64 %2698 to i32*
  store i32 0, i32* %2701
  store %struct.Memory* %loadMem_400fc7, %struct.Memory** %MEMORY
  br label %block_.L_400fce

block_.L_400fce:                                  ; preds = %block_.L_40108e, %block_.L_400fc7
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 15
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RBP.i134
  %2712 = sub i64 %2711, 108
  %2713 = load i64, i64* %PC.i132
  %2714 = add i64 %2713, 3
  store i64 %2714, i64* %PC.i132
  %2715 = inttoptr i64 %2712 to i32*
  %2716 = load i32, i32* %2715
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 1
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %2723 to i32*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 15
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2726 to i64*
  %2727 = load i32, i32* %EAX.i130
  %2728 = zext i32 %2727 to i64
  %2729 = load i64, i64* %RBP.i131
  %2730 = sub i64 %2729, 28
  %2731 = load i64, i64* %PC.i129
  %2732 = add i64 %2731, 3
  store i64 %2732, i64* %PC.i129
  %2733 = inttoptr i64 %2730 to i32*
  %2734 = load i32, i32* %2733
  %2735 = sub i32 %2727, %2734
  %2736 = icmp ult i32 %2727, %2734
  %2737 = zext i1 %2736 to i8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2737, i8* %2738, align 1
  %2739 = and i32 %2735, 255
  %2740 = call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2743, i8* %2744, align 1
  %2745 = xor i32 %2734, %2727
  %2746 = xor i32 %2745, %2735
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2749, i8* %2750, align 1
  %2751 = icmp eq i32 %2735, 0
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2752, i8* %2753, align 1
  %2754 = lshr i32 %2735, 31
  %2755 = trunc i32 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2755, i8* %2756, align 1
  %2757 = lshr i32 %2727, 31
  %2758 = lshr i32 %2734, 31
  %2759 = xor i32 %2758, %2757
  %2760 = xor i32 %2754, %2757
  %2761 = add i32 %2760, %2759
  %2762 = icmp eq i32 %2761, 2
  %2763 = zext i1 %2762 to i8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2763, i8* %2764, align 1
  store %struct.Memory* %loadMem_400fd1, %struct.Memory** %MEMORY
  %loadMem_400fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %PC.i128
  %2769 = add i64 %2768, 200
  %2770 = load i64, i64* %PC.i128
  %2771 = add i64 %2770, 6
  %2772 = load i64, i64* %PC.i128
  %2773 = add i64 %2772, 6
  store i64 %2773, i64* %PC.i128
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2775 = load i8, i8* %2774, align 1
  %2776 = icmp ne i8 %2775, 0
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2778 = load i8, i8* %2777, align 1
  %2779 = icmp ne i8 %2778, 0
  %2780 = xor i1 %2776, %2779
  %2781 = xor i1 %2780, true
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %BRANCH_TAKEN, align 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2784 = select i1 %2780, i64 %2771, i64 %2769
  store i64 %2784, i64* %2783, align 8
  store %struct.Memory* %loadMem_400fd4, %struct.Memory** %MEMORY
  %loadBr_400fd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fd4 = icmp eq i8 %loadBr_400fd4, 1
  br i1 %cmpBr_400fd4, label %block_.L_40109c, label %block_400fda

block_400fda:                                     ; preds = %block_.L_400fce
  %loadMem_400fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 15
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RBP.i127
  %2792 = sub i64 %2791, 112
  %2793 = load i64, i64* %PC.i126
  %2794 = add i64 %2793, 7
  store i64 %2794, i64* %PC.i126
  %2795 = inttoptr i64 %2792 to i32*
  store i32 0, i32* %2795
  store %struct.Memory* %loadMem_400fda, %struct.Memory** %MEMORY
  br label %block_.L_400fe1

block_.L_400fe1:                                  ; preds = %block_.L_40107b, %block_400fda
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 1
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %RBP.i125
  %2806 = sub i64 %2805, 112
  %2807 = load i64, i64* %PC.i123
  %2808 = add i64 %2807, 3
  store i64 %2808, i64* %PC.i123
  %2809 = inttoptr i64 %2806 to i32*
  %2810 = load i32, i32* %2809
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_400fe1, %struct.Memory** %MEMORY
  %loadMem_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 1
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %2817 to i32*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %2820 to i64*
  %2821 = load i32, i32* %EAX.i121
  %2822 = zext i32 %2821 to i64
  %2823 = load i64, i64* %RBP.i122
  %2824 = sub i64 %2823, 40
  %2825 = load i64, i64* %PC.i120
  %2826 = add i64 %2825, 3
  store i64 %2826, i64* %PC.i120
  %2827 = inttoptr i64 %2824 to i32*
  %2828 = load i32, i32* %2827
  %2829 = sub i32 %2821, %2828
  %2830 = icmp ult i32 %2821, %2828
  %2831 = zext i1 %2830 to i8
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2831, i8* %2832, align 1
  %2833 = and i32 %2829, 255
  %2834 = call i32 @llvm.ctpop.i32(i32 %2833)
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  %2837 = xor i8 %2836, 1
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2837, i8* %2838, align 1
  %2839 = xor i32 %2828, %2821
  %2840 = xor i32 %2839, %2829
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2843, i8* %2844, align 1
  %2845 = icmp eq i32 %2829, 0
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2846, i8* %2847, align 1
  %2848 = lshr i32 %2829, 31
  %2849 = trunc i32 %2848 to i8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2849, i8* %2850, align 1
  %2851 = lshr i32 %2821, 31
  %2852 = lshr i32 %2828, 31
  %2853 = xor i32 %2852, %2851
  %2854 = xor i32 %2848, %2851
  %2855 = add i32 %2854, %2853
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2857, i8* %2858, align 1
  store %struct.Memory* %loadMem_400fe4, %struct.Memory** %MEMORY
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %PC.i119
  %2863 = add i64 %2862, 162
  %2864 = load i64, i64* %PC.i119
  %2865 = add i64 %2864, 6
  %2866 = load i64, i64* %PC.i119
  %2867 = add i64 %2866, 6
  store i64 %2867, i64* %PC.i119
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2869 = load i8, i8* %2868, align 1
  %2870 = icmp ne i8 %2869, 0
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2872 = load i8, i8* %2871, align 1
  %2873 = icmp ne i8 %2872, 0
  %2874 = xor i1 %2870, %2873
  %2875 = xor i1 %2874, true
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %BRANCH_TAKEN, align 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2878 = select i1 %2874, i64 %2865, i64 %2863
  store i64 %2878, i64* %2877, align 8
  store %struct.Memory* %loadMem_400fe7, %struct.Memory** %MEMORY
  %loadBr_400fe7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fe7 = icmp eq i8 %loadBr_400fe7, 1
  br i1 %cmpBr_400fe7, label %block_.L_401089, label %block_400fed

block_400fed:                                     ; preds = %block_.L_400fe1
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2882, i64 0, i64 0
  %YMM0.i117 = bitcast %union.VectorReg* %2883 to %"class.std::bitset"*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2884, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %2885 to %union.vec128_t*
  %2886 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %2887 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %2888 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %2889 = load i64, i64* %PC.i116
  %2890 = add i64 %2889, 3
  store i64 %2890, i64* %PC.i116
  %2891 = bitcast i8* %2887 to i64*
  %2892 = load i64, i64* %2891, align 1
  %2893 = getelementptr inbounds i8, i8* %2887, i64 8
  %2894 = bitcast i8* %2893 to i64*
  %2895 = load i64, i64* %2894, align 1
  %2896 = bitcast i8* %2888 to i64*
  %2897 = load i64, i64* %2896, align 1
  %2898 = getelementptr inbounds i8, i8* %2888, i64 8
  %2899 = bitcast i8* %2898 to i64*
  %2900 = load i64, i64* %2899, align 1
  %2901 = xor i64 %2897, %2892
  %2902 = xor i64 %2900, %2895
  %2903 = trunc i64 %2901 to i32
  %2904 = lshr i64 %2901, 32
  %2905 = trunc i64 %2904 to i32
  %2906 = bitcast i8* %2886 to i32*
  store i32 %2903, i32* %2906, align 1
  %2907 = getelementptr inbounds i8, i8* %2886, i64 4
  %2908 = bitcast i8* %2907 to i32*
  store i32 %2905, i32* %2908, align 1
  %2909 = trunc i64 %2902 to i32
  %2910 = getelementptr inbounds i8, i8* %2886, i64 8
  %2911 = bitcast i8* %2910 to i32*
  store i32 %2909, i32* %2911, align 1
  %2912 = lshr i64 %2902, 32
  %2913 = trunc i64 %2912 to i32
  %2914 = getelementptr inbounds i8, i8* %2886, i64 12
  %2915 = bitcast i8* %2914 to i32*
  store i32 %2913, i32* %2915, align 1
  store %struct.Memory* %loadMem_400fed, %struct.Memory** %MEMORY
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 1
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 15
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RBP.i115
  %2926 = sub i64 %2925, 104
  %2927 = load i64, i64* %PC.i113
  %2928 = add i64 %2927, 4
  store i64 %2928, i64* %PC.i113
  %2929 = inttoptr i64 %2926 to i64*
  %2930 = load i64, i64* %2929
  store i64 %2930, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_400ff0, %struct.Memory** %MEMORY
  %loadMem_400ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 5
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 15
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %RBP.i112
  %2941 = sub i64 %2940, 108
  %2942 = load i64, i64* %PC.i110
  %2943 = add i64 %2942, 4
  store i64 %2943, i64* %PC.i110
  %2944 = inttoptr i64 %2941 to i32*
  %2945 = load i32, i32* %2944
  %2946 = sext i32 %2945 to i64
  store i64 %2946, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_400ff4, %struct.Memory** %MEMORY
  %loadMem_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 5
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %2952 to i64*
  %2953 = load i64, i64* %RCX.i109
  %2954 = load i64, i64* %PC.i108
  %2955 = add i64 %2954, 4
  store i64 %2955, i64* %PC.i108
  %2956 = shl i64 %2953, 12
  %2957 = icmp slt i64 %2956, 0
  %2958 = shl i64 %2956, 1
  store i64 %2958, i64* %RCX.i109, align 8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2960 = zext i1 %2957 to i8
  store i8 %2960, i8* %2959, align 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2962 = trunc i64 %2958 to i32
  store i8 1, i8* %2961, align 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2963, align 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2965 = icmp eq i64 %2958, 0
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %2964, align 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2968 = lshr i64 %2958, 63
  %2969 = trunc i64 %2968 to i8
  store i8 %2969, i8* %2967, align 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2970, align 1
  store %struct.Memory* %loadMem_400ff8, %struct.Memory** %MEMORY
  %loadMem_400ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 5
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RAX.i106
  %2981 = load i64, i64* %RCX.i107
  %2982 = load i64, i64* %PC.i105
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %PC.i105
  %2984 = add i64 %2981, %2980
  store i64 %2984, i64* %RAX.i106, align 8
  %2985 = icmp ult i64 %2984, %2980
  %2986 = icmp ult i64 %2984, %2981
  %2987 = or i1 %2985, %2986
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2988, i8* %2989, align 1
  %2990 = trunc i64 %2984 to i32
  %2991 = and i32 %2990, 255
  %2992 = call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2995, i8* %2996, align 1
  %2997 = xor i64 %2981, %2980
  %2998 = xor i64 %2997, %2984
  %2999 = lshr i64 %2998, 4
  %3000 = trunc i64 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3001, i8* %3002, align 1
  %3003 = icmp eq i64 %2984, 0
  %3004 = zext i1 %3003 to i8
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3004, i8* %3005, align 1
  %3006 = lshr i64 %2984, 63
  %3007 = trunc i64 %3006 to i8
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3007, i8* %3008, align 1
  %3009 = lshr i64 %2980, 63
  %3010 = lshr i64 %2981, 63
  %3011 = xor i64 %3006, %3009
  %3012 = xor i64 %3006, %3010
  %3013 = add i64 %3011, %3012
  %3014 = icmp eq i64 %3013, 2
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3015, i8* %3016, align 1
  store %struct.Memory* %loadMem_400ffc, %struct.Memory** %MEMORY
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 5
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RBP.i104
  %3027 = sub i64 %3026, 112
  %3028 = load i64, i64* %PC.i102
  %3029 = add i64 %3028, 4
  store i64 %3029, i64* %PC.i102
  %3030 = inttoptr i64 %3027 to i32*
  %3031 = load i32, i32* %3030
  %3032 = sext i32 %3031 to i64
  store i64 %3032, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_400fff, %struct.Memory** %MEMORY
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 1
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 5
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3042, i64 0, i64 0
  %XMM0.i101 = bitcast %union.VectorReg* %3043 to %union.vec128_t*
  %3044 = load i64, i64* %RAX.i99
  %3045 = load i64, i64* %RCX.i100
  %3046 = mul i64 %3045, 8
  %3047 = add i64 %3046, %3044
  %3048 = bitcast %union.vec128_t* %XMM0.i101 to i8*
  %3049 = load i64, i64* %PC.i98
  %3050 = add i64 %3049, 5
  store i64 %3050, i64* %PC.i98
  %3051 = bitcast i8* %3048 to double*
  %3052 = load double, double* %3051, align 1
  %3053 = inttoptr i64 %3047 to double*
  store double %3052, double* %3053
  store %struct.Memory* %loadMem_401003, %struct.Memory** %MEMORY
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 15
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RBP.i97
  %3061 = sub i64 %3060, 116
  %3062 = load i64, i64* %PC.i96
  %3063 = add i64 %3062, 7
  store i64 %3063, i64* %PC.i96
  %3064 = inttoptr i64 %3061 to i32*
  store i32 0, i32* %3064
  store %struct.Memory* %loadMem_401008, %struct.Memory** %MEMORY
  br label %block_.L_40100f

block_.L_40100f:                                  ; preds = %block_40101b, %block_400fed
  %loadMem_40100f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 1
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 15
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %RBP.i95
  %3075 = sub i64 %3074, 116
  %3076 = load i64, i64* %PC.i93
  %3077 = add i64 %3076, 3
  store i64 %3077, i64* %PC.i93
  %3078 = inttoptr i64 %3075 to i32*
  %3079 = load i32, i32* %3078
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_40100f, %struct.Memory** %MEMORY
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 1
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %3086 to i32*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 15
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3089 to i64*
  %3090 = load i32, i32* %EAX.i91
  %3091 = zext i32 %3090 to i64
  %3092 = load i64, i64* %RBP.i92
  %3093 = sub i64 %3092, 32
  %3094 = load i64, i64* %PC.i90
  %3095 = add i64 %3094, 3
  store i64 %3095, i64* %PC.i90
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = sub i32 %3090, %3097
  %3099 = icmp ult i32 %3090, %3097
  %3100 = zext i1 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3100, i8* %3101, align 1
  %3102 = and i32 %3098, 255
  %3103 = call i32 @llvm.ctpop.i32(i32 %3102)
  %3104 = trunc i32 %3103 to i8
  %3105 = and i8 %3104, 1
  %3106 = xor i8 %3105, 1
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3106, i8* %3107, align 1
  %3108 = xor i32 %3097, %3090
  %3109 = xor i32 %3108, %3098
  %3110 = lshr i32 %3109, 4
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3112, i8* %3113, align 1
  %3114 = icmp eq i32 %3098, 0
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3115, i8* %3116, align 1
  %3117 = lshr i32 %3098, 31
  %3118 = trunc i32 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = lshr i32 %3090, 31
  %3121 = lshr i32 %3097, 31
  %3122 = xor i32 %3121, %3120
  %3123 = xor i32 %3117, %3120
  %3124 = add i32 %3123, %3122
  %3125 = icmp eq i32 %3124, 2
  %3126 = zext i1 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3126, i8* %3127, align 1
  store %struct.Memory* %loadMem_401012, %struct.Memory** %MEMORY
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %PC.i89
  %3132 = add i64 %3131, 97
  %3133 = load i64, i64* %PC.i89
  %3134 = add i64 %3133, 6
  %3135 = load i64, i64* %PC.i89
  %3136 = add i64 %3135, 6
  store i64 %3136, i64* %PC.i89
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3138 = load i8, i8* %3137, align 1
  %3139 = icmp ne i8 %3138, 0
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3141 = load i8, i8* %3140, align 1
  %3142 = icmp ne i8 %3141, 0
  %3143 = xor i1 %3139, %3142
  %3144 = xor i1 %3143, true
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %BRANCH_TAKEN, align 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3147 = select i1 %3143, i64 %3134, i64 %3132
  store i64 %3147, i64* %3146, align 8
  store %struct.Memory* %loadMem_401015, %struct.Memory** %MEMORY
  %loadBr_401015 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401015 = icmp eq i8 %loadBr_401015, 1
  br i1 %cmpBr_401015, label %block_.L_401076, label %block_40101b

block_40101b:                                     ; preds = %block_.L_40100f
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 1
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 15
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RBP.i88
  %3158 = sub i64 %3157, 56
  %3159 = load i64, i64* %PC.i86
  %3160 = add i64 %3159, 4
  store i64 %3160, i64* %PC.i86
  %3161 = inttoptr i64 %3158 to i64*
  %3162 = load i64, i64* %3161
  store i64 %3162, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_40101b, %struct.Memory** %MEMORY
  %loadMem_40101f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 5
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 15
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RBP.i85
  %3173 = sub i64 %3172, 108
  %3174 = load i64, i64* %PC.i83
  %3175 = add i64 %3174, 4
  store i64 %3175, i64* %PC.i83
  %3176 = inttoptr i64 %3173 to i32*
  %3177 = load i32, i32* %3176
  %3178 = sext i32 %3177 to i64
  store i64 %3178, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_40101f, %struct.Memory** %MEMORY
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 5
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %RCX.i82
  %3186 = load i64, i64* %PC.i81
  %3187 = add i64 %3186, 4
  store i64 %3187, i64* %PC.i81
  %3188 = shl i64 %3185, 12
  %3189 = icmp slt i64 %3188, 0
  %3190 = shl i64 %3188, 1
  store i64 %3190, i64* %RCX.i82, align 8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3192 = zext i1 %3189 to i8
  store i8 %3192, i8* %3191, align 1
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3194 = trunc i64 %3190 to i32
  store i8 1, i8* %3193, align 1
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3195, align 1
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3197 = icmp eq i64 %3190, 0
  %3198 = zext i1 %3197 to i8
  store i8 %3198, i8* %3196, align 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3200 = lshr i64 %3190, 63
  %3201 = trunc i64 %3200 to i8
  store i8 %3201, i8* %3199, align 1
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3202, align 1
  store %struct.Memory* %loadMem_401023, %struct.Memory** %MEMORY
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 1
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 5
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %RAX.i79
  %3213 = load i64, i64* %RCX.i80
  %3214 = load i64, i64* %PC.i78
  %3215 = add i64 %3214, 3
  store i64 %3215, i64* %PC.i78
  %3216 = add i64 %3213, %3212
  store i64 %3216, i64* %RAX.i79, align 8
  %3217 = icmp ult i64 %3216, %3212
  %3218 = icmp ult i64 %3216, %3213
  %3219 = or i1 %3217, %3218
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3220, i8* %3221, align 1
  %3222 = trunc i64 %3216 to i32
  %3223 = and i32 %3222, 255
  %3224 = call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3227, i8* %3228, align 1
  %3229 = xor i64 %3213, %3212
  %3230 = xor i64 %3229, %3216
  %3231 = lshr i64 %3230, 4
  %3232 = trunc i64 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3233, i8* %3234, align 1
  %3235 = icmp eq i64 %3216, 0
  %3236 = zext i1 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3236, i8* %3237, align 1
  %3238 = lshr i64 %3216, 63
  %3239 = trunc i64 %3238 to i8
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3239, i8* %3240, align 1
  %3241 = lshr i64 %3212, 63
  %3242 = lshr i64 %3213, 63
  %3243 = xor i64 %3238, %3241
  %3244 = xor i64 %3238, %3242
  %3245 = add i64 %3243, %3244
  %3246 = icmp eq i64 %3245, 2
  %3247 = zext i1 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3247, i8* %3248, align 1
  store %struct.Memory* %loadMem_401027, %struct.Memory** %MEMORY
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 5
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 15
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RBP.i77
  %3259 = sub i64 %3258, 116
  %3260 = load i64, i64* %PC.i75
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %PC.i75
  %3262 = inttoptr i64 %3259 to i32*
  %3263 = load i32, i32* %3262
  %3264 = sext i32 %3263 to i64
  store i64 %3264, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_40102a, %struct.Memory** %MEMORY
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 1
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 5
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3274, i64 0, i64 0
  %YMM0.i74 = bitcast %union.VectorReg* %3275 to %"class.std::bitset"*
  %3276 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %3277 = load i64, i64* %RAX.i72
  %3278 = load i64, i64* %RCX.i73
  %3279 = mul i64 %3278, 8
  %3280 = add i64 %3279, %3277
  %3281 = load i64, i64* %PC.i71
  %3282 = add i64 %3281, 5
  store i64 %3282, i64* %PC.i71
  %3283 = inttoptr i64 %3280 to double*
  %3284 = load double, double* %3283
  %3285 = bitcast i8* %3276 to double*
  store double %3284, double* %3285, align 1
  %3286 = getelementptr inbounds i8, i8* %3276, i64 8
  %3287 = bitcast i8* %3286 to double*
  store double 0.000000e+00, double* %3287, align 1
  store %struct.Memory* %loadMem_40102e, %struct.Memory** %MEMORY
  %loadMem_401033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 15
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RBP.i70
  %3298 = sub i64 %3297, 80
  %3299 = load i64, i64* %PC.i68
  %3300 = add i64 %3299, 4
  store i64 %3300, i64* %PC.i68
  %3301 = inttoptr i64 %3298 to i64*
  %3302 = load i64, i64* %3301
  store i64 %3302, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_401033, %struct.Memory** %MEMORY
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 5
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 15
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %RBP.i67
  %3313 = sub i64 %3312, 116
  %3314 = load i64, i64* %PC.i65
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %PC.i65
  %3316 = inttoptr i64 %3313 to i32*
  %3317 = load i32, i32* %3316
  %3318 = sext i32 %3317 to i64
  store i64 %3318, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_401037, %struct.Memory** %MEMORY
  %loadMem_40103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 5
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %RCX.i64
  %3326 = load i64, i64* %PC.i63
  %3327 = add i64 %3326, 4
  store i64 %3327, i64* %PC.i63
  %3328 = shl i64 %3325, 12
  %3329 = icmp slt i64 %3328, 0
  %3330 = shl i64 %3328, 1
  store i64 %3330, i64* %RCX.i64, align 8
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3332 = zext i1 %3329 to i8
  store i8 %3332, i8* %3331, align 1
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3334 = trunc i64 %3330 to i32
  store i8 1, i8* %3333, align 1
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3335, align 1
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3337 = icmp eq i64 %3330, 0
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %3336, align 1
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3340 = lshr i64 %3330, 63
  %3341 = trunc i64 %3340 to i8
  store i8 %3341, i8* %3339, align 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3342, align 1
  store %struct.Memory* %loadMem_40103b, %struct.Memory** %MEMORY
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 33
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 1
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 5
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %3351 to i64*
  %3352 = load i64, i64* %RAX.i61
  %3353 = load i64, i64* %RCX.i62
  %3354 = load i64, i64* %PC.i60
  %3355 = add i64 %3354, 3
  store i64 %3355, i64* %PC.i60
  %3356 = add i64 %3353, %3352
  store i64 %3356, i64* %RAX.i61, align 8
  %3357 = icmp ult i64 %3356, %3352
  %3358 = icmp ult i64 %3356, %3353
  %3359 = or i1 %3357, %3358
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3360, i8* %3361, align 1
  %3362 = trunc i64 %3356 to i32
  %3363 = and i32 %3362, 255
  %3364 = call i32 @llvm.ctpop.i32(i32 %3363)
  %3365 = trunc i32 %3364 to i8
  %3366 = and i8 %3365, 1
  %3367 = xor i8 %3366, 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3367, i8* %3368, align 1
  %3369 = xor i64 %3353, %3352
  %3370 = xor i64 %3369, %3356
  %3371 = lshr i64 %3370, 4
  %3372 = trunc i64 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3373, i8* %3374, align 1
  %3375 = icmp eq i64 %3356, 0
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i64 %3356, 63
  %3379 = trunc i64 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3379, i8* %3380, align 1
  %3381 = lshr i64 %3352, 63
  %3382 = lshr i64 %3353, 63
  %3383 = xor i64 %3378, %3381
  %3384 = xor i64 %3378, %3382
  %3385 = add i64 %3383, %3384
  %3386 = icmp eq i64 %3385, 2
  %3387 = zext i1 %3386 to i8
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3387, i8* %3388, align 1
  store %struct.Memory* %loadMem_40103f, %struct.Memory** %MEMORY
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i59
  %3399 = sub i64 %3398, 112
  %3400 = load i64, i64* %PC.i57
  %3401 = add i64 %3400, 4
  store i64 %3401, i64* %PC.i57
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402
  %3404 = sext i32 %3403 to i64
  store i64 %3404, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_401042, %struct.Memory** %MEMORY
  %loadMem_401046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 5
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3414, i64 0, i64 0
  %YMM0.i56 = bitcast %union.VectorReg* %3415 to %"class.std::bitset"*
  %3416 = bitcast %"class.std::bitset"* %YMM0.i56 to i8*
  %3417 = bitcast %"class.std::bitset"* %YMM0.i56 to i8*
  %3418 = load i64, i64* %RAX.i54
  %3419 = load i64, i64* %RCX.i55
  %3420 = mul i64 %3419, 8
  %3421 = add i64 %3420, %3418
  %3422 = load i64, i64* %PC.i53
  %3423 = add i64 %3422, 5
  store i64 %3423, i64* %PC.i53
  %3424 = bitcast i8* %3417 to double*
  %3425 = load double, double* %3424, align 1
  %3426 = getelementptr inbounds i8, i8* %3417, i64 8
  %3427 = bitcast i8* %3426 to i64*
  %3428 = load i64, i64* %3427, align 1
  %3429 = inttoptr i64 %3421 to double*
  %3430 = load double, double* %3429
  %3431 = fmul double %3425, %3430
  %3432 = bitcast i8* %3416 to double*
  store double %3431, double* %3432, align 1
  %3433 = getelementptr inbounds i8, i8* %3416, i64 8
  %3434 = bitcast i8* %3433 to i64*
  store i64 %3428, i64* %3434, align 1
  store %struct.Memory* %loadMem_401046, %struct.Memory** %MEMORY
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 1
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RBP.i52
  %3445 = sub i64 %3444, 104
  %3446 = load i64, i64* %PC.i50
  %3447 = add i64 %3446, 4
  store i64 %3447, i64* %PC.i50
  %3448 = inttoptr i64 %3445 to i64*
  %3449 = load i64, i64* %3448
  store i64 %3449, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_40104b, %struct.Memory** %MEMORY
  %loadMem_40104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 5
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 15
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3458 to i64*
  %3459 = load i64, i64* %RBP.i49
  %3460 = sub i64 %3459, 108
  %3461 = load i64, i64* %PC.i47
  %3462 = add i64 %3461, 4
  store i64 %3462, i64* %PC.i47
  %3463 = inttoptr i64 %3460 to i32*
  %3464 = load i32, i32* %3463
  %3465 = sext i32 %3464 to i64
  store i64 %3465, i64* %RCX.i48, align 8
  store %struct.Memory* %loadMem_40104f, %struct.Memory** %MEMORY
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 5
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RCX.i46
  %3473 = load i64, i64* %PC.i45
  %3474 = add i64 %3473, 4
  store i64 %3474, i64* %PC.i45
  %3475 = shl i64 %3472, 12
  %3476 = icmp slt i64 %3475, 0
  %3477 = shl i64 %3475, 1
  store i64 %3477, i64* %RCX.i46, align 8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3479 = zext i1 %3476 to i8
  store i8 %3479, i8* %3478, align 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3481 = trunc i64 %3477 to i32
  store i8 1, i8* %3480, align 1
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3482, align 1
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3484 = icmp eq i64 %3477, 0
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %3483, align 1
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3487 = lshr i64 %3477, 63
  %3488 = trunc i64 %3487 to i8
  store i8 %3488, i8* %3486, align 1
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3489, align 1
  store %struct.Memory* %loadMem_401053, %struct.Memory** %MEMORY
  %loadMem_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 5
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RAX.i43
  %3500 = load i64, i64* %RCX.i44
  %3501 = load i64, i64* %PC.i42
  %3502 = add i64 %3501, 3
  store i64 %3502, i64* %PC.i42
  %3503 = add i64 %3500, %3499
  store i64 %3503, i64* %RAX.i43, align 8
  %3504 = icmp ult i64 %3503, %3499
  %3505 = icmp ult i64 %3503, %3500
  %3506 = or i1 %3504, %3505
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3507, i8* %3508, align 1
  %3509 = trunc i64 %3503 to i32
  %3510 = and i32 %3509, 255
  %3511 = call i32 @llvm.ctpop.i32(i32 %3510)
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = xor i8 %3513, 1
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3514, i8* %3515, align 1
  %3516 = xor i64 %3500, %3499
  %3517 = xor i64 %3516, %3503
  %3518 = lshr i64 %3517, 4
  %3519 = trunc i64 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3520, i8* %3521, align 1
  %3522 = icmp eq i64 %3503, 0
  %3523 = zext i1 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3523, i8* %3524, align 1
  %3525 = lshr i64 %3503, 63
  %3526 = trunc i64 %3525 to i8
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3526, i8* %3527, align 1
  %3528 = lshr i64 %3499, 63
  %3529 = lshr i64 %3500, 63
  %3530 = xor i64 %3525, %3528
  %3531 = xor i64 %3525, %3529
  %3532 = add i64 %3530, %3531
  %3533 = icmp eq i64 %3532, 2
  %3534 = zext i1 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3534, i8* %3535, align 1
  store %struct.Memory* %loadMem_401057, %struct.Memory** %MEMORY
  %loadMem_40105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 5
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 15
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RBP.i41
  %3546 = sub i64 %3545, 112
  %3547 = load i64, i64* %PC.i39
  %3548 = add i64 %3547, 4
  store i64 %3548, i64* %PC.i39
  %3549 = inttoptr i64 %3546 to i32*
  %3550 = load i32, i32* %3549
  %3551 = sext i32 %3550 to i64
  store i64 %3551, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_40105a, %struct.Memory** %MEMORY
  %loadMem_40105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 1
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3561, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3562 to %"class.std::bitset"*
  %3563 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3564 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3565 = load i64, i64* %RAX.i37
  %3566 = load i64, i64* %RCX.i38
  %3567 = mul i64 %3566, 8
  %3568 = add i64 %3567, %3565
  %3569 = load i64, i64* %PC.i36
  %3570 = add i64 %3569, 5
  store i64 %3570, i64* %PC.i36
  %3571 = bitcast i8* %3564 to double*
  %3572 = load double, double* %3571, align 1
  %3573 = getelementptr inbounds i8, i8* %3564, i64 8
  %3574 = bitcast i8* %3573 to i64*
  %3575 = load i64, i64* %3574, align 1
  %3576 = inttoptr i64 %3568 to double*
  %3577 = load double, double* %3576
  %3578 = fadd double %3572, %3577
  %3579 = bitcast i8* %3563 to double*
  store double %3578, double* %3579, align 1
  %3580 = getelementptr inbounds i8, i8* %3563, i64 8
  %3581 = bitcast i8* %3580 to i64*
  store i64 %3575, i64* %3581, align 1
  store %struct.Memory* %loadMem_40105e, %struct.Memory** %MEMORY
  %loadMem_401063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 1
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 5
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3591, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3592 to %union.vec128_t*
  %3593 = load i64, i64* %RAX.i35
  %3594 = load i64, i64* %RCX.i
  %3595 = mul i64 %3594, 8
  %3596 = add i64 %3595, %3593
  %3597 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3598 = load i64, i64* %PC.i34
  %3599 = add i64 %3598, 5
  store i64 %3599, i64* %PC.i34
  %3600 = bitcast i8* %3597 to double*
  %3601 = load double, double* %3600, align 1
  %3602 = inttoptr i64 %3596 to double*
  store double %3601, double* %3602
  store %struct.Memory* %loadMem_401063, %struct.Memory** %MEMORY
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 1
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 15
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %3611 to i64*
  %3612 = load i64, i64* %RBP.i33
  %3613 = sub i64 %3612, 116
  %3614 = load i64, i64* %PC.i31
  %3615 = add i64 %3614, 3
  store i64 %3615, i64* %PC.i31
  %3616 = inttoptr i64 %3613 to i32*
  %3617 = load i32, i32* %3616
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_401068, %struct.Memory** %MEMORY
  %loadMem_40106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 1
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3624 to i64*
  %3625 = load i64, i64* %RAX.i30
  %3626 = load i64, i64* %PC.i29
  %3627 = add i64 %3626, 3
  store i64 %3627, i64* %PC.i29
  %3628 = trunc i64 %3625 to i32
  %3629 = add i32 1, %3628
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RAX.i30, align 8
  %3631 = icmp ult i32 %3629, %3628
  %3632 = icmp ult i32 %3629, 1
  %3633 = or i1 %3631, %3632
  %3634 = zext i1 %3633 to i8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3634, i8* %3635, align 1
  %3636 = and i32 %3629, 255
  %3637 = call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3640, i8* %3641, align 1
  %3642 = xor i64 1, %3625
  %3643 = trunc i64 %3642 to i32
  %3644 = xor i32 %3643, %3629
  %3645 = lshr i32 %3644, 4
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3647, i8* %3648, align 1
  %3649 = icmp eq i32 %3629, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1
  %3652 = lshr i32 %3629, 31
  %3653 = trunc i32 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1
  %3655 = lshr i32 %3628, 31
  %3656 = xor i32 %3652, %3655
  %3657 = add i32 %3656, %3652
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1
  store %struct.Memory* %loadMem_40106b, %struct.Memory** %MEMORY
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 1
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %3666 to i32*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i28
  %3671 = sub i64 %3670, 116
  %3672 = load i32, i32* %EAX.i27
  %3673 = zext i32 %3672 to i64
  %3674 = load i64, i64* %PC.i26
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i26
  %3676 = inttoptr i64 %3671 to i32*
  store i32 %3672, i32* %3676
  store %struct.Memory* %loadMem_40106e, %struct.Memory** %MEMORY
  %loadMem_401071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %PC.i25
  %3681 = add i64 %3680, -98
  %3682 = load i64, i64* %PC.i25
  %3683 = add i64 %3682, 5
  store i64 %3683, i64* %PC.i25
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3681, i64* %3684, align 8
  store %struct.Memory* %loadMem_401071, %struct.Memory** %MEMORY
  br label %block_.L_40100f

block_.L_401076:                                  ; preds = %block_.L_40100f
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %PC.i24
  %3689 = add i64 %3688, 5
  %3690 = load i64, i64* %PC.i24
  %3691 = add i64 %3690, 5
  store i64 %3691, i64* %PC.i24
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3689, i64* %3692, align 8
  store %struct.Memory* %loadMem_401076, %struct.Memory** %MEMORY
  br label %block_.L_40107b

block_.L_40107b:                                  ; preds = %block_.L_401076
  %loadMem_40107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 1
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 15
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %RBP.i23
  %3703 = sub i64 %3702, 112
  %3704 = load i64, i64* %PC.i21
  %3705 = add i64 %3704, 3
  store i64 %3705, i64* %PC.i21
  %3706 = inttoptr i64 %3703 to i32*
  %3707 = load i32, i32* %3706
  %3708 = zext i32 %3707 to i64
  store i64 %3708, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_40107b, %struct.Memory** %MEMORY
  %loadMem_40107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RAX.i20
  %3716 = load i64, i64* %PC.i19
  %3717 = add i64 %3716, 3
  store i64 %3717, i64* %PC.i19
  %3718 = trunc i64 %3715 to i32
  %3719 = add i32 1, %3718
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RAX.i20, align 8
  %3721 = icmp ult i32 %3719, %3718
  %3722 = icmp ult i32 %3719, 1
  %3723 = or i1 %3721, %3722
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3724, i8* %3725, align 1
  %3726 = and i32 %3719, 255
  %3727 = call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3730, i8* %3731, align 1
  %3732 = xor i64 1, %3715
  %3733 = trunc i64 %3732 to i32
  %3734 = xor i32 %3733, %3719
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3737, i8* %3738, align 1
  %3739 = icmp eq i32 %3719, 0
  %3740 = zext i1 %3739 to i8
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3740, i8* %3741, align 1
  %3742 = lshr i32 %3719, 31
  %3743 = trunc i32 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3743, i8* %3744, align 1
  %3745 = lshr i32 %3718, 31
  %3746 = xor i32 %3742, %3745
  %3747 = add i32 %3746, %3742
  %3748 = icmp eq i32 %3747, 2
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3749, i8* %3750, align 1
  store %struct.Memory* %loadMem_40107e, %struct.Memory** %MEMORY
  %loadMem_401081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 1
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %3756 to i32*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 15
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %RBP.i18
  %3761 = sub i64 %3760, 112
  %3762 = load i32, i32* %EAX.i17
  %3763 = zext i32 %3762 to i64
  %3764 = load i64, i64* %PC.i16
  %3765 = add i64 %3764, 3
  store i64 %3765, i64* %PC.i16
  %3766 = inttoptr i64 %3761 to i32*
  store i32 %3762, i32* %3766
  store %struct.Memory* %loadMem_401081, %struct.Memory** %MEMORY
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %PC.i15
  %3771 = add i64 %3770, -163
  %3772 = load i64, i64* %PC.i15
  %3773 = add i64 %3772, 5
  store i64 %3773, i64* %PC.i15
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3771, i64* %3774, align 8
  store %struct.Memory* %loadMem_401084, %struct.Memory** %MEMORY
  br label %block_.L_400fe1

block_.L_401089:                                  ; preds = %block_.L_400fe1
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %PC.i14
  %3779 = add i64 %3778, 5
  %3780 = load i64, i64* %PC.i14
  %3781 = add i64 %3780, 5
  store i64 %3781, i64* %PC.i14
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3779, i64* %3782, align 8
  store %struct.Memory* %loadMem_401089, %struct.Memory** %MEMORY
  br label %block_.L_40108e

block_.L_40108e:                                  ; preds = %block_.L_401089
  %loadMem_40108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 1
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i13
  %3793 = sub i64 %3792, 108
  %3794 = load i64, i64* %PC.i11
  %3795 = add i64 %3794, 3
  store i64 %3795, i64* %PC.i11
  %3796 = inttoptr i64 %3793 to i32*
  %3797 = load i32, i32* %3796
  %3798 = zext i32 %3797 to i64
  store i64 %3798, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_40108e, %struct.Memory** %MEMORY
  %loadMem_401091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 33
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 1
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %RAX.i
  %3806 = load i64, i64* %PC.i10
  %3807 = add i64 %3806, 3
  store i64 %3807, i64* %PC.i10
  %3808 = trunc i64 %3805 to i32
  %3809 = add i32 1, %3808
  %3810 = zext i32 %3809 to i64
  store i64 %3810, i64* %RAX.i, align 8
  %3811 = icmp ult i32 %3809, %3808
  %3812 = icmp ult i32 %3809, 1
  %3813 = or i1 %3811, %3812
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3814, i8* %3815, align 1
  %3816 = and i32 %3809, 255
  %3817 = call i32 @llvm.ctpop.i32(i32 %3816)
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = xor i8 %3819, 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3820, i8* %3821, align 1
  %3822 = xor i64 1, %3805
  %3823 = trunc i64 %3822 to i32
  %3824 = xor i32 %3823, %3809
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3827, i8* %3828, align 1
  %3829 = icmp eq i32 %3809, 0
  %3830 = zext i1 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3830, i8* %3831, align 1
  %3832 = lshr i32 %3809, 31
  %3833 = trunc i32 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3833, i8* %3834, align 1
  %3835 = lshr i32 %3808, 31
  %3836 = xor i32 %3832, %3835
  %3837 = add i32 %3836, %3832
  %3838 = icmp eq i32 %3837, 2
  %3839 = zext i1 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3839, i8* %3840, align 1
  store %struct.Memory* %loadMem_401091, %struct.Memory** %MEMORY
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 1
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3846 to i32*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 15
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %RBP.i9
  %3851 = sub i64 %3850, 108
  %3852 = load i32, i32* %EAX.i
  %3853 = zext i32 %3852 to i64
  %3854 = load i64, i64* %PC.i8
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC.i8
  %3856 = inttoptr i64 %3851 to i32*
  store i32 %3852, i32* %3856
  store %struct.Memory* %loadMem_401094, %struct.Memory** %MEMORY
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 33
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %PC.i7
  %3861 = add i64 %3860, -201
  %3862 = load i64, i64* %PC.i7
  %3863 = add i64 %3862, 5
  store i64 %3863, i64* %PC.i7
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3861, i64* %3864, align 8
  store %struct.Memory* %loadMem_401097, %struct.Memory** %MEMORY
  br label %block_.L_400fce

block_.L_40109c:                                  ; preds = %block_.L_400fce
  %loadMem_40109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 3
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %PC.i6
  %3872 = add i64 %3871, 1
  store i64 %3872, i64* %PC.i6
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3874 = load i64, i64* %3873, align 8
  %3875 = add i64 %3874, 8
  %3876 = inttoptr i64 %3874 to i64*
  %3877 = load i64, i64* %3876
  store i64 %3877, i64* %RBX.i, align 8
  store i64 %3875, i64* %3873, align 8
  store %struct.Memory* %loadMem_40109c, %struct.Memory** %MEMORY
  %loadMem_40109d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 29
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %R14.i = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %PC.i5
  %3885 = add i64 %3884, 2
  store i64 %3885, i64* %PC.i5
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3887 = load i64, i64* %3886, align 8
  %3888 = add i64 %3887, 8
  %3889 = inttoptr i64 %3887 to i64*
  %3890 = load i64, i64* %3889
  store i64 %3890, i64* %R14.i, align 8
  store i64 %3888, i64* %3886, align 8
  store %struct.Memory* %loadMem_40109d, %struct.Memory** %MEMORY
  %loadMem_40109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 31
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %R15.i = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %PC.i4
  %3898 = add i64 %3897, 2
  store i64 %3898, i64* %PC.i4
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3900 = load i64, i64* %3899, align 8
  %3901 = add i64 %3900, 8
  %3902 = inttoptr i64 %3900 to i64*
  %3903 = load i64, i64* %3902
  store i64 %3903, i64* %R15.i, align 8
  store i64 %3901, i64* %3899, align 8
  store %struct.Memory* %loadMem_40109f, %struct.Memory** %MEMORY
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 15
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i2
  %3911 = add i64 %3910, 1
  store i64 %3911, i64* %PC.i2
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3913 = load i64, i64* %3912, align 8
  %3914 = add i64 %3913, 8
  %3915 = inttoptr i64 %3913 to i64*
  %3916 = load i64, i64* %3915
  store i64 %3916, i64* %RBP.i3, align 8
  store i64 %3914, i64* %3912, align 8
  store %struct.Memory* %loadMem_4010a1, %struct.Memory** %MEMORY
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3919 to i64*
  %3920 = load i64, i64* %PC.i1
  %3921 = add i64 %3920, 1
  store i64 %3921, i64* %PC.i1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3924 = load i64, i64* %3923, align 8
  %3925 = inttoptr i64 %3924 to i64*
  %3926 = load i64, i64* %3925
  store i64 %3926, i64* %3922, align 8
  %3927 = add i64 %3924, 8
  store i64 %3927, i64* %3923, align 8
  store %struct.Memory* %loadMem_4010a2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4010a2
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_400ef2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_jge_.L_400edf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 12
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_400ecc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ee4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400fc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400fb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_jge_.L_400fa1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fa6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ef9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_40109c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_401089(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401076(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40100f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40107b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fe1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40108e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R14, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R15, align 8
  store i64 %13, i64* %11, align 8
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
