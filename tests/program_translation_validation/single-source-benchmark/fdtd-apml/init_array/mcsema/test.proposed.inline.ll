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
define %struct.Memory* @init_array(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400fc0, %struct.Memory** %MEMORY
  %loadMem_400fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i619 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i619
  %27 = load i64, i64* %PC.i618
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i618
  store i64 %26, i64* %RBP.i620, align 8
  store %struct.Memory* %loadMem_400fc1, %struct.Memory** %MEMORY
  %loadMem_400fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i617 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i617
  %36 = load i64, i64* %PC.i616
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i616
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_400fc4, %struct.Memory** %MEMORY
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i615 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i615
  %49 = load i64, i64* %PC.i614
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i614
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_400fc6, %struct.Memory** %MEMORY
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 27
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %R13.i613 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %R13.i613
  %62 = load i64, i64* %PC.i612
  %63 = add i64 %62, 2
  store i64 %63, i64* %PC.i612
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_400fc8, %struct.Memory** %MEMORY
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %R12.i611 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %R12.i611
  %75 = load i64, i64* %PC.i610
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC.i610
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8
  store %struct.Memory* %loadMem_400fca, %struct.Memory** %MEMORY
  %loadMem_400fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBX.i609 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBX.i609
  %88 = load i64, i64* %PC.i608
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC.i608
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8
  store %struct.Memory* %loadMem_400fcc, %struct.Memory** %MEMORY
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RSP.i607 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RSP.i607
  %101 = load i64, i64* %PC.i606
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC.i606
  %103 = sub i64 %100, 24
  store i64 %103, i64* %RSP.i607, align 8
  %104 = icmp ult i64 %100, 24
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %105, i8* %106, align 1
  %107 = trunc i64 %103 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1
  %114 = xor i64 24, %100
  %115 = xor i64 %114, %103
  %116 = lshr i64 %115, 4
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %118, i8* %119, align 1
  %120 = icmp eq i64 %103, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %121, i8* %122, align 1
  %123 = lshr i64 %103, 63
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %124, i8* %125, align 1
  %126 = lshr i64 %100, 63
  %127 = xor i64 %123, %126
  %128 = add i64 %127, %126
  %129 = icmp eq i64 %128, 2
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %130, i8* %131, align 1
  store %struct.Memory* %loadMem_400fcd, %struct.Memory** %MEMORY
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %RBP.i605
  %142 = add i64 %141, 88
  %143 = load i64, i64* %PC.i603
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i603
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_400fd1, %struct.Memory** %MEMORY
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 21
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %R10.i602 = bitcast %union.anon* %155 to i64*
  %156 = load i64, i64* %RBP.i601
  %157 = add i64 %156, 80
  %158 = load i64, i64* %PC.i600
  %159 = add i64 %158, 4
  store i64 %159, i64* %PC.i600
  %160 = inttoptr i64 %157 to i64*
  %161 = load i64, i64* %160
  store i64 %161, i64* %R10.i602, align 8
  store %struct.Memory* %loadMem_400fd5, %struct.Memory** %MEMORY
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 23
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R11.i599 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %RBP.i598
  %172 = add i64 %171, 72
  %173 = load i64, i64* %PC.i597
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC.i597
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175
  store i64 %176, i64* %R11.i599, align 8
  store %struct.Memory* %loadMem_400fd9, %struct.Memory** %MEMORY
  %loadMem_400fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBX.i595 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RBP.i596
  %187 = add i64 %186, 64
  %188 = load i64, i64* %PC.i594
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC.i594
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190
  store i64 %191, i64* %RBX.i595, align 8
  store %struct.Memory* %loadMem_400fdd, %struct.Memory** %MEMORY
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 29
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %R14.i593 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %RBP.i592
  %202 = add i64 %201, 56
  %203 = load i64, i64* %PC.i591
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC.i591
  %205 = inttoptr i64 %202 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %R14.i593, align 8
  store %struct.Memory* %loadMem_400fe1, %struct.Memory** %MEMORY
  %loadMem_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 31
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R15.i590 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i589
  %217 = add i64 %216, 48
  %218 = load i64, i64* %PC.i588
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC.i588
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %R15.i590, align 8
  store %struct.Memory* %loadMem_400fe5, %struct.Memory** %MEMORY
  %loadMem_400fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 25
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R12.i587 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i586
  %232 = add i64 %231, 40
  %233 = load i64, i64* %PC.i585
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC.i585
  %235 = inttoptr i64 %232 to i64*
  %236 = load i64, i64* %235
  store i64 %236, i64* %R12.i587, align 8
  store %struct.Memory* %loadMem_400fe9, %struct.Memory** %MEMORY
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 27
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %R13.i584 = bitcast %union.anon* %245 to i64*
  %246 = load i64, i64* %RBP.i583
  %247 = add i64 %246, 32
  %248 = load i64, i64* %PC.i582
  %249 = add i64 %248, 4
  store i64 %249, i64* %PC.i582
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250
  store i64 %251, i64* %R13.i584, align 8
  store %struct.Memory* %loadMem_400fed, %struct.Memory** %MEMORY
  %loadMem_400ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i581
  %262 = sub i64 %261, 184
  %263 = load i64, i64* %RAX.i580
  %264 = load i64, i64* %PC.i579
  %265 = add i64 %264, 7
  store i64 %265, i64* %PC.i579
  %266 = inttoptr i64 %262 to i64*
  store i64 %263, i64* %266
  store %struct.Memory* %loadMem_400ff1, %struct.Memory** %MEMORY
  %loadMem_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 15
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RBP.i578
  %277 = add i64 %276, 24
  %278 = load i64, i64* %PC.i576
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC.i576
  %280 = inttoptr i64 %277 to i64*
  %281 = load i64, i64* %280
  store i64 %281, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_400ff8, %struct.Memory** %MEMORY
  %loadMem_400ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i575
  %292 = sub i64 %291, 192
  %293 = load i64, i64* %RAX.i574
  %294 = load i64, i64* %PC.i573
  %295 = add i64 %294, 7
  store i64 %295, i64* %PC.i573
  %296 = inttoptr i64 %292 to i64*
  store i64 %293, i64* %296
  store %struct.Memory* %loadMem_400ffc, %struct.Memory** %MEMORY
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i572
  %307 = add i64 %306, 16
  %308 = load i64, i64* %PC.i570
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i570
  %310 = inttoptr i64 %307 to i64*
  %311 = load i64, i64* %310
  store i64 %311, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_401003, %struct.Memory** %MEMORY
  %loadMem_401007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %315, i64 0, i64 0
  %YMM0.i569 = bitcast %union.VectorReg* %316 to %"class.std::bitset"*
  %317 = bitcast %"class.std::bitset"* %YMM0.i569 to i8*
  %318 = load i64, i64* %PC.i568
  %319 = add i64 %318, 9281
  %320 = load i64, i64* %PC.i568
  %321 = add i64 %320, 8
  store i64 %321, i64* %PC.i568
  %322 = inttoptr i64 %319 to double*
  %323 = load double, double* %322
  %324 = bitcast i8* %317 to double*
  store double %323, double* %324, align 1
  %325 = getelementptr inbounds i8, i8* %317, i64 8
  %326 = bitcast i8* %325 to double*
  store double 0.000000e+00, double* %326, align 1
  store %struct.Memory* %loadMem_401007, %struct.Memory** %MEMORY
  %loadMem_40100f = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %330, i64 0, i64 1
  %YMM1.i567 = bitcast %union.VectorReg* %331 to %"class.std::bitset"*
  %332 = bitcast %"class.std::bitset"* %YMM1.i567 to i8*
  %333 = load i64, i64* %PC.i566
  %334 = add i64 %333, 9281
  %335 = load i64, i64* %PC.i566
  %336 = add i64 %335, 8
  store i64 %336, i64* %PC.i566
  %337 = inttoptr i64 %334 to double*
  %338 = load double, double* %337
  %339 = bitcast i8* %332 to double*
  store double %338, double* %339, align 1
  %340 = getelementptr inbounds i8, i8* %332, i64 8
  %341 = bitcast i8* %340 to double*
  store double 0.000000e+00, double* %341, align 1
  store %struct.Memory* %loadMem_40100f, %struct.Memory** %MEMORY
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 11
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %347 to i32*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i565
  %352 = sub i64 %351, 44
  %353 = load i32, i32* %EDI.i
  %354 = zext i32 %353 to i64
  %355 = load i64, i64* %PC.i564
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC.i564
  %357 = inttoptr i64 %352 to i32*
  store i32 %353, i32* %357
  store %struct.Memory* %loadMem_401017, %struct.Memory** %MEMORY
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 9
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i563
  %368 = sub i64 %367, 48
  %369 = load i32, i32* %ESI.i
  %370 = zext i32 %369 to i64
  %371 = load i64, i64* %PC.i562
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i562
  %373 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %373
  store %struct.Memory* %loadMem_40101a, %struct.Memory** %MEMORY
  %loadMem_40101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 7
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %379 to i32*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i561
  %384 = sub i64 %383, 52
  %385 = load i32, i32* %EDX.i
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC.i560
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i560
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  store %struct.Memory* %loadMem_40101d, %struct.Memory** %MEMORY
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 15
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RBP.i559
  %400 = sub i64 %399, 64
  %401 = load i64, i64* %RCX.i558
  %402 = load i64, i64* %PC.i557
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC.i557
  %404 = inttoptr i64 %400 to i64*
  store i64 %401, i64* %404
  store %struct.Memory* %loadMem_401020, %struct.Memory** %MEMORY
  %loadMem_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 33
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 15
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 17
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %R8.i556 = bitcast %union.anon* %413 to i64*
  %414 = load i64, i64* %RBP.i555
  %415 = sub i64 %414, 72
  %416 = load i64, i64* %R8.i556
  %417 = load i64, i64* %PC.i554
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC.i554
  %419 = inttoptr i64 %415 to i64*
  store i64 %416, i64* %419
  store %struct.Memory* %loadMem_401024, %struct.Memory** %MEMORY
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 19
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %R9.i = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i553
  %430 = sub i64 %429, 80
  %431 = load i64, i64* %R9.i
  %432 = load i64, i64* %PC.i552
  %433 = add i64 %432, 4
  store i64 %433, i64* %PC.i552
  %434 = inttoptr i64 %430 to i64*
  store i64 %431, i64* %434
  store %struct.Memory* %loadMem_401028, %struct.Memory** %MEMORY
  %loadMem_40102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i551
  %445 = sub i64 %444, 88
  %446 = load i64, i64* %RAX.i550
  %447 = load i64, i64* %PC.i549
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i549
  %449 = inttoptr i64 %445 to i64*
  store i64 %446, i64* %449
  store %struct.Memory* %loadMem_40102c, %struct.Memory** %MEMORY
  %loadMem_401030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i548
  %460 = sub i64 %459, 192
  %461 = load i64, i64* %PC.i546
  %462 = add i64 %461, 7
  store i64 %462, i64* %PC.i546
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463
  store i64 %464, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_401030, %struct.Memory** %MEMORY
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i545
  %475 = sub i64 %474, 96
  %476 = load i64, i64* %RAX.i544
  %477 = load i64, i64* %PC.i543
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC.i543
  %479 = inttoptr i64 %475 to i64*
  store i64 %476, i64* %479
  store %struct.Memory* %loadMem_401037, %struct.Memory** %MEMORY
  %loadMem_40103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 27
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %R13.i542 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %RBP.i541
  %490 = sub i64 %489, 104
  %491 = load i64, i64* %R13.i542
  %492 = load i64, i64* %PC.i540
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC.i540
  %494 = inttoptr i64 %490 to i64*
  store i64 %491, i64* %494
  store %struct.Memory* %loadMem_40103b, %struct.Memory** %MEMORY
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 25
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %R12.i539 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i538
  %505 = sub i64 %504, 112
  %506 = load i64, i64* %R12.i539
  %507 = load i64, i64* %PC.i537
  %508 = add i64 %507, 4
  store i64 %508, i64* %PC.i537
  %509 = inttoptr i64 %505 to i64*
  store i64 %506, i64* %509
  store %struct.Memory* %loadMem_40103f, %struct.Memory** %MEMORY
  %loadMem_401043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 31
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %R15.i536 = bitcast %union.anon* %518 to i64*
  %519 = load i64, i64* %RBP.i535
  %520 = sub i64 %519, 120
  %521 = load i64, i64* %R15.i536
  %522 = load i64, i64* %PC.i534
  %523 = add i64 %522, 4
  store i64 %523, i64* %PC.i534
  %524 = inttoptr i64 %520 to i64*
  store i64 %521, i64* %524
  store %struct.Memory* %loadMem_401043, %struct.Memory** %MEMORY
  %loadMem_401047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 15
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 29
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %R14.i533 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i532
  %535 = sub i64 %534, 128
  %536 = load i64, i64* %R14.i533
  %537 = load i64, i64* %PC.i531
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC.i531
  %539 = inttoptr i64 %535 to i64*
  store i64 %536, i64* %539
  store %struct.Memory* %loadMem_401047, %struct.Memory** %MEMORY
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 3
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBX.i529 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RBP.i530
  %550 = sub i64 %549, 136
  %551 = load i64, i64* %RBX.i529
  %552 = load i64, i64* %PC.i528
  %553 = add i64 %552, 7
  store i64 %553, i64* %PC.i528
  %554 = inttoptr i64 %550 to i64*
  store i64 %551, i64* %554
  store %struct.Memory* %loadMem_40104b, %struct.Memory** %MEMORY
  %loadMem_401052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 15
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 23
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %R11.i = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i527
  %565 = sub i64 %564, 144
  %566 = load i64, i64* %R11.i
  %567 = load i64, i64* %PC.i526
  %568 = add i64 %567, 7
  store i64 %568, i64* %PC.i526
  %569 = inttoptr i64 %565 to i64*
  store i64 %566, i64* %569
  store %struct.Memory* %loadMem_401052, %struct.Memory** %MEMORY
  %loadMem_401059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 21
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %R10.i = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %RBP.i525
  %580 = sub i64 %579, 152
  %581 = load i64, i64* %R10.i
  %582 = load i64, i64* %PC.i524
  %583 = add i64 %582, 7
  store i64 %583, i64* %PC.i524
  %584 = inttoptr i64 %580 to i64*
  store i64 %581, i64* %584
  store %struct.Memory* %loadMem_401059, %struct.Memory** %MEMORY
  %loadMem_401060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 5
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i523
  %595 = sub i64 %594, 184
  %596 = load i64, i64* %PC.i521
  %597 = add i64 %596, 7
  store i64 %597, i64* %PC.i521
  %598 = inttoptr i64 %595 to i64*
  %599 = load i64, i64* %598
  store i64 %599, i64* %RCX.i522, align 8
  store %struct.Memory* %loadMem_401060, %struct.Memory** %MEMORY
  %loadMem_401067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i520
  %610 = sub i64 %609, 160
  %611 = load i64, i64* %RCX.i519
  %612 = load i64, i64* %PC.i518
  %613 = add i64 %612, 7
  store i64 %613, i64* %PC.i518
  %614 = inttoptr i64 %610 to i64*
  store i64 %611, i64* %614
  store %struct.Memory* %loadMem_401067, %struct.Memory** %MEMORY
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 15
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 17
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %R8.i517 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RBP.i516
  %625 = sub i64 %624, 64
  %626 = load i64, i64* %PC.i515
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i515
  %628 = inttoptr i64 %625 to i64*
  %629 = load i64, i64* %628
  store i64 %629, i64* %R8.i517, align 8
  store %struct.Memory* %loadMem_40106e, %struct.Memory** %MEMORY
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 17
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %R8.i513 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %636, i64 0, i64 1
  %XMM1.i514 = bitcast %union.VectorReg* %637 to %union.vec128_t*
  %638 = load i64, i64* %R8.i513
  %639 = bitcast %union.vec128_t* %XMM1.i514 to i8*
  %640 = load i64, i64* %PC.i512
  %641 = add i64 %640, 5
  store i64 %641, i64* %PC.i512
  %642 = bitcast i8* %639 to double*
  %643 = load double, double* %642, align 1
  %644 = inttoptr i64 %638 to double*
  store double %643, double* %644
  store %struct.Memory* %loadMem_401072, %struct.Memory** %MEMORY
  %loadMem_401077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 15
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 17
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %R8.i511 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i510
  %655 = sub i64 %654, 72
  %656 = load i64, i64* %PC.i509
  %657 = add i64 %656, 4
  store i64 %657, i64* %PC.i509
  %658 = inttoptr i64 %655 to i64*
  %659 = load i64, i64* %658
  store i64 %659, i64* %R8.i511, align 8
  store %struct.Memory* %loadMem_401077, %struct.Memory** %MEMORY
  %loadMem_40107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 17
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %R8.i = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %666, i64 0, i64 0
  %XMM0.i508 = bitcast %union.VectorReg* %667 to %union.vec128_t*
  %668 = load i64, i64* %R8.i
  %669 = bitcast %union.vec128_t* %XMM0.i508 to i8*
  %670 = load i64, i64* %PC.i507
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC.i507
  %672 = bitcast i8* %669 to double*
  %673 = load double, double* %672, align 1
  %674 = inttoptr i64 %668 to double*
  store double %673, double* %674
  store %struct.Memory* %loadMem_40107b, %struct.Memory** %MEMORY
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i506
  %682 = sub i64 %681, 164
  %683 = load i64, i64* %PC.i505
  %684 = add i64 %683, 10
  store i64 %684, i64* %PC.i505
  %685 = inttoptr i64 %682 to i32*
  store i32 0, i32* %685
  store %struct.Memory* %loadMem_401080, %struct.Memory** %MEMORY
  br label %block_.L_40108a

block_.L_40108a:                                  ; preds = %block_401099, %entry
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 15
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RBP.i504
  %696 = sub i64 %695, 164
  %697 = load i64, i64* %PC.i502
  %698 = add i64 %697, 6
  store i64 %698, i64* %PC.i502
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_40108a, %struct.Memory** %MEMORY
  %loadMem_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 1
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %707 to i32*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 15
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %710 to i64*
  %711 = load i32, i32* %EAX.i500
  %712 = zext i32 %711 to i64
  %713 = load i64, i64* %RBP.i501
  %714 = sub i64 %713, 44
  %715 = load i64, i64* %PC.i499
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC.i499
  %717 = inttoptr i64 %714 to i32*
  %718 = load i32, i32* %717
  %719 = sub i32 %711, %718
  %720 = icmp ult i32 %711, %718
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %721, i8* %722, align 1
  %723 = and i32 %719, 255
  %724 = call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %727, i8* %728, align 1
  %729 = xor i32 %718, %711
  %730 = xor i32 %729, %719
  %731 = lshr i32 %730, 4
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %733, i8* %734, align 1
  %735 = icmp eq i32 %719, 0
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %736, i8* %737, align 1
  %738 = lshr i32 %719, 31
  %739 = trunc i32 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %739, i8* %740, align 1
  %741 = lshr i32 %711, 31
  %742 = lshr i32 %718, 31
  %743 = xor i32 %742, %741
  %744 = xor i32 %738, %741
  %745 = add i32 %744, %743
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %747, i8* %748, align 1
  store %struct.Memory* %loadMem_401090, %struct.Memory** %MEMORY
  %loadMem_401093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %PC.i498
  %753 = add i64 %752, 116
  %754 = load i64, i64* %PC.i498
  %755 = add i64 %754, 6
  %756 = load i64, i64* %PC.i498
  %757 = add i64 %756, 6
  store i64 %757, i64* %PC.i498
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %759 = load i8, i8* %758, align 1
  %760 = icmp eq i8 %759, 0
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %762 = load i8, i8* %761, align 1
  %763 = icmp ne i8 %762, 0
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %765 = load i8, i8* %764, align 1
  %766 = icmp ne i8 %765, 0
  %767 = xor i1 %763, %766
  %768 = xor i1 %767, true
  %769 = and i1 %760, %768
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %BRANCH_TAKEN, align 1
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %772 = select i1 %769, i64 %753, i64 %755
  store i64 %772, i64* %771, align 8
  store %struct.Memory* %loadMem_401093, %struct.Memory** %MEMORY
  %loadBr_401093 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401093 = icmp eq i8 %loadBr_401093, 1
  br i1 %cmpBr_401093, label %block_.L_401107, label %block_401099

block_401099:                                     ; preds = %block_.L_40108a
  %loadMem_401099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %777 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %776, i64 0, i64 0
  %YMM0.i497 = bitcast %union.VectorReg* %777 to %"class.std::bitset"*
  %778 = bitcast %"class.std::bitset"* %YMM0.i497 to i8*
  %779 = load i64, i64* %PC.i496
  %780 = add i64 %779, 9175
  %781 = load i64, i64* %PC.i496
  %782 = add i64 %781, 8
  store i64 %782, i64* %PC.i496
  %783 = inttoptr i64 %780 to double*
  %784 = load double, double* %783
  %785 = bitcast i8* %778 to double*
  store double %784, double* %785, align 1
  %786 = getelementptr inbounds i8, i8* %778, i64 8
  %787 = bitcast i8* %786 to double*
  store double 0.000000e+00, double* %787, align 1
  store %struct.Memory* %loadMem_401099, %struct.Memory** %MEMORY
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %791, i64 0, i64 1
  %YMM1.i495 = bitcast %union.VectorReg* %792 to %"class.std::bitset"*
  %793 = bitcast %"class.std::bitset"* %YMM1.i495 to i8*
  %794 = load i64, i64* %PC.i494
  %795 = add i64 %794, 9175
  %796 = load i64, i64* %PC.i494
  %797 = add i64 %796, 8
  store i64 %797, i64* %PC.i494
  %798 = inttoptr i64 %795 to double*
  %799 = load double, double* %798
  %800 = bitcast i8* %793 to double*
  store double %799, double* %800, align 1
  %801 = getelementptr inbounds i8, i8* %793, i64 8
  %802 = bitcast i8* %801 to double*
  store double 0.000000e+00, double* %802, align 1
  store %struct.Memory* %loadMem_4010a1, %struct.Memory** %MEMORY
  %loadMem_4010a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %810 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %809, i64 0, i64 2
  %YMM2.i493 = bitcast %union.VectorReg* %810 to %"class.std::bitset"*
  %811 = bitcast %"class.std::bitset"* %YMM2.i493 to i8*
  %812 = load i64, i64* %RBP.i492
  %813 = sub i64 %812, 164
  %814 = load i64, i64* %PC.i491
  %815 = add i64 %814, 8
  store i64 %815, i64* %PC.i491
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = sitofp i32 %817 to double
  %819 = bitcast i8* %811 to double*
  store double %818, double* %819, align 1
  store %struct.Memory* %loadMem_4010a9, %struct.Memory** %MEMORY
  %loadMem_4010b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %823, i64 0, i64 2
  %YMM2.i489 = bitcast %union.VectorReg* %824 to %"class.std::bitset"*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %825, i64 0, i64 1
  %XMM1.i490 = bitcast %union.VectorReg* %826 to %union.vec128_t*
  %827 = bitcast %"class.std::bitset"* %YMM2.i489 to i8*
  %828 = bitcast %"class.std::bitset"* %YMM2.i489 to i8*
  %829 = bitcast %union.vec128_t* %XMM1.i490 to i8*
  %830 = load i64, i64* %PC.i488
  %831 = add i64 %830, 4
  store i64 %831, i64* %PC.i488
  %832 = bitcast i8* %828 to double*
  %833 = load double, double* %832, align 1
  %834 = getelementptr inbounds i8, i8* %828, i64 8
  %835 = bitcast i8* %834 to i64*
  %836 = load i64, i64* %835, align 1
  %837 = bitcast i8* %829 to double*
  %838 = load double, double* %837, align 1
  %839 = fadd double %833, %838
  %840 = bitcast i8* %827 to double*
  store double %839, double* %840, align 1
  %841 = getelementptr inbounds i8, i8* %827, i64 8
  %842 = bitcast i8* %841 to i64*
  store i64 %836, i64* %842, align 1
  store %struct.Memory* %loadMem_4010b1, %struct.Memory** %MEMORY
  %loadMem_4010b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 15
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %849, i64 0, i64 1
  %YMM1.i487 = bitcast %union.VectorReg* %850 to %"class.std::bitset"*
  %851 = bitcast %"class.std::bitset"* %YMM1.i487 to i8*
  %852 = load i64, i64* %RBP.i486
  %853 = sub i64 %852, 48
  %854 = load i64, i64* %PC.i485
  %855 = add i64 %854, 5
  store i64 %855, i64* %PC.i485
  %856 = inttoptr i64 %853 to i32*
  %857 = load i32, i32* %856
  %858 = sitofp i32 %857 to double
  %859 = bitcast i8* %851 to double*
  store double %858, double* %859, align 1
  store %struct.Memory* %loadMem_4010b5, %struct.Memory** %MEMORY
  %loadMem_4010ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %863, i64 0, i64 2
  %YMM2.i483 = bitcast %union.VectorReg* %864 to %"class.std::bitset"*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %865, i64 0, i64 1
  %XMM1.i484 = bitcast %union.VectorReg* %866 to %union.vec128_t*
  %867 = bitcast %"class.std::bitset"* %YMM2.i483 to i8*
  %868 = bitcast %"class.std::bitset"* %YMM2.i483 to i8*
  %869 = bitcast %union.vec128_t* %XMM1.i484 to i8*
  %870 = load i64, i64* %PC.i482
  %871 = add i64 %870, 4
  store i64 %871, i64* %PC.i482
  %872 = bitcast i8* %868 to double*
  %873 = load double, double* %872, align 1
  %874 = getelementptr inbounds i8, i8* %868, i64 8
  %875 = bitcast i8* %874 to i64*
  %876 = load i64, i64* %875, align 1
  %877 = bitcast i8* %869 to double*
  %878 = load double, double* %877, align 1
  %879 = fdiv double %873, %878
  %880 = bitcast i8* %867 to double*
  store double %879, double* %880, align 1
  %881 = getelementptr inbounds i8, i8* %867, i64 8
  %882 = bitcast i8* %881 to i64*
  store i64 %876, i64* %882, align 1
  store %struct.Memory* %loadMem_4010ba, %struct.Memory** %MEMORY
  %loadMem_4010be = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i481
  %893 = sub i64 %892, 120
  %894 = load i64, i64* %PC.i479
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i479
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_4010be, %struct.Memory** %MEMORY
  %loadMem_4010c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i478
  %908 = sub i64 %907, 164
  %909 = load i64, i64* %PC.i476
  %910 = add i64 %909, 7
  store i64 %910, i64* %PC.i476
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i477, align 8
  store %struct.Memory* %loadMem_4010c2, %struct.Memory** %MEMORY
  %loadMem_4010c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %923, i64 0, i64 2
  %XMM2.i475 = bitcast %union.VectorReg* %924 to %union.vec128_t*
  %925 = load i64, i64* %RAX.i473
  %926 = load i64, i64* %RCX.i474
  %927 = mul i64 %926, 8
  %928 = add i64 %927, %925
  %929 = bitcast %union.vec128_t* %XMM2.i475 to i8*
  %930 = load i64, i64* %PC.i472
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i472
  %932 = bitcast i8* %929 to double*
  %933 = load double, double* %932, align 1
  %934 = inttoptr i64 %928 to double*
  store double %933, double* %934
  store %struct.Memory* %loadMem_4010c9, %struct.Memory** %MEMORY
  %loadMem_4010ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 15
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %942 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %941, i64 0, i64 1
  %YMM1.i471 = bitcast %union.VectorReg* %942 to %"class.std::bitset"*
  %943 = bitcast %"class.std::bitset"* %YMM1.i471 to i8*
  %944 = load i64, i64* %RBP.i470
  %945 = sub i64 %944, 164
  %946 = load i64, i64* %PC.i469
  %947 = add i64 %946, 8
  store i64 %947, i64* %PC.i469
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948
  %950 = sitofp i32 %949 to double
  %951 = bitcast i8* %943 to double*
  store double %950, double* %951, align 1
  store %struct.Memory* %loadMem_4010ce, %struct.Memory** %MEMORY
  %loadMem_4010d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %955, i64 0, i64 1
  %YMM1.i467 = bitcast %union.VectorReg* %956 to %"class.std::bitset"*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %957, i64 0, i64 0
  %XMM0.i468 = bitcast %union.VectorReg* %958 to %union.vec128_t*
  %959 = bitcast %"class.std::bitset"* %YMM1.i467 to i8*
  %960 = bitcast %"class.std::bitset"* %YMM1.i467 to i8*
  %961 = bitcast %union.vec128_t* %XMM0.i468 to i8*
  %962 = load i64, i64* %PC.i466
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i466
  %964 = bitcast i8* %960 to double*
  %965 = load double, double* %964, align 1
  %966 = getelementptr inbounds i8, i8* %960, i64 8
  %967 = bitcast i8* %966 to i64*
  %968 = load i64, i64* %967, align 1
  %969 = bitcast i8* %961 to double*
  %970 = load double, double* %969, align 1
  %971 = fadd double %965, %970
  %972 = bitcast i8* %959 to double*
  store double %971, double* %972, align 1
  %973 = getelementptr inbounds i8, i8* %959, i64 8
  %974 = bitcast i8* %973 to i64*
  store i64 %968, i64* %974, align 1
  store %struct.Memory* %loadMem_4010d6, %struct.Memory** %MEMORY
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %981, i64 0, i64 0
  %YMM0.i465 = bitcast %union.VectorReg* %982 to %"class.std::bitset"*
  %983 = bitcast %"class.std::bitset"* %YMM0.i465 to i8*
  %984 = load i64, i64* %RBP.i464
  %985 = sub i64 %984, 48
  %986 = load i64, i64* %PC.i463
  %987 = add i64 %986, 5
  store i64 %987, i64* %PC.i463
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = sitofp i32 %989 to double
  %991 = bitcast i8* %983 to double*
  store double %990, double* %991, align 1
  store %struct.Memory* %loadMem_4010da, %struct.Memory** %MEMORY
  %loadMem_4010df = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %995, i64 0, i64 1
  %YMM1.i461 = bitcast %union.VectorReg* %996 to %"class.std::bitset"*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %997, i64 0, i64 0
  %XMM0.i462 = bitcast %union.VectorReg* %998 to %union.vec128_t*
  %999 = bitcast %"class.std::bitset"* %YMM1.i461 to i8*
  %1000 = bitcast %"class.std::bitset"* %YMM1.i461 to i8*
  %1001 = bitcast %union.vec128_t* %XMM0.i462 to i8*
  %1002 = load i64, i64* %PC.i460
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i460
  %1004 = bitcast i8* %1000 to double*
  %1005 = load double, double* %1004, align 1
  %1006 = getelementptr inbounds i8, i8* %1000, i64 8
  %1007 = bitcast i8* %1006 to i64*
  %1008 = load i64, i64* %1007, align 1
  %1009 = bitcast i8* %1001 to double*
  %1010 = load double, double* %1009, align 1
  %1011 = fdiv double %1005, %1010
  %1012 = bitcast i8* %999 to double*
  store double %1011, double* %1012, align 1
  %1013 = getelementptr inbounds i8, i8* %999, i64 8
  %1014 = bitcast i8* %1013 to i64*
  store i64 %1008, i64* %1014, align 1
  store %struct.Memory* %loadMem_4010df, %struct.Memory** %MEMORY
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 33
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 1
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 15
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %RBP.i459
  %1025 = sub i64 %1024, 128
  %1026 = load i64, i64* %PC.i457
  %1027 = add i64 %1026, 4
  store i64 %1027, i64* %PC.i457
  %1028 = inttoptr i64 %1025 to i64*
  %1029 = load i64, i64* %1028
  store i64 %1029, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_4010e3, %struct.Memory** %MEMORY
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i456
  %1040 = sub i64 %1039, 164
  %1041 = load i64, i64* %PC.i454
  %1042 = add i64 %1041, 7
  store i64 %1042, i64* %PC.i454
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_4010e7, %struct.Memory** %MEMORY
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1055, i64 0, i64 1
  %XMM1.i453 = bitcast %union.VectorReg* %1056 to %union.vec128_t*
  %1057 = load i64, i64* %RAX.i451
  %1058 = load i64, i64* %RCX.i452
  %1059 = mul i64 %1058, 8
  %1060 = add i64 %1059, %1057
  %1061 = bitcast %union.vec128_t* %XMM1.i453 to i8*
  %1062 = load i64, i64* %PC.i450
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC.i450
  %1064 = bitcast i8* %1061 to double*
  %1065 = load double, double* %1064, align 1
  %1066 = inttoptr i64 %1060 to double*
  store double %1065, double* %1066
  store %struct.Memory* %loadMem_4010ee, %struct.Memory** %MEMORY
  %loadMem_4010f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 1
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 15
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %RBP.i449
  %1077 = sub i64 %1076, 164
  %1078 = load i64, i64* %PC.i447
  %1079 = add i64 %1078, 6
  store i64 %1079, i64* %PC.i447
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_4010f3, %struct.Memory** %MEMORY
  %loadMem_4010f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 1
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %RAX.i446
  %1090 = load i64, i64* %PC.i445
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i445
  %1092 = trunc i64 %1089 to i32
  %1093 = add i32 1, %1092
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX.i446, align 8
  %1095 = icmp ult i32 %1093, %1092
  %1096 = icmp ult i32 %1093, 1
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1098, i8* %1099, align 1
  %1100 = and i32 %1093, 255
  %1101 = call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1104, i8* %1105, align 1
  %1106 = xor i64 1, %1089
  %1107 = trunc i64 %1106 to i32
  %1108 = xor i32 %1107, %1093
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1
  %1113 = icmp eq i32 %1093, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1
  %1116 = lshr i32 %1093, 31
  %1117 = trunc i32 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i32 %1092, 31
  %1120 = xor i32 %1116, %1119
  %1121 = add i32 %1120, %1116
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1123, i8* %1124, align 1
  store %struct.Memory* %loadMem_4010f9, %struct.Memory** %MEMORY
  %loadMem_4010fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %EAX.i443 = bitcast %union.anon* %1130 to i32*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 15
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RBP.i444
  %1135 = sub i64 %1134, 164
  %1136 = load i32, i32* %EAX.i443
  %1137 = zext i32 %1136 to i64
  %1138 = load i64, i64* %PC.i442
  %1139 = add i64 %1138, 6
  store i64 %1139, i64* %PC.i442
  %1140 = inttoptr i64 %1135 to i32*
  store i32 %1136, i32* %1140
  store %struct.Memory* %loadMem_4010fc, %struct.Memory** %MEMORY
  %loadMem_401102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %PC.i441
  %1145 = add i64 %1144, -120
  %1146 = load i64, i64* %PC.i441
  %1147 = add i64 %1146, 5
  store i64 %1147, i64* %PC.i441
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1145, i64* %1148, align 8
  store %struct.Memory* %loadMem_401102, %struct.Memory** %MEMORY
  br label %block_.L_40108a

block_.L_401107:                                  ; preds = %block_.L_40108a
  %loadMem_401107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %RBP.i440
  %1156 = sub i64 %1155, 164
  %1157 = load i64, i64* %PC.i439
  %1158 = add i64 %1157, 10
  store i64 %1158, i64* %PC.i439
  %1159 = inttoptr i64 %1156 to i32*
  store i32 0, i32* %1159
  store %struct.Memory* %loadMem_401107, %struct.Memory** %MEMORY
  br label %block_.L_401111

block_.L_401111:                                  ; preds = %block_401120, %block_.L_401107
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 1
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i438
  %1170 = sub i64 %1169, 164
  %1171 = load i64, i64* %PC.i436
  %1172 = add i64 %1171, 6
  store i64 %1172, i64* %PC.i436
  %1173 = inttoptr i64 %1170 to i32*
  %1174 = load i32, i32* %1173
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_401111, %struct.Memory** %MEMORY
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %1181 to i32*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1184 to i64*
  %1185 = load i32, i32* %EAX.i434
  %1186 = zext i32 %1185 to i64
  %1187 = load i64, i64* %RBP.i435
  %1188 = sub i64 %1187, 48
  %1189 = load i64, i64* %PC.i433
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC.i433
  %1191 = inttoptr i64 %1188 to i32*
  %1192 = load i32, i32* %1191
  %1193 = sub i32 %1185, %1192
  %1194 = icmp ult i32 %1185, %1192
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1195, i8* %1196, align 1
  %1197 = and i32 %1193, 255
  %1198 = call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1201, i8* %1202, align 1
  %1203 = xor i32 %1192, %1185
  %1204 = xor i32 %1203, %1193
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1207, i8* %1208, align 1
  %1209 = icmp eq i32 %1193, 0
  %1210 = zext i1 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1210, i8* %1211, align 1
  %1212 = lshr i32 %1193, 31
  %1213 = trunc i32 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i32 %1185, 31
  %1216 = lshr i32 %1192, 31
  %1217 = xor i32 %1216, %1215
  %1218 = xor i32 %1212, %1215
  %1219 = add i32 %1218, %1217
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1221, i8* %1222, align 1
  store %struct.Memory* %loadMem_401117, %struct.Memory** %MEMORY
  %loadMem_40111a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %PC.i432
  %1227 = add i64 %1226, 122
  %1228 = load i64, i64* %PC.i432
  %1229 = add i64 %1228, 6
  %1230 = load i64, i64* %PC.i432
  %1231 = add i64 %1230, 6
  store i64 %1231, i64* %PC.i432
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1233 = load i8, i8* %1232, align 1
  %1234 = icmp eq i8 %1233, 0
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1236 = load i8, i8* %1235, align 1
  %1237 = icmp ne i8 %1236, 0
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1239 = load i8, i8* %1238, align 1
  %1240 = icmp ne i8 %1239, 0
  %1241 = xor i1 %1237, %1240
  %1242 = xor i1 %1241, true
  %1243 = and i1 %1234, %1242
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %BRANCH_TAKEN, align 1
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1246 = select i1 %1243, i64 %1227, i64 %1229
  store i64 %1246, i64* %1245, align 8
  store %struct.Memory* %loadMem_40111a, %struct.Memory** %MEMORY
  %loadBr_40111a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40111a = icmp eq i8 %loadBr_40111a, 1
  br i1 %cmpBr_40111a, label %block_.L_401194, label %block_401120

block_401120:                                     ; preds = %block_.L_401111
  %loadMem_401120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1250, i64 0, i64 0
  %YMM0.i431 = bitcast %union.VectorReg* %1251 to %"class.std::bitset"*
  %1252 = bitcast %"class.std::bitset"* %YMM0.i431 to i8*
  %1253 = load i64, i64* %PC.i430
  %1254 = add i64 %1253, 9072
  %1255 = load i64, i64* %PC.i430
  %1256 = add i64 %1255, 8
  store i64 %1256, i64* %PC.i430
  %1257 = inttoptr i64 %1254 to double*
  %1258 = load double, double* %1257
  %1259 = bitcast i8* %1252 to double*
  store double %1258, double* %1259, align 1
  %1260 = getelementptr inbounds i8, i8* %1252, i64 8
  %1261 = bitcast i8* %1260 to double*
  store double 0.000000e+00, double* %1261, align 1
  store %struct.Memory* %loadMem_401120, %struct.Memory** %MEMORY
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1265, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %1266 to %"class.std::bitset"*
  %1267 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %1268 = load i64, i64* %PC.i428
  %1269 = add i64 %1268, 9024
  %1270 = load i64, i64* %PC.i428
  %1271 = add i64 %1270, 8
  store i64 %1271, i64* %PC.i428
  %1272 = inttoptr i64 %1269 to double*
  %1273 = load double, double* %1272
  %1274 = bitcast i8* %1267 to double*
  store double %1273, double* %1274, align 1
  %1275 = getelementptr inbounds i8, i8* %1267, i64 8
  %1276 = bitcast i8* %1275 to double*
  store double 0.000000e+00, double* %1276, align 1
  store %struct.Memory* %loadMem_401128, %struct.Memory** %MEMORY
  %loadMem_401130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1283, i64 0, i64 2
  %YMM2.i427 = bitcast %union.VectorReg* %1284 to %"class.std::bitset"*
  %1285 = bitcast %"class.std::bitset"* %YMM2.i427 to i8*
  %1286 = load i64, i64* %RBP.i426
  %1287 = sub i64 %1286, 164
  %1288 = load i64, i64* %PC.i425
  %1289 = add i64 %1288, 8
  store i64 %1289, i64* %PC.i425
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290
  %1292 = sitofp i32 %1291 to double
  %1293 = bitcast i8* %1285 to double*
  store double %1292, double* %1293, align 1
  store %struct.Memory* %loadMem_401130, %struct.Memory** %MEMORY
  %loadMem_401138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1297, i64 0, i64 2
  %YMM2.i423 = bitcast %union.VectorReg* %1298 to %"class.std::bitset"*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1299, i64 0, i64 1
  %XMM1.i424 = bitcast %union.VectorReg* %1300 to %union.vec128_t*
  %1301 = bitcast %"class.std::bitset"* %YMM2.i423 to i8*
  %1302 = bitcast %"class.std::bitset"* %YMM2.i423 to i8*
  %1303 = bitcast %union.vec128_t* %XMM1.i424 to i8*
  %1304 = load i64, i64* %PC.i422
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC.i422
  %1306 = bitcast i8* %1302 to double*
  %1307 = load double, double* %1306, align 1
  %1308 = getelementptr inbounds i8, i8* %1302, i64 8
  %1309 = bitcast i8* %1308 to i64*
  %1310 = load i64, i64* %1309, align 1
  %1311 = bitcast i8* %1303 to double*
  %1312 = load double, double* %1311, align 1
  %1313 = fadd double %1307, %1312
  %1314 = bitcast i8* %1301 to double*
  store double %1313, double* %1314, align 1
  %1315 = getelementptr inbounds i8, i8* %1301, i64 8
  %1316 = bitcast i8* %1315 to i64*
  store i64 %1310, i64* %1316, align 1
  store %struct.Memory* %loadMem_401138, %struct.Memory** %MEMORY
  %loadMem_40113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1323, i64 0, i64 1
  %YMM1.i421 = bitcast %union.VectorReg* %1324 to %"class.std::bitset"*
  %1325 = bitcast %"class.std::bitset"* %YMM1.i421 to i8*
  %1326 = load i64, i64* %RBP.i420
  %1327 = sub i64 %1326, 48
  %1328 = load i64, i64* %PC.i419
  %1329 = add i64 %1328, 5
  store i64 %1329, i64* %PC.i419
  %1330 = inttoptr i64 %1327 to i32*
  %1331 = load i32, i32* %1330
  %1332 = sitofp i32 %1331 to double
  %1333 = bitcast i8* %1325 to double*
  store double %1332, double* %1333, align 1
  store %struct.Memory* %loadMem_40113c, %struct.Memory** %MEMORY
  %loadMem_401141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 33
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1337, i64 0, i64 2
  %YMM2.i417 = bitcast %union.VectorReg* %1338 to %"class.std::bitset"*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1339, i64 0, i64 1
  %XMM1.i418 = bitcast %union.VectorReg* %1340 to %union.vec128_t*
  %1341 = bitcast %"class.std::bitset"* %YMM2.i417 to i8*
  %1342 = bitcast %"class.std::bitset"* %YMM2.i417 to i8*
  %1343 = bitcast %union.vec128_t* %XMM1.i418 to i8*
  %1344 = load i64, i64* %PC.i416
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %PC.i416
  %1346 = bitcast i8* %1342 to double*
  %1347 = load double, double* %1346, align 1
  %1348 = getelementptr inbounds i8, i8* %1342, i64 8
  %1349 = bitcast i8* %1348 to i64*
  %1350 = load i64, i64* %1349, align 1
  %1351 = bitcast i8* %1343 to double*
  %1352 = load double, double* %1351, align 1
  %1353 = fdiv double %1347, %1352
  %1354 = bitcast i8* %1341 to double*
  store double %1353, double* %1354, align 1
  %1355 = getelementptr inbounds i8, i8* %1341, i64 8
  %1356 = bitcast i8* %1355 to i64*
  store i64 %1350, i64* %1356, align 1
  store %struct.Memory* %loadMem_401141, %struct.Memory** %MEMORY
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %RBP.i415
  %1367 = sub i64 %1366, 136
  %1368 = load i64, i64* %PC.i413
  %1369 = add i64 %1368, 7
  store i64 %1369, i64* %PC.i413
  %1370 = inttoptr i64 %1367 to i64*
  %1371 = load i64, i64* %1370
  store i64 %1371, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_401145, %struct.Memory** %MEMORY
  %loadMem_40114c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 5
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i412
  %1382 = sub i64 %1381, 164
  %1383 = load i64, i64* %PC.i410
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %PC.i410
  %1385 = inttoptr i64 %1382 to i32*
  %1386 = load i32, i32* %1385
  %1387 = sext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_40114c, %struct.Memory** %MEMORY
  %loadMem_401153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 1
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 5
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1397, i64 0, i64 2
  %XMM2.i409 = bitcast %union.VectorReg* %1398 to %union.vec128_t*
  %1399 = load i64, i64* %RAX.i407
  %1400 = load i64, i64* %RCX.i408
  %1401 = mul i64 %1400, 8
  %1402 = add i64 %1401, %1399
  %1403 = bitcast %union.vec128_t* %XMM2.i409 to i8*
  %1404 = load i64, i64* %PC.i406
  %1405 = add i64 %1404, 5
  store i64 %1405, i64* %PC.i406
  %1406 = bitcast i8* %1403 to double*
  %1407 = load double, double* %1406, align 1
  %1408 = inttoptr i64 %1402 to double*
  store double %1407, double* %1408
  store %struct.Memory* %loadMem_401153, %struct.Memory** %MEMORY
  %loadMem_401158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 15
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1415, i64 0, i64 1
  %YMM1.i405 = bitcast %union.VectorReg* %1416 to %"class.std::bitset"*
  %1417 = bitcast %"class.std::bitset"* %YMM1.i405 to i8*
  %1418 = load i64, i64* %RBP.i404
  %1419 = sub i64 %1418, 164
  %1420 = load i64, i64* %PC.i403
  %1421 = add i64 %1420, 8
  store i64 %1421, i64* %PC.i403
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422
  %1424 = sitofp i32 %1423 to double
  %1425 = bitcast i8* %1417 to double*
  store double %1424, double* %1425, align 1
  store %struct.Memory* %loadMem_401158, %struct.Memory** %MEMORY
  %loadMem_401160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1429, i64 0, i64 1
  %YMM1.i401 = bitcast %union.VectorReg* %1430 to %"class.std::bitset"*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1431, i64 0, i64 0
  %XMM0.i402 = bitcast %union.VectorReg* %1432 to %union.vec128_t*
  %1433 = bitcast %"class.std::bitset"* %YMM1.i401 to i8*
  %1434 = bitcast %"class.std::bitset"* %YMM1.i401 to i8*
  %1435 = bitcast %union.vec128_t* %XMM0.i402 to i8*
  %1436 = load i64, i64* %PC.i400
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %PC.i400
  %1438 = bitcast i8* %1434 to double*
  %1439 = load double, double* %1438, align 1
  %1440 = getelementptr inbounds i8, i8* %1434, i64 8
  %1441 = bitcast i8* %1440 to i64*
  %1442 = load i64, i64* %1441, align 1
  %1443 = bitcast i8* %1435 to double*
  %1444 = load double, double* %1443, align 1
  %1445 = fadd double %1439, %1444
  %1446 = bitcast i8* %1433 to double*
  store double %1445, double* %1446, align 1
  %1447 = getelementptr inbounds i8, i8* %1433, i64 8
  %1448 = bitcast i8* %1447 to i64*
  store i64 %1442, i64* %1448, align 1
  store %struct.Memory* %loadMem_401160, %struct.Memory** %MEMORY
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 15
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1455, i64 0, i64 0
  %YMM0.i399 = bitcast %union.VectorReg* %1456 to %"class.std::bitset"*
  %1457 = bitcast %"class.std::bitset"* %YMM0.i399 to i8*
  %1458 = load i64, i64* %RBP.i398
  %1459 = sub i64 %1458, 48
  %1460 = load i64, i64* %PC.i397
  %1461 = add i64 %1460, 5
  store i64 %1461, i64* %PC.i397
  %1462 = inttoptr i64 %1459 to i32*
  %1463 = load i32, i32* %1462
  %1464 = sitofp i32 %1463 to double
  %1465 = bitcast i8* %1457 to double*
  store double %1464, double* %1465, align 1
  store %struct.Memory* %loadMem_401164, %struct.Memory** %MEMORY
  %loadMem_401169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1469, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %1470 to %"class.std::bitset"*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1471, i64 0, i64 0
  %XMM0.i396 = bitcast %union.VectorReg* %1472 to %union.vec128_t*
  %1473 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %1474 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %1475 = bitcast %union.vec128_t* %XMM0.i396 to i8*
  %1476 = load i64, i64* %PC.i394
  %1477 = add i64 %1476, 4
  store i64 %1477, i64* %PC.i394
  %1478 = bitcast i8* %1474 to double*
  %1479 = load double, double* %1478, align 1
  %1480 = getelementptr inbounds i8, i8* %1474, i64 8
  %1481 = bitcast i8* %1480 to i64*
  %1482 = load i64, i64* %1481, align 1
  %1483 = bitcast i8* %1475 to double*
  %1484 = load double, double* %1483, align 1
  %1485 = fdiv double %1479, %1484
  %1486 = bitcast i8* %1473 to double*
  store double %1485, double* %1486, align 1
  %1487 = getelementptr inbounds i8, i8* %1473, i64 8
  %1488 = bitcast i8* %1487 to i64*
  store i64 %1482, i64* %1488, align 1
  store %struct.Memory* %loadMem_401169, %struct.Memory** %MEMORY
  %loadMem_40116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 1
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 15
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RBP.i393
  %1499 = sub i64 %1498, 144
  %1500 = load i64, i64* %PC.i391
  %1501 = add i64 %1500, 7
  store i64 %1501, i64* %PC.i391
  %1502 = inttoptr i64 %1499 to i64*
  %1503 = load i64, i64* %1502
  store i64 %1503, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_40116d, %struct.Memory** %MEMORY
  %loadMem_401174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 5
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RBP.i390
  %1514 = sub i64 %1513, 164
  %1515 = load i64, i64* %PC.i388
  %1516 = add i64 %1515, 7
  store i64 %1516, i64* %PC.i388
  %1517 = inttoptr i64 %1514 to i32*
  %1518 = load i32, i32* %1517
  %1519 = sext i32 %1518 to i64
  store i64 %1519, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_401174, %struct.Memory** %MEMORY
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 5
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1529, i64 0, i64 1
  %XMM1.i387 = bitcast %union.VectorReg* %1530 to %union.vec128_t*
  %1531 = load i64, i64* %RAX.i385
  %1532 = load i64, i64* %RCX.i386
  %1533 = mul i64 %1532, 8
  %1534 = add i64 %1533, %1531
  %1535 = bitcast %union.vec128_t* %XMM1.i387 to i8*
  %1536 = load i64, i64* %PC.i384
  %1537 = add i64 %1536, 5
  store i64 %1537, i64* %PC.i384
  %1538 = bitcast i8* %1535 to double*
  %1539 = load double, double* %1538, align 1
  %1540 = inttoptr i64 %1534 to double*
  store double %1539, double* %1540
  store %struct.Memory* %loadMem_40117b, %struct.Memory** %MEMORY
  %loadMem_401180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 15
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RBP.i383
  %1551 = sub i64 %1550, 164
  %1552 = load i64, i64* %PC.i381
  %1553 = add i64 %1552, 6
  store i64 %1553, i64* %PC.i381
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_401180, %struct.Memory** %MEMORY
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 1
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %RAX.i380
  %1564 = load i64, i64* %PC.i379
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC.i379
  %1566 = trunc i64 %1563 to i32
  %1567 = add i32 1, %1566
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i380, align 8
  %1569 = icmp ult i32 %1567, %1566
  %1570 = icmp ult i32 %1567, 1
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1572, i8* %1573, align 1
  %1574 = and i32 %1567, 255
  %1575 = call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1578, i8* %1579, align 1
  %1580 = xor i64 1, %1563
  %1581 = trunc i64 %1580 to i32
  %1582 = xor i32 %1581, %1567
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1585, i8* %1586, align 1
  %1587 = icmp eq i32 %1567, 0
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1588, i8* %1589, align 1
  %1590 = lshr i32 %1567, 31
  %1591 = trunc i32 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1591, i8* %1592, align 1
  %1593 = lshr i32 %1566, 31
  %1594 = xor i32 %1590, %1593
  %1595 = add i32 %1594, %1590
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1597, i8* %1598, align 1
  store %struct.Memory* %loadMem_401186, %struct.Memory** %MEMORY
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %1604 to i32*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 15
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RBP.i378
  %1609 = sub i64 %1608, 164
  %1610 = load i32, i32* %EAX.i377
  %1611 = zext i32 %1610 to i64
  %1612 = load i64, i64* %PC.i376
  %1613 = add i64 %1612, 6
  store i64 %1613, i64* %PC.i376
  %1614 = inttoptr i64 %1609 to i32*
  store i32 %1610, i32* %1614
  store %struct.Memory* %loadMem_401189, %struct.Memory** %MEMORY
  %loadMem_40118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %PC.i375
  %1619 = add i64 %1618, -126
  %1620 = load i64, i64* %PC.i375
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC.i375
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1619, i64* %1622, align 8
  store %struct.Memory* %loadMem_40118f, %struct.Memory** %MEMORY
  br label %block_.L_401111

block_.L_401194:                                  ; preds = %block_.L_401111
  %loadMem_401194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 15
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %RBP.i374
  %1630 = sub i64 %1629, 164
  %1631 = load i64, i64* %PC.i373
  %1632 = add i64 %1631, 10
  store i64 %1632, i64* %PC.i373
  %1633 = inttoptr i64 %1630 to i32*
  store i32 0, i32* %1633
  store %struct.Memory* %loadMem_401194, %struct.Memory** %MEMORY
  br label %block_.L_40119e

block_.L_40119e:                                  ; preds = %block_4011ad, %block_.L_401194
  %loadMem_40119e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 1
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %RBP.i372
  %1644 = sub i64 %1643, 164
  %1645 = load i64, i64* %PC.i370
  %1646 = add i64 %1645, 6
  store i64 %1646, i64* %PC.i370
  %1647 = inttoptr i64 %1644 to i32*
  %1648 = load i32, i32* %1647
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_40119e, %struct.Memory** %MEMORY
  %loadMem_4011a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 1
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %1655 to i32*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1658 to i64*
  %1659 = load i32, i32* %EAX.i368
  %1660 = zext i32 %1659 to i64
  %1661 = load i64, i64* %RBP.i369
  %1662 = sub i64 %1661, 52
  %1663 = load i64, i64* %PC.i367
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %PC.i367
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665
  %1667 = sub i32 %1659, %1666
  %1668 = icmp ult i32 %1659, %1666
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1669, i8* %1670, align 1
  %1671 = and i32 %1667, 255
  %1672 = call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1675, i8* %1676, align 1
  %1677 = xor i32 %1666, %1659
  %1678 = xor i32 %1677, %1667
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1681, i8* %1682, align 1
  %1683 = icmp eq i32 %1667, 0
  %1684 = zext i1 %1683 to i8
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1684, i8* %1685, align 1
  %1686 = lshr i32 %1667, 31
  %1687 = trunc i32 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1687, i8* %1688, align 1
  %1689 = lshr i32 %1659, 31
  %1690 = lshr i32 %1666, 31
  %1691 = xor i32 %1690, %1689
  %1692 = xor i32 %1686, %1689
  %1693 = add i32 %1692, %1691
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1695, i8* %1696, align 1
  store %struct.Memory* %loadMem_4011a4, %struct.Memory** %MEMORY
  %loadMem_4011a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %PC.i366
  %1701 = add i64 %1700, 122
  %1702 = load i64, i64* %PC.i366
  %1703 = add i64 %1702, 6
  %1704 = load i64, i64* %PC.i366
  %1705 = add i64 %1704, 6
  store i64 %1705, i64* %PC.i366
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1707 = load i8, i8* %1706, align 1
  %1708 = icmp eq i8 %1707, 0
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1710 = load i8, i8* %1709, align 1
  %1711 = icmp ne i8 %1710, 0
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1713 = load i8, i8* %1712, align 1
  %1714 = icmp ne i8 %1713, 0
  %1715 = xor i1 %1711, %1714
  %1716 = xor i1 %1715, true
  %1717 = and i1 %1708, %1716
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %BRANCH_TAKEN, align 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1720 = select i1 %1717, i64 %1701, i64 %1703
  store i64 %1720, i64* %1719, align 8
  store %struct.Memory* %loadMem_4011a7, %struct.Memory** %MEMORY
  %loadBr_4011a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011a7 = icmp eq i8 %loadBr_4011a7, 1
  br i1 %cmpBr_4011a7, label %block_.L_401221, label %block_4011ad

block_4011ad:                                     ; preds = %block_.L_40119e
  %loadMem_4011ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1724, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %1725 to %"class.std::bitset"*
  %1726 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %1727 = load i64, i64* %PC.i364
  %1728 = add i64 %1727, 8915
  %1729 = load i64, i64* %PC.i364
  %1730 = add i64 %1729, 8
  store i64 %1730, i64* %PC.i364
  %1731 = inttoptr i64 %1728 to double*
  %1732 = load double, double* %1731
  %1733 = bitcast i8* %1726 to double*
  store double %1732, double* %1733, align 1
  %1734 = getelementptr inbounds i8, i8* %1726, i64 8
  %1735 = bitcast i8* %1734 to double*
  store double 0.000000e+00, double* %1735, align 1
  store %struct.Memory* %loadMem_4011ad, %struct.Memory** %MEMORY
  %loadMem_4011b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1740 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1739, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %1740 to %"class.std::bitset"*
  %1741 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %1742 = load i64, i64* %PC.i362
  %1743 = add i64 %1742, 8915
  %1744 = load i64, i64* %PC.i362
  %1745 = add i64 %1744, 8
  store i64 %1745, i64* %PC.i362
  %1746 = inttoptr i64 %1743 to double*
  %1747 = load double, double* %1746
  %1748 = bitcast i8* %1741 to double*
  store double %1747, double* %1748, align 1
  %1749 = getelementptr inbounds i8, i8* %1741, i64 8
  %1750 = bitcast i8* %1749 to double*
  store double 0.000000e+00, double* %1750, align 1
  store %struct.Memory* %loadMem_4011b5, %struct.Memory** %MEMORY
  %loadMem_4011bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 33
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 15
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1757, i64 0, i64 2
  %YMM2.i361 = bitcast %union.VectorReg* %1758 to %"class.std::bitset"*
  %1759 = bitcast %"class.std::bitset"* %YMM2.i361 to i8*
  %1760 = load i64, i64* %RBP.i360
  %1761 = sub i64 %1760, 164
  %1762 = load i64, i64* %PC.i359
  %1763 = add i64 %1762, 8
  store i64 %1763, i64* %PC.i359
  %1764 = inttoptr i64 %1761 to i32*
  %1765 = load i32, i32* %1764
  %1766 = sitofp i32 %1765 to double
  %1767 = bitcast i8* %1759 to double*
  store double %1766, double* %1767, align 1
  store %struct.Memory* %loadMem_4011bd, %struct.Memory** %MEMORY
  %loadMem_4011c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1771, i64 0, i64 2
  %YMM2.i357 = bitcast %union.VectorReg* %1772 to %"class.std::bitset"*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1773, i64 0, i64 1
  %XMM1.i358 = bitcast %union.VectorReg* %1774 to %union.vec128_t*
  %1775 = bitcast %"class.std::bitset"* %YMM2.i357 to i8*
  %1776 = bitcast %"class.std::bitset"* %YMM2.i357 to i8*
  %1777 = bitcast %union.vec128_t* %XMM1.i358 to i8*
  %1778 = load i64, i64* %PC.i356
  %1779 = add i64 %1778, 4
  store i64 %1779, i64* %PC.i356
  %1780 = bitcast i8* %1776 to double*
  %1781 = load double, double* %1780, align 1
  %1782 = getelementptr inbounds i8, i8* %1776, i64 8
  %1783 = bitcast i8* %1782 to i64*
  %1784 = load i64, i64* %1783, align 1
  %1785 = bitcast i8* %1777 to double*
  %1786 = load double, double* %1785, align 1
  %1787 = fadd double %1781, %1786
  %1788 = bitcast i8* %1775 to double*
  store double %1787, double* %1788, align 1
  %1789 = getelementptr inbounds i8, i8* %1775, i64 8
  %1790 = bitcast i8* %1789 to i64*
  store i64 %1784, i64* %1790, align 1
  store %struct.Memory* %loadMem_4011c5, %struct.Memory** %MEMORY
  %loadMem_4011c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 15
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %1798 to %"class.std::bitset"*
  %1799 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %1800 = load i64, i64* %RBP.i354
  %1801 = sub i64 %1800, 48
  %1802 = load i64, i64* %PC.i353
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i353
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804
  %1806 = sitofp i32 %1805 to double
  %1807 = bitcast i8* %1799 to double*
  store double %1806, double* %1807, align 1
  store %struct.Memory* %loadMem_4011c9, %struct.Memory** %MEMORY
  %loadMem_4011ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1811, i64 0, i64 2
  %YMM2.i351 = bitcast %union.VectorReg* %1812 to %"class.std::bitset"*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1814 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1813, i64 0, i64 1
  %XMM1.i352 = bitcast %union.VectorReg* %1814 to %union.vec128_t*
  %1815 = bitcast %"class.std::bitset"* %YMM2.i351 to i8*
  %1816 = bitcast %"class.std::bitset"* %YMM2.i351 to i8*
  %1817 = bitcast %union.vec128_t* %XMM1.i352 to i8*
  %1818 = load i64, i64* %PC.i350
  %1819 = add i64 %1818, 4
  store i64 %1819, i64* %PC.i350
  %1820 = bitcast i8* %1816 to double*
  %1821 = load double, double* %1820, align 1
  %1822 = getelementptr inbounds i8, i8* %1816, i64 8
  %1823 = bitcast i8* %1822 to i64*
  %1824 = load i64, i64* %1823, align 1
  %1825 = bitcast i8* %1817 to double*
  %1826 = load double, double* %1825, align 1
  %1827 = fdiv double %1821, %1826
  %1828 = bitcast i8* %1815 to double*
  store double %1827, double* %1828, align 1
  %1829 = getelementptr inbounds i8, i8* %1815, i64 8
  %1830 = bitcast i8* %1829 to i64*
  store i64 %1824, i64* %1830, align 1
  store %struct.Memory* %loadMem_4011ce, %struct.Memory** %MEMORY
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 1
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 15
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %RBP.i349
  %1841 = sub i64 %1840, 152
  %1842 = load i64, i64* %PC.i347
  %1843 = add i64 %1842, 7
  store i64 %1843, i64* %PC.i347
  %1844 = inttoptr i64 %1841 to i64*
  %1845 = load i64, i64* %1844
  store i64 %1845, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_4011d2, %struct.Memory** %MEMORY
  %loadMem_4011d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 5
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 15
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1854 to i64*
  %1855 = load i64, i64* %RBP.i346
  %1856 = sub i64 %1855, 164
  %1857 = load i64, i64* %PC.i344
  %1858 = add i64 %1857, 7
  store i64 %1858, i64* %PC.i344
  %1859 = inttoptr i64 %1856 to i32*
  %1860 = load i32, i32* %1859
  %1861 = sext i32 %1860 to i64
  store i64 %1861, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_4011d9, %struct.Memory** %MEMORY
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 5
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1872 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1871, i64 0, i64 2
  %XMM2.i343 = bitcast %union.VectorReg* %1872 to %union.vec128_t*
  %1873 = load i64, i64* %RAX.i341
  %1874 = load i64, i64* %RCX.i342
  %1875 = mul i64 %1874, 8
  %1876 = add i64 %1875, %1873
  %1877 = bitcast %union.vec128_t* %XMM2.i343 to i8*
  %1878 = load i64, i64* %PC.i340
  %1879 = add i64 %1878, 5
  store i64 %1879, i64* %PC.i340
  %1880 = bitcast i8* %1877 to double*
  %1881 = load double, double* %1880, align 1
  %1882 = inttoptr i64 %1876 to double*
  store double %1881, double* %1882
  store %struct.Memory* %loadMem_4011e0, %struct.Memory** %MEMORY
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 15
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1889, i64 0, i64 1
  %YMM1.i339 = bitcast %union.VectorReg* %1890 to %"class.std::bitset"*
  %1891 = bitcast %"class.std::bitset"* %YMM1.i339 to i8*
  %1892 = load i64, i64* %RBP.i338
  %1893 = sub i64 %1892, 164
  %1894 = load i64, i64* %PC.i337
  %1895 = add i64 %1894, 8
  store i64 %1895, i64* %PC.i337
  %1896 = inttoptr i64 %1893 to i32*
  %1897 = load i32, i32* %1896
  %1898 = sitofp i32 %1897 to double
  %1899 = bitcast i8* %1891 to double*
  store double %1898, double* %1899, align 1
  store %struct.Memory* %loadMem_4011e5, %struct.Memory** %MEMORY
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1903, i64 0, i64 1
  %YMM1.i335 = bitcast %union.VectorReg* %1904 to %"class.std::bitset"*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1905, i64 0, i64 0
  %XMM0.i336 = bitcast %union.VectorReg* %1906 to %union.vec128_t*
  %1907 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1908 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1909 = bitcast %union.vec128_t* %XMM0.i336 to i8*
  %1910 = load i64, i64* %PC.i334
  %1911 = add i64 %1910, 4
  store i64 %1911, i64* %PC.i334
  %1912 = bitcast i8* %1908 to double*
  %1913 = load double, double* %1912, align 1
  %1914 = getelementptr inbounds i8, i8* %1908, i64 8
  %1915 = bitcast i8* %1914 to i64*
  %1916 = load i64, i64* %1915, align 1
  %1917 = bitcast i8* %1909 to double*
  %1918 = load double, double* %1917, align 1
  %1919 = fadd double %1913, %1918
  %1920 = bitcast i8* %1907 to double*
  store double %1919, double* %1920, align 1
  %1921 = getelementptr inbounds i8, i8* %1907, i64 8
  %1922 = bitcast i8* %1921 to i64*
  store i64 %1916, i64* %1922, align 1
  store %struct.Memory* %loadMem_4011ed, %struct.Memory** %MEMORY
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 15
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1929, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %1930 to %"class.std::bitset"*
  %1931 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1932 = load i64, i64* %RBP.i332
  %1933 = sub i64 %1932, 48
  %1934 = load i64, i64* %PC.i331
  %1935 = add i64 %1934, 5
  store i64 %1935, i64* %PC.i331
  %1936 = inttoptr i64 %1933 to i32*
  %1937 = load i32, i32* %1936
  %1938 = sitofp i32 %1937 to double
  %1939 = bitcast i8* %1931 to double*
  store double %1938, double* %1939, align 1
  store %struct.Memory* %loadMem_4011f1, %struct.Memory** %MEMORY
  %loadMem_4011f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 1
  %YMM1.i329 = bitcast %union.VectorReg* %1944 to %"class.std::bitset"*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1945, i64 0, i64 0
  %XMM0.i330 = bitcast %union.VectorReg* %1946 to %union.vec128_t*
  %1947 = bitcast %"class.std::bitset"* %YMM1.i329 to i8*
  %1948 = bitcast %"class.std::bitset"* %YMM1.i329 to i8*
  %1949 = bitcast %union.vec128_t* %XMM0.i330 to i8*
  %1950 = load i64, i64* %PC.i328
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i328
  %1952 = bitcast i8* %1948 to double*
  %1953 = load double, double* %1952, align 1
  %1954 = getelementptr inbounds i8, i8* %1948, i64 8
  %1955 = bitcast i8* %1954 to i64*
  %1956 = load i64, i64* %1955, align 1
  %1957 = bitcast i8* %1949 to double*
  %1958 = load double, double* %1957, align 1
  %1959 = fdiv double %1953, %1958
  %1960 = bitcast i8* %1947 to double*
  store double %1959, double* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1947, i64 8
  %1962 = bitcast i8* %1961 to i64*
  store i64 %1956, i64* %1962, align 1
  store %struct.Memory* %loadMem_4011f6, %struct.Memory** %MEMORY
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 1
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i327
  %1973 = sub i64 %1972, 160
  %1974 = load i64, i64* %PC.i325
  %1975 = add i64 %1974, 7
  store i64 %1975, i64* %PC.i325
  %1976 = inttoptr i64 %1973 to i64*
  %1977 = load i64, i64* %1976
  store i64 %1977, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_4011fa, %struct.Memory** %MEMORY
  %loadMem_401201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 33
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 5
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 15
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %RBP.i324
  %1988 = sub i64 %1987, 164
  %1989 = load i64, i64* %PC.i322
  %1990 = add i64 %1989, 7
  store i64 %1990, i64* %PC.i322
  %1991 = inttoptr i64 %1988 to i32*
  %1992 = load i32, i32* %1991
  %1993 = sext i32 %1992 to i64
  store i64 %1993, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_401201, %struct.Memory** %MEMORY
  %loadMem_401208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 5
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2003, i64 0, i64 1
  %XMM1.i321 = bitcast %union.VectorReg* %2004 to %union.vec128_t*
  %2005 = load i64, i64* %RAX.i319
  %2006 = load i64, i64* %RCX.i320
  %2007 = mul i64 %2006, 8
  %2008 = add i64 %2007, %2005
  %2009 = bitcast %union.vec128_t* %XMM1.i321 to i8*
  %2010 = load i64, i64* %PC.i318
  %2011 = add i64 %2010, 5
  store i64 %2011, i64* %PC.i318
  %2012 = bitcast i8* %2009 to double*
  %2013 = load double, double* %2012, align 1
  %2014 = inttoptr i64 %2008 to double*
  store double %2013, double* %2014
  store %struct.Memory* %loadMem_401208, %struct.Memory** %MEMORY
  %loadMem_40120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RBP.i317
  %2025 = sub i64 %2024, 164
  %2026 = load i64, i64* %PC.i315
  %2027 = add i64 %2026, 6
  store i64 %2027, i64* %PC.i315
  %2028 = inttoptr i64 %2025 to i32*
  %2029 = load i32, i32* %2028
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_40120d, %struct.Memory** %MEMORY
  %loadMem_401213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 1
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %RAX.i314
  %2038 = load i64, i64* %PC.i313
  %2039 = add i64 %2038, 3
  store i64 %2039, i64* %PC.i313
  %2040 = trunc i64 %2037 to i32
  %2041 = add i32 1, %2040
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RAX.i314, align 8
  %2043 = icmp ult i32 %2041, %2040
  %2044 = icmp ult i32 %2041, 1
  %2045 = or i1 %2043, %2044
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2046, i8* %2047, align 1
  %2048 = and i32 %2041, 255
  %2049 = call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2052, i8* %2053, align 1
  %2054 = xor i64 1, %2037
  %2055 = trunc i64 %2054 to i32
  %2056 = xor i32 %2055, %2041
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2059, i8* %2060, align 1
  %2061 = icmp eq i32 %2041, 0
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i32 %2041, 31
  %2065 = trunc i32 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2065, i8* %2066, align 1
  %2067 = lshr i32 %2040, 31
  %2068 = xor i32 %2064, %2067
  %2069 = add i32 %2068, %2064
  %2070 = icmp eq i32 %2069, 2
  %2071 = zext i1 %2070 to i8
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2071, i8* %2072, align 1
  store %struct.Memory* %loadMem_401213, %struct.Memory** %MEMORY
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 1
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %EAX.i311 = bitcast %union.anon* %2078 to i32*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 15
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2081 to i64*
  %2082 = load i64, i64* %RBP.i312
  %2083 = sub i64 %2082, 164
  %2084 = load i32, i32* %EAX.i311
  %2085 = zext i32 %2084 to i64
  %2086 = load i64, i64* %PC.i310
  %2087 = add i64 %2086, 6
  store i64 %2087, i64* %PC.i310
  %2088 = inttoptr i64 %2083 to i32*
  store i32 %2084, i32* %2088
  store %struct.Memory* %loadMem_401216, %struct.Memory** %MEMORY
  %loadMem_40121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %PC.i309
  %2093 = add i64 %2092, -126
  %2094 = load i64, i64* %PC.i309
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %PC.i309
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2093, i64* %2096, align 8
  store %struct.Memory* %loadMem_40121c, %struct.Memory** %MEMORY
  br label %block_.L_40119e

block_.L_401221:                                  ; preds = %block_.L_40119e
  %loadMem_401221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i308
  %2104 = sub i64 %2103, 164
  %2105 = load i64, i64* %PC.i307
  %2106 = add i64 %2105, 10
  store i64 %2106, i64* %PC.i307
  %2107 = inttoptr i64 %2104 to i32*
  store i32 0, i32* %2107
  store %struct.Memory* %loadMem_401221, %struct.Memory** %MEMORY
  br label %block_.L_40122b

block_.L_40122b:                                  ; preds = %block_.L_401480, %block_.L_401221
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 1
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 15
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RBP.i306
  %2118 = sub i64 %2117, 164
  %2119 = load i64, i64* %PC.i304
  %2120 = add i64 %2119, 6
  store i64 %2120, i64* %PC.i304
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_40122b, %struct.Memory** %MEMORY
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 1
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %2129 to i32*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2132 to i64*
  %2133 = load i32, i32* %EAX.i302
  %2134 = zext i32 %2133 to i64
  %2135 = load i64, i64* %RBP.i303
  %2136 = sub i64 %2135, 44
  %2137 = load i64, i64* %PC.i301
  %2138 = add i64 %2137, 3
  store i64 %2138, i64* %PC.i301
  %2139 = inttoptr i64 %2136 to i32*
  %2140 = load i32, i32* %2139
  %2141 = sub i32 %2133, %2140
  %2142 = icmp ult i32 %2133, %2140
  %2143 = zext i1 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2143, i8* %2144, align 1
  %2145 = and i32 %2141, 255
  %2146 = call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2149, i8* %2150, align 1
  %2151 = xor i32 %2140, %2133
  %2152 = xor i32 %2151, %2141
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2155, i8* %2156, align 1
  %2157 = icmp eq i32 %2141, 0
  %2158 = zext i1 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2158, i8* %2159, align 1
  %2160 = lshr i32 %2141, 31
  %2161 = trunc i32 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2161, i8* %2162, align 1
  %2163 = lshr i32 %2133, 31
  %2164 = lshr i32 %2140, 31
  %2165 = xor i32 %2164, %2163
  %2166 = xor i32 %2160, %2163
  %2167 = add i32 %2166, %2165
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2169, i8* %2170, align 1
  store %struct.Memory* %loadMem_401231, %struct.Memory** %MEMORY
  %loadMem_401234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %PC.i300
  %2175 = add i64 %2174, 608
  %2176 = load i64, i64* %PC.i300
  %2177 = add i64 %2176, 6
  %2178 = load i64, i64* %PC.i300
  %2179 = add i64 %2178, 6
  store i64 %2179, i64* %PC.i300
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2181 = load i8, i8* %2180, align 1
  %2182 = icmp eq i8 %2181, 0
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2184 = load i8, i8* %2183, align 1
  %2185 = icmp ne i8 %2184, 0
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2187 = load i8, i8* %2186, align 1
  %2188 = icmp ne i8 %2187, 0
  %2189 = xor i1 %2185, %2188
  %2190 = xor i1 %2189, true
  %2191 = and i1 %2182, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %BRANCH_TAKEN, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2194 = select i1 %2191, i64 %2175, i64 %2177
  store i64 %2194, i64* %2193, align 8
  store %struct.Memory* %loadMem_401234, %struct.Memory** %MEMORY
  %loadBr_401234 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401234 = icmp eq i8 %loadBr_401234, 1
  br i1 %cmpBr_401234, label %block_.L_401494, label %block_40123a

block_40123a:                                     ; preds = %block_.L_40122b
  %loadMem_40123a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 15
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RBP.i299
  %2202 = sub i64 %2201, 168
  %2203 = load i64, i64* %PC.i298
  %2204 = add i64 %2203, 10
  store i64 %2204, i64* %PC.i298
  %2205 = inttoptr i64 %2202 to i32*
  store i32 0, i32* %2205
  store %struct.Memory* %loadMem_40123a, %struct.Memory** %MEMORY
  br label %block_.L_401244

block_.L_401244:                                  ; preds = %block_.L_401467, %block_40123a
  %loadMem_401244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i297
  %2216 = sub i64 %2215, 168
  %2217 = load i64, i64* %PC.i295
  %2218 = add i64 %2217, 6
  store i64 %2218, i64* %PC.i295
  %2219 = inttoptr i64 %2216 to i32*
  %2220 = load i32, i32* %2219
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_401244, %struct.Memory** %MEMORY
  %loadMem_40124a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 1
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %2227 to i32*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 15
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2230 to i64*
  %2231 = load i32, i32* %EAX.i293
  %2232 = zext i32 %2231 to i64
  %2233 = load i64, i64* %RBP.i294
  %2234 = sub i64 %2233, 52
  %2235 = load i64, i64* %PC.i292
  %2236 = add i64 %2235, 3
  store i64 %2236, i64* %PC.i292
  %2237 = inttoptr i64 %2234 to i32*
  %2238 = load i32, i32* %2237
  %2239 = sub i32 %2231, %2238
  %2240 = icmp ult i32 %2231, %2238
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2241, i8* %2242, align 1
  %2243 = and i32 %2239, 255
  %2244 = call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2247, i8* %2248, align 1
  %2249 = xor i32 %2238, %2231
  %2250 = xor i32 %2249, %2239
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2253, i8* %2254, align 1
  %2255 = icmp eq i32 %2239, 0
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2256, i8* %2257, align 1
  %2258 = lshr i32 %2239, 31
  %2259 = trunc i32 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2259, i8* %2260, align 1
  %2261 = lshr i32 %2231, 31
  %2262 = lshr i32 %2238, 31
  %2263 = xor i32 %2262, %2261
  %2264 = xor i32 %2258, %2261
  %2265 = add i32 %2264, %2263
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2267, i8* %2268, align 1
  store %struct.Memory* %loadMem_40124a, %struct.Memory** %MEMORY
  %loadMem_40124d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i291
  %2273 = add i64 %2272, 558
  %2274 = load i64, i64* %PC.i291
  %2275 = add i64 %2274, 6
  %2276 = load i64, i64* %PC.i291
  %2277 = add i64 %2276, 6
  store i64 %2277, i64* %PC.i291
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2279 = load i8, i8* %2278, align 1
  %2280 = icmp eq i8 %2279, 0
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2282 = load i8, i8* %2281, align 1
  %2283 = icmp ne i8 %2282, 0
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2285 = load i8, i8* %2284, align 1
  %2286 = icmp ne i8 %2285, 0
  %2287 = xor i1 %2283, %2286
  %2288 = xor i1 %2287, true
  %2289 = and i1 %2280, %2288
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %BRANCH_TAKEN, align 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2292 = select i1 %2289, i64 %2273, i64 %2275
  store i64 %2292, i64* %2291, align 8
  store %struct.Memory* %loadMem_40124d, %struct.Memory** %MEMORY
  %loadBr_40124d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40124d = icmp eq i8 %loadBr_40124d, 1
  br i1 %cmpBr_40124d, label %block_.L_40147b, label %block_401253

block_401253:                                     ; preds = %block_.L_401244
  %loadMem_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2296, i64 0, i64 0
  %YMM0.i290 = bitcast %union.VectorReg* %2297 to %"class.std::bitset"*
  %2298 = bitcast %"class.std::bitset"* %YMM0.i290 to i8*
  %2299 = load i64, i64* %PC.i289
  %2300 = add i64 %2299, 8709
  %2301 = load i64, i64* %PC.i289
  %2302 = add i64 %2301, 8
  store i64 %2302, i64* %PC.i289
  %2303 = inttoptr i64 %2300 to double*
  %2304 = load double, double* %2303
  %2305 = bitcast i8* %2298 to double*
  store double %2304, double* %2305, align 1
  %2306 = getelementptr inbounds i8, i8* %2298, i64 8
  %2307 = bitcast i8* %2306 to double*
  store double 0.000000e+00, double* %2307, align 1
  store %struct.Memory* %loadMem_401253, %struct.Memory** %MEMORY
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2311, i64 0, i64 1
  %YMM1.i288 = bitcast %union.VectorReg* %2312 to %"class.std::bitset"*
  %2313 = bitcast %"class.std::bitset"* %YMM1.i288 to i8*
  %2314 = load i64, i64* %PC.i287
  %2315 = add i64 %2314, 8709
  %2316 = load i64, i64* %PC.i287
  %2317 = add i64 %2316, 8
  store i64 %2317, i64* %PC.i287
  %2318 = inttoptr i64 %2315 to double*
  %2319 = load double, double* %2318
  %2320 = bitcast i8* %2313 to double*
  store double %2319, double* %2320, align 1
  %2321 = getelementptr inbounds i8, i8* %2313, i64 8
  %2322 = bitcast i8* %2321 to double*
  store double 0.000000e+00, double* %2322, align 1
  store %struct.Memory* %loadMem_40125b, %struct.Memory** %MEMORY
  %loadMem_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2329, i64 0, i64 2
  %YMM2.i286 = bitcast %union.VectorReg* %2330 to %"class.std::bitset"*
  %2331 = bitcast %"class.std::bitset"* %YMM2.i286 to i8*
  %2332 = load i64, i64* %RBP.i285
  %2333 = sub i64 %2332, 164
  %2334 = load i64, i64* %PC.i284
  %2335 = add i64 %2334, 8
  store i64 %2335, i64* %PC.i284
  %2336 = inttoptr i64 %2333 to i32*
  %2337 = load i32, i32* %2336
  %2338 = sitofp i32 %2337 to double
  %2339 = bitcast i8* %2331 to double*
  store double %2338, double* %2339, align 1
  store %struct.Memory* %loadMem_401263, %struct.Memory** %MEMORY
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RBP.i283
  %2350 = sub i64 %2349, 168
  %2351 = load i64, i64* %PC.i281
  %2352 = add i64 %2351, 6
  store i64 %2352, i64* %PC.i281
  %2353 = inttoptr i64 %2350 to i32*
  %2354 = load i32, i32* %2353
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_40126b, %struct.Memory** %MEMORY
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RAX.i280
  %2363 = load i64, i64* %PC.i279
  %2364 = add i64 %2363, 3
  store i64 %2364, i64* %PC.i279
  %2365 = trunc i64 %2362 to i32
  %2366 = add i32 1, %2365
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RAX.i280, align 8
  %2368 = icmp ult i32 %2366, %2365
  %2369 = icmp ult i32 %2366, 1
  %2370 = or i1 %2368, %2369
  %2371 = zext i1 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2371, i8* %2372, align 1
  %2373 = and i32 %2366, 255
  %2374 = call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2377, i8* %2378, align 1
  %2379 = xor i64 1, %2362
  %2380 = trunc i64 %2379 to i32
  %2381 = xor i32 %2380, %2366
  %2382 = lshr i32 %2381, 4
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2384, i8* %2385, align 1
  %2386 = icmp eq i32 %2366, 0
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2387, i8* %2388, align 1
  %2389 = lshr i32 %2366, 31
  %2390 = trunc i32 %2389 to i8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2390, i8* %2391, align 1
  %2392 = lshr i32 %2365, 31
  %2393 = xor i32 %2389, %2392
  %2394 = add i32 %2393, %2389
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2396, i8* %2397, align 1
  store %struct.Memory* %loadMem_401271, %struct.Memory** %MEMORY
  %loadMem_401274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 1
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %2403 to i32*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2404, i64 0, i64 3
  %YMM3.i278 = bitcast %union.VectorReg* %2405 to %"class.std::bitset"*
  %2406 = bitcast %"class.std::bitset"* %YMM3.i278 to i8*
  %2407 = load i32, i32* %EAX.i277
  %2408 = zext i32 %2407 to i64
  %2409 = load i64, i64* %PC.i276
  %2410 = add i64 %2409, 4
  store i64 %2410, i64* %PC.i276
  %2411 = sitofp i32 %2407 to double
  %2412 = bitcast i8* %2406 to double*
  store double %2411, double* %2412, align 1
  store %struct.Memory* %loadMem_401274, %struct.Memory** %MEMORY
  %loadMem_401278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2416, i64 0, i64 2
  %YMM2.i274 = bitcast %union.VectorReg* %2417 to %"class.std::bitset"*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2418, i64 0, i64 3
  %XMM3.i275 = bitcast %union.VectorReg* %2419 to %union.vec128_t*
  %2420 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %2421 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %2422 = bitcast %union.vec128_t* %XMM3.i275 to i8*
  %2423 = load i64, i64* %PC.i273
  %2424 = add i64 %2423, 4
  store i64 %2424, i64* %PC.i273
  %2425 = bitcast i8* %2421 to double*
  %2426 = load double, double* %2425, align 1
  %2427 = getelementptr inbounds i8, i8* %2421, i64 8
  %2428 = bitcast i8* %2427 to i64*
  %2429 = load i64, i64* %2428, align 1
  %2430 = bitcast i8* %2422 to double*
  %2431 = load double, double* %2430, align 1
  %2432 = fmul double %2426, %2431
  %2433 = bitcast i8* %2420 to double*
  store double %2432, double* %2433, align 1
  %2434 = getelementptr inbounds i8, i8* %2420, i64 8
  %2435 = bitcast i8* %2434 to i64*
  store i64 %2429, i64* %2435, align 1
  store %struct.Memory* %loadMem_401278, %struct.Memory** %MEMORY
  %loadMem_40127c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2439, i64 0, i64 2
  %YMM2.i271 = bitcast %union.VectorReg* %2440 to %"class.std::bitset"*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2441, i64 0, i64 1
  %XMM1.i272 = bitcast %union.VectorReg* %2442 to %union.vec128_t*
  %2443 = bitcast %"class.std::bitset"* %YMM2.i271 to i8*
  %2444 = bitcast %"class.std::bitset"* %YMM2.i271 to i8*
  %2445 = bitcast %union.vec128_t* %XMM1.i272 to i8*
  %2446 = load i64, i64* %PC.i270
  %2447 = add i64 %2446, 4
  store i64 %2447, i64* %PC.i270
  %2448 = bitcast i8* %2444 to double*
  %2449 = load double, double* %2448, align 1
  %2450 = getelementptr inbounds i8, i8* %2444, i64 8
  %2451 = bitcast i8* %2450 to i64*
  %2452 = load i64, i64* %2451, align 1
  %2453 = bitcast i8* %2445 to double*
  %2454 = load double, double* %2453, align 1
  %2455 = fadd double %2449, %2454
  %2456 = bitcast i8* %2443 to double*
  store double %2455, double* %2456, align 1
  %2457 = getelementptr inbounds i8, i8* %2443, i64 8
  %2458 = bitcast i8* %2457 to i64*
  store i64 %2452, i64* %2458, align 1
  store %struct.Memory* %loadMem_40127c, %struct.Memory** %MEMORY
  %loadMem_401280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2465, i64 0, i64 1
  %YMM1.i269 = bitcast %union.VectorReg* %2466 to %"class.std::bitset"*
  %2467 = bitcast %"class.std::bitset"* %YMM1.i269 to i8*
  %2468 = load i64, i64* %RBP.i268
  %2469 = sub i64 %2468, 52
  %2470 = load i64, i64* %PC.i267
  %2471 = add i64 %2470, 5
  store i64 %2471, i64* %PC.i267
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = sitofp i32 %2473 to double
  %2475 = bitcast i8* %2467 to double*
  store double %2474, double* %2475, align 1
  store %struct.Memory* %loadMem_401280, %struct.Memory** %MEMORY
  %loadMem_401285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2479, i64 0, i64 2
  %YMM2.i265 = bitcast %union.VectorReg* %2480 to %"class.std::bitset"*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2481, i64 0, i64 1
  %XMM1.i266 = bitcast %union.VectorReg* %2482 to %union.vec128_t*
  %2483 = bitcast %"class.std::bitset"* %YMM2.i265 to i8*
  %2484 = bitcast %"class.std::bitset"* %YMM2.i265 to i8*
  %2485 = bitcast %union.vec128_t* %XMM1.i266 to i8*
  %2486 = load i64, i64* %PC.i264
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i264
  %2488 = bitcast i8* %2484 to double*
  %2489 = load double, double* %2488, align 1
  %2490 = getelementptr inbounds i8, i8* %2484, i64 8
  %2491 = bitcast i8* %2490 to i64*
  %2492 = load i64, i64* %2491, align 1
  %2493 = bitcast i8* %2485 to double*
  %2494 = load double, double* %2493, align 1
  %2495 = fdiv double %2489, %2494
  %2496 = bitcast i8* %2483 to double*
  store double %2495, double* %2496, align 1
  %2497 = getelementptr inbounds i8, i8* %2483, i64 8
  %2498 = bitcast i8* %2497 to i64*
  store i64 %2492, i64* %2498, align 1
  store %struct.Memory* %loadMem_401285, %struct.Memory** %MEMORY
  %loadMem_401289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 5
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i263
  %2509 = sub i64 %2508, 88
  %2510 = load i64, i64* %PC.i261
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i261
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_401289, %struct.Memory** %MEMORY
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 7
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 15
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %RBP.i260
  %2524 = sub i64 %2523, 164
  %2525 = load i64, i64* %PC.i258
  %2526 = add i64 %2525, 7
  store i64 %2526, i64* %PC.i258
  %2527 = inttoptr i64 %2524 to i32*
  %2528 = load i32, i32* %2527
  %2529 = sext i32 %2528 to i64
  store i64 %2529, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_40128d, %struct.Memory** %MEMORY
  %loadMem_401294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 7
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RDX.i257
  %2537 = load i64, i64* %PC.i256
  %2538 = add i64 %2537, 7
  store i64 %2538, i64* %PC.i256
  %2539 = sext i64 %2536 to i128
  %2540 = and i128 %2539, -18446744073709551616
  %2541 = zext i64 %2536 to i128
  %2542 = or i128 %2540, %2541
  %2543 = mul i128 520, %2542
  %2544 = trunc i128 %2543 to i64
  store i64 %2544, i64* %RDX.i257, align 8
  %2545 = sext i64 %2544 to i128
  %2546 = icmp ne i128 %2545, %2543
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2547, i8* %2548, align 1
  %2549 = trunc i128 %2543 to i32
  %2550 = and i32 %2549, 255
  %2551 = call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2554, i8* %2555, align 1
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2556, align 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2557, align 1
  %2558 = lshr i64 %2544, 63
  %2559 = trunc i64 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2559, i8* %2560, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2547, i8* %2561, align 1
  store %struct.Memory* %loadMem_401294, %struct.Memory** %MEMORY
  %loadMem_40129b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 7
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RCX.i254
  %2572 = load i64, i64* %RDX.i255
  %2573 = load i64, i64* %PC.i253
  %2574 = add i64 %2573, 3
  store i64 %2574, i64* %PC.i253
  %2575 = add i64 %2572, %2571
  store i64 %2575, i64* %RCX.i254, align 8
  %2576 = icmp ult i64 %2575, %2571
  %2577 = icmp ult i64 %2575, %2572
  %2578 = or i1 %2576, %2577
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = trunc i64 %2575 to i32
  %2582 = and i32 %2581, 255
  %2583 = call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2586, i8* %2587, align 1
  %2588 = xor i64 %2572, %2571
  %2589 = xor i64 %2588, %2575
  %2590 = lshr i64 %2589, 4
  %2591 = trunc i64 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2592, i8* %2593, align 1
  %2594 = icmp eq i64 %2575, 0
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2595, i8* %2596, align 1
  %2597 = lshr i64 %2575, 63
  %2598 = trunc i64 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2598, i8* %2599, align 1
  %2600 = lshr i64 %2571, 63
  %2601 = lshr i64 %2572, 63
  %2602 = xor i64 %2597, %2600
  %2603 = xor i64 %2597, %2601
  %2604 = add i64 %2602, %2603
  %2605 = icmp eq i64 %2604, 2
  %2606 = zext i1 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2606, i8* %2607, align 1
  store %struct.Memory* %loadMem_40129b, %struct.Memory** %MEMORY
  %loadMem_40129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 7
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 15
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RBP.i252
  %2618 = sub i64 %2617, 168
  %2619 = load i64, i64* %PC.i250
  %2620 = add i64 %2619, 7
  store i64 %2620, i64* %PC.i250
  %2621 = inttoptr i64 %2618 to i32*
  %2622 = load i32, i32* %2621
  %2623 = sext i32 %2622 to i64
  store i64 %2623, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_40129e, %struct.Memory** %MEMORY
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 5
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 7
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2633, i64 0, i64 2
  %XMM2.i249 = bitcast %union.VectorReg* %2634 to %union.vec128_t*
  %2635 = load i64, i64* %RCX.i247
  %2636 = load i64, i64* %RDX.i248
  %2637 = mul i64 %2636, 8
  %2638 = add i64 %2637, %2635
  %2639 = bitcast %union.vec128_t* %XMM2.i249 to i8*
  %2640 = load i64, i64* %PC.i246
  %2641 = add i64 %2640, 5
  store i64 %2641, i64* %PC.i246
  %2642 = bitcast i8* %2639 to double*
  %2643 = load double, double* %2642, align 1
  %2644 = inttoptr i64 %2638 to double*
  store double %2643, double* %2644
  store %struct.Memory* %loadMem_4012a5, %struct.Memory** %MEMORY
  %loadMem_4012aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 15
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 1
  %YMM1.i245 = bitcast %union.VectorReg* %2652 to %"class.std::bitset"*
  %2653 = bitcast %"class.std::bitset"* %YMM1.i245 to i8*
  %2654 = load i64, i64* %RBP.i244
  %2655 = sub i64 %2654, 164
  %2656 = load i64, i64* %PC.i243
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %PC.i243
  %2658 = inttoptr i64 %2655 to i32*
  %2659 = load i32, i32* %2658
  %2660 = sitofp i32 %2659 to double
  %2661 = bitcast i8* %2653 to double*
  store double %2660, double* %2661, align 1
  store %struct.Memory* %loadMem_4012aa, %struct.Memory** %MEMORY
  %loadMem_4012b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 1
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 15
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %RBP.i242
  %2672 = sub i64 %2671, 168
  %2673 = load i64, i64* %PC.i240
  %2674 = add i64 %2673, 6
  store i64 %2674, i64* %PC.i240
  %2675 = inttoptr i64 %2672 to i32*
  %2676 = load i32, i32* %2675
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_4012b2, %struct.Memory** %MEMORY
  %loadMem_4012b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RAX.i239
  %2685 = load i64, i64* %PC.i238
  %2686 = add i64 %2685, 3
  store i64 %2686, i64* %PC.i238
  %2687 = trunc i64 %2684 to i32
  %2688 = add i32 2, %2687
  %2689 = zext i32 %2688 to i64
  store i64 %2689, i64* %RAX.i239, align 8
  %2690 = icmp ult i32 %2688, %2687
  %2691 = icmp ult i32 %2688, 2
  %2692 = or i1 %2690, %2691
  %2693 = zext i1 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2693, i8* %2694, align 1
  %2695 = and i32 %2688, 255
  %2696 = call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2699, i8* %2700, align 1
  %2701 = xor i64 2, %2684
  %2702 = trunc i64 %2701 to i32
  %2703 = xor i32 %2702, %2688
  %2704 = lshr i32 %2703, 4
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2706, i8* %2707, align 1
  %2708 = icmp eq i32 %2688, 0
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2709, i8* %2710, align 1
  %2711 = lshr i32 %2688, 31
  %2712 = trunc i32 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2687, 31
  %2715 = xor i32 %2711, %2714
  %2716 = add i32 %2715, %2711
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2718, i8* %2719, align 1
  store %struct.Memory* %loadMem_4012b8, %struct.Memory** %MEMORY
  %loadMem_4012bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 1
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %2725 to i32*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2726, i64 0, i64 2
  %YMM2.i237 = bitcast %union.VectorReg* %2727 to %"class.std::bitset"*
  %2728 = bitcast %"class.std::bitset"* %YMM2.i237 to i8*
  %2729 = load i32, i32* %EAX.i236
  %2730 = zext i32 %2729 to i64
  %2731 = load i64, i64* %PC.i235
  %2732 = add i64 %2731, 4
  store i64 %2732, i64* %PC.i235
  %2733 = sitofp i32 %2729 to double
  %2734 = bitcast i8* %2728 to double*
  store double %2733, double* %2734, align 1
  store %struct.Memory* %loadMem_4012bb, %struct.Memory** %MEMORY
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2738, i64 0, i64 1
  %YMM1.i233 = bitcast %union.VectorReg* %2739 to %"class.std::bitset"*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2740, i64 0, i64 2
  %XMM2.i234 = bitcast %union.VectorReg* %2741 to %union.vec128_t*
  %2742 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %2743 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %2744 = bitcast %union.vec128_t* %XMM2.i234 to i8*
  %2745 = load i64, i64* %PC.i232
  %2746 = add i64 %2745, 4
  store i64 %2746, i64* %PC.i232
  %2747 = bitcast i8* %2743 to double*
  %2748 = load double, double* %2747, align 1
  %2749 = getelementptr inbounds i8, i8* %2743, i64 8
  %2750 = bitcast i8* %2749 to i64*
  %2751 = load i64, i64* %2750, align 1
  %2752 = bitcast i8* %2744 to double*
  %2753 = load double, double* %2752, align 1
  %2754 = fmul double %2748, %2753
  %2755 = bitcast i8* %2742 to double*
  store double %2754, double* %2755, align 1
  %2756 = getelementptr inbounds i8, i8* %2742, i64 8
  %2757 = bitcast i8* %2756 to i64*
  store i64 %2751, i64* %2757, align 1
  store %struct.Memory* %loadMem_4012bf, %struct.Memory** %MEMORY
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2762 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2761, i64 0, i64 1
  %YMM1.i230 = bitcast %union.VectorReg* %2762 to %"class.std::bitset"*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2763, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %2764 to %union.vec128_t*
  %2765 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %2766 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %2767 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %2768 = load i64, i64* %PC.i229
  %2769 = add i64 %2768, 4
  store i64 %2769, i64* %PC.i229
  %2770 = bitcast i8* %2766 to double*
  %2771 = load double, double* %2770, align 1
  %2772 = getelementptr inbounds i8, i8* %2766, i64 8
  %2773 = bitcast i8* %2772 to i64*
  %2774 = load i64, i64* %2773, align 1
  %2775 = bitcast i8* %2767 to double*
  %2776 = load double, double* %2775, align 1
  %2777 = fadd double %2771, %2776
  %2778 = bitcast i8* %2765 to double*
  store double %2777, double* %2778, align 1
  %2779 = getelementptr inbounds i8, i8* %2765, i64 8
  %2780 = bitcast i8* %2779 to i64*
  store i64 %2774, i64* %2780, align 1
  store %struct.Memory* %loadMem_4012c3, %struct.Memory** %MEMORY
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2787, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %2788 to %"class.std::bitset"*
  %2789 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %2790 = load i64, i64* %RBP.i227
  %2791 = sub i64 %2790, 52
  %2792 = load i64, i64* %PC.i226
  %2793 = add i64 %2792, 5
  store i64 %2793, i64* %PC.i226
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = sitofp i32 %2795 to double
  %2797 = bitcast i8* %2789 to double*
  store double %2796, double* %2797, align 1
  store %struct.Memory* %loadMem_4012c7, %struct.Memory** %MEMORY
  %loadMem_4012cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2801, i64 0, i64 1
  %YMM1.i224 = bitcast %union.VectorReg* %2802 to %"class.std::bitset"*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2804 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2803, i64 0, i64 0
  %XMM0.i225 = bitcast %union.VectorReg* %2804 to %union.vec128_t*
  %2805 = bitcast %"class.std::bitset"* %YMM1.i224 to i8*
  %2806 = bitcast %"class.std::bitset"* %YMM1.i224 to i8*
  %2807 = bitcast %union.vec128_t* %XMM0.i225 to i8*
  %2808 = load i64, i64* %PC.i223
  %2809 = add i64 %2808, 4
  store i64 %2809, i64* %PC.i223
  %2810 = bitcast i8* %2806 to double*
  %2811 = load double, double* %2810, align 1
  %2812 = getelementptr inbounds i8, i8* %2806, i64 8
  %2813 = bitcast i8* %2812 to i64*
  %2814 = load i64, i64* %2813, align 1
  %2815 = bitcast i8* %2807 to double*
  %2816 = load double, double* %2815, align 1
  %2817 = fdiv double %2811, %2816
  %2818 = bitcast i8* %2805 to double*
  store double %2817, double* %2818, align 1
  %2819 = getelementptr inbounds i8, i8* %2805, i64 8
  %2820 = bitcast i8* %2819 to i64*
  store i64 %2814, i64* %2820, align 1
  store %struct.Memory* %loadMem_4012cc, %struct.Memory** %MEMORY
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i222
  %2831 = sub i64 %2830, 80
  %2832 = load i64, i64* %PC.i220
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC.i220
  %2834 = inttoptr i64 %2831 to i64*
  %2835 = load i64, i64* %2834
  store i64 %2835, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_4012d0, %struct.Memory** %MEMORY
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 7
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 15
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RBP.i219
  %2846 = sub i64 %2845, 164
  %2847 = load i64, i64* %PC.i217
  %2848 = add i64 %2847, 7
  store i64 %2848, i64* %PC.i217
  %2849 = inttoptr i64 %2846 to i32*
  %2850 = load i32, i32* %2849
  %2851 = sext i32 %2850 to i64
  store i64 %2851, i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_4012d4, %struct.Memory** %MEMORY
  %loadMem_4012db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 7
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RDX.i216 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %RDX.i216
  %2859 = load i64, i64* %PC.i215
  %2860 = add i64 %2859, 7
  store i64 %2860, i64* %PC.i215
  %2861 = sext i64 %2858 to i128
  %2862 = and i128 %2861, -18446744073709551616
  %2863 = zext i64 %2858 to i128
  %2864 = or i128 %2862, %2863
  %2865 = mul i128 520, %2864
  %2866 = trunc i128 %2865 to i64
  store i64 %2866, i64* %RDX.i216, align 8
  %2867 = sext i64 %2866 to i128
  %2868 = icmp ne i128 %2867, %2865
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2869, i8* %2870, align 1
  %2871 = trunc i128 %2865 to i32
  %2872 = and i32 %2871, 255
  %2873 = call i32 @llvm.ctpop.i32(i32 %2872)
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2876, i8* %2877, align 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2878, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2879, align 1
  %2880 = lshr i64 %2866, 63
  %2881 = trunc i64 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2881, i8* %2882, align 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2869, i8* %2883, align 1
  store %struct.Memory* %loadMem_4012db, %struct.Memory** %MEMORY
  %loadMem_4012e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 5
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 7
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RCX.i213
  %2894 = load i64, i64* %RDX.i214
  %2895 = load i64, i64* %PC.i212
  %2896 = add i64 %2895, 3
  store i64 %2896, i64* %PC.i212
  %2897 = add i64 %2894, %2893
  store i64 %2897, i64* %RCX.i213, align 8
  %2898 = icmp ult i64 %2897, %2893
  %2899 = icmp ult i64 %2897, %2894
  %2900 = or i1 %2898, %2899
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2901, i8* %2902, align 1
  %2903 = trunc i64 %2897 to i32
  %2904 = and i32 %2903, 255
  %2905 = call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2908, i8* %2909, align 1
  %2910 = xor i64 %2894, %2893
  %2911 = xor i64 %2910, %2897
  %2912 = lshr i64 %2911, 4
  %2913 = trunc i64 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2914, i8* %2915, align 1
  %2916 = icmp eq i64 %2897, 0
  %2917 = zext i1 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2917, i8* %2918, align 1
  %2919 = lshr i64 %2897, 63
  %2920 = trunc i64 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2920, i8* %2921, align 1
  %2922 = lshr i64 %2893, 63
  %2923 = lshr i64 %2894, 63
  %2924 = xor i64 %2919, %2922
  %2925 = xor i64 %2919, %2923
  %2926 = add i64 %2924, %2925
  %2927 = icmp eq i64 %2926, 2
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2928, i8* %2929, align 1
  store %struct.Memory* %loadMem_4012e2, %struct.Memory** %MEMORY
  %loadMem_4012e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 7
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 15
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RBP.i211
  %2940 = sub i64 %2939, 168
  %2941 = load i64, i64* %PC.i209
  %2942 = add i64 %2941, 7
  store i64 %2942, i64* %PC.i209
  %2943 = inttoptr i64 %2940 to i32*
  %2944 = load i32, i32* %2943
  %2945 = sext i32 %2944 to i64
  store i64 %2945, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_4012e5, %struct.Memory** %MEMORY
  %loadMem_4012ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 5
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 7
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2955, i64 0, i64 1
  %XMM1.i208 = bitcast %union.VectorReg* %2956 to %union.vec128_t*
  %2957 = load i64, i64* %RCX.i206
  %2958 = load i64, i64* %RDX.i207
  %2959 = mul i64 %2958, 8
  %2960 = add i64 %2959, %2957
  %2961 = bitcast %union.vec128_t* %XMM1.i208 to i8*
  %2962 = load i64, i64* %PC.i205
  %2963 = add i64 %2962, 5
  store i64 %2963, i64* %PC.i205
  %2964 = bitcast i8* %2961 to double*
  %2965 = load double, double* %2964, align 1
  %2966 = inttoptr i64 %2960 to double*
  store double %2965, double* %2966
  store %struct.Memory* %loadMem_4012ec, %struct.Memory** %MEMORY
  %loadMem_4012f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 15
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RBP.i204
  %2974 = sub i64 %2973, 172
  %2975 = load i64, i64* %PC.i203
  %2976 = add i64 %2975, 10
  store i64 %2976, i64* %PC.i203
  %2977 = inttoptr i64 %2974 to i32*
  store i32 0, i32* %2977
  store %struct.Memory* %loadMem_4012f1, %struct.Memory** %MEMORY
  br label %block_.L_4012fb

block_.L_4012fb:                                  ; preds = %block_40130a, %block_401253
  %loadMem_4012fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 1
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 15
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %RBP.i202
  %2988 = sub i64 %2987, 172
  %2989 = load i64, i64* %PC.i200
  %2990 = add i64 %2989, 6
  store i64 %2990, i64* %PC.i200
  %2991 = inttoptr i64 %2988 to i32*
  %2992 = load i32, i32* %2991
  %2993 = zext i32 %2992 to i64
  store i64 %2993, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_4012fb, %struct.Memory** %MEMORY
  %loadMem_401301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 1
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %EAX.i198 = bitcast %union.anon* %2999 to i32*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 15
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3002 to i64*
  %3003 = load i32, i32* %EAX.i198
  %3004 = zext i32 %3003 to i64
  %3005 = load i64, i64* %RBP.i199
  %3006 = sub i64 %3005, 48
  %3007 = load i64, i64* %PC.i197
  %3008 = add i64 %3007, 3
  store i64 %3008, i64* %PC.i197
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = sub i32 %3003, %3010
  %3012 = icmp ult i32 %3003, %3010
  %3013 = zext i1 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3013, i8* %3014, align 1
  %3015 = and i32 %3011, 255
  %3016 = call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3019, i8* %3020, align 1
  %3021 = xor i32 %3010, %3003
  %3022 = xor i32 %3021, %3011
  %3023 = lshr i32 %3022, 4
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3025, i8* %3026, align 1
  %3027 = icmp eq i32 %3011, 0
  %3028 = zext i1 %3027 to i8
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3028, i8* %3029, align 1
  %3030 = lshr i32 %3011, 31
  %3031 = trunc i32 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3031, i8* %3032, align 1
  %3033 = lshr i32 %3003, 31
  %3034 = lshr i32 %3010, 31
  %3035 = xor i32 %3034, %3033
  %3036 = xor i32 %3030, %3033
  %3037 = add i32 %3036, %3035
  %3038 = icmp eq i32 %3037, 2
  %3039 = zext i1 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3039, i8* %3040, align 1
  store %struct.Memory* %loadMem_401301, %struct.Memory** %MEMORY
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %PC.i196
  %3045 = add i64 %3044, 350
  %3046 = load i64, i64* %PC.i196
  %3047 = add i64 %3046, 6
  %3048 = load i64, i64* %PC.i196
  %3049 = add i64 %3048, 6
  store i64 %3049, i64* %PC.i196
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3051 = load i8, i8* %3050, align 1
  %3052 = icmp eq i8 %3051, 0
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3054 = load i8, i8* %3053, align 1
  %3055 = icmp ne i8 %3054, 0
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3057 = load i8, i8* %3056, align 1
  %3058 = icmp ne i8 %3057, 0
  %3059 = xor i1 %3055, %3058
  %3060 = xor i1 %3059, true
  %3061 = and i1 %3052, %3060
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %BRANCH_TAKEN, align 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3064 = select i1 %3061, i64 %3045, i64 %3047
  store i64 %3064, i64* %3063, align 8
  store %struct.Memory* %loadMem_401304, %struct.Memory** %MEMORY
  %loadBr_401304 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401304 = icmp eq i8 %loadBr_401304, 1
  br i1 %cmpBr_401304, label %block_.L_401462, label %block_40130a

block_40130a:                                     ; preds = %block_.L_4012fb
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3068, i64 0, i64 0
  %YMM0.i195 = bitcast %union.VectorReg* %3069 to %"class.std::bitset"*
  %3070 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %3071 = load i64, i64* %PC.i194
  %3072 = add i64 %3071, 8542
  %3073 = load i64, i64* %PC.i194
  %3074 = add i64 %3073, 8
  store i64 %3074, i64* %PC.i194
  %3075 = inttoptr i64 %3072 to double*
  %3076 = load double, double* %3075
  %3077 = bitcast i8* %3070 to double*
  store double %3076, double* %3077, align 1
  %3078 = getelementptr inbounds i8, i8* %3070, i64 8
  %3079 = bitcast i8* %3078 to double*
  store double 0.000000e+00, double* %3079, align 1
  store %struct.Memory* %loadMem_40130a, %struct.Memory** %MEMORY
  %loadMem_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3084 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3083, i64 0, i64 1
  %YMM1.i193 = bitcast %union.VectorReg* %3084 to %"class.std::bitset"*
  %3085 = bitcast %"class.std::bitset"* %YMM1.i193 to i8*
  %3086 = load i64, i64* %PC.i192
  %3087 = add i64 %3086, 8542
  %3088 = load i64, i64* %PC.i192
  %3089 = add i64 %3088, 8
  store i64 %3089, i64* %PC.i192
  %3090 = inttoptr i64 %3087 to double*
  %3091 = load double, double* %3090
  %3092 = bitcast i8* %3085 to double*
  store double %3091, double* %3092, align 1
  %3093 = getelementptr inbounds i8, i8* %3085, i64 8
  %3094 = bitcast i8* %3093 to double*
  store double 0.000000e+00, double* %3094, align 1
  store %struct.Memory* %loadMem_401312, %struct.Memory** %MEMORY
  %loadMem_40131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3098, i64 0, i64 2
  %YMM2.i191 = bitcast %union.VectorReg* %3099 to %"class.std::bitset"*
  %3100 = bitcast %"class.std::bitset"* %YMM2.i191 to i8*
  %3101 = load i64, i64* %PC.i190
  %3102 = add i64 %3101, 8542
  %3103 = load i64, i64* %PC.i190
  %3104 = add i64 %3103, 8
  store i64 %3104, i64* %PC.i190
  %3105 = inttoptr i64 %3102 to double*
  %3106 = load double, double* %3105
  %3107 = bitcast i8* %3100 to double*
  store double %3106, double* %3107, align 1
  %3108 = getelementptr inbounds i8, i8* %3100, i64 8
  %3109 = bitcast i8* %3108 to double*
  store double 0.000000e+00, double* %3109, align 1
  store %struct.Memory* %loadMem_40131a, %struct.Memory** %MEMORY
  %loadMem_401322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3116, i64 0, i64 3
  %YMM3.i189 = bitcast %union.VectorReg* %3117 to %"class.std::bitset"*
  %3118 = bitcast %"class.std::bitset"* %YMM3.i189 to i8*
  %3119 = load i64, i64* %RBP.i188
  %3120 = sub i64 %3119, 164
  %3121 = load i64, i64* %PC.i187
  %3122 = add i64 %3121, 8
  store i64 %3122, i64* %PC.i187
  %3123 = inttoptr i64 %3120 to i32*
  %3124 = load i32, i32* %3123
  %3125 = sitofp i32 %3124 to double
  %3126 = bitcast i8* %3118 to double*
  store double %3125, double* %3126, align 1
  store %struct.Memory* %loadMem_401322, %struct.Memory** %MEMORY
  %loadMem_40132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 1
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 15
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %RBP.i186
  %3137 = sub i64 %3136, 168
  %3138 = load i64, i64* %PC.i184
  %3139 = add i64 %3138, 6
  store i64 %3139, i64* %PC.i184
  %3140 = inttoptr i64 %3137 to i32*
  %3141 = load i32, i32* %3140
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_40132a, %struct.Memory** %MEMORY
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 1
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RAX.i183
  %3150 = load i64, i64* %PC.i182
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i182
  %3152 = trunc i64 %3149 to i32
  %3153 = add i32 3, %3152
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RAX.i183, align 8
  %3155 = icmp ult i32 %3153, %3152
  %3156 = icmp ult i32 %3153, 3
  %3157 = or i1 %3155, %3156
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3158, i8* %3159, align 1
  %3160 = and i32 %3153, 255
  %3161 = call i32 @llvm.ctpop.i32(i32 %3160)
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = xor i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3164, i8* %3165, align 1
  %3166 = xor i64 3, %3149
  %3167 = trunc i64 %3166 to i32
  %3168 = xor i32 %3167, %3153
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3171, i8* %3172, align 1
  %3173 = icmp eq i32 %3153, 0
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3153, 31
  %3177 = trunc i32 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i32 %3152, 31
  %3180 = xor i32 %3176, %3179
  %3181 = add i32 %3180, %3176
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3184, align 1
  store %struct.Memory* %loadMem_401330, %struct.Memory** %MEMORY
  %loadMem_401333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %3190 to i32*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3191, i64 0, i64 4
  %YMM4.i181 = bitcast %union.VectorReg* %3192 to %"class.std::bitset"*
  %3193 = bitcast %"class.std::bitset"* %YMM4.i181 to i8*
  %3194 = load i32, i32* %EAX.i180
  %3195 = zext i32 %3194 to i64
  %3196 = load i64, i64* %PC.i179
  %3197 = add i64 %3196, 4
  store i64 %3197, i64* %PC.i179
  %3198 = sitofp i32 %3194 to double
  %3199 = bitcast i8* %3193 to double*
  store double %3198, double* %3199, align 1
  store %struct.Memory* %loadMem_401333, %struct.Memory** %MEMORY
  %loadMem_401337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3203, i64 0, i64 3
  %YMM3.i177 = bitcast %union.VectorReg* %3204 to %"class.std::bitset"*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3205, i64 0, i64 4
  %XMM4.i178 = bitcast %union.VectorReg* %3206 to %union.vec128_t*
  %3207 = bitcast %"class.std::bitset"* %YMM3.i177 to i8*
  %3208 = bitcast %"class.std::bitset"* %YMM3.i177 to i8*
  %3209 = bitcast %union.vec128_t* %XMM4.i178 to i8*
  %3210 = load i64, i64* %PC.i176
  %3211 = add i64 %3210, 4
  store i64 %3211, i64* %PC.i176
  %3212 = bitcast i8* %3208 to double*
  %3213 = load double, double* %3212, align 1
  %3214 = getelementptr inbounds i8, i8* %3208, i64 8
  %3215 = bitcast i8* %3214 to i64*
  %3216 = load i64, i64* %3215, align 1
  %3217 = bitcast i8* %3209 to double*
  %3218 = load double, double* %3217, align 1
  %3219 = fmul double %3213, %3218
  %3220 = bitcast i8* %3207 to double*
  store double %3219, double* %3220, align 1
  %3221 = getelementptr inbounds i8, i8* %3207, i64 8
  %3222 = bitcast i8* %3221 to i64*
  store i64 %3216, i64* %3222, align 1
  store %struct.Memory* %loadMem_401337, %struct.Memory** %MEMORY
  %loadMem_40133b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 15
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3229, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %3230 to %"class.std::bitset"*
  %3231 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %3232 = load i64, i64* %RBP.i175
  %3233 = sub i64 %3232, 172
  %3234 = load i64, i64* %PC.i174
  %3235 = add i64 %3234, 8
  store i64 %3235, i64* %PC.i174
  %3236 = inttoptr i64 %3233 to i32*
  %3237 = load i32, i32* %3236
  %3238 = sitofp i32 %3237 to double
  %3239 = bitcast i8* %3231 to double*
  store double %3238, double* %3239, align 1
  store %struct.Memory* %loadMem_40133b, %struct.Memory** %MEMORY
  %loadMem_401343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3243, i64 0, i64 3
  %YMM3.i173 = bitcast %union.VectorReg* %3244 to %"class.std::bitset"*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3245, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %3246 to %union.vec128_t*
  %3247 = bitcast %"class.std::bitset"* %YMM3.i173 to i8*
  %3248 = bitcast %"class.std::bitset"* %YMM3.i173 to i8*
  %3249 = bitcast %union.vec128_t* %XMM4.i to i8*
  %3250 = load i64, i64* %PC.i172
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %PC.i172
  %3252 = bitcast i8* %3248 to double*
  %3253 = load double, double* %3252, align 1
  %3254 = getelementptr inbounds i8, i8* %3248, i64 8
  %3255 = bitcast i8* %3254 to i64*
  %3256 = load i64, i64* %3255, align 1
  %3257 = bitcast i8* %3249 to double*
  %3258 = load double, double* %3257, align 1
  %3259 = fadd double %3253, %3258
  %3260 = bitcast i8* %3247 to double*
  store double %3259, double* %3260, align 1
  %3261 = getelementptr inbounds i8, i8* %3247, i64 8
  %3262 = bitcast i8* %3261 to i64*
  store i64 %3256, i64* %3262, align 1
  store %struct.Memory* %loadMem_401343, %struct.Memory** %MEMORY
  %loadMem_401347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3266, i64 0, i64 3
  %YMM3.i170 = bitcast %union.VectorReg* %3267 to %"class.std::bitset"*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3268, i64 0, i64 2
  %XMM2.i171 = bitcast %union.VectorReg* %3269 to %union.vec128_t*
  %3270 = bitcast %"class.std::bitset"* %YMM3.i170 to i8*
  %3271 = bitcast %"class.std::bitset"* %YMM3.i170 to i8*
  %3272 = bitcast %union.vec128_t* %XMM2.i171 to i8*
  %3273 = load i64, i64* %PC.i169
  %3274 = add i64 %3273, 4
  store i64 %3274, i64* %PC.i169
  %3275 = bitcast i8* %3271 to double*
  %3276 = load double, double* %3275, align 1
  %3277 = getelementptr inbounds i8, i8* %3271, i64 8
  %3278 = bitcast i8* %3277 to i64*
  %3279 = load i64, i64* %3278, align 1
  %3280 = bitcast i8* %3272 to double*
  %3281 = load double, double* %3280, align 1
  %3282 = fadd double %3276, %3281
  %3283 = bitcast i8* %3270 to double*
  store double %3282, double* %3283, align 1
  %3284 = getelementptr inbounds i8, i8* %3270, i64 8
  %3285 = bitcast i8* %3284 to i64*
  store i64 %3279, i64* %3285, align 1
  store %struct.Memory* %loadMem_401347, %struct.Memory** %MEMORY
  %loadMem_40134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 15
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3292, i64 0, i64 2
  %YMM2.i168 = bitcast %union.VectorReg* %3293 to %"class.std::bitset"*
  %3294 = bitcast %"class.std::bitset"* %YMM2.i168 to i8*
  %3295 = load i64, i64* %RBP.i167
  %3296 = sub i64 %3295, 48
  %3297 = load i64, i64* %PC.i166
  %3298 = add i64 %3297, 5
  store i64 %3298, i64* %PC.i166
  %3299 = inttoptr i64 %3296 to i32*
  %3300 = load i32, i32* %3299
  %3301 = sitofp i32 %3300 to double
  %3302 = bitcast i8* %3294 to double*
  store double %3301, double* %3302, align 1
  store %struct.Memory* %loadMem_40134b, %struct.Memory** %MEMORY
  %loadMem_401350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3306, i64 0, i64 3
  %YMM3.i164 = bitcast %union.VectorReg* %3307 to %"class.std::bitset"*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3308, i64 0, i64 2
  %XMM2.i165 = bitcast %union.VectorReg* %3309 to %union.vec128_t*
  %3310 = bitcast %"class.std::bitset"* %YMM3.i164 to i8*
  %3311 = bitcast %"class.std::bitset"* %YMM3.i164 to i8*
  %3312 = bitcast %union.vec128_t* %XMM2.i165 to i8*
  %3313 = load i64, i64* %PC.i163
  %3314 = add i64 %3313, 4
  store i64 %3314, i64* %PC.i163
  %3315 = bitcast i8* %3311 to double*
  %3316 = load double, double* %3315, align 1
  %3317 = getelementptr inbounds i8, i8* %3311, i64 8
  %3318 = bitcast i8* %3317 to i64*
  %3319 = load i64, i64* %3318, align 1
  %3320 = bitcast i8* %3312 to double*
  %3321 = load double, double* %3320, align 1
  %3322 = fdiv double %3316, %3321
  %3323 = bitcast i8* %3310 to double*
  store double %3322, double* %3323, align 1
  %3324 = getelementptr inbounds i8, i8* %3310, i64 8
  %3325 = bitcast i8* %3324 to i64*
  store i64 %3319, i64* %3325, align 1
  store %struct.Memory* %loadMem_401350, %struct.Memory** %MEMORY
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 5
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RBP.i162
  %3336 = sub i64 %3335, 96
  %3337 = load i64, i64* %PC.i160
  %3338 = add i64 %3337, 4
  store i64 %3338, i64* %PC.i160
  %3339 = inttoptr i64 %3336 to i64*
  %3340 = load i64, i64* %3339
  store i64 %3340, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_401354, %struct.Memory** %MEMORY
  %loadMem_401358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 7
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i159
  %3351 = sub i64 %3350, 164
  %3352 = load i64, i64* %PC.i157
  %3353 = add i64 %3352, 7
  store i64 %3353, i64* %PC.i157
  %3354 = inttoptr i64 %3351 to i32*
  %3355 = load i32, i32* %3354
  %3356 = sext i32 %3355 to i64
  store i64 %3356, i64* %RDX.i158, align 8
  store %struct.Memory* %loadMem_401358, %struct.Memory** %MEMORY
  %loadMem_40135f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 7
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %3362 to i64*
  %3363 = load i64, i64* %RDX.i156
  %3364 = load i64, i64* %PC.i155
  %3365 = add i64 %3364, 7
  store i64 %3365, i64* %PC.i155
  %3366 = sext i64 %3363 to i128
  %3367 = and i128 %3366, -18446744073709551616
  %3368 = zext i64 %3363 to i128
  %3369 = or i128 %3367, %3368
  %3370 = mul i128 33800, %3369
  %3371 = trunc i128 %3370 to i64
  store i64 %3371, i64* %RDX.i156, align 8
  %3372 = sext i64 %3371 to i128
  %3373 = icmp ne i128 %3372, %3370
  %3374 = zext i1 %3373 to i8
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3374, i8* %3375, align 1
  %3376 = trunc i128 %3370 to i32
  %3377 = and i32 %3376, 255
  %3378 = call i32 @llvm.ctpop.i32(i32 %3377)
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = xor i8 %3380, 1
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3381, i8* %3382, align 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3383, align 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3384, align 1
  %3385 = lshr i64 %3371, 63
  %3386 = trunc i64 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3386, i8* %3387, align 1
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3374, i8* %3388, align 1
  store %struct.Memory* %loadMem_40135f, %struct.Memory** %MEMORY
  %loadMem_401366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 7
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RCX.i153
  %3399 = load i64, i64* %RDX.i154
  %3400 = load i64, i64* %PC.i152
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %PC.i152
  %3402 = add i64 %3399, %3398
  store i64 %3402, i64* %RCX.i153, align 8
  %3403 = icmp ult i64 %3402, %3398
  %3404 = icmp ult i64 %3402, %3399
  %3405 = or i1 %3403, %3404
  %3406 = zext i1 %3405 to i8
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3406, i8* %3407, align 1
  %3408 = trunc i64 %3402 to i32
  %3409 = and i32 %3408, 255
  %3410 = call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3413, i8* %3414, align 1
  %3415 = xor i64 %3399, %3398
  %3416 = xor i64 %3415, %3402
  %3417 = lshr i64 %3416, 4
  %3418 = trunc i64 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3419, i8* %3420, align 1
  %3421 = icmp eq i64 %3402, 0
  %3422 = zext i1 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3422, i8* %3423, align 1
  %3424 = lshr i64 %3402, 63
  %3425 = trunc i64 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3425, i8* %3426, align 1
  %3427 = lshr i64 %3398, 63
  %3428 = lshr i64 %3399, 63
  %3429 = xor i64 %3424, %3427
  %3430 = xor i64 %3424, %3428
  %3431 = add i64 %3429, %3430
  %3432 = icmp eq i64 %3431, 2
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3433, i8* %3434, align 1
  store %struct.Memory* %loadMem_401366, %struct.Memory** %MEMORY
  %loadMem_401369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 7
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RBP.i151
  %3445 = sub i64 %3444, 168
  %3446 = load i64, i64* %PC.i149
  %3447 = add i64 %3446, 7
  store i64 %3447, i64* %PC.i149
  %3448 = inttoptr i64 %3445 to i32*
  %3449 = load i32, i32* %3448
  %3450 = sext i32 %3449 to i64
  store i64 %3450, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_401369, %struct.Memory** %MEMORY
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 7
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RDX.i148
  %3458 = load i64, i64* %PC.i147
  %3459 = add i64 %3458, 7
  store i64 %3459, i64* %PC.i147
  %3460 = sext i64 %3457 to i128
  %3461 = and i128 %3460, -18446744073709551616
  %3462 = zext i64 %3457 to i128
  %3463 = or i128 %3461, %3462
  %3464 = mul i128 520, %3463
  %3465 = trunc i128 %3464 to i64
  store i64 %3465, i64* %RDX.i148, align 8
  %3466 = sext i64 %3465 to i128
  %3467 = icmp ne i128 %3466, %3464
  %3468 = zext i1 %3467 to i8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3468, i8* %3469, align 1
  %3470 = trunc i128 %3464 to i32
  %3471 = and i32 %3470, 255
  %3472 = call i32 @llvm.ctpop.i32(i32 %3471)
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = xor i8 %3474, 1
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3475, i8* %3476, align 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3477, align 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3478, align 1
  %3479 = lshr i64 %3465, 63
  %3480 = trunc i64 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3480, i8* %3481, align 1
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3468, i8* %3482, align 1
  store %struct.Memory* %loadMem_401370, %struct.Memory** %MEMORY
  %loadMem_401377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 5
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 7
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RCX.i145
  %3493 = load i64, i64* %RDX.i146
  %3494 = load i64, i64* %PC.i144
  %3495 = add i64 %3494, 3
  store i64 %3495, i64* %PC.i144
  %3496 = add i64 %3493, %3492
  store i64 %3496, i64* %RCX.i145, align 8
  %3497 = icmp ult i64 %3496, %3492
  %3498 = icmp ult i64 %3496, %3493
  %3499 = or i1 %3497, %3498
  %3500 = zext i1 %3499 to i8
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3500, i8* %3501, align 1
  %3502 = trunc i64 %3496 to i32
  %3503 = and i32 %3502, 255
  %3504 = call i32 @llvm.ctpop.i32(i32 %3503)
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = xor i8 %3506, 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3507, i8* %3508, align 1
  %3509 = xor i64 %3493, %3492
  %3510 = xor i64 %3509, %3496
  %3511 = lshr i64 %3510, 4
  %3512 = trunc i64 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3513, i8* %3514, align 1
  %3515 = icmp eq i64 %3496, 0
  %3516 = zext i1 %3515 to i8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3516, i8* %3517, align 1
  %3518 = lshr i64 %3496, 63
  %3519 = trunc i64 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i64 %3492, 63
  %3522 = lshr i64 %3493, 63
  %3523 = xor i64 %3518, %3521
  %3524 = xor i64 %3518, %3522
  %3525 = add i64 %3523, %3524
  %3526 = icmp eq i64 %3525, 2
  %3527 = zext i1 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3527, i8* %3528, align 1
  store %struct.Memory* %loadMem_401377, %struct.Memory** %MEMORY
  %loadMem_40137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 7
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 15
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %3537 to i64*
  %3538 = load i64, i64* %RBP.i143
  %3539 = sub i64 %3538, 172
  %3540 = load i64, i64* %PC.i141
  %3541 = add i64 %3540, 7
  store i64 %3541, i64* %PC.i141
  %3542 = inttoptr i64 %3539 to i32*
  %3543 = load i32, i32* %3542
  %3544 = sext i32 %3543 to i64
  store i64 %3544, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_40137a, %struct.Memory** %MEMORY
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 33
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3547 to i64*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 5
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 7
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3554, i64 0, i64 3
  %XMM3.i140 = bitcast %union.VectorReg* %3555 to %union.vec128_t*
  %3556 = load i64, i64* %RCX.i138
  %3557 = load i64, i64* %RDX.i139
  %3558 = mul i64 %3557, 8
  %3559 = add i64 %3558, %3556
  %3560 = bitcast %union.vec128_t* %XMM3.i140 to i8*
  %3561 = load i64, i64* %PC.i137
  %3562 = add i64 %3561, 5
  store i64 %3562, i64* %PC.i137
  %3563 = bitcast i8* %3560 to double*
  %3564 = load double, double* %3563, align 1
  %3565 = inttoptr i64 %3559 to double*
  store double %3564, double* %3565
  store %struct.Memory* %loadMem_401381, %struct.Memory** %MEMORY
  %loadMem_401386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 15
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3572, i64 0, i64 2
  %YMM2.i136 = bitcast %union.VectorReg* %3573 to %"class.std::bitset"*
  %3574 = bitcast %"class.std::bitset"* %YMM2.i136 to i8*
  %3575 = load i64, i64* %RBP.i135
  %3576 = sub i64 %3575, 164
  %3577 = load i64, i64* %PC.i134
  %3578 = add i64 %3577, 8
  store i64 %3578, i64* %PC.i134
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579
  %3581 = sitofp i32 %3580 to double
  %3582 = bitcast i8* %3574 to double*
  store double %3581, double* %3582, align 1
  store %struct.Memory* %loadMem_401386, %struct.Memory** %MEMORY
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 15
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RBP.i133
  %3593 = sub i64 %3592, 168
  %3594 = load i64, i64* %PC.i131
  %3595 = add i64 %3594, 6
  store i64 %3595, i64* %PC.i131
  %3596 = inttoptr i64 %3593 to i32*
  %3597 = load i32, i32* %3596
  %3598 = zext i32 %3597 to i64
  store i64 %3598, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_40138e, %struct.Memory** %MEMORY
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 1
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RAX.i130
  %3606 = load i64, i64* %PC.i129
  %3607 = add i64 %3606, 3
  store i64 %3607, i64* %PC.i129
  %3608 = trunc i64 %3605 to i32
  %3609 = add i32 4, %3608
  %3610 = zext i32 %3609 to i64
  store i64 %3610, i64* %RAX.i130, align 8
  %3611 = icmp ult i32 %3609, %3608
  %3612 = icmp ult i32 %3609, 4
  %3613 = or i1 %3611, %3612
  %3614 = zext i1 %3613 to i8
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3614, i8* %3615, align 1
  %3616 = and i32 %3609, 255
  %3617 = call i32 @llvm.ctpop.i32(i32 %3616)
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  %3620 = xor i8 %3619, 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3620, i8* %3621, align 1
  %3622 = xor i64 4, %3605
  %3623 = trunc i64 %3622 to i32
  %3624 = xor i32 %3623, %3609
  %3625 = lshr i32 %3624, 4
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3627, i8* %3628, align 1
  %3629 = icmp eq i32 %3609, 0
  %3630 = zext i1 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3630, i8* %3631, align 1
  %3632 = lshr i32 %3609, 31
  %3633 = trunc i32 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3633, i8* %3634, align 1
  %3635 = lshr i32 %3608, 31
  %3636 = xor i32 %3632, %3635
  %3637 = add i32 %3636, %3632
  %3638 = icmp eq i32 %3637, 2
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3639, i8* %3640, align 1
  store %struct.Memory* %loadMem_401394, %struct.Memory** %MEMORY
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 1
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %3646 to i32*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3647, i64 0, i64 3
  %YMM3.i128 = bitcast %union.VectorReg* %3648 to %"class.std::bitset"*
  %3649 = bitcast %"class.std::bitset"* %YMM3.i128 to i8*
  %3650 = load i32, i32* %EAX.i127
  %3651 = zext i32 %3650 to i64
  %3652 = load i64, i64* %PC.i126
  %3653 = add i64 %3652, 4
  store i64 %3653, i64* %PC.i126
  %3654 = sitofp i32 %3650 to double
  %3655 = bitcast i8* %3649 to double*
  store double %3654, double* %3655, align 1
  store %struct.Memory* %loadMem_401397, %struct.Memory** %MEMORY
  %loadMem_40139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 33
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3659, i64 0, i64 2
  %YMM2.i124 = bitcast %union.VectorReg* %3660 to %"class.std::bitset"*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3661, i64 0, i64 3
  %XMM3.i125 = bitcast %union.VectorReg* %3662 to %union.vec128_t*
  %3663 = bitcast %"class.std::bitset"* %YMM2.i124 to i8*
  %3664 = bitcast %"class.std::bitset"* %YMM2.i124 to i8*
  %3665 = bitcast %union.vec128_t* %XMM3.i125 to i8*
  %3666 = load i64, i64* %PC.i123
  %3667 = add i64 %3666, 4
  store i64 %3667, i64* %PC.i123
  %3668 = bitcast i8* %3664 to double*
  %3669 = load double, double* %3668, align 1
  %3670 = getelementptr inbounds i8, i8* %3664, i64 8
  %3671 = bitcast i8* %3670 to i64*
  %3672 = load i64, i64* %3671, align 1
  %3673 = bitcast i8* %3665 to double*
  %3674 = load double, double* %3673, align 1
  %3675 = fmul double %3669, %3674
  %3676 = bitcast i8* %3663 to double*
  store double %3675, double* %3676, align 1
  %3677 = getelementptr inbounds i8, i8* %3663, i64 8
  %3678 = bitcast i8* %3677 to i64*
  store i64 %3672, i64* %3678, align 1
  store %struct.Memory* %loadMem_40139b, %struct.Memory** %MEMORY
  %loadMem_40139f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 15
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3685, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %3686 to %"class.std::bitset"*
  %3687 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3688 = load i64, i64* %RBP.i122
  %3689 = sub i64 %3688, 172
  %3690 = load i64, i64* %PC.i121
  %3691 = add i64 %3690, 8
  store i64 %3691, i64* %PC.i121
  %3692 = inttoptr i64 %3689 to i32*
  %3693 = load i32, i32* %3692
  %3694 = sitofp i32 %3693 to double
  %3695 = bitcast i8* %3687 to double*
  store double %3694, double* %3695, align 1
  store %struct.Memory* %loadMem_40139f, %struct.Memory** %MEMORY
  %loadMem_4013a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3699, i64 0, i64 2
  %YMM2.i120 = bitcast %union.VectorReg* %3700 to %"class.std::bitset"*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3701, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %3702 to %union.vec128_t*
  %3703 = bitcast %"class.std::bitset"* %YMM2.i120 to i8*
  %3704 = bitcast %"class.std::bitset"* %YMM2.i120 to i8*
  %3705 = bitcast %union.vec128_t* %XMM3.i to i8*
  %3706 = load i64, i64* %PC.i119
  %3707 = add i64 %3706, 4
  store i64 %3707, i64* %PC.i119
  %3708 = bitcast i8* %3704 to double*
  %3709 = load double, double* %3708, align 1
  %3710 = getelementptr inbounds i8, i8* %3704, i64 8
  %3711 = bitcast i8* %3710 to i64*
  %3712 = load i64, i64* %3711, align 1
  %3713 = bitcast i8* %3705 to double*
  %3714 = load double, double* %3713, align 1
  %3715 = fadd double %3709, %3714
  %3716 = bitcast i8* %3703 to double*
  store double %3715, double* %3716, align 1
  %3717 = getelementptr inbounds i8, i8* %3703, i64 8
  %3718 = bitcast i8* %3717 to i64*
  store i64 %3712, i64* %3718, align 1
  store %struct.Memory* %loadMem_4013a7, %struct.Memory** %MEMORY
  %loadMem_4013ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3722, i64 0, i64 2
  %YMM2.i117 = bitcast %union.VectorReg* %3723 to %"class.std::bitset"*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3724, i64 0, i64 1
  %XMM1.i118 = bitcast %union.VectorReg* %3725 to %union.vec128_t*
  %3726 = bitcast %"class.std::bitset"* %YMM2.i117 to i8*
  %3727 = bitcast %"class.std::bitset"* %YMM2.i117 to i8*
  %3728 = bitcast %union.vec128_t* %XMM1.i118 to i8*
  %3729 = load i64, i64* %PC.i116
  %3730 = add i64 %3729, 4
  store i64 %3730, i64* %PC.i116
  %3731 = bitcast i8* %3727 to double*
  %3732 = load double, double* %3731, align 1
  %3733 = getelementptr inbounds i8, i8* %3727, i64 8
  %3734 = bitcast i8* %3733 to i64*
  %3735 = load i64, i64* %3734, align 1
  %3736 = bitcast i8* %3728 to double*
  %3737 = load double, double* %3736, align 1
  %3738 = fadd double %3732, %3737
  %3739 = bitcast i8* %3726 to double*
  store double %3738, double* %3739, align 1
  %3740 = getelementptr inbounds i8, i8* %3726, i64 8
  %3741 = bitcast i8* %3740 to i64*
  store i64 %3735, i64* %3741, align 1
  store %struct.Memory* %loadMem_4013ab, %struct.Memory** %MEMORY
  %loadMem_4013af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 15
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3748, i64 0, i64 1
  %YMM1.i115 = bitcast %union.VectorReg* %3749 to %"class.std::bitset"*
  %3750 = bitcast %"class.std::bitset"* %YMM1.i115 to i8*
  %3751 = load i64, i64* %RBP.i114
  %3752 = sub i64 %3751, 52
  %3753 = load i64, i64* %PC.i113
  %3754 = add i64 %3753, 5
  store i64 %3754, i64* %PC.i113
  %3755 = inttoptr i64 %3752 to i32*
  %3756 = load i32, i32* %3755
  %3757 = sitofp i32 %3756 to double
  %3758 = bitcast i8* %3750 to double*
  store double %3757, double* %3758, align 1
  store %struct.Memory* %loadMem_4013af, %struct.Memory** %MEMORY
  %loadMem_4013b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3762, i64 0, i64 2
  %YMM2.i111 = bitcast %union.VectorReg* %3763 to %"class.std::bitset"*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3764, i64 0, i64 1
  %XMM1.i112 = bitcast %union.VectorReg* %3765 to %union.vec128_t*
  %3766 = bitcast %"class.std::bitset"* %YMM2.i111 to i8*
  %3767 = bitcast %"class.std::bitset"* %YMM2.i111 to i8*
  %3768 = bitcast %union.vec128_t* %XMM1.i112 to i8*
  %3769 = load i64, i64* %PC.i110
  %3770 = add i64 %3769, 4
  store i64 %3770, i64* %PC.i110
  %3771 = bitcast i8* %3767 to double*
  %3772 = load double, double* %3771, align 1
  %3773 = getelementptr inbounds i8, i8* %3767, i64 8
  %3774 = bitcast i8* %3773 to i64*
  %3775 = load i64, i64* %3774, align 1
  %3776 = bitcast i8* %3768 to double*
  %3777 = load double, double* %3776, align 1
  %3778 = fdiv double %3772, %3777
  %3779 = bitcast i8* %3766 to double*
  store double %3778, double* %3779, align 1
  %3780 = getelementptr inbounds i8, i8* %3766, i64 8
  %3781 = bitcast i8* %3780 to i64*
  store i64 %3775, i64* %3781, align 1
  store %struct.Memory* %loadMem_4013b4, %struct.Memory** %MEMORY
  %loadMem_4013b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 5
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 15
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RBP.i109
  %3792 = sub i64 %3791, 104
  %3793 = load i64, i64* %PC.i107
  %3794 = add i64 %3793, 4
  store i64 %3794, i64* %PC.i107
  %3795 = inttoptr i64 %3792 to i64*
  %3796 = load i64, i64* %3795
  store i64 %3796, i64* %RCX.i108, align 8
  store %struct.Memory* %loadMem_4013b8, %struct.Memory** %MEMORY
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 7
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 15
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RBP.i106
  %3807 = sub i64 %3806, 164
  %3808 = load i64, i64* %PC.i104
  %3809 = add i64 %3808, 7
  store i64 %3809, i64* %PC.i104
  %3810 = inttoptr i64 %3807 to i32*
  %3811 = load i32, i32* %3810
  %3812 = sext i32 %3811 to i64
  store i64 %3812, i64* %RDX.i105, align 8
  store %struct.Memory* %loadMem_4013bc, %struct.Memory** %MEMORY
  %loadMem_4013c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 7
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RDX.i103
  %3820 = load i64, i64* %PC.i102
  %3821 = add i64 %3820, 7
  store i64 %3821, i64* %PC.i102
  %3822 = sext i64 %3819 to i128
  %3823 = and i128 %3822, -18446744073709551616
  %3824 = zext i64 %3819 to i128
  %3825 = or i128 %3823, %3824
  %3826 = mul i128 33800, %3825
  %3827 = trunc i128 %3826 to i64
  store i64 %3827, i64* %RDX.i103, align 8
  %3828 = sext i64 %3827 to i128
  %3829 = icmp ne i128 %3828, %3826
  %3830 = zext i1 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3830, i8* %3831, align 1
  %3832 = trunc i128 %3826 to i32
  %3833 = and i32 %3832, 255
  %3834 = call i32 @llvm.ctpop.i32(i32 %3833)
  %3835 = trunc i32 %3834 to i8
  %3836 = and i8 %3835, 1
  %3837 = xor i8 %3836, 1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3837, i8* %3838, align 1
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3839, align 1
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3840, align 1
  %3841 = lshr i64 %3827, 63
  %3842 = trunc i64 %3841 to i8
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3842, i8* %3843, align 1
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3830, i8* %3844, align 1
  store %struct.Memory* %loadMem_4013c3, %struct.Memory** %MEMORY
  %loadMem_4013ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 5
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 7
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RCX.i100
  %3855 = load i64, i64* %RDX.i101
  %3856 = load i64, i64* %PC.i99
  %3857 = add i64 %3856, 3
  store i64 %3857, i64* %PC.i99
  %3858 = add i64 %3855, %3854
  store i64 %3858, i64* %RCX.i100, align 8
  %3859 = icmp ult i64 %3858, %3854
  %3860 = icmp ult i64 %3858, %3855
  %3861 = or i1 %3859, %3860
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3862, i8* %3863, align 1
  %3864 = trunc i64 %3858 to i32
  %3865 = and i32 %3864, 255
  %3866 = call i32 @llvm.ctpop.i32(i32 %3865)
  %3867 = trunc i32 %3866 to i8
  %3868 = and i8 %3867, 1
  %3869 = xor i8 %3868, 1
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3869, i8* %3870, align 1
  %3871 = xor i64 %3855, %3854
  %3872 = xor i64 %3871, %3858
  %3873 = lshr i64 %3872, 4
  %3874 = trunc i64 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3875, i8* %3876, align 1
  %3877 = icmp eq i64 %3858, 0
  %3878 = zext i1 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3878, i8* %3879, align 1
  %3880 = lshr i64 %3858, 63
  %3881 = trunc i64 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3881, i8* %3882, align 1
  %3883 = lshr i64 %3854, 63
  %3884 = lshr i64 %3855, 63
  %3885 = xor i64 %3880, %3883
  %3886 = xor i64 %3880, %3884
  %3887 = add i64 %3885, %3886
  %3888 = icmp eq i64 %3887, 2
  %3889 = zext i1 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3889, i8* %3890, align 1
  store %struct.Memory* %loadMem_4013ca, %struct.Memory** %MEMORY
  %loadMem_4013cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 7
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 15
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %RBP.i98
  %3901 = sub i64 %3900, 168
  %3902 = load i64, i64* %PC.i96
  %3903 = add i64 %3902, 7
  store i64 %3903, i64* %PC.i96
  %3904 = inttoptr i64 %3901 to i32*
  %3905 = load i32, i32* %3904
  %3906 = sext i32 %3905 to i64
  store i64 %3906, i64* %RDX.i97, align 8
  store %struct.Memory* %loadMem_4013cd, %struct.Memory** %MEMORY
  %loadMem_4013d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 7
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RDX.i95
  %3914 = load i64, i64* %PC.i94
  %3915 = add i64 %3914, 7
  store i64 %3915, i64* %PC.i94
  %3916 = sext i64 %3913 to i128
  %3917 = and i128 %3916, -18446744073709551616
  %3918 = zext i64 %3913 to i128
  %3919 = or i128 %3917, %3918
  %3920 = mul i128 520, %3919
  %3921 = trunc i128 %3920 to i64
  store i64 %3921, i64* %RDX.i95, align 8
  %3922 = sext i64 %3921 to i128
  %3923 = icmp ne i128 %3922, %3920
  %3924 = zext i1 %3923 to i8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3924, i8* %3925, align 1
  %3926 = trunc i128 %3920 to i32
  %3927 = and i32 %3926, 255
  %3928 = call i32 @llvm.ctpop.i32(i32 %3927)
  %3929 = trunc i32 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = xor i8 %3930, 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3931, i8* %3932, align 1
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3933, align 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3934, align 1
  %3935 = lshr i64 %3921, 63
  %3936 = trunc i64 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3924, i8* %3938, align 1
  store %struct.Memory* %loadMem_4013d4, %struct.Memory** %MEMORY
  %loadMem_4013db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 5
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 7
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RCX.i92
  %3949 = load i64, i64* %RDX.i93
  %3950 = load i64, i64* %PC.i91
  %3951 = add i64 %3950, 3
  store i64 %3951, i64* %PC.i91
  %3952 = add i64 %3949, %3948
  store i64 %3952, i64* %RCX.i92, align 8
  %3953 = icmp ult i64 %3952, %3948
  %3954 = icmp ult i64 %3952, %3949
  %3955 = or i1 %3953, %3954
  %3956 = zext i1 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3956, i8* %3957, align 1
  %3958 = trunc i64 %3952 to i32
  %3959 = and i32 %3958, 255
  %3960 = call i32 @llvm.ctpop.i32(i32 %3959)
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  %3963 = xor i8 %3962, 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3963, i8* %3964, align 1
  %3965 = xor i64 %3949, %3948
  %3966 = xor i64 %3965, %3952
  %3967 = lshr i64 %3966, 4
  %3968 = trunc i64 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3969, i8* %3970, align 1
  %3971 = icmp eq i64 %3952, 0
  %3972 = zext i1 %3971 to i8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3972, i8* %3973, align 1
  %3974 = lshr i64 %3952, 63
  %3975 = trunc i64 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3975, i8* %3976, align 1
  %3977 = lshr i64 %3948, 63
  %3978 = lshr i64 %3949, 63
  %3979 = xor i64 %3974, %3977
  %3980 = xor i64 %3974, %3978
  %3981 = add i64 %3979, %3980
  %3982 = icmp eq i64 %3981, 2
  %3983 = zext i1 %3982 to i8
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3983, i8* %3984, align 1
  store %struct.Memory* %loadMem_4013db, %struct.Memory** %MEMORY
  %loadMem_4013de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 33
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 7
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 15
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %3993 to i64*
  %3994 = load i64, i64* %RBP.i90
  %3995 = sub i64 %3994, 172
  %3996 = load i64, i64* %PC.i88
  %3997 = add i64 %3996, 7
  store i64 %3997, i64* %PC.i88
  %3998 = inttoptr i64 %3995 to i32*
  %3999 = load i32, i32* %3998
  %4000 = sext i32 %3999 to i64
  store i64 %4000, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_4013de, %struct.Memory** %MEMORY
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 5
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 7
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4010, i64 0, i64 2
  %XMM2.i87 = bitcast %union.VectorReg* %4011 to %union.vec128_t*
  %4012 = load i64, i64* %RCX.i85
  %4013 = load i64, i64* %RDX.i86
  %4014 = mul i64 %4013, 8
  %4015 = add i64 %4014, %4012
  %4016 = bitcast %union.vec128_t* %XMM2.i87 to i8*
  %4017 = load i64, i64* %PC.i84
  %4018 = add i64 %4017, 5
  store i64 %4018, i64* %PC.i84
  %4019 = bitcast i8* %4016 to double*
  %4020 = load double, double* %4019, align 1
  %4021 = inttoptr i64 %4015 to double*
  store double %4020, double* %4021
  store %struct.Memory* %loadMem_4013e5, %struct.Memory** %MEMORY
  %loadMem_4013ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 15
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4029 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4028, i64 0, i64 1
  %YMM1.i83 = bitcast %union.VectorReg* %4029 to %"class.std::bitset"*
  %4030 = bitcast %"class.std::bitset"* %YMM1.i83 to i8*
  %4031 = load i64, i64* %RBP.i82
  %4032 = sub i64 %4031, 164
  %4033 = load i64, i64* %PC.i81
  %4034 = add i64 %4033, 8
  store i64 %4034, i64* %PC.i81
  %4035 = inttoptr i64 %4032 to i32*
  %4036 = load i32, i32* %4035
  %4037 = sitofp i32 %4036 to double
  %4038 = bitcast i8* %4030 to double*
  store double %4037, double* %4038, align 1
  store %struct.Memory* %loadMem_4013ea, %struct.Memory** %MEMORY
  %loadMem_4013f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 1
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 15
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4047 to i64*
  %4048 = load i64, i64* %RBP.i80
  %4049 = sub i64 %4048, 168
  %4050 = load i64, i64* %PC.i78
  %4051 = add i64 %4050, 6
  store i64 %4051, i64* %PC.i78
  %4052 = inttoptr i64 %4049 to i32*
  %4053 = load i32, i32* %4052
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_4013f2, %struct.Memory** %MEMORY
  %loadMem_4013f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 1
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4060 to i64*
  %4061 = load i64, i64* %RAX.i77
  %4062 = load i64, i64* %PC.i76
  %4063 = add i64 %4062, 3
  store i64 %4063, i64* %PC.i76
  %4064 = trunc i64 %4061 to i32
  %4065 = add i32 5, %4064
  %4066 = zext i32 %4065 to i64
  store i64 %4066, i64* %RAX.i77, align 8
  %4067 = icmp ult i32 %4065, %4064
  %4068 = icmp ult i32 %4065, 5
  %4069 = or i1 %4067, %4068
  %4070 = zext i1 %4069 to i8
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4070, i8* %4071, align 1
  %4072 = and i32 %4065, 255
  %4073 = call i32 @llvm.ctpop.i32(i32 %4072)
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4076, i8* %4077, align 1
  %4078 = xor i64 5, %4061
  %4079 = trunc i64 %4078 to i32
  %4080 = xor i32 %4079, %4065
  %4081 = lshr i32 %4080, 4
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4083, i8* %4084, align 1
  %4085 = icmp eq i32 %4065, 0
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4086, i8* %4087, align 1
  %4088 = lshr i32 %4065, 31
  %4089 = trunc i32 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4089, i8* %4090, align 1
  %4091 = lshr i32 %4064, 31
  %4092 = xor i32 %4088, %4091
  %4093 = add i32 %4092, %4088
  %4094 = icmp eq i32 %4093, 2
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4095, i8* %4096, align 1
  store %struct.Memory* %loadMem_4013f8, %struct.Memory** %MEMORY
  %loadMem_4013fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 1
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %4102 to i32*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4103, i64 0, i64 2
  %YMM2.i75 = bitcast %union.VectorReg* %4104 to %"class.std::bitset"*
  %4105 = bitcast %"class.std::bitset"* %YMM2.i75 to i8*
  %4106 = load i32, i32* %EAX.i74
  %4107 = zext i32 %4106 to i64
  %4108 = load i64, i64* %PC.i73
  %4109 = add i64 %4108, 4
  store i64 %4109, i64* %PC.i73
  %4110 = sitofp i32 %4106 to double
  %4111 = bitcast i8* %4105 to double*
  store double %4110, double* %4111, align 1
  store %struct.Memory* %loadMem_4013fb, %struct.Memory** %MEMORY
  %loadMem_4013ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4115, i64 0, i64 1
  %YMM1.i71 = bitcast %union.VectorReg* %4116 to %"class.std::bitset"*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4117, i64 0, i64 2
  %XMM2.i72 = bitcast %union.VectorReg* %4118 to %union.vec128_t*
  %4119 = bitcast %"class.std::bitset"* %YMM1.i71 to i8*
  %4120 = bitcast %"class.std::bitset"* %YMM1.i71 to i8*
  %4121 = bitcast %union.vec128_t* %XMM2.i72 to i8*
  %4122 = load i64, i64* %PC.i70
  %4123 = add i64 %4122, 4
  store i64 %4123, i64* %PC.i70
  %4124 = bitcast i8* %4120 to double*
  %4125 = load double, double* %4124, align 1
  %4126 = getelementptr inbounds i8, i8* %4120, i64 8
  %4127 = bitcast i8* %4126 to i64*
  %4128 = load i64, i64* %4127, align 1
  %4129 = bitcast i8* %4121 to double*
  %4130 = load double, double* %4129, align 1
  %4131 = fmul double %4125, %4130
  %4132 = bitcast i8* %4119 to double*
  store double %4131, double* %4132, align 1
  %4133 = getelementptr inbounds i8, i8* %4119, i64 8
  %4134 = bitcast i8* %4133 to i64*
  store i64 %4128, i64* %4134, align 1
  store %struct.Memory* %loadMem_4013ff, %struct.Memory** %MEMORY
  %loadMem_401403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4141, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4142 to %"class.std::bitset"*
  %4143 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4144 = load i64, i64* %RBP.i69
  %4145 = sub i64 %4144, 172
  %4146 = load i64, i64* %PC.i68
  %4147 = add i64 %4146, 8
  store i64 %4147, i64* %PC.i68
  %4148 = inttoptr i64 %4145 to i32*
  %4149 = load i32, i32* %4148
  %4150 = sitofp i32 %4149 to double
  %4151 = bitcast i8* %4143 to double*
  store double %4150, double* %4151, align 1
  store %struct.Memory* %loadMem_401403, %struct.Memory** %MEMORY
  %loadMem_40140b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4155, i64 0, i64 1
  %YMM1.i67 = bitcast %union.VectorReg* %4156 to %"class.std::bitset"*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4157, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4158 to %union.vec128_t*
  %4159 = bitcast %"class.std::bitset"* %YMM1.i67 to i8*
  %4160 = bitcast %"class.std::bitset"* %YMM1.i67 to i8*
  %4161 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4162 = load i64, i64* %PC.i66
  %4163 = add i64 %4162, 4
  store i64 %4163, i64* %PC.i66
  %4164 = bitcast i8* %4160 to double*
  %4165 = load double, double* %4164, align 1
  %4166 = getelementptr inbounds i8, i8* %4160, i64 8
  %4167 = bitcast i8* %4166 to i64*
  %4168 = load i64, i64* %4167, align 1
  %4169 = bitcast i8* %4161 to double*
  %4170 = load double, double* %4169, align 1
  %4171 = fadd double %4165, %4170
  %4172 = bitcast i8* %4159 to double*
  store double %4171, double* %4172, align 1
  %4173 = getelementptr inbounds i8, i8* %4159, i64 8
  %4174 = bitcast i8* %4173 to i64*
  store i64 %4168, i64* %4174, align 1
  store %struct.Memory* %loadMem_40140b, %struct.Memory** %MEMORY
  %loadMem_40140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4179 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4178, i64 0, i64 1
  %YMM1.i64 = bitcast %union.VectorReg* %4179 to %"class.std::bitset"*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4180, i64 0, i64 0
  %XMM0.i65 = bitcast %union.VectorReg* %4181 to %union.vec128_t*
  %4182 = bitcast %"class.std::bitset"* %YMM1.i64 to i8*
  %4183 = bitcast %"class.std::bitset"* %YMM1.i64 to i8*
  %4184 = bitcast %union.vec128_t* %XMM0.i65 to i8*
  %4185 = load i64, i64* %PC.i63
  %4186 = add i64 %4185, 4
  store i64 %4186, i64* %PC.i63
  %4187 = bitcast i8* %4183 to double*
  %4188 = load double, double* %4187, align 1
  %4189 = getelementptr inbounds i8, i8* %4183, i64 8
  %4190 = bitcast i8* %4189 to i64*
  %4191 = load i64, i64* %4190, align 1
  %4192 = bitcast i8* %4184 to double*
  %4193 = load double, double* %4192, align 1
  %4194 = fadd double %4188, %4193
  %4195 = bitcast i8* %4182 to double*
  store double %4194, double* %4195, align 1
  %4196 = getelementptr inbounds i8, i8* %4182, i64 8
  %4197 = bitcast i8* %4196 to i64*
  store i64 %4191, i64* %4197, align 1
  store %struct.Memory* %loadMem_40140f, %struct.Memory** %MEMORY
  %loadMem_401413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 15
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4204, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4205 to %"class.std::bitset"*
  %4206 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4207 = load i64, i64* %RBP.i62
  %4208 = sub i64 %4207, 44
  %4209 = load i64, i64* %PC.i61
  %4210 = add i64 %4209, 5
  store i64 %4210, i64* %PC.i61
  %4211 = inttoptr i64 %4208 to i32*
  %4212 = load i32, i32* %4211
  %4213 = sitofp i32 %4212 to double
  %4214 = bitcast i8* %4206 to double*
  store double %4213, double* %4214, align 1
  store %struct.Memory* %loadMem_401413, %struct.Memory** %MEMORY
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 33
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4217 to i64*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4218, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4219 to %"class.std::bitset"*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4220, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4221 to %union.vec128_t*
  %4222 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4223 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4224 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4225 = load i64, i64* %PC.i60
  %4226 = add i64 %4225, 4
  store i64 %4226, i64* %PC.i60
  %4227 = bitcast i8* %4223 to double*
  %4228 = load double, double* %4227, align 1
  %4229 = getelementptr inbounds i8, i8* %4223, i64 8
  %4230 = bitcast i8* %4229 to i64*
  %4231 = load i64, i64* %4230, align 1
  %4232 = bitcast i8* %4224 to double*
  %4233 = load double, double* %4232, align 1
  %4234 = fdiv double %4228, %4233
  %4235 = bitcast i8* %4222 to double*
  store double %4234, double* %4235, align 1
  %4236 = getelementptr inbounds i8, i8* %4222, i64 8
  %4237 = bitcast i8* %4236 to i64*
  store i64 %4231, i64* %4237, align 1
  store %struct.Memory* %loadMem_401418, %struct.Memory** %MEMORY
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 5
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 15
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4246 to i64*
  %4247 = load i64, i64* %RBP.i59
  %4248 = sub i64 %4247, 112
  %4249 = load i64, i64* %PC.i57
  %4250 = add i64 %4249, 4
  store i64 %4250, i64* %PC.i57
  %4251 = inttoptr i64 %4248 to i64*
  %4252 = load i64, i64* %4251
  store i64 %4252, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_40141c, %struct.Memory** %MEMORY
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 7
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 15
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4261 to i64*
  %4262 = load i64, i64* %RBP.i56
  %4263 = sub i64 %4262, 164
  %4264 = load i64, i64* %PC.i54
  %4265 = add i64 %4264, 7
  store i64 %4265, i64* %PC.i54
  %4266 = inttoptr i64 %4263 to i32*
  %4267 = load i32, i32* %4266
  %4268 = sext i32 %4267 to i64
  store i64 %4268, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_401420, %struct.Memory** %MEMORY
  %loadMem_401427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 7
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %4274 to i64*
  %4275 = load i64, i64* %RDX.i53
  %4276 = load i64, i64* %PC.i52
  %4277 = add i64 %4276, 7
  store i64 %4277, i64* %PC.i52
  %4278 = sext i64 %4275 to i128
  %4279 = and i128 %4278, -18446744073709551616
  %4280 = zext i64 %4275 to i128
  %4281 = or i128 %4279, %4280
  %4282 = mul i128 33800, %4281
  %4283 = trunc i128 %4282 to i64
  store i64 %4283, i64* %RDX.i53, align 8
  %4284 = sext i64 %4283 to i128
  %4285 = icmp ne i128 %4284, %4282
  %4286 = zext i1 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4286, i8* %4287, align 1
  %4288 = trunc i128 %4282 to i32
  %4289 = and i32 %4288, 255
  %4290 = call i32 @llvm.ctpop.i32(i32 %4289)
  %4291 = trunc i32 %4290 to i8
  %4292 = and i8 %4291, 1
  %4293 = xor i8 %4292, 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4293, i8* %4294, align 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4295, align 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4296, align 1
  %4297 = lshr i64 %4283, 63
  %4298 = trunc i64 %4297 to i8
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4298, i8* %4299, align 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4286, i8* %4300, align 1
  store %struct.Memory* %loadMem_401427, %struct.Memory** %MEMORY
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 5
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 7
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RCX.i50
  %4311 = load i64, i64* %RDX.i51
  %4312 = load i64, i64* %PC.i49
  %4313 = add i64 %4312, 3
  store i64 %4313, i64* %PC.i49
  %4314 = add i64 %4311, %4310
  store i64 %4314, i64* %RCX.i50, align 8
  %4315 = icmp ult i64 %4314, %4310
  %4316 = icmp ult i64 %4314, %4311
  %4317 = or i1 %4315, %4316
  %4318 = zext i1 %4317 to i8
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4318, i8* %4319, align 1
  %4320 = trunc i64 %4314 to i32
  %4321 = and i32 %4320, 255
  %4322 = call i32 @llvm.ctpop.i32(i32 %4321)
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  %4325 = xor i8 %4324, 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4325, i8* %4326, align 1
  %4327 = xor i64 %4311, %4310
  %4328 = xor i64 %4327, %4314
  %4329 = lshr i64 %4328, 4
  %4330 = trunc i64 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4331, i8* %4332, align 1
  %4333 = icmp eq i64 %4314, 0
  %4334 = zext i1 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4334, i8* %4335, align 1
  %4336 = lshr i64 %4314, 63
  %4337 = trunc i64 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4337, i8* %4338, align 1
  %4339 = lshr i64 %4310, 63
  %4340 = lshr i64 %4311, 63
  %4341 = xor i64 %4336, %4339
  %4342 = xor i64 %4336, %4340
  %4343 = add i64 %4341, %4342
  %4344 = icmp eq i64 %4343, 2
  %4345 = zext i1 %4344 to i8
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4345, i8* %4346, align 1
  store %struct.Memory* %loadMem_40142e, %struct.Memory** %MEMORY
  %loadMem_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 33
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 7
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 15
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %4355 to i64*
  %4356 = load i64, i64* %RBP.i48
  %4357 = sub i64 %4356, 168
  %4358 = load i64, i64* %PC.i46
  %4359 = add i64 %4358, 7
  store i64 %4359, i64* %PC.i46
  %4360 = inttoptr i64 %4357 to i32*
  %4361 = load i32, i32* %4360
  %4362 = sext i32 %4361 to i64
  store i64 %4362, i64* %RDX.i47, align 8
  store %struct.Memory* %loadMem_401431, %struct.Memory** %MEMORY
  %loadMem_401438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 7
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RDX.i45
  %4370 = load i64, i64* %PC.i44
  %4371 = add i64 %4370, 7
  store i64 %4371, i64* %PC.i44
  %4372 = sext i64 %4369 to i128
  %4373 = and i128 %4372, -18446744073709551616
  %4374 = zext i64 %4369 to i128
  %4375 = or i128 %4373, %4374
  %4376 = mul i128 520, %4375
  %4377 = trunc i128 %4376 to i64
  store i64 %4377, i64* %RDX.i45, align 8
  %4378 = sext i64 %4377 to i128
  %4379 = icmp ne i128 %4378, %4376
  %4380 = zext i1 %4379 to i8
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4380, i8* %4381, align 1
  %4382 = trunc i128 %4376 to i32
  %4383 = and i32 %4382, 255
  %4384 = call i32 @llvm.ctpop.i32(i32 %4383)
  %4385 = trunc i32 %4384 to i8
  %4386 = and i8 %4385, 1
  %4387 = xor i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4387, i8* %4388, align 1
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4389, align 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4390, align 1
  %4391 = lshr i64 %4377, 63
  %4392 = trunc i64 %4391 to i8
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4392, i8* %4393, align 1
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4380, i8* %4394, align 1
  store %struct.Memory* %loadMem_401438, %struct.Memory** %MEMORY
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 5
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 7
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %4403 to i64*
  %4404 = load i64, i64* %RCX.i42
  %4405 = load i64, i64* %RDX.i43
  %4406 = load i64, i64* %PC.i41
  %4407 = add i64 %4406, 3
  store i64 %4407, i64* %PC.i41
  %4408 = add i64 %4405, %4404
  store i64 %4408, i64* %RCX.i42, align 8
  %4409 = icmp ult i64 %4408, %4404
  %4410 = icmp ult i64 %4408, %4405
  %4411 = or i1 %4409, %4410
  %4412 = zext i1 %4411 to i8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4412, i8* %4413, align 1
  %4414 = trunc i64 %4408 to i32
  %4415 = and i32 %4414, 255
  %4416 = call i32 @llvm.ctpop.i32(i32 %4415)
  %4417 = trunc i32 %4416 to i8
  %4418 = and i8 %4417, 1
  %4419 = xor i8 %4418, 1
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4419, i8* %4420, align 1
  %4421 = xor i64 %4405, %4404
  %4422 = xor i64 %4421, %4408
  %4423 = lshr i64 %4422, 4
  %4424 = trunc i64 %4423 to i8
  %4425 = and i8 %4424, 1
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4425, i8* %4426, align 1
  %4427 = icmp eq i64 %4408, 0
  %4428 = zext i1 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4428, i8* %4429, align 1
  %4430 = lshr i64 %4408, 63
  %4431 = trunc i64 %4430 to i8
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4431, i8* %4432, align 1
  %4433 = lshr i64 %4404, 63
  %4434 = lshr i64 %4405, 63
  %4435 = xor i64 %4430, %4433
  %4436 = xor i64 %4430, %4434
  %4437 = add i64 %4435, %4436
  %4438 = icmp eq i64 %4437, 2
  %4439 = zext i1 %4438 to i8
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4439, i8* %4440, align 1
  store %struct.Memory* %loadMem_40143f, %struct.Memory** %MEMORY
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 33
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 7
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 15
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %RBP.i40
  %4451 = sub i64 %4450, 172
  %4452 = load i64, i64* %PC.i38
  %4453 = add i64 %4452, 7
  store i64 %4453, i64* %PC.i38
  %4454 = inttoptr i64 %4451 to i32*
  %4455 = load i32, i32* %4454
  %4456 = sext i32 %4455 to i64
  store i64 %4456, i64* %RDX.i39, align 8
  store %struct.Memory* %loadMem_401442, %struct.Memory** %MEMORY
  %loadMem_401449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 5
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 7
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4466, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4467 to %union.vec128_t*
  %4468 = load i64, i64* %RCX.i
  %4469 = load i64, i64* %RDX.i
  %4470 = mul i64 %4469, 8
  %4471 = add i64 %4470, %4468
  %4472 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4473 = load i64, i64* %PC.i37
  %4474 = add i64 %4473, 5
  store i64 %4474, i64* %PC.i37
  %4475 = bitcast i8* %4472 to double*
  %4476 = load double, double* %4475, align 1
  %4477 = inttoptr i64 %4471 to double*
  store double %4476, double* %4477
  store %struct.Memory* %loadMem_401449, %struct.Memory** %MEMORY
  %loadMem_40144e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 33
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 1
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 15
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %RBP.i36
  %4488 = sub i64 %4487, 172
  %4489 = load i64, i64* %PC.i34
  %4490 = add i64 %4489, 6
  store i64 %4490, i64* %PC.i34
  %4491 = inttoptr i64 %4488 to i32*
  %4492 = load i32, i32* %4491
  %4493 = zext i32 %4492 to i64
  store i64 %4493, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_40144e, %struct.Memory** %MEMORY
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 1
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RAX.i33
  %4501 = load i64, i64* %PC.i32
  %4502 = add i64 %4501, 3
  store i64 %4502, i64* %PC.i32
  %4503 = trunc i64 %4500 to i32
  %4504 = add i32 1, %4503
  %4505 = zext i32 %4504 to i64
  store i64 %4505, i64* %RAX.i33, align 8
  %4506 = icmp ult i32 %4504, %4503
  %4507 = icmp ult i32 %4504, 1
  %4508 = or i1 %4506, %4507
  %4509 = zext i1 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4509, i8* %4510, align 1
  %4511 = and i32 %4504, 255
  %4512 = call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4515, i8* %4516, align 1
  %4517 = xor i64 1, %4500
  %4518 = trunc i64 %4517 to i32
  %4519 = xor i32 %4518, %4504
  %4520 = lshr i32 %4519, 4
  %4521 = trunc i32 %4520 to i8
  %4522 = and i8 %4521, 1
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4522, i8* %4523, align 1
  %4524 = icmp eq i32 %4504, 0
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4525, i8* %4526, align 1
  %4527 = lshr i32 %4504, 31
  %4528 = trunc i32 %4527 to i8
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4528, i8* %4529, align 1
  %4530 = lshr i32 %4503, 31
  %4531 = xor i32 %4527, %4530
  %4532 = add i32 %4531, %4527
  %4533 = icmp eq i32 %4532, 2
  %4534 = zext i1 %4533 to i8
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4534, i8* %4535, align 1
  store %struct.Memory* %loadMem_401454, %struct.Memory** %MEMORY
  %loadMem_401457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 33
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 1
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %4541 to i32*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 15
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4544 to i64*
  %4545 = load i64, i64* %RBP.i31
  %4546 = sub i64 %4545, 172
  %4547 = load i32, i32* %EAX.i30
  %4548 = zext i32 %4547 to i64
  %4549 = load i64, i64* %PC.i29
  %4550 = add i64 %4549, 6
  store i64 %4550, i64* %PC.i29
  %4551 = inttoptr i64 %4546 to i32*
  store i32 %4547, i32* %4551
  store %struct.Memory* %loadMem_401457, %struct.Memory** %MEMORY
  %loadMem_40145d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %PC.i28
  %4556 = add i64 %4555, -354
  %4557 = load i64, i64* %PC.i28
  %4558 = add i64 %4557, 5
  store i64 %4558, i64* %PC.i28
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4556, i64* %4559, align 8
  store %struct.Memory* %loadMem_40145d, %struct.Memory** %MEMORY
  br label %block_.L_4012fb

block_.L_401462:                                  ; preds = %block_.L_4012fb
  %loadMem_401462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %PC.i27
  %4564 = add i64 %4563, 5
  %4565 = load i64, i64* %PC.i27
  %4566 = add i64 %4565, 5
  store i64 %4566, i64* %PC.i27
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4564, i64* %4567, align 8
  store %struct.Memory* %loadMem_401462, %struct.Memory** %MEMORY
  br label %block_.L_401467

block_.L_401467:                                  ; preds = %block_.L_401462
  %loadMem_401467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %4573 to i64*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 15
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4576 to i64*
  %4577 = load i64, i64* %RBP.i26
  %4578 = sub i64 %4577, 168
  %4579 = load i64, i64* %PC.i24
  %4580 = add i64 %4579, 6
  store i64 %4580, i64* %PC.i24
  %4581 = inttoptr i64 %4578 to i32*
  %4582 = load i32, i32* %4581
  %4583 = zext i32 %4582 to i64
  store i64 %4583, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_401467, %struct.Memory** %MEMORY
  %loadMem_40146d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RAX.i23
  %4591 = load i64, i64* %PC.i22
  %4592 = add i64 %4591, 3
  store i64 %4592, i64* %PC.i22
  %4593 = trunc i64 %4590 to i32
  %4594 = add i32 1, %4593
  %4595 = zext i32 %4594 to i64
  store i64 %4595, i64* %RAX.i23, align 8
  %4596 = icmp ult i32 %4594, %4593
  %4597 = icmp ult i32 %4594, 1
  %4598 = or i1 %4596, %4597
  %4599 = zext i1 %4598 to i8
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4599, i8* %4600, align 1
  %4601 = and i32 %4594, 255
  %4602 = call i32 @llvm.ctpop.i32(i32 %4601)
  %4603 = trunc i32 %4602 to i8
  %4604 = and i8 %4603, 1
  %4605 = xor i8 %4604, 1
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4605, i8* %4606, align 1
  %4607 = xor i64 1, %4590
  %4608 = trunc i64 %4607 to i32
  %4609 = xor i32 %4608, %4594
  %4610 = lshr i32 %4609, 4
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4612, i8* %4613, align 1
  %4614 = icmp eq i32 %4594, 0
  %4615 = zext i1 %4614 to i8
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4615, i8* %4616, align 1
  %4617 = lshr i32 %4594, 31
  %4618 = trunc i32 %4617 to i8
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4618, i8* %4619, align 1
  %4620 = lshr i32 %4593, 31
  %4621 = xor i32 %4617, %4620
  %4622 = add i32 %4621, %4617
  %4623 = icmp eq i32 %4622, 2
  %4624 = zext i1 %4623 to i8
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4624, i8* %4625, align 1
  store %struct.Memory* %loadMem_40146d, %struct.Memory** %MEMORY
  %loadMem_401470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 33
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 1
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %4631 to i32*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 15
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4634 to i64*
  %4635 = load i64, i64* %RBP.i21
  %4636 = sub i64 %4635, 168
  %4637 = load i32, i32* %EAX.i20
  %4638 = zext i32 %4637 to i64
  %4639 = load i64, i64* %PC.i19
  %4640 = add i64 %4639, 6
  store i64 %4640, i64* %PC.i19
  %4641 = inttoptr i64 %4636 to i32*
  store i32 %4637, i32* %4641
  store %struct.Memory* %loadMem_401470, %struct.Memory** %MEMORY
  %loadMem_401476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4644 to i64*
  %4645 = load i64, i64* %PC.i18
  %4646 = add i64 %4645, -562
  %4647 = load i64, i64* %PC.i18
  %4648 = add i64 %4647, 5
  store i64 %4648, i64* %PC.i18
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4646, i64* %4649, align 8
  store %struct.Memory* %loadMem_401476, %struct.Memory** %MEMORY
  br label %block_.L_401244

block_.L_40147b:                                  ; preds = %block_.L_401244
  %loadMem_40147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %PC.i17
  %4654 = add i64 %4653, 5
  %4655 = load i64, i64* %PC.i17
  %4656 = add i64 %4655, 5
  store i64 %4656, i64* %PC.i17
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4654, i64* %4657, align 8
  store %struct.Memory* %loadMem_40147b, %struct.Memory** %MEMORY
  br label %block_.L_401480

block_.L_401480:                                  ; preds = %block_.L_40147b
  %loadMem_401480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 1
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 15
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %4666 to i64*
  %4667 = load i64, i64* %RBP.i16
  %4668 = sub i64 %4667, 164
  %4669 = load i64, i64* %PC.i14
  %4670 = add i64 %4669, 6
  store i64 %4670, i64* %PC.i14
  %4671 = inttoptr i64 %4668 to i32*
  %4672 = load i32, i32* %4671
  %4673 = zext i32 %4672 to i64
  store i64 %4673, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_401480, %struct.Memory** %MEMORY
  %loadMem_401486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 1
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %RAX.i
  %4681 = load i64, i64* %PC.i13
  %4682 = add i64 %4681, 3
  store i64 %4682, i64* %PC.i13
  %4683 = trunc i64 %4680 to i32
  %4684 = add i32 1, %4683
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RAX.i, align 8
  %4686 = icmp ult i32 %4684, %4683
  %4687 = icmp ult i32 %4684, 1
  %4688 = or i1 %4686, %4687
  %4689 = zext i1 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4689, i8* %4690, align 1
  %4691 = and i32 %4684, 255
  %4692 = call i32 @llvm.ctpop.i32(i32 %4691)
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4695, i8* %4696, align 1
  %4697 = xor i64 1, %4680
  %4698 = trunc i64 %4697 to i32
  %4699 = xor i32 %4698, %4684
  %4700 = lshr i32 %4699, 4
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4702, i8* %4703, align 1
  %4704 = icmp eq i32 %4684, 0
  %4705 = zext i1 %4704 to i8
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4705, i8* %4706, align 1
  %4707 = lshr i32 %4684, 31
  %4708 = trunc i32 %4707 to i8
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4708, i8* %4709, align 1
  %4710 = lshr i32 %4683, 31
  %4711 = xor i32 %4707, %4710
  %4712 = add i32 %4711, %4707
  %4713 = icmp eq i32 %4712, 2
  %4714 = zext i1 %4713 to i8
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4714, i8* %4715, align 1
  store %struct.Memory* %loadMem_401486, %struct.Memory** %MEMORY
  %loadMem_401489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4721 to i32*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 15
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4724 to i64*
  %4725 = load i64, i64* %RBP.i12
  %4726 = sub i64 %4725, 164
  %4727 = load i32, i32* %EAX.i
  %4728 = zext i32 %4727 to i64
  %4729 = load i64, i64* %PC.i11
  %4730 = add i64 %4729, 6
  store i64 %4730, i64* %PC.i11
  %4731 = inttoptr i64 %4726 to i32*
  store i32 %4727, i32* %4731
  store %struct.Memory* %loadMem_401489, %struct.Memory** %MEMORY
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %PC.i10
  %4736 = add i64 %4735, -612
  %4737 = load i64, i64* %PC.i10
  %4738 = add i64 %4737, 5
  store i64 %4738, i64* %PC.i10
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4736, i64* %4739, align 8
  store %struct.Memory* %loadMem_40148f, %struct.Memory** %MEMORY
  br label %block_.L_40122b

block_.L_401494:                                  ; preds = %block_.L_40122b
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 13
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RSP.i
  %4747 = load i64, i64* %PC.i9
  %4748 = add i64 %4747, 4
  store i64 %4748, i64* %PC.i9
  %4749 = add i64 24, %4746
  store i64 %4749, i64* %RSP.i, align 8
  %4750 = icmp ult i64 %4749, %4746
  %4751 = icmp ult i64 %4749, 24
  %4752 = or i1 %4750, %4751
  %4753 = zext i1 %4752 to i8
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4753, i8* %4754, align 1
  %4755 = trunc i64 %4749 to i32
  %4756 = and i32 %4755, 255
  %4757 = call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4760, i8* %4761, align 1
  %4762 = xor i64 24, %4746
  %4763 = xor i64 %4762, %4749
  %4764 = lshr i64 %4763, 4
  %4765 = trunc i64 %4764 to i8
  %4766 = and i8 %4765, 1
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4766, i8* %4767, align 1
  %4768 = icmp eq i64 %4749, 0
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4769, i8* %4770, align 1
  %4771 = lshr i64 %4749, 63
  %4772 = trunc i64 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4772, i8* %4773, align 1
  %4774 = lshr i64 %4746, 63
  %4775 = xor i64 %4771, %4774
  %4776 = add i64 %4775, %4771
  %4777 = icmp eq i64 %4776, 2
  %4778 = zext i1 %4777 to i8
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4778, i8* %4779, align 1
  store %struct.Memory* %loadMem_401494, %struct.Memory** %MEMORY
  %loadMem_401498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 3
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %4785 to i64*
  %4786 = load i64, i64* %PC.i8
  %4787 = add i64 %4786, 1
  store i64 %4787, i64* %PC.i8
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4789 = load i64, i64* %4788, align 8
  %4790 = add i64 %4789, 8
  %4791 = inttoptr i64 %4789 to i64*
  %4792 = load i64, i64* %4791
  store i64 %4792, i64* %RBX.i, align 8
  store i64 %4790, i64* %4788, align 8
  store %struct.Memory* %loadMem_401498, %struct.Memory** %MEMORY
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 33
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4795 to i64*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 25
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %R12.i = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %PC.i7
  %4800 = add i64 %4799, 2
  store i64 %4800, i64* %PC.i7
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4802 = load i64, i64* %4801, align 8
  %4803 = add i64 %4802, 8
  %4804 = inttoptr i64 %4802 to i64*
  %4805 = load i64, i64* %4804
  store i64 %4805, i64* %R12.i, align 8
  store i64 %4803, i64* %4801, align 8
  store %struct.Memory* %loadMem_401499, %struct.Memory** %MEMORY
  %loadMem_40149b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 27
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %R13.i = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %PC.i6
  %4813 = add i64 %4812, 2
  store i64 %4813, i64* %PC.i6
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4815 = load i64, i64* %4814, align 8
  %4816 = add i64 %4815, 8
  %4817 = inttoptr i64 %4815 to i64*
  %4818 = load i64, i64* %4817
  store i64 %4818, i64* %R13.i, align 8
  store i64 %4816, i64* %4814, align 8
  store %struct.Memory* %loadMem_40149b, %struct.Memory** %MEMORY
  %loadMem_40149d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 29
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %R14.i = bitcast %union.anon* %4824 to i64*
  %4825 = load i64, i64* %PC.i5
  %4826 = add i64 %4825, 2
  store i64 %4826, i64* %PC.i5
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4828 = load i64, i64* %4827, align 8
  %4829 = add i64 %4828, 8
  %4830 = inttoptr i64 %4828 to i64*
  %4831 = load i64, i64* %4830
  store i64 %4831, i64* %R14.i, align 8
  store i64 %4829, i64* %4827, align 8
  store %struct.Memory* %loadMem_40149d, %struct.Memory** %MEMORY
  %loadMem_40149f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 33
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4834 to i64*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 31
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %R15.i = bitcast %union.anon* %4837 to i64*
  %4838 = load i64, i64* %PC.i4
  %4839 = add i64 %4838, 2
  store i64 %4839, i64* %PC.i4
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4841 = load i64, i64* %4840, align 8
  %4842 = add i64 %4841, 8
  %4843 = inttoptr i64 %4841 to i64*
  %4844 = load i64, i64* %4843
  store i64 %4844, i64* %R15.i, align 8
  store i64 %4842, i64* %4840, align 8
  store %struct.Memory* %loadMem_40149f, %struct.Memory** %MEMORY
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 15
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %PC.i2
  %4852 = add i64 %4851, 1
  store i64 %4852, i64* %PC.i2
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4854 = load i64, i64* %4853, align 8
  %4855 = add i64 %4854, 8
  %4856 = inttoptr i64 %4854 to i64*
  %4857 = load i64, i64* %4856
  store i64 %4857, i64* %RBP.i3, align 8
  store i64 %4855, i64* %4853, align 8
  store %struct.Memory* %loadMem_4014a1, %struct.Memory** %MEMORY
  %loadMem_4014a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %PC.i1
  %4862 = add i64 %4861, 1
  store i64 %4862, i64* %PC.i1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4865 = load i64, i64* %4864, align 8
  %4866 = inttoptr i64 %4865 to i64*
  %4867 = load i64, i64* %4866
  store i64 %4867, i64* %4863, align 8
  %4868 = add i64 %4865, 8
  store i64 %4868, i64* %4864, align 8
  store %struct.Memory* %loadMem_4014a2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4014a2
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

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
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

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
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

define %struct.Memory* @routine_subq__0x18___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 24
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 24
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
  %23 = xor i64 24, %9
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

define %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2439__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9281
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

define %struct.Memory* @routine_movsd_0x2439__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9281
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

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %R8
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to double*
  %16 = load double, double* %15, align 1
  %17 = inttoptr i64 %11 to double*
  store double %16, double* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %R8
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to double*
  %16 = load double, double* %15, align 1
  %17 = inttoptr i64 %11 to double*
  store double %16, double* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jg_.L_401107(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x23cf__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9175
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

define %struct.Memory* @routine_movsd_0x23cf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9175
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xa4__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM2 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xa4__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40108a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_401194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x2368__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9072
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

define %struct.Memory* @routine_movsd_0x2338__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9024
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

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401111(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_401221(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x22cb__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8915
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

define %struct.Memory* @routine_movsd_0x22cb__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8915
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40119e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_401494(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40147b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x21fd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8709
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

define %struct.Memory* @routine_movsd_0x21fd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8709
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x208___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 520, %15
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM2 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__0x0__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401462(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x2156__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8542
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

define %struct.Memory* @routine_movsd_0x2156__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8542
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

define %struct.Memory* @routine_movsd_0x2156__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8542
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xa4__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 3
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
  %26 = xor i64 3, %9
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

define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xac__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x8408___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 33800, %15
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

define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM3 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xac__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 5, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 5
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
  %26 = xor i64 5, %9
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xac__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4012fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401467(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401244(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401480(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40122b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x18___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 24, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 24
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
  %25 = xor i64 24, %9
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

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R12, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R13, align 8
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
