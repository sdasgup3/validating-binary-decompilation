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
define %struct.Memory* @kernel_adi(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400bb0, %struct.Memory** %MEMORY
  %loadMem_400bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1027 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1028 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i1027
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1027
  store i64 %26, i64* %RBP.i1028, align 8
  store %struct.Memory* %loadMem_400bb1, %struct.Memory** %MEMORY
  %loadMem_400bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i1026 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i1026
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i1025
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i1025
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400bb4, %struct.Memory** %MEMORY
  %loadMem_400bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i1024 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i1024
  %55 = sub i64 %54, 8
  %56 = load i32, i32* %ESI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i1023
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i1023
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_400bb7, %struct.Memory** %MEMORY
  %loadMem_400bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RDX.i1021 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %RBP.i1022 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %RBP.i1022
  %71 = sub i64 %70, 16
  %72 = load i64, i64* %RDX.i1021
  %73 = load i64, i64* %PC.i1020
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC.i1020
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75
  store %struct.Memory* %loadMem_400bba, %struct.Memory** %MEMORY
  %loadMem_400bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RCX.i1018 = bitcast %union.anon* %81 to i64*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RBP.i1019
  %86 = sub i64 %85, 24
  %87 = load i64, i64* %RCX.i1018
  %88 = load i64, i64* %PC.i1017
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC.i1017
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  store %struct.Memory* %loadMem_400bbe, %struct.Memory** %MEMORY
  %loadMem_400bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i1016 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 17
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %R8.i = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i1016
  %101 = sub i64 %100, 32
  %102 = load i64, i64* %R8.i
  %103 = load i64, i64* %PC.i1015
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i1015
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_400bc2, %struct.Memory** %MEMORY
  %loadMem_400bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i1014 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i1014
  %113 = sub i64 %112, 36
  %114 = load i64, i64* %PC.i1013
  %115 = add i64 %114, 7
  store i64 %115, i64* %PC.i1013
  %116 = inttoptr i64 %113 to i32*
  store i32 0, i32* %116
  store %struct.Memory* %loadMem_400bc6, %struct.Memory** %MEMORY
  br label %block_.L_400bcd

block_.L_400bcd:                                  ; preds = %block_.L_40114d, %entry
  %loadMem_400bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RAX.i1011 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i1012 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i1012
  %127 = sub i64 %126, 36
  %128 = load i64, i64* %PC.i1010
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i1010
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX.i1011, align 8
  store %struct.Memory* %loadMem_400bcd, %struct.Memory** %MEMORY
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %EAX.i1008 = bitcast %union.anon* %138 to i32*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i1009 = bitcast %union.anon* %141 to i64*
  %142 = load i32, i32* %EAX.i1008
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* %RBP.i1009
  %145 = sub i64 %144, 4
  %146 = load i64, i64* %PC.i1007
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC.i1007
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148
  %150 = sub i32 %142, %149
  %151 = icmp ult i32 %142, %149
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %152, i8* %153, align 1
  %154 = and i32 %150, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %158, i8* %159, align 1
  %160 = xor i32 %149, %142
  %161 = xor i32 %160, %150
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %164, i8* %165, align 1
  %166 = icmp eq i32 %150, 0
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %167, i8* %168, align 1
  %169 = lshr i32 %150, 31
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %170, i8* %171, align 1
  %172 = lshr i32 %142, 31
  %173 = lshr i32 %149, 31
  %174 = xor i32 %173, %172
  %175 = xor i32 %169, %172
  %176 = add i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %179, align 1
  store %struct.Memory* %loadMem_400bd0, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %PC.i1006
  %184 = add i64 %183, 1416
  %185 = load i64, i64* %PC.i1006
  %186 = add i64 %185, 6
  %187 = load i64, i64* %PC.i1006
  %188 = add i64 %187, 6
  store i64 %188, i64* %PC.i1006
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %193 = load i8, i8* %192, align 1
  %194 = icmp ne i8 %193, 0
  %195 = xor i1 %191, %194
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %BRANCH_TAKEN, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %199 = select i1 %195, i64 %186, i64 %184
  store i64 %199, i64* %198, align 8
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadBr_400bd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bd3 = icmp eq i8 %loadBr_400bd3, 1
  br i1 %cmpBr_400bd3, label %block_.L_40115b, label %block_400bd9

block_400bd9:                                     ; preds = %block_.L_400bcd
  %loadMem_400bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 15
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RBP.i1005 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RBP.i1005
  %207 = sub i64 %206, 40
  %208 = load i64, i64* %PC.i1004
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC.i1004
  %210 = inttoptr i64 %207 to i32*
  store i32 0, i32* %210
  store %struct.Memory* %loadMem_400bd9, %struct.Memory** %MEMORY
  br label %block_.L_400be0

block_.L_400be0:                                  ; preds = %block_.L_400d19, %block_400bd9
  %loadMem_400be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RAX.i1002 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i1003 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RBP.i1003
  %221 = sub i64 %220, 40
  %222 = load i64, i64* %PC.i1001
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC.i1001
  %224 = inttoptr i64 %221 to i32*
  %225 = load i32, i32* %224
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RAX.i1002, align 8
  store %struct.Memory* %loadMem_400be0, %struct.Memory** %MEMORY
  %loadMem_400be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %EAX.i999 = bitcast %union.anon* %232 to i32*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i1000 = bitcast %union.anon* %235 to i64*
  %236 = load i32, i32* %EAX.i999
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %RBP.i1000
  %239 = sub i64 %238, 8
  %240 = load i64, i64* %PC.i998
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i998
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = sub i32 %236, %243
  %245 = icmp ult i32 %236, %243
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %247, align 1
  %248 = and i32 %244, 255
  %249 = call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %252, i8* %253, align 1
  %254 = xor i32 %243, %236
  %255 = xor i32 %254, %244
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %258, i8* %259, align 1
  %260 = icmp eq i32 %244, 0
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %261, i8* %262, align 1
  %263 = lshr i32 %244, 31
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %264, i8* %265, align 1
  %266 = lshr i32 %236, 31
  %267 = lshr i32 %243, 31
  %268 = xor i32 %267, %266
  %269 = xor i32 %263, %266
  %270 = add i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %272, i8* %273, align 1
  store %struct.Memory* %loadMem_400be3, %struct.Memory** %MEMORY
  %loadMem_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %PC.i997
  %278 = add i64 %277, 321
  %279 = load i64, i64* %PC.i997
  %280 = add i64 %279, 6
  %281 = load i64, i64* %PC.i997
  %282 = add i64 %281, 6
  store i64 %282, i64* %PC.i997
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %284 = load i8, i8* %283, align 1
  %285 = icmp ne i8 %284, 0
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %287 = load i8, i8* %286, align 1
  %288 = icmp ne i8 %287, 0
  %289 = xor i1 %285, %288
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %BRANCH_TAKEN, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %293 = select i1 %289, i64 %280, i64 %278
  store i64 %293, i64* %292, align 8
  store %struct.Memory* %loadMem_400be6, %struct.Memory** %MEMORY
  %loadBr_400be6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400be6 = icmp eq i8 %loadBr_400be6, 1
  br i1 %cmpBr_400be6, label %block_.L_400d27, label %block_400bec

block_400bec:                                     ; preds = %block_.L_400be0
  %loadMem_400bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i996 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i996
  %301 = sub i64 %300, 44
  %302 = load i64, i64* %PC.i995
  %303 = add i64 %302, 7
  store i64 %303, i64* %PC.i995
  %304 = inttoptr i64 %301 to i32*
  store i32 1, i32* %304
  store %struct.Memory* %loadMem_400bec, %struct.Memory** %MEMORY
  br label %block_.L_400bf3

block_.L_400bf3:                                  ; preds = %block_400bff, %block_400bec
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RAX.i993 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 15
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RBP.i994 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %RBP.i994
  %315 = sub i64 %314, 44
  %316 = load i64, i64* %PC.i992
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC.i992
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i993, align 8
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %EAX.i990 = bitcast %union.anon* %326 to i32*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %329 to i64*
  %330 = load i32, i32* %EAX.i990
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %RBP.i991
  %333 = sub i64 %332, 8
  %334 = load i64, i64* %PC.i989
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i989
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = sub i32 %330, %337
  %339 = icmp ult i32 %330, %337
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %340, i8* %341, align 1
  %342 = and i32 %338, 255
  %343 = call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %346, i8* %347, align 1
  %348 = xor i32 %337, %330
  %349 = xor i32 %348, %338
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %352, i8* %353, align 1
  %354 = icmp eq i32 %338, 0
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %355, i8* %356, align 1
  %357 = lshr i32 %338, 31
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %358, i8* %359, align 1
  %360 = lshr i32 %330, 31
  %361 = lshr i32 %337, 31
  %362 = xor i32 %361, %360
  %363 = xor i32 %357, %360
  %364 = add i32 %363, %362
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1
  store %struct.Memory* %loadMem_400bf6, %struct.Memory** %MEMORY
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %PC.i988
  %372 = add i64 %371, 283
  %373 = load i64, i64* %PC.i988
  %374 = add i64 %373, 6
  %375 = load i64, i64* %PC.i988
  %376 = add i64 %375, 6
  store i64 %376, i64* %PC.i988
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %378 = load i8, i8* %377, align 1
  %379 = icmp ne i8 %378, 0
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %381 = load i8, i8* %380, align 1
  %382 = icmp ne i8 %381, 0
  %383 = xor i1 %379, %382
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %BRANCH_TAKEN, align 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %387 = select i1 %383, i64 %374, i64 %372
  store i64 %387, i64* %386, align 8
  store %struct.Memory* %loadMem_400bf9, %struct.Memory** %MEMORY
  %loadBr_400bf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bf9 = icmp eq i8 %loadBr_400bf9, 1
  br i1 %cmpBr_400bf9, label %block_.L_400d14, label %block_400bff

block_400bff:                                     ; preds = %block_.L_400bf3
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RAX.i986 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i987 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i987
  %398 = sub i64 %397, 16
  %399 = load i64, i64* %PC.i985
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i985
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401
  store i64 %402, i64* %RAX.i986, align 8
  store %struct.Memory* %loadMem_400bff, %struct.Memory** %MEMORY
  %loadMem_400c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RCX.i983 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i984 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i984
  %413 = sub i64 %412, 40
  %414 = load i64, i64* %PC.i982
  %415 = add i64 %414, 4
  store i64 %415, i64* %PC.i982
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %RCX.i983, align 8
  store %struct.Memory* %loadMem_400c03, %struct.Memory** %MEMORY
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RCX.i981 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %RCX.i981
  %426 = load i64, i64* %PC.i980
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC.i980
  %428 = shl i64 %425, 12
  %429 = icmp slt i64 %428, 0
  %430 = shl i64 %428, 1
  store i64 %430, i64* %RCX.i981, align 8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %432 = zext i1 %429 to i8
  store i8 %432, i8* %431, align 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %434 = trunc i64 %430 to i32
  store i8 1, i8* %433, align 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %435, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %437 = icmp eq i64 %430, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %436, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %440 = lshr i64 %430, 63
  %441 = trunc i64 %440 to i8
  store i8 %441, i8* %439, align 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %442, align 1
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RAX.i978 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RCX.i979 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %RAX.i978
  %453 = load i64, i64* %RCX.i979
  %454 = load i64, i64* %PC.i977
  %455 = add i64 %454, 3
  store i64 %455, i64* %PC.i977
  %456 = add i64 %453, %452
  store i64 %456, i64* %RAX.i978, align 8
  %457 = icmp ult i64 %456, %452
  %458 = icmp ult i64 %456, %453
  %459 = or i1 %457, %458
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %460, i8* %461, align 1
  %462 = trunc i64 %456 to i32
  %463 = and i32 %462, 255
  %464 = call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %467, i8* %468, align 1
  %469 = xor i64 %453, %452
  %470 = xor i64 %469, %456
  %471 = lshr i64 %470, 4
  %472 = trunc i64 %471 to i8
  %473 = and i8 %472, 1
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %473, i8* %474, align 1
  %475 = icmp eq i64 %456, 0
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %476, i8* %477, align 1
  %478 = lshr i64 %456, 63
  %479 = trunc i64 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %479, i8* %480, align 1
  %481 = lshr i64 %452, 63
  %482 = lshr i64 %453, 63
  %483 = xor i64 %478, %481
  %484 = xor i64 %478, %482
  %485 = add i64 %483, %484
  %486 = icmp eq i64 %485, 2
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %487, i8* %488, align 1
  store %struct.Memory* %loadMem_400c0b, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 5
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RCX.i975 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i976 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %RBP.i976
  %499 = sub i64 %498, 44
  %500 = load i64, i64* %PC.i974
  %501 = add i64 %500, 4
  store i64 %501, i64* %PC.i974
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %RCX.i975, align 8
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RAX.i971 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %515 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %514, i64 0, i64 0
  %YMM0.i973 = bitcast %union.VectorReg* %515 to %"class.std::bitset"*
  %516 = bitcast %"class.std::bitset"* %YMM0.i973 to i8*
  %517 = load i64, i64* %RAX.i971
  %518 = load i64, i64* %RCX.i972
  %519 = mul i64 %518, 8
  %520 = add i64 %519, %517
  %521 = load i64, i64* %PC.i970
  %522 = add i64 %521, 5
  store i64 %522, i64* %PC.i970
  %523 = inttoptr i64 %520 to double*
  %524 = load double, double* %523
  %525 = bitcast i8* %516 to double*
  store double %524, double* %525, align 1
  %526 = getelementptr inbounds i8, i8* %516, i64 8
  %527 = bitcast i8* %526 to double*
  store double 0.000000e+00, double* %527, align 1
  store %struct.Memory* %loadMem_400c12, %struct.Memory** %MEMORY
  %loadMem_400c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RAX.i968 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 15
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RBP.i969
  %538 = sub i64 %537, 16
  %539 = load i64, i64* %PC.i967
  %540 = add i64 %539, 4
  store i64 %540, i64* %PC.i967
  %541 = inttoptr i64 %538 to i64*
  %542 = load i64, i64* %541
  store i64 %542, i64* %RAX.i968, align 8
  store %struct.Memory* %loadMem_400c17, %struct.Memory** %MEMORY
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 5
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RCX.i965 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 15
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %RBP.i966
  %553 = sub i64 %552, 40
  %554 = load i64, i64* %PC.i964
  %555 = add i64 %554, 4
  store i64 %555, i64* %PC.i964
  %556 = inttoptr i64 %553 to i32*
  %557 = load i32, i32* %556
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RCX.i965, align 8
  store %struct.Memory* %loadMem_400c1b, %struct.Memory** %MEMORY
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 5
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RCX.i963 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RCX.i963
  %566 = load i64, i64* %PC.i962
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i962
  %568 = shl i64 %565, 12
  %569 = icmp slt i64 %568, 0
  %570 = shl i64 %568, 1
  store i64 %570, i64* %RCX.i963, align 8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %572 = zext i1 %569 to i8
  store i8 %572, i8* %571, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %574 = trunc i64 %570 to i32
  store i8 1, i8* %573, align 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %575, align 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %577 = icmp eq i64 %570, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %576, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %580 = lshr i64 %570, 63
  %581 = trunc i64 %580 to i8
  store i8 %581, i8* %579, align 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %582, align 1
  store %struct.Memory* %loadMem_400c1f, %struct.Memory** %MEMORY
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RAX.i960 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RCX.i961 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RAX.i960
  %593 = load i64, i64* %RCX.i961
  %594 = load i64, i64* %PC.i959
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i959
  %596 = add i64 %593, %592
  store i64 %596, i64* %RAX.i960, align 8
  %597 = icmp ult i64 %596, %592
  %598 = icmp ult i64 %596, %593
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %600, i8* %601, align 1
  %602 = trunc i64 %596 to i32
  %603 = and i32 %602, 255
  %604 = call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %607, i8* %608, align 1
  %609 = xor i64 %593, %592
  %610 = xor i64 %609, %596
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %613, i8* %614, align 1
  %615 = icmp eq i64 %596, 0
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %616, i8* %617, align 1
  %618 = lshr i64 %596, 63
  %619 = trunc i64 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %619, i8* %620, align 1
  %621 = lshr i64 %592, 63
  %622 = lshr i64 %593, 63
  %623 = xor i64 %618, %621
  %624 = xor i64 %618, %622
  %625 = add i64 %623, %624
  %626 = icmp eq i64 %625, 2
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %627, i8* %628, align 1
  store %struct.Memory* %loadMem_400c23, %struct.Memory** %MEMORY
  %loadMem_400c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 7
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RDX.i957 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i958 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i958
  %639 = sub i64 %638, 44
  %640 = load i64, i64* %PC.i956
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC.i956
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RDX.i957, align 8
  store %struct.Memory* %loadMem_400c26, %struct.Memory** %MEMORY
  %loadMem_400c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 7
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RDX.i955 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RDX.i955
  %652 = load i64, i64* %PC.i954
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC.i954
  %654 = trunc i64 %651 to i32
  %655 = sub i32 %654, 1
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RDX.i955, align 8
  %657 = icmp ult i32 %654, 1
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %658, i8* %659, align 1
  %660 = and i32 %655, 255
  %661 = call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %664, i8* %665, align 1
  %666 = xor i64 1, %651
  %667 = trunc i64 %666 to i32
  %668 = xor i32 %667, %655
  %669 = lshr i32 %668, 4
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %671, i8* %672, align 1
  %673 = icmp eq i32 %655, 0
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %674, i8* %675, align 1
  %676 = lshr i32 %655, 31
  %677 = trunc i32 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %677, i8* %678, align 1
  %679 = lshr i32 %654, 31
  %680 = xor i32 %676, %679
  %681 = add i32 %680, %679
  %682 = icmp eq i32 %681, 2
  %683 = zext i1 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %683, i8* %684, align 1
  store %struct.Memory* %loadMem_400c29, %struct.Memory** %MEMORY
  %loadMem_400c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 7
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %EDX.i952 = bitcast %union.anon* %690 to i32*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RCX.i953 = bitcast %union.anon* %693 to i64*
  %694 = load i32, i32* %EDX.i952
  %695 = zext i32 %694 to i64
  %696 = load i64, i64* %PC.i951
  %697 = add i64 %696, 3
  store i64 %697, i64* %PC.i951
  %698 = shl i64 %695, 32
  %699 = ashr exact i64 %698, 32
  store i64 %699, i64* %RCX.i953, align 8
  store %struct.Memory* %loadMem_400c2c, %struct.Memory** %MEMORY
  %loadMem_400c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RAX.i948 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 5
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RCX.i949 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %709, i64 0, i64 1
  %YMM1.i950 = bitcast %union.VectorReg* %710 to %"class.std::bitset"*
  %711 = bitcast %"class.std::bitset"* %YMM1.i950 to i8*
  %712 = load i64, i64* %RAX.i948
  %713 = load i64, i64* %RCX.i949
  %714 = mul i64 %713, 8
  %715 = add i64 %714, %712
  %716 = load i64, i64* %PC.i947
  %717 = add i64 %716, 5
  store i64 %717, i64* %PC.i947
  %718 = inttoptr i64 %715 to double*
  %719 = load double, double* %718
  %720 = bitcast i8* %711 to double*
  store double %719, double* %720, align 1
  %721 = getelementptr inbounds i8, i8* %711, i64 8
  %722 = bitcast i8* %721 to double*
  store double 0.000000e+00, double* %722, align 1
  store %struct.Memory* %loadMem_400c2f, %struct.Memory** %MEMORY
  %loadMem_400c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RAX.i945 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 15
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RBP.i946
  %733 = sub i64 %732, 24
  %734 = load i64, i64* %PC.i944
  %735 = add i64 %734, 4
  store i64 %735, i64* %PC.i944
  %736 = inttoptr i64 %733 to i64*
  %737 = load i64, i64* %736
  store i64 %737, i64* %RAX.i945, align 8
  store %struct.Memory* %loadMem_400c34, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 5
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RCX.i942 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i943
  %748 = sub i64 %747, 40
  %749 = load i64, i64* %PC.i941
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i941
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RCX.i942, align 8
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RCX.i940 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RCX.i940
  %761 = load i64, i64* %PC.i939
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i939
  %763 = shl i64 %760, 12
  %764 = icmp slt i64 %763, 0
  %765 = shl i64 %763, 1
  store i64 %765, i64* %RCX.i940, align 8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %767 = zext i1 %764 to i8
  store i8 %767, i8* %766, align 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %769 = trunc i64 %765 to i32
  store i8 1, i8* %768, align 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %770, align 1
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %772 = icmp eq i64 %765, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %771, align 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %775 = lshr i64 %765, 63
  %776 = trunc i64 %775 to i8
  store i8 %776, i8* %774, align 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %777, align 1
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RCX.i938 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i937
  %788 = load i64, i64* %RCX.i938
  %789 = load i64, i64* %PC.i936
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i936
  %791 = add i64 %788, %787
  store i64 %791, i64* %RAX.i937, align 8
  %792 = icmp ult i64 %791, %787
  %793 = icmp ult i64 %791, %788
  %794 = or i1 %792, %793
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %795, i8* %796, align 1
  %797 = trunc i64 %791 to i32
  %798 = and i32 %797, 255
  %799 = call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %802, i8* %803, align 1
  %804 = xor i64 %788, %787
  %805 = xor i64 %804, %791
  %806 = lshr i64 %805, 4
  %807 = trunc i64 %806 to i8
  %808 = and i8 %807, 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %808, i8* %809, align 1
  %810 = icmp eq i64 %791, 0
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %811, i8* %812, align 1
  %813 = lshr i64 %791, 63
  %814 = trunc i64 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %814, i8* %815, align 1
  %816 = lshr i64 %787, 63
  %817 = lshr i64 %788, 63
  %818 = xor i64 %813, %816
  %819 = xor i64 %813, %817
  %820 = add i64 %818, %819
  %821 = icmp eq i64 %820, 2
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %822, i8* %823, align 1
  store %struct.Memory* %loadMem_400c40, %struct.Memory** %MEMORY
  %loadMem_400c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 5
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RCX.i934 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 15
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %RBP.i935
  %834 = sub i64 %833, 44
  %835 = load i64, i64* %PC.i933
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC.i933
  %837 = inttoptr i64 %834 to i32*
  %838 = load i32, i32* %837
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RCX.i934, align 8
  store %struct.Memory* %loadMem_400c43, %struct.Memory** %MEMORY
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 1
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 5
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RCX.i931 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %849, i64 0, i64 1
  %YMM1.i932 = bitcast %union.VectorReg* %850 to %"class.std::bitset"*
  %851 = bitcast %"class.std::bitset"* %YMM1.i932 to i8*
  %852 = bitcast %"class.std::bitset"* %YMM1.i932 to i8*
  %853 = load i64, i64* %RAX.i930
  %854 = load i64, i64* %RCX.i931
  %855 = mul i64 %854, 8
  %856 = add i64 %855, %853
  %857 = load i64, i64* %PC.i929
  %858 = add i64 %857, 5
  store i64 %858, i64* %PC.i929
  %859 = bitcast i8* %852 to double*
  %860 = load double, double* %859, align 1
  %861 = getelementptr inbounds i8, i8* %852, i64 8
  %862 = bitcast i8* %861 to i64*
  %863 = load i64, i64* %862, align 1
  %864 = inttoptr i64 %856 to double*
  %865 = load double, double* %864
  %866 = fmul double %860, %865
  %867 = bitcast i8* %851 to double*
  store double %866, double* %867, align 1
  %868 = getelementptr inbounds i8, i8* %851, i64 8
  %869 = bitcast i8* %868 to i64*
  store i64 %863, i64* %869, align 1
  store %struct.Memory* %loadMem_400c47, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i927 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i928
  %880 = sub i64 %879, 32
  %881 = load i64, i64* %PC.i926
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i926
  %883 = inttoptr i64 %880 to i64*
  %884 = load i64, i64* %883
  store i64 %884, i64* %RAX.i927, align 8
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 5
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RCX.i924 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i925
  %895 = sub i64 %894, 40
  %896 = load i64, i64* %PC.i923
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i923
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RCX.i924, align 8
  store %struct.Memory* %loadMem_400c50, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RCX.i922
  %908 = load i64, i64* %PC.i921
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i921
  %910 = shl i64 %907, 12
  %911 = icmp slt i64 %910, 0
  %912 = shl i64 %910, 1
  store i64 %912, i64* %RCX.i922, align 8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %914 = zext i1 %911 to i8
  store i8 %914, i8* %913, align 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %916 = trunc i64 %912 to i32
  store i8 1, i8* %915, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %917, align 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %919 = icmp eq i64 %912, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %918, align 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %922 = lshr i64 %912, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %921, align 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %924, align 1
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RAX.i919 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RCX.i920 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RAX.i919
  %935 = load i64, i64* %RCX.i920
  %936 = load i64, i64* %PC.i918
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i918
  %938 = add i64 %935, %934
  store i64 %938, i64* %RAX.i919, align 8
  %939 = icmp ult i64 %938, %934
  %940 = icmp ult i64 %938, %935
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = trunc i64 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i64 %935, %934
  %952 = xor i64 %951, %938
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i64 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i64 %938, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i64 %934, 63
  %964 = lshr i64 %935, 63
  %965 = xor i64 %960, %963
  %966 = xor i64 %960, %964
  %967 = add i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1
  store %struct.Memory* %loadMem_400c58, %struct.Memory** %MEMORY
  %loadMem_400c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 7
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RDX.i916 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i917
  %981 = sub i64 %980, 44
  %982 = load i64, i64* %PC.i915
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC.i915
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RDX.i916, align 8
  store %struct.Memory* %loadMem_400c5b, %struct.Memory** %MEMORY
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 7
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RDX.i914
  %994 = load i64, i64* %PC.i913
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i913
  %996 = trunc i64 %993 to i32
  %997 = sub i32 %996, 1
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RDX.i914, align 8
  %999 = icmp ult i32 %996, 1
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = and i32 %997, 255
  %1003 = call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1006, i8* %1007, align 1
  %1008 = xor i64 1, %993
  %1009 = trunc i64 %1008 to i32
  %1010 = xor i32 %1009, %997
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i32 %997, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i32 %997, 31
  %1019 = trunc i32 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i32 %996, 31
  %1022 = xor i32 %1018, %1021
  %1023 = add i32 %1022, %1021
  %1024 = icmp eq i32 %1023, 2
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1025, i8* %1026, align 1
  store %struct.Memory* %loadMem_400c5e, %struct.Memory** %MEMORY
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 7
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %EDX.i911 = bitcast %union.anon* %1032 to i32*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RCX.i912 = bitcast %union.anon* %1035 to i64*
  %1036 = load i32, i32* %EDX.i911
  %1037 = zext i32 %1036 to i64
  %1038 = load i64, i64* %PC.i910
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC.i910
  %1040 = shl i64 %1037, 32
  %1041 = ashr exact i64 %1040, 32
  store i64 %1041, i64* %RCX.i912, align 8
  store %struct.Memory* %loadMem_400c61, %struct.Memory** %MEMORY
  %loadMem_400c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i907 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1051, i64 0, i64 1
  %YMM1.i909 = bitcast %union.VectorReg* %1052 to %"class.std::bitset"*
  %1053 = bitcast %"class.std::bitset"* %YMM1.i909 to i8*
  %1054 = bitcast %"class.std::bitset"* %YMM1.i909 to i8*
  %1055 = load i64, i64* %RAX.i907
  %1056 = load i64, i64* %RCX.i908
  %1057 = mul i64 %1056, 8
  %1058 = add i64 %1057, %1055
  %1059 = load i64, i64* %PC.i906
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC.i906
  %1061 = bitcast i8* %1054 to double*
  %1062 = load double, double* %1061, align 1
  %1063 = getelementptr inbounds i8, i8* %1054, i64 8
  %1064 = bitcast i8* %1063 to i64*
  %1065 = load i64, i64* %1064, align 1
  %1066 = inttoptr i64 %1058 to double*
  %1067 = load double, double* %1066
  %1068 = fdiv double %1062, %1067
  %1069 = bitcast i8* %1053 to double*
  store double %1068, double* %1069, align 1
  %1070 = getelementptr inbounds i8, i8* %1053, i64 8
  %1071 = bitcast i8* %1070 to i64*
  store i64 %1065, i64* %1071, align 1
  store %struct.Memory* %loadMem_400c64, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1075, i64 0, i64 0
  %YMM0.i904 = bitcast %union.VectorReg* %1076 to %"class.std::bitset"*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1077, i64 0, i64 1
  %XMM1.i905 = bitcast %union.VectorReg* %1078 to %union.vec128_t*
  %1079 = bitcast %"class.std::bitset"* %YMM0.i904 to i8*
  %1080 = bitcast %"class.std::bitset"* %YMM0.i904 to i8*
  %1081 = bitcast %union.vec128_t* %XMM1.i905 to i8*
  %1082 = load i64, i64* %PC.i903
  %1083 = add i64 %1082, 4
  store i64 %1083, i64* %PC.i903
  %1084 = bitcast i8* %1080 to double*
  %1085 = load double, double* %1084, align 1
  %1086 = getelementptr inbounds i8, i8* %1080, i64 8
  %1087 = bitcast i8* %1086 to i64*
  %1088 = load i64, i64* %1087, align 1
  %1089 = bitcast i8* %1081 to double*
  %1090 = load double, double* %1089, align 1
  %1091 = fsub double %1085, %1090
  %1092 = bitcast i8* %1079 to double*
  store double %1091, double* %1092, align 1
  %1093 = getelementptr inbounds i8, i8* %1079, i64 8
  %1094 = bitcast i8* %1093 to i64*
  store i64 %1088, i64* %1094, align 1
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 1
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 15
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RBP.i902 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RBP.i902
  %1105 = sub i64 %1104, 16
  %1106 = load i64, i64* %PC.i900
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC.i900
  %1108 = inttoptr i64 %1105 to i64*
  %1109 = load i64, i64* %1108
  store i64 %1109, i64* %RAX.i901, align 8
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 5
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 15
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RBP.i899
  %1120 = sub i64 %1119, 40
  %1121 = load i64, i64* %PC.i897
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %PC.i897
  %1123 = inttoptr i64 %1120 to i32*
  %1124 = load i32, i32* %1123
  %1125 = sext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i898, align 8
  store %struct.Memory* %loadMem_400c71, %struct.Memory** %MEMORY
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 5
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RCX.i896 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %RCX.i896
  %1133 = load i64, i64* %PC.i895
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i895
  %1135 = shl i64 %1132, 12
  %1136 = icmp slt i64 %1135, 0
  %1137 = shl i64 %1135, 1
  store i64 %1137, i64* %RCX.i896, align 8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1139 = zext i1 %1136 to i8
  store i8 %1139, i8* %1138, align 1
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1141 = trunc i64 %1137 to i32
  store i8 1, i8* %1140, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1144 = icmp eq i64 %1137, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %1143, align 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1147 = lshr i64 %1137, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %1146, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1149, align 1
  store %struct.Memory* %loadMem_400c75, %struct.Memory** %MEMORY
  %loadMem_400c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RAX.i893 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 5
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RCX.i894 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RAX.i893
  %1160 = load i64, i64* %RCX.i894
  %1161 = load i64, i64* %PC.i892
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i892
  %1163 = add i64 %1160, %1159
  store i64 %1163, i64* %RAX.i893, align 8
  %1164 = icmp ult i64 %1163, %1159
  %1165 = icmp ult i64 %1163, %1160
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1167, i8* %1168, align 1
  %1169 = trunc i64 %1163 to i32
  %1170 = and i32 %1169, 255
  %1171 = call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1174, i8* %1175, align 1
  %1176 = xor i64 %1160, %1159
  %1177 = xor i64 %1176, %1163
  %1178 = lshr i64 %1177, 4
  %1179 = trunc i64 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1180, i8* %1181, align 1
  %1182 = icmp eq i64 %1163, 0
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i64 %1163, 63
  %1186 = trunc i64 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i64 %1159, 63
  %1189 = lshr i64 %1160, 63
  %1190 = xor i64 %1185, %1188
  %1191 = xor i64 %1185, %1189
  %1192 = add i64 %1190, %1191
  %1193 = icmp eq i64 %1192, 2
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1194, i8* %1195, align 1
  store %struct.Memory* %loadMem_400c79, %struct.Memory** %MEMORY
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 5
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 15
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RBP.i891
  %1206 = sub i64 %1205, 44
  %1207 = load i64, i64* %PC.i889
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %PC.i889
  %1209 = inttoptr i64 %1206 to i32*
  %1210 = load i32, i32* %1209
  %1211 = sext i32 %1210 to i64
  store i64 %1211, i64* %RCX.i890, align 8
  store %struct.Memory* %loadMem_400c7c, %struct.Memory** %MEMORY
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 1
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 5
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RCX.i887 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1221, i64 0, i64 0
  %XMM0.i888 = bitcast %union.VectorReg* %1222 to %union.vec128_t*
  %1223 = load i64, i64* %RAX.i886
  %1224 = load i64, i64* %RCX.i887
  %1225 = mul i64 %1224, 8
  %1226 = add i64 %1225, %1223
  %1227 = bitcast %union.vec128_t* %XMM0.i888 to i8*
  %1228 = load i64, i64* %PC.i885
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %PC.i885
  %1230 = bitcast i8* %1227 to double*
  %1231 = load double, double* %1230, align 1
  %1232 = inttoptr i64 %1226 to double*
  store double %1231, double* %1232
  store %struct.Memory* %loadMem_400c80, %struct.Memory** %MEMORY
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i884
  %1243 = sub i64 %1242, 32
  %1244 = load i64, i64* %PC.i882
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i882
  %1246 = inttoptr i64 %1243 to i64*
  %1247 = load i64, i64* %1246
  store i64 %1247, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_400c85, %struct.Memory** %MEMORY
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 5
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 15
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %RBP.i881
  %1258 = sub i64 %1257, 40
  %1259 = load i64, i64* %PC.i879
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %PC.i879
  %1261 = inttoptr i64 %1258 to i32*
  %1262 = load i32, i32* %1261
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX.i880, align 8
  store %struct.Memory* %loadMem_400c89, %struct.Memory** %MEMORY
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 5
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RCX.i878
  %1271 = load i64, i64* %PC.i877
  %1272 = add i64 %1271, 4
  store i64 %1272, i64* %PC.i877
  %1273 = shl i64 %1270, 12
  %1274 = icmp slt i64 %1273, 0
  %1275 = shl i64 %1273, 1
  store i64 %1275, i64* %RCX.i878, align 8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1277 = zext i1 %1274 to i8
  store i8 %1277, i8* %1276, align 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1279 = trunc i64 %1275 to i32
  store i8 1, i8* %1278, align 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1282 = icmp eq i64 %1275, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %1281, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1285 = lshr i64 %1275, 63
  %1286 = trunc i64 %1285 to i8
  store i8 %1286, i8* %1284, align 1
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1287, align 1
  store %struct.Memory* %loadMem_400c8d, %struct.Memory** %MEMORY
  %loadMem_400c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 1
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 5
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %RAX.i875
  %1298 = load i64, i64* %RCX.i876
  %1299 = load i64, i64* %PC.i874
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %PC.i874
  %1301 = add i64 %1298, %1297
  store i64 %1301, i64* %RAX.i875, align 8
  %1302 = icmp ult i64 %1301, %1297
  %1303 = icmp ult i64 %1301, %1298
  %1304 = or i1 %1302, %1303
  %1305 = zext i1 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1305, i8* %1306, align 1
  %1307 = trunc i64 %1301 to i32
  %1308 = and i32 %1307, 255
  %1309 = call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1312, i8* %1313, align 1
  %1314 = xor i64 %1298, %1297
  %1315 = xor i64 %1314, %1301
  %1316 = lshr i64 %1315, 4
  %1317 = trunc i64 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1318, i8* %1319, align 1
  %1320 = icmp eq i64 %1301, 0
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1321, i8* %1322, align 1
  %1323 = lshr i64 %1301, 63
  %1324 = trunc i64 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1324, i8* %1325, align 1
  %1326 = lshr i64 %1297, 63
  %1327 = lshr i64 %1298, 63
  %1328 = xor i64 %1323, %1326
  %1329 = xor i64 %1323, %1327
  %1330 = add i64 %1328, %1329
  %1331 = icmp eq i64 %1330, 2
  %1332 = zext i1 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1332, i8* %1333, align 1
  store %struct.Memory* %loadMem_400c91, %struct.Memory** %MEMORY
  %loadMem_400c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 33
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 5
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 15
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %RBP.i873
  %1344 = sub i64 %1343, 44
  %1345 = load i64, i64* %PC.i871
  %1346 = add i64 %1345, 4
  store i64 %1346, i64* %PC.i871
  %1347 = inttoptr i64 %1344 to i32*
  %1348 = load i32, i32* %1347
  %1349 = sext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_400c94, %struct.Memory** %MEMORY
  %loadMem_400c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RAX.i868 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 5
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RCX.i869 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1359, i64 0, i64 0
  %YMM0.i870 = bitcast %union.VectorReg* %1360 to %"class.std::bitset"*
  %1361 = bitcast %"class.std::bitset"* %YMM0.i870 to i8*
  %1362 = load i64, i64* %RAX.i868
  %1363 = load i64, i64* %RCX.i869
  %1364 = mul i64 %1363, 8
  %1365 = add i64 %1364, %1362
  %1366 = load i64, i64* %PC.i867
  %1367 = add i64 %1366, 5
  store i64 %1367, i64* %PC.i867
  %1368 = inttoptr i64 %1365 to double*
  %1369 = load double, double* %1368
  %1370 = bitcast i8* %1361 to double*
  store double %1369, double* %1370, align 1
  %1371 = getelementptr inbounds i8, i8* %1361, i64 8
  %1372 = bitcast i8* %1371 to double*
  store double 0.000000e+00, double* %1372, align 1
  store %struct.Memory* %loadMem_400c98, %struct.Memory** %MEMORY
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 15
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RBP.i866
  %1383 = sub i64 %1382, 24
  %1384 = load i64, i64* %PC.i864
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i864
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  store i64 %1387, i64* %RAX.i865, align 8
  store %struct.Memory* %loadMem_400c9d, %struct.Memory** %MEMORY
  %loadMem_400ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 5
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %RBP.i863
  %1398 = sub i64 %1397, 40
  %1399 = load i64, i64* %PC.i861
  %1400 = add i64 %1399, 4
  store i64 %1400, i64* %PC.i861
  %1401 = inttoptr i64 %1398 to i32*
  %1402 = load i32, i32* %1401
  %1403 = sext i32 %1402 to i64
  store i64 %1403, i64* %RCX.i862, align 8
  store %struct.Memory* %loadMem_400ca1, %struct.Memory** %MEMORY
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 5
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RCX.i860 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RCX.i860
  %1411 = load i64, i64* %PC.i859
  %1412 = add i64 %1411, 4
  store i64 %1412, i64* %PC.i859
  %1413 = shl i64 %1410, 12
  %1414 = icmp slt i64 %1413, 0
  %1415 = shl i64 %1413, 1
  store i64 %1415, i64* %RCX.i860, align 8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1417 = zext i1 %1414 to i8
  store i8 %1417, i8* %1416, align 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1419 = trunc i64 %1415 to i32
  store i8 1, i8* %1418, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1420, align 1
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1422 = icmp eq i64 %1415, 0
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %1421, align 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1425 = lshr i64 %1415, 63
  %1426 = trunc i64 %1425 to i8
  store i8 %1426, i8* %1424, align 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1427, align 1
  store %struct.Memory* %loadMem_400ca5, %struct.Memory** %MEMORY
  %loadMem_400ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 1
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 5
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RCX.i858 = bitcast %union.anon* %1436 to i64*
  %1437 = load i64, i64* %RAX.i857
  %1438 = load i64, i64* %RCX.i858
  %1439 = load i64, i64* %PC.i856
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %PC.i856
  %1441 = add i64 %1438, %1437
  store i64 %1441, i64* %RAX.i857, align 8
  %1442 = icmp ult i64 %1441, %1437
  %1443 = icmp ult i64 %1441, %1438
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1445, i8* %1446, align 1
  %1447 = trunc i64 %1441 to i32
  %1448 = and i32 %1447, 255
  %1449 = call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1452, i8* %1453, align 1
  %1454 = xor i64 %1438, %1437
  %1455 = xor i64 %1454, %1441
  %1456 = lshr i64 %1455, 4
  %1457 = trunc i64 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1458, i8* %1459, align 1
  %1460 = icmp eq i64 %1441, 0
  %1461 = zext i1 %1460 to i8
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1461, i8* %1462, align 1
  %1463 = lshr i64 %1441, 63
  %1464 = trunc i64 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1464, i8* %1465, align 1
  %1466 = lshr i64 %1437, 63
  %1467 = lshr i64 %1438, 63
  %1468 = xor i64 %1463, %1466
  %1469 = xor i64 %1463, %1467
  %1470 = add i64 %1468, %1469
  %1471 = icmp eq i64 %1470, 2
  %1472 = zext i1 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1472, i8* %1473, align 1
  store %struct.Memory* %loadMem_400ca9, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 5
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 15
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %RBP.i855
  %1484 = sub i64 %1483, 44
  %1485 = load i64, i64* %PC.i853
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %PC.i853
  %1487 = inttoptr i64 %1484 to i32*
  %1488 = load i32, i32* %1487
  %1489 = sext i32 %1488 to i64
  store i64 %1489, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 5
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RCX.i851 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1499, i64 0, i64 1
  %YMM1.i852 = bitcast %union.VectorReg* %1500 to %"class.std::bitset"*
  %1501 = bitcast %"class.std::bitset"* %YMM1.i852 to i8*
  %1502 = load i64, i64* %RAX.i850
  %1503 = load i64, i64* %RCX.i851
  %1504 = mul i64 %1503, 8
  %1505 = add i64 %1504, %1502
  %1506 = load i64, i64* %PC.i849
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %PC.i849
  %1508 = inttoptr i64 %1505 to double*
  %1509 = load double, double* %1508
  %1510 = bitcast i8* %1501 to double*
  store double %1509, double* %1510, align 1
  %1511 = getelementptr inbounds i8, i8* %1501, i64 8
  %1512 = bitcast i8* %1511 to double*
  store double 0.000000e+00, double* %1512, align 1
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RAX.i847 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 15
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RBP.i848 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %RBP.i848
  %1523 = sub i64 %1522, 24
  %1524 = load i64, i64* %PC.i846
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC.i846
  %1526 = inttoptr i64 %1523 to i64*
  %1527 = load i64, i64* %1526
  store i64 %1527, i64* %RAX.i847, align 8
  store %struct.Memory* %loadMem_400cb5, %struct.Memory** %MEMORY
  %loadMem_400cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 5
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i845 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i845
  %1538 = sub i64 %1537, 40
  %1539 = load i64, i64* %PC.i843
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i843
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i844, align 8
  store %struct.Memory* %loadMem_400cb9, %struct.Memory** %MEMORY
  %loadMem_400cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 5
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RCX.i842 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RCX.i842
  %1551 = load i64, i64* %PC.i841
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %PC.i841
  %1553 = shl i64 %1550, 12
  %1554 = icmp slt i64 %1553, 0
  %1555 = shl i64 %1553, 1
  store i64 %1555, i64* %RCX.i842, align 8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1557 = zext i1 %1554 to i8
  store i8 %1557, i8* %1556, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1559 = trunc i64 %1555 to i32
  store i8 1, i8* %1558, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1560, align 1
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1562 = icmp eq i64 %1555, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %1561, align 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1565 = lshr i64 %1555, 63
  %1566 = trunc i64 %1565 to i8
  store i8 %1566, i8* %1564, align 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1567, align 1
  store %struct.Memory* %loadMem_400cbd, %struct.Memory** %MEMORY
  %loadMem_400cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 1
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 5
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %RAX.i839
  %1578 = load i64, i64* %RCX.i840
  %1579 = load i64, i64* %PC.i838
  %1580 = add i64 %1579, 3
  store i64 %1580, i64* %PC.i838
  %1581 = add i64 %1578, %1577
  store i64 %1581, i64* %RAX.i839, align 8
  %1582 = icmp ult i64 %1581, %1577
  %1583 = icmp ult i64 %1581, %1578
  %1584 = or i1 %1582, %1583
  %1585 = zext i1 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1585, i8* %1586, align 1
  %1587 = trunc i64 %1581 to i32
  %1588 = and i32 %1587, 255
  %1589 = call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1592, i8* %1593, align 1
  %1594 = xor i64 %1578, %1577
  %1595 = xor i64 %1594, %1581
  %1596 = lshr i64 %1595, 4
  %1597 = trunc i64 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1598, i8* %1599, align 1
  %1600 = icmp eq i64 %1581, 0
  %1601 = zext i1 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1601, i8* %1602, align 1
  %1603 = lshr i64 %1581, 63
  %1604 = trunc i64 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1604, i8* %1605, align 1
  %1606 = lshr i64 %1577, 63
  %1607 = lshr i64 %1578, 63
  %1608 = xor i64 %1603, %1606
  %1609 = xor i64 %1603, %1607
  %1610 = add i64 %1608, %1609
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1612, i8* %1613, align 1
  store %struct.Memory* %loadMem_400cc1, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i836 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RBP.i837
  %1624 = sub i64 %1623, 44
  %1625 = load i64, i64* %PC.i835
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %PC.i835
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RCX.i836, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 1
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RAX.i832 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 5
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1639, i64 0, i64 1
  %YMM1.i834 = bitcast %union.VectorReg* %1640 to %"class.std::bitset"*
  %1641 = bitcast %"class.std::bitset"* %YMM1.i834 to i8*
  %1642 = bitcast %"class.std::bitset"* %YMM1.i834 to i8*
  %1643 = load i64, i64* %RAX.i832
  %1644 = load i64, i64* %RCX.i833
  %1645 = mul i64 %1644, 8
  %1646 = add i64 %1645, %1643
  %1647 = load i64, i64* %PC.i831
  %1648 = add i64 %1647, 5
  store i64 %1648, i64* %PC.i831
  %1649 = bitcast i8* %1642 to double*
  %1650 = load double, double* %1649, align 1
  %1651 = getelementptr inbounds i8, i8* %1642, i64 8
  %1652 = bitcast i8* %1651 to i64*
  %1653 = load i64, i64* %1652, align 1
  %1654 = inttoptr i64 %1646 to double*
  %1655 = load double, double* %1654
  %1656 = fmul double %1650, %1655
  %1657 = bitcast i8* %1641 to double*
  store double %1656, double* %1657, align 1
  %1658 = getelementptr inbounds i8, i8* %1641, i64 8
  %1659 = bitcast i8* %1658 to i64*
  store i64 %1653, i64* %1659, align 1
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 15
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %RBP.i830
  %1670 = sub i64 %1669, 32
  %1671 = load i64, i64* %PC.i828
  %1672 = add i64 %1671, 4
  store i64 %1672, i64* %PC.i828
  %1673 = inttoptr i64 %1670 to i64*
  %1674 = load i64, i64* %1673
  store i64 %1674, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_400ccd, %struct.Memory** %MEMORY
  %loadMem_400cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 5
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %RBP.i827
  %1685 = sub i64 %1684, 40
  %1686 = load i64, i64* %PC.i825
  %1687 = add i64 %1686, 4
  store i64 %1687, i64* %PC.i825
  %1688 = inttoptr i64 %1685 to i32*
  %1689 = load i32, i32* %1688
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RCX.i826, align 8
  store %struct.Memory* %loadMem_400cd1, %struct.Memory** %MEMORY
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 5
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %RCX.i824
  %1698 = load i64, i64* %PC.i823
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i823
  %1700 = shl i64 %1697, 12
  %1701 = icmp slt i64 %1700, 0
  %1702 = shl i64 %1700, 1
  store i64 %1702, i64* %RCX.i824, align 8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1704 = zext i1 %1701 to i8
  store i8 %1704, i8* %1703, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1706 = trunc i64 %1702 to i32
  store i8 1, i8* %1705, align 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1707, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1709 = icmp eq i64 %1702, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %1708, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1712 = lshr i64 %1702, 63
  %1713 = trunc i64 %1712 to i8
  store i8 %1713, i8* %1711, align 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1714, align 1
  store %struct.Memory* %loadMem_400cd5, %struct.Memory** %MEMORY
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 1
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 5
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RAX.i821
  %1725 = load i64, i64* %RCX.i822
  %1726 = load i64, i64* %PC.i820
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i820
  %1728 = add i64 %1725, %1724
  store i64 %1728, i64* %RAX.i821, align 8
  %1729 = icmp ult i64 %1728, %1724
  %1730 = icmp ult i64 %1728, %1725
  %1731 = or i1 %1729, %1730
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1732, i8* %1733, align 1
  %1734 = trunc i64 %1728 to i32
  %1735 = and i32 %1734, 255
  %1736 = call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1739, i8* %1740, align 1
  %1741 = xor i64 %1725, %1724
  %1742 = xor i64 %1741, %1728
  %1743 = lshr i64 %1742, 4
  %1744 = trunc i64 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1745, i8* %1746, align 1
  %1747 = icmp eq i64 %1728, 0
  %1748 = zext i1 %1747 to i8
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1748, i8* %1749, align 1
  %1750 = lshr i64 %1728, 63
  %1751 = trunc i64 %1750 to i8
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1751, i8* %1752, align 1
  %1753 = lshr i64 %1724, 63
  %1754 = lshr i64 %1725, 63
  %1755 = xor i64 %1750, %1753
  %1756 = xor i64 %1750, %1754
  %1757 = add i64 %1755, %1756
  %1758 = icmp eq i64 %1757, 2
  %1759 = zext i1 %1758 to i8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1759, i8* %1760, align 1
  store %struct.Memory* %loadMem_400cd9, %struct.Memory** %MEMORY
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 7
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RDX.i818 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %RBP.i819
  %1771 = sub i64 %1770, 44
  %1772 = load i64, i64* %PC.i817
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %PC.i817
  %1774 = inttoptr i64 %1771 to i32*
  %1775 = load i32, i32* %1774
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RDX.i818, align 8
  store %struct.Memory* %loadMem_400cdc, %struct.Memory** %MEMORY
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 7
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RDX.i816 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %RDX.i816
  %1784 = load i64, i64* %PC.i815
  %1785 = add i64 %1784, 3
  store i64 %1785, i64* %PC.i815
  %1786 = trunc i64 %1783 to i32
  %1787 = sub i32 %1786, 1
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RDX.i816, align 8
  %1789 = icmp ult i32 %1786, 1
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1790, i8* %1791, align 1
  %1792 = and i32 %1787, 255
  %1793 = call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1796, i8* %1797, align 1
  %1798 = xor i64 1, %1783
  %1799 = trunc i64 %1798 to i32
  %1800 = xor i32 %1799, %1787
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1803, i8* %1804, align 1
  %1805 = icmp eq i32 %1787, 0
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1787, 31
  %1809 = trunc i32 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1786, 31
  %1812 = xor i32 %1808, %1811
  %1813 = add i32 %1812, %1811
  %1814 = icmp eq i32 %1813, 2
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1815, i8* %1816, align 1
  store %struct.Memory* %loadMem_400cdf, %struct.Memory** %MEMORY
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 7
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %EDX.i813 = bitcast %union.anon* %1822 to i32*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 5
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %1825 to i64*
  %1826 = load i32, i32* %EDX.i813
  %1827 = zext i32 %1826 to i64
  %1828 = load i64, i64* %PC.i812
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %PC.i812
  %1830 = shl i64 %1827, 32
  %1831 = ashr exact i64 %1830, 32
  store i64 %1831, i64* %RCX.i814, align 8
  store %struct.Memory* %loadMem_400ce2, %struct.Memory** %MEMORY
  %loadMem_400ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RAX.i809 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 5
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1841, i64 0, i64 1
  %YMM1.i811 = bitcast %union.VectorReg* %1842 to %"class.std::bitset"*
  %1843 = bitcast %"class.std::bitset"* %YMM1.i811 to i8*
  %1844 = bitcast %"class.std::bitset"* %YMM1.i811 to i8*
  %1845 = load i64, i64* %RAX.i809
  %1846 = load i64, i64* %RCX.i810
  %1847 = mul i64 %1846, 8
  %1848 = add i64 %1847, %1845
  %1849 = load i64, i64* %PC.i808
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC.i808
  %1851 = bitcast i8* %1844 to double*
  %1852 = load double, double* %1851, align 1
  %1853 = getelementptr inbounds i8, i8* %1844, i64 8
  %1854 = bitcast i8* %1853 to i64*
  %1855 = load i64, i64* %1854, align 1
  %1856 = inttoptr i64 %1848 to double*
  %1857 = load double, double* %1856
  %1858 = fdiv double %1852, %1857
  %1859 = bitcast i8* %1843 to double*
  store double %1858, double* %1859, align 1
  %1860 = getelementptr inbounds i8, i8* %1843, i64 8
  %1861 = bitcast i8* %1860 to i64*
  store i64 %1855, i64* %1861, align 1
  store %struct.Memory* %loadMem_400ce5, %struct.Memory** %MEMORY
  %loadMem_400cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1865, i64 0, i64 0
  %YMM0.i806 = bitcast %union.VectorReg* %1866 to %"class.std::bitset"*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1867, i64 0, i64 1
  %XMM1.i807 = bitcast %union.VectorReg* %1868 to %union.vec128_t*
  %1869 = bitcast %"class.std::bitset"* %YMM0.i806 to i8*
  %1870 = bitcast %"class.std::bitset"* %YMM0.i806 to i8*
  %1871 = bitcast %union.vec128_t* %XMM1.i807 to i8*
  %1872 = load i64, i64* %PC.i805
  %1873 = add i64 %1872, 4
  store i64 %1873, i64* %PC.i805
  %1874 = bitcast i8* %1870 to double*
  %1875 = load double, double* %1874, align 1
  %1876 = getelementptr inbounds i8, i8* %1870, i64 8
  %1877 = bitcast i8* %1876 to i64*
  %1878 = load i64, i64* %1877, align 1
  %1879 = bitcast i8* %1871 to double*
  %1880 = load double, double* %1879, align 1
  %1881 = fsub double %1875, %1880
  %1882 = bitcast i8* %1869 to double*
  store double %1881, double* %1882, align 1
  %1883 = getelementptr inbounds i8, i8* %1869, i64 8
  %1884 = bitcast i8* %1883 to i64*
  store i64 %1878, i64* %1884, align 1
  store %struct.Memory* %loadMem_400cea, %struct.Memory** %MEMORY
  %loadMem_400cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 1
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 15
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RBP.i804
  %1895 = sub i64 %1894, 32
  %1896 = load i64, i64* %PC.i802
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC.i802
  %1898 = inttoptr i64 %1895 to i64*
  %1899 = load i64, i64* %1898
  store i64 %1899, i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_400cee, %struct.Memory** %MEMORY
  %loadMem_400cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 5
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RBP.i801
  %1910 = sub i64 %1909, 40
  %1911 = load i64, i64* %PC.i799
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %PC.i799
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913
  %1915 = sext i32 %1914 to i64
  store i64 %1915, i64* %RCX.i800, align 8
  store %struct.Memory* %loadMem_400cf2, %struct.Memory** %MEMORY
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 5
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RCX.i798
  %1923 = load i64, i64* %PC.i797
  %1924 = add i64 %1923, 4
  store i64 %1924, i64* %PC.i797
  %1925 = shl i64 %1922, 12
  %1926 = icmp slt i64 %1925, 0
  %1927 = shl i64 %1925, 1
  store i64 %1927, i64* %RCX.i798, align 8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1929 = zext i1 %1926 to i8
  store i8 %1929, i8* %1928, align 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1931 = trunc i64 %1927 to i32
  store i8 1, i8* %1930, align 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1932, align 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1934 = icmp eq i64 %1927, 0
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %1933, align 1
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1937 = lshr i64 %1927, 63
  %1938 = trunc i64 %1937 to i8
  store i8 %1938, i8* %1936, align 1
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1939, align 1
  store %struct.Memory* %loadMem_400cf6, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 1
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 5
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RAX.i795
  %1950 = load i64, i64* %RCX.i796
  %1951 = load i64, i64* %PC.i794
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC.i794
  %1953 = add i64 %1950, %1949
  store i64 %1953, i64* %RAX.i795, align 8
  %1954 = icmp ult i64 %1953, %1949
  %1955 = icmp ult i64 %1953, %1950
  %1956 = or i1 %1954, %1955
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1957, i8* %1958, align 1
  %1959 = trunc i64 %1953 to i32
  %1960 = and i32 %1959, 255
  %1961 = call i32 @llvm.ctpop.i32(i32 %1960)
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1964, i8* %1965, align 1
  %1966 = xor i64 %1950, %1949
  %1967 = xor i64 %1966, %1953
  %1968 = lshr i64 %1967, 4
  %1969 = trunc i64 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1970, i8* %1971, align 1
  %1972 = icmp eq i64 %1953, 0
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1973, i8* %1974, align 1
  %1975 = lshr i64 %1953, 63
  %1976 = trunc i64 %1975 to i8
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1976, i8* %1977, align 1
  %1978 = lshr i64 %1949, 63
  %1979 = lshr i64 %1950, 63
  %1980 = xor i64 %1975, %1978
  %1981 = xor i64 %1975, %1979
  %1982 = add i64 %1980, %1981
  %1983 = icmp eq i64 %1982, 2
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1984, i8* %1985, align 1
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 5
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %RBP.i793
  %1996 = sub i64 %1995, 44
  %1997 = load i64, i64* %PC.i791
  %1998 = add i64 %1997, 4
  store i64 %1998, i64* %PC.i791
  %1999 = inttoptr i64 %1996 to i32*
  %2000 = load i32, i32* %1999
  %2001 = sext i32 %2000 to i64
  store i64 %2001, i64* %RCX.i792, align 8
  store %struct.Memory* %loadMem_400cfd, %struct.Memory** %MEMORY
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 5
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2011, i64 0, i64 0
  %XMM0.i790 = bitcast %union.VectorReg* %2012 to %union.vec128_t*
  %2013 = load i64, i64* %RAX.i788
  %2014 = load i64, i64* %RCX.i789
  %2015 = mul i64 %2014, 8
  %2016 = add i64 %2015, %2013
  %2017 = bitcast %union.vec128_t* %XMM0.i790 to i8*
  %2018 = load i64, i64* %PC.i787
  %2019 = add i64 %2018, 5
  store i64 %2019, i64* %PC.i787
  %2020 = bitcast i8* %2017 to double*
  %2021 = load double, double* %2020, align 1
  %2022 = inttoptr i64 %2016 to double*
  store double %2021, double* %2022
  store %struct.Memory* %loadMem_400d01, %struct.Memory** %MEMORY
  %loadMem_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i786
  %2033 = sub i64 %2032, 44
  %2034 = load i64, i64* %PC.i784
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i784
  %2036 = inttoptr i64 %2033 to i32*
  %2037 = load i32, i32* %2036
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i785, align 8
  store %struct.Memory* %loadMem_400d06, %struct.Memory** %MEMORY
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 1
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %RAX.i783
  %2046 = load i64, i64* %PC.i782
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i782
  %2048 = trunc i64 %2045 to i32
  %2049 = add i32 1, %2048
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i783, align 8
  %2051 = icmp ult i32 %2049, %2048
  %2052 = icmp ult i32 %2049, 1
  %2053 = or i1 %2051, %2052
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2054, i8* %2055, align 1
  %2056 = and i32 %2049, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1
  %2062 = xor i64 1, %2045
  %2063 = trunc i64 %2062 to i32
  %2064 = xor i32 %2063, %2049
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2067, i8* %2068, align 1
  %2069 = icmp eq i32 %2049, 0
  %2070 = zext i1 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i32 %2049, 31
  %2073 = trunc i32 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2073, i8* %2074, align 1
  %2075 = lshr i32 %2048, 31
  %2076 = xor i32 %2072, %2075
  %2077 = add i32 %2076, %2072
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2079, i8* %2080, align 1
  store %struct.Memory* %loadMem_400d09, %struct.Memory** %MEMORY
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 1
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %EAX.i780 = bitcast %union.anon* %2086 to i32*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 15
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %2089 to i64*
  %2090 = load i64, i64* %RBP.i781
  %2091 = sub i64 %2090, 44
  %2092 = load i32, i32* %EAX.i780
  %2093 = zext i32 %2092 to i64
  %2094 = load i64, i64* %PC.i779
  %2095 = add i64 %2094, 3
  store i64 %2095, i64* %PC.i779
  %2096 = inttoptr i64 %2091 to i32*
  store i32 %2092, i32* %2096
  store %struct.Memory* %loadMem_400d0c, %struct.Memory** %MEMORY
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %PC.i778
  %2101 = add i64 %2100, -284
  %2102 = load i64, i64* %PC.i778
  %2103 = add i64 %2102, 5
  store i64 %2103, i64* %PC.i778
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2101, i64* %2104, align 8
  store %struct.Memory* %loadMem_400d0f, %struct.Memory** %MEMORY
  br label %block_.L_400bf3

block_.L_400d14:                                  ; preds = %block_.L_400bf3
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %2107 to i64*
  %2108 = load i64, i64* %PC.i777
  %2109 = add i64 %2108, 5
  %2110 = load i64, i64* %PC.i777
  %2111 = add i64 %2110, 5
  store i64 %2111, i64* %PC.i777
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2109, i64* %2112, align 8
  store %struct.Memory* %loadMem_400d14, %struct.Memory** %MEMORY
  br label %block_.L_400d19

block_.L_400d19:                                  ; preds = %block_.L_400d14
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 1
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 15
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RBP.i776
  %2123 = sub i64 %2122, 40
  %2124 = load i64, i64* %PC.i774
  %2125 = add i64 %2124, 3
  store i64 %2125, i64* %PC.i774
  %2126 = inttoptr i64 %2123 to i32*
  %2127 = load i32, i32* %2126
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RAX.i773
  %2136 = load i64, i64* %PC.i772
  %2137 = add i64 %2136, 3
  store i64 %2137, i64* %PC.i772
  %2138 = trunc i64 %2135 to i32
  %2139 = add i32 1, %2138
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RAX.i773, align 8
  %2141 = icmp ult i32 %2139, %2138
  %2142 = icmp ult i32 %2139, 1
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2144, i8* %2145, align 1
  %2146 = and i32 %2139, 255
  %2147 = call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2150, i8* %2151, align 1
  %2152 = xor i64 1, %2135
  %2153 = trunc i64 %2152 to i32
  %2154 = xor i32 %2153, %2139
  %2155 = lshr i32 %2154, 4
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2157, i8* %2158, align 1
  %2159 = icmp eq i32 %2139, 0
  %2160 = zext i1 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2160, i8* %2161, align 1
  %2162 = lshr i32 %2139, 31
  %2163 = trunc i32 %2162 to i8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2163, i8* %2164, align 1
  %2165 = lshr i32 %2138, 31
  %2166 = xor i32 %2162, %2165
  %2167 = add i32 %2166, %2162
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2169, i8* %2170, align 1
  store %struct.Memory* %loadMem_400d1c, %struct.Memory** %MEMORY
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 1
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %EAX.i770 = bitcast %union.anon* %2176 to i32*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 15
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RBP.i771
  %2181 = sub i64 %2180, 40
  %2182 = load i32, i32* %EAX.i770
  %2183 = zext i32 %2182 to i64
  %2184 = load i64, i64* %PC.i769
  %2185 = add i64 %2184, 3
  store i64 %2185, i64* %PC.i769
  %2186 = inttoptr i64 %2181 to i32*
  store i32 %2182, i32* %2186
  store %struct.Memory* %loadMem_400d1f, %struct.Memory** %MEMORY
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %PC.i768
  %2191 = add i64 %2190, -322
  %2192 = load i64, i64* %PC.i768
  %2193 = add i64 %2192, 5
  store i64 %2193, i64* %PC.i768
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2191, i64* %2194, align 8
  store %struct.Memory* %loadMem_400d22, %struct.Memory** %MEMORY
  br label %block_.L_400be0

block_.L_400d27:                                  ; preds = %block_.L_400be0
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 15
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RBP.i767
  %2202 = sub i64 %2201, 40
  %2203 = load i64, i64* %PC.i766
  %2204 = add i64 %2203, 7
  store i64 %2204, i64* %PC.i766
  %2205 = inttoptr i64 %2202 to i32*
  store i32 0, i32* %2205
  store %struct.Memory* %loadMem_400d27, %struct.Memory** %MEMORY
  br label %block_.L_400d2e

block_.L_400d2e:                                  ; preds = %block_400d3a, %block_.L_400d27
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i765
  %2216 = sub i64 %2215, 40
  %2217 = load i64, i64* %PC.i763
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC.i763
  %2219 = inttoptr i64 %2216 to i32*
  %2220 = load i32, i32* %2219
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RAX.i764, align 8
  store %struct.Memory* %loadMem_400d2e, %struct.Memory** %MEMORY
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 1
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %EAX.i761 = bitcast %union.anon* %2227 to i32*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 15
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %2230 to i64*
  %2231 = load i32, i32* %EAX.i761
  %2232 = zext i32 %2231 to i64
  %2233 = load i64, i64* %RBP.i762
  %2234 = sub i64 %2233, 8
  %2235 = load i64, i64* %PC.i760
  %2236 = add i64 %2235, 3
  store i64 %2236, i64* %PC.i760
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
  store %struct.Memory* %loadMem_400d31, %struct.Memory** %MEMORY
  %loadMem_400d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i759
  %2273 = add i64 %2272, 107
  %2274 = load i64, i64* %PC.i759
  %2275 = add i64 %2274, 6
  %2276 = load i64, i64* %PC.i759
  %2277 = add i64 %2276, 6
  store i64 %2277, i64* %PC.i759
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2279 = load i8, i8* %2278, align 1
  %2280 = icmp ne i8 %2279, 0
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2282 = load i8, i8* %2281, align 1
  %2283 = icmp ne i8 %2282, 0
  %2284 = xor i1 %2280, %2283
  %2285 = xor i1 %2284, true
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %BRANCH_TAKEN, align 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2288 = select i1 %2284, i64 %2275, i64 %2273
  store i64 %2288, i64* %2287, align 8
  store %struct.Memory* %loadMem_400d34, %struct.Memory** %MEMORY
  %loadBr_400d34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d34 = icmp eq i8 %loadBr_400d34, 1
  br i1 %cmpBr_400d34, label %block_.L_400d9f, label %block_400d3a

block_400d3a:                                     ; preds = %block_.L_400d2e
  %loadMem_400d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i758
  %2299 = sub i64 %2298, 16
  %2300 = load i64, i64* %PC.i756
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i756
  %2302 = inttoptr i64 %2299 to i64*
  %2303 = load i64, i64* %2302
  store i64 %2303, i64* %RAX.i757, align 8
  store %struct.Memory* %loadMem_400d3a, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 5
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RCX.i754 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i755
  %2314 = sub i64 %2313, 40
  %2315 = load i64, i64* %PC.i753
  %2316 = add i64 %2315, 4
  store i64 %2316, i64* %PC.i753
  %2317 = inttoptr i64 %2314 to i32*
  %2318 = load i32, i32* %2317
  %2319 = sext i32 %2318 to i64
  store i64 %2319, i64* %RCX.i754, align 8
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i752
  %2327 = load i64, i64* %PC.i751
  %2328 = add i64 %2327, 4
  store i64 %2328, i64* %PC.i751
  %2329 = shl i64 %2326, 12
  %2330 = icmp slt i64 %2329, 0
  %2331 = shl i64 %2329, 1
  store i64 %2331, i64* %RCX.i752, align 8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2333 = zext i1 %2330 to i8
  store i8 %2333, i8* %2332, align 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2335 = trunc i64 %2331 to i32
  store i8 1, i8* %2334, align 1
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2336, align 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2338 = icmp eq i64 %2331, 0
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %2337, align 1
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2341 = lshr i64 %2331, 63
  %2342 = trunc i64 %2341 to i8
  store i8 %2342, i8* %2340, align 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2343, align 1
  store %struct.Memory* %loadMem_400d42, %struct.Memory** %MEMORY
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 1
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 5
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RAX.i749
  %2354 = load i64, i64* %RCX.i750
  %2355 = load i64, i64* %PC.i748
  %2356 = add i64 %2355, 3
  store i64 %2356, i64* %PC.i748
  %2357 = add i64 %2354, %2353
  store i64 %2357, i64* %RAX.i749, align 8
  %2358 = icmp ult i64 %2357, %2353
  %2359 = icmp ult i64 %2357, %2354
  %2360 = or i1 %2358, %2359
  %2361 = zext i1 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2361, i8* %2362, align 1
  %2363 = trunc i64 %2357 to i32
  %2364 = and i32 %2363, 255
  %2365 = call i32 @llvm.ctpop.i32(i32 %2364)
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2368, i8* %2369, align 1
  %2370 = xor i64 %2354, %2353
  %2371 = xor i64 %2370, %2357
  %2372 = lshr i64 %2371, 4
  %2373 = trunc i64 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2374, i8* %2375, align 1
  %2376 = icmp eq i64 %2357, 0
  %2377 = zext i1 %2376 to i8
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2377, i8* %2378, align 1
  %2379 = lshr i64 %2357, 63
  %2380 = trunc i64 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2380, i8* %2381, align 1
  %2382 = lshr i64 %2353, 63
  %2383 = lshr i64 %2354, 63
  %2384 = xor i64 %2379, %2382
  %2385 = xor i64 %2379, %2383
  %2386 = add i64 %2384, %2385
  %2387 = icmp eq i64 %2386, 2
  %2388 = zext i1 %2387 to i8
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2388, i8* %2389, align 1
  store %struct.Memory* %loadMem_400d46, %struct.Memory** %MEMORY
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 7
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RDX.i746 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 15
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RBP.i747
  %2400 = sub i64 %2399, 8
  %2401 = load i64, i64* %PC.i745
  %2402 = add i64 %2401, 3
  store i64 %2402, i64* %PC.i745
  %2403 = inttoptr i64 %2400 to i32*
  %2404 = load i32, i32* %2403
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RDX.i746, align 8
  store %struct.Memory* %loadMem_400d49, %struct.Memory** %MEMORY
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 7
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %RDX.i744
  %2413 = load i64, i64* %PC.i743
  %2414 = add i64 %2413, 3
  store i64 %2414, i64* %PC.i743
  %2415 = trunc i64 %2412 to i32
  %2416 = sub i32 %2415, 1
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RDX.i744, align 8
  %2418 = icmp ult i32 %2415, 1
  %2419 = zext i1 %2418 to i8
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2419, i8* %2420, align 1
  %2421 = and i32 %2416, 255
  %2422 = call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2425, i8* %2426, align 1
  %2427 = xor i64 1, %2412
  %2428 = trunc i64 %2427 to i32
  %2429 = xor i32 %2428, %2416
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2432, i8* %2433, align 1
  %2434 = icmp eq i32 %2416, 0
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2435, i8* %2436, align 1
  %2437 = lshr i32 %2416, 31
  %2438 = trunc i32 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2438, i8* %2439, align 1
  %2440 = lshr i32 %2415, 31
  %2441 = xor i32 %2437, %2440
  %2442 = add i32 %2441, %2440
  %2443 = icmp eq i32 %2442, 2
  %2444 = zext i1 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2444, i8* %2445, align 1
  store %struct.Memory* %loadMem_400d4c, %struct.Memory** %MEMORY
  %loadMem_400d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %EDX.i741 = bitcast %union.anon* %2451 to i32*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 5
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %2454 to i64*
  %2455 = load i32, i32* %EDX.i741
  %2456 = zext i32 %2455 to i64
  %2457 = load i64, i64* %PC.i740
  %2458 = add i64 %2457, 3
  store i64 %2458, i64* %PC.i740
  %2459 = shl i64 %2456, 32
  %2460 = ashr exact i64 %2459, 32
  store i64 %2460, i64* %RCX.i742, align 8
  store %struct.Memory* %loadMem_400d4f, %struct.Memory** %MEMORY
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 1
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 5
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2470, i64 0, i64 0
  %YMM0.i739 = bitcast %union.VectorReg* %2471 to %"class.std::bitset"*
  %2472 = bitcast %"class.std::bitset"* %YMM0.i739 to i8*
  %2473 = load i64, i64* %RAX.i737
  %2474 = load i64, i64* %RCX.i738
  %2475 = mul i64 %2474, 8
  %2476 = add i64 %2475, %2473
  %2477 = load i64, i64* %PC.i736
  %2478 = add i64 %2477, 5
  store i64 %2478, i64* %PC.i736
  %2479 = inttoptr i64 %2476 to double*
  %2480 = load double, double* %2479
  %2481 = bitcast i8* %2472 to double*
  store double %2480, double* %2481, align 1
  %2482 = getelementptr inbounds i8, i8* %2472, i64 8
  %2483 = bitcast i8* %2482 to double*
  store double 0.000000e+00, double* %2483, align 1
  store %struct.Memory* %loadMem_400d52, %struct.Memory** %MEMORY
  %loadMem_400d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 15
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RBP.i735
  %2494 = sub i64 %2493, 32
  %2495 = load i64, i64* %PC.i733
  %2496 = add i64 %2495, 4
  store i64 %2496, i64* %PC.i733
  %2497 = inttoptr i64 %2494 to i64*
  %2498 = load i64, i64* %2497
  store i64 %2498, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_400d57, %struct.Memory** %MEMORY
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 5
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i732
  %2509 = sub i64 %2508, 40
  %2510 = load i64, i64* %PC.i730
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i730
  %2512 = inttoptr i64 %2509 to i32*
  %2513 = load i32, i32* %2512
  %2514 = sext i32 %2513 to i64
  store i64 %2514, i64* %RCX.i731, align 8
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 5
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RCX.i729
  %2522 = load i64, i64* %PC.i728
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %PC.i728
  %2524 = shl i64 %2521, 12
  %2525 = icmp slt i64 %2524, 0
  %2526 = shl i64 %2524, 1
  store i64 %2526, i64* %RCX.i729, align 8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2528 = zext i1 %2525 to i8
  store i8 %2528, i8* %2527, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2530 = trunc i64 %2526 to i32
  store i8 1, i8* %2529, align 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2531, align 1
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2533 = icmp eq i64 %2526, 0
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %2532, align 1
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2536 = lshr i64 %2526, 63
  %2537 = trunc i64 %2536 to i8
  store i8 %2537, i8* %2535, align 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2538, align 1
  store %struct.Memory* %loadMem_400d5f, %struct.Memory** %MEMORY
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 1
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 5
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %2547 to i64*
  %2548 = load i64, i64* %RAX.i726
  %2549 = load i64, i64* %RCX.i727
  %2550 = load i64, i64* %PC.i725
  %2551 = add i64 %2550, 3
  store i64 %2551, i64* %PC.i725
  %2552 = add i64 %2549, %2548
  store i64 %2552, i64* %RAX.i726, align 8
  %2553 = icmp ult i64 %2552, %2548
  %2554 = icmp ult i64 %2552, %2549
  %2555 = or i1 %2553, %2554
  %2556 = zext i1 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2556, i8* %2557, align 1
  %2558 = trunc i64 %2552 to i32
  %2559 = and i32 %2558, 255
  %2560 = call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2563, i8* %2564, align 1
  %2565 = xor i64 %2549, %2548
  %2566 = xor i64 %2565, %2552
  %2567 = lshr i64 %2566, 4
  %2568 = trunc i64 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2569, i8* %2570, align 1
  %2571 = icmp eq i64 %2552, 0
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2572, i8* %2573, align 1
  %2574 = lshr i64 %2552, 63
  %2575 = trunc i64 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2575, i8* %2576, align 1
  %2577 = lshr i64 %2548, 63
  %2578 = lshr i64 %2549, 63
  %2579 = xor i64 %2574, %2577
  %2580 = xor i64 %2574, %2578
  %2581 = add i64 %2579, %2580
  %2582 = icmp eq i64 %2581, 2
  %2583 = zext i1 %2582 to i8
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2583, i8* %2584, align 1
  store %struct.Memory* %loadMem_400d63, %struct.Memory** %MEMORY
  %loadMem_400d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 7
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RDX.i723 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 15
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RBP.i724
  %2595 = sub i64 %2594, 8
  %2596 = load i64, i64* %PC.i722
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC.i722
  %2598 = inttoptr i64 %2595 to i32*
  %2599 = load i32, i32* %2598
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RDX.i723, align 8
  store %struct.Memory* %loadMem_400d66, %struct.Memory** %MEMORY
  %loadMem_400d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 7
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RDX.i721 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RDX.i721
  %2608 = load i64, i64* %PC.i720
  %2609 = add i64 %2608, 3
  store i64 %2609, i64* %PC.i720
  %2610 = trunc i64 %2607 to i32
  %2611 = sub i32 %2610, 1
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RDX.i721, align 8
  %2613 = icmp ult i32 %2610, 1
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2614, i8* %2615, align 1
  %2616 = and i32 %2611, 255
  %2617 = call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2620, i8* %2621, align 1
  %2622 = xor i64 1, %2607
  %2623 = trunc i64 %2622 to i32
  %2624 = xor i32 %2623, %2611
  %2625 = lshr i32 %2624, 4
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2627, i8* %2628, align 1
  %2629 = icmp eq i32 %2611, 0
  %2630 = zext i1 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i32 %2611, 31
  %2633 = trunc i32 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2633, i8* %2634, align 1
  %2635 = lshr i32 %2610, 31
  %2636 = xor i32 %2632, %2635
  %2637 = add i32 %2636, %2635
  %2638 = icmp eq i32 %2637, 2
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2639, i8* %2640, align 1
  store %struct.Memory* %loadMem_400d69, %struct.Memory** %MEMORY
  %loadMem_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 7
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %EDX.i718 = bitcast %union.anon* %2646 to i32*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 5
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2649 to i64*
  %2650 = load i32, i32* %EDX.i718
  %2651 = zext i32 %2650 to i64
  %2652 = load i64, i64* %PC.i717
  %2653 = add i64 %2652, 3
  store i64 %2653, i64* %PC.i717
  %2654 = shl i64 %2651, 32
  %2655 = ashr exact i64 %2654, 32
  store i64 %2655, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_400d6c, %struct.Memory** %MEMORY
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 5
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2665, i64 0, i64 0
  %YMM0.i716 = bitcast %union.VectorReg* %2666 to %"class.std::bitset"*
  %2667 = bitcast %"class.std::bitset"* %YMM0.i716 to i8*
  %2668 = bitcast %"class.std::bitset"* %YMM0.i716 to i8*
  %2669 = load i64, i64* %RAX.i714
  %2670 = load i64, i64* %RCX.i715
  %2671 = mul i64 %2670, 8
  %2672 = add i64 %2671, %2669
  %2673 = load i64, i64* %PC.i713
  %2674 = add i64 %2673, 5
  store i64 %2674, i64* %PC.i713
  %2675 = bitcast i8* %2668 to double*
  %2676 = load double, double* %2675, align 1
  %2677 = getelementptr inbounds i8, i8* %2668, i64 8
  %2678 = bitcast i8* %2677 to i64*
  %2679 = load i64, i64* %2678, align 1
  %2680 = inttoptr i64 %2672 to double*
  %2681 = load double, double* %2680
  %2682 = fdiv double %2676, %2681
  %2683 = bitcast i8* %2667 to double*
  store double %2682, double* %2683, align 1
  %2684 = getelementptr inbounds i8, i8* %2667, i64 8
  %2685 = bitcast i8* %2684 to i64*
  store i64 %2679, i64* %2685, align 1
  store %struct.Memory* %loadMem_400d6f, %struct.Memory** %MEMORY
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 1
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 15
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RBP.i712
  %2696 = sub i64 %2695, 16
  %2697 = load i64, i64* %PC.i710
  %2698 = add i64 %2697, 4
  store i64 %2698, i64* %PC.i710
  %2699 = inttoptr i64 %2696 to i64*
  %2700 = load i64, i64* %2699
  store i64 %2700, i64* %RAX.i711, align 8
  store %struct.Memory* %loadMem_400d74, %struct.Memory** %MEMORY
  %loadMem_400d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 5
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i709
  %2711 = sub i64 %2710, 40
  %2712 = load i64, i64* %PC.i707
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i707
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i708, align 8
  store %struct.Memory* %loadMem_400d78, %struct.Memory** %MEMORY
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RCX.i706
  %2724 = load i64, i64* %PC.i705
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %PC.i705
  %2726 = shl i64 %2723, 12
  %2727 = icmp slt i64 %2726, 0
  %2728 = shl i64 %2726, 1
  store i64 %2728, i64* %RCX.i706, align 8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2730 = zext i1 %2727 to i8
  store i8 %2730, i8* %2729, align 1
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2732 = trunc i64 %2728 to i32
  store i8 1, i8* %2731, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2733, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2735 = icmp eq i64 %2728, 0
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %2734, align 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2738 = lshr i64 %2728, 63
  %2739 = trunc i64 %2738 to i8
  store i8 %2739, i8* %2737, align 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2740, align 1
  store %struct.Memory* %loadMem_400d7c, %struct.Memory** %MEMORY
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 1
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 5
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %RAX.i703
  %2751 = load i64, i64* %RCX.i704
  %2752 = load i64, i64* %PC.i702
  %2753 = add i64 %2752, 3
  store i64 %2753, i64* %PC.i702
  %2754 = add i64 %2751, %2750
  store i64 %2754, i64* %RAX.i703, align 8
  %2755 = icmp ult i64 %2754, %2750
  %2756 = icmp ult i64 %2754, %2751
  %2757 = or i1 %2755, %2756
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2758, i8* %2759, align 1
  %2760 = trunc i64 %2754 to i32
  %2761 = and i32 %2760, 255
  %2762 = call i32 @llvm.ctpop.i32(i32 %2761)
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = xor i8 %2764, 1
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2765, i8* %2766, align 1
  %2767 = xor i64 %2751, %2750
  %2768 = xor i64 %2767, %2754
  %2769 = lshr i64 %2768, 4
  %2770 = trunc i64 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2771, i8* %2772, align 1
  %2773 = icmp eq i64 %2754, 0
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i64 %2754, 63
  %2777 = trunc i64 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2777, i8* %2778, align 1
  %2779 = lshr i64 %2750, 63
  %2780 = lshr i64 %2751, 63
  %2781 = xor i64 %2776, %2779
  %2782 = xor i64 %2776, %2780
  %2783 = add i64 %2781, %2782
  %2784 = icmp eq i64 %2783, 2
  %2785 = zext i1 %2784 to i8
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2785, i8* %2786, align 1
  store %struct.Memory* %loadMem_400d80, %struct.Memory** %MEMORY
  %loadMem_400d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 7
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 15
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %RBP.i701
  %2797 = sub i64 %2796, 8
  %2798 = load i64, i64* %PC.i699
  %2799 = add i64 %2798, 3
  store i64 %2799, i64* %PC.i699
  %2800 = inttoptr i64 %2797 to i32*
  %2801 = load i32, i32* %2800
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RDX.i700, align 8
  store %struct.Memory* %loadMem_400d83, %struct.Memory** %MEMORY
  %loadMem_400d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 7
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RDX.i698 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RDX.i698
  %2810 = load i64, i64* %PC.i697
  %2811 = add i64 %2810, 3
  store i64 %2811, i64* %PC.i697
  %2812 = trunc i64 %2809 to i32
  %2813 = sub i32 %2812, 1
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RDX.i698, align 8
  %2815 = icmp ult i32 %2812, 1
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2816, i8* %2817, align 1
  %2818 = and i32 %2813, 255
  %2819 = call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2822, i8* %2823, align 1
  %2824 = xor i64 1, %2809
  %2825 = trunc i64 %2824 to i32
  %2826 = xor i32 %2825, %2813
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2829, i8* %2830, align 1
  %2831 = icmp eq i32 %2813, 0
  %2832 = zext i1 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2813, 31
  %2835 = trunc i32 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i32 %2812, 31
  %2838 = xor i32 %2834, %2837
  %2839 = add i32 %2838, %2837
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2841, i8* %2842, align 1
  store %struct.Memory* %loadMem_400d86, %struct.Memory** %MEMORY
  %loadMem_400d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 7
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %EDX.i695 = bitcast %union.anon* %2848 to i32*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 5
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %2851 to i64*
  %2852 = load i32, i32* %EDX.i695
  %2853 = zext i32 %2852 to i64
  %2854 = load i64, i64* %PC.i694
  %2855 = add i64 %2854, 3
  store i64 %2855, i64* %PC.i694
  %2856 = shl i64 %2853, 32
  %2857 = ashr exact i64 %2856, 32
  store i64 %2857, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_400d89, %struct.Memory** %MEMORY
  %loadMem_400d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 1
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 5
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RCX.i692 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2867, i64 0, i64 0
  %XMM0.i693 = bitcast %union.VectorReg* %2868 to %union.vec128_t*
  %2869 = load i64, i64* %RAX.i691
  %2870 = load i64, i64* %RCX.i692
  %2871 = mul i64 %2870, 8
  %2872 = add i64 %2871, %2869
  %2873 = bitcast %union.vec128_t* %XMM0.i693 to i8*
  %2874 = load i64, i64* %PC.i690
  %2875 = add i64 %2874, 5
  store i64 %2875, i64* %PC.i690
  %2876 = bitcast i8* %2873 to double*
  %2877 = load double, double* %2876, align 1
  %2878 = inttoptr i64 %2872 to double*
  store double %2877, double* %2878
  store %struct.Memory* %loadMem_400d8c, %struct.Memory** %MEMORY
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 1
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 15
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %RBP.i689
  %2889 = sub i64 %2888, 40
  %2890 = load i64, i64* %PC.i687
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i687
  %2892 = inttoptr i64 %2889 to i32*
  %2893 = load i32, i32* %2892
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_400d91, %struct.Memory** %MEMORY
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 1
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %RAX.i686
  %2902 = load i64, i64* %PC.i685
  %2903 = add i64 %2902, 3
  store i64 %2903, i64* %PC.i685
  %2904 = trunc i64 %2901 to i32
  %2905 = add i32 1, %2904
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RAX.i686, align 8
  %2907 = icmp ult i32 %2905, %2904
  %2908 = icmp ult i32 %2905, 1
  %2909 = or i1 %2907, %2908
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2910, i8* %2911, align 1
  %2912 = and i32 %2905, 255
  %2913 = call i32 @llvm.ctpop.i32(i32 %2912)
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  %2916 = xor i8 %2915, 1
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2916, i8* %2917, align 1
  %2918 = xor i64 1, %2901
  %2919 = trunc i64 %2918 to i32
  %2920 = xor i32 %2919, %2905
  %2921 = lshr i32 %2920, 4
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2923, i8* %2924, align 1
  %2925 = icmp eq i32 %2905, 0
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2926, i8* %2927, align 1
  %2928 = lshr i32 %2905, 31
  %2929 = trunc i32 %2928 to i8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2929, i8* %2930, align 1
  %2931 = lshr i32 %2904, 31
  %2932 = xor i32 %2928, %2931
  %2933 = add i32 %2932, %2928
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2935, i8* %2936, align 1
  store %struct.Memory* %loadMem_400d94, %struct.Memory** %MEMORY
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 1
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %EAX.i683 = bitcast %union.anon* %2942 to i32*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i684
  %2947 = sub i64 %2946, 40
  %2948 = load i32, i32* %EAX.i683
  %2949 = zext i32 %2948 to i64
  %2950 = load i64, i64* %PC.i682
  %2951 = add i64 %2950, 3
  store i64 %2951, i64* %PC.i682
  %2952 = inttoptr i64 %2947 to i32*
  store i32 %2948, i32* %2952
  store %struct.Memory* %loadMem_400d97, %struct.Memory** %MEMORY
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %PC.i681
  %2957 = add i64 %2956, -108
  %2958 = load i64, i64* %PC.i681
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %PC.i681
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2957, i64* %2960, align 8
  store %struct.Memory* %loadMem_400d9a, %struct.Memory** %MEMORY
  br label %block_.L_400d2e

block_.L_400d9f:                                  ; preds = %block_.L_400d2e
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 15
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RBP.i680
  %2968 = sub i64 %2967, 40
  %2969 = load i64, i64* %PC.i679
  %2970 = add i64 %2969, 7
  store i64 %2970, i64* %PC.i679
  %2971 = inttoptr i64 %2968 to i32*
  store i32 0, i32* %2971
  store %struct.Memory* %loadMem_400d9f, %struct.Memory** %MEMORY
  br label %block_.L_400da6

block_.L_400da6:                                  ; preds = %block_.L_400e84, %block_.L_400d9f
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 15
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %RBP.i678
  %2982 = sub i64 %2981, 40
  %2983 = load i64, i64* %PC.i676
  %2984 = add i64 %2983, 3
  store i64 %2984, i64* %PC.i676
  %2985 = inttoptr i64 %2982 to i32*
  %2986 = load i32, i32* %2985
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RAX.i677, align 8
  store %struct.Memory* %loadMem_400da6, %struct.Memory** %MEMORY
  %loadMem_400da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 33
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 1
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %EAX.i674 = bitcast %union.anon* %2993 to i32*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 15
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2996 to i64*
  %2997 = load i32, i32* %EAX.i674
  %2998 = zext i32 %2997 to i64
  %2999 = load i64, i64* %RBP.i675
  %3000 = sub i64 %2999, 8
  %3001 = load i64, i64* %PC.i673
  %3002 = add i64 %3001, 3
  store i64 %3002, i64* %PC.i673
  %3003 = inttoptr i64 %3000 to i32*
  %3004 = load i32, i32* %3003
  %3005 = sub i32 %2997, %3004
  %3006 = icmp ult i32 %2997, %3004
  %3007 = zext i1 %3006 to i8
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3007, i8* %3008, align 1
  %3009 = and i32 %3005, 255
  %3010 = call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3013, i8* %3014, align 1
  %3015 = xor i32 %3004, %2997
  %3016 = xor i32 %3015, %3005
  %3017 = lshr i32 %3016, 4
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3019, i8* %3020, align 1
  %3021 = icmp eq i32 %3005, 0
  %3022 = zext i1 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3022, i8* %3023, align 1
  %3024 = lshr i32 %3005, 31
  %3025 = trunc i32 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3025, i8* %3026, align 1
  %3027 = lshr i32 %2997, 31
  %3028 = lshr i32 %3004, 31
  %3029 = xor i32 %3028, %3027
  %3030 = xor i32 %3024, %3027
  %3031 = add i32 %3030, %3029
  %3032 = icmp eq i32 %3031, 2
  %3033 = zext i1 %3032 to i8
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3033, i8* %3034, align 1
  store %struct.Memory* %loadMem_400da9, %struct.Memory** %MEMORY
  %loadMem_400dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %3037 to i64*
  %3038 = load i64, i64* %PC.i672
  %3039 = add i64 %3038, 230
  %3040 = load i64, i64* %PC.i672
  %3041 = add i64 %3040, 6
  %3042 = load i64, i64* %PC.i672
  %3043 = add i64 %3042, 6
  store i64 %3043, i64* %PC.i672
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3045 = load i8, i8* %3044, align 1
  %3046 = icmp ne i8 %3045, 0
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3048 = load i8, i8* %3047, align 1
  %3049 = icmp ne i8 %3048, 0
  %3050 = xor i1 %3046, %3049
  %3051 = xor i1 %3050, true
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %BRANCH_TAKEN, align 1
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3054 = select i1 %3050, i64 %3041, i64 %3039
  store i64 %3054, i64* %3053, align 8
  store %struct.Memory* %loadMem_400dac, %struct.Memory** %MEMORY
  %loadBr_400dac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dac = icmp eq i8 %loadBr_400dac, 1
  br i1 %cmpBr_400dac, label %block_.L_400e92, label %block_400db2

block_400db2:                                     ; preds = %block_.L_400da6
  %loadMem_400db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 15
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %RBP.i671
  %3062 = sub i64 %3061, 44
  %3063 = load i64, i64* %PC.i670
  %3064 = add i64 %3063, 7
  store i64 %3064, i64* %PC.i670
  %3065 = inttoptr i64 %3062 to i32*
  store i32 0, i32* %3065
  store %struct.Memory* %loadMem_400db2, %struct.Memory** %MEMORY
  br label %block_.L_400db9

block_.L_400db9:                                  ; preds = %block_400dca, %block_400db2
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 1
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i669
  %3076 = sub i64 %3075, 44
  %3077 = load i64, i64* %PC.i667
  %3078 = add i64 %3077, 3
  store i64 %3078, i64* %PC.i667
  %3079 = inttoptr i64 %3076 to i32*
  %3080 = load i32, i32* %3079
  %3081 = zext i32 %3080 to i64
  store i64 %3081, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_400db9, %struct.Memory** %MEMORY
  %loadMem_400dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 5
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 15
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %RBP.i666
  %3092 = sub i64 %3091, 8
  %3093 = load i64, i64* %PC.i664
  %3094 = add i64 %3093, 3
  store i64 %3094, i64* %PC.i664
  %3095 = inttoptr i64 %3092 to i32*
  %3096 = load i32, i32* %3095
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RCX.i665, align 8
  store %struct.Memory* %loadMem_400dbc, %struct.Memory** %MEMORY
  %loadMem_400dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 5
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %RCX.i663
  %3105 = load i64, i64* %PC.i662
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i662
  %3107 = trunc i64 %3104 to i32
  %3108 = sub i32 %3107, 2
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i663, align 8
  %3110 = icmp ult i32 %3107, 2
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3111, i8* %3112, align 1
  %3113 = and i32 %3108, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = xor i64 2, %3104
  %3120 = trunc i64 %3119 to i32
  %3121 = xor i32 %3120, %3108
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i32 %3108, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i32 %3108, 31
  %3130 = trunc i32 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3107, 31
  %3133 = xor i32 %3129, %3132
  %3134 = add i32 %3133, %3132
  %3135 = icmp eq i32 %3134, 2
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3136, i8* %3137, align 1
  store %struct.Memory* %loadMem_400dbf, %struct.Memory** %MEMORY
  %loadMem_400dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 1
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %3143 to i32*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 5
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %ECX.i661 = bitcast %union.anon* %3146 to i32*
  %3147 = load i32, i32* %EAX.i660
  %3148 = zext i32 %3147 to i64
  %3149 = load i32, i32* %ECX.i661
  %3150 = zext i32 %3149 to i64
  %3151 = load i64, i64* %PC.i659
  %3152 = add i64 %3151, 2
  store i64 %3152, i64* %PC.i659
  %3153 = sub i32 %3147, %3149
  %3154 = icmp ult i32 %3147, %3149
  %3155 = zext i1 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3155, i8* %3156, align 1
  %3157 = and i32 %3153, 255
  %3158 = call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3161, i8* %3162, align 1
  %3163 = xor i64 %3150, %3148
  %3164 = trunc i64 %3163 to i32
  %3165 = xor i32 %3164, %3153
  %3166 = lshr i32 %3165, 4
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3168, i8* %3169, align 1
  %3170 = icmp eq i32 %3153, 0
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3171, i8* %3172, align 1
  %3173 = lshr i32 %3153, 31
  %3174 = trunc i32 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3147, 31
  %3177 = lshr i32 %3149, 31
  %3178 = xor i32 %3177, %3176
  %3179 = xor i32 %3173, %3176
  %3180 = add i32 %3179, %3178
  %3181 = icmp eq i32 %3180, 2
  %3182 = zext i1 %3181 to i8
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3182, i8* %3183, align 1
  store %struct.Memory* %loadMem_400dc2, %struct.Memory** %MEMORY
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %PC.i658
  %3188 = add i64 %3187, 187
  %3189 = load i64, i64* %PC.i658
  %3190 = add i64 %3189, 6
  %3191 = load i64, i64* %PC.i658
  %3192 = add i64 %3191, 6
  store i64 %3192, i64* %PC.i658
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3194 = load i8, i8* %3193, align 1
  %3195 = icmp ne i8 %3194, 0
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3197 = load i8, i8* %3196, align 1
  %3198 = icmp ne i8 %3197, 0
  %3199 = xor i1 %3195, %3198
  %3200 = xor i1 %3199, true
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %BRANCH_TAKEN, align 1
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3203 = select i1 %3199, i64 %3190, i64 %3188
  store i64 %3203, i64* %3202, align 8
  store %struct.Memory* %loadMem_400dc4, %struct.Memory** %MEMORY
  %loadBr_400dc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dc4 = icmp eq i8 %loadBr_400dc4, 1
  br i1 %cmpBr_400dc4, label %block_.L_400e7f, label %block_400dca

block_400dca:                                     ; preds = %block_.L_400db9
  %loadMem_400dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 1
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 15
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %RBP.i657
  %3214 = sub i64 %3213, 16
  %3215 = load i64, i64* %PC.i655
  %3216 = add i64 %3215, 4
  store i64 %3216, i64* %PC.i655
  %3217 = inttoptr i64 %3214 to i64*
  %3218 = load i64, i64* %3217
  store i64 %3218, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_400dca, %struct.Memory** %MEMORY
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 5
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i654
  %3229 = sub i64 %3228, 40
  %3230 = load i64, i64* %PC.i652
  %3231 = add i64 %3230, 4
  store i64 %3231, i64* %PC.i652
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = sext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i653, align 8
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadMem_400dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 5
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RCX.i651
  %3242 = load i64, i64* %PC.i650
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i650
  %3244 = shl i64 %3241, 12
  %3245 = icmp slt i64 %3244, 0
  %3246 = shl i64 %3244, 1
  store i64 %3246, i64* %RCX.i651, align 8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3248 = zext i1 %3245 to i8
  store i8 %3248, i8* %3247, align 1
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3250 = trunc i64 %3246 to i32
  store i8 1, i8* %3249, align 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3251, align 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3253 = icmp eq i64 %3246, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %3252, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3256 = lshr i64 %3246, 63
  %3257 = trunc i64 %3256 to i8
  store i8 %3257, i8* %3255, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3258, align 1
  store %struct.Memory* %loadMem_400dd2, %struct.Memory** %MEMORY
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 5
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RAX.i648
  %3269 = load i64, i64* %RCX.i649
  %3270 = load i64, i64* %PC.i647
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i647
  %3272 = add i64 %3269, %3268
  store i64 %3272, i64* %RAX.i648, align 8
  %3273 = icmp ult i64 %3272, %3268
  %3274 = icmp ult i64 %3272, %3269
  %3275 = or i1 %3273, %3274
  %3276 = zext i1 %3275 to i8
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3276, i8* %3277, align 1
  %3278 = trunc i64 %3272 to i32
  %3279 = and i32 %3278, 255
  %3280 = call i32 @llvm.ctpop.i32(i32 %3279)
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3283, i8* %3284, align 1
  %3285 = xor i64 %3269, %3268
  %3286 = xor i64 %3285, %3272
  %3287 = lshr i64 %3286, 4
  %3288 = trunc i64 %3287 to i8
  %3289 = and i8 %3288, 1
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3289, i8* %3290, align 1
  %3291 = icmp eq i64 %3272, 0
  %3292 = zext i1 %3291 to i8
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3292, i8* %3293, align 1
  %3294 = lshr i64 %3272, 63
  %3295 = trunc i64 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3295, i8* %3296, align 1
  %3297 = lshr i64 %3268, 63
  %3298 = lshr i64 %3269, 63
  %3299 = xor i64 %3294, %3297
  %3300 = xor i64 %3294, %3298
  %3301 = add i64 %3299, %3300
  %3302 = icmp eq i64 %3301, 2
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3303, i8* %3304, align 1
  store %struct.Memory* %loadMem_400dd6, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 7
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i646
  %3315 = sub i64 %3314, 8
  %3316 = load i64, i64* %PC.i644
  %3317 = add i64 %3316, 3
  store i64 %3317, i64* %PC.i644
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = zext i32 %3319 to i64
  store i64 %3320, i64* %RDX.i645, align 8
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  %loadMem_400ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 7
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RDX.i643 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RDX.i643
  %3328 = load i64, i64* %PC.i642
  %3329 = add i64 %3328, 3
  store i64 %3329, i64* %PC.i642
  %3330 = trunc i64 %3327 to i32
  %3331 = sub i32 %3330, 2
  %3332 = zext i32 %3331 to i64
  store i64 %3332, i64* %RDX.i643, align 8
  %3333 = icmp ult i32 %3330, 2
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3334, i8* %3335, align 1
  %3336 = and i32 %3331, 255
  %3337 = call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3340, i8* %3341, align 1
  %3342 = xor i64 2, %3327
  %3343 = trunc i64 %3342 to i32
  %3344 = xor i32 %3343, %3331
  %3345 = lshr i32 %3344, 4
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3347, i8* %3348, align 1
  %3349 = icmp eq i32 %3331, 0
  %3350 = zext i1 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3350, i8* %3351, align 1
  %3352 = lshr i32 %3331, 31
  %3353 = trunc i32 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i32 %3330, 31
  %3356 = xor i32 %3352, %3355
  %3357 = add i32 %3356, %3355
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3359, i8* %3360, align 1
  store %struct.Memory* %loadMem_400ddc, %struct.Memory** %MEMORY
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 7
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 15
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RDX.i640
  %3371 = load i64, i64* %RBP.i641
  %3372 = sub i64 %3371, 44
  %3373 = load i64, i64* %PC.i639
  %3374 = add i64 %3373, 3
  store i64 %3374, i64* %PC.i639
  %3375 = trunc i64 %3370 to i32
  %3376 = inttoptr i64 %3372 to i32*
  %3377 = load i32, i32* %3376
  %3378 = sub i32 %3375, %3377
  %3379 = zext i32 %3378 to i64
  store i64 %3379, i64* %RDX.i640, align 8
  %3380 = icmp ult i32 %3375, %3377
  %3381 = zext i1 %3380 to i8
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3381, i8* %3382, align 1
  %3383 = and i32 %3378, 255
  %3384 = call i32 @llvm.ctpop.i32(i32 %3383)
  %3385 = trunc i32 %3384 to i8
  %3386 = and i8 %3385, 1
  %3387 = xor i8 %3386, 1
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3387, i8* %3388, align 1
  %3389 = xor i32 %3377, %3375
  %3390 = xor i32 %3389, %3378
  %3391 = lshr i32 %3390, 4
  %3392 = trunc i32 %3391 to i8
  %3393 = and i8 %3392, 1
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3393, i8* %3394, align 1
  %3395 = icmp eq i32 %3378, 0
  %3396 = zext i1 %3395 to i8
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3396, i8* %3397, align 1
  %3398 = lshr i32 %3378, 31
  %3399 = trunc i32 %3398 to i8
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3399, i8* %3400, align 1
  %3401 = lshr i32 %3375, 31
  %3402 = lshr i32 %3377, 31
  %3403 = xor i32 %3402, %3401
  %3404 = xor i32 %3398, %3401
  %3405 = add i32 %3404, %3403
  %3406 = icmp eq i32 %3405, 2
  %3407 = zext i1 %3406 to i8
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3407, i8* %3408, align 1
  store %struct.Memory* %loadMem_400ddf, %struct.Memory** %MEMORY
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 7
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %EDX.i637 = bitcast %union.anon* %3414 to i32*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 5
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %3417 to i64*
  %3418 = load i32, i32* %EDX.i637
  %3419 = zext i32 %3418 to i64
  %3420 = load i64, i64* %PC.i636
  %3421 = add i64 %3420, 3
  store i64 %3421, i64* %PC.i636
  %3422 = shl i64 %3419, 32
  %3423 = ashr exact i64 %3422, 32
  store i64 %3423, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_400de2, %struct.Memory** %MEMORY
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 1
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 5
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3433, i64 0, i64 0
  %YMM0.i635 = bitcast %union.VectorReg* %3434 to %"class.std::bitset"*
  %3435 = bitcast %"class.std::bitset"* %YMM0.i635 to i8*
  %3436 = load i64, i64* %RAX.i633
  %3437 = load i64, i64* %RCX.i634
  %3438 = mul i64 %3437, 8
  %3439 = add i64 %3438, %3436
  %3440 = load i64, i64* %PC.i632
  %3441 = add i64 %3440, 5
  store i64 %3441, i64* %PC.i632
  %3442 = inttoptr i64 %3439 to double*
  %3443 = load double, double* %3442
  %3444 = bitcast i8* %3435 to double*
  store double %3443, double* %3444, align 1
  %3445 = getelementptr inbounds i8, i8* %3435, i64 8
  %3446 = bitcast i8* %3445 to double*
  store double 0.000000e+00, double* %3446, align 1
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 1
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 15
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %RBP.i631
  %3457 = sub i64 %3456, 16
  %3458 = load i64, i64* %PC.i629
  %3459 = add i64 %3458, 4
  store i64 %3459, i64* %PC.i629
  %3460 = inttoptr i64 %3457 to i64*
  %3461 = load i64, i64* %3460
  store i64 %3461, i64* %RAX.i630, align 8
  store %struct.Memory* %loadMem_400dea, %struct.Memory** %MEMORY
  %loadMem_400dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 5
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 15
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %RBP.i628
  %3472 = sub i64 %3471, 40
  %3473 = load i64, i64* %PC.i626
  %3474 = add i64 %3473, 4
  store i64 %3474, i64* %PC.i626
  %3475 = inttoptr i64 %3472 to i32*
  %3476 = load i32, i32* %3475
  %3477 = sext i32 %3476 to i64
  store i64 %3477, i64* %RCX.i627, align 8
  store %struct.Memory* %loadMem_400dee, %struct.Memory** %MEMORY
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 5
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RCX.i625
  %3485 = load i64, i64* %PC.i624
  %3486 = add i64 %3485, 4
  store i64 %3486, i64* %PC.i624
  %3487 = shl i64 %3484, 12
  %3488 = icmp slt i64 %3487, 0
  %3489 = shl i64 %3487, 1
  store i64 %3489, i64* %RCX.i625, align 8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3491 = zext i1 %3488 to i8
  store i8 %3491, i8* %3490, align 1
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3493 = trunc i64 %3489 to i32
  store i8 1, i8* %3492, align 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3494, align 1
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3496 = icmp eq i64 %3489, 0
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %3495, align 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3499 = lshr i64 %3489, 63
  %3500 = trunc i64 %3499 to i8
  store i8 %3500, i8* %3498, align 1
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3501, align 1
  store %struct.Memory* %loadMem_400df2, %struct.Memory** %MEMORY
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 1
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 5
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %3510 to i64*
  %3511 = load i64, i64* %RAX.i622
  %3512 = load i64, i64* %RCX.i623
  %3513 = load i64, i64* %PC.i621
  %3514 = add i64 %3513, 3
  store i64 %3514, i64* %PC.i621
  %3515 = add i64 %3512, %3511
  store i64 %3515, i64* %RAX.i622, align 8
  %3516 = icmp ult i64 %3515, %3511
  %3517 = icmp ult i64 %3515, %3512
  %3518 = or i1 %3516, %3517
  %3519 = zext i1 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3519, i8* %3520, align 1
  %3521 = trunc i64 %3515 to i32
  %3522 = and i32 %3521, 255
  %3523 = call i32 @llvm.ctpop.i32(i32 %3522)
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = xor i8 %3525, 1
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3526, i8* %3527, align 1
  %3528 = xor i64 %3512, %3511
  %3529 = xor i64 %3528, %3515
  %3530 = lshr i64 %3529, 4
  %3531 = trunc i64 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3532, i8* %3533, align 1
  %3534 = icmp eq i64 %3515, 0
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3535, i8* %3536, align 1
  %3537 = lshr i64 %3515, 63
  %3538 = trunc i64 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3538, i8* %3539, align 1
  %3540 = lshr i64 %3511, 63
  %3541 = lshr i64 %3512, 63
  %3542 = xor i64 %3537, %3540
  %3543 = xor i64 %3537, %3541
  %3544 = add i64 %3542, %3543
  %3545 = icmp eq i64 %3544, 2
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3546, i8* %3547, align 1
  store %struct.Memory* %loadMem_400df6, %struct.Memory** %MEMORY
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 7
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 15
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RBP.i620
  %3558 = sub i64 %3557, 8
  %3559 = load i64, i64* %PC.i618
  %3560 = add i64 %3559, 3
  store i64 %3560, i64* %PC.i618
  %3561 = inttoptr i64 %3558 to i32*
  %3562 = load i32, i32* %3561
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %RDX.i619, align 8
  store %struct.Memory* %loadMem_400df9, %struct.Memory** %MEMORY
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 7
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RDX.i617 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %RDX.i617
  %3571 = load i64, i64* %PC.i616
  %3572 = add i64 %3571, 3
  store i64 %3572, i64* %PC.i616
  %3573 = trunc i64 %3570 to i32
  %3574 = sub i32 %3573, 2
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RDX.i617, align 8
  %3576 = icmp ult i32 %3573, 2
  %3577 = zext i1 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3577, i8* %3578, align 1
  %3579 = and i32 %3574, 255
  %3580 = call i32 @llvm.ctpop.i32(i32 %3579)
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  %3583 = xor i8 %3582, 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3583, i8* %3584, align 1
  %3585 = xor i64 2, %3570
  %3586 = trunc i64 %3585 to i32
  %3587 = xor i32 %3586, %3574
  %3588 = lshr i32 %3587, 4
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3590, i8* %3591, align 1
  %3592 = icmp eq i32 %3574, 0
  %3593 = zext i1 %3592 to i8
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3593, i8* %3594, align 1
  %3595 = lshr i32 %3574, 31
  %3596 = trunc i32 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3596, i8* %3597, align 1
  %3598 = lshr i32 %3573, 31
  %3599 = xor i32 %3595, %3598
  %3600 = add i32 %3599, %3598
  %3601 = icmp eq i32 %3600, 2
  %3602 = zext i1 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3602, i8* %3603, align 1
  store %struct.Memory* %loadMem_400dfc, %struct.Memory** %MEMORY
  %loadMem_400dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 7
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 15
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3612 to i64*
  %3613 = load i64, i64* %RDX.i614
  %3614 = load i64, i64* %RBP.i615
  %3615 = sub i64 %3614, 44
  %3616 = load i64, i64* %PC.i613
  %3617 = add i64 %3616, 3
  store i64 %3617, i64* %PC.i613
  %3618 = trunc i64 %3613 to i32
  %3619 = inttoptr i64 %3615 to i32*
  %3620 = load i32, i32* %3619
  %3621 = sub i32 %3618, %3620
  %3622 = zext i32 %3621 to i64
  store i64 %3622, i64* %RDX.i614, align 8
  %3623 = icmp ult i32 %3618, %3620
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3624, i8* %3625, align 1
  %3626 = and i32 %3621, 255
  %3627 = call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3630, i8* %3631, align 1
  %3632 = xor i32 %3620, %3618
  %3633 = xor i32 %3632, %3621
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3636, i8* %3637, align 1
  %3638 = icmp eq i32 %3621, 0
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3639, i8* %3640, align 1
  %3641 = lshr i32 %3621, 31
  %3642 = trunc i32 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3642, i8* %3643, align 1
  %3644 = lshr i32 %3618, 31
  %3645 = lshr i32 %3620, 31
  %3646 = xor i32 %3645, %3644
  %3647 = xor i32 %3641, %3644
  %3648 = add i32 %3647, %3646
  %3649 = icmp eq i32 %3648, 2
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3650, i8* %3651, align 1
  store %struct.Memory* %loadMem_400dff, %struct.Memory** %MEMORY
  %loadMem_400e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 7
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %3657 to i64*
  %3658 = load i64, i64* %RDX.i612
  %3659 = load i64, i64* %PC.i611
  %3660 = add i64 %3659, 3
  store i64 %3660, i64* %PC.i611
  %3661 = trunc i64 %3658 to i32
  %3662 = sub i32 %3661, 1
  %3663 = zext i32 %3662 to i64
  store i64 %3663, i64* %RDX.i612, align 8
  %3664 = icmp ult i32 %3661, 1
  %3665 = zext i1 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3665, i8* %3666, align 1
  %3667 = and i32 %3662, 255
  %3668 = call i32 @llvm.ctpop.i32(i32 %3667)
  %3669 = trunc i32 %3668 to i8
  %3670 = and i8 %3669, 1
  %3671 = xor i8 %3670, 1
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3671, i8* %3672, align 1
  %3673 = xor i64 1, %3658
  %3674 = trunc i64 %3673 to i32
  %3675 = xor i32 %3674, %3662
  %3676 = lshr i32 %3675, 4
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3678, i8* %3679, align 1
  %3680 = icmp eq i32 %3662, 0
  %3681 = zext i1 %3680 to i8
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3681, i8* %3682, align 1
  %3683 = lshr i32 %3662, 31
  %3684 = trunc i32 %3683 to i8
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3684, i8* %3685, align 1
  %3686 = lshr i32 %3661, 31
  %3687 = xor i32 %3683, %3686
  %3688 = add i32 %3687, %3686
  %3689 = icmp eq i32 %3688, 2
  %3690 = zext i1 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3690, i8* %3691, align 1
  store %struct.Memory* %loadMem_400e02, %struct.Memory** %MEMORY
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 33
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 7
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %EDX.i609 = bitcast %union.anon* %3697 to i32*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 5
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %3700 to i64*
  %3701 = load i32, i32* %EDX.i609
  %3702 = zext i32 %3701 to i64
  %3703 = load i64, i64* %PC.i608
  %3704 = add i64 %3703, 3
  store i64 %3704, i64* %PC.i608
  %3705 = shl i64 %3702, 32
  %3706 = ashr exact i64 %3705, 32
  store i64 %3706, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_400e05, %struct.Memory** %MEMORY
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 5
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3716, i64 0, i64 1
  %YMM1.i607 = bitcast %union.VectorReg* %3717 to %"class.std::bitset"*
  %3718 = bitcast %"class.std::bitset"* %YMM1.i607 to i8*
  %3719 = load i64, i64* %RAX.i605
  %3720 = load i64, i64* %RCX.i606
  %3721 = mul i64 %3720, 8
  %3722 = add i64 %3721, %3719
  %3723 = load i64, i64* %PC.i604
  %3724 = add i64 %3723, 5
  store i64 %3724, i64* %PC.i604
  %3725 = inttoptr i64 %3722 to double*
  %3726 = load double, double* %3725
  %3727 = bitcast i8* %3718 to double*
  store double %3726, double* %3727, align 1
  %3728 = getelementptr inbounds i8, i8* %3718, i64 8
  %3729 = bitcast i8* %3728 to double*
  store double 0.000000e+00, double* %3729, align 1
  store %struct.Memory* %loadMem_400e08, %struct.Memory** %MEMORY
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 1
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i603
  %3740 = sub i64 %3739, 24
  %3741 = load i64, i64* %PC.i601
  %3742 = add i64 %3741, 4
  store i64 %3742, i64* %PC.i601
  %3743 = inttoptr i64 %3740 to i64*
  %3744 = load i64, i64* %3743
  store i64 %3744, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_400e0d, %struct.Memory** %MEMORY
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 5
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i600
  %3755 = sub i64 %3754, 40
  %3756 = load i64, i64* %PC.i598
  %3757 = add i64 %3756, 4
  store i64 %3757, i64* %PC.i598
  %3758 = inttoptr i64 %3755 to i32*
  %3759 = load i32, i32* %3758
  %3760 = sext i32 %3759 to i64
  store i64 %3760, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_400e11, %struct.Memory** %MEMORY
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 5
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %RCX.i597
  %3768 = load i64, i64* %PC.i596
  %3769 = add i64 %3768, 4
  store i64 %3769, i64* %PC.i596
  %3770 = shl i64 %3767, 12
  %3771 = icmp slt i64 %3770, 0
  %3772 = shl i64 %3770, 1
  store i64 %3772, i64* %RCX.i597, align 8
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3774 = zext i1 %3771 to i8
  store i8 %3774, i8* %3773, align 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3776 = trunc i64 %3772 to i32
  store i8 1, i8* %3775, align 1
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3777, align 1
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3779 = icmp eq i64 %3772, 0
  %3780 = zext i1 %3779 to i8
  store i8 %3780, i8* %3778, align 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3782 = lshr i64 %3772, 63
  %3783 = trunc i64 %3782 to i8
  store i8 %3783, i8* %3781, align 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3784, align 1
  store %struct.Memory* %loadMem_400e15, %struct.Memory** %MEMORY
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 5
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RAX.i594
  %3795 = load i64, i64* %RCX.i595
  %3796 = load i64, i64* %PC.i593
  %3797 = add i64 %3796, 3
  store i64 %3797, i64* %PC.i593
  %3798 = add i64 %3795, %3794
  store i64 %3798, i64* %RAX.i594, align 8
  %3799 = icmp ult i64 %3798, %3794
  %3800 = icmp ult i64 %3798, %3795
  %3801 = or i1 %3799, %3800
  %3802 = zext i1 %3801 to i8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3802, i8* %3803, align 1
  %3804 = trunc i64 %3798 to i32
  %3805 = and i32 %3804, 255
  %3806 = call i32 @llvm.ctpop.i32(i32 %3805)
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = xor i8 %3808, 1
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3809, i8* %3810, align 1
  %3811 = xor i64 %3795, %3794
  %3812 = xor i64 %3811, %3798
  %3813 = lshr i64 %3812, 4
  %3814 = trunc i64 %3813 to i8
  %3815 = and i8 %3814, 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3815, i8* %3816, align 1
  %3817 = icmp eq i64 %3798, 0
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3818, i8* %3819, align 1
  %3820 = lshr i64 %3798, 63
  %3821 = trunc i64 %3820 to i8
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3821, i8* %3822, align 1
  %3823 = lshr i64 %3794, 63
  %3824 = lshr i64 %3795, 63
  %3825 = xor i64 %3820, %3823
  %3826 = xor i64 %3820, %3824
  %3827 = add i64 %3825, %3826
  %3828 = icmp eq i64 %3827, 2
  %3829 = zext i1 %3828 to i8
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3829, i8* %3830, align 1
  store %struct.Memory* %loadMem_400e19, %struct.Memory** %MEMORY
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 7
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RDX.i591 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 15
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RBP.i592
  %3841 = sub i64 %3840, 8
  %3842 = load i64, i64* %PC.i590
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i590
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDX.i591, align 8
  store %struct.Memory* %loadMem_400e1c, %struct.Memory** %MEMORY
  %loadMem_400e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 7
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RDX.i588 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 15
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3855 to i64*
  %3856 = load i64, i64* %RDX.i588
  %3857 = load i64, i64* %RBP.i589
  %3858 = sub i64 %3857, 44
  %3859 = load i64, i64* %PC.i587
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i587
  %3861 = trunc i64 %3856 to i32
  %3862 = inttoptr i64 %3858 to i32*
  %3863 = load i32, i32* %3862
  %3864 = sub i32 %3861, %3863
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RDX.i588, align 8
  %3866 = icmp ult i32 %3861, %3863
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3867, i8* %3868, align 1
  %3869 = and i32 %3864, 255
  %3870 = call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3873, i8* %3874, align 1
  %3875 = xor i32 %3863, %3861
  %3876 = xor i32 %3875, %3864
  %3877 = lshr i32 %3876, 4
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3879, i8* %3880, align 1
  %3881 = icmp eq i32 %3864, 0
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3864, 31
  %3885 = trunc i32 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3885, i8* %3886, align 1
  %3887 = lshr i32 %3861, 31
  %3888 = lshr i32 %3863, 31
  %3889 = xor i32 %3888, %3887
  %3890 = xor i32 %3884, %3887
  %3891 = add i32 %3890, %3889
  %3892 = icmp eq i32 %3891, 2
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3893, i8* %3894, align 1
  store %struct.Memory* %loadMem_400e1f, %struct.Memory** %MEMORY
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 7
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RDX.i586 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RDX.i586
  %3902 = load i64, i64* %PC.i585
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %PC.i585
  %3904 = trunc i64 %3901 to i32
  %3905 = sub i32 %3904, 3
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RDX.i586, align 8
  %3907 = icmp ult i32 %3904, 3
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3908, i8* %3909, align 1
  %3910 = and i32 %3905, 255
  %3911 = call i32 @llvm.ctpop.i32(i32 %3910)
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = xor i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3914, i8* %3915, align 1
  %3916 = xor i64 3, %3901
  %3917 = trunc i64 %3916 to i32
  %3918 = xor i32 %3917, %3905
  %3919 = lshr i32 %3918, 4
  %3920 = trunc i32 %3919 to i8
  %3921 = and i8 %3920, 1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3921, i8* %3922, align 1
  %3923 = icmp eq i32 %3905, 0
  %3924 = zext i1 %3923 to i8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3924, i8* %3925, align 1
  %3926 = lshr i32 %3905, 31
  %3927 = trunc i32 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3927, i8* %3928, align 1
  %3929 = lshr i32 %3904, 31
  %3930 = xor i32 %3926, %3929
  %3931 = add i32 %3930, %3929
  %3932 = icmp eq i32 %3931, 2
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3933, i8* %3934, align 1
  store %struct.Memory* %loadMem_400e22, %struct.Memory** %MEMORY
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 7
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %EDX.i583 = bitcast %union.anon* %3940 to i32*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 5
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %3943 to i64*
  %3944 = load i32, i32* %EDX.i583
  %3945 = zext i32 %3944 to i64
  %3946 = load i64, i64* %PC.i582
  %3947 = add i64 %3946, 3
  store i64 %3947, i64* %PC.i582
  %3948 = shl i64 %3945, 32
  %3949 = ashr exact i64 %3948, 32
  store i64 %3949, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_400e25, %struct.Memory** %MEMORY
  %loadMem_400e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 1
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 5
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3959, i64 0, i64 1
  %YMM1.i581 = bitcast %union.VectorReg* %3960 to %"class.std::bitset"*
  %3961 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %3962 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %3963 = load i64, i64* %RAX.i579
  %3964 = load i64, i64* %RCX.i580
  %3965 = mul i64 %3964, 8
  %3966 = add i64 %3965, %3963
  %3967 = load i64, i64* %PC.i578
  %3968 = add i64 %3967, 5
  store i64 %3968, i64* %PC.i578
  %3969 = bitcast i8* %3962 to double*
  %3970 = load double, double* %3969, align 1
  %3971 = getelementptr inbounds i8, i8* %3962, i64 8
  %3972 = bitcast i8* %3971 to i64*
  %3973 = load i64, i64* %3972, align 1
  %3974 = inttoptr i64 %3966 to double*
  %3975 = load double, double* %3974
  %3976 = fmul double %3970, %3975
  %3977 = bitcast i8* %3961 to double*
  store double %3976, double* %3977, align 1
  %3978 = getelementptr inbounds i8, i8* %3961, i64 8
  %3979 = bitcast i8* %3978 to i64*
  store i64 %3973, i64* %3979, align 1
  store %struct.Memory* %loadMem_400e28, %struct.Memory** %MEMORY
  %loadMem_400e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3983, i64 0, i64 0
  %YMM0.i576 = bitcast %union.VectorReg* %3984 to %"class.std::bitset"*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3985, i64 0, i64 1
  %XMM1.i577 = bitcast %union.VectorReg* %3986 to %union.vec128_t*
  %3987 = bitcast %"class.std::bitset"* %YMM0.i576 to i8*
  %3988 = bitcast %"class.std::bitset"* %YMM0.i576 to i8*
  %3989 = bitcast %union.vec128_t* %XMM1.i577 to i8*
  %3990 = load i64, i64* %PC.i575
  %3991 = add i64 %3990, 4
  store i64 %3991, i64* %PC.i575
  %3992 = bitcast i8* %3988 to double*
  %3993 = load double, double* %3992, align 1
  %3994 = getelementptr inbounds i8, i8* %3988, i64 8
  %3995 = bitcast i8* %3994 to i64*
  %3996 = load i64, i64* %3995, align 1
  %3997 = bitcast i8* %3989 to double*
  %3998 = load double, double* %3997, align 1
  %3999 = fsub double %3993, %3998
  %4000 = bitcast i8* %3987 to double*
  store double %3999, double* %4000, align 1
  %4001 = getelementptr inbounds i8, i8* %3987, i64 8
  %4002 = bitcast i8* %4001 to i64*
  store i64 %3996, i64* %4002, align 1
  store %struct.Memory* %loadMem_400e2d, %struct.Memory** %MEMORY
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 33
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %4005 to i64*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 1
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 15
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %4011 to i64*
  %4012 = load i64, i64* %RBP.i574
  %4013 = sub i64 %4012, 32
  %4014 = load i64, i64* %PC.i572
  %4015 = add i64 %4014, 4
  store i64 %4015, i64* %PC.i572
  %4016 = inttoptr i64 %4013 to i64*
  %4017 = load i64, i64* %4016
  store i64 %4017, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_400e31, %struct.Memory** %MEMORY
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 5
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i571
  %4028 = sub i64 %4027, 40
  %4029 = load i64, i64* %PC.i569
  %4030 = add i64 %4029, 4
  store i64 %4030, i64* %PC.i569
  %4031 = inttoptr i64 %4028 to i32*
  %4032 = load i32, i32* %4031
  %4033 = sext i32 %4032 to i64
  store i64 %4033, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_400e35, %struct.Memory** %MEMORY
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 5
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RCX.i568
  %4041 = load i64, i64* %PC.i567
  %4042 = add i64 %4041, 4
  store i64 %4042, i64* %PC.i567
  %4043 = shl i64 %4040, 12
  %4044 = icmp slt i64 %4043, 0
  %4045 = shl i64 %4043, 1
  store i64 %4045, i64* %RCX.i568, align 8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4047 = zext i1 %4044 to i8
  store i8 %4047, i8* %4046, align 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4049 = trunc i64 %4045 to i32
  store i8 1, i8* %4048, align 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4050, align 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4052 = icmp eq i64 %4045, 0
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %4051, align 1
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4055 = lshr i64 %4045, 63
  %4056 = trunc i64 %4055 to i8
  store i8 %4056, i8* %4054, align 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4057, align 1
  store %struct.Memory* %loadMem_400e39, %struct.Memory** %MEMORY
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 5
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RAX.i565
  %4068 = load i64, i64* %RCX.i566
  %4069 = load i64, i64* %PC.i564
  %4070 = add i64 %4069, 3
  store i64 %4070, i64* %PC.i564
  %4071 = add i64 %4068, %4067
  store i64 %4071, i64* %RAX.i565, align 8
  %4072 = icmp ult i64 %4071, %4067
  %4073 = icmp ult i64 %4071, %4068
  %4074 = or i1 %4072, %4073
  %4075 = zext i1 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4075, i8* %4076, align 1
  %4077 = trunc i64 %4071 to i32
  %4078 = and i32 %4077, 255
  %4079 = call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4082, i8* %4083, align 1
  %4084 = xor i64 %4068, %4067
  %4085 = xor i64 %4084, %4071
  %4086 = lshr i64 %4085, 4
  %4087 = trunc i64 %4086 to i8
  %4088 = and i8 %4087, 1
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4088, i8* %4089, align 1
  %4090 = icmp eq i64 %4071, 0
  %4091 = zext i1 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4091, i8* %4092, align 1
  %4093 = lshr i64 %4071, 63
  %4094 = trunc i64 %4093 to i8
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4094, i8* %4095, align 1
  %4096 = lshr i64 %4067, 63
  %4097 = lshr i64 %4068, 63
  %4098 = xor i64 %4093, %4096
  %4099 = xor i64 %4093, %4097
  %4100 = add i64 %4098, %4099
  %4101 = icmp eq i64 %4100, 2
  %4102 = zext i1 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4102, i8* %4103, align 1
  store %struct.Memory* %loadMem_400e3d, %struct.Memory** %MEMORY
  %loadMem_400e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 7
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %4109 to i64*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 15
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %RBP.i563
  %4114 = sub i64 %4113, 8
  %4115 = load i64, i64* %PC.i561
  %4116 = add i64 %4115, 3
  store i64 %4116, i64* %PC.i561
  %4117 = inttoptr i64 %4114 to i32*
  %4118 = load i32, i32* %4117
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %RDX.i562, align 8
  store %struct.Memory* %loadMem_400e40, %struct.Memory** %MEMORY
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 7
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RDX.i560
  %4127 = load i64, i64* %PC.i559
  %4128 = add i64 %4127, 3
  store i64 %4128, i64* %PC.i559
  %4129 = trunc i64 %4126 to i32
  %4130 = sub i32 %4129, 3
  %4131 = zext i32 %4130 to i64
  store i64 %4131, i64* %RDX.i560, align 8
  %4132 = icmp ult i32 %4129, 3
  %4133 = zext i1 %4132 to i8
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4133, i8* %4134, align 1
  %4135 = and i32 %4130, 255
  %4136 = call i32 @llvm.ctpop.i32(i32 %4135)
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4139, i8* %4140, align 1
  %4141 = xor i64 3, %4126
  %4142 = trunc i64 %4141 to i32
  %4143 = xor i32 %4142, %4130
  %4144 = lshr i32 %4143, 4
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4146, i8* %4147, align 1
  %4148 = icmp eq i32 %4130, 0
  %4149 = zext i1 %4148 to i8
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4149, i8* %4150, align 1
  %4151 = lshr i32 %4130, 31
  %4152 = trunc i32 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4152, i8* %4153, align 1
  %4154 = lshr i32 %4129, 31
  %4155 = xor i32 %4151, %4154
  %4156 = add i32 %4155, %4154
  %4157 = icmp eq i32 %4156, 2
  %4158 = zext i1 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4158, i8* %4159, align 1
  store %struct.Memory* %loadMem_400e43, %struct.Memory** %MEMORY
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 7
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 15
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RDX.i557
  %4170 = load i64, i64* %RBP.i558
  %4171 = sub i64 %4170, 44
  %4172 = load i64, i64* %PC.i556
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i556
  %4174 = trunc i64 %4169 to i32
  %4175 = inttoptr i64 %4171 to i32*
  %4176 = load i32, i32* %4175
  %4177 = sub i32 %4174, %4176
  %4178 = zext i32 %4177 to i64
  store i64 %4178, i64* %RDX.i557, align 8
  %4179 = icmp ult i32 %4174, %4176
  %4180 = zext i1 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4180, i8* %4181, align 1
  %4182 = and i32 %4177, 255
  %4183 = call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4186, i8* %4187, align 1
  %4188 = xor i32 %4176, %4174
  %4189 = xor i32 %4188, %4177
  %4190 = lshr i32 %4189, 4
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4192, i8* %4193, align 1
  %4194 = icmp eq i32 %4177, 0
  %4195 = zext i1 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i32 %4177, 31
  %4198 = trunc i32 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4198, i8* %4199, align 1
  %4200 = lshr i32 %4174, 31
  %4201 = lshr i32 %4176, 31
  %4202 = xor i32 %4201, %4200
  %4203 = xor i32 %4197, %4200
  %4204 = add i32 %4203, %4202
  %4205 = icmp eq i32 %4204, 2
  %4206 = zext i1 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4206, i8* %4207, align 1
  store %struct.Memory* %loadMem_400e46, %struct.Memory** %MEMORY
  %loadMem_400e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 7
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %EDX.i554 = bitcast %union.anon* %4213 to i32*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %4216 to i64*
  %4217 = load i32, i32* %EDX.i554
  %4218 = zext i32 %4217 to i64
  %4219 = load i64, i64* %PC.i553
  %4220 = add i64 %4219, 3
  store i64 %4220, i64* %PC.i553
  %4221 = shl i64 %4218, 32
  %4222 = ashr exact i64 %4221, 32
  store i64 %4222, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_400e49, %struct.Memory** %MEMORY
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 1
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 5
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4232, i64 0, i64 0
  %YMM0.i552 = bitcast %union.VectorReg* %4233 to %"class.std::bitset"*
  %4234 = bitcast %"class.std::bitset"* %YMM0.i552 to i8*
  %4235 = bitcast %"class.std::bitset"* %YMM0.i552 to i8*
  %4236 = load i64, i64* %RAX.i550
  %4237 = load i64, i64* %RCX.i551
  %4238 = mul i64 %4237, 8
  %4239 = add i64 %4238, %4236
  %4240 = load i64, i64* %PC.i549
  %4241 = add i64 %4240, 5
  store i64 %4241, i64* %PC.i549
  %4242 = bitcast i8* %4235 to double*
  %4243 = load double, double* %4242, align 1
  %4244 = getelementptr inbounds i8, i8* %4235, i64 8
  %4245 = bitcast i8* %4244 to i64*
  %4246 = load i64, i64* %4245, align 1
  %4247 = inttoptr i64 %4239 to double*
  %4248 = load double, double* %4247
  %4249 = fdiv double %4243, %4248
  %4250 = bitcast i8* %4234 to double*
  store double %4249, double* %4250, align 1
  %4251 = getelementptr inbounds i8, i8* %4234, i64 8
  %4252 = bitcast i8* %4251 to i64*
  store i64 %4246, i64* %4252, align 1
  store %struct.Memory* %loadMem_400e4c, %struct.Memory** %MEMORY
  %loadMem_400e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 1
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 15
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %4261 to i64*
  %4262 = load i64, i64* %RBP.i548
  %4263 = sub i64 %4262, 16
  %4264 = load i64, i64* %PC.i546
  %4265 = add i64 %4264, 4
  store i64 %4265, i64* %PC.i546
  %4266 = inttoptr i64 %4263 to i64*
  %4267 = load i64, i64* %4266
  store i64 %4267, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_400e51, %struct.Memory** %MEMORY
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %4270 to i64*
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 5
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %4273 to i64*
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 15
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %RBP.i545
  %4278 = sub i64 %4277, 40
  %4279 = load i64, i64* %PC.i543
  %4280 = add i64 %4279, 4
  store i64 %4280, i64* %PC.i543
  %4281 = inttoptr i64 %4278 to i32*
  %4282 = load i32, i32* %4281
  %4283 = sext i32 %4282 to i64
  store i64 %4283, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_400e55, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 5
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RCX.i542
  %4291 = load i64, i64* %PC.i541
  %4292 = add i64 %4291, 4
  store i64 %4292, i64* %PC.i541
  %4293 = shl i64 %4290, 12
  %4294 = icmp slt i64 %4293, 0
  %4295 = shl i64 %4293, 1
  store i64 %4295, i64* %RCX.i542, align 8
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4297 = zext i1 %4294 to i8
  store i8 %4297, i8* %4296, align 1
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4299 = trunc i64 %4295 to i32
  store i8 1, i8* %4298, align 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4300, align 1
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4302 = icmp eq i64 %4295, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %4301, align 1
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4305 = lshr i64 %4295, 63
  %4306 = trunc i64 %4305 to i8
  store i8 %4306, i8* %4304, align 1
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4307, align 1
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 1
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 5
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %RAX.i539
  %4318 = load i64, i64* %RCX.i540
  %4319 = load i64, i64* %PC.i538
  %4320 = add i64 %4319, 3
  store i64 %4320, i64* %PC.i538
  %4321 = add i64 %4318, %4317
  store i64 %4321, i64* %RAX.i539, align 8
  %4322 = icmp ult i64 %4321, %4317
  %4323 = icmp ult i64 %4321, %4318
  %4324 = or i1 %4322, %4323
  %4325 = zext i1 %4324 to i8
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4325, i8* %4326, align 1
  %4327 = trunc i64 %4321 to i32
  %4328 = and i32 %4327, 255
  %4329 = call i32 @llvm.ctpop.i32(i32 %4328)
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = xor i8 %4331, 1
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4332, i8* %4333, align 1
  %4334 = xor i64 %4318, %4317
  %4335 = xor i64 %4334, %4321
  %4336 = lshr i64 %4335, 4
  %4337 = trunc i64 %4336 to i8
  %4338 = and i8 %4337, 1
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4338, i8* %4339, align 1
  %4340 = icmp eq i64 %4321, 0
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4341, i8* %4342, align 1
  %4343 = lshr i64 %4321, 63
  %4344 = trunc i64 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4344, i8* %4345, align 1
  %4346 = lshr i64 %4317, 63
  %4347 = lshr i64 %4318, 63
  %4348 = xor i64 %4343, %4346
  %4349 = xor i64 %4343, %4347
  %4350 = add i64 %4348, %4349
  %4351 = icmp eq i64 %4350, 2
  %4352 = zext i1 %4351 to i8
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4352, i8* %4353, align 1
  store %struct.Memory* %loadMem_400e5d, %struct.Memory** %MEMORY
  %loadMem_400e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 7
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i537
  %4364 = sub i64 %4363, 8
  %4365 = load i64, i64* %PC.i535
  %4366 = add i64 %4365, 3
  store i64 %4366, i64* %PC.i535
  %4367 = inttoptr i64 %4364 to i32*
  %4368 = load i32, i32* %4367
  %4369 = zext i32 %4368 to i64
  store i64 %4369, i64* %RDX.i536, align 8
  store %struct.Memory* %loadMem_400e60, %struct.Memory** %MEMORY
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 33
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %4372 to i64*
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 7
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %RDX.i533 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 15
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %4378 to i64*
  %4379 = load i64, i64* %RDX.i533
  %4380 = load i64, i64* %RBP.i534
  %4381 = sub i64 %4380, 44
  %4382 = load i64, i64* %PC.i532
  %4383 = add i64 %4382, 3
  store i64 %4383, i64* %PC.i532
  %4384 = trunc i64 %4379 to i32
  %4385 = inttoptr i64 %4381 to i32*
  %4386 = load i32, i32* %4385
  %4387 = sub i32 %4384, %4386
  %4388 = zext i32 %4387 to i64
  store i64 %4388, i64* %RDX.i533, align 8
  %4389 = icmp ult i32 %4384, %4386
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4390, i8* %4391, align 1
  %4392 = and i32 %4387, 255
  %4393 = call i32 @llvm.ctpop.i32(i32 %4392)
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = xor i8 %4395, 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4396, i8* %4397, align 1
  %4398 = xor i32 %4386, %4384
  %4399 = xor i32 %4398, %4387
  %4400 = lshr i32 %4399, 4
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4402, i8* %4403, align 1
  %4404 = icmp eq i32 %4387, 0
  %4405 = zext i1 %4404 to i8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4405, i8* %4406, align 1
  %4407 = lshr i32 %4387, 31
  %4408 = trunc i32 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4408, i8* %4409, align 1
  %4410 = lshr i32 %4384, 31
  %4411 = lshr i32 %4386, 31
  %4412 = xor i32 %4411, %4410
  %4413 = xor i32 %4407, %4410
  %4414 = add i32 %4413, %4412
  %4415 = icmp eq i32 %4414, 2
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4416, i8* %4417, align 1
  store %struct.Memory* %loadMem_400e63, %struct.Memory** %MEMORY
  %loadMem_400e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 7
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %RDX.i531
  %4425 = load i64, i64* %PC.i530
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %PC.i530
  %4427 = trunc i64 %4424 to i32
  %4428 = sub i32 %4427, 2
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RDX.i531, align 8
  %4430 = icmp ult i32 %4427, 2
  %4431 = zext i1 %4430 to i8
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4431, i8* %4432, align 1
  %4433 = and i32 %4428, 255
  %4434 = call i32 @llvm.ctpop.i32(i32 %4433)
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = xor i8 %4436, 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4437, i8* %4438, align 1
  %4439 = xor i64 2, %4424
  %4440 = trunc i64 %4439 to i32
  %4441 = xor i32 %4440, %4428
  %4442 = lshr i32 %4441, 4
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4444, i8* %4445, align 1
  %4446 = icmp eq i32 %4428, 0
  %4447 = zext i1 %4446 to i8
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4447, i8* %4448, align 1
  %4449 = lshr i32 %4428, 31
  %4450 = trunc i32 %4449 to i8
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4450, i8* %4451, align 1
  %4452 = lshr i32 %4427, 31
  %4453 = xor i32 %4449, %4452
  %4454 = add i32 %4453, %4452
  %4455 = icmp eq i32 %4454, 2
  %4456 = zext i1 %4455 to i8
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4456, i8* %4457, align 1
  store %struct.Memory* %loadMem_400e66, %struct.Memory** %MEMORY
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 7
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %EDX.i528 = bitcast %union.anon* %4463 to i32*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 5
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %4466 to i64*
  %4467 = load i32, i32* %EDX.i528
  %4468 = zext i32 %4467 to i64
  %4469 = load i64, i64* %PC.i527
  %4470 = add i64 %4469, 3
  store i64 %4470, i64* %PC.i527
  %4471 = shl i64 %4468, 32
  %4472 = ashr exact i64 %4471, 32
  store i64 %4472, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_400e69, %struct.Memory** %MEMORY
  %loadMem_400e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 5
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4482, i64 0, i64 0
  %XMM0.i526 = bitcast %union.VectorReg* %4483 to %union.vec128_t*
  %4484 = load i64, i64* %RAX.i524
  %4485 = load i64, i64* %RCX.i525
  %4486 = mul i64 %4485, 8
  %4487 = add i64 %4486, %4484
  %4488 = bitcast %union.vec128_t* %XMM0.i526 to i8*
  %4489 = load i64, i64* %PC.i523
  %4490 = add i64 %4489, 5
  store i64 %4490, i64* %PC.i523
  %4491 = bitcast i8* %4488 to double*
  %4492 = load double, double* %4491, align 1
  %4493 = inttoptr i64 %4487 to double*
  store double %4492, double* %4493
  store %struct.Memory* %loadMem_400e6c, %struct.Memory** %MEMORY
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 1
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 15
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %4502 to i64*
  %4503 = load i64, i64* %RBP.i522
  %4504 = sub i64 %4503, 44
  %4505 = load i64, i64* %PC.i520
  %4506 = add i64 %4505, 3
  store i64 %4506, i64* %PC.i520
  %4507 = inttoptr i64 %4504 to i32*
  %4508 = load i32, i32* %4507
  %4509 = zext i32 %4508 to i64
  store i64 %4509, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_400e71, %struct.Memory** %MEMORY
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 33
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 1
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %RAX.i519
  %4517 = load i64, i64* %PC.i518
  %4518 = add i64 %4517, 3
  store i64 %4518, i64* %PC.i518
  %4519 = trunc i64 %4516 to i32
  %4520 = add i32 1, %4519
  %4521 = zext i32 %4520 to i64
  store i64 %4521, i64* %RAX.i519, align 8
  %4522 = icmp ult i32 %4520, %4519
  %4523 = icmp ult i32 %4520, 1
  %4524 = or i1 %4522, %4523
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4525, i8* %4526, align 1
  %4527 = and i32 %4520, 255
  %4528 = call i32 @llvm.ctpop.i32(i32 %4527)
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = xor i8 %4530, 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4531, i8* %4532, align 1
  %4533 = xor i64 1, %4516
  %4534 = trunc i64 %4533 to i32
  %4535 = xor i32 %4534, %4520
  %4536 = lshr i32 %4535, 4
  %4537 = trunc i32 %4536 to i8
  %4538 = and i8 %4537, 1
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4538, i8* %4539, align 1
  %4540 = icmp eq i32 %4520, 0
  %4541 = zext i1 %4540 to i8
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4541, i8* %4542, align 1
  %4543 = lshr i32 %4520, 31
  %4544 = trunc i32 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4544, i8* %4545, align 1
  %4546 = lshr i32 %4519, 31
  %4547 = xor i32 %4543, %4546
  %4548 = add i32 %4547, %4543
  %4549 = icmp eq i32 %4548, 2
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4550, i8* %4551, align 1
  store %struct.Memory* %loadMem_400e74, %struct.Memory** %MEMORY
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 1
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %EAX.i516 = bitcast %union.anon* %4557 to i32*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 15
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %4560 to i64*
  %4561 = load i64, i64* %RBP.i517
  %4562 = sub i64 %4561, 44
  %4563 = load i32, i32* %EAX.i516
  %4564 = zext i32 %4563 to i64
  %4565 = load i64, i64* %PC.i515
  %4566 = add i64 %4565, 3
  store i64 %4566, i64* %PC.i515
  %4567 = inttoptr i64 %4562 to i32*
  store i32 %4563, i32* %4567
  store %struct.Memory* %loadMem_400e77, %struct.Memory** %MEMORY
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %PC.i514
  %4572 = add i64 %4571, -193
  %4573 = load i64, i64* %PC.i514
  %4574 = add i64 %4573, 5
  store i64 %4574, i64* %PC.i514
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4572, i64* %4575, align 8
  store %struct.Memory* %loadMem_400e7a, %struct.Memory** %MEMORY
  br label %block_.L_400db9

block_.L_400e7f:                                  ; preds = %block_.L_400db9
  %loadMem_400e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4578 to i64*
  %4579 = load i64, i64* %PC.i513
  %4580 = add i64 %4579, 5
  %4581 = load i64, i64* %PC.i513
  %4582 = add i64 %4581, 5
  store i64 %4582, i64* %PC.i513
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4580, i64* %4583, align 8
  store %struct.Memory* %loadMem_400e7f, %struct.Memory** %MEMORY
  br label %block_.L_400e84

block_.L_400e84:                                  ; preds = %block_.L_400e7f
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i512
  %4594 = sub i64 %4593, 40
  %4595 = load i64, i64* %PC.i510
  %4596 = add i64 %4595, 3
  store i64 %4596, i64* %PC.i510
  %4597 = inttoptr i64 %4594 to i32*
  %4598 = load i32, i32* %4597
  %4599 = zext i32 %4598 to i64
  store i64 %4599, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_400e84, %struct.Memory** %MEMORY
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RAX.i509
  %4607 = load i64, i64* %PC.i508
  %4608 = add i64 %4607, 3
  store i64 %4608, i64* %PC.i508
  %4609 = trunc i64 %4606 to i32
  %4610 = add i32 1, %4609
  %4611 = zext i32 %4610 to i64
  store i64 %4611, i64* %RAX.i509, align 8
  %4612 = icmp ult i32 %4610, %4609
  %4613 = icmp ult i32 %4610, 1
  %4614 = or i1 %4612, %4613
  %4615 = zext i1 %4614 to i8
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4615, i8* %4616, align 1
  %4617 = and i32 %4610, 255
  %4618 = call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4621, i8* %4622, align 1
  %4623 = xor i64 1, %4606
  %4624 = trunc i64 %4623 to i32
  %4625 = xor i32 %4624, %4610
  %4626 = lshr i32 %4625, 4
  %4627 = trunc i32 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4628, i8* %4629, align 1
  %4630 = icmp eq i32 %4610, 0
  %4631 = zext i1 %4630 to i8
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4631, i8* %4632, align 1
  %4633 = lshr i32 %4610, 31
  %4634 = trunc i32 %4633 to i8
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4634, i8* %4635, align 1
  %4636 = lshr i32 %4609, 31
  %4637 = xor i32 %4633, %4636
  %4638 = add i32 %4637, %4633
  %4639 = icmp eq i32 %4638, 2
  %4640 = zext i1 %4639 to i8
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4640, i8* %4641, align 1
  store %struct.Memory* %loadMem_400e87, %struct.Memory** %MEMORY
  %loadMem_400e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 1
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %4647 to i32*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 15
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %4650 to i64*
  %4651 = load i64, i64* %RBP.i507
  %4652 = sub i64 %4651, 40
  %4653 = load i32, i32* %EAX.i506
  %4654 = zext i32 %4653 to i64
  %4655 = load i64, i64* %PC.i505
  %4656 = add i64 %4655, 3
  store i64 %4656, i64* %PC.i505
  %4657 = inttoptr i64 %4652 to i32*
  store i32 %4653, i32* %4657
  store %struct.Memory* %loadMem_400e8a, %struct.Memory** %MEMORY
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %PC.i504
  %4662 = add i64 %4661, -231
  %4663 = load i64, i64* %PC.i504
  %4664 = add i64 %4663, 5
  store i64 %4664, i64* %PC.i504
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4662, i64* %4665, align 8
  store %struct.Memory* %loadMem_400e8d, %struct.Memory** %MEMORY
  br label %block_.L_400da6

block_.L_400e92:                                  ; preds = %block_.L_400da6
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i503
  %4673 = sub i64 %4672, 40
  %4674 = load i64, i64* %PC.i502
  %4675 = add i64 %4674, 7
  store i64 %4675, i64* %PC.i502
  %4676 = inttoptr i64 %4673 to i32*
  store i32 1, i32* %4676
  store %struct.Memory* %loadMem_400e92, %struct.Memory** %MEMORY
  br label %block_.L_400e99

block_.L_400e99:                                  ; preds = %block_.L_400fd2, %block_.L_400e92
  %loadMem_400e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 1
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 15
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %4685 to i64*
  %4686 = load i64, i64* %RBP.i501
  %4687 = sub i64 %4686, 40
  %4688 = load i64, i64* %PC.i499
  %4689 = add i64 %4688, 3
  store i64 %4689, i64* %PC.i499
  %4690 = inttoptr i64 %4687 to i32*
  %4691 = load i32, i32* %4690
  %4692 = zext i32 %4691 to i64
  store i64 %4692, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_400e99, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 1
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %4698 to i32*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 15
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %4701 to i64*
  %4702 = load i32, i32* %EAX.i497
  %4703 = zext i32 %4702 to i64
  %4704 = load i64, i64* %RBP.i498
  %4705 = sub i64 %4704, 8
  %4706 = load i64, i64* %PC.i496
  %4707 = add i64 %4706, 3
  store i64 %4707, i64* %PC.i496
  %4708 = inttoptr i64 %4705 to i32*
  %4709 = load i32, i32* %4708
  %4710 = sub i32 %4702, %4709
  %4711 = icmp ult i32 %4702, %4709
  %4712 = zext i1 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4712, i8* %4713, align 1
  %4714 = and i32 %4710, 255
  %4715 = call i32 @llvm.ctpop.i32(i32 %4714)
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  %4718 = xor i8 %4717, 1
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4718, i8* %4719, align 1
  %4720 = xor i32 %4709, %4702
  %4721 = xor i32 %4720, %4710
  %4722 = lshr i32 %4721, 4
  %4723 = trunc i32 %4722 to i8
  %4724 = and i8 %4723, 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4724, i8* %4725, align 1
  %4726 = icmp eq i32 %4710, 0
  %4727 = zext i1 %4726 to i8
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4727, i8* %4728, align 1
  %4729 = lshr i32 %4710, 31
  %4730 = trunc i32 %4729 to i8
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4730, i8* %4731, align 1
  %4732 = lshr i32 %4702, 31
  %4733 = lshr i32 %4709, 31
  %4734 = xor i32 %4733, %4732
  %4735 = xor i32 %4729, %4732
  %4736 = add i32 %4735, %4734
  %4737 = icmp eq i32 %4736, 2
  %4738 = zext i1 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4738, i8* %4739, align 1
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4742 to i64*
  %4743 = load i64, i64* %PC.i495
  %4744 = add i64 %4743, 321
  %4745 = load i64, i64* %PC.i495
  %4746 = add i64 %4745, 6
  %4747 = load i64, i64* %PC.i495
  %4748 = add i64 %4747, 6
  store i64 %4748, i64* %PC.i495
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4750 = load i8, i8* %4749, align 1
  %4751 = icmp ne i8 %4750, 0
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4753 = load i8, i8* %4752, align 1
  %4754 = icmp ne i8 %4753, 0
  %4755 = xor i1 %4751, %4754
  %4756 = xor i1 %4755, true
  %4757 = zext i1 %4756 to i8
  store i8 %4757, i8* %BRANCH_TAKEN, align 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4759 = select i1 %4755, i64 %4746, i64 %4744
  store i64 %4759, i64* %4758, align 8
  store %struct.Memory* %loadMem_400e9f, %struct.Memory** %MEMORY
  %loadBr_400e9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e9f = icmp eq i8 %loadBr_400e9f, 1
  br i1 %cmpBr_400e9f, label %block_.L_400fe0, label %block_400ea5

block_400ea5:                                     ; preds = %block_.L_400e99
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 15
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RBP.i494
  %4767 = sub i64 %4766, 44
  %4768 = load i64, i64* %PC.i493
  %4769 = add i64 %4768, 7
  store i64 %4769, i64* %PC.i493
  %4770 = inttoptr i64 %4767 to i32*
  store i32 0, i32* %4770
  store %struct.Memory* %loadMem_400ea5, %struct.Memory** %MEMORY
  br label %block_.L_400eac

block_.L_400eac:                                  ; preds = %block_400eb8, %block_400ea5
  %loadMem_400eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 1
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RBP.i492
  %4781 = sub i64 %4780, 44
  %4782 = load i64, i64* %PC.i490
  %4783 = add i64 %4782, 3
  store i64 %4783, i64* %PC.i490
  %4784 = inttoptr i64 %4781 to i32*
  %4785 = load i32, i32* %4784
  %4786 = zext i32 %4785 to i64
  store i64 %4786, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_400eac, %struct.Memory** %MEMORY
  %loadMem_400eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4789 to i64*
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 1
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %EAX.i488 = bitcast %union.anon* %4792 to i32*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 15
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4795 to i64*
  %4796 = load i32, i32* %EAX.i488
  %4797 = zext i32 %4796 to i64
  %4798 = load i64, i64* %RBP.i489
  %4799 = sub i64 %4798, 8
  %4800 = load i64, i64* %PC.i487
  %4801 = add i64 %4800, 3
  store i64 %4801, i64* %PC.i487
  %4802 = inttoptr i64 %4799 to i32*
  %4803 = load i32, i32* %4802
  %4804 = sub i32 %4796, %4803
  %4805 = icmp ult i32 %4796, %4803
  %4806 = zext i1 %4805 to i8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4806, i8* %4807, align 1
  %4808 = and i32 %4804, 255
  %4809 = call i32 @llvm.ctpop.i32(i32 %4808)
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = xor i8 %4811, 1
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4812, i8* %4813, align 1
  %4814 = xor i32 %4803, %4796
  %4815 = xor i32 %4814, %4804
  %4816 = lshr i32 %4815, 4
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4818, i8* %4819, align 1
  %4820 = icmp eq i32 %4804, 0
  %4821 = zext i1 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4821, i8* %4822, align 1
  %4823 = lshr i32 %4804, 31
  %4824 = trunc i32 %4823 to i8
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4824, i8* %4825, align 1
  %4826 = lshr i32 %4796, 31
  %4827 = lshr i32 %4803, 31
  %4828 = xor i32 %4827, %4826
  %4829 = xor i32 %4823, %4826
  %4830 = add i32 %4829, %4828
  %4831 = icmp eq i32 %4830, 2
  %4832 = zext i1 %4831 to i8
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4832, i8* %4833, align 1
  store %struct.Memory* %loadMem_400eaf, %struct.Memory** %MEMORY
  %loadMem_400eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %PC.i486
  %4838 = add i64 %4837, 283
  %4839 = load i64, i64* %PC.i486
  %4840 = add i64 %4839, 6
  %4841 = load i64, i64* %PC.i486
  %4842 = add i64 %4841, 6
  store i64 %4842, i64* %PC.i486
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4844 = load i8, i8* %4843, align 1
  %4845 = icmp ne i8 %4844, 0
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4847 = load i8, i8* %4846, align 1
  %4848 = icmp ne i8 %4847, 0
  %4849 = xor i1 %4845, %4848
  %4850 = xor i1 %4849, true
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %BRANCH_TAKEN, align 1
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4853 = select i1 %4849, i64 %4840, i64 %4838
  store i64 %4853, i64* %4852, align 8
  store %struct.Memory* %loadMem_400eb2, %struct.Memory** %MEMORY
  %loadBr_400eb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eb2 = icmp eq i8 %loadBr_400eb2, 1
  br i1 %cmpBr_400eb2, label %block_.L_400fcd, label %block_400eb8

block_400eb8:                                     ; preds = %block_.L_400eac
  %loadMem_400eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 1
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 15
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %4862 to i64*
  %4863 = load i64, i64* %RBP.i485
  %4864 = sub i64 %4863, 16
  %4865 = load i64, i64* %PC.i483
  %4866 = add i64 %4865, 4
  store i64 %4866, i64* %PC.i483
  %4867 = inttoptr i64 %4864 to i64*
  %4868 = load i64, i64* %4867
  store i64 %4868, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_400eb8, %struct.Memory** %MEMORY
  %loadMem_400ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 33
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 5
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 15
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %4877 to i64*
  %4878 = load i64, i64* %RBP.i482
  %4879 = sub i64 %4878, 40
  %4880 = load i64, i64* %PC.i480
  %4881 = add i64 %4880, 4
  store i64 %4881, i64* %PC.i480
  %4882 = inttoptr i64 %4879 to i32*
  %4883 = load i32, i32* %4882
  %4884 = sext i32 %4883 to i64
  store i64 %4884, i64* %RCX.i481, align 8
  store %struct.Memory* %loadMem_400ebc, %struct.Memory** %MEMORY
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 33
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 5
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %4890 to i64*
  %4891 = load i64, i64* %RCX.i479
  %4892 = load i64, i64* %PC.i478
  %4893 = add i64 %4892, 4
  store i64 %4893, i64* %PC.i478
  %4894 = shl i64 %4891, 12
  %4895 = icmp slt i64 %4894, 0
  %4896 = shl i64 %4894, 1
  store i64 %4896, i64* %RCX.i479, align 8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4898 = zext i1 %4895 to i8
  store i8 %4898, i8* %4897, align 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4900 = trunc i64 %4896 to i32
  store i8 1, i8* %4899, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4901, align 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4903 = icmp eq i64 %4896, 0
  %4904 = zext i1 %4903 to i8
  store i8 %4904, i8* %4902, align 1
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4906 = lshr i64 %4896, 63
  %4907 = trunc i64 %4906 to i8
  store i8 %4907, i8* %4905, align 1
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4908, align 1
  store %struct.Memory* %loadMem_400ec0, %struct.Memory** %MEMORY
  %loadMem_400ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 33
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 1
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %4914 to i64*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 5
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %4917 to i64*
  %4918 = load i64, i64* %RAX.i476
  %4919 = load i64, i64* %RCX.i477
  %4920 = load i64, i64* %PC.i475
  %4921 = add i64 %4920, 3
  store i64 %4921, i64* %PC.i475
  %4922 = add i64 %4919, %4918
  store i64 %4922, i64* %RAX.i476, align 8
  %4923 = icmp ult i64 %4922, %4918
  %4924 = icmp ult i64 %4922, %4919
  %4925 = or i1 %4923, %4924
  %4926 = zext i1 %4925 to i8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4926, i8* %4927, align 1
  %4928 = trunc i64 %4922 to i32
  %4929 = and i32 %4928, 255
  %4930 = call i32 @llvm.ctpop.i32(i32 %4929)
  %4931 = trunc i32 %4930 to i8
  %4932 = and i8 %4931, 1
  %4933 = xor i8 %4932, 1
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4933, i8* %4934, align 1
  %4935 = xor i64 %4919, %4918
  %4936 = xor i64 %4935, %4922
  %4937 = lshr i64 %4936, 4
  %4938 = trunc i64 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4939, i8* %4940, align 1
  %4941 = icmp eq i64 %4922, 0
  %4942 = zext i1 %4941 to i8
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4942, i8* %4943, align 1
  %4944 = lshr i64 %4922, 63
  %4945 = trunc i64 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4945, i8* %4946, align 1
  %4947 = lshr i64 %4918, 63
  %4948 = lshr i64 %4919, 63
  %4949 = xor i64 %4944, %4947
  %4950 = xor i64 %4944, %4948
  %4951 = add i64 %4949, %4950
  %4952 = icmp eq i64 %4951, 2
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4953, i8* %4954, align 1
  store %struct.Memory* %loadMem_400ec4, %struct.Memory** %MEMORY
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 5
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %4960 to i64*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4963 to i64*
  %4964 = load i64, i64* %RBP.i474
  %4965 = sub i64 %4964, 44
  %4966 = load i64, i64* %PC.i472
  %4967 = add i64 %4966, 4
  store i64 %4967, i64* %PC.i472
  %4968 = inttoptr i64 %4965 to i32*
  %4969 = load i32, i32* %4968
  %4970 = sext i32 %4969 to i64
  store i64 %4970, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_400ec7, %struct.Memory** %MEMORY
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 5
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4980, i64 0, i64 0
  %YMM0.i471 = bitcast %union.VectorReg* %4981 to %"class.std::bitset"*
  %4982 = bitcast %"class.std::bitset"* %YMM0.i471 to i8*
  %4983 = load i64, i64* %RAX.i469
  %4984 = load i64, i64* %RCX.i470
  %4985 = mul i64 %4984, 8
  %4986 = add i64 %4985, %4983
  %4987 = load i64, i64* %PC.i468
  %4988 = add i64 %4987, 5
  store i64 %4988, i64* %PC.i468
  %4989 = inttoptr i64 %4986 to double*
  %4990 = load double, double* %4989
  %4991 = bitcast i8* %4982 to double*
  store double %4990, double* %4991, align 1
  %4992 = getelementptr inbounds i8, i8* %4982, i64 8
  %4993 = bitcast i8* %4992 to double*
  store double 0.000000e+00, double* %4993, align 1
  store %struct.Memory* %loadMem_400ecb, %struct.Memory** %MEMORY
  %loadMem_400ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 1
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i467
  %5004 = sub i64 %5003, 16
  %5005 = load i64, i64* %PC.i465
  %5006 = add i64 %5005, 4
  store i64 %5006, i64* %PC.i465
  %5007 = inttoptr i64 %5004 to i64*
  %5008 = load i64, i64* %5007
  store i64 %5008, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_400ed0, %struct.Memory** %MEMORY
  %loadMem_400ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 7
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 15
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %RBP.i464
  %5019 = sub i64 %5018, 40
  %5020 = load i64, i64* %PC.i462
  %5021 = add i64 %5020, 3
  store i64 %5021, i64* %PC.i462
  %5022 = inttoptr i64 %5019 to i32*
  %5023 = load i32, i32* %5022
  %5024 = zext i32 %5023 to i64
  store i64 %5024, i64* %RDX.i463, align 8
  store %struct.Memory* %loadMem_400ed4, %struct.Memory** %MEMORY
  %loadMem_400ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %5027 to i64*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 7
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %5030 to i64*
  %5031 = load i64, i64* %RDX.i461
  %5032 = load i64, i64* %PC.i460
  %5033 = add i64 %5032, 3
  store i64 %5033, i64* %PC.i460
  %5034 = trunc i64 %5031 to i32
  %5035 = sub i32 %5034, 1
  %5036 = zext i32 %5035 to i64
  store i64 %5036, i64* %RDX.i461, align 8
  %5037 = icmp ult i32 %5034, 1
  %5038 = zext i1 %5037 to i8
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5038, i8* %5039, align 1
  %5040 = and i32 %5035, 255
  %5041 = call i32 @llvm.ctpop.i32(i32 %5040)
  %5042 = trunc i32 %5041 to i8
  %5043 = and i8 %5042, 1
  %5044 = xor i8 %5043, 1
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5044, i8* %5045, align 1
  %5046 = xor i64 1, %5031
  %5047 = trunc i64 %5046 to i32
  %5048 = xor i32 %5047, %5035
  %5049 = lshr i32 %5048, 4
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5051, i8* %5052, align 1
  %5053 = icmp eq i32 %5035, 0
  %5054 = zext i1 %5053 to i8
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5054, i8* %5055, align 1
  %5056 = lshr i32 %5035, 31
  %5057 = trunc i32 %5056 to i8
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5057, i8* %5058, align 1
  %5059 = lshr i32 %5034, 31
  %5060 = xor i32 %5056, %5059
  %5061 = add i32 %5060, %5059
  %5062 = icmp eq i32 %5061, 2
  %5063 = zext i1 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5063, i8* %5064, align 1
  store %struct.Memory* %loadMem_400ed7, %struct.Memory** %MEMORY
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %5067 to i64*
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 7
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %EDX.i458 = bitcast %union.anon* %5070 to i32*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 5
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %5073 to i64*
  %5074 = load i32, i32* %EDX.i458
  %5075 = zext i32 %5074 to i64
  %5076 = load i64, i64* %PC.i457
  %5077 = add i64 %5076, 3
  store i64 %5077, i64* %PC.i457
  %5078 = shl i64 %5075, 32
  %5079 = ashr exact i64 %5078, 32
  store i64 %5079, i64* %RCX.i459, align 8
  store %struct.Memory* %loadMem_400eda, %struct.Memory** %MEMORY
  %loadMem_400edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 5
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RCX.i456
  %5087 = load i64, i64* %PC.i455
  %5088 = add i64 %5087, 4
  store i64 %5088, i64* %PC.i455
  %5089 = shl i64 %5086, 12
  %5090 = icmp slt i64 %5089, 0
  %5091 = shl i64 %5089, 1
  store i64 %5091, i64* %RCX.i456, align 8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5093 = zext i1 %5090 to i8
  store i8 %5093, i8* %5092, align 1
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5095 = trunc i64 %5091 to i32
  store i8 1, i8* %5094, align 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5096, align 1
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5098 = icmp eq i64 %5091, 0
  %5099 = zext i1 %5098 to i8
  store i8 %5099, i8* %5097, align 1
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5101 = lshr i64 %5091, 63
  %5102 = trunc i64 %5101 to i8
  store i8 %5102, i8* %5100, align 1
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5103, align 1
  store %struct.Memory* %loadMem_400edd, %struct.Memory** %MEMORY
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 1
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 5
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %RAX.i453
  %5114 = load i64, i64* %RCX.i454
  %5115 = load i64, i64* %PC.i452
  %5116 = add i64 %5115, 3
  store i64 %5116, i64* %PC.i452
  %5117 = add i64 %5114, %5113
  store i64 %5117, i64* %RAX.i453, align 8
  %5118 = icmp ult i64 %5117, %5113
  %5119 = icmp ult i64 %5117, %5114
  %5120 = or i1 %5118, %5119
  %5121 = zext i1 %5120 to i8
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5121, i8* %5122, align 1
  %5123 = trunc i64 %5117 to i32
  %5124 = and i32 %5123, 255
  %5125 = call i32 @llvm.ctpop.i32(i32 %5124)
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  %5128 = xor i8 %5127, 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5128, i8* %5129, align 1
  %5130 = xor i64 %5114, %5113
  %5131 = xor i64 %5130, %5117
  %5132 = lshr i64 %5131, 4
  %5133 = trunc i64 %5132 to i8
  %5134 = and i8 %5133, 1
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5134, i8* %5135, align 1
  %5136 = icmp eq i64 %5117, 0
  %5137 = zext i1 %5136 to i8
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5137, i8* %5138, align 1
  %5139 = lshr i64 %5117, 63
  %5140 = trunc i64 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5140, i8* %5141, align 1
  %5142 = lshr i64 %5113, 63
  %5143 = lshr i64 %5114, 63
  %5144 = xor i64 %5139, %5142
  %5145 = xor i64 %5139, %5143
  %5146 = add i64 %5144, %5145
  %5147 = icmp eq i64 %5146, 2
  %5148 = zext i1 %5147 to i8
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5148, i8* %5149, align 1
  store %struct.Memory* %loadMem_400ee1, %struct.Memory** %MEMORY
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 5
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 15
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %5158 to i64*
  %5159 = load i64, i64* %RBP.i451
  %5160 = sub i64 %5159, 44
  %5161 = load i64, i64* %PC.i449
  %5162 = add i64 %5161, 4
  store i64 %5162, i64* %PC.i449
  %5163 = inttoptr i64 %5160 to i32*
  %5164 = load i32, i32* %5163
  %5165 = sext i32 %5164 to i64
  store i64 %5165, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 33
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 1
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 5
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5175, i64 0, i64 1
  %YMM1.i448 = bitcast %union.VectorReg* %5176 to %"class.std::bitset"*
  %5177 = bitcast %"class.std::bitset"* %YMM1.i448 to i8*
  %5178 = load i64, i64* %RAX.i446
  %5179 = load i64, i64* %RCX.i447
  %5180 = mul i64 %5179, 8
  %5181 = add i64 %5180, %5178
  %5182 = load i64, i64* %PC.i445
  %5183 = add i64 %5182, 5
  store i64 %5183, i64* %PC.i445
  %5184 = inttoptr i64 %5181 to double*
  %5185 = load double, double* %5184
  %5186 = bitcast i8* %5177 to double*
  store double %5185, double* %5186, align 1
  %5187 = getelementptr inbounds i8, i8* %5177, i64 8
  %5188 = bitcast i8* %5187 to double*
  store double 0.000000e+00, double* %5188, align 1
  store %struct.Memory* %loadMem_400ee8, %struct.Memory** %MEMORY
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 1
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i444
  %5199 = sub i64 %5198, 24
  %5200 = load i64, i64* %PC.i442
  %5201 = add i64 %5200, 4
  store i64 %5201, i64* %PC.i442
  %5202 = inttoptr i64 %5199 to i64*
  %5203 = load i64, i64* %5202
  store i64 %5203, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_400eed, %struct.Memory** %MEMORY
  %loadMem_400ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 5
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 15
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %5212 to i64*
  %5213 = load i64, i64* %RBP.i441
  %5214 = sub i64 %5213, 40
  %5215 = load i64, i64* %PC.i439
  %5216 = add i64 %5215, 4
  store i64 %5216, i64* %PC.i439
  %5217 = inttoptr i64 %5214 to i32*
  %5218 = load i32, i32* %5217
  %5219 = sext i32 %5218 to i64
  store i64 %5219, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_400ef1, %struct.Memory** %MEMORY
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 5
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %5225 to i64*
  %5226 = load i64, i64* %RCX.i438
  %5227 = load i64, i64* %PC.i437
  %5228 = add i64 %5227, 4
  store i64 %5228, i64* %PC.i437
  %5229 = shl i64 %5226, 12
  %5230 = icmp slt i64 %5229, 0
  %5231 = shl i64 %5229, 1
  store i64 %5231, i64* %RCX.i438, align 8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5233 = zext i1 %5230 to i8
  store i8 %5233, i8* %5232, align 1
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5235 = trunc i64 %5231 to i32
  store i8 1, i8* %5234, align 1
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5236, align 1
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5238 = icmp eq i64 %5231, 0
  %5239 = zext i1 %5238 to i8
  store i8 %5239, i8* %5237, align 1
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5241 = lshr i64 %5231, 63
  %5242 = trunc i64 %5241 to i8
  store i8 %5242, i8* %5240, align 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5243, align 1
  store %struct.Memory* %loadMem_400ef5, %struct.Memory** %MEMORY
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 33
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 1
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 5
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %5252 to i64*
  %5253 = load i64, i64* %RAX.i435
  %5254 = load i64, i64* %RCX.i436
  %5255 = load i64, i64* %PC.i434
  %5256 = add i64 %5255, 3
  store i64 %5256, i64* %PC.i434
  %5257 = add i64 %5254, %5253
  store i64 %5257, i64* %RAX.i435, align 8
  %5258 = icmp ult i64 %5257, %5253
  %5259 = icmp ult i64 %5257, %5254
  %5260 = or i1 %5258, %5259
  %5261 = zext i1 %5260 to i8
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5261, i8* %5262, align 1
  %5263 = trunc i64 %5257 to i32
  %5264 = and i32 %5263, 255
  %5265 = call i32 @llvm.ctpop.i32(i32 %5264)
  %5266 = trunc i32 %5265 to i8
  %5267 = and i8 %5266, 1
  %5268 = xor i8 %5267, 1
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5268, i8* %5269, align 1
  %5270 = xor i64 %5254, %5253
  %5271 = xor i64 %5270, %5257
  %5272 = lshr i64 %5271, 4
  %5273 = trunc i64 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5274, i8* %5275, align 1
  %5276 = icmp eq i64 %5257, 0
  %5277 = zext i1 %5276 to i8
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5277, i8* %5278, align 1
  %5279 = lshr i64 %5257, 63
  %5280 = trunc i64 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5280, i8* %5281, align 1
  %5282 = lshr i64 %5253, 63
  %5283 = lshr i64 %5254, 63
  %5284 = xor i64 %5279, %5282
  %5285 = xor i64 %5279, %5283
  %5286 = add i64 %5284, %5285
  %5287 = icmp eq i64 %5286, 2
  %5288 = zext i1 %5287 to i8
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5288, i8* %5289, align 1
  store %struct.Memory* %loadMem_400ef9, %struct.Memory** %MEMORY
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 33
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 5
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 15
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %5298 to i64*
  %5299 = load i64, i64* %RBP.i433
  %5300 = sub i64 %5299, 44
  %5301 = load i64, i64* %PC.i431
  %5302 = add i64 %5301, 4
  store i64 %5302, i64* %PC.i431
  %5303 = inttoptr i64 %5300 to i32*
  %5304 = load i32, i32* %5303
  %5305 = sext i32 %5304 to i64
  store i64 %5305, i64* %RCX.i432, align 8
  store %struct.Memory* %loadMem_400efc, %struct.Memory** %MEMORY
  %loadMem_400f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 33
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 1
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 5
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5315, i64 0, i64 1
  %YMM1.i430 = bitcast %union.VectorReg* %5316 to %"class.std::bitset"*
  %5317 = bitcast %"class.std::bitset"* %YMM1.i430 to i8*
  %5318 = bitcast %"class.std::bitset"* %YMM1.i430 to i8*
  %5319 = load i64, i64* %RAX.i428
  %5320 = load i64, i64* %RCX.i429
  %5321 = mul i64 %5320, 8
  %5322 = add i64 %5321, %5319
  %5323 = load i64, i64* %PC.i427
  %5324 = add i64 %5323, 5
  store i64 %5324, i64* %PC.i427
  %5325 = bitcast i8* %5318 to double*
  %5326 = load double, double* %5325, align 1
  %5327 = getelementptr inbounds i8, i8* %5318, i64 8
  %5328 = bitcast i8* %5327 to i64*
  %5329 = load i64, i64* %5328, align 1
  %5330 = inttoptr i64 %5322 to double*
  %5331 = load double, double* %5330
  %5332 = fmul double %5326, %5331
  %5333 = bitcast i8* %5317 to double*
  store double %5332, double* %5333, align 1
  %5334 = getelementptr inbounds i8, i8* %5317, i64 8
  %5335 = bitcast i8* %5334 to i64*
  store i64 %5329, i64* %5335, align 1
  store %struct.Memory* %loadMem_400f00, %struct.Memory** %MEMORY
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %5341 to i64*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 15
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RBP.i426
  %5346 = sub i64 %5345, 32
  %5347 = load i64, i64* %PC.i424
  %5348 = add i64 %5347, 4
  store i64 %5348, i64* %PC.i424
  %5349 = inttoptr i64 %5346 to i64*
  %5350 = load i64, i64* %5349
  store i64 %5350, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  %loadMem_400f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 33
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 7
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %5356 to i64*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 15
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %5359 to i64*
  %5360 = load i64, i64* %RBP.i423
  %5361 = sub i64 %5360, 40
  %5362 = load i64, i64* %PC.i421
  %5363 = add i64 %5362, 3
  store i64 %5363, i64* %PC.i421
  %5364 = inttoptr i64 %5361 to i32*
  %5365 = load i32, i32* %5364
  %5366 = zext i32 %5365 to i64
  store i64 %5366, i64* %RDX.i422, align 8
  store %struct.Memory* %loadMem_400f09, %struct.Memory** %MEMORY
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 33
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %5369 to i64*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 7
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %RDX.i420
  %5374 = load i64, i64* %PC.i419
  %5375 = add i64 %5374, 3
  store i64 %5375, i64* %PC.i419
  %5376 = trunc i64 %5373 to i32
  %5377 = sub i32 %5376, 1
  %5378 = zext i32 %5377 to i64
  store i64 %5378, i64* %RDX.i420, align 8
  %5379 = icmp ult i32 %5376, 1
  %5380 = zext i1 %5379 to i8
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5380, i8* %5381, align 1
  %5382 = and i32 %5377, 255
  %5383 = call i32 @llvm.ctpop.i32(i32 %5382)
  %5384 = trunc i32 %5383 to i8
  %5385 = and i8 %5384, 1
  %5386 = xor i8 %5385, 1
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5386, i8* %5387, align 1
  %5388 = xor i64 1, %5373
  %5389 = trunc i64 %5388 to i32
  %5390 = xor i32 %5389, %5377
  %5391 = lshr i32 %5390, 4
  %5392 = trunc i32 %5391 to i8
  %5393 = and i8 %5392, 1
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5393, i8* %5394, align 1
  %5395 = icmp eq i32 %5377, 0
  %5396 = zext i1 %5395 to i8
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5396, i8* %5397, align 1
  %5398 = lshr i32 %5377, 31
  %5399 = trunc i32 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5399, i8* %5400, align 1
  %5401 = lshr i32 %5376, 31
  %5402 = xor i32 %5398, %5401
  %5403 = add i32 %5402, %5401
  %5404 = icmp eq i32 %5403, 2
  %5405 = zext i1 %5404 to i8
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5405, i8* %5406, align 1
  store %struct.Memory* %loadMem_400f0c, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 7
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %EDX.i417 = bitcast %union.anon* %5412 to i32*
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 5
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %5415 to i64*
  %5416 = load i32, i32* %EDX.i417
  %5417 = zext i32 %5416 to i64
  %5418 = load i64, i64* %PC.i416
  %5419 = add i64 %5418, 3
  store i64 %5419, i64* %PC.i416
  %5420 = shl i64 %5417, 32
  %5421 = ashr exact i64 %5420, 32
  store i64 %5421, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 33
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 5
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %5427 to i64*
  %5428 = load i64, i64* %RCX.i415
  %5429 = load i64, i64* %PC.i414
  %5430 = add i64 %5429, 4
  store i64 %5430, i64* %PC.i414
  %5431 = shl i64 %5428, 12
  %5432 = icmp slt i64 %5431, 0
  %5433 = shl i64 %5431, 1
  store i64 %5433, i64* %RCX.i415, align 8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5435 = zext i1 %5432 to i8
  store i8 %5435, i8* %5434, align 1
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5437 = trunc i64 %5433 to i32
  store i8 1, i8* %5436, align 1
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5438, align 1
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5440 = icmp eq i64 %5433, 0
  %5441 = zext i1 %5440 to i8
  store i8 %5441, i8* %5439, align 1
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5443 = lshr i64 %5433, 63
  %5444 = trunc i64 %5443 to i8
  store i8 %5444, i8* %5442, align 1
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5445, align 1
  store %struct.Memory* %loadMem_400f12, %struct.Memory** %MEMORY
  %loadMem_400f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5448 to i64*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 1
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 5
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %RAX.i412
  %5456 = load i64, i64* %RCX.i413
  %5457 = load i64, i64* %PC.i411
  %5458 = add i64 %5457, 3
  store i64 %5458, i64* %PC.i411
  %5459 = add i64 %5456, %5455
  store i64 %5459, i64* %RAX.i412, align 8
  %5460 = icmp ult i64 %5459, %5455
  %5461 = icmp ult i64 %5459, %5456
  %5462 = or i1 %5460, %5461
  %5463 = zext i1 %5462 to i8
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5463, i8* %5464, align 1
  %5465 = trunc i64 %5459 to i32
  %5466 = and i32 %5465, 255
  %5467 = call i32 @llvm.ctpop.i32(i32 %5466)
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5470, i8* %5471, align 1
  %5472 = xor i64 %5456, %5455
  %5473 = xor i64 %5472, %5459
  %5474 = lshr i64 %5473, 4
  %5475 = trunc i64 %5474 to i8
  %5476 = and i8 %5475, 1
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5476, i8* %5477, align 1
  %5478 = icmp eq i64 %5459, 0
  %5479 = zext i1 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5479, i8* %5480, align 1
  %5481 = lshr i64 %5459, 63
  %5482 = trunc i64 %5481 to i8
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5482, i8* %5483, align 1
  %5484 = lshr i64 %5455, 63
  %5485 = lshr i64 %5456, 63
  %5486 = xor i64 %5481, %5484
  %5487 = xor i64 %5481, %5485
  %5488 = add i64 %5486, %5487
  %5489 = icmp eq i64 %5488, 2
  %5490 = zext i1 %5489 to i8
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5490, i8* %5491, align 1
  store %struct.Memory* %loadMem_400f16, %struct.Memory** %MEMORY
  %loadMem_400f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 5
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 15
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %5500 to i64*
  %5501 = load i64, i64* %RBP.i410
  %5502 = sub i64 %5501, 44
  %5503 = load i64, i64* %PC.i408
  %5504 = add i64 %5503, 4
  store i64 %5504, i64* %PC.i408
  %5505 = inttoptr i64 %5502 to i32*
  %5506 = load i32, i32* %5505
  %5507 = sext i32 %5506 to i64
  store i64 %5507, i64* %RCX.i409, align 8
  store %struct.Memory* %loadMem_400f19, %struct.Memory** %MEMORY
  %loadMem_400f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 33
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5510 to i64*
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 1
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %5513 to i64*
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 5
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5517, i64 0, i64 1
  %YMM1.i407 = bitcast %union.VectorReg* %5518 to %"class.std::bitset"*
  %5519 = bitcast %"class.std::bitset"* %YMM1.i407 to i8*
  %5520 = bitcast %"class.std::bitset"* %YMM1.i407 to i8*
  %5521 = load i64, i64* %RAX.i405
  %5522 = load i64, i64* %RCX.i406
  %5523 = mul i64 %5522, 8
  %5524 = add i64 %5523, %5521
  %5525 = load i64, i64* %PC.i404
  %5526 = add i64 %5525, 5
  store i64 %5526, i64* %PC.i404
  %5527 = bitcast i8* %5520 to double*
  %5528 = load double, double* %5527, align 1
  %5529 = getelementptr inbounds i8, i8* %5520, i64 8
  %5530 = bitcast i8* %5529 to i64*
  %5531 = load i64, i64* %5530, align 1
  %5532 = inttoptr i64 %5524 to double*
  %5533 = load double, double* %5532
  %5534 = fdiv double %5528, %5533
  %5535 = bitcast i8* %5519 to double*
  store double %5534, double* %5535, align 1
  %5536 = getelementptr inbounds i8, i8* %5519, i64 8
  %5537 = bitcast i8* %5536 to i64*
  store i64 %5531, i64* %5537, align 1
  store %struct.Memory* %loadMem_400f1d, %struct.Memory** %MEMORY
  %loadMem_400f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 33
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5540 to i64*
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5541, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %5542 to %"class.std::bitset"*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5543, i64 0, i64 1
  %XMM1.i403 = bitcast %union.VectorReg* %5544 to %union.vec128_t*
  %5545 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %5546 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %5547 = bitcast %union.vec128_t* %XMM1.i403 to i8*
  %5548 = load i64, i64* %PC.i401
  %5549 = add i64 %5548, 4
  store i64 %5549, i64* %PC.i401
  %5550 = bitcast i8* %5546 to double*
  %5551 = load double, double* %5550, align 1
  %5552 = getelementptr inbounds i8, i8* %5546, i64 8
  %5553 = bitcast i8* %5552 to i64*
  %5554 = load i64, i64* %5553, align 1
  %5555 = bitcast i8* %5547 to double*
  %5556 = load double, double* %5555, align 1
  %5557 = fsub double %5551, %5556
  %5558 = bitcast i8* %5545 to double*
  store double %5557, double* %5558, align 1
  %5559 = getelementptr inbounds i8, i8* %5545, i64 8
  %5560 = bitcast i8* %5559 to i64*
  store i64 %5554, i64* %5560, align 1
  store %struct.Memory* %loadMem_400f22, %struct.Memory** %MEMORY
  %loadMem_400f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 33
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 1
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %5566 to i64*
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 15
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %5569 to i64*
  %5570 = load i64, i64* %RBP.i400
  %5571 = sub i64 %5570, 16
  %5572 = load i64, i64* %PC.i398
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i398
  %5574 = inttoptr i64 %5571 to i64*
  %5575 = load i64, i64* %5574
  store i64 %5575, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_400f26, %struct.Memory** %MEMORY
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 5
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 15
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %RBP.i397
  %5586 = sub i64 %5585, 40
  %5587 = load i64, i64* %PC.i395
  %5588 = add i64 %5587, 4
  store i64 %5588, i64* %PC.i395
  %5589 = inttoptr i64 %5586 to i32*
  %5590 = load i32, i32* %5589
  %5591 = sext i32 %5590 to i64
  store i64 %5591, i64* %RCX.i396, align 8
  store %struct.Memory* %loadMem_400f2a, %struct.Memory** %MEMORY
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 5
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %5597 to i64*
  %5598 = load i64, i64* %RCX.i394
  %5599 = load i64, i64* %PC.i393
  %5600 = add i64 %5599, 4
  store i64 %5600, i64* %PC.i393
  %5601 = shl i64 %5598, 12
  %5602 = icmp slt i64 %5601, 0
  %5603 = shl i64 %5601, 1
  store i64 %5603, i64* %RCX.i394, align 8
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5605 = zext i1 %5602 to i8
  store i8 %5605, i8* %5604, align 1
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5607 = trunc i64 %5603 to i32
  store i8 1, i8* %5606, align 1
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5608, align 1
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5610 = icmp eq i64 %5603, 0
  %5611 = zext i1 %5610 to i8
  store i8 %5611, i8* %5609, align 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5613 = lshr i64 %5603, 63
  %5614 = trunc i64 %5613 to i8
  store i8 %5614, i8* %5612, align 1
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5615, align 1
  store %struct.Memory* %loadMem_400f2e, %struct.Memory** %MEMORY
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 33
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %5618 to i64*
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 1
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %5621 to i64*
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 5
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %5624 to i64*
  %5625 = load i64, i64* %RAX.i391
  %5626 = load i64, i64* %RCX.i392
  %5627 = load i64, i64* %PC.i390
  %5628 = add i64 %5627, 3
  store i64 %5628, i64* %PC.i390
  %5629 = add i64 %5626, %5625
  store i64 %5629, i64* %RAX.i391, align 8
  %5630 = icmp ult i64 %5629, %5625
  %5631 = icmp ult i64 %5629, %5626
  %5632 = or i1 %5630, %5631
  %5633 = zext i1 %5632 to i8
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5633, i8* %5634, align 1
  %5635 = trunc i64 %5629 to i32
  %5636 = and i32 %5635, 255
  %5637 = call i32 @llvm.ctpop.i32(i32 %5636)
  %5638 = trunc i32 %5637 to i8
  %5639 = and i8 %5638, 1
  %5640 = xor i8 %5639, 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5640, i8* %5641, align 1
  %5642 = xor i64 %5626, %5625
  %5643 = xor i64 %5642, %5629
  %5644 = lshr i64 %5643, 4
  %5645 = trunc i64 %5644 to i8
  %5646 = and i8 %5645, 1
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5646, i8* %5647, align 1
  %5648 = icmp eq i64 %5629, 0
  %5649 = zext i1 %5648 to i8
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5649, i8* %5650, align 1
  %5651 = lshr i64 %5629, 63
  %5652 = trunc i64 %5651 to i8
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5652, i8* %5653, align 1
  %5654 = lshr i64 %5625, 63
  %5655 = lshr i64 %5626, 63
  %5656 = xor i64 %5651, %5654
  %5657 = xor i64 %5651, %5655
  %5658 = add i64 %5656, %5657
  %5659 = icmp eq i64 %5658, 2
  %5660 = zext i1 %5659 to i8
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5660, i8* %5661, align 1
  store %struct.Memory* %loadMem_400f32, %struct.Memory** %MEMORY
  %loadMem_400f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 33
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 5
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %5667 to i64*
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 15
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %5670 to i64*
  %5671 = load i64, i64* %RBP.i389
  %5672 = sub i64 %5671, 44
  %5673 = load i64, i64* %PC.i387
  %5674 = add i64 %5673, 4
  store i64 %5674, i64* %PC.i387
  %5675 = inttoptr i64 %5672 to i32*
  %5676 = load i32, i32* %5675
  %5677 = sext i32 %5676 to i64
  store i64 %5677, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_400f35, %struct.Memory** %MEMORY
  %loadMem_400f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5679 = getelementptr inbounds %struct.GPR, %struct.GPR* %5678, i32 0, i32 33
  %5680 = getelementptr inbounds %struct.Reg, %struct.Reg* %5679, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5680 to i64*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5682 = getelementptr inbounds %struct.GPR, %struct.GPR* %5681, i32 0, i32 1
  %5683 = getelementptr inbounds %struct.Reg, %struct.Reg* %5682, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %5683 to i64*
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 5
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5687, i64 0, i64 0
  %XMM0.i386 = bitcast %union.VectorReg* %5688 to %union.vec128_t*
  %5689 = load i64, i64* %RAX.i384
  %5690 = load i64, i64* %RCX.i385
  %5691 = mul i64 %5690, 8
  %5692 = add i64 %5691, %5689
  %5693 = bitcast %union.vec128_t* %XMM0.i386 to i8*
  %5694 = load i64, i64* %PC.i383
  %5695 = add i64 %5694, 5
  store i64 %5695, i64* %PC.i383
  %5696 = bitcast i8* %5693 to double*
  %5697 = load double, double* %5696, align 1
  %5698 = inttoptr i64 %5692 to double*
  store double %5697, double* %5698
  store %struct.Memory* %loadMem_400f39, %struct.Memory** %MEMORY
  %loadMem_400f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 1
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i382
  %5709 = sub i64 %5708, 32
  %5710 = load i64, i64* %PC.i380
  %5711 = add i64 %5710, 4
  store i64 %5711, i64* %PC.i380
  %5712 = inttoptr i64 %5709 to i64*
  %5713 = load i64, i64* %5712
  store i64 %5713, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_400f3e, %struct.Memory** %MEMORY
  %loadMem_400f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5716 to i64*
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 5
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %5719 to i64*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 15
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %5722 to i64*
  %5723 = load i64, i64* %RBP.i379
  %5724 = sub i64 %5723, 40
  %5725 = load i64, i64* %PC.i377
  %5726 = add i64 %5725, 4
  store i64 %5726, i64* %PC.i377
  %5727 = inttoptr i64 %5724 to i32*
  %5728 = load i32, i32* %5727
  %5729 = sext i32 %5728 to i64
  store i64 %5729, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_400f42, %struct.Memory** %MEMORY
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 33
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 5
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %5735 to i64*
  %5736 = load i64, i64* %RCX.i376
  %5737 = load i64, i64* %PC.i375
  %5738 = add i64 %5737, 4
  store i64 %5738, i64* %PC.i375
  %5739 = shl i64 %5736, 12
  %5740 = icmp slt i64 %5739, 0
  %5741 = shl i64 %5739, 1
  store i64 %5741, i64* %RCX.i376, align 8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5743 = zext i1 %5740 to i8
  store i8 %5743, i8* %5742, align 1
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5745 = trunc i64 %5741 to i32
  store i8 1, i8* %5744, align 1
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5746, align 1
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5748 = icmp eq i64 %5741, 0
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %5747, align 1
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5751 = lshr i64 %5741, 63
  %5752 = trunc i64 %5751 to i8
  store i8 %5752, i8* %5750, align 1
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5753, align 1
  store %struct.Memory* %loadMem_400f46, %struct.Memory** %MEMORY
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 1
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %5759 to i64*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 5
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RAX.i373
  %5764 = load i64, i64* %RCX.i374
  %5765 = load i64, i64* %PC.i372
  %5766 = add i64 %5765, 3
  store i64 %5766, i64* %PC.i372
  %5767 = add i64 %5764, %5763
  store i64 %5767, i64* %RAX.i373, align 8
  %5768 = icmp ult i64 %5767, %5763
  %5769 = icmp ult i64 %5767, %5764
  %5770 = or i1 %5768, %5769
  %5771 = zext i1 %5770 to i8
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5771, i8* %5772, align 1
  %5773 = trunc i64 %5767 to i32
  %5774 = and i32 %5773, 255
  %5775 = call i32 @llvm.ctpop.i32(i32 %5774)
  %5776 = trunc i32 %5775 to i8
  %5777 = and i8 %5776, 1
  %5778 = xor i8 %5777, 1
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5778, i8* %5779, align 1
  %5780 = xor i64 %5764, %5763
  %5781 = xor i64 %5780, %5767
  %5782 = lshr i64 %5781, 4
  %5783 = trunc i64 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5784, i8* %5785, align 1
  %5786 = icmp eq i64 %5767, 0
  %5787 = zext i1 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5787, i8* %5788, align 1
  %5789 = lshr i64 %5767, 63
  %5790 = trunc i64 %5789 to i8
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5790, i8* %5791, align 1
  %5792 = lshr i64 %5763, 63
  %5793 = lshr i64 %5764, 63
  %5794 = xor i64 %5789, %5792
  %5795 = xor i64 %5789, %5793
  %5796 = add i64 %5794, %5795
  %5797 = icmp eq i64 %5796, 2
  %5798 = zext i1 %5797 to i8
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5798, i8* %5799, align 1
  store %struct.Memory* %loadMem_400f4a, %struct.Memory** %MEMORY
  %loadMem_400f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5802 to i64*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 5
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %5805 to i64*
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 15
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %5808 to i64*
  %5809 = load i64, i64* %RBP.i371
  %5810 = sub i64 %5809, 44
  %5811 = load i64, i64* %PC.i369
  %5812 = add i64 %5811, 4
  store i64 %5812, i64* %PC.i369
  %5813 = inttoptr i64 %5810 to i32*
  %5814 = load i32, i32* %5813
  %5815 = sext i32 %5814 to i64
  store i64 %5815, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_400f4d, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 1
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 5
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5825, i64 0, i64 0
  %YMM0.i368 = bitcast %union.VectorReg* %5826 to %"class.std::bitset"*
  %5827 = bitcast %"class.std::bitset"* %YMM0.i368 to i8*
  %5828 = load i64, i64* %RAX.i366
  %5829 = load i64, i64* %RCX.i367
  %5830 = mul i64 %5829, 8
  %5831 = add i64 %5830, %5828
  %5832 = load i64, i64* %PC.i365
  %5833 = add i64 %5832, 5
  store i64 %5833, i64* %PC.i365
  %5834 = inttoptr i64 %5831 to double*
  %5835 = load double, double* %5834
  %5836 = bitcast i8* %5827 to double*
  store double %5835, double* %5836, align 1
  %5837 = getelementptr inbounds i8, i8* %5827, i64 8
  %5838 = bitcast i8* %5837 to double*
  store double 0.000000e+00, double* %5838, align 1
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 33
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 1
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5844 to i64*
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5846 = getelementptr inbounds %struct.GPR, %struct.GPR* %5845, i32 0, i32 15
  %5847 = getelementptr inbounds %struct.Reg, %struct.Reg* %5846, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5847 to i64*
  %5848 = load i64, i64* %RBP.i364
  %5849 = sub i64 %5848, 24
  %5850 = load i64, i64* %PC.i362
  %5851 = add i64 %5850, 4
  store i64 %5851, i64* %PC.i362
  %5852 = inttoptr i64 %5849 to i64*
  %5853 = load i64, i64* %5852
  store i64 %5853, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_400f56, %struct.Memory** %MEMORY
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5855 = getelementptr inbounds %struct.GPR, %struct.GPR* %5854, i32 0, i32 33
  %5856 = getelementptr inbounds %struct.Reg, %struct.Reg* %5855, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5856 to i64*
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 5
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %5859 to i64*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 15
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %5862 to i64*
  %5863 = load i64, i64* %RBP.i361
  %5864 = sub i64 %5863, 40
  %5865 = load i64, i64* %PC.i359
  %5866 = add i64 %5865, 4
  store i64 %5866, i64* %PC.i359
  %5867 = inttoptr i64 %5864 to i32*
  %5868 = load i32, i32* %5867
  %5869 = sext i32 %5868 to i64
  store i64 %5869, i64* %RCX.i360, align 8
  store %struct.Memory* %loadMem_400f5a, %struct.Memory** %MEMORY
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 33
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5872 to i64*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 5
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %RCX.i358
  %5877 = load i64, i64* %PC.i357
  %5878 = add i64 %5877, 4
  store i64 %5878, i64* %PC.i357
  %5879 = shl i64 %5876, 12
  %5880 = icmp slt i64 %5879, 0
  %5881 = shl i64 %5879, 1
  store i64 %5881, i64* %RCX.i358, align 8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5883 = zext i1 %5880 to i8
  store i8 %5883, i8* %5882, align 1
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5885 = trunc i64 %5881 to i32
  store i8 1, i8* %5884, align 1
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5886, align 1
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5888 = icmp eq i64 %5881, 0
  %5889 = zext i1 %5888 to i8
  store i8 %5889, i8* %5887, align 1
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5891 = lshr i64 %5881, 63
  %5892 = trunc i64 %5891 to i8
  store i8 %5892, i8* %5890, align 1
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5893, align 1
  store %struct.Memory* %loadMem_400f5e, %struct.Memory** %MEMORY
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 33
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 1
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %5899 to i64*
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 5
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %5902 to i64*
  %5903 = load i64, i64* %RAX.i355
  %5904 = load i64, i64* %RCX.i356
  %5905 = load i64, i64* %PC.i354
  %5906 = add i64 %5905, 3
  store i64 %5906, i64* %PC.i354
  %5907 = add i64 %5904, %5903
  store i64 %5907, i64* %RAX.i355, align 8
  %5908 = icmp ult i64 %5907, %5903
  %5909 = icmp ult i64 %5907, %5904
  %5910 = or i1 %5908, %5909
  %5911 = zext i1 %5910 to i8
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5911, i8* %5912, align 1
  %5913 = trunc i64 %5907 to i32
  %5914 = and i32 %5913, 255
  %5915 = call i32 @llvm.ctpop.i32(i32 %5914)
  %5916 = trunc i32 %5915 to i8
  %5917 = and i8 %5916, 1
  %5918 = xor i8 %5917, 1
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5918, i8* %5919, align 1
  %5920 = xor i64 %5904, %5903
  %5921 = xor i64 %5920, %5907
  %5922 = lshr i64 %5921, 4
  %5923 = trunc i64 %5922 to i8
  %5924 = and i8 %5923, 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5924, i8* %5925, align 1
  %5926 = icmp eq i64 %5907, 0
  %5927 = zext i1 %5926 to i8
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5927, i8* %5928, align 1
  %5929 = lshr i64 %5907, 63
  %5930 = trunc i64 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5930, i8* %5931, align 1
  %5932 = lshr i64 %5903, 63
  %5933 = lshr i64 %5904, 63
  %5934 = xor i64 %5929, %5932
  %5935 = xor i64 %5929, %5933
  %5936 = add i64 %5934, %5935
  %5937 = icmp eq i64 %5936, 2
  %5938 = zext i1 %5937 to i8
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5938, i8* %5939, align 1
  store %struct.Memory* %loadMem_400f62, %struct.Memory** %MEMORY
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 5
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 15
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %5948 to i64*
  %5949 = load i64, i64* %RBP.i353
  %5950 = sub i64 %5949, 44
  %5951 = load i64, i64* %PC.i351
  %5952 = add i64 %5951, 4
  store i64 %5952, i64* %PC.i351
  %5953 = inttoptr i64 %5950 to i32*
  %5954 = load i32, i32* %5953
  %5955 = sext i32 %5954 to i64
  store i64 %5955, i64* %RCX.i352, align 8
  store %struct.Memory* %loadMem_400f65, %struct.Memory** %MEMORY
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 1
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 5
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5965, i64 0, i64 1
  %YMM1.i350 = bitcast %union.VectorReg* %5966 to %"class.std::bitset"*
  %5967 = bitcast %"class.std::bitset"* %YMM1.i350 to i8*
  %5968 = load i64, i64* %RAX.i348
  %5969 = load i64, i64* %RCX.i349
  %5970 = mul i64 %5969, 8
  %5971 = add i64 %5970, %5968
  %5972 = load i64, i64* %PC.i347
  %5973 = add i64 %5972, 5
  store i64 %5973, i64* %PC.i347
  %5974 = inttoptr i64 %5971 to double*
  %5975 = load double, double* %5974
  %5976 = bitcast i8* %5967 to double*
  store double %5975, double* %5976, align 1
  %5977 = getelementptr inbounds i8, i8* %5967, i64 8
  %5978 = bitcast i8* %5977 to double*
  store double 0.000000e+00, double* %5978, align 1
  store %struct.Memory* %loadMem_400f69, %struct.Memory** %MEMORY
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 1
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 15
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RBP.i346
  %5989 = sub i64 %5988, 24
  %5990 = load i64, i64* %PC.i344
  %5991 = add i64 %5990, 4
  store i64 %5991, i64* %PC.i344
  %5992 = inttoptr i64 %5989 to i64*
  %5993 = load i64, i64* %5992
  store i64 %5993, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_400f6e, %struct.Memory** %MEMORY
  %loadMem_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5995 = getelementptr inbounds %struct.GPR, %struct.GPR* %5994, i32 0, i32 33
  %5996 = getelementptr inbounds %struct.Reg, %struct.Reg* %5995, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5996 to i64*
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 5
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 15
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %6002 to i64*
  %6003 = load i64, i64* %RBP.i343
  %6004 = sub i64 %6003, 40
  %6005 = load i64, i64* %PC.i341
  %6006 = add i64 %6005, 4
  store i64 %6006, i64* %PC.i341
  %6007 = inttoptr i64 %6004 to i32*
  %6008 = load i32, i32* %6007
  %6009 = sext i32 %6008 to i64
  store i64 %6009, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_400f72, %struct.Memory** %MEMORY
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 5
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %RCX.i340
  %6017 = load i64, i64* %PC.i339
  %6018 = add i64 %6017, 4
  store i64 %6018, i64* %PC.i339
  %6019 = shl i64 %6016, 12
  %6020 = icmp slt i64 %6019, 0
  %6021 = shl i64 %6019, 1
  store i64 %6021, i64* %RCX.i340, align 8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6023 = zext i1 %6020 to i8
  store i8 %6023, i8* %6022, align 1
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6025 = trunc i64 %6021 to i32
  store i8 1, i8* %6024, align 1
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6026, align 1
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6028 = icmp eq i64 %6021, 0
  %6029 = zext i1 %6028 to i8
  store i8 %6029, i8* %6027, align 1
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6031 = lshr i64 %6021, 63
  %6032 = trunc i64 %6031 to i8
  store i8 %6032, i8* %6030, align 1
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6033, align 1
  store %struct.Memory* %loadMem_400f76, %struct.Memory** %MEMORY
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 33
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 1
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 5
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %6042 to i64*
  %6043 = load i64, i64* %RAX.i337
  %6044 = load i64, i64* %RCX.i338
  %6045 = load i64, i64* %PC.i336
  %6046 = add i64 %6045, 3
  store i64 %6046, i64* %PC.i336
  %6047 = add i64 %6044, %6043
  store i64 %6047, i64* %RAX.i337, align 8
  %6048 = icmp ult i64 %6047, %6043
  %6049 = icmp ult i64 %6047, %6044
  %6050 = or i1 %6048, %6049
  %6051 = zext i1 %6050 to i8
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6051, i8* %6052, align 1
  %6053 = trunc i64 %6047 to i32
  %6054 = and i32 %6053, 255
  %6055 = call i32 @llvm.ctpop.i32(i32 %6054)
  %6056 = trunc i32 %6055 to i8
  %6057 = and i8 %6056, 1
  %6058 = xor i8 %6057, 1
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6058, i8* %6059, align 1
  %6060 = xor i64 %6044, %6043
  %6061 = xor i64 %6060, %6047
  %6062 = lshr i64 %6061, 4
  %6063 = trunc i64 %6062 to i8
  %6064 = and i8 %6063, 1
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6064, i8* %6065, align 1
  %6066 = icmp eq i64 %6047, 0
  %6067 = zext i1 %6066 to i8
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6067, i8* %6068, align 1
  %6069 = lshr i64 %6047, 63
  %6070 = trunc i64 %6069 to i8
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6070, i8* %6071, align 1
  %6072 = lshr i64 %6043, 63
  %6073 = lshr i64 %6044, 63
  %6074 = xor i64 %6069, %6072
  %6075 = xor i64 %6069, %6073
  %6076 = add i64 %6074, %6075
  %6077 = icmp eq i64 %6076, 2
  %6078 = zext i1 %6077 to i8
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6078, i8* %6079, align 1
  store %struct.Memory* %loadMem_400f7a, %struct.Memory** %MEMORY
  %loadMem_400f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 33
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 5
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %6085 to i64*
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 15
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %6088 to i64*
  %6089 = load i64, i64* %RBP.i335
  %6090 = sub i64 %6089, 44
  %6091 = load i64, i64* %PC.i333
  %6092 = add i64 %6091, 4
  store i64 %6092, i64* %PC.i333
  %6093 = inttoptr i64 %6090 to i32*
  %6094 = load i32, i32* %6093
  %6095 = sext i32 %6094 to i64
  store i64 %6095, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_400f7d, %struct.Memory** %MEMORY
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 33
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 1
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 5
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6105, i64 0, i64 1
  %YMM1.i332 = bitcast %union.VectorReg* %6106 to %"class.std::bitset"*
  %6107 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %6108 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %6109 = load i64, i64* %RAX.i330
  %6110 = load i64, i64* %RCX.i331
  %6111 = mul i64 %6110, 8
  %6112 = add i64 %6111, %6109
  %6113 = load i64, i64* %PC.i329
  %6114 = add i64 %6113, 5
  store i64 %6114, i64* %PC.i329
  %6115 = bitcast i8* %6108 to double*
  %6116 = load double, double* %6115, align 1
  %6117 = getelementptr inbounds i8, i8* %6108, i64 8
  %6118 = bitcast i8* %6117 to i64*
  %6119 = load i64, i64* %6118, align 1
  %6120 = inttoptr i64 %6112 to double*
  %6121 = load double, double* %6120
  %6122 = fmul double %6116, %6121
  %6123 = bitcast i8* %6107 to double*
  store double %6122, double* %6123, align 1
  %6124 = getelementptr inbounds i8, i8* %6107, i64 8
  %6125 = bitcast i8* %6124 to i64*
  store i64 %6119, i64* %6125, align 1
  store %struct.Memory* %loadMem_400f81, %struct.Memory** %MEMORY
  %loadMem_400f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 33
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 1
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 15
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %6134 to i64*
  %6135 = load i64, i64* %RBP.i328
  %6136 = sub i64 %6135, 32
  %6137 = load i64, i64* %PC.i326
  %6138 = add i64 %6137, 4
  store i64 %6138, i64* %PC.i326
  %6139 = inttoptr i64 %6136 to i64*
  %6140 = load i64, i64* %6139
  store i64 %6140, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_400f86, %struct.Memory** %MEMORY
  %loadMem_400f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 7
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %6146 to i64*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 15
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %RBP.i325
  %6151 = sub i64 %6150, 40
  %6152 = load i64, i64* %PC.i323
  %6153 = add i64 %6152, 3
  store i64 %6153, i64* %PC.i323
  %6154 = inttoptr i64 %6151 to i32*
  %6155 = load i32, i32* %6154
  %6156 = zext i32 %6155 to i64
  store i64 %6156, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_400f8a, %struct.Memory** %MEMORY
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 7
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %6162 to i64*
  %6163 = load i64, i64* %RDX.i322
  %6164 = load i64, i64* %PC.i321
  %6165 = add i64 %6164, 3
  store i64 %6165, i64* %PC.i321
  %6166 = trunc i64 %6163 to i32
  %6167 = sub i32 %6166, 1
  %6168 = zext i32 %6167 to i64
  store i64 %6168, i64* %RDX.i322, align 8
  %6169 = icmp ult i32 %6166, 1
  %6170 = zext i1 %6169 to i8
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6170, i8* %6171, align 1
  %6172 = and i32 %6167, 255
  %6173 = call i32 @llvm.ctpop.i32(i32 %6172)
  %6174 = trunc i32 %6173 to i8
  %6175 = and i8 %6174, 1
  %6176 = xor i8 %6175, 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6176, i8* %6177, align 1
  %6178 = xor i64 1, %6163
  %6179 = trunc i64 %6178 to i32
  %6180 = xor i32 %6179, %6167
  %6181 = lshr i32 %6180, 4
  %6182 = trunc i32 %6181 to i8
  %6183 = and i8 %6182, 1
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6183, i8* %6184, align 1
  %6185 = icmp eq i32 %6167, 0
  %6186 = zext i1 %6185 to i8
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6186, i8* %6187, align 1
  %6188 = lshr i32 %6167, 31
  %6189 = trunc i32 %6188 to i8
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6189, i8* %6190, align 1
  %6191 = lshr i32 %6166, 31
  %6192 = xor i32 %6188, %6191
  %6193 = add i32 %6192, %6191
  %6194 = icmp eq i32 %6193, 2
  %6195 = zext i1 %6194 to i8
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6195, i8* %6196, align 1
  store %struct.Memory* %loadMem_400f8d, %struct.Memory** %MEMORY
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 33
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %6199 to i64*
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 7
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6202 to i32*
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 5
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %6205 to i64*
  %6206 = load i32, i32* %EDX.i
  %6207 = zext i32 %6206 to i64
  %6208 = load i64, i64* %PC.i319
  %6209 = add i64 %6208, 3
  store i64 %6209, i64* %PC.i319
  %6210 = shl i64 %6207, 32
  %6211 = ashr exact i64 %6210, 32
  store i64 %6211, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_400f90, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 33
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 5
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %6217 to i64*
  %6218 = load i64, i64* %RCX.i318
  %6219 = load i64, i64* %PC.i317
  %6220 = add i64 %6219, 4
  store i64 %6220, i64* %PC.i317
  %6221 = shl i64 %6218, 12
  %6222 = icmp slt i64 %6221, 0
  %6223 = shl i64 %6221, 1
  store i64 %6223, i64* %RCX.i318, align 8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6225 = zext i1 %6222 to i8
  store i8 %6225, i8* %6224, align 1
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6227 = trunc i64 %6223 to i32
  store i8 1, i8* %6226, align 1
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6228, align 1
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6230 = icmp eq i64 %6223, 0
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %6229, align 1
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6233 = lshr i64 %6223, 63
  %6234 = trunc i64 %6233 to i8
  store i8 %6234, i8* %6232, align 1
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6235, align 1
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadMem_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 33
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 1
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %6241 to i64*
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 5
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %6244 to i64*
  %6245 = load i64, i64* %RAX.i315
  %6246 = load i64, i64* %RCX.i316
  %6247 = load i64, i64* %PC.i314
  %6248 = add i64 %6247, 3
  store i64 %6248, i64* %PC.i314
  %6249 = add i64 %6246, %6245
  store i64 %6249, i64* %RAX.i315, align 8
  %6250 = icmp ult i64 %6249, %6245
  %6251 = icmp ult i64 %6249, %6246
  %6252 = or i1 %6250, %6251
  %6253 = zext i1 %6252 to i8
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6253, i8* %6254, align 1
  %6255 = trunc i64 %6249 to i32
  %6256 = and i32 %6255, 255
  %6257 = call i32 @llvm.ctpop.i32(i32 %6256)
  %6258 = trunc i32 %6257 to i8
  %6259 = and i8 %6258, 1
  %6260 = xor i8 %6259, 1
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6260, i8* %6261, align 1
  %6262 = xor i64 %6246, %6245
  %6263 = xor i64 %6262, %6249
  %6264 = lshr i64 %6263, 4
  %6265 = trunc i64 %6264 to i8
  %6266 = and i8 %6265, 1
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6266, i8* %6267, align 1
  %6268 = icmp eq i64 %6249, 0
  %6269 = zext i1 %6268 to i8
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6269, i8* %6270, align 1
  %6271 = lshr i64 %6249, 63
  %6272 = trunc i64 %6271 to i8
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6272, i8* %6273, align 1
  %6274 = lshr i64 %6245, 63
  %6275 = lshr i64 %6246, 63
  %6276 = xor i64 %6271, %6274
  %6277 = xor i64 %6271, %6275
  %6278 = add i64 %6276, %6277
  %6279 = icmp eq i64 %6278, 2
  %6280 = zext i1 %6279 to i8
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6280, i8* %6281, align 1
  store %struct.Memory* %loadMem_400f97, %struct.Memory** %MEMORY
  %loadMem_400f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 33
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6284 to i64*
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 5
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 15
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %6290 to i64*
  %6291 = load i64, i64* %RBP.i313
  %6292 = sub i64 %6291, 44
  %6293 = load i64, i64* %PC.i311
  %6294 = add i64 %6293, 4
  store i64 %6294, i64* %PC.i311
  %6295 = inttoptr i64 %6292 to i32*
  %6296 = load i32, i32* %6295
  %6297 = sext i32 %6296 to i64
  store i64 %6297, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_400f9a, %struct.Memory** %MEMORY
  %loadMem_400f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6299 = getelementptr inbounds %struct.GPR, %struct.GPR* %6298, i32 0, i32 33
  %6300 = getelementptr inbounds %struct.Reg, %struct.Reg* %6299, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6300 to i64*
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 1
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %6303 to i64*
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 5
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6307, i64 0, i64 1
  %YMM1.i310 = bitcast %union.VectorReg* %6308 to %"class.std::bitset"*
  %6309 = bitcast %"class.std::bitset"* %YMM1.i310 to i8*
  %6310 = bitcast %"class.std::bitset"* %YMM1.i310 to i8*
  %6311 = load i64, i64* %RAX.i308
  %6312 = load i64, i64* %RCX.i309
  %6313 = mul i64 %6312, 8
  %6314 = add i64 %6313, %6311
  %6315 = load i64, i64* %PC.i307
  %6316 = add i64 %6315, 5
  store i64 %6316, i64* %PC.i307
  %6317 = bitcast i8* %6310 to double*
  %6318 = load double, double* %6317, align 1
  %6319 = getelementptr inbounds i8, i8* %6310, i64 8
  %6320 = bitcast i8* %6319 to i64*
  %6321 = load i64, i64* %6320, align 1
  %6322 = inttoptr i64 %6314 to double*
  %6323 = load double, double* %6322
  %6324 = fdiv double %6318, %6323
  %6325 = bitcast i8* %6309 to double*
  store double %6324, double* %6325, align 1
  %6326 = getelementptr inbounds i8, i8* %6309, i64 8
  %6327 = bitcast i8* %6326 to i64*
  store i64 %6321, i64* %6327, align 1
  store %struct.Memory* %loadMem_400f9e, %struct.Memory** %MEMORY
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 33
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6331, i64 0, i64 0
  %YMM0.i305 = bitcast %union.VectorReg* %6332 to %"class.std::bitset"*
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6333, i64 0, i64 1
  %XMM1.i306 = bitcast %union.VectorReg* %6334 to %union.vec128_t*
  %6335 = bitcast %"class.std::bitset"* %YMM0.i305 to i8*
  %6336 = bitcast %"class.std::bitset"* %YMM0.i305 to i8*
  %6337 = bitcast %union.vec128_t* %XMM1.i306 to i8*
  %6338 = load i64, i64* %PC.i304
  %6339 = add i64 %6338, 4
  store i64 %6339, i64* %PC.i304
  %6340 = bitcast i8* %6336 to double*
  %6341 = load double, double* %6340, align 1
  %6342 = getelementptr inbounds i8, i8* %6336, i64 8
  %6343 = bitcast i8* %6342 to i64*
  %6344 = load i64, i64* %6343, align 1
  %6345 = bitcast i8* %6337 to double*
  %6346 = load double, double* %6345, align 1
  %6347 = fsub double %6341, %6346
  %6348 = bitcast i8* %6335 to double*
  store double %6347, double* %6348, align 1
  %6349 = getelementptr inbounds i8, i8* %6335, i64 8
  %6350 = bitcast i8* %6349 to i64*
  store i64 %6344, i64* %6350, align 1
  store %struct.Memory* %loadMem_400fa3, %struct.Memory** %MEMORY
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 33
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6353 to i64*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 1
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 15
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %RBP.i303
  %6361 = sub i64 %6360, 32
  %6362 = load i64, i64* %PC.i301
  %6363 = add i64 %6362, 4
  store i64 %6363, i64* %PC.i301
  %6364 = inttoptr i64 %6361 to i64*
  %6365 = load i64, i64* %6364
  store i64 %6365, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_400fa7, %struct.Memory** %MEMORY
  %loadMem_400fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 33
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6368 to i64*
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 5
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %6371 to i64*
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 15
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %6374 to i64*
  %6375 = load i64, i64* %RBP.i300
  %6376 = sub i64 %6375, 40
  %6377 = load i64, i64* %PC.i298
  %6378 = add i64 %6377, 4
  store i64 %6378, i64* %PC.i298
  %6379 = inttoptr i64 %6376 to i32*
  %6380 = load i32, i32* %6379
  %6381 = sext i32 %6380 to i64
  store i64 %6381, i64* %RCX.i299, align 8
  store %struct.Memory* %loadMem_400fab, %struct.Memory** %MEMORY
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 33
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %6384 to i64*
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6386 = getelementptr inbounds %struct.GPR, %struct.GPR* %6385, i32 0, i32 5
  %6387 = getelementptr inbounds %struct.Reg, %struct.Reg* %6386, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %6387 to i64*
  %6388 = load i64, i64* %RCX.i297
  %6389 = load i64, i64* %PC.i296
  %6390 = add i64 %6389, 4
  store i64 %6390, i64* %PC.i296
  %6391 = shl i64 %6388, 12
  %6392 = icmp slt i64 %6391, 0
  %6393 = shl i64 %6391, 1
  store i64 %6393, i64* %RCX.i297, align 8
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6395 = zext i1 %6392 to i8
  store i8 %6395, i8* %6394, align 1
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6397 = trunc i64 %6393 to i32
  store i8 1, i8* %6396, align 1
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6398, align 1
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6400 = icmp eq i64 %6393, 0
  %6401 = zext i1 %6400 to i8
  store i8 %6401, i8* %6399, align 1
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6403 = lshr i64 %6393, 63
  %6404 = trunc i64 %6403 to i8
  store i8 %6404, i8* %6402, align 1
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6405, align 1
  store %struct.Memory* %loadMem_400faf, %struct.Memory** %MEMORY
  %loadMem_400fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 1
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %6411 to i64*
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 5
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %6414 to i64*
  %6415 = load i64, i64* %RAX.i294
  %6416 = load i64, i64* %RCX.i295
  %6417 = load i64, i64* %PC.i293
  %6418 = add i64 %6417, 3
  store i64 %6418, i64* %PC.i293
  %6419 = add i64 %6416, %6415
  store i64 %6419, i64* %RAX.i294, align 8
  %6420 = icmp ult i64 %6419, %6415
  %6421 = icmp ult i64 %6419, %6416
  %6422 = or i1 %6420, %6421
  %6423 = zext i1 %6422 to i8
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6423, i8* %6424, align 1
  %6425 = trunc i64 %6419 to i32
  %6426 = and i32 %6425, 255
  %6427 = call i32 @llvm.ctpop.i32(i32 %6426)
  %6428 = trunc i32 %6427 to i8
  %6429 = and i8 %6428, 1
  %6430 = xor i8 %6429, 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6430, i8* %6431, align 1
  %6432 = xor i64 %6416, %6415
  %6433 = xor i64 %6432, %6419
  %6434 = lshr i64 %6433, 4
  %6435 = trunc i64 %6434 to i8
  %6436 = and i8 %6435, 1
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6436, i8* %6437, align 1
  %6438 = icmp eq i64 %6419, 0
  %6439 = zext i1 %6438 to i8
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6439, i8* %6440, align 1
  %6441 = lshr i64 %6419, 63
  %6442 = trunc i64 %6441 to i8
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6442, i8* %6443, align 1
  %6444 = lshr i64 %6415, 63
  %6445 = lshr i64 %6416, 63
  %6446 = xor i64 %6441, %6444
  %6447 = xor i64 %6441, %6445
  %6448 = add i64 %6446, %6447
  %6449 = icmp eq i64 %6448, 2
  %6450 = zext i1 %6449 to i8
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6450, i8* %6451, align 1
  store %struct.Memory* %loadMem_400fb3, %struct.Memory** %MEMORY
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 5
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 15
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %6460 to i64*
  %6461 = load i64, i64* %RBP.i292
  %6462 = sub i64 %6461, 44
  %6463 = load i64, i64* %PC.i290
  %6464 = add i64 %6463, 4
  store i64 %6464, i64* %PC.i290
  %6465 = inttoptr i64 %6462 to i32*
  %6466 = load i32, i32* %6465
  %6467 = sext i32 %6466 to i64
  store i64 %6467, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_400fb6, %struct.Memory** %MEMORY
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 1
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 5
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %6476 to i64*
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6477, i64 0, i64 0
  %XMM0.i289 = bitcast %union.VectorReg* %6478 to %union.vec128_t*
  %6479 = load i64, i64* %RAX.i287
  %6480 = load i64, i64* %RCX.i288
  %6481 = mul i64 %6480, 8
  %6482 = add i64 %6481, %6479
  %6483 = bitcast %union.vec128_t* %XMM0.i289 to i8*
  %6484 = load i64, i64* %PC.i286
  %6485 = add i64 %6484, 5
  store i64 %6485, i64* %PC.i286
  %6486 = bitcast i8* %6483 to double*
  %6487 = load double, double* %6486, align 1
  %6488 = inttoptr i64 %6482 to double*
  store double %6487, double* %6488
  store %struct.Memory* %loadMem_400fba, %struct.Memory** %MEMORY
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 33
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6491 to i64*
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 1
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 15
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %6497 to i64*
  %6498 = load i64, i64* %RBP.i285
  %6499 = sub i64 %6498, 44
  %6500 = load i64, i64* %PC.i283
  %6501 = add i64 %6500, 3
  store i64 %6501, i64* %PC.i283
  %6502 = inttoptr i64 %6499 to i32*
  %6503 = load i32, i32* %6502
  %6504 = zext i32 %6503 to i64
  store i64 %6504, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 33
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6507 to i64*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 1
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %6510 to i64*
  %6511 = load i64, i64* %RAX.i282
  %6512 = load i64, i64* %PC.i281
  %6513 = add i64 %6512, 3
  store i64 %6513, i64* %PC.i281
  %6514 = trunc i64 %6511 to i32
  %6515 = add i32 1, %6514
  %6516 = zext i32 %6515 to i64
  store i64 %6516, i64* %RAX.i282, align 8
  %6517 = icmp ult i32 %6515, %6514
  %6518 = icmp ult i32 %6515, 1
  %6519 = or i1 %6517, %6518
  %6520 = zext i1 %6519 to i8
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6520, i8* %6521, align 1
  %6522 = and i32 %6515, 255
  %6523 = call i32 @llvm.ctpop.i32(i32 %6522)
  %6524 = trunc i32 %6523 to i8
  %6525 = and i8 %6524, 1
  %6526 = xor i8 %6525, 1
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6526, i8* %6527, align 1
  %6528 = xor i64 1, %6511
  %6529 = trunc i64 %6528 to i32
  %6530 = xor i32 %6529, %6515
  %6531 = lshr i32 %6530, 4
  %6532 = trunc i32 %6531 to i8
  %6533 = and i8 %6532, 1
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6533, i8* %6534, align 1
  %6535 = icmp eq i32 %6515, 0
  %6536 = zext i1 %6535 to i8
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6536, i8* %6537, align 1
  %6538 = lshr i32 %6515, 31
  %6539 = trunc i32 %6538 to i8
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6539, i8* %6540, align 1
  %6541 = lshr i32 %6514, 31
  %6542 = xor i32 %6538, %6541
  %6543 = add i32 %6542, %6538
  %6544 = icmp eq i32 %6543, 2
  %6545 = zext i1 %6544 to i8
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6545, i8* %6546, align 1
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 33
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6549 to i64*
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 1
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %6552 to i32*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 15
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6555 to i64*
  %6556 = load i64, i64* %RBP.i280
  %6557 = sub i64 %6556, 44
  %6558 = load i32, i32* %EAX.i279
  %6559 = zext i32 %6558 to i64
  %6560 = load i64, i64* %PC.i278
  %6561 = add i64 %6560, 3
  store i64 %6561, i64* %PC.i278
  %6562 = inttoptr i64 %6557 to i32*
  store i32 %6558, i32* %6562
  store %struct.Memory* %loadMem_400fc5, %struct.Memory** %MEMORY
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 33
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6565 to i64*
  %6566 = load i64, i64* %PC.i277
  %6567 = add i64 %6566, -284
  %6568 = load i64, i64* %PC.i277
  %6569 = add i64 %6568, 5
  store i64 %6569, i64* %PC.i277
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6567, i64* %6570, align 8
  store %struct.Memory* %loadMem_400fc8, %struct.Memory** %MEMORY
  br label %block_.L_400eac

block_.L_400fcd:                                  ; preds = %block_.L_400eac
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 33
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %6573 to i64*
  %6574 = load i64, i64* %PC.i276
  %6575 = add i64 %6574, 5
  %6576 = load i64, i64* %PC.i276
  %6577 = add i64 %6576, 5
  store i64 %6577, i64* %PC.i276
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6575, i64* %6578, align 8
  store %struct.Memory* %loadMem_400fcd, %struct.Memory** %MEMORY
  br label %block_.L_400fd2

block_.L_400fd2:                                  ; preds = %block_.L_400fcd
  %loadMem_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 33
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 1
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 15
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %6587 to i64*
  %6588 = load i64, i64* %RBP.i275
  %6589 = sub i64 %6588, 40
  %6590 = load i64, i64* %PC.i273
  %6591 = add i64 %6590, 3
  store i64 %6591, i64* %PC.i273
  %6592 = inttoptr i64 %6589 to i32*
  %6593 = load i32, i32* %6592
  %6594 = zext i32 %6593 to i64
  store i64 %6594, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_400fd2, %struct.Memory** %MEMORY
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 33
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 1
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %6600 to i64*
  %6601 = load i64, i64* %RAX.i272
  %6602 = load i64, i64* %PC.i271
  %6603 = add i64 %6602, 3
  store i64 %6603, i64* %PC.i271
  %6604 = trunc i64 %6601 to i32
  %6605 = add i32 1, %6604
  %6606 = zext i32 %6605 to i64
  store i64 %6606, i64* %RAX.i272, align 8
  %6607 = icmp ult i32 %6605, %6604
  %6608 = icmp ult i32 %6605, 1
  %6609 = or i1 %6607, %6608
  %6610 = zext i1 %6609 to i8
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6610, i8* %6611, align 1
  %6612 = and i32 %6605, 255
  %6613 = call i32 @llvm.ctpop.i32(i32 %6612)
  %6614 = trunc i32 %6613 to i8
  %6615 = and i8 %6614, 1
  %6616 = xor i8 %6615, 1
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6616, i8* %6617, align 1
  %6618 = xor i64 1, %6601
  %6619 = trunc i64 %6618 to i32
  %6620 = xor i32 %6619, %6605
  %6621 = lshr i32 %6620, 4
  %6622 = trunc i32 %6621 to i8
  %6623 = and i8 %6622, 1
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6623, i8* %6624, align 1
  %6625 = icmp eq i32 %6605, 0
  %6626 = zext i1 %6625 to i8
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6626, i8* %6627, align 1
  %6628 = lshr i32 %6605, 31
  %6629 = trunc i32 %6628 to i8
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6629, i8* %6630, align 1
  %6631 = lshr i32 %6604, 31
  %6632 = xor i32 %6628, %6631
  %6633 = add i32 %6632, %6628
  %6634 = icmp eq i32 %6633, 2
  %6635 = zext i1 %6634 to i8
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6635, i8* %6636, align 1
  store %struct.Memory* %loadMem_400fd5, %struct.Memory** %MEMORY
  %loadMem_400fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 1
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %6642 to i32*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 15
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %RBP.i270
  %6647 = sub i64 %6646, 40
  %6648 = load i32, i32* %EAX.i269
  %6649 = zext i32 %6648 to i64
  %6650 = load i64, i64* %PC.i268
  %6651 = add i64 %6650, 3
  store i64 %6651, i64* %PC.i268
  %6652 = inttoptr i64 %6647 to i32*
  store i32 %6648, i32* %6652
  store %struct.Memory* %loadMem_400fd8, %struct.Memory** %MEMORY
  %loadMem_400fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6655 to i64*
  %6656 = load i64, i64* %PC.i267
  %6657 = add i64 %6656, -322
  %6658 = load i64, i64* %PC.i267
  %6659 = add i64 %6658, 5
  store i64 %6659, i64* %PC.i267
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6657, i64* %6660, align 8
  store %struct.Memory* %loadMem_400fdb, %struct.Memory** %MEMORY
  br label %block_.L_400e99

block_.L_400fe0:                                  ; preds = %block_.L_400e99
  %loadMem_400fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 15
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RBP.i266
  %6668 = sub i64 %6667, 44
  %6669 = load i64, i64* %PC.i265
  %6670 = add i64 %6669, 7
  store i64 %6670, i64* %PC.i265
  %6671 = inttoptr i64 %6668 to i32*
  store i32 0, i32* %6671
  store %struct.Memory* %loadMem_400fe0, %struct.Memory** %MEMORY
  br label %block_.L_400fe7

block_.L_400fe7:                                  ; preds = %block_400ff3, %block_.L_400fe0
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 33
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6674 to i64*
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 1
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 15
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %6680 to i64*
  %6681 = load i64, i64* %RBP.i264
  %6682 = sub i64 %6681, 44
  %6683 = load i64, i64* %PC.i262
  %6684 = add i64 %6683, 3
  store i64 %6684, i64* %PC.i262
  %6685 = inttoptr i64 %6682 to i32*
  %6686 = load i32, i32* %6685
  %6687 = zext i32 %6686 to i64
  store i64 %6687, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_400fe7, %struct.Memory** %MEMORY
  %loadMem_400fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 33
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 1
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %EAX.i260 = bitcast %union.anon* %6693 to i32*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 15
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %6696 to i64*
  %6697 = load i32, i32* %EAX.i260
  %6698 = zext i32 %6697 to i64
  %6699 = load i64, i64* %RBP.i261
  %6700 = sub i64 %6699, 8
  %6701 = load i64, i64* %PC.i259
  %6702 = add i64 %6701, 3
  store i64 %6702, i64* %PC.i259
  %6703 = inttoptr i64 %6700 to i32*
  %6704 = load i32, i32* %6703
  %6705 = sub i32 %6697, %6704
  %6706 = icmp ult i32 %6697, %6704
  %6707 = zext i1 %6706 to i8
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6707, i8* %6708, align 1
  %6709 = and i32 %6705, 255
  %6710 = call i32 @llvm.ctpop.i32(i32 %6709)
  %6711 = trunc i32 %6710 to i8
  %6712 = and i8 %6711, 1
  %6713 = xor i8 %6712, 1
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6713, i8* %6714, align 1
  %6715 = xor i32 %6704, %6697
  %6716 = xor i32 %6715, %6705
  %6717 = lshr i32 %6716, 4
  %6718 = trunc i32 %6717 to i8
  %6719 = and i8 %6718, 1
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6719, i8* %6720, align 1
  %6721 = icmp eq i32 %6705, 0
  %6722 = zext i1 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6722, i8* %6723, align 1
  %6724 = lshr i32 %6705, 31
  %6725 = trunc i32 %6724 to i8
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6725, i8* %6726, align 1
  %6727 = lshr i32 %6697, 31
  %6728 = lshr i32 %6704, 31
  %6729 = xor i32 %6728, %6727
  %6730 = xor i32 %6724, %6727
  %6731 = add i32 %6730, %6729
  %6732 = icmp eq i32 %6731, 2
  %6733 = zext i1 %6732 to i8
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6733, i8* %6734, align 1
  store %struct.Memory* %loadMem_400fea, %struct.Memory** %MEMORY
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 33
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6737 to i64*
  %6738 = load i64, i64* %PC.i258
  %6739 = add i64 %6738, 107
  %6740 = load i64, i64* %PC.i258
  %6741 = add i64 %6740, 6
  %6742 = load i64, i64* %PC.i258
  %6743 = add i64 %6742, 6
  store i64 %6743, i64* %PC.i258
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6745 = load i8, i8* %6744, align 1
  %6746 = icmp ne i8 %6745, 0
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6748 = load i8, i8* %6747, align 1
  %6749 = icmp ne i8 %6748, 0
  %6750 = xor i1 %6746, %6749
  %6751 = xor i1 %6750, true
  %6752 = zext i1 %6751 to i8
  store i8 %6752, i8* %BRANCH_TAKEN, align 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6754 = select i1 %6750, i64 %6741, i64 %6739
  store i64 %6754, i64* %6753, align 8
  store %struct.Memory* %loadMem_400fed, %struct.Memory** %MEMORY
  %loadBr_400fed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fed = icmp eq i8 %loadBr_400fed, 1
  br i1 %cmpBr_400fed, label %block_.L_401058, label %block_400ff3

block_400ff3:                                     ; preds = %block_.L_400fe7
  %loadMem_400ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 15
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RBP.i257
  %6765 = sub i64 %6764, 16
  %6766 = load i64, i64* %PC.i255
  %6767 = add i64 %6766, 4
  store i64 %6767, i64* %PC.i255
  %6768 = inttoptr i64 %6765 to i64*
  %6769 = load i64, i64* %6768
  store i64 %6769, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_400ff3, %struct.Memory** %MEMORY
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 33
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6772 to i64*
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 5
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 15
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %6778 to i64*
  %6779 = load i64, i64* %RBP.i254
  %6780 = sub i64 %6779, 8
  %6781 = load i64, i64* %PC.i252
  %6782 = add i64 %6781, 3
  store i64 %6782, i64* %PC.i252
  %6783 = inttoptr i64 %6780 to i32*
  %6784 = load i32, i32* %6783
  %6785 = zext i32 %6784 to i64
  store i64 %6785, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_400ff7, %struct.Memory** %MEMORY
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 33
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 5
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %6791 to i64*
  %6792 = load i64, i64* %RCX.i251
  %6793 = load i64, i64* %PC.i250
  %6794 = add i64 %6793, 3
  store i64 %6794, i64* %PC.i250
  %6795 = trunc i64 %6792 to i32
  %6796 = sub i32 %6795, 1
  %6797 = zext i32 %6796 to i64
  store i64 %6797, i64* %RCX.i251, align 8
  %6798 = icmp ult i32 %6795, 1
  %6799 = zext i1 %6798 to i8
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6799, i8* %6800, align 1
  %6801 = and i32 %6796, 255
  %6802 = call i32 @llvm.ctpop.i32(i32 %6801)
  %6803 = trunc i32 %6802 to i8
  %6804 = and i8 %6803, 1
  %6805 = xor i8 %6804, 1
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6805, i8* %6806, align 1
  %6807 = xor i64 1, %6792
  %6808 = trunc i64 %6807 to i32
  %6809 = xor i32 %6808, %6796
  %6810 = lshr i32 %6809, 4
  %6811 = trunc i32 %6810 to i8
  %6812 = and i8 %6811, 1
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6812, i8* %6813, align 1
  %6814 = icmp eq i32 %6796, 0
  %6815 = zext i1 %6814 to i8
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6815, i8* %6816, align 1
  %6817 = lshr i32 %6796, 31
  %6818 = trunc i32 %6817 to i8
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6818, i8* %6819, align 1
  %6820 = lshr i32 %6795, 31
  %6821 = xor i32 %6817, %6820
  %6822 = add i32 %6821, %6820
  %6823 = icmp eq i32 %6822, 2
  %6824 = zext i1 %6823 to i8
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6824, i8* %6825, align 1
  store %struct.Memory* %loadMem_400ffa, %struct.Memory** %MEMORY
  %loadMem_400ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 5
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %ECX.i248 = bitcast %union.anon* %6831 to i32*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 7
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %6834 to i64*
  %6835 = load i32, i32* %ECX.i248
  %6836 = zext i32 %6835 to i64
  %6837 = load i64, i64* %PC.i247
  %6838 = add i64 %6837, 3
  store i64 %6838, i64* %PC.i247
  %6839 = shl i64 %6836, 32
  %6840 = ashr exact i64 %6839, 32
  store i64 %6840, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_400ffd, %struct.Memory** %MEMORY
  %loadMem_401000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 33
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6843 to i64*
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 7
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %6846 to i64*
  %6847 = load i64, i64* %RDX.i246
  %6848 = load i64, i64* %PC.i245
  %6849 = add i64 %6848, 4
  store i64 %6849, i64* %PC.i245
  %6850 = shl i64 %6847, 12
  %6851 = icmp slt i64 %6850, 0
  %6852 = shl i64 %6850, 1
  store i64 %6852, i64* %RDX.i246, align 8
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6854 = zext i1 %6851 to i8
  store i8 %6854, i8* %6853, align 1
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6856 = trunc i64 %6852 to i32
  store i8 1, i8* %6855, align 1
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6857, align 1
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6859 = icmp eq i64 %6852, 0
  %6860 = zext i1 %6859 to i8
  store i8 %6860, i8* %6858, align 1
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6862 = lshr i64 %6852, 63
  %6863 = trunc i64 %6862 to i8
  store i8 %6863, i8* %6861, align 1
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6864, align 1
  store %struct.Memory* %loadMem_401000, %struct.Memory** %MEMORY
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 33
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6867 to i64*
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 1
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 7
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %6873 to i64*
  %6874 = load i64, i64* %RAX.i243
  %6875 = load i64, i64* %RDX.i244
  %6876 = load i64, i64* %PC.i242
  %6877 = add i64 %6876, 3
  store i64 %6877, i64* %PC.i242
  %6878 = add i64 %6875, %6874
  store i64 %6878, i64* %RAX.i243, align 8
  %6879 = icmp ult i64 %6878, %6874
  %6880 = icmp ult i64 %6878, %6875
  %6881 = or i1 %6879, %6880
  %6882 = zext i1 %6881 to i8
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6882, i8* %6883, align 1
  %6884 = trunc i64 %6878 to i32
  %6885 = and i32 %6884, 255
  %6886 = call i32 @llvm.ctpop.i32(i32 %6885)
  %6887 = trunc i32 %6886 to i8
  %6888 = and i8 %6887, 1
  %6889 = xor i8 %6888, 1
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6889, i8* %6890, align 1
  %6891 = xor i64 %6875, %6874
  %6892 = xor i64 %6891, %6878
  %6893 = lshr i64 %6892, 4
  %6894 = trunc i64 %6893 to i8
  %6895 = and i8 %6894, 1
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6895, i8* %6896, align 1
  %6897 = icmp eq i64 %6878, 0
  %6898 = zext i1 %6897 to i8
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6898, i8* %6899, align 1
  %6900 = lshr i64 %6878, 63
  %6901 = trunc i64 %6900 to i8
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6901, i8* %6902, align 1
  %6903 = lshr i64 %6874, 63
  %6904 = lshr i64 %6875, 63
  %6905 = xor i64 %6900, %6903
  %6906 = xor i64 %6900, %6904
  %6907 = add i64 %6905, %6906
  %6908 = icmp eq i64 %6907, 2
  %6909 = zext i1 %6908 to i8
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6909, i8* %6910, align 1
  store %struct.Memory* %loadMem_401004, %struct.Memory** %MEMORY
  %loadMem_401007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 33
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6913 to i64*
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 7
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %6916 to i64*
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 15
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %6919 to i64*
  %6920 = load i64, i64* %RBP.i241
  %6921 = sub i64 %6920, 44
  %6922 = load i64, i64* %PC.i239
  %6923 = add i64 %6922, 4
  store i64 %6923, i64* %PC.i239
  %6924 = inttoptr i64 %6921 to i32*
  %6925 = load i32, i32* %6924
  %6926 = sext i32 %6925 to i64
  store i64 %6926, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_401007, %struct.Memory** %MEMORY
  %loadMem_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 33
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6929 to i64*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 1
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %6932 to i64*
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 7
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %6935 to i64*
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6936, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %6937 to %"class.std::bitset"*
  %6938 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %6939 = load i64, i64* %RAX.i236
  %6940 = load i64, i64* %RDX.i237
  %6941 = mul i64 %6940, 8
  %6942 = add i64 %6941, %6939
  %6943 = load i64, i64* %PC.i235
  %6944 = add i64 %6943, 5
  store i64 %6944, i64* %PC.i235
  %6945 = inttoptr i64 %6942 to double*
  %6946 = load double, double* %6945
  %6947 = bitcast i8* %6938 to double*
  store double %6946, double* %6947, align 1
  %6948 = getelementptr inbounds i8, i8* %6938, i64 8
  %6949 = bitcast i8* %6948 to double*
  store double 0.000000e+00, double* %6949, align 1
  store %struct.Memory* %loadMem_40100b, %struct.Memory** %MEMORY
  %loadMem_401010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 1
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 15
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %6958 to i64*
  %6959 = load i64, i64* %RBP.i234
  %6960 = sub i64 %6959, 32
  %6961 = load i64, i64* %PC.i232
  %6962 = add i64 %6961, 4
  store i64 %6962, i64* %PC.i232
  %6963 = inttoptr i64 %6960 to i64*
  %6964 = load i64, i64* %6963
  store i64 %6964, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_401010, %struct.Memory** %MEMORY
  %loadMem_401014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 33
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6967 to i64*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 5
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %6970 to i64*
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6972 = getelementptr inbounds %struct.GPR, %struct.GPR* %6971, i32 0, i32 15
  %6973 = getelementptr inbounds %struct.Reg, %struct.Reg* %6972, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %6973 to i64*
  %6974 = load i64, i64* %RBP.i231
  %6975 = sub i64 %6974, 8
  %6976 = load i64, i64* %PC.i229
  %6977 = add i64 %6976, 3
  store i64 %6977, i64* %PC.i229
  %6978 = inttoptr i64 %6975 to i32*
  %6979 = load i32, i32* %6978
  %6980 = zext i32 %6979 to i64
  store i64 %6980, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_401014, %struct.Memory** %MEMORY
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6982 = getelementptr inbounds %struct.GPR, %struct.GPR* %6981, i32 0, i32 33
  %6983 = getelementptr inbounds %struct.Reg, %struct.Reg* %6982, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6983 to i64*
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6985 = getelementptr inbounds %struct.GPR, %struct.GPR* %6984, i32 0, i32 5
  %6986 = getelementptr inbounds %struct.Reg, %struct.Reg* %6985, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %6986 to i64*
  %6987 = load i64, i64* %RCX.i228
  %6988 = load i64, i64* %PC.i227
  %6989 = add i64 %6988, 3
  store i64 %6989, i64* %PC.i227
  %6990 = trunc i64 %6987 to i32
  %6991 = sub i32 %6990, 1
  %6992 = zext i32 %6991 to i64
  store i64 %6992, i64* %RCX.i228, align 8
  %6993 = icmp ult i32 %6990, 1
  %6994 = zext i1 %6993 to i8
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6994, i8* %6995, align 1
  %6996 = and i32 %6991, 255
  %6997 = call i32 @llvm.ctpop.i32(i32 %6996)
  %6998 = trunc i32 %6997 to i8
  %6999 = and i8 %6998, 1
  %7000 = xor i8 %6999, 1
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7000, i8* %7001, align 1
  %7002 = xor i64 1, %6987
  %7003 = trunc i64 %7002 to i32
  %7004 = xor i32 %7003, %6991
  %7005 = lshr i32 %7004, 4
  %7006 = trunc i32 %7005 to i8
  %7007 = and i8 %7006, 1
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7007, i8* %7008, align 1
  %7009 = icmp eq i32 %6991, 0
  %7010 = zext i1 %7009 to i8
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7010, i8* %7011, align 1
  %7012 = lshr i32 %6991, 31
  %7013 = trunc i32 %7012 to i8
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7013, i8* %7014, align 1
  %7015 = lshr i32 %6990, 31
  %7016 = xor i32 %7012, %7015
  %7017 = add i32 %7016, %7015
  %7018 = icmp eq i32 %7017, 2
  %7019 = zext i1 %7018 to i8
  %7020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7019, i8* %7020, align 1
  store %struct.Memory* %loadMem_401017, %struct.Memory** %MEMORY
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 33
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 5
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %ECX.i225 = bitcast %union.anon* %7026 to i32*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 7
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %7029 to i64*
  %7030 = load i32, i32* %ECX.i225
  %7031 = zext i32 %7030 to i64
  %7032 = load i64, i64* %PC.i224
  %7033 = add i64 %7032, 3
  store i64 %7033, i64* %PC.i224
  %7034 = shl i64 %7031, 32
  %7035 = ashr exact i64 %7034, 32
  store i64 %7035, i64* %RDX.i226, align 8
  store %struct.Memory* %loadMem_40101a, %struct.Memory** %MEMORY
  %loadMem_40101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 33
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %7038 to i64*
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 7
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %7041 to i64*
  %7042 = load i64, i64* %RDX.i223
  %7043 = load i64, i64* %PC.i222
  %7044 = add i64 %7043, 4
  store i64 %7044, i64* %PC.i222
  %7045 = shl i64 %7042, 12
  %7046 = icmp slt i64 %7045, 0
  %7047 = shl i64 %7045, 1
  store i64 %7047, i64* %RDX.i223, align 8
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7049 = zext i1 %7046 to i8
  store i8 %7049, i8* %7048, align 1
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7051 = trunc i64 %7047 to i32
  store i8 1, i8* %7050, align 1
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7052, align 1
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7054 = icmp eq i64 %7047, 0
  %7055 = zext i1 %7054 to i8
  store i8 %7055, i8* %7053, align 1
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7057 = lshr i64 %7047, 63
  %7058 = trunc i64 %7057 to i8
  store i8 %7058, i8* %7056, align 1
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7059, align 1
  store %struct.Memory* %loadMem_40101d, %struct.Memory** %MEMORY
  %loadMem_401021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 33
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 1
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 7
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %7068 to i64*
  %7069 = load i64, i64* %RAX.i220
  %7070 = load i64, i64* %RDX.i221
  %7071 = load i64, i64* %PC.i219
  %7072 = add i64 %7071, 3
  store i64 %7072, i64* %PC.i219
  %7073 = add i64 %7070, %7069
  store i64 %7073, i64* %RAX.i220, align 8
  %7074 = icmp ult i64 %7073, %7069
  %7075 = icmp ult i64 %7073, %7070
  %7076 = or i1 %7074, %7075
  %7077 = zext i1 %7076 to i8
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7077, i8* %7078, align 1
  %7079 = trunc i64 %7073 to i32
  %7080 = and i32 %7079, 255
  %7081 = call i32 @llvm.ctpop.i32(i32 %7080)
  %7082 = trunc i32 %7081 to i8
  %7083 = and i8 %7082, 1
  %7084 = xor i8 %7083, 1
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7084, i8* %7085, align 1
  %7086 = xor i64 %7070, %7069
  %7087 = xor i64 %7086, %7073
  %7088 = lshr i64 %7087, 4
  %7089 = trunc i64 %7088 to i8
  %7090 = and i8 %7089, 1
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7090, i8* %7091, align 1
  %7092 = icmp eq i64 %7073, 0
  %7093 = zext i1 %7092 to i8
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7093, i8* %7094, align 1
  %7095 = lshr i64 %7073, 63
  %7096 = trunc i64 %7095 to i8
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7096, i8* %7097, align 1
  %7098 = lshr i64 %7069, 63
  %7099 = lshr i64 %7070, 63
  %7100 = xor i64 %7095, %7098
  %7101 = xor i64 %7095, %7099
  %7102 = add i64 %7100, %7101
  %7103 = icmp eq i64 %7102, 2
  %7104 = zext i1 %7103 to i8
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7104, i8* %7105, align 1
  store %struct.Memory* %loadMem_401021, %struct.Memory** %MEMORY
  %loadMem_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 33
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7108 to i64*
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 7
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %7111 to i64*
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 15
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %7114 to i64*
  %7115 = load i64, i64* %RBP.i218
  %7116 = sub i64 %7115, 44
  %7117 = load i64, i64* %PC.i216
  %7118 = add i64 %7117, 4
  store i64 %7118, i64* %PC.i216
  %7119 = inttoptr i64 %7116 to i32*
  %7120 = load i32, i32* %7119
  %7121 = sext i32 %7120 to i64
  store i64 %7121, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_401024, %struct.Memory** %MEMORY
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 33
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 1
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 7
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %7130 to i64*
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7131, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %7132 to %"class.std::bitset"*
  %7133 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %7134 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %7135 = load i64, i64* %RAX.i213
  %7136 = load i64, i64* %RDX.i214
  %7137 = mul i64 %7136, 8
  %7138 = add i64 %7137, %7135
  %7139 = load i64, i64* %PC.i212
  %7140 = add i64 %7139, 5
  store i64 %7140, i64* %PC.i212
  %7141 = bitcast i8* %7134 to double*
  %7142 = load double, double* %7141, align 1
  %7143 = getelementptr inbounds i8, i8* %7134, i64 8
  %7144 = bitcast i8* %7143 to i64*
  %7145 = load i64, i64* %7144, align 1
  %7146 = inttoptr i64 %7138 to double*
  %7147 = load double, double* %7146
  %7148 = fdiv double %7142, %7147
  %7149 = bitcast i8* %7133 to double*
  store double %7148, double* %7149, align 1
  %7150 = getelementptr inbounds i8, i8* %7133, i64 8
  %7151 = bitcast i8* %7150 to i64*
  store i64 %7145, i64* %7151, align 1
  store %struct.Memory* %loadMem_401028, %struct.Memory** %MEMORY
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 33
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7154 to i64*
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 1
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %7157 to i64*
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 15
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %7160 to i64*
  %7161 = load i64, i64* %RBP.i211
  %7162 = sub i64 %7161, 16
  %7163 = load i64, i64* %PC.i209
  %7164 = add i64 %7163, 4
  store i64 %7164, i64* %PC.i209
  %7165 = inttoptr i64 %7162 to i64*
  %7166 = load i64, i64* %7165
  store i64 %7166, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_40102d, %struct.Memory** %MEMORY
  %loadMem_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 5
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 15
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7175 to i64*
  %7176 = load i64, i64* %RBP.i208
  %7177 = sub i64 %7176, 8
  %7178 = load i64, i64* %PC.i206
  %7179 = add i64 %7178, 3
  store i64 %7179, i64* %PC.i206
  %7180 = inttoptr i64 %7177 to i32*
  %7181 = load i32, i32* %7180
  %7182 = zext i32 %7181 to i64
  store i64 %7182, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_401031, %struct.Memory** %MEMORY
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 5
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RCX.i205
  %7190 = load i64, i64* %PC.i204
  %7191 = add i64 %7190, 3
  store i64 %7191, i64* %PC.i204
  %7192 = trunc i64 %7189 to i32
  %7193 = sub i32 %7192, 1
  %7194 = zext i32 %7193 to i64
  store i64 %7194, i64* %RCX.i205, align 8
  %7195 = icmp ult i32 %7192, 1
  %7196 = zext i1 %7195 to i8
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7196, i8* %7197, align 1
  %7198 = and i32 %7193, 255
  %7199 = call i32 @llvm.ctpop.i32(i32 %7198)
  %7200 = trunc i32 %7199 to i8
  %7201 = and i8 %7200, 1
  %7202 = xor i8 %7201, 1
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7202, i8* %7203, align 1
  %7204 = xor i64 1, %7189
  %7205 = trunc i64 %7204 to i32
  %7206 = xor i32 %7205, %7193
  %7207 = lshr i32 %7206, 4
  %7208 = trunc i32 %7207 to i8
  %7209 = and i8 %7208, 1
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7209, i8* %7210, align 1
  %7211 = icmp eq i32 %7193, 0
  %7212 = zext i1 %7211 to i8
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7212, i8* %7213, align 1
  %7214 = lshr i32 %7193, 31
  %7215 = trunc i32 %7214 to i8
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7215, i8* %7216, align 1
  %7217 = lshr i32 %7192, 31
  %7218 = xor i32 %7214, %7217
  %7219 = add i32 %7218, %7217
  %7220 = icmp eq i32 %7219, 2
  %7221 = zext i1 %7220 to i8
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7221, i8* %7222, align 1
  store %struct.Memory* %loadMem_401034, %struct.Memory** %MEMORY
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7224 = getelementptr inbounds %struct.GPR, %struct.GPR* %7223, i32 0, i32 33
  %7225 = getelementptr inbounds %struct.Reg, %struct.Reg* %7224, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %7225 to i64*
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 5
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %ECX.i202 = bitcast %union.anon* %7228 to i32*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 7
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %7231 to i64*
  %7232 = load i32, i32* %ECX.i202
  %7233 = zext i32 %7232 to i64
  %7234 = load i64, i64* %PC.i201
  %7235 = add i64 %7234, 3
  store i64 %7235, i64* %PC.i201
  %7236 = shl i64 %7233, 32
  %7237 = ashr exact i64 %7236, 32
  store i64 %7237, i64* %RDX.i203, align 8
  store %struct.Memory* %loadMem_401037, %struct.Memory** %MEMORY
  %loadMem_40103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7239 = getelementptr inbounds %struct.GPR, %struct.GPR* %7238, i32 0, i32 33
  %7240 = getelementptr inbounds %struct.Reg, %struct.Reg* %7239, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7240 to i64*
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7242 = getelementptr inbounds %struct.GPR, %struct.GPR* %7241, i32 0, i32 7
  %7243 = getelementptr inbounds %struct.Reg, %struct.Reg* %7242, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %7243 to i64*
  %7244 = load i64, i64* %RDX.i200
  %7245 = load i64, i64* %PC.i199
  %7246 = add i64 %7245, 4
  store i64 %7246, i64* %PC.i199
  %7247 = shl i64 %7244, 12
  %7248 = icmp slt i64 %7247, 0
  %7249 = shl i64 %7247, 1
  store i64 %7249, i64* %RDX.i200, align 8
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7251 = zext i1 %7248 to i8
  store i8 %7251, i8* %7250, align 1
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7253 = trunc i64 %7249 to i32
  store i8 1, i8* %7252, align 1
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7254, align 1
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7256 = icmp eq i64 %7249, 0
  %7257 = zext i1 %7256 to i8
  store i8 %7257, i8* %7255, align 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7259 = lshr i64 %7249, 63
  %7260 = trunc i64 %7259 to i8
  store i8 %7260, i8* %7258, align 1
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7261, align 1
  store %struct.Memory* %loadMem_40103a, %struct.Memory** %MEMORY
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 33
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7264 to i64*
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 1
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %7267 to i64*
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 7
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %7270 to i64*
  %7271 = load i64, i64* %RAX.i197
  %7272 = load i64, i64* %RDX.i198
  %7273 = load i64, i64* %PC.i196
  %7274 = add i64 %7273, 3
  store i64 %7274, i64* %PC.i196
  %7275 = add i64 %7272, %7271
  store i64 %7275, i64* %RAX.i197, align 8
  %7276 = icmp ult i64 %7275, %7271
  %7277 = icmp ult i64 %7275, %7272
  %7278 = or i1 %7276, %7277
  %7279 = zext i1 %7278 to i8
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7279, i8* %7280, align 1
  %7281 = trunc i64 %7275 to i32
  %7282 = and i32 %7281, 255
  %7283 = call i32 @llvm.ctpop.i32(i32 %7282)
  %7284 = trunc i32 %7283 to i8
  %7285 = and i8 %7284, 1
  %7286 = xor i8 %7285, 1
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7286, i8* %7287, align 1
  %7288 = xor i64 %7272, %7271
  %7289 = xor i64 %7288, %7275
  %7290 = lshr i64 %7289, 4
  %7291 = trunc i64 %7290 to i8
  %7292 = and i8 %7291, 1
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7292, i8* %7293, align 1
  %7294 = icmp eq i64 %7275, 0
  %7295 = zext i1 %7294 to i8
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7295, i8* %7296, align 1
  %7297 = lshr i64 %7275, 63
  %7298 = trunc i64 %7297 to i8
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7298, i8* %7299, align 1
  %7300 = lshr i64 %7271, 63
  %7301 = lshr i64 %7272, 63
  %7302 = xor i64 %7297, %7300
  %7303 = xor i64 %7297, %7301
  %7304 = add i64 %7302, %7303
  %7305 = icmp eq i64 %7304, 2
  %7306 = zext i1 %7305 to i8
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7306, i8* %7307, align 1
  store %struct.Memory* %loadMem_40103e, %struct.Memory** %MEMORY
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 33
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 7
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %7313 to i64*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 15
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %7316 to i64*
  %7317 = load i64, i64* %RBP.i195
  %7318 = sub i64 %7317, 44
  %7319 = load i64, i64* %PC.i193
  %7320 = add i64 %7319, 4
  store i64 %7320, i64* %PC.i193
  %7321 = inttoptr i64 %7318 to i32*
  %7322 = load i32, i32* %7321
  %7323 = sext i32 %7322 to i64
  store i64 %7323, i64* %RDX.i194, align 8
  store %struct.Memory* %loadMem_401041, %struct.Memory** %MEMORY
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7325 = getelementptr inbounds %struct.GPR, %struct.GPR* %7324, i32 0, i32 33
  %7326 = getelementptr inbounds %struct.Reg, %struct.Reg* %7325, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7326 to i64*
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 1
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 7
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7333, i64 0, i64 0
  %XMM0.i192 = bitcast %union.VectorReg* %7334 to %union.vec128_t*
  %7335 = load i64, i64* %RAX.i190
  %7336 = load i64, i64* %RDX.i191
  %7337 = mul i64 %7336, 8
  %7338 = add i64 %7337, %7335
  %7339 = bitcast %union.vec128_t* %XMM0.i192 to i8*
  %7340 = load i64, i64* %PC.i189
  %7341 = add i64 %7340, 5
  store i64 %7341, i64* %PC.i189
  %7342 = bitcast i8* %7339 to double*
  %7343 = load double, double* %7342, align 1
  %7344 = inttoptr i64 %7338 to double*
  store double %7343, double* %7344
  store %struct.Memory* %loadMem_401045, %struct.Memory** %MEMORY
  %loadMem_40104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7346 = getelementptr inbounds %struct.GPR, %struct.GPR* %7345, i32 0, i32 33
  %7347 = getelementptr inbounds %struct.Reg, %struct.Reg* %7346, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %7347 to i64*
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7349 = getelementptr inbounds %struct.GPR, %struct.GPR* %7348, i32 0, i32 1
  %7350 = getelementptr inbounds %struct.Reg, %struct.Reg* %7349, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %7350 to i64*
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7352 = getelementptr inbounds %struct.GPR, %struct.GPR* %7351, i32 0, i32 15
  %7353 = getelementptr inbounds %struct.Reg, %struct.Reg* %7352, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %7353 to i64*
  %7354 = load i64, i64* %RBP.i188
  %7355 = sub i64 %7354, 44
  %7356 = load i64, i64* %PC.i186
  %7357 = add i64 %7356, 3
  store i64 %7357, i64* %PC.i186
  %7358 = inttoptr i64 %7355 to i32*
  %7359 = load i32, i32* %7358
  %7360 = zext i32 %7359 to i64
  store i64 %7360, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_40104a, %struct.Memory** %MEMORY
  %loadMem_40104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 33
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 1
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %7366 to i64*
  %7367 = load i64, i64* %RAX.i185
  %7368 = load i64, i64* %PC.i184
  %7369 = add i64 %7368, 3
  store i64 %7369, i64* %PC.i184
  %7370 = trunc i64 %7367 to i32
  %7371 = add i32 1, %7370
  %7372 = zext i32 %7371 to i64
  store i64 %7372, i64* %RAX.i185, align 8
  %7373 = icmp ult i32 %7371, %7370
  %7374 = icmp ult i32 %7371, 1
  %7375 = or i1 %7373, %7374
  %7376 = zext i1 %7375 to i8
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7376, i8* %7377, align 1
  %7378 = and i32 %7371, 255
  %7379 = call i32 @llvm.ctpop.i32(i32 %7378)
  %7380 = trunc i32 %7379 to i8
  %7381 = and i8 %7380, 1
  %7382 = xor i8 %7381, 1
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7382, i8* %7383, align 1
  %7384 = xor i64 1, %7367
  %7385 = trunc i64 %7384 to i32
  %7386 = xor i32 %7385, %7371
  %7387 = lshr i32 %7386, 4
  %7388 = trunc i32 %7387 to i8
  %7389 = and i8 %7388, 1
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7389, i8* %7390, align 1
  %7391 = icmp eq i32 %7371, 0
  %7392 = zext i1 %7391 to i8
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7392, i8* %7393, align 1
  %7394 = lshr i32 %7371, 31
  %7395 = trunc i32 %7394 to i8
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7395, i8* %7396, align 1
  %7397 = lshr i32 %7370, 31
  %7398 = xor i32 %7394, %7397
  %7399 = add i32 %7398, %7394
  %7400 = icmp eq i32 %7399, 2
  %7401 = zext i1 %7400 to i8
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7401, i8* %7402, align 1
  store %struct.Memory* %loadMem_40104d, %struct.Memory** %MEMORY
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 33
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7405 to i64*
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 1
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %7408 to i32*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 15
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %RBP.i183
  %7413 = sub i64 %7412, 44
  %7414 = load i32, i32* %EAX.i182
  %7415 = zext i32 %7414 to i64
  %7416 = load i64, i64* %PC.i181
  %7417 = add i64 %7416, 3
  store i64 %7417, i64* %PC.i181
  %7418 = inttoptr i64 %7413 to i32*
  store i32 %7414, i32* %7418
  store %struct.Memory* %loadMem_401050, %struct.Memory** %MEMORY
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7420 = getelementptr inbounds %struct.GPR, %struct.GPR* %7419, i32 0, i32 33
  %7421 = getelementptr inbounds %struct.Reg, %struct.Reg* %7420, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %7421 to i64*
  %7422 = load i64, i64* %PC.i180
  %7423 = add i64 %7422, -108
  %7424 = load i64, i64* %PC.i180
  %7425 = add i64 %7424, 5
  store i64 %7425, i64* %PC.i180
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7423, i64* %7426, align 8
  store %struct.Memory* %loadMem_401053, %struct.Memory** %MEMORY
  br label %block_.L_400fe7

block_.L_401058:                                  ; preds = %block_.L_400fe7
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7428 = getelementptr inbounds %struct.GPR, %struct.GPR* %7427, i32 0, i32 33
  %7429 = getelementptr inbounds %struct.Reg, %struct.Reg* %7428, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7429 to i64*
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7431 = getelementptr inbounds %struct.GPR, %struct.GPR* %7430, i32 0, i32 15
  %7432 = getelementptr inbounds %struct.Reg, %struct.Reg* %7431, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %7432 to i64*
  %7433 = load i64, i64* %RBP.i179
  %7434 = sub i64 %7433, 40
  %7435 = load i64, i64* %PC.i178
  %7436 = add i64 %7435, 7
  store i64 %7436, i64* %PC.i178
  %7437 = inttoptr i64 %7434 to i32*
  store i32 0, i32* %7437
  store %struct.Memory* %loadMem_401058, %struct.Memory** %MEMORY
  br label %block_.L_40105f

block_.L_40105f:                                  ; preds = %block_.L_40113a, %block_.L_401058
  %loadMem_40105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7440 to i64*
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7442 = getelementptr inbounds %struct.GPR, %struct.GPR* %7441, i32 0, i32 1
  %7443 = getelementptr inbounds %struct.Reg, %struct.Reg* %7442, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %7443 to i64*
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 15
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %7446 to i64*
  %7447 = load i64, i64* %RBP.i177
  %7448 = sub i64 %7447, 40
  %7449 = load i64, i64* %PC.i175
  %7450 = add i64 %7449, 3
  store i64 %7450, i64* %PC.i175
  %7451 = inttoptr i64 %7448 to i32*
  %7452 = load i32, i32* %7451
  %7453 = zext i32 %7452 to i64
  store i64 %7453, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_40105f, %struct.Memory** %MEMORY
  %loadMem_401062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 33
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7456 to i64*
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 5
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %7459 to i64*
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 15
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %7462 to i64*
  %7463 = load i64, i64* %RBP.i174
  %7464 = sub i64 %7463, 8
  %7465 = load i64, i64* %PC.i172
  %7466 = add i64 %7465, 3
  store i64 %7466, i64* %PC.i172
  %7467 = inttoptr i64 %7464 to i32*
  %7468 = load i32, i32* %7467
  %7469 = zext i32 %7468 to i64
  store i64 %7469, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_401062, %struct.Memory** %MEMORY
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7471 = getelementptr inbounds %struct.GPR, %struct.GPR* %7470, i32 0, i32 33
  %7472 = getelementptr inbounds %struct.Reg, %struct.Reg* %7471, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7472 to i64*
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 5
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %7475 to i64*
  %7476 = load i64, i64* %RCX.i171
  %7477 = load i64, i64* %PC.i170
  %7478 = add i64 %7477, 3
  store i64 %7478, i64* %PC.i170
  %7479 = trunc i64 %7476 to i32
  %7480 = sub i32 %7479, 2
  %7481 = zext i32 %7480 to i64
  store i64 %7481, i64* %RCX.i171, align 8
  %7482 = icmp ult i32 %7479, 2
  %7483 = zext i1 %7482 to i8
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7483, i8* %7484, align 1
  %7485 = and i32 %7480, 255
  %7486 = call i32 @llvm.ctpop.i32(i32 %7485)
  %7487 = trunc i32 %7486 to i8
  %7488 = and i8 %7487, 1
  %7489 = xor i8 %7488, 1
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7489, i8* %7490, align 1
  %7491 = xor i64 2, %7476
  %7492 = trunc i64 %7491 to i32
  %7493 = xor i32 %7492, %7480
  %7494 = lshr i32 %7493, 4
  %7495 = trunc i32 %7494 to i8
  %7496 = and i8 %7495, 1
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7496, i8* %7497, align 1
  %7498 = icmp eq i32 %7480, 0
  %7499 = zext i1 %7498 to i8
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7499, i8* %7500, align 1
  %7501 = lshr i32 %7480, 31
  %7502 = trunc i32 %7501 to i8
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7502, i8* %7503, align 1
  %7504 = lshr i32 %7479, 31
  %7505 = xor i32 %7501, %7504
  %7506 = add i32 %7505, %7504
  %7507 = icmp eq i32 %7506, 2
  %7508 = zext i1 %7507 to i8
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7508, i8* %7509, align 1
  store %struct.Memory* %loadMem_401065, %struct.Memory** %MEMORY
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 33
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7512 to i64*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 1
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %7515 to i32*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 5
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %ECX.i169 = bitcast %union.anon* %7518 to i32*
  %7519 = load i32, i32* %EAX.i168
  %7520 = zext i32 %7519 to i64
  %7521 = load i32, i32* %ECX.i169
  %7522 = zext i32 %7521 to i64
  %7523 = load i64, i64* %PC.i167
  %7524 = add i64 %7523, 2
  store i64 %7524, i64* %PC.i167
  %7525 = sub i32 %7519, %7521
  %7526 = icmp ult i32 %7519, %7521
  %7527 = zext i1 %7526 to i8
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7527, i8* %7528, align 1
  %7529 = and i32 %7525, 255
  %7530 = call i32 @llvm.ctpop.i32(i32 %7529)
  %7531 = trunc i32 %7530 to i8
  %7532 = and i8 %7531, 1
  %7533 = xor i8 %7532, 1
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7533, i8* %7534, align 1
  %7535 = xor i64 %7522, %7520
  %7536 = trunc i64 %7535 to i32
  %7537 = xor i32 %7536, %7525
  %7538 = lshr i32 %7537, 4
  %7539 = trunc i32 %7538 to i8
  %7540 = and i8 %7539, 1
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7540, i8* %7541, align 1
  %7542 = icmp eq i32 %7525, 0
  %7543 = zext i1 %7542 to i8
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7543, i8* %7544, align 1
  %7545 = lshr i32 %7525, 31
  %7546 = trunc i32 %7545 to i8
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7546, i8* %7547, align 1
  %7548 = lshr i32 %7519, 31
  %7549 = lshr i32 %7521, 31
  %7550 = xor i32 %7549, %7548
  %7551 = xor i32 %7545, %7548
  %7552 = add i32 %7551, %7550
  %7553 = icmp eq i32 %7552, 2
  %7554 = zext i1 %7553 to i8
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7554, i8* %7555, align 1
  store %struct.Memory* %loadMem_401068, %struct.Memory** %MEMORY
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7557 = getelementptr inbounds %struct.GPR, %struct.GPR* %7556, i32 0, i32 33
  %7558 = getelementptr inbounds %struct.Reg, %struct.Reg* %7557, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7558 to i64*
  %7559 = load i64, i64* %PC.i166
  %7560 = add i64 %7559, 222
  %7561 = load i64, i64* %PC.i166
  %7562 = add i64 %7561, 6
  %7563 = load i64, i64* %PC.i166
  %7564 = add i64 %7563, 6
  store i64 %7564, i64* %PC.i166
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7566 = load i8, i8* %7565, align 1
  %7567 = icmp ne i8 %7566, 0
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7569 = load i8, i8* %7568, align 1
  %7570 = icmp ne i8 %7569, 0
  %7571 = xor i1 %7567, %7570
  %7572 = xor i1 %7571, true
  %7573 = zext i1 %7572 to i8
  store i8 %7573, i8* %BRANCH_TAKEN, align 1
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7575 = select i1 %7571, i64 %7562, i64 %7560
  store i64 %7575, i64* %7574, align 8
  store %struct.Memory* %loadMem_40106a, %struct.Memory** %MEMORY
  %loadBr_40106a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40106a = icmp eq i8 %loadBr_40106a, 1
  br i1 %cmpBr_40106a, label %block_.L_401148, label %block_401070

block_401070:                                     ; preds = %block_.L_40105f
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7577 = getelementptr inbounds %struct.GPR, %struct.GPR* %7576, i32 0, i32 33
  %7578 = getelementptr inbounds %struct.Reg, %struct.Reg* %7577, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7578 to i64*
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 15
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7581 to i64*
  %7582 = load i64, i64* %RBP.i165
  %7583 = sub i64 %7582, 44
  %7584 = load i64, i64* %PC.i164
  %7585 = add i64 %7584, 7
  store i64 %7585, i64* %PC.i164
  %7586 = inttoptr i64 %7583 to i32*
  store i32 0, i32* %7586
  store %struct.Memory* %loadMem_401070, %struct.Memory** %MEMORY
  br label %block_.L_401077

block_.L_401077:                                  ; preds = %block_401083, %block_401070
  %loadMem_401077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7588 = getelementptr inbounds %struct.GPR, %struct.GPR* %7587, i32 0, i32 33
  %7589 = getelementptr inbounds %struct.Reg, %struct.Reg* %7588, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7589 to i64*
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7591 = getelementptr inbounds %struct.GPR, %struct.GPR* %7590, i32 0, i32 1
  %7592 = getelementptr inbounds %struct.Reg, %struct.Reg* %7591, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %7592 to i64*
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 15
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %7595 to i64*
  %7596 = load i64, i64* %RBP.i163
  %7597 = sub i64 %7596, 44
  %7598 = load i64, i64* %PC.i161
  %7599 = add i64 %7598, 3
  store i64 %7599, i64* %PC.i161
  %7600 = inttoptr i64 %7597 to i32*
  %7601 = load i32, i32* %7600
  %7602 = zext i32 %7601 to i64
  store i64 %7602, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_401077, %struct.Memory** %MEMORY
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 33
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7605 to i64*
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 1
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %7608 to i32*
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 15
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %7611 to i64*
  %7612 = load i32, i32* %EAX.i159
  %7613 = zext i32 %7612 to i64
  %7614 = load i64, i64* %RBP.i160
  %7615 = sub i64 %7614, 8
  %7616 = load i64, i64* %PC.i158
  %7617 = add i64 %7616, 3
  store i64 %7617, i64* %PC.i158
  %7618 = inttoptr i64 %7615 to i32*
  %7619 = load i32, i32* %7618
  %7620 = sub i32 %7612, %7619
  %7621 = icmp ult i32 %7612, %7619
  %7622 = zext i1 %7621 to i8
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7622, i8* %7623, align 1
  %7624 = and i32 %7620, 255
  %7625 = call i32 @llvm.ctpop.i32(i32 %7624)
  %7626 = trunc i32 %7625 to i8
  %7627 = and i8 %7626, 1
  %7628 = xor i8 %7627, 1
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7628, i8* %7629, align 1
  %7630 = xor i32 %7619, %7612
  %7631 = xor i32 %7630, %7620
  %7632 = lshr i32 %7631, 4
  %7633 = trunc i32 %7632 to i8
  %7634 = and i8 %7633, 1
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7634, i8* %7635, align 1
  %7636 = icmp eq i32 %7620, 0
  %7637 = zext i1 %7636 to i8
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7637, i8* %7638, align 1
  %7639 = lshr i32 %7620, 31
  %7640 = trunc i32 %7639 to i8
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7640, i8* %7641, align 1
  %7642 = lshr i32 %7612, 31
  %7643 = lshr i32 %7619, 31
  %7644 = xor i32 %7643, %7642
  %7645 = xor i32 %7639, %7642
  %7646 = add i32 %7645, %7644
  %7647 = icmp eq i32 %7646, 2
  %7648 = zext i1 %7647 to i8
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7648, i8* %7649, align 1
  store %struct.Memory* %loadMem_40107a, %struct.Memory** %MEMORY
  %loadMem_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7651 = getelementptr inbounds %struct.GPR, %struct.GPR* %7650, i32 0, i32 33
  %7652 = getelementptr inbounds %struct.Reg, %struct.Reg* %7651, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7652 to i64*
  %7653 = load i64, i64* %PC.i157
  %7654 = add i64 %7653, 184
  %7655 = load i64, i64* %PC.i157
  %7656 = add i64 %7655, 6
  %7657 = load i64, i64* %PC.i157
  %7658 = add i64 %7657, 6
  store i64 %7658, i64* %PC.i157
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7660 = load i8, i8* %7659, align 1
  %7661 = icmp ne i8 %7660, 0
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7663 = load i8, i8* %7662, align 1
  %7664 = icmp ne i8 %7663, 0
  %7665 = xor i1 %7661, %7664
  %7666 = xor i1 %7665, true
  %7667 = zext i1 %7666 to i8
  store i8 %7667, i8* %BRANCH_TAKEN, align 1
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7669 = select i1 %7665, i64 %7656, i64 %7654
  store i64 %7669, i64* %7668, align 8
  store %struct.Memory* %loadMem_40107d, %struct.Memory** %MEMORY
  %loadBr_40107d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40107d = icmp eq i8 %loadBr_40107d, 1
  br i1 %cmpBr_40107d, label %block_.L_401135, label %block_401083

block_401083:                                     ; preds = %block_.L_401077
  %loadMem_401083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7671 = getelementptr inbounds %struct.GPR, %struct.GPR* %7670, i32 0, i32 33
  %7672 = getelementptr inbounds %struct.Reg, %struct.Reg* %7671, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %7672 to i64*
  %7673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7674 = getelementptr inbounds %struct.GPR, %struct.GPR* %7673, i32 0, i32 1
  %7675 = getelementptr inbounds %struct.Reg, %struct.Reg* %7674, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %7675 to i64*
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 15
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %7678 to i64*
  %7679 = load i64, i64* %RBP.i156
  %7680 = sub i64 %7679, 16
  %7681 = load i64, i64* %PC.i154
  %7682 = add i64 %7681, 4
  store i64 %7682, i64* %PC.i154
  %7683 = inttoptr i64 %7680 to i64*
  %7684 = load i64, i64* %7683
  store i64 %7684, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_401083, %struct.Memory** %MEMORY
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7686 = getelementptr inbounds %struct.GPR, %struct.GPR* %7685, i32 0, i32 33
  %7687 = getelementptr inbounds %struct.Reg, %struct.Reg* %7686, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %7687 to i64*
  %7688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7689 = getelementptr inbounds %struct.GPR, %struct.GPR* %7688, i32 0, i32 5
  %7690 = getelementptr inbounds %struct.Reg, %struct.Reg* %7689, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %7690 to i64*
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7692 = getelementptr inbounds %struct.GPR, %struct.GPR* %7691, i32 0, i32 15
  %7693 = getelementptr inbounds %struct.Reg, %struct.Reg* %7692, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %7693 to i64*
  %7694 = load i64, i64* %RBP.i153
  %7695 = sub i64 %7694, 8
  %7696 = load i64, i64* %PC.i151
  %7697 = add i64 %7696, 3
  store i64 %7697, i64* %PC.i151
  %7698 = inttoptr i64 %7695 to i32*
  %7699 = load i32, i32* %7698
  %7700 = zext i32 %7699 to i64
  store i64 %7700, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_401087, %struct.Memory** %MEMORY
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 33
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7703 to i64*
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7705 = getelementptr inbounds %struct.GPR, %struct.GPR* %7704, i32 0, i32 5
  %7706 = getelementptr inbounds %struct.Reg, %struct.Reg* %7705, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %7706 to i64*
  %7707 = load i64, i64* %RCX.i150
  %7708 = load i64, i64* %PC.i149
  %7709 = add i64 %7708, 3
  store i64 %7709, i64* %PC.i149
  %7710 = trunc i64 %7707 to i32
  %7711 = sub i32 %7710, 2
  %7712 = zext i32 %7711 to i64
  store i64 %7712, i64* %RCX.i150, align 8
  %7713 = icmp ult i32 %7710, 2
  %7714 = zext i1 %7713 to i8
  %7715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7714, i8* %7715, align 1
  %7716 = and i32 %7711, 255
  %7717 = call i32 @llvm.ctpop.i32(i32 %7716)
  %7718 = trunc i32 %7717 to i8
  %7719 = and i8 %7718, 1
  %7720 = xor i8 %7719, 1
  %7721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7720, i8* %7721, align 1
  %7722 = xor i64 2, %7707
  %7723 = trunc i64 %7722 to i32
  %7724 = xor i32 %7723, %7711
  %7725 = lshr i32 %7724, 4
  %7726 = trunc i32 %7725 to i8
  %7727 = and i8 %7726, 1
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7727, i8* %7728, align 1
  %7729 = icmp eq i32 %7711, 0
  %7730 = zext i1 %7729 to i8
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7730, i8* %7731, align 1
  %7732 = lshr i32 %7711, 31
  %7733 = trunc i32 %7732 to i8
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7733, i8* %7734, align 1
  %7735 = lshr i32 %7710, 31
  %7736 = xor i32 %7732, %7735
  %7737 = add i32 %7736, %7735
  %7738 = icmp eq i32 %7737, 2
  %7739 = zext i1 %7738 to i8
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7739, i8* %7740, align 1
  store %struct.Memory* %loadMem_40108a, %struct.Memory** %MEMORY
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7742 = getelementptr inbounds %struct.GPR, %struct.GPR* %7741, i32 0, i32 33
  %7743 = getelementptr inbounds %struct.Reg, %struct.Reg* %7742, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7743 to i64*
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7745 = getelementptr inbounds %struct.GPR, %struct.GPR* %7744, i32 0, i32 5
  %7746 = getelementptr inbounds %struct.Reg, %struct.Reg* %7745, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %7746 to i64*
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7748 = getelementptr inbounds %struct.GPR, %struct.GPR* %7747, i32 0, i32 15
  %7749 = getelementptr inbounds %struct.Reg, %struct.Reg* %7748, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %7749 to i64*
  %7750 = load i64, i64* %RCX.i147
  %7751 = load i64, i64* %RBP.i148
  %7752 = sub i64 %7751, 40
  %7753 = load i64, i64* %PC.i146
  %7754 = add i64 %7753, 3
  store i64 %7754, i64* %PC.i146
  %7755 = trunc i64 %7750 to i32
  %7756 = inttoptr i64 %7752 to i32*
  %7757 = load i32, i32* %7756
  %7758 = sub i32 %7755, %7757
  %7759 = zext i32 %7758 to i64
  store i64 %7759, i64* %RCX.i147, align 8
  %7760 = icmp ult i32 %7755, %7757
  %7761 = zext i1 %7760 to i8
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7761, i8* %7762, align 1
  %7763 = and i32 %7758, 255
  %7764 = call i32 @llvm.ctpop.i32(i32 %7763)
  %7765 = trunc i32 %7764 to i8
  %7766 = and i8 %7765, 1
  %7767 = xor i8 %7766, 1
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7767, i8* %7768, align 1
  %7769 = xor i32 %7757, %7755
  %7770 = xor i32 %7769, %7758
  %7771 = lshr i32 %7770, 4
  %7772 = trunc i32 %7771 to i8
  %7773 = and i8 %7772, 1
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7773, i8* %7774, align 1
  %7775 = icmp eq i32 %7758, 0
  %7776 = zext i1 %7775 to i8
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7776, i8* %7777, align 1
  %7778 = lshr i32 %7758, 31
  %7779 = trunc i32 %7778 to i8
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7779, i8* %7780, align 1
  %7781 = lshr i32 %7755, 31
  %7782 = lshr i32 %7757, 31
  %7783 = xor i32 %7782, %7781
  %7784 = xor i32 %7778, %7781
  %7785 = add i32 %7784, %7783
  %7786 = icmp eq i32 %7785, 2
  %7787 = zext i1 %7786 to i8
  %7788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7787, i8* %7788, align 1
  store %struct.Memory* %loadMem_40108d, %struct.Memory** %MEMORY
  %loadMem_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7790 = getelementptr inbounds %struct.GPR, %struct.GPR* %7789, i32 0, i32 33
  %7791 = getelementptr inbounds %struct.Reg, %struct.Reg* %7790, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7791 to i64*
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 5
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %ECX.i144 = bitcast %union.anon* %7794 to i32*
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 7
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %7797 to i64*
  %7798 = load i32, i32* %ECX.i144
  %7799 = zext i32 %7798 to i64
  %7800 = load i64, i64* %PC.i143
  %7801 = add i64 %7800, 3
  store i64 %7801, i64* %PC.i143
  %7802 = shl i64 %7799, 32
  %7803 = ashr exact i64 %7802, 32
  store i64 %7803, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_401090, %struct.Memory** %MEMORY
  %loadMem_401093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7805 = getelementptr inbounds %struct.GPR, %struct.GPR* %7804, i32 0, i32 33
  %7806 = getelementptr inbounds %struct.Reg, %struct.Reg* %7805, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7806 to i64*
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7808 = getelementptr inbounds %struct.GPR, %struct.GPR* %7807, i32 0, i32 7
  %7809 = getelementptr inbounds %struct.Reg, %struct.Reg* %7808, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %7809 to i64*
  %7810 = load i64, i64* %RDX.i142
  %7811 = load i64, i64* %PC.i141
  %7812 = add i64 %7811, 4
  store i64 %7812, i64* %PC.i141
  %7813 = shl i64 %7810, 12
  %7814 = icmp slt i64 %7813, 0
  %7815 = shl i64 %7813, 1
  store i64 %7815, i64* %RDX.i142, align 8
  %7816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7817 = zext i1 %7814 to i8
  store i8 %7817, i8* %7816, align 1
  %7818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7819 = trunc i64 %7815 to i32
  store i8 1, i8* %7818, align 1
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7820, align 1
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7822 = icmp eq i64 %7815, 0
  %7823 = zext i1 %7822 to i8
  store i8 %7823, i8* %7821, align 1
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7825 = lshr i64 %7815, 63
  %7826 = trunc i64 %7825 to i8
  store i8 %7826, i8* %7824, align 1
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7827, align 1
  store %struct.Memory* %loadMem_401093, %struct.Memory** %MEMORY
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7829 = getelementptr inbounds %struct.GPR, %struct.GPR* %7828, i32 0, i32 33
  %7830 = getelementptr inbounds %struct.Reg, %struct.Reg* %7829, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7830 to i64*
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7832 = getelementptr inbounds %struct.GPR, %struct.GPR* %7831, i32 0, i32 1
  %7833 = getelementptr inbounds %struct.Reg, %struct.Reg* %7832, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %7833 to i64*
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7835 = getelementptr inbounds %struct.GPR, %struct.GPR* %7834, i32 0, i32 7
  %7836 = getelementptr inbounds %struct.Reg, %struct.Reg* %7835, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %7836 to i64*
  %7837 = load i64, i64* %RAX.i139
  %7838 = load i64, i64* %RDX.i140
  %7839 = load i64, i64* %PC.i138
  %7840 = add i64 %7839, 3
  store i64 %7840, i64* %PC.i138
  %7841 = add i64 %7838, %7837
  store i64 %7841, i64* %RAX.i139, align 8
  %7842 = icmp ult i64 %7841, %7837
  %7843 = icmp ult i64 %7841, %7838
  %7844 = or i1 %7842, %7843
  %7845 = zext i1 %7844 to i8
  %7846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7845, i8* %7846, align 1
  %7847 = trunc i64 %7841 to i32
  %7848 = and i32 %7847, 255
  %7849 = call i32 @llvm.ctpop.i32(i32 %7848)
  %7850 = trunc i32 %7849 to i8
  %7851 = and i8 %7850, 1
  %7852 = xor i8 %7851, 1
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7852, i8* %7853, align 1
  %7854 = xor i64 %7838, %7837
  %7855 = xor i64 %7854, %7841
  %7856 = lshr i64 %7855, 4
  %7857 = trunc i64 %7856 to i8
  %7858 = and i8 %7857, 1
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7858, i8* %7859, align 1
  %7860 = icmp eq i64 %7841, 0
  %7861 = zext i1 %7860 to i8
  %7862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7861, i8* %7862, align 1
  %7863 = lshr i64 %7841, 63
  %7864 = trunc i64 %7863 to i8
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7864, i8* %7865, align 1
  %7866 = lshr i64 %7837, 63
  %7867 = lshr i64 %7838, 63
  %7868 = xor i64 %7863, %7866
  %7869 = xor i64 %7863, %7867
  %7870 = add i64 %7868, %7869
  %7871 = icmp eq i64 %7870, 2
  %7872 = zext i1 %7871 to i8
  %7873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7872, i8* %7873, align 1
  store %struct.Memory* %loadMem_401097, %struct.Memory** %MEMORY
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7875 = getelementptr inbounds %struct.GPR, %struct.GPR* %7874, i32 0, i32 33
  %7876 = getelementptr inbounds %struct.Reg, %struct.Reg* %7875, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7876 to i64*
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7878 = getelementptr inbounds %struct.GPR, %struct.GPR* %7877, i32 0, i32 7
  %7879 = getelementptr inbounds %struct.Reg, %struct.Reg* %7878, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %7879 to i64*
  %7880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7881 = getelementptr inbounds %struct.GPR, %struct.GPR* %7880, i32 0, i32 15
  %7882 = getelementptr inbounds %struct.Reg, %struct.Reg* %7881, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7882 to i64*
  %7883 = load i64, i64* %RBP.i137
  %7884 = sub i64 %7883, 44
  %7885 = load i64, i64* %PC.i135
  %7886 = add i64 %7885, 4
  store i64 %7886, i64* %PC.i135
  %7887 = inttoptr i64 %7884 to i32*
  %7888 = load i32, i32* %7887
  %7889 = sext i32 %7888 to i64
  store i64 %7889, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_40109a, %struct.Memory** %MEMORY
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7891 = getelementptr inbounds %struct.GPR, %struct.GPR* %7890, i32 0, i32 33
  %7892 = getelementptr inbounds %struct.Reg, %struct.Reg* %7891, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7892 to i64*
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7894 = getelementptr inbounds %struct.GPR, %struct.GPR* %7893, i32 0, i32 1
  %7895 = getelementptr inbounds %struct.Reg, %struct.Reg* %7894, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %7895 to i64*
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7897 = getelementptr inbounds %struct.GPR, %struct.GPR* %7896, i32 0, i32 7
  %7898 = getelementptr inbounds %struct.Reg, %struct.Reg* %7897, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %7898 to i64*
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7899, i64 0, i64 0
  %YMM0.i134 = bitcast %union.VectorReg* %7900 to %"class.std::bitset"*
  %7901 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %7902 = load i64, i64* %RAX.i132
  %7903 = load i64, i64* %RDX.i133
  %7904 = mul i64 %7903, 8
  %7905 = add i64 %7904, %7902
  %7906 = load i64, i64* %PC.i131
  %7907 = add i64 %7906, 5
  store i64 %7907, i64* %PC.i131
  %7908 = inttoptr i64 %7905 to double*
  %7909 = load double, double* %7908
  %7910 = bitcast i8* %7901 to double*
  store double %7909, double* %7910, align 1
  %7911 = getelementptr inbounds i8, i8* %7901, i64 8
  %7912 = bitcast i8* %7911 to double*
  store double 0.000000e+00, double* %7912, align 1
  store %struct.Memory* %loadMem_40109e, %struct.Memory** %MEMORY
  %loadMem_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7914 = getelementptr inbounds %struct.GPR, %struct.GPR* %7913, i32 0, i32 33
  %7915 = getelementptr inbounds %struct.Reg, %struct.Reg* %7914, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7915 to i64*
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 1
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %7918 to i64*
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 15
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %7921 to i64*
  %7922 = load i64, i64* %RBP.i130
  %7923 = sub i64 %7922, 16
  %7924 = load i64, i64* %PC.i128
  %7925 = add i64 %7924, 4
  store i64 %7925, i64* %PC.i128
  %7926 = inttoptr i64 %7923 to i64*
  %7927 = load i64, i64* %7926
  store i64 %7927, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_4010a3, %struct.Memory** %MEMORY
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7929 = getelementptr inbounds %struct.GPR, %struct.GPR* %7928, i32 0, i32 33
  %7930 = getelementptr inbounds %struct.Reg, %struct.Reg* %7929, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7930 to i64*
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7932 = getelementptr inbounds %struct.GPR, %struct.GPR* %7931, i32 0, i32 5
  %7933 = getelementptr inbounds %struct.Reg, %struct.Reg* %7932, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %7933 to i64*
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 15
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %7936 to i64*
  %7937 = load i64, i64* %RBP.i127
  %7938 = sub i64 %7937, 8
  %7939 = load i64, i64* %PC.i125
  %7940 = add i64 %7939, 3
  store i64 %7940, i64* %PC.i125
  %7941 = inttoptr i64 %7938 to i32*
  %7942 = load i32, i32* %7941
  %7943 = zext i32 %7942 to i64
  store i64 %7943, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_4010a7, %struct.Memory** %MEMORY
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7945 = getelementptr inbounds %struct.GPR, %struct.GPR* %7944, i32 0, i32 33
  %7946 = getelementptr inbounds %struct.Reg, %struct.Reg* %7945, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7946 to i64*
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 5
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %7949 to i64*
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 15
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7952 to i64*
  %7953 = load i64, i64* %RCX.i123
  %7954 = load i64, i64* %RBP.i124
  %7955 = sub i64 %7954, 40
  %7956 = load i64, i64* %PC.i122
  %7957 = add i64 %7956, 3
  store i64 %7957, i64* %PC.i122
  %7958 = trunc i64 %7953 to i32
  %7959 = inttoptr i64 %7955 to i32*
  %7960 = load i32, i32* %7959
  %7961 = sub i32 %7958, %7960
  %7962 = zext i32 %7961 to i64
  store i64 %7962, i64* %RCX.i123, align 8
  %7963 = icmp ult i32 %7958, %7960
  %7964 = zext i1 %7963 to i8
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7964, i8* %7965, align 1
  %7966 = and i32 %7961, 255
  %7967 = call i32 @llvm.ctpop.i32(i32 %7966)
  %7968 = trunc i32 %7967 to i8
  %7969 = and i8 %7968, 1
  %7970 = xor i8 %7969, 1
  %7971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7970, i8* %7971, align 1
  %7972 = xor i32 %7960, %7958
  %7973 = xor i32 %7972, %7961
  %7974 = lshr i32 %7973, 4
  %7975 = trunc i32 %7974 to i8
  %7976 = and i8 %7975, 1
  %7977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7976, i8* %7977, align 1
  %7978 = icmp eq i32 %7961, 0
  %7979 = zext i1 %7978 to i8
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7979, i8* %7980, align 1
  %7981 = lshr i32 %7961, 31
  %7982 = trunc i32 %7981 to i8
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7982, i8* %7983, align 1
  %7984 = lshr i32 %7958, 31
  %7985 = lshr i32 %7960, 31
  %7986 = xor i32 %7985, %7984
  %7987 = xor i32 %7981, %7984
  %7988 = add i32 %7987, %7986
  %7989 = icmp eq i32 %7988, 2
  %7990 = zext i1 %7989 to i8
  %7991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7990, i8* %7991, align 1
  store %struct.Memory* %loadMem_4010aa, %struct.Memory** %MEMORY
  %loadMem_4010ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 33
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7994 to i64*
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7996 = getelementptr inbounds %struct.GPR, %struct.GPR* %7995, i32 0, i32 5
  %7997 = getelementptr inbounds %struct.Reg, %struct.Reg* %7996, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %7997 to i64*
  %7998 = load i64, i64* %RCX.i121
  %7999 = load i64, i64* %PC.i120
  %8000 = add i64 %7999, 3
  store i64 %8000, i64* %PC.i120
  %8001 = trunc i64 %7998 to i32
  %8002 = sub i32 %8001, 3
  %8003 = zext i32 %8002 to i64
  store i64 %8003, i64* %RCX.i121, align 8
  %8004 = icmp ult i32 %8001, 3
  %8005 = zext i1 %8004 to i8
  %8006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8005, i8* %8006, align 1
  %8007 = and i32 %8002, 255
  %8008 = call i32 @llvm.ctpop.i32(i32 %8007)
  %8009 = trunc i32 %8008 to i8
  %8010 = and i8 %8009, 1
  %8011 = xor i8 %8010, 1
  %8012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8011, i8* %8012, align 1
  %8013 = xor i64 3, %7998
  %8014 = trunc i64 %8013 to i32
  %8015 = xor i32 %8014, %8002
  %8016 = lshr i32 %8015, 4
  %8017 = trunc i32 %8016 to i8
  %8018 = and i8 %8017, 1
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8018, i8* %8019, align 1
  %8020 = icmp eq i32 %8002, 0
  %8021 = zext i1 %8020 to i8
  %8022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8021, i8* %8022, align 1
  %8023 = lshr i32 %8002, 31
  %8024 = trunc i32 %8023 to i8
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8024, i8* %8025, align 1
  %8026 = lshr i32 %8001, 31
  %8027 = xor i32 %8023, %8026
  %8028 = add i32 %8027, %8026
  %8029 = icmp eq i32 %8028, 2
  %8030 = zext i1 %8029 to i8
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8030, i8* %8031, align 1
  store %struct.Memory* %loadMem_4010ad, %struct.Memory** %MEMORY
  %loadMem_4010b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8033 = getelementptr inbounds %struct.GPR, %struct.GPR* %8032, i32 0, i32 33
  %8034 = getelementptr inbounds %struct.Reg, %struct.Reg* %8033, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %8034 to i64*
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8036 = getelementptr inbounds %struct.GPR, %struct.GPR* %8035, i32 0, i32 5
  %8037 = getelementptr inbounds %struct.Reg, %struct.Reg* %8036, i32 0, i32 0
  %ECX.i118 = bitcast %union.anon* %8037 to i32*
  %8038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8039 = getelementptr inbounds %struct.GPR, %struct.GPR* %8038, i32 0, i32 7
  %8040 = getelementptr inbounds %struct.Reg, %struct.Reg* %8039, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %8040 to i64*
  %8041 = load i32, i32* %ECX.i118
  %8042 = zext i32 %8041 to i64
  %8043 = load i64, i64* %PC.i117
  %8044 = add i64 %8043, 3
  store i64 %8044, i64* %PC.i117
  %8045 = shl i64 %8042, 32
  %8046 = ashr exact i64 %8045, 32
  store i64 %8046, i64* %RDX.i119, align 8
  store %struct.Memory* %loadMem_4010b0, %struct.Memory** %MEMORY
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 33
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %8049 to i64*
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8051 = getelementptr inbounds %struct.GPR, %struct.GPR* %8050, i32 0, i32 7
  %8052 = getelementptr inbounds %struct.Reg, %struct.Reg* %8051, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %8052 to i64*
  %8053 = load i64, i64* %RDX.i116
  %8054 = load i64, i64* %PC.i115
  %8055 = add i64 %8054, 4
  store i64 %8055, i64* %PC.i115
  %8056 = shl i64 %8053, 12
  %8057 = icmp slt i64 %8056, 0
  %8058 = shl i64 %8056, 1
  store i64 %8058, i64* %RDX.i116, align 8
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8060 = zext i1 %8057 to i8
  store i8 %8060, i8* %8059, align 1
  %8061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8062 = trunc i64 %8058 to i32
  store i8 1, i8* %8061, align 1
  %8063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8063, align 1
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8065 = icmp eq i64 %8058, 0
  %8066 = zext i1 %8065 to i8
  store i8 %8066, i8* %8064, align 1
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8068 = lshr i64 %8058, 63
  %8069 = trunc i64 %8068 to i8
  store i8 %8069, i8* %8067, align 1
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8070, align 1
  store %struct.Memory* %loadMem_4010b3, %struct.Memory** %MEMORY
  %loadMem_4010b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8072 = getelementptr inbounds %struct.GPR, %struct.GPR* %8071, i32 0, i32 33
  %8073 = getelementptr inbounds %struct.Reg, %struct.Reg* %8072, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %8073 to i64*
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8075 = getelementptr inbounds %struct.GPR, %struct.GPR* %8074, i32 0, i32 1
  %8076 = getelementptr inbounds %struct.Reg, %struct.Reg* %8075, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %8076 to i64*
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8078 = getelementptr inbounds %struct.GPR, %struct.GPR* %8077, i32 0, i32 7
  %8079 = getelementptr inbounds %struct.Reg, %struct.Reg* %8078, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %8079 to i64*
  %8080 = load i64, i64* %RAX.i113
  %8081 = load i64, i64* %RDX.i114
  %8082 = load i64, i64* %PC.i112
  %8083 = add i64 %8082, 3
  store i64 %8083, i64* %PC.i112
  %8084 = add i64 %8081, %8080
  store i64 %8084, i64* %RAX.i113, align 8
  %8085 = icmp ult i64 %8084, %8080
  %8086 = icmp ult i64 %8084, %8081
  %8087 = or i1 %8085, %8086
  %8088 = zext i1 %8087 to i8
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8088, i8* %8089, align 1
  %8090 = trunc i64 %8084 to i32
  %8091 = and i32 %8090, 255
  %8092 = call i32 @llvm.ctpop.i32(i32 %8091)
  %8093 = trunc i32 %8092 to i8
  %8094 = and i8 %8093, 1
  %8095 = xor i8 %8094, 1
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8095, i8* %8096, align 1
  %8097 = xor i64 %8081, %8080
  %8098 = xor i64 %8097, %8084
  %8099 = lshr i64 %8098, 4
  %8100 = trunc i64 %8099 to i8
  %8101 = and i8 %8100, 1
  %8102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8101, i8* %8102, align 1
  %8103 = icmp eq i64 %8084, 0
  %8104 = zext i1 %8103 to i8
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8104, i8* %8105, align 1
  %8106 = lshr i64 %8084, 63
  %8107 = trunc i64 %8106 to i8
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8107, i8* %8108, align 1
  %8109 = lshr i64 %8080, 63
  %8110 = lshr i64 %8081, 63
  %8111 = xor i64 %8106, %8109
  %8112 = xor i64 %8106, %8110
  %8113 = add i64 %8111, %8112
  %8114 = icmp eq i64 %8113, 2
  %8115 = zext i1 %8114 to i8
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8115, i8* %8116, align 1
  store %struct.Memory* %loadMem_4010b7, %struct.Memory** %MEMORY
  %loadMem_4010ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8118 = getelementptr inbounds %struct.GPR, %struct.GPR* %8117, i32 0, i32 33
  %8119 = getelementptr inbounds %struct.Reg, %struct.Reg* %8118, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %8119 to i64*
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 7
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 15
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %8125 to i64*
  %8126 = load i64, i64* %RBP.i111
  %8127 = sub i64 %8126, 44
  %8128 = load i64, i64* %PC.i109
  %8129 = add i64 %8128, 4
  store i64 %8129, i64* %PC.i109
  %8130 = inttoptr i64 %8127 to i32*
  %8131 = load i32, i32* %8130
  %8132 = sext i32 %8131 to i64
  store i64 %8132, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_4010ba, %struct.Memory** %MEMORY
  %loadMem_4010be = load %struct.Memory*, %struct.Memory** %MEMORY
  %8133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8134 = getelementptr inbounds %struct.GPR, %struct.GPR* %8133, i32 0, i32 33
  %8135 = getelementptr inbounds %struct.Reg, %struct.Reg* %8134, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8135 to i64*
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 1
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %8138 to i64*
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8140 = getelementptr inbounds %struct.GPR, %struct.GPR* %8139, i32 0, i32 7
  %8141 = getelementptr inbounds %struct.Reg, %struct.Reg* %8140, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %8141 to i64*
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8142, i64 0, i64 1
  %YMM1.i108 = bitcast %union.VectorReg* %8143 to %"class.std::bitset"*
  %8144 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %8145 = load i64, i64* %RAX.i106
  %8146 = load i64, i64* %RDX.i107
  %8147 = mul i64 %8146, 8
  %8148 = add i64 %8147, %8145
  %8149 = load i64, i64* %PC.i105
  %8150 = add i64 %8149, 5
  store i64 %8150, i64* %PC.i105
  %8151 = inttoptr i64 %8148 to double*
  %8152 = load double, double* %8151
  %8153 = bitcast i8* %8144 to double*
  store double %8152, double* %8153, align 1
  %8154 = getelementptr inbounds i8, i8* %8144, i64 8
  %8155 = bitcast i8* %8154 to double*
  store double 0.000000e+00, double* %8155, align 1
  store %struct.Memory* %loadMem_4010be, %struct.Memory** %MEMORY
  %loadMem_4010c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8157 = getelementptr inbounds %struct.GPR, %struct.GPR* %8156, i32 0, i32 33
  %8158 = getelementptr inbounds %struct.Reg, %struct.Reg* %8157, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8158 to i64*
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8160 = getelementptr inbounds %struct.GPR, %struct.GPR* %8159, i32 0, i32 1
  %8161 = getelementptr inbounds %struct.Reg, %struct.Reg* %8160, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %8161 to i64*
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 15
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %8164 to i64*
  %8165 = load i64, i64* %RBP.i104
  %8166 = sub i64 %8165, 24
  %8167 = load i64, i64* %PC.i102
  %8168 = add i64 %8167, 4
  store i64 %8168, i64* %PC.i102
  %8169 = inttoptr i64 %8166 to i64*
  %8170 = load i64, i64* %8169
  store i64 %8170, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4010c3, %struct.Memory** %MEMORY
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8172 = getelementptr inbounds %struct.GPR, %struct.GPR* %8171, i32 0, i32 33
  %8173 = getelementptr inbounds %struct.Reg, %struct.Reg* %8172, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8173 to i64*
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 5
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %8176 to i64*
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8178 = getelementptr inbounds %struct.GPR, %struct.GPR* %8177, i32 0, i32 15
  %8179 = getelementptr inbounds %struct.Reg, %struct.Reg* %8178, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %8179 to i64*
  %8180 = load i64, i64* %RBP.i101
  %8181 = sub i64 %8180, 8
  %8182 = load i64, i64* %PC.i99
  %8183 = add i64 %8182, 3
  store i64 %8183, i64* %PC.i99
  %8184 = inttoptr i64 %8181 to i32*
  %8185 = load i32, i32* %8184
  %8186 = zext i32 %8185 to i64
  store i64 %8186, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_4010c7, %struct.Memory** %MEMORY
  %loadMem_4010ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8188 = getelementptr inbounds %struct.GPR, %struct.GPR* %8187, i32 0, i32 33
  %8189 = getelementptr inbounds %struct.Reg, %struct.Reg* %8188, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8189 to i64*
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8191 = getelementptr inbounds %struct.GPR, %struct.GPR* %8190, i32 0, i32 5
  %8192 = getelementptr inbounds %struct.Reg, %struct.Reg* %8191, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8192 to i64*
  %8193 = load i64, i64* %RCX.i98
  %8194 = load i64, i64* %PC.i97
  %8195 = add i64 %8194, 3
  store i64 %8195, i64* %PC.i97
  %8196 = trunc i64 %8193 to i32
  %8197 = sub i32 %8196, 3
  %8198 = zext i32 %8197 to i64
  store i64 %8198, i64* %RCX.i98, align 8
  %8199 = icmp ult i32 %8196, 3
  %8200 = zext i1 %8199 to i8
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8200, i8* %8201, align 1
  %8202 = and i32 %8197, 255
  %8203 = call i32 @llvm.ctpop.i32(i32 %8202)
  %8204 = trunc i32 %8203 to i8
  %8205 = and i8 %8204, 1
  %8206 = xor i8 %8205, 1
  %8207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8206, i8* %8207, align 1
  %8208 = xor i64 3, %8193
  %8209 = trunc i64 %8208 to i32
  %8210 = xor i32 %8209, %8197
  %8211 = lshr i32 %8210, 4
  %8212 = trunc i32 %8211 to i8
  %8213 = and i8 %8212, 1
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8213, i8* %8214, align 1
  %8215 = icmp eq i32 %8197, 0
  %8216 = zext i1 %8215 to i8
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8216, i8* %8217, align 1
  %8218 = lshr i32 %8197, 31
  %8219 = trunc i32 %8218 to i8
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8219, i8* %8220, align 1
  %8221 = lshr i32 %8196, 31
  %8222 = xor i32 %8218, %8221
  %8223 = add i32 %8222, %8221
  %8224 = icmp eq i32 %8223, 2
  %8225 = zext i1 %8224 to i8
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8225, i8* %8226, align 1
  store %struct.Memory* %loadMem_4010ca, %struct.Memory** %MEMORY
  %loadMem_4010cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 5
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %8232 to i64*
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8234 = getelementptr inbounds %struct.GPR, %struct.GPR* %8233, i32 0, i32 15
  %8235 = getelementptr inbounds %struct.Reg, %struct.Reg* %8234, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %8235 to i64*
  %8236 = load i64, i64* %RCX.i95
  %8237 = load i64, i64* %RBP.i96
  %8238 = sub i64 %8237, 40
  %8239 = load i64, i64* %PC.i94
  %8240 = add i64 %8239, 3
  store i64 %8240, i64* %PC.i94
  %8241 = trunc i64 %8236 to i32
  %8242 = inttoptr i64 %8238 to i32*
  %8243 = load i32, i32* %8242
  %8244 = sub i32 %8241, %8243
  %8245 = zext i32 %8244 to i64
  store i64 %8245, i64* %RCX.i95, align 8
  %8246 = icmp ult i32 %8241, %8243
  %8247 = zext i1 %8246 to i8
  %8248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8247, i8* %8248, align 1
  %8249 = and i32 %8244, 255
  %8250 = call i32 @llvm.ctpop.i32(i32 %8249)
  %8251 = trunc i32 %8250 to i8
  %8252 = and i8 %8251, 1
  %8253 = xor i8 %8252, 1
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8253, i8* %8254, align 1
  %8255 = xor i32 %8243, %8241
  %8256 = xor i32 %8255, %8244
  %8257 = lshr i32 %8256, 4
  %8258 = trunc i32 %8257 to i8
  %8259 = and i8 %8258, 1
  %8260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8259, i8* %8260, align 1
  %8261 = icmp eq i32 %8244, 0
  %8262 = zext i1 %8261 to i8
  %8263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8262, i8* %8263, align 1
  %8264 = lshr i32 %8244, 31
  %8265 = trunc i32 %8264 to i8
  %8266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8265, i8* %8266, align 1
  %8267 = lshr i32 %8241, 31
  %8268 = lshr i32 %8243, 31
  %8269 = xor i32 %8268, %8267
  %8270 = xor i32 %8264, %8267
  %8271 = add i32 %8270, %8269
  %8272 = icmp eq i32 %8271, 2
  %8273 = zext i1 %8272 to i8
  %8274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8273, i8* %8274, align 1
  store %struct.Memory* %loadMem_4010cd, %struct.Memory** %MEMORY
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8276 = getelementptr inbounds %struct.GPR, %struct.GPR* %8275, i32 0, i32 33
  %8277 = getelementptr inbounds %struct.Reg, %struct.Reg* %8276, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8277 to i64*
  %8278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8279 = getelementptr inbounds %struct.GPR, %struct.GPR* %8278, i32 0, i32 5
  %8280 = getelementptr inbounds %struct.Reg, %struct.Reg* %8279, i32 0, i32 0
  %ECX.i92 = bitcast %union.anon* %8280 to i32*
  %8281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8282 = getelementptr inbounds %struct.GPR, %struct.GPR* %8281, i32 0, i32 7
  %8283 = getelementptr inbounds %struct.Reg, %struct.Reg* %8282, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %8283 to i64*
  %8284 = load i32, i32* %ECX.i92
  %8285 = zext i32 %8284 to i64
  %8286 = load i64, i64* %PC.i91
  %8287 = add i64 %8286, 3
  store i64 %8287, i64* %PC.i91
  %8288 = shl i64 %8285, 32
  %8289 = ashr exact i64 %8288, 32
  store i64 %8289, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_4010d0, %struct.Memory** %MEMORY
  %loadMem_4010d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8291 = getelementptr inbounds %struct.GPR, %struct.GPR* %8290, i32 0, i32 33
  %8292 = getelementptr inbounds %struct.Reg, %struct.Reg* %8291, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8292 to i64*
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8294 = getelementptr inbounds %struct.GPR, %struct.GPR* %8293, i32 0, i32 7
  %8295 = getelementptr inbounds %struct.Reg, %struct.Reg* %8294, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %8295 to i64*
  %8296 = load i64, i64* %RDX.i90
  %8297 = load i64, i64* %PC.i89
  %8298 = add i64 %8297, 4
  store i64 %8298, i64* %PC.i89
  %8299 = shl i64 %8296, 12
  %8300 = icmp slt i64 %8299, 0
  %8301 = shl i64 %8299, 1
  store i64 %8301, i64* %RDX.i90, align 8
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8303 = zext i1 %8300 to i8
  store i8 %8303, i8* %8302, align 1
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8305 = trunc i64 %8301 to i32
  store i8 1, i8* %8304, align 1
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8306, align 1
  %8307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8308 = icmp eq i64 %8301, 0
  %8309 = zext i1 %8308 to i8
  store i8 %8309, i8* %8307, align 1
  %8310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8311 = lshr i64 %8301, 63
  %8312 = trunc i64 %8311 to i8
  store i8 %8312, i8* %8310, align 1
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8313, align 1
  store %struct.Memory* %loadMem_4010d3, %struct.Memory** %MEMORY
  %loadMem_4010d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8315 = getelementptr inbounds %struct.GPR, %struct.GPR* %8314, i32 0, i32 33
  %8316 = getelementptr inbounds %struct.Reg, %struct.Reg* %8315, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8316 to i64*
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8318 = getelementptr inbounds %struct.GPR, %struct.GPR* %8317, i32 0, i32 1
  %8319 = getelementptr inbounds %struct.Reg, %struct.Reg* %8318, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %8319 to i64*
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8321 = getelementptr inbounds %struct.GPR, %struct.GPR* %8320, i32 0, i32 7
  %8322 = getelementptr inbounds %struct.Reg, %struct.Reg* %8321, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %8322 to i64*
  %8323 = load i64, i64* %RAX.i87
  %8324 = load i64, i64* %RDX.i88
  %8325 = load i64, i64* %PC.i86
  %8326 = add i64 %8325, 3
  store i64 %8326, i64* %PC.i86
  %8327 = add i64 %8324, %8323
  store i64 %8327, i64* %RAX.i87, align 8
  %8328 = icmp ult i64 %8327, %8323
  %8329 = icmp ult i64 %8327, %8324
  %8330 = or i1 %8328, %8329
  %8331 = zext i1 %8330 to i8
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8331, i8* %8332, align 1
  %8333 = trunc i64 %8327 to i32
  %8334 = and i32 %8333, 255
  %8335 = call i32 @llvm.ctpop.i32(i32 %8334)
  %8336 = trunc i32 %8335 to i8
  %8337 = and i8 %8336, 1
  %8338 = xor i8 %8337, 1
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8338, i8* %8339, align 1
  %8340 = xor i64 %8324, %8323
  %8341 = xor i64 %8340, %8327
  %8342 = lshr i64 %8341, 4
  %8343 = trunc i64 %8342 to i8
  %8344 = and i8 %8343, 1
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8344, i8* %8345, align 1
  %8346 = icmp eq i64 %8327, 0
  %8347 = zext i1 %8346 to i8
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8347, i8* %8348, align 1
  %8349 = lshr i64 %8327, 63
  %8350 = trunc i64 %8349 to i8
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8350, i8* %8351, align 1
  %8352 = lshr i64 %8323, 63
  %8353 = lshr i64 %8324, 63
  %8354 = xor i64 %8349, %8352
  %8355 = xor i64 %8349, %8353
  %8356 = add i64 %8354, %8355
  %8357 = icmp eq i64 %8356, 2
  %8358 = zext i1 %8357 to i8
  %8359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8358, i8* %8359, align 1
  store %struct.Memory* %loadMem_4010d7, %struct.Memory** %MEMORY
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8361 = getelementptr inbounds %struct.GPR, %struct.GPR* %8360, i32 0, i32 33
  %8362 = getelementptr inbounds %struct.Reg, %struct.Reg* %8361, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8362 to i64*
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8364 = getelementptr inbounds %struct.GPR, %struct.GPR* %8363, i32 0, i32 7
  %8365 = getelementptr inbounds %struct.Reg, %struct.Reg* %8364, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %8365 to i64*
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8367 = getelementptr inbounds %struct.GPR, %struct.GPR* %8366, i32 0, i32 15
  %8368 = getelementptr inbounds %struct.Reg, %struct.Reg* %8367, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %8368 to i64*
  %8369 = load i64, i64* %RBP.i85
  %8370 = sub i64 %8369, 44
  %8371 = load i64, i64* %PC.i83
  %8372 = add i64 %8371, 4
  store i64 %8372, i64* %PC.i83
  %8373 = inttoptr i64 %8370 to i32*
  %8374 = load i32, i32* %8373
  %8375 = sext i32 %8374 to i64
  store i64 %8375, i64* %RDX.i84, align 8
  store %struct.Memory* %loadMem_4010da, %struct.Memory** %MEMORY
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8377 = getelementptr inbounds %struct.GPR, %struct.GPR* %8376, i32 0, i32 33
  %8378 = getelementptr inbounds %struct.Reg, %struct.Reg* %8377, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8378 to i64*
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8380 = getelementptr inbounds %struct.GPR, %struct.GPR* %8379, i32 0, i32 1
  %8381 = getelementptr inbounds %struct.Reg, %struct.Reg* %8380, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %8381 to i64*
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8383 = getelementptr inbounds %struct.GPR, %struct.GPR* %8382, i32 0, i32 7
  %8384 = getelementptr inbounds %struct.Reg, %struct.Reg* %8383, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %8384 to i64*
  %8385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8385, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %8386 to %"class.std::bitset"*
  %8387 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %8388 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %8389 = load i64, i64* %RAX.i81
  %8390 = load i64, i64* %RDX.i82
  %8391 = mul i64 %8390, 8
  %8392 = add i64 %8391, %8389
  %8393 = load i64, i64* %PC.i80
  %8394 = add i64 %8393, 5
  store i64 %8394, i64* %PC.i80
  %8395 = bitcast i8* %8388 to double*
  %8396 = load double, double* %8395, align 1
  %8397 = getelementptr inbounds i8, i8* %8388, i64 8
  %8398 = bitcast i8* %8397 to i64*
  %8399 = load i64, i64* %8398, align 1
  %8400 = inttoptr i64 %8392 to double*
  %8401 = load double, double* %8400
  %8402 = fmul double %8396, %8401
  %8403 = bitcast i8* %8387 to double*
  store double %8402, double* %8403, align 1
  %8404 = getelementptr inbounds i8, i8* %8387, i64 8
  %8405 = bitcast i8* %8404 to i64*
  store i64 %8399, i64* %8405, align 1
  store %struct.Memory* %loadMem_4010de, %struct.Memory** %MEMORY
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8407 = getelementptr inbounds %struct.GPR, %struct.GPR* %8406, i32 0, i32 33
  %8408 = getelementptr inbounds %struct.Reg, %struct.Reg* %8407, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8408 to i64*
  %8409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8409, i64 0, i64 0
  %YMM0.i79 = bitcast %union.VectorReg* %8410 to %"class.std::bitset"*
  %8411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8411, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %8412 to %union.vec128_t*
  %8413 = bitcast %"class.std::bitset"* %YMM0.i79 to i8*
  %8414 = bitcast %"class.std::bitset"* %YMM0.i79 to i8*
  %8415 = bitcast %union.vec128_t* %XMM1.i to i8*
  %8416 = load i64, i64* %PC.i78
  %8417 = add i64 %8416, 4
  store i64 %8417, i64* %PC.i78
  %8418 = bitcast i8* %8414 to double*
  %8419 = load double, double* %8418, align 1
  %8420 = getelementptr inbounds i8, i8* %8414, i64 8
  %8421 = bitcast i8* %8420 to i64*
  %8422 = load i64, i64* %8421, align 1
  %8423 = bitcast i8* %8415 to double*
  %8424 = load double, double* %8423, align 1
  %8425 = fsub double %8419, %8424
  %8426 = bitcast i8* %8413 to double*
  store double %8425, double* %8426, align 1
  %8427 = getelementptr inbounds i8, i8* %8413, i64 8
  %8428 = bitcast i8* %8427 to i64*
  store i64 %8422, i64* %8428, align 1
  store %struct.Memory* %loadMem_4010e3, %struct.Memory** %MEMORY
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8430 = getelementptr inbounds %struct.GPR, %struct.GPR* %8429, i32 0, i32 33
  %8431 = getelementptr inbounds %struct.Reg, %struct.Reg* %8430, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8431 to i64*
  %8432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8433 = getelementptr inbounds %struct.GPR, %struct.GPR* %8432, i32 0, i32 1
  %8434 = getelementptr inbounds %struct.Reg, %struct.Reg* %8433, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %8434 to i64*
  %8435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8436 = getelementptr inbounds %struct.GPR, %struct.GPR* %8435, i32 0, i32 15
  %8437 = getelementptr inbounds %struct.Reg, %struct.Reg* %8436, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %8437 to i64*
  %8438 = load i64, i64* %RBP.i77
  %8439 = sub i64 %8438, 32
  %8440 = load i64, i64* %PC.i75
  %8441 = add i64 %8440, 4
  store i64 %8441, i64* %PC.i75
  %8442 = inttoptr i64 %8439 to i64*
  %8443 = load i64, i64* %8442
  store i64 %8443, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_4010e7, %struct.Memory** %MEMORY
  %loadMem_4010eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8445 = getelementptr inbounds %struct.GPR, %struct.GPR* %8444, i32 0, i32 33
  %8446 = getelementptr inbounds %struct.Reg, %struct.Reg* %8445, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8446 to i64*
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8448 = getelementptr inbounds %struct.GPR, %struct.GPR* %8447, i32 0, i32 5
  %8449 = getelementptr inbounds %struct.Reg, %struct.Reg* %8448, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %8449 to i64*
  %8450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8451 = getelementptr inbounds %struct.GPR, %struct.GPR* %8450, i32 0, i32 15
  %8452 = getelementptr inbounds %struct.Reg, %struct.Reg* %8451, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %8452 to i64*
  %8453 = load i64, i64* %RBP.i74
  %8454 = sub i64 %8453, 8
  %8455 = load i64, i64* %PC.i72
  %8456 = add i64 %8455, 3
  store i64 %8456, i64* %PC.i72
  %8457 = inttoptr i64 %8454 to i32*
  %8458 = load i32, i32* %8457
  %8459 = zext i32 %8458 to i64
  store i64 %8459, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_4010eb, %struct.Memory** %MEMORY
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8461 = getelementptr inbounds %struct.GPR, %struct.GPR* %8460, i32 0, i32 33
  %8462 = getelementptr inbounds %struct.Reg, %struct.Reg* %8461, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8462 to i64*
  %8463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8464 = getelementptr inbounds %struct.GPR, %struct.GPR* %8463, i32 0, i32 5
  %8465 = getelementptr inbounds %struct.Reg, %struct.Reg* %8464, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %8465 to i64*
  %8466 = load i64, i64* %RCX.i71
  %8467 = load i64, i64* %PC.i70
  %8468 = add i64 %8467, 3
  store i64 %8468, i64* %PC.i70
  %8469 = trunc i64 %8466 to i32
  %8470 = sub i32 %8469, 2
  %8471 = zext i32 %8470 to i64
  store i64 %8471, i64* %RCX.i71, align 8
  %8472 = icmp ult i32 %8469, 2
  %8473 = zext i1 %8472 to i8
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8473, i8* %8474, align 1
  %8475 = and i32 %8470, 255
  %8476 = call i32 @llvm.ctpop.i32(i32 %8475)
  %8477 = trunc i32 %8476 to i8
  %8478 = and i8 %8477, 1
  %8479 = xor i8 %8478, 1
  %8480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8479, i8* %8480, align 1
  %8481 = xor i64 2, %8466
  %8482 = trunc i64 %8481 to i32
  %8483 = xor i32 %8482, %8470
  %8484 = lshr i32 %8483, 4
  %8485 = trunc i32 %8484 to i8
  %8486 = and i8 %8485, 1
  %8487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8486, i8* %8487, align 1
  %8488 = icmp eq i32 %8470, 0
  %8489 = zext i1 %8488 to i8
  %8490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8489, i8* %8490, align 1
  %8491 = lshr i32 %8470, 31
  %8492 = trunc i32 %8491 to i8
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8492, i8* %8493, align 1
  %8494 = lshr i32 %8469, 31
  %8495 = xor i32 %8491, %8494
  %8496 = add i32 %8495, %8494
  %8497 = icmp eq i32 %8496, 2
  %8498 = zext i1 %8497 to i8
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8498, i8* %8499, align 1
  store %struct.Memory* %loadMem_4010ee, %struct.Memory** %MEMORY
  %loadMem_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8501 = getelementptr inbounds %struct.GPR, %struct.GPR* %8500, i32 0, i32 33
  %8502 = getelementptr inbounds %struct.Reg, %struct.Reg* %8501, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8502 to i64*
  %8503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8504 = getelementptr inbounds %struct.GPR, %struct.GPR* %8503, i32 0, i32 5
  %8505 = getelementptr inbounds %struct.Reg, %struct.Reg* %8504, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %8505 to i64*
  %8506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8507 = getelementptr inbounds %struct.GPR, %struct.GPR* %8506, i32 0, i32 15
  %8508 = getelementptr inbounds %struct.Reg, %struct.Reg* %8507, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %8508 to i64*
  %8509 = load i64, i64* %RCX.i68
  %8510 = load i64, i64* %RBP.i69
  %8511 = sub i64 %8510, 40
  %8512 = load i64, i64* %PC.i67
  %8513 = add i64 %8512, 3
  store i64 %8513, i64* %PC.i67
  %8514 = trunc i64 %8509 to i32
  %8515 = inttoptr i64 %8511 to i32*
  %8516 = load i32, i32* %8515
  %8517 = sub i32 %8514, %8516
  %8518 = zext i32 %8517 to i64
  store i64 %8518, i64* %RCX.i68, align 8
  %8519 = icmp ult i32 %8514, %8516
  %8520 = zext i1 %8519 to i8
  %8521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8520, i8* %8521, align 1
  %8522 = and i32 %8517, 255
  %8523 = call i32 @llvm.ctpop.i32(i32 %8522)
  %8524 = trunc i32 %8523 to i8
  %8525 = and i8 %8524, 1
  %8526 = xor i8 %8525, 1
  %8527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8526, i8* %8527, align 1
  %8528 = xor i32 %8516, %8514
  %8529 = xor i32 %8528, %8517
  %8530 = lshr i32 %8529, 4
  %8531 = trunc i32 %8530 to i8
  %8532 = and i8 %8531, 1
  %8533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8532, i8* %8533, align 1
  %8534 = icmp eq i32 %8517, 0
  %8535 = zext i1 %8534 to i8
  %8536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8535, i8* %8536, align 1
  %8537 = lshr i32 %8517, 31
  %8538 = trunc i32 %8537 to i8
  %8539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8538, i8* %8539, align 1
  %8540 = lshr i32 %8514, 31
  %8541 = lshr i32 %8516, 31
  %8542 = xor i32 %8541, %8540
  %8543 = xor i32 %8537, %8540
  %8544 = add i32 %8543, %8542
  %8545 = icmp eq i32 %8544, 2
  %8546 = zext i1 %8545 to i8
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8546, i8* %8547, align 1
  store %struct.Memory* %loadMem_4010f1, %struct.Memory** %MEMORY
  %loadMem_4010f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8549 = getelementptr inbounds %struct.GPR, %struct.GPR* %8548, i32 0, i32 33
  %8550 = getelementptr inbounds %struct.Reg, %struct.Reg* %8549, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8550 to i64*
  %8551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8552 = getelementptr inbounds %struct.GPR, %struct.GPR* %8551, i32 0, i32 5
  %8553 = getelementptr inbounds %struct.Reg, %struct.Reg* %8552, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %8553 to i32*
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8555 = getelementptr inbounds %struct.GPR, %struct.GPR* %8554, i32 0, i32 7
  %8556 = getelementptr inbounds %struct.Reg, %struct.Reg* %8555, i32 0, i32 0
  %RDX.i66 = bitcast %union.anon* %8556 to i64*
  %8557 = load i32, i32* %ECX.i65
  %8558 = zext i32 %8557 to i64
  %8559 = load i64, i64* %PC.i64
  %8560 = add i64 %8559, 3
  store i64 %8560, i64* %PC.i64
  %8561 = shl i64 %8558, 32
  %8562 = ashr exact i64 %8561, 32
  store i64 %8562, i64* %RDX.i66, align 8
  store %struct.Memory* %loadMem_4010f4, %struct.Memory** %MEMORY
  %loadMem_4010f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8564 = getelementptr inbounds %struct.GPR, %struct.GPR* %8563, i32 0, i32 33
  %8565 = getelementptr inbounds %struct.Reg, %struct.Reg* %8564, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %8565 to i64*
  %8566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8567 = getelementptr inbounds %struct.GPR, %struct.GPR* %8566, i32 0, i32 7
  %8568 = getelementptr inbounds %struct.Reg, %struct.Reg* %8567, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %8568 to i64*
  %8569 = load i64, i64* %RDX.i63
  %8570 = load i64, i64* %PC.i62
  %8571 = add i64 %8570, 4
  store i64 %8571, i64* %PC.i62
  %8572 = shl i64 %8569, 12
  %8573 = icmp slt i64 %8572, 0
  %8574 = shl i64 %8572, 1
  store i64 %8574, i64* %RDX.i63, align 8
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8576 = zext i1 %8573 to i8
  store i8 %8576, i8* %8575, align 1
  %8577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8578 = trunc i64 %8574 to i32
  store i8 1, i8* %8577, align 1
  %8579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8579, align 1
  %8580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8581 = icmp eq i64 %8574, 0
  %8582 = zext i1 %8581 to i8
  store i8 %8582, i8* %8580, align 1
  %8583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8584 = lshr i64 %8574, 63
  %8585 = trunc i64 %8584 to i8
  store i8 %8585, i8* %8583, align 1
  %8586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8586, align 1
  store %struct.Memory* %loadMem_4010f7, %struct.Memory** %MEMORY
  %loadMem_4010fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8588 = getelementptr inbounds %struct.GPR, %struct.GPR* %8587, i32 0, i32 33
  %8589 = getelementptr inbounds %struct.Reg, %struct.Reg* %8588, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %8589 to i64*
  %8590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8591 = getelementptr inbounds %struct.GPR, %struct.GPR* %8590, i32 0, i32 1
  %8592 = getelementptr inbounds %struct.Reg, %struct.Reg* %8591, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %8592 to i64*
  %8593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8594 = getelementptr inbounds %struct.GPR, %struct.GPR* %8593, i32 0, i32 7
  %8595 = getelementptr inbounds %struct.Reg, %struct.Reg* %8594, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %8595 to i64*
  %8596 = load i64, i64* %RAX.i60
  %8597 = load i64, i64* %RDX.i61
  %8598 = load i64, i64* %PC.i59
  %8599 = add i64 %8598, 3
  store i64 %8599, i64* %PC.i59
  %8600 = add i64 %8597, %8596
  store i64 %8600, i64* %RAX.i60, align 8
  %8601 = icmp ult i64 %8600, %8596
  %8602 = icmp ult i64 %8600, %8597
  %8603 = or i1 %8601, %8602
  %8604 = zext i1 %8603 to i8
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8604, i8* %8605, align 1
  %8606 = trunc i64 %8600 to i32
  %8607 = and i32 %8606, 255
  %8608 = call i32 @llvm.ctpop.i32(i32 %8607)
  %8609 = trunc i32 %8608 to i8
  %8610 = and i8 %8609, 1
  %8611 = xor i8 %8610, 1
  %8612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8611, i8* %8612, align 1
  %8613 = xor i64 %8597, %8596
  %8614 = xor i64 %8613, %8600
  %8615 = lshr i64 %8614, 4
  %8616 = trunc i64 %8615 to i8
  %8617 = and i8 %8616, 1
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8617, i8* %8618, align 1
  %8619 = icmp eq i64 %8600, 0
  %8620 = zext i1 %8619 to i8
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8620, i8* %8621, align 1
  %8622 = lshr i64 %8600, 63
  %8623 = trunc i64 %8622 to i8
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8623, i8* %8624, align 1
  %8625 = lshr i64 %8596, 63
  %8626 = lshr i64 %8597, 63
  %8627 = xor i64 %8622, %8625
  %8628 = xor i64 %8622, %8626
  %8629 = add i64 %8627, %8628
  %8630 = icmp eq i64 %8629, 2
  %8631 = zext i1 %8630 to i8
  %8632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8631, i8* %8632, align 1
  store %struct.Memory* %loadMem_4010fb, %struct.Memory** %MEMORY
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8634 = getelementptr inbounds %struct.GPR, %struct.GPR* %8633, i32 0, i32 33
  %8635 = getelementptr inbounds %struct.Reg, %struct.Reg* %8634, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8635 to i64*
  %8636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8637 = getelementptr inbounds %struct.GPR, %struct.GPR* %8636, i32 0, i32 7
  %8638 = getelementptr inbounds %struct.Reg, %struct.Reg* %8637, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %8638 to i64*
  %8639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8640 = getelementptr inbounds %struct.GPR, %struct.GPR* %8639, i32 0, i32 15
  %8641 = getelementptr inbounds %struct.Reg, %struct.Reg* %8640, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %8641 to i64*
  %8642 = load i64, i64* %RBP.i58
  %8643 = sub i64 %8642, 44
  %8644 = load i64, i64* %PC.i56
  %8645 = add i64 %8644, 4
  store i64 %8645, i64* %PC.i56
  %8646 = inttoptr i64 %8643 to i32*
  %8647 = load i32, i32* %8646
  %8648 = sext i32 %8647 to i64
  store i64 %8648, i64* %RDX.i57, align 8
  store %struct.Memory* %loadMem_4010fe, %struct.Memory** %MEMORY
  %loadMem_401102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8650 = getelementptr inbounds %struct.GPR, %struct.GPR* %8649, i32 0, i32 33
  %8651 = getelementptr inbounds %struct.Reg, %struct.Reg* %8650, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8651 to i64*
  %8652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8653 = getelementptr inbounds %struct.GPR, %struct.GPR* %8652, i32 0, i32 1
  %8654 = getelementptr inbounds %struct.Reg, %struct.Reg* %8653, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %8654 to i64*
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8656 = getelementptr inbounds %struct.GPR, %struct.GPR* %8655, i32 0, i32 7
  %8657 = getelementptr inbounds %struct.Reg, %struct.Reg* %8656, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %8657 to i64*
  %8658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8658, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %8659 to %"class.std::bitset"*
  %8660 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %8661 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %8662 = load i64, i64* %RAX.i54
  %8663 = load i64, i64* %RDX.i55
  %8664 = mul i64 %8663, 8
  %8665 = add i64 %8664, %8662
  %8666 = load i64, i64* %PC.i53
  %8667 = add i64 %8666, 5
  store i64 %8667, i64* %PC.i53
  %8668 = bitcast i8* %8661 to double*
  %8669 = load double, double* %8668, align 1
  %8670 = getelementptr inbounds i8, i8* %8661, i64 8
  %8671 = bitcast i8* %8670 to i64*
  %8672 = load i64, i64* %8671, align 1
  %8673 = inttoptr i64 %8665 to double*
  %8674 = load double, double* %8673
  %8675 = fdiv double %8669, %8674
  %8676 = bitcast i8* %8660 to double*
  store double %8675, double* %8676, align 1
  %8677 = getelementptr inbounds i8, i8* %8660, i64 8
  %8678 = bitcast i8* %8677 to i64*
  store i64 %8672, i64* %8678, align 1
  store %struct.Memory* %loadMem_401102, %struct.Memory** %MEMORY
  %loadMem_401107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8680 = getelementptr inbounds %struct.GPR, %struct.GPR* %8679, i32 0, i32 33
  %8681 = getelementptr inbounds %struct.Reg, %struct.Reg* %8680, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8681 to i64*
  %8682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8683 = getelementptr inbounds %struct.GPR, %struct.GPR* %8682, i32 0, i32 1
  %8684 = getelementptr inbounds %struct.Reg, %struct.Reg* %8683, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %8684 to i64*
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8686 = getelementptr inbounds %struct.GPR, %struct.GPR* %8685, i32 0, i32 15
  %8687 = getelementptr inbounds %struct.Reg, %struct.Reg* %8686, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %8687 to i64*
  %8688 = load i64, i64* %RBP.i52
  %8689 = sub i64 %8688, 16
  %8690 = load i64, i64* %PC.i50
  %8691 = add i64 %8690, 4
  store i64 %8691, i64* %PC.i50
  %8692 = inttoptr i64 %8689 to i64*
  %8693 = load i64, i64* %8692
  store i64 %8693, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_401107, %struct.Memory** %MEMORY
  %loadMem_40110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8695 = getelementptr inbounds %struct.GPR, %struct.GPR* %8694, i32 0, i32 33
  %8696 = getelementptr inbounds %struct.Reg, %struct.Reg* %8695, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8696 to i64*
  %8697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8698 = getelementptr inbounds %struct.GPR, %struct.GPR* %8697, i32 0, i32 5
  %8699 = getelementptr inbounds %struct.Reg, %struct.Reg* %8698, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %8699 to i64*
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8701 = getelementptr inbounds %struct.GPR, %struct.GPR* %8700, i32 0, i32 15
  %8702 = getelementptr inbounds %struct.Reg, %struct.Reg* %8701, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %8702 to i64*
  %8703 = load i64, i64* %RBP.i49
  %8704 = sub i64 %8703, 8
  %8705 = load i64, i64* %PC.i47
  %8706 = add i64 %8705, 3
  store i64 %8706, i64* %PC.i47
  %8707 = inttoptr i64 %8704 to i32*
  %8708 = load i32, i32* %8707
  %8709 = zext i32 %8708 to i64
  store i64 %8709, i64* %RCX.i48, align 8
  store %struct.Memory* %loadMem_40110b, %struct.Memory** %MEMORY
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8711 = getelementptr inbounds %struct.GPR, %struct.GPR* %8710, i32 0, i32 33
  %8712 = getelementptr inbounds %struct.Reg, %struct.Reg* %8711, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8712 to i64*
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8714 = getelementptr inbounds %struct.GPR, %struct.GPR* %8713, i32 0, i32 5
  %8715 = getelementptr inbounds %struct.Reg, %struct.Reg* %8714, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %8715 to i64*
  %8716 = load i64, i64* %RCX.i46
  %8717 = load i64, i64* %PC.i45
  %8718 = add i64 %8717, 3
  store i64 %8718, i64* %PC.i45
  %8719 = trunc i64 %8716 to i32
  %8720 = sub i32 %8719, 2
  %8721 = zext i32 %8720 to i64
  store i64 %8721, i64* %RCX.i46, align 8
  %8722 = icmp ult i32 %8719, 2
  %8723 = zext i1 %8722 to i8
  %8724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8723, i8* %8724, align 1
  %8725 = and i32 %8720, 255
  %8726 = call i32 @llvm.ctpop.i32(i32 %8725)
  %8727 = trunc i32 %8726 to i8
  %8728 = and i8 %8727, 1
  %8729 = xor i8 %8728, 1
  %8730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8729, i8* %8730, align 1
  %8731 = xor i64 2, %8716
  %8732 = trunc i64 %8731 to i32
  %8733 = xor i32 %8732, %8720
  %8734 = lshr i32 %8733, 4
  %8735 = trunc i32 %8734 to i8
  %8736 = and i8 %8735, 1
  %8737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8736, i8* %8737, align 1
  %8738 = icmp eq i32 %8720, 0
  %8739 = zext i1 %8738 to i8
  %8740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8739, i8* %8740, align 1
  %8741 = lshr i32 %8720, 31
  %8742 = trunc i32 %8741 to i8
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8742, i8* %8743, align 1
  %8744 = lshr i32 %8719, 31
  %8745 = xor i32 %8741, %8744
  %8746 = add i32 %8745, %8744
  %8747 = icmp eq i32 %8746, 2
  %8748 = zext i1 %8747 to i8
  %8749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8748, i8* %8749, align 1
  store %struct.Memory* %loadMem_40110e, %struct.Memory** %MEMORY
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8751 = getelementptr inbounds %struct.GPR, %struct.GPR* %8750, i32 0, i32 33
  %8752 = getelementptr inbounds %struct.Reg, %struct.Reg* %8751, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8752 to i64*
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8754 = getelementptr inbounds %struct.GPR, %struct.GPR* %8753, i32 0, i32 5
  %8755 = getelementptr inbounds %struct.Reg, %struct.Reg* %8754, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8755 to i64*
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8757 = getelementptr inbounds %struct.GPR, %struct.GPR* %8756, i32 0, i32 15
  %8758 = getelementptr inbounds %struct.Reg, %struct.Reg* %8757, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %8758 to i64*
  %8759 = load i64, i64* %RCX.i
  %8760 = load i64, i64* %RBP.i44
  %8761 = sub i64 %8760, 40
  %8762 = load i64, i64* %PC.i43
  %8763 = add i64 %8762, 3
  store i64 %8763, i64* %PC.i43
  %8764 = trunc i64 %8759 to i32
  %8765 = inttoptr i64 %8761 to i32*
  %8766 = load i32, i32* %8765
  %8767 = sub i32 %8764, %8766
  %8768 = zext i32 %8767 to i64
  store i64 %8768, i64* %RCX.i, align 8
  %8769 = icmp ult i32 %8764, %8766
  %8770 = zext i1 %8769 to i8
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8770, i8* %8771, align 1
  %8772 = and i32 %8767, 255
  %8773 = call i32 @llvm.ctpop.i32(i32 %8772)
  %8774 = trunc i32 %8773 to i8
  %8775 = and i8 %8774, 1
  %8776 = xor i8 %8775, 1
  %8777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8776, i8* %8777, align 1
  %8778 = xor i32 %8766, %8764
  %8779 = xor i32 %8778, %8767
  %8780 = lshr i32 %8779, 4
  %8781 = trunc i32 %8780 to i8
  %8782 = and i8 %8781, 1
  %8783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8782, i8* %8783, align 1
  %8784 = icmp eq i32 %8767, 0
  %8785 = zext i1 %8784 to i8
  %8786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8785, i8* %8786, align 1
  %8787 = lshr i32 %8767, 31
  %8788 = trunc i32 %8787 to i8
  %8789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8788, i8* %8789, align 1
  %8790 = lshr i32 %8764, 31
  %8791 = lshr i32 %8766, 31
  %8792 = xor i32 %8791, %8790
  %8793 = xor i32 %8787, %8790
  %8794 = add i32 %8793, %8792
  %8795 = icmp eq i32 %8794, 2
  %8796 = zext i1 %8795 to i8
  %8797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8796, i8* %8797, align 1
  store %struct.Memory* %loadMem_401111, %struct.Memory** %MEMORY
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8799 = getelementptr inbounds %struct.GPR, %struct.GPR* %8798, i32 0, i32 33
  %8800 = getelementptr inbounds %struct.Reg, %struct.Reg* %8799, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8800 to i64*
  %8801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8802 = getelementptr inbounds %struct.GPR, %struct.GPR* %8801, i32 0, i32 5
  %8803 = getelementptr inbounds %struct.Reg, %struct.Reg* %8802, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8803 to i32*
  %8804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8805 = getelementptr inbounds %struct.GPR, %struct.GPR* %8804, i32 0, i32 7
  %8806 = getelementptr inbounds %struct.Reg, %struct.Reg* %8805, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %8806 to i64*
  %8807 = load i32, i32* %ECX.i
  %8808 = zext i32 %8807 to i64
  %8809 = load i64, i64* %PC.i41
  %8810 = add i64 %8809, 3
  store i64 %8810, i64* %PC.i41
  %8811 = shl i64 %8808, 32
  %8812 = ashr exact i64 %8811, 32
  store i64 %8812, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_401114, %struct.Memory** %MEMORY
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8814 = getelementptr inbounds %struct.GPR, %struct.GPR* %8813, i32 0, i32 33
  %8815 = getelementptr inbounds %struct.Reg, %struct.Reg* %8814, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %8815 to i64*
  %8816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8817 = getelementptr inbounds %struct.GPR, %struct.GPR* %8816, i32 0, i32 7
  %8818 = getelementptr inbounds %struct.Reg, %struct.Reg* %8817, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %8818 to i64*
  %8819 = load i64, i64* %RDX.i40
  %8820 = load i64, i64* %PC.i39
  %8821 = add i64 %8820, 4
  store i64 %8821, i64* %PC.i39
  %8822 = shl i64 %8819, 12
  %8823 = icmp slt i64 %8822, 0
  %8824 = shl i64 %8822, 1
  store i64 %8824, i64* %RDX.i40, align 8
  %8825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8826 = zext i1 %8823 to i8
  store i8 %8826, i8* %8825, align 1
  %8827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8828 = trunc i64 %8824 to i32
  store i8 1, i8* %8827, align 1
  %8829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8829, align 1
  %8830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8831 = icmp eq i64 %8824, 0
  %8832 = zext i1 %8831 to i8
  store i8 %8832, i8* %8830, align 1
  %8833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8834 = lshr i64 %8824, 63
  %8835 = trunc i64 %8834 to i8
  store i8 %8835, i8* %8833, align 1
  %8836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8836, align 1
  store %struct.Memory* %loadMem_401117, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8838 = getelementptr inbounds %struct.GPR, %struct.GPR* %8837, i32 0, i32 33
  %8839 = getelementptr inbounds %struct.Reg, %struct.Reg* %8838, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8839 to i64*
  %8840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8841 = getelementptr inbounds %struct.GPR, %struct.GPR* %8840, i32 0, i32 1
  %8842 = getelementptr inbounds %struct.Reg, %struct.Reg* %8841, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %8842 to i64*
  %8843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8844 = getelementptr inbounds %struct.GPR, %struct.GPR* %8843, i32 0, i32 7
  %8845 = getelementptr inbounds %struct.Reg, %struct.Reg* %8844, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %8845 to i64*
  %8846 = load i64, i64* %RAX.i37
  %8847 = load i64, i64* %RDX.i38
  %8848 = load i64, i64* %PC.i36
  %8849 = add i64 %8848, 3
  store i64 %8849, i64* %PC.i36
  %8850 = add i64 %8847, %8846
  store i64 %8850, i64* %RAX.i37, align 8
  %8851 = icmp ult i64 %8850, %8846
  %8852 = icmp ult i64 %8850, %8847
  %8853 = or i1 %8851, %8852
  %8854 = zext i1 %8853 to i8
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8854, i8* %8855, align 1
  %8856 = trunc i64 %8850 to i32
  %8857 = and i32 %8856, 255
  %8858 = call i32 @llvm.ctpop.i32(i32 %8857)
  %8859 = trunc i32 %8858 to i8
  %8860 = and i8 %8859, 1
  %8861 = xor i8 %8860, 1
  %8862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8861, i8* %8862, align 1
  %8863 = xor i64 %8847, %8846
  %8864 = xor i64 %8863, %8850
  %8865 = lshr i64 %8864, 4
  %8866 = trunc i64 %8865 to i8
  %8867 = and i8 %8866, 1
  %8868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8867, i8* %8868, align 1
  %8869 = icmp eq i64 %8850, 0
  %8870 = zext i1 %8869 to i8
  %8871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8870, i8* %8871, align 1
  %8872 = lshr i64 %8850, 63
  %8873 = trunc i64 %8872 to i8
  %8874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8873, i8* %8874, align 1
  %8875 = lshr i64 %8846, 63
  %8876 = lshr i64 %8847, 63
  %8877 = xor i64 %8872, %8875
  %8878 = xor i64 %8872, %8876
  %8879 = add i64 %8877, %8878
  %8880 = icmp eq i64 %8879, 2
  %8881 = zext i1 %8880 to i8
  %8882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8881, i8* %8882, align 1
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadMem_40111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8884 = getelementptr inbounds %struct.GPR, %struct.GPR* %8883, i32 0, i32 33
  %8885 = getelementptr inbounds %struct.Reg, %struct.Reg* %8884, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8885 to i64*
  %8886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8887 = getelementptr inbounds %struct.GPR, %struct.GPR* %8886, i32 0, i32 7
  %8888 = getelementptr inbounds %struct.Reg, %struct.Reg* %8887, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %8888 to i64*
  %8889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8890 = getelementptr inbounds %struct.GPR, %struct.GPR* %8889, i32 0, i32 15
  %8891 = getelementptr inbounds %struct.Reg, %struct.Reg* %8890, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %8891 to i64*
  %8892 = load i64, i64* %RBP.i35
  %8893 = sub i64 %8892, 44
  %8894 = load i64, i64* %PC.i33
  %8895 = add i64 %8894, 4
  store i64 %8895, i64* %PC.i33
  %8896 = inttoptr i64 %8893 to i32*
  %8897 = load i32, i32* %8896
  %8898 = sext i32 %8897 to i64
  store i64 %8898, i64* %RDX.i34, align 8
  store %struct.Memory* %loadMem_40111e, %struct.Memory** %MEMORY
  %loadMem_401122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8900 = getelementptr inbounds %struct.GPR, %struct.GPR* %8899, i32 0, i32 33
  %8901 = getelementptr inbounds %struct.Reg, %struct.Reg* %8900, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8901 to i64*
  %8902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8903 = getelementptr inbounds %struct.GPR, %struct.GPR* %8902, i32 0, i32 1
  %8904 = getelementptr inbounds %struct.Reg, %struct.Reg* %8903, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %8904 to i64*
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8906 = getelementptr inbounds %struct.GPR, %struct.GPR* %8905, i32 0, i32 7
  %8907 = getelementptr inbounds %struct.Reg, %struct.Reg* %8906, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8907 to i64*
  %8908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8908, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %8909 to %union.vec128_t*
  %8910 = load i64, i64* %RAX.i32
  %8911 = load i64, i64* %RDX.i
  %8912 = mul i64 %8911, 8
  %8913 = add i64 %8912, %8910
  %8914 = bitcast %union.vec128_t* %XMM0.i to i8*
  %8915 = load i64, i64* %PC.i31
  %8916 = add i64 %8915, 5
  store i64 %8916, i64* %PC.i31
  %8917 = bitcast i8* %8914 to double*
  %8918 = load double, double* %8917, align 1
  %8919 = inttoptr i64 %8913 to double*
  store double %8918, double* %8919
  store %struct.Memory* %loadMem_401122, %struct.Memory** %MEMORY
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8921 = getelementptr inbounds %struct.GPR, %struct.GPR* %8920, i32 0, i32 33
  %8922 = getelementptr inbounds %struct.Reg, %struct.Reg* %8921, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8922 to i64*
  %8923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8924 = getelementptr inbounds %struct.GPR, %struct.GPR* %8923, i32 0, i32 1
  %8925 = getelementptr inbounds %struct.Reg, %struct.Reg* %8924, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8925 to i64*
  %8926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8927 = getelementptr inbounds %struct.GPR, %struct.GPR* %8926, i32 0, i32 15
  %8928 = getelementptr inbounds %struct.Reg, %struct.Reg* %8927, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %8928 to i64*
  %8929 = load i64, i64* %RBP.i30
  %8930 = sub i64 %8929, 44
  %8931 = load i64, i64* %PC.i28
  %8932 = add i64 %8931, 3
  store i64 %8932, i64* %PC.i28
  %8933 = inttoptr i64 %8930 to i32*
  %8934 = load i32, i32* %8933
  %8935 = zext i32 %8934 to i64
  store i64 %8935, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_401127, %struct.Memory** %MEMORY
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8937 = getelementptr inbounds %struct.GPR, %struct.GPR* %8936, i32 0, i32 33
  %8938 = getelementptr inbounds %struct.Reg, %struct.Reg* %8937, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8938 to i64*
  %8939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8940 = getelementptr inbounds %struct.GPR, %struct.GPR* %8939, i32 0, i32 1
  %8941 = getelementptr inbounds %struct.Reg, %struct.Reg* %8940, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %8941 to i64*
  %8942 = load i64, i64* %RAX.i27
  %8943 = load i64, i64* %PC.i26
  %8944 = add i64 %8943, 3
  store i64 %8944, i64* %PC.i26
  %8945 = trunc i64 %8942 to i32
  %8946 = add i32 1, %8945
  %8947 = zext i32 %8946 to i64
  store i64 %8947, i64* %RAX.i27, align 8
  %8948 = icmp ult i32 %8946, %8945
  %8949 = icmp ult i32 %8946, 1
  %8950 = or i1 %8948, %8949
  %8951 = zext i1 %8950 to i8
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8951, i8* %8952, align 1
  %8953 = and i32 %8946, 255
  %8954 = call i32 @llvm.ctpop.i32(i32 %8953)
  %8955 = trunc i32 %8954 to i8
  %8956 = and i8 %8955, 1
  %8957 = xor i8 %8956, 1
  %8958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8957, i8* %8958, align 1
  %8959 = xor i64 1, %8942
  %8960 = trunc i64 %8959 to i32
  %8961 = xor i32 %8960, %8946
  %8962 = lshr i32 %8961, 4
  %8963 = trunc i32 %8962 to i8
  %8964 = and i8 %8963, 1
  %8965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8964, i8* %8965, align 1
  %8966 = icmp eq i32 %8946, 0
  %8967 = zext i1 %8966 to i8
  %8968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8967, i8* %8968, align 1
  %8969 = lshr i32 %8946, 31
  %8970 = trunc i32 %8969 to i8
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8970, i8* %8971, align 1
  %8972 = lshr i32 %8945, 31
  %8973 = xor i32 %8969, %8972
  %8974 = add i32 %8973, %8969
  %8975 = icmp eq i32 %8974, 2
  %8976 = zext i1 %8975 to i8
  %8977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8976, i8* %8977, align 1
  store %struct.Memory* %loadMem_40112a, %struct.Memory** %MEMORY
  %loadMem_40112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8979 = getelementptr inbounds %struct.GPR, %struct.GPR* %8978, i32 0, i32 33
  %8980 = getelementptr inbounds %struct.Reg, %struct.Reg* %8979, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8980 to i64*
  %8981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8982 = getelementptr inbounds %struct.GPR, %struct.GPR* %8981, i32 0, i32 1
  %8983 = getelementptr inbounds %struct.Reg, %struct.Reg* %8982, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %8983 to i32*
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8985 = getelementptr inbounds %struct.GPR, %struct.GPR* %8984, i32 0, i32 15
  %8986 = getelementptr inbounds %struct.Reg, %struct.Reg* %8985, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %8986 to i64*
  %8987 = load i64, i64* %RBP.i25
  %8988 = sub i64 %8987, 44
  %8989 = load i32, i32* %EAX.i24
  %8990 = zext i32 %8989 to i64
  %8991 = load i64, i64* %PC.i23
  %8992 = add i64 %8991, 3
  store i64 %8992, i64* %PC.i23
  %8993 = inttoptr i64 %8988 to i32*
  store i32 %8989, i32* %8993
  store %struct.Memory* %loadMem_40112d, %struct.Memory** %MEMORY
  %loadMem_401130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8995 = getelementptr inbounds %struct.GPR, %struct.GPR* %8994, i32 0, i32 33
  %8996 = getelementptr inbounds %struct.Reg, %struct.Reg* %8995, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8996 to i64*
  %8997 = load i64, i64* %PC.i22
  %8998 = add i64 %8997, -185
  %8999 = load i64, i64* %PC.i22
  %9000 = add i64 %8999, 5
  store i64 %9000, i64* %PC.i22
  %9001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8998, i64* %9001, align 8
  store %struct.Memory* %loadMem_401130, %struct.Memory** %MEMORY
  br label %block_.L_401077

block_.L_401135:                                  ; preds = %block_.L_401077
  %loadMem_401135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9003 = getelementptr inbounds %struct.GPR, %struct.GPR* %9002, i32 0, i32 33
  %9004 = getelementptr inbounds %struct.Reg, %struct.Reg* %9003, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %9004 to i64*
  %9005 = load i64, i64* %PC.i21
  %9006 = add i64 %9005, 5
  %9007 = load i64, i64* %PC.i21
  %9008 = add i64 %9007, 5
  store i64 %9008, i64* %PC.i21
  %9009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9006, i64* %9009, align 8
  store %struct.Memory* %loadMem_401135, %struct.Memory** %MEMORY
  br label %block_.L_40113a

block_.L_40113a:                                  ; preds = %block_.L_401135
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9011 = getelementptr inbounds %struct.GPR, %struct.GPR* %9010, i32 0, i32 33
  %9012 = getelementptr inbounds %struct.Reg, %struct.Reg* %9011, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %9012 to i64*
  %9013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9014 = getelementptr inbounds %struct.GPR, %struct.GPR* %9013, i32 0, i32 1
  %9015 = getelementptr inbounds %struct.Reg, %struct.Reg* %9014, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %9015 to i64*
  %9016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9017 = getelementptr inbounds %struct.GPR, %struct.GPR* %9016, i32 0, i32 15
  %9018 = getelementptr inbounds %struct.Reg, %struct.Reg* %9017, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %9018 to i64*
  %9019 = load i64, i64* %RBP.i20
  %9020 = sub i64 %9019, 40
  %9021 = load i64, i64* %PC.i18
  %9022 = add i64 %9021, 3
  store i64 %9022, i64* %PC.i18
  %9023 = inttoptr i64 %9020 to i32*
  %9024 = load i32, i32* %9023
  %9025 = zext i32 %9024 to i64
  store i64 %9025, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_40113a, %struct.Memory** %MEMORY
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9027 = getelementptr inbounds %struct.GPR, %struct.GPR* %9026, i32 0, i32 33
  %9028 = getelementptr inbounds %struct.Reg, %struct.Reg* %9027, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %9028 to i64*
  %9029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9030 = getelementptr inbounds %struct.GPR, %struct.GPR* %9029, i32 0, i32 1
  %9031 = getelementptr inbounds %struct.Reg, %struct.Reg* %9030, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %9031 to i64*
  %9032 = load i64, i64* %RAX.i17
  %9033 = load i64, i64* %PC.i16
  %9034 = add i64 %9033, 3
  store i64 %9034, i64* %PC.i16
  %9035 = trunc i64 %9032 to i32
  %9036 = add i32 1, %9035
  %9037 = zext i32 %9036 to i64
  store i64 %9037, i64* %RAX.i17, align 8
  %9038 = icmp ult i32 %9036, %9035
  %9039 = icmp ult i32 %9036, 1
  %9040 = or i1 %9038, %9039
  %9041 = zext i1 %9040 to i8
  %9042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9041, i8* %9042, align 1
  %9043 = and i32 %9036, 255
  %9044 = call i32 @llvm.ctpop.i32(i32 %9043)
  %9045 = trunc i32 %9044 to i8
  %9046 = and i8 %9045, 1
  %9047 = xor i8 %9046, 1
  %9048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9047, i8* %9048, align 1
  %9049 = xor i64 1, %9032
  %9050 = trunc i64 %9049 to i32
  %9051 = xor i32 %9050, %9036
  %9052 = lshr i32 %9051, 4
  %9053 = trunc i32 %9052 to i8
  %9054 = and i8 %9053, 1
  %9055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9054, i8* %9055, align 1
  %9056 = icmp eq i32 %9036, 0
  %9057 = zext i1 %9056 to i8
  %9058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9057, i8* %9058, align 1
  %9059 = lshr i32 %9036, 31
  %9060 = trunc i32 %9059 to i8
  %9061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9060, i8* %9061, align 1
  %9062 = lshr i32 %9035, 31
  %9063 = xor i32 %9059, %9062
  %9064 = add i32 %9063, %9059
  %9065 = icmp eq i32 %9064, 2
  %9066 = zext i1 %9065 to i8
  %9067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9066, i8* %9067, align 1
  store %struct.Memory* %loadMem_40113d, %struct.Memory** %MEMORY
  %loadMem_401140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9069 = getelementptr inbounds %struct.GPR, %struct.GPR* %9068, i32 0, i32 33
  %9070 = getelementptr inbounds %struct.Reg, %struct.Reg* %9069, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9070 to i64*
  %9071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9072 = getelementptr inbounds %struct.GPR, %struct.GPR* %9071, i32 0, i32 1
  %9073 = getelementptr inbounds %struct.Reg, %struct.Reg* %9072, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %9073 to i32*
  %9074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9075 = getelementptr inbounds %struct.GPR, %struct.GPR* %9074, i32 0, i32 15
  %9076 = getelementptr inbounds %struct.Reg, %struct.Reg* %9075, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %9076 to i64*
  %9077 = load i64, i64* %RBP.i15
  %9078 = sub i64 %9077, 40
  %9079 = load i32, i32* %EAX.i14
  %9080 = zext i32 %9079 to i64
  %9081 = load i64, i64* %PC.i13
  %9082 = add i64 %9081, 3
  store i64 %9082, i64* %PC.i13
  %9083 = inttoptr i64 %9078 to i32*
  store i32 %9079, i32* %9083
  store %struct.Memory* %loadMem_401140, %struct.Memory** %MEMORY
  %loadMem_401143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9085 = getelementptr inbounds %struct.GPR, %struct.GPR* %9084, i32 0, i32 33
  %9086 = getelementptr inbounds %struct.Reg, %struct.Reg* %9085, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9086 to i64*
  %9087 = load i64, i64* %PC.i12
  %9088 = add i64 %9087, -228
  %9089 = load i64, i64* %PC.i12
  %9090 = add i64 %9089, 5
  store i64 %9090, i64* %PC.i12
  %9091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9088, i64* %9091, align 8
  store %struct.Memory* %loadMem_401143, %struct.Memory** %MEMORY
  br label %block_.L_40105f

block_.L_401148:                                  ; preds = %block_.L_40105f
  %loadMem_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9093 = getelementptr inbounds %struct.GPR, %struct.GPR* %9092, i32 0, i32 33
  %9094 = getelementptr inbounds %struct.Reg, %struct.Reg* %9093, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %9094 to i64*
  %9095 = load i64, i64* %PC.i11
  %9096 = add i64 %9095, 5
  %9097 = load i64, i64* %PC.i11
  %9098 = add i64 %9097, 5
  store i64 %9098, i64* %PC.i11
  %9099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9096, i64* %9099, align 8
  store %struct.Memory* %loadMem_401148, %struct.Memory** %MEMORY
  br label %block_.L_40114d

block_.L_40114d:                                  ; preds = %block_.L_401148
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9101 = getelementptr inbounds %struct.GPR, %struct.GPR* %9100, i32 0, i32 33
  %9102 = getelementptr inbounds %struct.Reg, %struct.Reg* %9101, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %9102 to i64*
  %9103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9104 = getelementptr inbounds %struct.GPR, %struct.GPR* %9103, i32 0, i32 1
  %9105 = getelementptr inbounds %struct.Reg, %struct.Reg* %9104, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %9105 to i64*
  %9106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9107 = getelementptr inbounds %struct.GPR, %struct.GPR* %9106, i32 0, i32 15
  %9108 = getelementptr inbounds %struct.Reg, %struct.Reg* %9107, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %9108 to i64*
  %9109 = load i64, i64* %RBP.i10
  %9110 = sub i64 %9109, 36
  %9111 = load i64, i64* %PC.i8
  %9112 = add i64 %9111, 3
  store i64 %9112, i64* %PC.i8
  %9113 = inttoptr i64 %9110 to i32*
  %9114 = load i32, i32* %9113
  %9115 = zext i32 %9114 to i64
  store i64 %9115, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_40114d, %struct.Memory** %MEMORY
  %loadMem_401150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9117 = getelementptr inbounds %struct.GPR, %struct.GPR* %9116, i32 0, i32 33
  %9118 = getelementptr inbounds %struct.Reg, %struct.Reg* %9117, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9118 to i64*
  %9119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9120 = getelementptr inbounds %struct.GPR, %struct.GPR* %9119, i32 0, i32 1
  %9121 = getelementptr inbounds %struct.Reg, %struct.Reg* %9120, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9121 to i64*
  %9122 = load i64, i64* %RAX.i
  %9123 = load i64, i64* %PC.i7
  %9124 = add i64 %9123, 3
  store i64 %9124, i64* %PC.i7
  %9125 = trunc i64 %9122 to i32
  %9126 = add i32 1, %9125
  %9127 = zext i32 %9126 to i64
  store i64 %9127, i64* %RAX.i, align 8
  %9128 = icmp ult i32 %9126, %9125
  %9129 = icmp ult i32 %9126, 1
  %9130 = or i1 %9128, %9129
  %9131 = zext i1 %9130 to i8
  %9132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9131, i8* %9132, align 1
  %9133 = and i32 %9126, 255
  %9134 = call i32 @llvm.ctpop.i32(i32 %9133)
  %9135 = trunc i32 %9134 to i8
  %9136 = and i8 %9135, 1
  %9137 = xor i8 %9136, 1
  %9138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9137, i8* %9138, align 1
  %9139 = xor i64 1, %9122
  %9140 = trunc i64 %9139 to i32
  %9141 = xor i32 %9140, %9126
  %9142 = lshr i32 %9141, 4
  %9143 = trunc i32 %9142 to i8
  %9144 = and i8 %9143, 1
  %9145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9144, i8* %9145, align 1
  %9146 = icmp eq i32 %9126, 0
  %9147 = zext i1 %9146 to i8
  %9148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9147, i8* %9148, align 1
  %9149 = lshr i32 %9126, 31
  %9150 = trunc i32 %9149 to i8
  %9151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9150, i8* %9151, align 1
  %9152 = lshr i32 %9125, 31
  %9153 = xor i32 %9149, %9152
  %9154 = add i32 %9153, %9149
  %9155 = icmp eq i32 %9154, 2
  %9156 = zext i1 %9155 to i8
  %9157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9156, i8* %9157, align 1
  store %struct.Memory* %loadMem_401150, %struct.Memory** %MEMORY
  %loadMem_401153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9159 = getelementptr inbounds %struct.GPR, %struct.GPR* %9158, i32 0, i32 33
  %9160 = getelementptr inbounds %struct.Reg, %struct.Reg* %9159, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9160 to i64*
  %9161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9162 = getelementptr inbounds %struct.GPR, %struct.GPR* %9161, i32 0, i32 1
  %9163 = getelementptr inbounds %struct.Reg, %struct.Reg* %9162, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9163 to i32*
  %9164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9165 = getelementptr inbounds %struct.GPR, %struct.GPR* %9164, i32 0, i32 15
  %9166 = getelementptr inbounds %struct.Reg, %struct.Reg* %9165, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %9166 to i64*
  %9167 = load i64, i64* %RBP.i6
  %9168 = sub i64 %9167, 36
  %9169 = load i32, i32* %EAX.i
  %9170 = zext i32 %9169 to i64
  %9171 = load i64, i64* %PC.i5
  %9172 = add i64 %9171, 3
  store i64 %9172, i64* %PC.i5
  %9173 = inttoptr i64 %9168 to i32*
  store i32 %9169, i32* %9173
  store %struct.Memory* %loadMem_401153, %struct.Memory** %MEMORY
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9175 = getelementptr inbounds %struct.GPR, %struct.GPR* %9174, i32 0, i32 33
  %9176 = getelementptr inbounds %struct.Reg, %struct.Reg* %9175, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9176 to i64*
  %9177 = load i64, i64* %PC.i4
  %9178 = add i64 %9177, -1417
  %9179 = load i64, i64* %PC.i4
  %9180 = add i64 %9179, 5
  store i64 %9180, i64* %PC.i4
  %9181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9178, i64* %9181, align 8
  store %struct.Memory* %loadMem_401156, %struct.Memory** %MEMORY
  br label %block_.L_400bcd

block_.L_40115b:                                  ; preds = %block_.L_400bcd
  %loadMem_40115b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9183 = getelementptr inbounds %struct.GPR, %struct.GPR* %9182, i32 0, i32 33
  %9184 = getelementptr inbounds %struct.Reg, %struct.Reg* %9183, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9184 to i64*
  %9185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9186 = getelementptr inbounds %struct.GPR, %struct.GPR* %9185, i32 0, i32 15
  %9187 = getelementptr inbounds %struct.Reg, %struct.Reg* %9186, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9187 to i64*
  %9188 = load i64, i64* %PC.i2
  %9189 = add i64 %9188, 1
  store i64 %9189, i64* %PC.i2
  %9190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9191 = load i64, i64* %9190, align 8
  %9192 = add i64 %9191, 8
  %9193 = inttoptr i64 %9191 to i64*
  %9194 = load i64, i64* %9193
  store i64 %9194, i64* %RBP.i3, align 8
  store i64 %9192, i64* %9190, align 8
  store %struct.Memory* %loadMem_40115b, %struct.Memory** %MEMORY
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9196 = getelementptr inbounds %struct.GPR, %struct.GPR* %9195, i32 0, i32 33
  %9197 = getelementptr inbounds %struct.Reg, %struct.Reg* %9196, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9197 to i64*
  %9198 = load i64, i64* %PC.i1
  %9199 = add i64 %9198, 1
  store i64 %9199, i64* %PC.i1
  %9200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9202 = load i64, i64* %9201, align 8
  %9203 = inttoptr i64 %9202 to i64*
  %9204 = load i64, i64* %9203
  store i64 %9204, i64* %9200, align 8
  %9205 = add i64 %9202, 8
  store i64 %9205, i64* %9201, align 8
  store %struct.Memory* %loadMem_40115c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40115c
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

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jge_.L_40115b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_400d27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_jge_.L_400d14(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fdiv double %23, %28
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

define %struct.Memory* @routine_jmpq_.L_400bf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400be0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400d9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fdiv double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_jge_.L_400e92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_400e7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_jmpq_.L_400db9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400da6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400fe0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400eac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400fd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401058(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 12
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %29 = fdiv double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_jmpq_.L_400fe7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401148(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_401135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401077(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40113a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40105f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40114d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400bcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
