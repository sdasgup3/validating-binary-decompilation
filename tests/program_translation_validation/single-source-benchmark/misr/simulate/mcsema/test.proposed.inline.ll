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

declare %struct.Memory* @sub_400690.lrand48_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @simulate(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400c20 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400c20, %struct.Memory** %MEMORY
  %loadMem_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i88 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i88
  %27 = load i64, i64* %PC.i87
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i87
  store i64 %26, i64* %RBP.i89, align 8
  store %struct.Memory* %loadMem_400c21, %struct.Memory** %MEMORY
  %loadMem_400c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i100 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i100
  %36 = load i64, i64* %PC.i99
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i99
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i100, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_400c24, %struct.Memory** %MEMORY
  %loadMem_400c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i237
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i237
  store i64 31, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_400c2b, %struct.Memory** %MEMORY
  %loadMem_400c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i255
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i254
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i254
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_400c30, %struct.Memory** %MEMORY
  %loadMem_400c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i419
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i418
  %103 = load i64, i64* %PC.i417
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i417
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_400c33, %struct.Memory** %MEMORY
  %loadMem_400c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %112, i64 0, i64 0
  %XMM0.i437 = bitcast %union.VectorReg* %113 to %union.vec128_t*
  %114 = load i64, i64* %RBP.i436
  %115 = sub i64 %114, 24
  %116 = bitcast %union.vec128_t* %XMM0.i437 to i8*
  %117 = load i64, i64* %PC.i435
  %118 = add i64 %117, 5
  store i64 %118, i64* %PC.i435
  %119 = bitcast i8* %116 to double*
  %120 = load double, double* %119, align 1
  %121 = inttoptr i64 %115 to double*
  store double %120, double* %121
  store %struct.Memory* %loadMem_400c37, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i560
  %132 = sub i64 %131, 32
  %133 = load i64, i64* %RDX.i559
  %134 = load i64, i64* %PC.i558
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i558
  %136 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %136
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i573
  %144 = sub i64 %143, 44
  %145 = load i64, i64* %PC.i572
  %146 = add i64 %145, 7
  store i64 %146, i64* %PC.i572
  %147 = inttoptr i64 %144 to i32*
  store i32 0, i32* %147
  store %struct.Memory* %loadMem_400c40, %struct.Memory** %MEMORY
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RDI.i586 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %PC.i585
  %155 = add i64 %154, 7
  store i64 %155, i64* %PC.i585
  %156 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RDI.i586, align 8
  store %struct.Memory* %loadMem_400c47, %struct.Memory** %MEMORY
  %loadMem_400c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i584 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RDI.i584
  %165 = load i64, i64* %PC.i583
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC.i583
  %167 = trunc i64 %164 to i32
  %168 = sub i32 %167, 1
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDI.i584, align 8
  %170 = icmp ult i32 %167, 1
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %171, i8* %172, align 1
  %173 = and i32 %168, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = xor i64 1, %164
  %180 = trunc i64 %179 to i32
  %181 = xor i32 %180, %168
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %184, i8* %185, align 1
  %186 = icmp eq i32 %168, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %168, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %167, 31
  %193 = xor i32 %189, %192
  %194 = add i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1
  store %struct.Memory* %loadMem_400c4e, %struct.Memory** %MEMORY
  %loadMem_400c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %203 to i32*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i582
  %208 = sub i64 %207, 92
  %209 = load i32, i32* %EAX.i581
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i580
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i580
  %213 = inttoptr i64 %208 to i32*
  store i32 %209, i32* %213
  store %struct.Memory* %loadMem_400c51, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %EDI.i578 = bitcast %union.anon* %219 to i32*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %222 to i64*
  %223 = load i32, i32* %EDI.i578
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC.i577
  %226 = add i64 %225, 2
  store i64 %226, i64* %PC.i577
  %227 = and i64 %224, 4294967295
  store i64 %227, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %PC.i576
  %232 = add i64 %231, 1
  store i64 %232, i64* %PC.i576
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %235 = bitcast %union.anon* %234 to i32*
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = lshr i64 %237, 32
  store i64 %238, i64* %233, align 8
  store %struct.Memory* %loadMem_400c56, %struct.Memory** %MEMORY
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 11
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 15
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RBP.i575
  %249 = sub i64 %248, 92
  %250 = load i64, i64* %PC.i574
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC.i574
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 11
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %EDI.i570 = bitcast %union.anon* %260 to i32*
  %261 = load i32, i32* %EDI.i570
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC.i569
  %264 = add i64 %263, 2
  store i64 %264, i64* %PC.i569
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %266 = bitcast %union.anon* %265 to i32*
  %267 = load i32, i32* %266, align 8
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %270 = bitcast %union.anon* %269 to i32*
  %271 = load i32, i32* %270, align 8
  %272 = zext i32 %271 to i64
  %273 = shl i64 %262, 32
  %274 = ashr exact i64 %273, 32
  %275 = shl i64 %272, 32
  %276 = or i64 %275, %268
  %277 = sdiv i64 %276, %274
  %278 = shl i64 %277, 32
  %279 = ashr exact i64 %278, 32
  %280 = icmp eq i64 %277, %279
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %entry
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %283, %struct.Memory* %loadMem_400c5a)
  br label %routine_idivl__edi.exit571

; <label>:285:                                    ; preds = %entry
  %286 = srem i64 %276, %274
  %287 = getelementptr inbounds %union.anon, %union.anon* %265, i64 0, i32 0
  %288 = and i64 %277, 4294967295
  store i64 %288, i64* %287, align 8
  %289 = getelementptr inbounds %union.anon, %union.anon* %269, i64 0, i32 0
  %290 = and i64 %286, 4294967295
  store i64 %290, i64* %289, align 8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %291, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %292, align 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %293, align 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %294, align 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %295, align 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %296, align 1
  br label %routine_idivl__edi.exit571

routine_idivl__edi.exit571:                       ; preds = %281, %285
  %297 = phi %struct.Memory* [ %284, %281 ], [ %loadMem_400c5a, %285 ]
  store %struct.Memory* %297, %struct.Memory** %MEMORY
  %loadMem_400c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %303 to i32*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 15
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RBP.i568
  %308 = sub i64 %307, 60
  %309 = load i32, i32* %EAX.i567
  %310 = zext i32 %309 to i64
  %311 = load i64, i64* %PC.i566
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC.i566
  %313 = inttoptr i64 %308 to i32*
  store i32 %309, i32* %313
  store %struct.Memory* %loadMem_400c5c, %struct.Memory** %MEMORY
  %loadMem_400c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i564
  %321 = add i64 %320, 7
  store i64 %321, i64* %PC.i564
  %322 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_400c5f, %struct.Memory** %MEMORY
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RAX.i563
  %331 = load i64, i64* %PC.i562
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC.i562
  %333 = trunc i64 %330 to i32
  %334 = sub i32 %333, 1
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i563, align 8
  %336 = icmp ult i32 %333, 1
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %337, i8* %338, align 1
  %339 = and i32 %334, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339)
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1
  %345 = xor i64 1, %330
  %346 = trunc i64 %345 to i32
  %347 = xor i32 %346, %334
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %350, i8* %351, align 1
  %352 = icmp eq i32 %334, 0
  %353 = zext i1 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %353, i8* %354, align 1
  %355 = lshr i32 %334, 31
  %356 = trunc i32 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %356, i8* %357, align 1
  %358 = lshr i32 %333, 31
  %359 = xor i32 %355, %358
  %360 = add i32 %359, %358
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %362, i8* %363, align 1
  store %struct.Memory* %loadMem_400c66, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %PC.i561
  %368 = add i64 %367, 1
  store i64 %368, i64* %PC.i561
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %371 = bitcast %union.anon* %370 to i32*
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = lshr i64 %373, 32
  store i64 %374, i64* %369, align 8
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 11
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %EDI.i557 = bitcast %union.anon* %380 to i32*
  %381 = load i32, i32* %EDI.i557
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i556
  %384 = add i64 %383, 2
  store i64 %384, i64* %PC.i556
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %386 = bitcast %union.anon* %385 to i32*
  %387 = load i32, i32* %386, align 8
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %390 = bitcast %union.anon* %389 to i32*
  %391 = load i32, i32* %390, align 8
  %392 = zext i32 %391 to i64
  %393 = shl i64 %382, 32
  %394 = ashr exact i64 %393, 32
  %395 = shl i64 %392, 32
  %396 = or i64 %395, %388
  %397 = sdiv i64 %396, %394
  %398 = shl i64 %397, 32
  %399 = ashr exact i64 %398, 32
  %400 = icmp eq i64 %397, %399
  br i1 %400, label %405, label %401

; <label>:401:                                    ; preds = %routine_idivl__edi.exit571
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %403, %struct.Memory* %loadMem_400c6a)
  br label %routine_idivl__edi.exit

; <label>:405:                                    ; preds = %routine_idivl__edi.exit571
  %406 = srem i64 %396, %394
  %407 = getelementptr inbounds %union.anon, %union.anon* %385, i64 0, i32 0
  %408 = and i64 %397, 4294967295
  store i64 %408, i64* %407, align 8
  %409 = getelementptr inbounds %union.anon, %union.anon* %389, i64 0, i32 0
  %410 = and i64 %406, 4294967295
  store i64 %410, i64* %409, align 8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %411, align 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %412, align 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %413, align 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %415, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %416, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %401, %405
  %417 = phi %struct.Memory* [ %404, %401 ], [ %loadMem_400c6a, %405 ]
  store %struct.Memory* %417, %struct.Memory** %MEMORY
  %loadMem_400c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 7
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %423 to i32*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RBP.i555
  %428 = sub i64 %427, 56
  %429 = load i32, i32* %EDX.i
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC.i554
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i554
  %433 = inttoptr i64 %428 to i32*
  store i32 %429, i32* %433
  store %struct.Memory* %loadMem_400c6c, %struct.Memory** %MEMORY
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RSI.i552 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 15
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RBP.i553
  %444 = sub i64 %443, 16
  %445 = load i64, i64* %PC.i551
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC.i551
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447
  store i64 %448, i64* %RSI.i552, align 8
  store %struct.Memory* %loadMem_400c6f, %struct.Memory** %MEMORY
  %loadMem_400c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 9
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RSI.i549 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i550
  %459 = sub i64 %458, 40
  %460 = load i64, i64* %RSI.i549
  %461 = load i64, i64* %PC.i548
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i548
  %463 = inttoptr i64 %459 to i64*
  store i64 %460, i64* %463
  store %struct.Memory* %loadMem_400c73, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RBP.i547
  %471 = sub i64 %470, 64
  %472 = load i64, i64* %PC.i546
  %473 = add i64 %472, 7
  store i64 %473, i64* %PC.i546
  %474 = inttoptr i64 %471 to i32*
  store i32 0, i32* %474
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  br label %block_.L_400c7e

block_.L_400c7e:                                  ; preds = %block_.L_400f4d, %routine_idivl__edi.exit
  %loadMem_400c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 15
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %483 to i64*
  %484 = load i64, i64* %RBP.i545
  %485 = sub i64 %484, 64
  %486 = load i64, i64* %PC.i543
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC.i543
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_400c7e, %struct.Memory** %MEMORY
  %loadMem_400c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %EAX.i541 = bitcast %union.anon* %496 to i32*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %499 to i64*
  %500 = load i32, i32* %EAX.i541
  %501 = zext i32 %500 to i64
  %502 = load i64, i64* %RBP.i542
  %503 = sub i64 %502, 4
  %504 = load i64, i64* %PC.i540
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC.i540
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = sub i32 %500, %507
  %509 = icmp ult i32 %500, %507
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %510, i8* %511, align 1
  %512 = and i32 %508, 255
  %513 = call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %516, i8* %517, align 1
  %518 = xor i32 %507, %500
  %519 = xor i32 %518, %508
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %522, i8* %523, align 1
  %524 = icmp eq i32 %508, 0
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %525, i8* %526, align 1
  %527 = lshr i32 %508, 31
  %528 = trunc i32 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %528, i8* %529, align 1
  %530 = lshr i32 %500, 31
  %531 = lshr i32 %507, 31
  %532 = xor i32 %531, %530
  %533 = xor i32 %527, %530
  %534 = add i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %536, i8* %537, align 1
  store %struct.Memory* %loadMem_400c81, %struct.Memory** %MEMORY
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %PC.i539
  %542 = add i64 %541, 756
  %543 = load i64, i64* %PC.i539
  %544 = add i64 %543, 6
  %545 = load i64, i64* %PC.i539
  %546 = add i64 %545, 6
  store i64 %546, i64* %PC.i539
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %548 = load i8, i8* %547, align 1
  %549 = icmp ne i8 %548, 0
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %551 = load i8, i8* %550, align 1
  %552 = icmp ne i8 %551, 0
  %553 = xor i1 %549, %552
  %554 = xor i1 %553, true
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %BRANCH_TAKEN, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %557 = select i1 %553, i64 %544, i64 %542
  store i64 %557, i64* %556, align 8
  store %struct.Memory* %loadMem_400c84, %struct.Memory** %MEMORY
  %loadBr_400c84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c84 = icmp eq i8 %loadBr_400c84, 1
  br i1 %cmpBr_400c84, label %block_.L_400f78, label %block_400c8a

block_400c8a:                                     ; preds = %block_.L_400c7e
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i538
  %565 = sub i64 %564, 48
  %566 = load i64, i64* %PC.i537
  %567 = add i64 %566, 7
  store i64 %567, i64* %PC.i537
  %568 = inttoptr i64 %565 to i32*
  store i32 0, i32* %568
  store %struct.Memory* %loadMem_400c8a, %struct.Memory** %MEMORY
  %loadMem_400c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 15
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %RBP.i536
  %576 = sub i64 %575, 52
  %577 = load i64, i64* %PC.i535
  %578 = add i64 %577, 7
  store i64 %578, i64* %PC.i535
  %579 = inttoptr i64 %576 to i32*
  store i32 0, i32* %579
  store %struct.Memory* %loadMem_400c91, %struct.Memory** %MEMORY
  %loadMem_400c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 15
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %RBP.i534
  %587 = sub i64 %586, 68
  %588 = load i64, i64* %PC.i533
  %589 = add i64 %588, 7
  store i64 %589, i64* %PC.i533
  %590 = inttoptr i64 %587 to i32*
  store i32 0, i32* %590
  store %struct.Memory* %loadMem_400c98, %struct.Memory** %MEMORY
  br label %block_.L_400c9f

block_.L_400c9f:                                  ; preds = %block_.L_400da7, %block_400c8a
  %loadMem_400c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 15
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %599 to i64*
  %600 = load i64, i64* %RBP.i532
  %601 = sub i64 %600, 68
  %602 = load i64, i64* %PC.i530
  %603 = add i64 %602, 3
  store i64 %603, i64* %PC.i530
  %604 = inttoptr i64 %601 to i32*
  %605 = load i32, i32* %604
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_400c9f, %struct.Memory** %MEMORY
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %612 to i32*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 15
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %615 to i64*
  %616 = load i32, i32* %EAX.i528
  %617 = zext i32 %616 to i64
  %618 = load i64, i64* %RBP.i529
  %619 = sub i64 %618, 60
  %620 = load i64, i64* %PC.i527
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i527
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = sub i32 %616, %623
  %625 = icmp ult i32 %616, %623
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %626, i8* %627, align 1
  %628 = and i32 %624, 255
  %629 = call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %632, i8* %633, align 1
  %634 = xor i32 %623, %616
  %635 = xor i32 %634, %624
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %638, i8* %639, align 1
  %640 = icmp eq i32 %624, 0
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %641, i8* %642, align 1
  %643 = lshr i32 %624, 31
  %644 = trunc i32 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %644, i8* %645, align 1
  %646 = lshr i32 %616, 31
  %647 = lshr i32 %623, 31
  %648 = xor i32 %647, %646
  %649 = xor i32 %643, %646
  %650 = add i32 %649, %648
  %651 = icmp eq i32 %650, 2
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %652, i8* %653, align 1
  store %struct.Memory* %loadMem_400ca2, %struct.Memory** %MEMORY
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 33
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %PC.i526
  %658 = add i64 %657, 272
  %659 = load i64, i64* %PC.i526
  %660 = add i64 %659, 6
  %661 = load i64, i64* %PC.i526
  %662 = add i64 %661, 6
  store i64 %662, i64* %PC.i526
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %664 = load i8, i8* %663, align 1
  %665 = icmp ne i8 %664, 0
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %667 = load i8, i8* %666, align 1
  %668 = icmp ne i8 %667, 0
  %669 = xor i1 %665, %668
  %670 = xor i1 %669, true
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %BRANCH_TAKEN, align 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %673 = select i1 %669, i64 %660, i64 %658
  store i64 %673, i64* %672, align 8
  store %struct.Memory* %loadMem_400ca5, %struct.Memory** %MEMORY
  %loadBr_400ca5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ca5 = icmp eq i8 %loadBr_400ca5, 1
  br i1 %cmpBr_400ca5, label %block_.L_400db5, label %block_400cab

block_400cab:                                     ; preds = %block_.L_400c9f
  %loadMem1_400cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %PC.i525
  %678 = add i64 %677, -1563
  %679 = load i64, i64* %PC.i525
  %680 = add i64 %679, 5
  %681 = load i64, i64* %PC.i525
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC.i525
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %684 = load i64, i64* %683, align 8
  %685 = add i64 %684, -8
  %686 = inttoptr i64 %685 to i64*
  store i64 %680, i64* %686
  store i64 %685, i64* %683, align 8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %678, i64* %687, align 8
  store %struct.Memory* %loadMem1_400cab, %struct.Memory** %MEMORY
  %loadMem2_400cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400cab = load i64, i64* %3
  %call2_400cab = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400cab, %struct.Memory* %loadMem2_400cab)
  store %struct.Memory* %call2_400cab, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i524
  %698 = sub i64 %697, 80
  %699 = load i64, i64* %RAX.i523
  %700 = load i64, i64* %PC.i522
  %701 = add i64 %700, 4
  store i64 %701, i64* %PC.i522
  %702 = inttoptr i64 %698 to i64*
  store i64 %699, i64* %702
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 15
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RBP.i521
  %710 = sub i64 %709, 72
  %711 = load i64, i64* %PC.i520
  %712 = add i64 %711, 7
  store i64 %712, i64* %PC.i520
  %713 = inttoptr i64 %710 to i32*
  store i32 0, i32* %713
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  br label %block_.L_400cbb

block_.L_400cbb:                                  ; preds = %block_.L_400d5f, %block_400cab
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i519
  %721 = sub i64 %720, 72
  %722 = load i64, i64* %PC.i518
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i518
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = sub i32 %725, 31
  %727 = icmp ult i32 %725, 31
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %728, i8* %729, align 1
  %730 = and i32 %726, 255
  %731 = call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %734, i8* %735, align 1
  %736 = xor i32 %725, 31
  %737 = xor i32 %736, %726
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %740, i8* %741, align 1
  %742 = icmp eq i32 %726, 0
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %743, i8* %744, align 1
  %745 = lshr i32 %726, 31
  %746 = trunc i32 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %725, 31
  %749 = xor i32 %745, %748
  %750 = add i32 %749, %748
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %752, i8* %753, align 1
  store %struct.Memory* %loadMem_400cbb, %struct.Memory** %MEMORY
  %loadMem_400cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %PC.i517
  %758 = add i64 %757, 227
  %759 = load i64, i64* %PC.i517
  %760 = add i64 %759, 6
  %761 = load i64, i64* %PC.i517
  %762 = add i64 %761, 6
  store i64 %762, i64* %PC.i517
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %764 = load i8, i8* %763, align 1
  %765 = icmp ne i8 %764, 0
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %767 = load i8, i8* %766, align 1
  %768 = icmp ne i8 %767, 0
  %769 = xor i1 %765, %768
  %770 = xor i1 %769, true
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %BRANCH_TAKEN, align 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %773 = select i1 %769, i64 %760, i64 %758
  store i64 %773, i64* %772, align 8
  store %struct.Memory* %loadMem_400cbf, %struct.Memory** %MEMORY
  %loadBr_400cbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cbf = icmp eq i8 %loadBr_400cbf, 1
  br i1 %cmpBr_400cbf, label %block_.L_400da2, label %block_400cc5

block_400cc5:                                     ; preds = %block_.L_400cbb
  %loadMem_400cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 15
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RBP.i516
  %784 = sub i64 %783, 32
  %785 = load i64, i64* %PC.i514
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC.i514
  %787 = inttoptr i64 %784 to i64*
  %788 = load i64, i64* %787
  store i64 %788, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_400cc5, %struct.Memory** %MEMORY
  %loadMem_400cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 5
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RBP.i513
  %799 = sub i64 %798, 68
  %800 = load i64, i64* %PC.i511
  %801 = add i64 %800, 4
  store i64 %801, i64* %PC.i511
  %802 = inttoptr i64 %799 to i32*
  %803 = load i32, i32* %802
  %804 = sext i32 %803 to i64
  %805 = mul i64 %804, 31
  %806 = trunc i64 %805 to i32
  %807 = and i64 %805, 4294967295
  store i64 %807, i64* %RCX.i512, align 8
  %808 = shl i64 %805, 32
  %809 = ashr exact i64 %808, 32
  %810 = icmp ne i64 %809, %805
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %811, i8* %812, align 1
  %813 = and i32 %806, 255
  %814 = call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %817, i8* %818, align 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %819, align 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %820, align 1
  %821 = lshr i32 %806, 31
  %822 = trunc i32 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %822, i8* %823, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %811, i8* %824, align 1
  store %struct.Memory* %loadMem_400cc9, %struct.Memory** %MEMORY
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 5
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 15
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RCX.i509
  %835 = load i64, i64* %RBP.i510
  %836 = sub i64 %835, 72
  %837 = load i64, i64* %PC.i508
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC.i508
  %839 = trunc i64 %834 to i32
  %840 = inttoptr i64 %836 to i32*
  %841 = load i32, i32* %840
  %842 = add i32 %841, %839
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RCX.i509, align 8
  %844 = icmp ult i32 %842, %839
  %845 = icmp ult i32 %842, %841
  %846 = or i1 %844, %845
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %847, i8* %848, align 1
  %849 = and i32 %842, 255
  %850 = call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %853, i8* %854, align 1
  %855 = xor i32 %841, %839
  %856 = xor i32 %855, %842
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %859, i8* %860, align 1
  %861 = icmp eq i32 %842, 0
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %862, i8* %863, align 1
  %864 = lshr i32 %842, 31
  %865 = trunc i32 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %865, i8* %866, align 1
  %867 = lshr i32 %839, 31
  %868 = lshr i32 %841, 31
  %869 = xor i32 %864, %867
  %870 = xor i32 %864, %868
  %871 = add i32 %869, %870
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %873, i8* %874, align 1
  store %struct.Memory* %loadMem_400ccd, %struct.Memory** %MEMORY
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 5
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %ECX.i506 = bitcast %union.anon* %880 to i32*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 7
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RDX.i507 = bitcast %union.anon* %883 to i64*
  %884 = load i32, i32* %ECX.i506
  %885 = zext i32 %884 to i64
  %886 = load i64, i64* %PC.i505
  %887 = add i64 %886, 3
  store i64 %887, i64* %PC.i505
  %888 = shl i64 %885, 32
  %889 = ashr exact i64 %888, 32
  store i64 %889, i64* %RDX.i507, align 8
  store %struct.Memory* %loadMem_400cd0, %struct.Memory** %MEMORY
  %loadMem_400cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 7
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %RAX.i502
  %903 = load i64, i64* %RDX.i504
  %904 = add i64 %903, %902
  %905 = load i64, i64* %PC.i501
  %906 = add i64 %905, 4
  store i64 %906, i64* %PC.i501
  %907 = inttoptr i64 %904 to i8*
  %908 = load i8, i8* %907
  %909 = sext i8 %908 to i64
  %910 = and i64 %909, 4294967295
  store i64 %910, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_400cd3, %struct.Memory** %MEMORY
  %loadMem_400cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 33
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %913 to i64*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 5
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %ECX.i500 = bitcast %union.anon* %916 to i32*
  %917 = load i32, i32* %ECX.i500
  %918 = zext i32 %917 to i64
  %919 = load i64, i64* %PC.i499
  %920 = add i64 %919, 3
  store i64 %920, i64* %PC.i499
  %921 = sub i32 %917, 49
  %922 = icmp ult i32 %917, 49
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %923, i8* %924, align 1
  %925 = and i32 %921, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1
  %931 = xor i64 49, %918
  %932 = trunc i64 %931 to i32
  %933 = xor i32 %932, %921
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %936, i8* %937, align 1
  %938 = icmp eq i32 %921, 0
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %939, i8* %940, align 1
  %941 = lshr i32 %921, 31
  %942 = trunc i32 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %942, i8* %943, align 1
  %944 = lshr i32 %917, 31
  %945 = xor i32 %941, %944
  %946 = add i32 %945, %944
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %948, i8* %949, align 1
  store %struct.Memory* %loadMem_400cd7, %struct.Memory** %MEMORY
  %loadMem_400cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %PC.i498
  %954 = add i64 %953, 31
  %955 = load i64, i64* %PC.i498
  %956 = add i64 %955, 6
  %957 = load i64, i64* %PC.i498
  %958 = add i64 %957, 6
  store i64 %958, i64* %PC.i498
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %960 = load i8, i8* %959, align 1
  %961 = icmp eq i8 %960, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %BRANCH_TAKEN, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %964 = select i1 %961, i64 %954, i64 %956
  store i64 %964, i64* %963, align 8
  store %struct.Memory* %loadMem_400cda, %struct.Memory** %MEMORY
  %loadBr_400cda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cda = icmp eq i8 %loadBr_400cda, 1
  br i1 %cmpBr_400cda, label %block_.L_400cf9, label %block_400ce0

block_400ce0:                                     ; preds = %block_400cc5
  %loadMem_400ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 1
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RBP.i497
  %975 = sub i64 %974, 40
  %976 = load i64, i64* %PC.i495
  %977 = add i64 %976, 4
  store i64 %977, i64* %PC.i495
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978
  store i64 %979, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_400ce0, %struct.Memory** %MEMORY
  %loadMem_400ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RAX.i493
  %990 = load i64, i64* %PC.i492
  %991 = add i64 %990, 2
  store i64 %991, i64* %PC.i492
  %992 = inttoptr i64 %989 to i32*
  %993 = load i32, i32* %992
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_400ce4, %struct.Memory** %MEMORY
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 5
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 15
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RCX.i490
  %1005 = load i64, i64* %RBP.i491
  %1006 = sub i64 %1005, 48
  %1007 = load i64, i64* %PC.i489
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC.i489
  %1009 = trunc i64 %1004 to i32
  %1010 = inttoptr i64 %1006 to i32*
  %1011 = load i32, i32* %1010
  %1012 = add i32 %1011, %1009
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RCX.i490, align 8
  %1014 = icmp ult i32 %1012, %1009
  %1015 = icmp ult i32 %1012, %1011
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1
  %1019 = and i32 %1012, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i32 %1011, %1009
  %1026 = xor i32 %1025, %1012
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1029, i8* %1030, align 1
  %1031 = icmp eq i32 %1012, 0
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i32 %1012, 31
  %1035 = trunc i32 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1009, 31
  %1038 = lshr i32 %1011, 31
  %1039 = xor i32 %1034, %1037
  %1040 = xor i32 %1034, %1038
  %1041 = add i32 %1039, %1040
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1043, i8* %1044, align 1
  store %struct.Memory* %loadMem_400ce6, %struct.Memory** %MEMORY
  %loadMem_400ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %ECX.i487 = bitcast %union.anon* %1050 to i32*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i488
  %1055 = sub i64 %1054, 48
  %1056 = load i32, i32* %ECX.i487
  %1057 = zext i32 %1056 to i64
  %1058 = load i64, i64* %PC.i486
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC.i486
  %1060 = inttoptr i64 %1055 to i32*
  store i32 %1056, i32* %1060
  store %struct.Memory* %loadMem_400ce9, %struct.Memory** %MEMORY
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 15
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RBP.i485
  %1071 = sub i64 %1070, 40
  %1072 = load i64, i64* %PC.i483
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %PC.i483
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074
  store i64 %1075, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_400cec, %struct.Memory** %MEMORY
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 5
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RAX.i481
  %1086 = add i64 %1085, 4
  %1087 = load i64, i64* %PC.i480
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC.i480
  %1089 = inttoptr i64 %1086 to i32*
  %1090 = load i32, i32* %1089
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_400cf0, %struct.Memory** %MEMORY
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 5
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 15
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RCX.i478
  %1102 = load i64, i64* %RBP.i479
  %1103 = sub i64 %1102, 52
  %1104 = load i64, i64* %PC.i477
  %1105 = add i64 %1104, 3
  store i64 %1105, i64* %PC.i477
  %1106 = trunc i64 %1101 to i32
  %1107 = inttoptr i64 %1103 to i32*
  %1108 = load i32, i32* %1107
  %1109 = add i32 %1108, %1106
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RCX.i478, align 8
  %1111 = icmp ult i32 %1109, %1106
  %1112 = icmp ult i32 %1109, %1108
  %1113 = or i1 %1111, %1112
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1114, i8* %1115, align 1
  %1116 = and i32 %1109, 255
  %1117 = call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1120, i8* %1121, align 1
  %1122 = xor i32 %1108, %1106
  %1123 = xor i32 %1122, %1109
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1126, i8* %1127, align 1
  %1128 = icmp eq i32 %1109, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i32 %1109, 31
  %1132 = trunc i32 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i32 %1106, 31
  %1135 = lshr i32 %1108, 31
  %1136 = xor i32 %1131, %1134
  %1137 = xor i32 %1131, %1135
  %1138 = add i32 %1136, %1137
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1
  store %struct.Memory* %loadMem_400cf3, %struct.Memory** %MEMORY
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 5
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %ECX.i475 = bitcast %union.anon* %1147 to i32*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i476
  %1152 = sub i64 %1151, 52
  %1153 = load i32, i32* %ECX.i475
  %1154 = zext i32 %1153 to i64
  %1155 = load i64, i64* %PC.i474
  %1156 = add i64 %1155, 3
  store i64 %1156, i64* %PC.i474
  %1157 = inttoptr i64 %1152 to i32*
  store i32 %1153, i32* %1157
  store %struct.Memory* %loadMem_400cf6, %struct.Memory** %MEMORY
  br label %block_.L_400cf9

block_.L_400cf9:                                  ; preds = %block_400ce0, %block_400cc5
  %loadMem_400cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 1
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 15
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %1166 to i64*
  %1167 = load i64, i64* %RBP.i473
  %1168 = sub i64 %1167, 40
  %1169 = load i64, i64* %PC.i471
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %PC.i471
  %1171 = inttoptr i64 %1168 to i64*
  %1172 = load i64, i64* %1171
  store i64 %1172, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_400cf9, %struct.Memory** %MEMORY
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RAX.i470
  %1180 = add i64 %1179, 8
  %1181 = load i64, i64* %PC.i469
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i469
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183
  store i64 %1184, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_400cfd, %struct.Memory** %MEMORY
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RAX.i468
  %1192 = load i64, i64* %PC.i467
  %1193 = add i64 %1192, 3
  store i64 %1193, i64* %PC.i467
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = sext i32 %1195 to i64
  store i64 %1196, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_400d01, %struct.Memory** %MEMORY
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 15
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i465
  %1207 = load i64, i64* %RBP.i466
  %1208 = sub i64 %1207, 80
  %1209 = load i64, i64* %PC.i464
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %PC.i464
  %1211 = inttoptr i64 %1208 to i64*
  %1212 = load i64, i64* %1211
  %1213 = add i64 %1212, %1206
  store i64 %1213, i64* %RAX.i465, align 8
  %1214 = icmp ult i64 %1213, %1206
  %1215 = icmp ult i64 %1213, %1212
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1217, i8* %1218, align 1
  %1219 = trunc i64 %1213 to i32
  %1220 = and i32 %1219, 255
  %1221 = call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1224, i8* %1225, align 1
  %1226 = xor i64 %1212, %1206
  %1227 = xor i64 %1226, %1213
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1230, i8* %1231, align 1
  %1232 = icmp eq i64 %1213, 0
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1233, i8* %1234, align 1
  %1235 = lshr i64 %1213, 63
  %1236 = trunc i64 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i64 %1206, 63
  %1239 = lshr i64 %1212, 63
  %1240 = xor i64 %1235, %1238
  %1241 = xor i64 %1235, %1239
  %1242 = add i64 %1240, %1241
  %1243 = icmp eq i64 %1242, 2
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1244, i8* %1245, align 1
  store %struct.Memory* %loadMem_400d04, %struct.Memory** %MEMORY
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RAX.i463
  %1253 = load i64, i64* %PC.i462
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC.i462
  %1255 = and i64 1, %1252
  store i64 %1255, i64* %RAX.i463, align 8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1256, align 1
  %1257 = trunc i64 %1255 to i32
  %1258 = and i32 %1257, 255
  %1259 = call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1262, i8* %1263, align 1
  %1264 = icmp eq i64 %1255, 0
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1265, i8* %1266, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1267, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1268, align 1
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1269, align 1
  store %struct.Memory* %loadMem_400d08, %struct.Memory** %MEMORY
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %1275 to i32*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 5
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %1278 to i64*
  %1279 = load i32, i32* %EAX.i460
  %1280 = zext i32 %1279 to i64
  %1281 = load i64, i64* %PC.i459
  %1282 = add i64 %1281, 2
  store i64 %1282, i64* %PC.i459
  %1283 = and i64 %1280, 4294967295
  store i64 %1283, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_400d0c, %struct.Memory** %MEMORY
  %loadMem_400d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 1
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 15
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1292 to i64*
  %1293 = load i64, i64* %RBP.i458
  %1294 = sub i64 %1293, 40
  %1295 = load i64, i64* %PC.i456
  %1296 = add i64 %1295, 4
  store i64 %1296, i64* %PC.i456
  %1297 = inttoptr i64 %1294 to i64*
  %1298 = load i64, i64* %1297
  store i64 %1298, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_400d0e, %struct.Memory** %MEMORY
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 5
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %ECX.i454 = bitcast %union.anon* %1304 to i32*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 1
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %RAX.i455
  %1309 = load i32, i32* %ECX.i454
  %1310 = zext i32 %1309 to i64
  %1311 = load i64, i64* %PC.i453
  %1312 = add i64 %1311, 2
  store i64 %1312, i64* %PC.i453
  %1313 = inttoptr i64 %1308 to i32*
  store i32 %1309, i32* %1313
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem1_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %PC.i452
  %1318 = add i64 %1317, -1668
  %1319 = load i64, i64* %PC.i452
  %1320 = add i64 %1319, 5
  %1321 = load i64, i64* %PC.i452
  %1322 = add i64 %1321, 5
  store i64 %1322, i64* %PC.i452
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1324 = load i64, i64* %1323, align 8
  %1325 = add i64 %1324, -8
  %1326 = inttoptr i64 %1325 to i64*
  store i64 %1320, i64* %1326
  store i64 %1325, i64* %1323, align 8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1318, i64* %1327, align 8
  store %struct.Memory* %loadMem1_400d14, %struct.Memory** %MEMORY
  %loadMem2_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d14 = load i64, i64* %3
  %call2_400d14 = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400d14, %struct.Memory* %loadMem2_400d14)
  store %struct.Memory* %call2_400d14, %struct.Memory** %MEMORY
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1331, i64 0, i64 0
  %YMM0.i451 = bitcast %union.VectorReg* %1332 to %"class.std::bitset"*
  %1333 = bitcast %"class.std::bitset"* %YMM0.i451 to i8*
  %1334 = load i64, i64* %PC.i450
  %1335 = add i64 %1334, 935
  %1336 = load i64, i64* %PC.i450
  %1337 = add i64 %1336, 8
  store i64 %1337, i64* %PC.i450
  %1338 = inttoptr i64 %1335 to double*
  %1339 = load double, double* %1338
  %1340 = bitcast i8* %1333 to double*
  store double %1339, double* %1340, align 1
  %1341 = getelementptr inbounds i8, i8* %1333, i64 8
  %1342 = bitcast i8* %1341 to double*
  store double 0.000000e+00, double* %1342, align 1
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  %loadMem_400d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 5
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i448
  %1350 = add i64 %1349, 5
  store i64 %1350, i64* %PC.i448
  store i64 1000, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_400d21, %struct.Memory** %MEMORY
  %loadMem_400d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 5
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %ECX.i446 = bitcast %union.anon* %1356 to i32*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 7
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %1359 to i64*
  %1360 = load i32, i32* %ECX.i446
  %1361 = zext i32 %1360 to i64
  %1362 = load i64, i64* %PC.i445
  %1363 = add i64 %1362, 2
  store i64 %1363, i64* %PC.i445
  %1364 = and i64 %1361, 4294967295
  store i64 %1364, i64* %RDX.i447, align 8
  store %struct.Memory* %loadMem_400d26, %struct.Memory** %MEMORY
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 7
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RDX.i443 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i444
  %1375 = sub i64 %1374, 104
  %1376 = load i64, i64* %RDX.i443
  %1377 = load i64, i64* %PC.i442
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %PC.i442
  %1379 = inttoptr i64 %1375 to i64*
  store i64 %1376, i64* %1379
  store %struct.Memory* %loadMem_400d28, %struct.Memory** %MEMORY
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %PC.i441
  %1384 = add i64 %1383, 2
  store i64 %1384, i64* %PC.i441
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1387 = load i64, i64* %1386, align 8
  %1388 = ashr i64 %1387, 63
  store i64 %1388, i64* %1385, align 8
  store %struct.Memory* %loadMem_400d2c, %struct.Memory** %MEMORY
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 9
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RSI.i439 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RBP.i440
  %1399 = sub i64 %1398, 104
  %1400 = load i64, i64* %PC.i438
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %PC.i438
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402
  store i64 %1403, i64* %RSI.i439, align 8
  store %struct.Memory* %loadMem_400d2e, %struct.Memory** %MEMORY
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 9
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RSI.i433
  %1411 = load i64, i64* %PC.i432
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i432
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1414 = load i64, i64* %1413, align 8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1416 = load i64, i64* %1415, align 8
  %1417 = sext i64 %1410 to i128
  %1418 = and i128 %1417, -18446744073709551616
  %1419 = zext i64 %1416 to i128
  %1420 = shl i128 %1419, 64
  %1421 = zext i64 %1414 to i128
  %1422 = or i128 %1420, %1421
  %1423 = zext i64 %1410 to i128
  %1424 = or i128 %1418, %1423
  %1425 = sdiv i128 %1422, %1424
  %1426 = trunc i128 %1425 to i64
  %1427 = and i128 %1425, 18446744073709551615
  %1428 = sext i64 %1426 to i128
  %1429 = and i128 %1428, -18446744073709551616
  %1430 = or i128 %1429, %1427
  %1431 = icmp eq i128 %1425, %1430
  br i1 %1431, label %1436, label %1432

; <label>:1432:                                   ; preds = %block_.L_400cf9
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1434 = load i64, i64* %1433, align 8
  %1435 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1434, %struct.Memory* %loadMem_400d32)
  br label %routine_idivq__rsi.exit434

; <label>:1436:                                   ; preds = %block_.L_400cf9
  %1437 = srem i128 %1422, %1424
  %1438 = trunc i128 %1437 to i64
  store i64 %1426, i64* %1413, align 8
  store i64 %1438, i64* %1415, align 8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1439, align 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1440, align 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1441, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1442, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1443, align 1
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1444, align 1
  br label %routine_idivq__rsi.exit434

routine_idivq__rsi.exit434:                       ; preds = %1432, %1436
  %1445 = phi %struct.Memory* [ %1435, %1432 ], [ %loadMem_400d32, %1436 ]
  store %struct.Memory* %1445, %struct.Memory** %MEMORY
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 7
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1452, i64 0, i64 1
  %YMM1.i431 = bitcast %union.VectorReg* %1453 to %"class.std::bitset"*
  %1454 = bitcast %"class.std::bitset"* %YMM1.i431 to i8*
  %1455 = load i64, i64* %RDX.i430
  %1456 = load i64, i64* %PC.i429
  %1457 = add i64 %1456, 5
  store i64 %1457, i64* %PC.i429
  %1458 = sitofp i64 %1455 to double
  %1459 = bitcast i8* %1454 to double*
  store double %1458, double* %1459, align 1
  store %struct.Memory* %loadMem_400d35, %struct.Memory** %MEMORY
  %loadMem_400d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1463, i64 0, i64 1
  %YMM1.i427 = bitcast %union.VectorReg* %1464 to %"class.std::bitset"*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1465, i64 0, i64 0
  %XMM0.i428 = bitcast %union.VectorReg* %1466 to %union.vec128_t*
  %1467 = bitcast %"class.std::bitset"* %YMM1.i427 to i8*
  %1468 = bitcast %"class.std::bitset"* %YMM1.i427 to i8*
  %1469 = bitcast %union.vec128_t* %XMM0.i428 to i8*
  %1470 = load i64, i64* %PC.i426
  %1471 = add i64 %1470, 4
  store i64 %1471, i64* %PC.i426
  %1472 = bitcast i8* %1468 to double*
  %1473 = load double, double* %1472, align 1
  %1474 = getelementptr inbounds i8, i8* %1468, i64 8
  %1475 = bitcast i8* %1474 to i64*
  %1476 = load i64, i64* %1475, align 1
  %1477 = bitcast i8* %1469 to double*
  %1478 = load double, double* %1477, align 1
  %1479 = fdiv double %1473, %1478
  %1480 = bitcast i8* %1467 to double*
  store double %1479, double* %1480, align 1
  %1481 = getelementptr inbounds i8, i8* %1467, i64 8
  %1482 = bitcast i8* %1481 to i64*
  store i64 %1476, i64* %1482, align 1
  store %struct.Memory* %loadMem_400d3a, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 15
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1489, i64 0, i64 1
  %XMM1.i425 = bitcast %union.VectorReg* %1490 to %union.vec128_t*
  %1491 = load i64, i64* %RBP.i424
  %1492 = sub i64 %1491, 88
  %1493 = bitcast %union.vec128_t* %XMM1.i425 to i8*
  %1494 = load i64, i64* %PC.i423
  %1495 = add i64 %1494, 5
  store i64 %1495, i64* %PC.i423
  %1496 = bitcast i8* %1493 to double*
  %1497 = load double, double* %1496, align 1
  %1498 = inttoptr i64 %1492 to double*
  store double %1497, double* %1498
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1505, i64 0, i64 0
  %YMM0.i422 = bitcast %union.VectorReg* %1506 to %"class.std::bitset"*
  %1507 = bitcast %"class.std::bitset"* %YMM0.i422 to i8*
  %1508 = load i64, i64* %RBP.i421
  %1509 = sub i64 %1508, 24
  %1510 = load i64, i64* %PC.i420
  %1511 = add i64 %1510, 5
  store i64 %1511, i64* %PC.i420
  %1512 = inttoptr i64 %1509 to double*
  %1513 = load double, double* %1512
  %1514 = bitcast i8* %1507 to double*
  store double %1513, double* %1514, align 1
  %1515 = getelementptr inbounds i8, i8* %1507, i64 8
  %1516 = bitcast i8* %1515 to double*
  store double 0.000000e+00, double* %1516, align 1
  store %struct.Memory* %loadMem_400d43, %struct.Memory** %MEMORY
  %loadMem_400d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1523, i64 0, i64 0
  %XMM0.i415 = bitcast %union.VectorReg* %1524 to %union.vec128_t*
  %1525 = bitcast %union.vec128_t* %XMM0.i415 to i8*
  %1526 = load i64, i64* %RBP.i414
  %1527 = sub i64 %1526, 88
  %1528 = load i64, i64* %PC.i413
  %1529 = add i64 %1528, 5
  store i64 %1529, i64* %PC.i413
  %1530 = bitcast i8* %1525 to double*
  %1531 = load double, double* %1530, align 1
  %1532 = inttoptr i64 %1527 to double*
  %1533 = load double, double* %1532
  %1534 = fcmp uno double %1531, %1533
  br i1 %1534, label %1535, label %1547

; <label>:1535:                                   ; preds = %routine_idivq__rsi.exit434
  %1536 = fadd double %1531, %1533
  %1537 = bitcast double %1536 to i64
  %1538 = and i64 %1537, 9221120237041090560
  %1539 = icmp eq i64 %1538, 9218868437227405312
  %1540 = and i64 %1537, 2251799813685247
  %1541 = icmp ne i64 %1540, 0
  %1542 = and i1 %1539, %1541
  br i1 %1542, label %1543, label %1553

; <label>:1543:                                   ; preds = %1535
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1545 = load i64, i64* %1544, align 8
  %1546 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1545, %struct.Memory* %loadMem_400d48)
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416

; <label>:1547:                                   ; preds = %routine_idivq__rsi.exit434
  %1548 = fcmp ogt double %1531, %1533
  br i1 %1548, label %1553, label %1549

; <label>:1549:                                   ; preds = %1547
  %1550 = fcmp olt double %1531, %1533
  br i1 %1550, label %1553, label %1551

; <label>:1551:                                   ; preds = %1549
  %1552 = fcmp oeq double %1531, %1533
  br i1 %1552, label %1553, label %1560

; <label>:1553:                                   ; preds = %1551, %1549, %1547, %1535
  %1554 = phi i8 [ 0, %1547 ], [ 0, %1549 ], [ 1, %1551 ], [ 1, %1535 ]
  %1555 = phi i8 [ 0, %1547 ], [ 0, %1549 ], [ 0, %1551 ], [ 1, %1535 ]
  %1556 = phi i8 [ 0, %1547 ], [ 1, %1549 ], [ 0, %1551 ], [ 1, %1535 ]
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1554, i8* %1557, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1555, i8* %1558, align 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1556, i8* %1559, align 1
  br label %1560

; <label>:1560:                                   ; preds = %1553, %1551
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1561, align 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1562, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1563, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416

routine_ucomisd_MINUS0x58__rbp____xmm0.exit416:   ; preds = %1543, %1560
  %1564 = phi %struct.Memory* [ %1546, %1543 ], [ %loadMem_400d48, %1560 ]
  store %struct.Memory* %1564, %struct.Memory** %MEMORY
  %loadMem_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %PC.i412
  %1569 = add i64 %1568, 18
  %1570 = load i64, i64* %PC.i412
  %1571 = add i64 %1570, 6
  %1572 = load i64, i64* %PC.i412
  %1573 = add i64 %1572, 6
  store i64 %1573, i64* %PC.i412
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1575 = load i8, i8* %1574, align 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1577 = load i8, i8* %1576, align 1
  %1578 = or i8 %1577, %1575
  %1579 = icmp ne i8 %1578, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %BRANCH_TAKEN, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1582 = select i1 %1579, i64 %1569, i64 %1571
  store i64 %1582, i64* %1581, align 8
  store %struct.Memory* %loadMem_400d4d, %struct.Memory** %MEMORY
  %loadBr_400d4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d4d = icmp eq i8 %loadBr_400d4d, 1
  br i1 %cmpBr_400d4d, label %block_.L_400d5f, label %block_400d53

block_400d53:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416
  %loadMem_400d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 1
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 15
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %RBP.i411
  %1593 = sub i64 %1592, 80
  %1594 = load i64, i64* %PC.i409
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %PC.i409
  %1596 = inttoptr i64 %1593 to i64*
  %1597 = load i64, i64* %1596
  store i64 %1597, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_400d53, %struct.Memory** %MEMORY
  %loadMem_400d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 1
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %RAX.i408
  %1605 = load i64, i64* %PC.i407
  %1606 = add i64 %1605, 4
  store i64 %1606, i64* %PC.i407
  %1607 = xor i64 1, %1604
  store i64 %1607, i64* %RAX.i408, align 8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1608, align 1
  %1609 = trunc i64 %1607 to i32
  %1610 = and i32 %1609, 255
  %1611 = call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1614, i8* %1615, align 1
  %1616 = icmp eq i64 %1607, 0
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1617, i8* %1618, align 1
  %1619 = lshr i64 %1607, 63
  %1620 = trunc i64 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1620, i8* %1621, align 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1622, align 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1623, align 1
  store %struct.Memory* %loadMem_400d57, %struct.Memory** %MEMORY
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i406
  %1634 = sub i64 %1633, 80
  %1635 = load i64, i64* %RAX.i405
  %1636 = load i64, i64* %PC.i404
  %1637 = add i64 %1636, 4
  store i64 %1637, i64* %PC.i404
  %1638 = inttoptr i64 %1634 to i64*
  store i64 %1635, i64* %1638
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  br label %block_.L_400d5f

block_.L_400d5f:                                  ; preds = %block_400d53, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RBP.i403
  %1649 = sub i64 %1648, 40
  %1650 = load i64, i64* %PC.i401
  %1651 = add i64 %1650, 4
  store i64 %1651, i64* %PC.i401
  %1652 = inttoptr i64 %1649 to i64*
  %1653 = load i64, i64* %1652
  store i64 %1653, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_400d5f, %struct.Memory** %MEMORY
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %RAX.i400
  %1661 = add i64 %1660, 8
  %1662 = load i64, i64* %PC.i399
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %PC.i399
  %1664 = inttoptr i64 %1661 to i64*
  %1665 = load i64, i64* %1664
  store i64 %1665, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_400d63, %struct.Memory** %MEMORY
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RAX.i398
  %1673 = add i64 %1672, 4
  %1674 = load i64, i64* %PC.i397
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i397
  %1676 = inttoptr i64 %1673 to i32*
  %1677 = load i32, i32* %1676
  %1678 = sext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_400d67, %struct.Memory** %MEMORY
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 1
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 15
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RAX.i395
  %1689 = load i64, i64* %RBP.i396
  %1690 = sub i64 %1689, 80
  %1691 = load i64, i64* %PC.i394
  %1692 = add i64 %1691, 4
  store i64 %1692, i64* %PC.i394
  %1693 = inttoptr i64 %1690 to i64*
  %1694 = load i64, i64* %1693
  %1695 = add i64 %1694, %1688
  store i64 %1695, i64* %RAX.i395, align 8
  %1696 = icmp ult i64 %1695, %1688
  %1697 = icmp ult i64 %1695, %1694
  %1698 = or i1 %1696, %1697
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1699, i8* %1700, align 1
  %1701 = trunc i64 %1695 to i32
  %1702 = and i32 %1701, 255
  %1703 = call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1706, i8* %1707, align 1
  %1708 = xor i64 %1694, %1688
  %1709 = xor i64 %1708, %1695
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1712, i8* %1713, align 1
  %1714 = icmp eq i64 %1695, 0
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1715, i8* %1716, align 1
  %1717 = lshr i64 %1695, 63
  %1718 = trunc i64 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1718, i8* %1719, align 1
  %1720 = lshr i64 %1688, 63
  %1721 = lshr i64 %1694, 63
  %1722 = xor i64 %1717, %1720
  %1723 = xor i64 %1717, %1721
  %1724 = add i64 %1722, %1723
  %1725 = icmp eq i64 %1724, 2
  %1726 = zext i1 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1726, i8* %1727, align 1
  store %struct.Memory* %loadMem_400d6b, %struct.Memory** %MEMORY
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 1
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %RAX.i393
  %1735 = load i64, i64* %PC.i392
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i392
  %1737 = and i64 1, %1734
  store i64 %1737, i64* %RAX.i393, align 8
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1738, align 1
  %1739 = trunc i64 %1737 to i32
  %1740 = and i32 %1739, 255
  %1741 = call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1744, i8* %1745, align 1
  %1746 = icmp eq i64 %1737, 0
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1747, i8* %1748, align 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1749, align 1
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1750, align 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1751, align 1
  store %struct.Memory* %loadMem_400d6f, %struct.Memory** %MEMORY
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 1
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %1757 to i32*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 5
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1760 to i64*
  %1761 = load i32, i32* %EAX.i390
  %1762 = zext i32 %1761 to i64
  %1763 = load i64, i64* %PC.i389
  %1764 = add i64 %1763, 2
  store i64 %1764, i64* %PC.i389
  %1765 = and i64 %1762, 4294967295
  store i64 %1765, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_400d73, %struct.Memory** %MEMORY
  %loadMem_400d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 1
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 15
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RBP.i388
  %1776 = sub i64 %1775, 40
  %1777 = load i64, i64* %PC.i386
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC.i386
  %1779 = inttoptr i64 %1776 to i64*
  %1780 = load i64, i64* %1779
  store i64 %1780, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_400d75, %struct.Memory** %MEMORY
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 5
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %ECX.i384 = bitcast %union.anon* %1786 to i32*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RAX.i385
  %1791 = add i64 %1790, 4
  %1792 = load i32, i32* %ECX.i384
  %1793 = zext i32 %1792 to i64
  %1794 = load i64, i64* %PC.i383
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i383
  %1796 = inttoptr i64 %1791 to i32*
  store i32 %1792, i32* %1796
  store %struct.Memory* %loadMem_400d79, %struct.Memory** %MEMORY
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RBP.i382
  %1807 = sub i64 %1806, 40
  %1808 = load i64, i64* %PC.i380
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %PC.i380
  %1810 = inttoptr i64 %1807 to i64*
  %1811 = load i64, i64* %1810
  store i64 %1811, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_400d7c, %struct.Memory** %MEMORY
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RAX.i379
  %1819 = add i64 %1818, 8
  %1820 = load i64, i64* %PC.i378
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %PC.i378
  %1822 = inttoptr i64 %1819 to i64*
  %1823 = load i64, i64* %1822
  store i64 %1823, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_400d80, %struct.Memory** %MEMORY
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 15
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RBP.i377
  %1834 = sub i64 %1833, 40
  %1835 = load i64, i64* %RAX.i376
  %1836 = load i64, i64* %PC.i375
  %1837 = add i64 %1836, 4
  store i64 %1837, i64* %PC.i375
  %1838 = inttoptr i64 %1834 to i64*
  store i64 %1835, i64* %1838
  store %struct.Memory* %loadMem_400d84, %struct.Memory** %MEMORY
  %loadMem_400d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 1
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %RBP.i374
  %1849 = sub i64 %1848, 80
  %1850 = load i64, i64* %PC.i372
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %PC.i372
  %1852 = inttoptr i64 %1849 to i64*
  %1853 = load i64, i64* %1852
  store i64 %1853, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_400d88, %struct.Memory** %MEMORY
  %loadMem_400d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 1
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RAX.i371
  %1861 = load i64, i64* %PC.i370
  %1862 = add i64 %1861, 3
  store i64 %1862, i64* %PC.i370
  %1863 = trunc i64 %1860 to i8
  %1864 = and i8 %1863, 1
  %1865 = ashr i64 %1860, 1
  store i64 %1865, i64* %RAX.i371, align 8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1864, i8* %1866, align 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1868 = trunc i64 %1865 to i32
  %1869 = and i32 %1868, 255
  %1870 = call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  store i8 %1873, i8* %1867, align 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1874, align 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1876 = icmp eq i64 %1865, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %1875, align 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1879 = lshr i64 %1865, 63
  %1880 = trunc i64 %1879 to i8
  store i8 %1880, i8* %1878, align 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1881, align 1
  store %struct.Memory* %loadMem_400d8c, %struct.Memory** %MEMORY
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 1
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 15
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1890 to i64*
  %1891 = load i64, i64* %RBP.i369
  %1892 = sub i64 %1891, 80
  %1893 = load i64, i64* %RAX.i368
  %1894 = load i64, i64* %PC.i367
  %1895 = add i64 %1894, 4
  store i64 %1895, i64* %PC.i367
  %1896 = inttoptr i64 %1892 to i64*
  store i64 %1893, i64* %1896
  store %struct.Memory* %loadMem_400d90, %struct.Memory** %MEMORY
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 1
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 15
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1905 to i64*
  %1906 = load i64, i64* %RBP.i366
  %1907 = sub i64 %1906, 72
  %1908 = load i64, i64* %PC.i364
  %1909 = add i64 %1908, 3
  store i64 %1909, i64* %PC.i364
  %1910 = inttoptr i64 %1907 to i32*
  %1911 = load i32, i32* %1910
  %1912 = zext i32 %1911 to i64
  store i64 %1912, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_400d94, %struct.Memory** %MEMORY
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RAX.i363
  %1920 = load i64, i64* %PC.i362
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i362
  %1922 = trunc i64 %1919 to i32
  %1923 = add i32 1, %1922
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RAX.i363, align 8
  %1925 = icmp ult i32 %1923, %1922
  %1926 = icmp ult i32 %1923, 1
  %1927 = or i1 %1925, %1926
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1928, i8* %1929, align 1
  %1930 = and i32 %1923, 255
  %1931 = call i32 @llvm.ctpop.i32(i32 %1930)
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = xor i8 %1933, 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1934, i8* %1935, align 1
  %1936 = xor i64 1, %1919
  %1937 = trunc i64 %1936 to i32
  %1938 = xor i32 %1937, %1923
  %1939 = lshr i32 %1938, 4
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1941, i8* %1942, align 1
  %1943 = icmp eq i32 %1923, 0
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1944, i8* %1945, align 1
  %1946 = lshr i32 %1923, 31
  %1947 = trunc i32 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i32 %1922, 31
  %1950 = xor i32 %1946, %1949
  %1951 = add i32 %1950, %1946
  %1952 = icmp eq i32 %1951, 2
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1953, i8* %1954, align 1
  store %struct.Memory* %loadMem_400d97, %struct.Memory** %MEMORY
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 1
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %EAX.i360 = bitcast %union.anon* %1960 to i32*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 15
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %RBP.i361
  %1965 = sub i64 %1964, 72
  %1966 = load i32, i32* %EAX.i360
  %1967 = zext i32 %1966 to i64
  %1968 = load i64, i64* %PC.i359
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i359
  %1970 = inttoptr i64 %1965 to i32*
  store i32 %1966, i32* %1970
  store %struct.Memory* %loadMem_400d9a, %struct.Memory** %MEMORY
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %PC.i358
  %1975 = add i64 %1974, -226
  %1976 = load i64, i64* %PC.i358
  %1977 = add i64 %1976, 5
  store i64 %1977, i64* %PC.i358
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1975, i64* %1978, align 8
  store %struct.Memory* %loadMem_400d9d, %struct.Memory** %MEMORY
  br label %block_.L_400cbb

block_.L_400da2:                                  ; preds = %block_.L_400cbb
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %PC.i357
  %1983 = add i64 %1982, 5
  %1984 = load i64, i64* %PC.i357
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i357
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1983, i64* %1986, align 8
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  br label %block_.L_400da7

block_.L_400da7:                                  ; preds = %block_.L_400da2
  %loadMem_400da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %RBP.i356
  %1997 = sub i64 %1996, 68
  %1998 = load i64, i64* %PC.i354
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i354
  %2000 = inttoptr i64 %1997 to i32*
  %2001 = load i32, i32* %2000
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_400da7, %struct.Memory** %MEMORY
  %loadMem_400daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RAX.i353
  %2010 = load i64, i64* %PC.i352
  %2011 = add i64 %2010, 3
  store i64 %2011, i64* %PC.i352
  %2012 = trunc i64 %2009 to i32
  %2013 = add i32 1, %2012
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i353, align 8
  %2015 = icmp ult i32 %2013, %2012
  %2016 = icmp ult i32 %2013, 1
  %2017 = or i1 %2015, %2016
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2018, i8* %2019, align 1
  %2020 = and i32 %2013, 255
  %2021 = call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2024, i8* %2025, align 1
  %2026 = xor i64 1, %2009
  %2027 = trunc i64 %2026 to i32
  %2028 = xor i32 %2027, %2013
  %2029 = lshr i32 %2028, 4
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2031, i8* %2032, align 1
  %2033 = icmp eq i32 %2013, 0
  %2034 = zext i1 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2034, i8* %2035, align 1
  %2036 = lshr i32 %2013, 31
  %2037 = trunc i32 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2037, i8* %2038, align 1
  %2039 = lshr i32 %2012, 31
  %2040 = xor i32 %2036, %2039
  %2041 = add i32 %2040, %2036
  %2042 = icmp eq i32 %2041, 2
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2043, i8* %2044, align 1
  store %struct.Memory* %loadMem_400daa, %struct.Memory** %MEMORY
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %2050 to i32*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i351
  %2055 = sub i64 %2054, 68
  %2056 = load i32, i32* %EAX.i350
  %2057 = zext i32 %2056 to i64
  %2058 = load i64, i64* %PC.i349
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i349
  %2060 = inttoptr i64 %2055 to i32*
  store i32 %2056, i32* %2060
  store %struct.Memory* %loadMem_400dad, %struct.Memory** %MEMORY
  %loadMem_400db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %PC.i348
  %2065 = add i64 %2064, -273
  %2066 = load i64, i64* %PC.i348
  %2067 = add i64 %2066, 5
  store i64 %2067, i64* %PC.i348
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2065, i64* %2068, align 8
  store %struct.Memory* %loadMem_400db0, %struct.Memory** %MEMORY
  br label %block_.L_400c9f

block_.L_400db5:                                  ; preds = %block_.L_400c9f
  %loadMem1_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %PC.i347
  %2073 = add i64 %2072, -1829
  %2074 = load i64, i64* %PC.i347
  %2075 = add i64 %2074, 5
  %2076 = load i64, i64* %PC.i347
  %2077 = add i64 %2076, 5
  store i64 %2077, i64* %PC.i347
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2079 = load i64, i64* %2078, align 8
  %2080 = add i64 %2079, -8
  %2081 = inttoptr i64 %2080 to i64*
  store i64 %2075, i64* %2081
  store i64 %2080, i64* %2078, align 8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2073, i64* %2082, align 8
  store %struct.Memory* %loadMem1_400db5, %struct.Memory** %MEMORY
  %loadMem2_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400db5 = load i64, i64* %3
  %call2_400db5 = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400db5, %struct.Memory* %loadMem2_400db5)
  store %struct.Memory* %call2_400db5, %struct.Memory** %MEMORY
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 1
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 15
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %RBP.i346
  %2093 = sub i64 %2092, 80
  %2094 = load i64, i64* %RAX.i345
  %2095 = load i64, i64* %PC.i344
  %2096 = add i64 %2095, 4
  store i64 %2096, i64* %PC.i344
  %2097 = inttoptr i64 %2093 to i64*
  store i64 %2094, i64* %2097
  store %struct.Memory* %loadMem_400dba, %struct.Memory** %MEMORY
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 15
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RBP.i343
  %2105 = sub i64 %2104, 72
  %2106 = load i64, i64* %PC.i342
  %2107 = add i64 %2106, 7
  store i64 %2107, i64* %PC.i342
  %2108 = inttoptr i64 %2105 to i32*
  store i32 0, i32* %2108
  store %struct.Memory* %loadMem_400dbe, %struct.Memory** %MEMORY
  br label %block_.L_400dc5

block_.L_400dc5:                                  ; preds = %block_.L_400e6b, %block_.L_400db5
  %loadMem_400dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 15
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %RBP.i341
  %2119 = sub i64 %2118, 72
  %2120 = load i64, i64* %PC.i339
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %PC.i339
  %2122 = inttoptr i64 %2119 to i32*
  %2123 = load i32, i32* %2122
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_400dc5, %struct.Memory** %MEMORY
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 1
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %2130 to i32*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 15
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2133 to i64*
  %2134 = load i32, i32* %EAX.i337
  %2135 = zext i32 %2134 to i64
  %2136 = load i64, i64* %RBP.i338
  %2137 = sub i64 %2136, 56
  %2138 = load i64, i64* %PC.i336
  %2139 = add i64 %2138, 3
  store i64 %2139, i64* %PC.i336
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140
  %2142 = sub i32 %2134, %2141
  %2143 = icmp ult i32 %2134, %2141
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2144, i8* %2145, align 1
  %2146 = and i32 %2142, 255
  %2147 = call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2150, i8* %2151, align 1
  %2152 = xor i32 %2141, %2134
  %2153 = xor i32 %2152, %2142
  %2154 = lshr i32 %2153, 4
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2156, i8* %2157, align 1
  %2158 = icmp eq i32 %2142, 0
  %2159 = zext i1 %2158 to i8
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2159, i8* %2160, align 1
  %2161 = lshr i32 %2142, 31
  %2162 = trunc i32 %2161 to i8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2162, i8* %2163, align 1
  %2164 = lshr i32 %2134, 31
  %2165 = lshr i32 %2141, 31
  %2166 = xor i32 %2165, %2164
  %2167 = xor i32 %2161, %2164
  %2168 = add i32 %2167, %2166
  %2169 = icmp eq i32 %2168, 2
  %2170 = zext i1 %2169 to i8
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2170, i8* %2171, align 1
  store %struct.Memory* %loadMem_400dc8, %struct.Memory** %MEMORY
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2174 to i64*
  %2175 = load i64, i64* %PC.i335
  %2176 = add i64 %2175, 227
  %2177 = load i64, i64* %PC.i335
  %2178 = add i64 %2177, 6
  %2179 = load i64, i64* %PC.i335
  %2180 = add i64 %2179, 6
  store i64 %2180, i64* %PC.i335
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2182 = load i8, i8* %2181, align 1
  %2183 = icmp ne i8 %2182, 0
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2185 = load i8, i8* %2184, align 1
  %2186 = icmp ne i8 %2185, 0
  %2187 = xor i1 %2183, %2186
  %2188 = xor i1 %2187, true
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %BRANCH_TAKEN, align 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2191 = select i1 %2187, i64 %2178, i64 %2176
  store i64 %2191, i64* %2190, align 8
  store %struct.Memory* %loadMem_400dcb, %struct.Memory** %MEMORY
  %loadBr_400dcb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dcb = icmp eq i8 %loadBr_400dcb, 1
  br i1 %cmpBr_400dcb, label %block_.L_400eae, label %block_400dd1

block_400dd1:                                     ; preds = %block_.L_400dc5
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 1
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 15
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RBP.i334
  %2202 = sub i64 %2201, 32
  %2203 = load i64, i64* %PC.i332
  %2204 = add i64 %2203, 4
  store i64 %2204, i64* %PC.i332
  %2205 = inttoptr i64 %2202 to i64*
  %2206 = load i64, i64* %2205
  store i64 %2206, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_400dd1, %struct.Memory** %MEMORY
  %loadMem_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i331
  %2217 = sub i64 %2216, 60
  %2218 = load i64, i64* %PC.i329
  %2219 = add i64 %2218, 4
  store i64 %2219, i64* %PC.i329
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = sext i32 %2221 to i64
  %2223 = mul i64 %2222, 31
  %2224 = trunc i64 %2223 to i32
  %2225 = and i64 %2223, 4294967295
  store i64 %2225, i64* %RCX.i330, align 8
  %2226 = shl i64 %2223, 32
  %2227 = ashr exact i64 %2226, 32
  %2228 = icmp ne i64 %2227, %2223
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2229, i8* %2230, align 1
  %2231 = and i32 %2224, 255
  %2232 = call i32 @llvm.ctpop.i32(i32 %2231)
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = xor i8 %2234, 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2235, i8* %2236, align 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2237, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2238, align 1
  %2239 = lshr i32 %2224, 31
  %2240 = trunc i32 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2240, i8* %2241, align 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2229, i8* %2242, align 1
  store %struct.Memory* %loadMem_400dd5, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 5
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RCX.i327
  %2253 = load i64, i64* %RBP.i328
  %2254 = sub i64 %2253, 72
  %2255 = load i64, i64* %PC.i326
  %2256 = add i64 %2255, 3
  store i64 %2256, i64* %PC.i326
  %2257 = trunc i64 %2252 to i32
  %2258 = inttoptr i64 %2254 to i32*
  %2259 = load i32, i32* %2258
  %2260 = add i32 %2259, %2257
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RCX.i327, align 8
  %2262 = icmp ult i32 %2260, %2257
  %2263 = icmp ult i32 %2260, %2259
  %2264 = or i1 %2262, %2263
  %2265 = zext i1 %2264 to i8
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2265, i8* %2266, align 1
  %2267 = and i32 %2260, 255
  %2268 = call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2271, i8* %2272, align 1
  %2273 = xor i32 %2259, %2257
  %2274 = xor i32 %2273, %2260
  %2275 = lshr i32 %2274, 4
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2277, i8* %2278, align 1
  %2279 = icmp eq i32 %2260, 0
  %2280 = zext i1 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2280, i8* %2281, align 1
  %2282 = lshr i32 %2260, 31
  %2283 = trunc i32 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2283, i8* %2284, align 1
  %2285 = lshr i32 %2257, 31
  %2286 = lshr i32 %2259, 31
  %2287 = xor i32 %2282, %2285
  %2288 = xor i32 %2282, %2286
  %2289 = add i32 %2287, %2288
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2291, i8* %2292, align 1
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  %loadMem_400ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %ECX.i324 = bitcast %union.anon* %2298 to i32*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 7
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %2301 to i64*
  %2302 = load i32, i32* %ECX.i324
  %2303 = zext i32 %2302 to i64
  %2304 = load i64, i64* %PC.i323
  %2305 = add i64 %2304, 3
  store i64 %2305, i64* %PC.i323
  %2306 = shl i64 %2303, 32
  %2307 = ashr exact i64 %2306, 32
  store i64 %2307, i64* %RDX.i325, align 8
  store %struct.Memory* %loadMem_400ddc, %struct.Memory** %MEMORY
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 1
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 5
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 7
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RAX.i320
  %2321 = load i64, i64* %RDX.i322
  %2322 = add i64 %2321, %2320
  %2323 = load i64, i64* %PC.i319
  %2324 = add i64 %2323, 4
  store i64 %2324, i64* %PC.i319
  %2325 = inttoptr i64 %2322 to i8*
  %2326 = load i8, i8* %2325
  %2327 = sext i8 %2326 to i64
  %2328 = and i64 %2327, 4294967295
  store i64 %2328, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_400ddf, %struct.Memory** %MEMORY
  %loadMem_400de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 5
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %ECX.i318 = bitcast %union.anon* %2334 to i32*
  %2335 = load i32, i32* %ECX.i318
  %2336 = zext i32 %2335 to i64
  %2337 = load i64, i64* %PC.i317
  %2338 = add i64 %2337, 3
  store i64 %2338, i64* %PC.i317
  %2339 = sub i32 %2335, 49
  %2340 = icmp ult i32 %2335, 49
  %2341 = zext i1 %2340 to i8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2341, i8* %2342, align 1
  %2343 = and i32 %2339, 255
  %2344 = call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2347, i8* %2348, align 1
  %2349 = xor i64 49, %2336
  %2350 = trunc i64 %2349 to i32
  %2351 = xor i32 %2350, %2339
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2354, i8* %2355, align 1
  %2356 = icmp eq i32 %2339, 0
  %2357 = zext i1 %2356 to i8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2357, i8* %2358, align 1
  %2359 = lshr i32 %2339, 31
  %2360 = trunc i32 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2360, i8* %2361, align 1
  %2362 = lshr i32 %2335, 31
  %2363 = xor i32 %2359, %2362
  %2364 = add i32 %2363, %2362
  %2365 = icmp eq i32 %2364, 2
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2366, i8* %2367, align 1
  store %struct.Memory* %loadMem_400de3, %struct.Memory** %MEMORY
  %loadMem_400de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %PC.i316
  %2372 = add i64 %2371, 31
  %2373 = load i64, i64* %PC.i316
  %2374 = add i64 %2373, 6
  %2375 = load i64, i64* %PC.i316
  %2376 = add i64 %2375, 6
  store i64 %2376, i64* %PC.i316
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2378 = load i8, i8* %2377, align 1
  %2379 = icmp eq i8 %2378, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %BRANCH_TAKEN, align 1
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2382 = select i1 %2379, i64 %2372, i64 %2374
  store i64 %2382, i64* %2381, align 8
  store %struct.Memory* %loadMem_400de6, %struct.Memory** %MEMORY
  %loadBr_400de6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400de6 = icmp eq i8 %loadBr_400de6, 1
  br i1 %cmpBr_400de6, label %block_.L_400e05, label %block_400dec

block_400dec:                                     ; preds = %block_400dd1
  %loadMem_400dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 1
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 15
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2391 to i64*
  %2392 = load i64, i64* %RBP.i315
  %2393 = sub i64 %2392, 40
  %2394 = load i64, i64* %PC.i313
  %2395 = add i64 %2394, 4
  store i64 %2395, i64* %PC.i313
  %2396 = inttoptr i64 %2393 to i64*
  %2397 = load i64, i64* %2396
  store i64 %2397, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_400dec, %struct.Memory** %MEMORY
  %loadMem_400df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 1
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %2406 to i64*
  %2407 = load i64, i64* %RAX.i311
  %2408 = load i64, i64* %PC.i310
  %2409 = add i64 %2408, 2
  store i64 %2409, i64* %PC.i310
  %2410 = inttoptr i64 %2407 to i32*
  %2411 = load i32, i32* %2410
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_400df0, %struct.Memory** %MEMORY
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 5
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RCX.i308
  %2423 = load i64, i64* %RBP.i309
  %2424 = sub i64 %2423, 48
  %2425 = load i64, i64* %PC.i307
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %PC.i307
  %2427 = trunc i64 %2422 to i32
  %2428 = inttoptr i64 %2424 to i32*
  %2429 = load i32, i32* %2428
  %2430 = add i32 %2429, %2427
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RCX.i308, align 8
  %2432 = icmp ult i32 %2430, %2427
  %2433 = icmp ult i32 %2430, %2429
  %2434 = or i1 %2432, %2433
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2435, i8* %2436, align 1
  %2437 = and i32 %2430, 255
  %2438 = call i32 @llvm.ctpop.i32(i32 %2437)
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2441, i8* %2442, align 1
  %2443 = xor i32 %2429, %2427
  %2444 = xor i32 %2443, %2430
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2447, i8* %2448, align 1
  %2449 = icmp eq i32 %2430, 0
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2450, i8* %2451, align 1
  %2452 = lshr i32 %2430, 31
  %2453 = trunc i32 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2453, i8* %2454, align 1
  %2455 = lshr i32 %2427, 31
  %2456 = lshr i32 %2429, 31
  %2457 = xor i32 %2452, %2455
  %2458 = xor i32 %2452, %2456
  %2459 = add i32 %2457, %2458
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2461, i8* %2462, align 1
  store %struct.Memory* %loadMem_400df2, %struct.Memory** %MEMORY
  %loadMem_400df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 5
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %ECX.i305 = bitcast %union.anon* %2468 to i32*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i306
  %2473 = sub i64 %2472, 48
  %2474 = load i32, i32* %ECX.i305
  %2475 = zext i32 %2474 to i64
  %2476 = load i64, i64* %PC.i304
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i304
  %2478 = inttoptr i64 %2473 to i32*
  store i32 %2474, i32* %2478
  store %struct.Memory* %loadMem_400df5, %struct.Memory** %MEMORY
  %loadMem_400df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 1
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 15
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %RBP.i303
  %2489 = sub i64 %2488, 40
  %2490 = load i64, i64* %PC.i301
  %2491 = add i64 %2490, 4
  store i64 %2491, i64* %PC.i301
  %2492 = inttoptr i64 %2489 to i64*
  %2493 = load i64, i64* %2492
  store i64 %2493, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_400df8, %struct.Memory** %MEMORY
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 1
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 5
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %RAX.i299
  %2504 = add i64 %2503, 4
  %2505 = load i64, i64* %PC.i298
  %2506 = add i64 %2505, 3
  store i64 %2506, i64* %PC.i298
  %2507 = inttoptr i64 %2504 to i32*
  %2508 = load i32, i32* %2507
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_400dfc, %struct.Memory** %MEMORY
  %loadMem_400dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 5
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 15
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RCX.i296
  %2520 = load i64, i64* %RBP.i297
  %2521 = sub i64 %2520, 52
  %2522 = load i64, i64* %PC.i295
  %2523 = add i64 %2522, 3
  store i64 %2523, i64* %PC.i295
  %2524 = trunc i64 %2519 to i32
  %2525 = inttoptr i64 %2521 to i32*
  %2526 = load i32, i32* %2525
  %2527 = add i32 %2526, %2524
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RCX.i296, align 8
  %2529 = icmp ult i32 %2527, %2524
  %2530 = icmp ult i32 %2527, %2526
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2532, i8* %2533, align 1
  %2534 = and i32 %2527, 255
  %2535 = call i32 @llvm.ctpop.i32(i32 %2534)
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2538, i8* %2539, align 1
  %2540 = xor i32 %2526, %2524
  %2541 = xor i32 %2540, %2527
  %2542 = lshr i32 %2541, 4
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2544, i8* %2545, align 1
  %2546 = icmp eq i32 %2527, 0
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2547, i8* %2548, align 1
  %2549 = lshr i32 %2527, 31
  %2550 = trunc i32 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2550, i8* %2551, align 1
  %2552 = lshr i32 %2524, 31
  %2553 = lshr i32 %2526, 31
  %2554 = xor i32 %2549, %2552
  %2555 = xor i32 %2549, %2553
  %2556 = add i32 %2554, %2555
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2558, i8* %2559, align 1
  store %struct.Memory* %loadMem_400dff, %struct.Memory** %MEMORY
  %loadMem_400e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 5
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %ECX.i293 = bitcast %union.anon* %2565 to i32*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i294
  %2570 = sub i64 %2569, 52
  %2571 = load i32, i32* %ECX.i293
  %2572 = zext i32 %2571 to i64
  %2573 = load i64, i64* %PC.i292
  %2574 = add i64 %2573, 3
  store i64 %2574, i64* %PC.i292
  %2575 = inttoptr i64 %2570 to i32*
  store i32 %2571, i32* %2575
  store %struct.Memory* %loadMem_400e02, %struct.Memory** %MEMORY
  br label %block_.L_400e05

block_.L_400e05:                                  ; preds = %block_400dec, %block_400dd1
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 1
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 15
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2584 to i64*
  %2585 = load i64, i64* %RBP.i291
  %2586 = sub i64 %2585, 40
  %2587 = load i64, i64* %PC.i289
  %2588 = add i64 %2587, 4
  store i64 %2588, i64* %PC.i289
  %2589 = inttoptr i64 %2586 to i64*
  %2590 = load i64, i64* %2589
  store i64 %2590, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_400e05, %struct.Memory** %MEMORY
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 1
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RAX.i288
  %2598 = add i64 %2597, 8
  %2599 = load i64, i64* %PC.i287
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC.i287
  %2601 = inttoptr i64 %2598 to i64*
  %2602 = load i64, i64* %2601
  store i64 %2602, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_400e09, %struct.Memory** %MEMORY
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 1
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2608 to i64*
  %2609 = load i64, i64* %RAX.i286
  %2610 = load i64, i64* %PC.i285
  %2611 = add i64 %2610, 3
  store i64 %2611, i64* %PC.i285
  %2612 = inttoptr i64 %2609 to i32*
  %2613 = load i32, i32* %2612
  %2614 = sext i32 %2613 to i64
  store i64 %2614, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_400e0d, %struct.Memory** %MEMORY
  %loadMem_400e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 1
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 15
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %2623 to i64*
  %2624 = load i64, i64* %RAX.i283
  %2625 = load i64, i64* %RBP.i284
  %2626 = sub i64 %2625, 80
  %2627 = load i64, i64* %PC.i282
  %2628 = add i64 %2627, 4
  store i64 %2628, i64* %PC.i282
  %2629 = inttoptr i64 %2626 to i64*
  %2630 = load i64, i64* %2629
  %2631 = add i64 %2630, %2624
  store i64 %2631, i64* %RAX.i283, align 8
  %2632 = icmp ult i64 %2631, %2624
  %2633 = icmp ult i64 %2631, %2630
  %2634 = or i1 %2632, %2633
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2635, i8* %2636, align 1
  %2637 = trunc i64 %2631 to i32
  %2638 = and i32 %2637, 255
  %2639 = call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2642, i8* %2643, align 1
  %2644 = xor i64 %2630, %2624
  %2645 = xor i64 %2644, %2631
  %2646 = lshr i64 %2645, 4
  %2647 = trunc i64 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2648, i8* %2649, align 1
  %2650 = icmp eq i64 %2631, 0
  %2651 = zext i1 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2651, i8* %2652, align 1
  %2653 = lshr i64 %2631, 63
  %2654 = trunc i64 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2654, i8* %2655, align 1
  %2656 = lshr i64 %2624, 63
  %2657 = lshr i64 %2630, 63
  %2658 = xor i64 %2653, %2656
  %2659 = xor i64 %2653, %2657
  %2660 = add i64 %2658, %2659
  %2661 = icmp eq i64 %2660, 2
  %2662 = zext i1 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2662, i8* %2663, align 1
  store %struct.Memory* %loadMem_400e10, %struct.Memory** %MEMORY
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 1
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RAX.i281
  %2671 = load i64, i64* %PC.i280
  %2672 = add i64 %2671, 4
  store i64 %2672, i64* %PC.i280
  %2673 = and i64 1, %2670
  store i64 %2673, i64* %RAX.i281, align 8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2674, align 1
  %2675 = trunc i64 %2673 to i32
  %2676 = and i32 %2675, 255
  %2677 = call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2680, i8* %2681, align 1
  %2682 = icmp eq i64 %2673, 0
  %2683 = zext i1 %2682 to i8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2683, i8* %2684, align 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2685, align 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2686, align 1
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2687, align 1
  store %struct.Memory* %loadMem_400e14, %struct.Memory** %MEMORY
  %loadMem_400e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 1
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %EAX.i278 = bitcast %union.anon* %2693 to i32*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 5
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %2696 to i64*
  %2697 = load i32, i32* %EAX.i278
  %2698 = zext i32 %2697 to i64
  %2699 = load i64, i64* %PC.i277
  %2700 = add i64 %2699, 2
  store i64 %2700, i64* %PC.i277
  %2701 = and i64 %2698, 4294967295
  store i64 %2701, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_400e18, %struct.Memory** %MEMORY
  %loadMem_400e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 15
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RBP.i276
  %2712 = sub i64 %2711, 40
  %2713 = load i64, i64* %PC.i274
  %2714 = add i64 %2713, 4
  store i64 %2714, i64* %PC.i274
  %2715 = inttoptr i64 %2712 to i64*
  %2716 = load i64, i64* %2715
  store i64 %2716, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_400e1a, %struct.Memory** %MEMORY
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %ECX.i272 = bitcast %union.anon* %2722 to i32*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 1
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RAX.i273
  %2727 = load i32, i32* %ECX.i272
  %2728 = zext i32 %2727 to i64
  %2729 = load i64, i64* %PC.i271
  %2730 = add i64 %2729, 2
  store i64 %2730, i64* %PC.i271
  %2731 = inttoptr i64 %2726 to i32*
  store i32 %2727, i32* %2731
  store %struct.Memory* %loadMem_400e1e, %struct.Memory** %MEMORY
  %loadMem1_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2734 to i64*
  %2735 = load i64, i64* %PC.i270
  %2736 = add i64 %2735, -1936
  %2737 = load i64, i64* %PC.i270
  %2738 = add i64 %2737, 5
  %2739 = load i64, i64* %PC.i270
  %2740 = add i64 %2739, 5
  store i64 %2740, i64* %PC.i270
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2742 = load i64, i64* %2741, align 8
  %2743 = add i64 %2742, -8
  %2744 = inttoptr i64 %2743 to i64*
  store i64 %2738, i64* %2744
  store i64 %2743, i64* %2741, align 8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2736, i64* %2745, align 8
  store %struct.Memory* %loadMem1_400e20, %struct.Memory** %MEMORY
  %loadMem2_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e20 = load i64, i64* %3
  %call2_400e20 = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400e20, %struct.Memory* %loadMem2_400e20)
  store %struct.Memory* %call2_400e20, %struct.Memory** %MEMORY
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2749, i64 0, i64 0
  %YMM0.i269 = bitcast %union.VectorReg* %2750 to %"class.std::bitset"*
  %2751 = bitcast %"class.std::bitset"* %YMM0.i269 to i8*
  %2752 = load i64, i64* %PC.i268
  %2753 = add i64 %2752, 667
  %2754 = load i64, i64* %PC.i268
  %2755 = add i64 %2754, 8
  store i64 %2755, i64* %PC.i268
  %2756 = inttoptr i64 %2753 to double*
  %2757 = load double, double* %2756
  %2758 = bitcast i8* %2751 to double*
  store double %2757, double* %2758, align 1
  %2759 = getelementptr inbounds i8, i8* %2751, i64 8
  %2760 = bitcast i8* %2759 to double*
  store double 0.000000e+00, double* %2760, align 1
  store %struct.Memory* %loadMem_400e25, %struct.Memory** %MEMORY
  %loadMem_400e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 5
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %2766 to i64*
  %2767 = load i64, i64* %PC.i266
  %2768 = add i64 %2767, 5
  store i64 %2768, i64* %PC.i266
  store i64 1000, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_400e2d, %struct.Memory** %MEMORY
  %loadMem_400e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 5
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %ECX.i264 = bitcast %union.anon* %2774 to i32*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 7
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %2777 to i64*
  %2778 = load i32, i32* %ECX.i264
  %2779 = zext i32 %2778 to i64
  %2780 = load i64, i64* %PC.i263
  %2781 = add i64 %2780, 2
  store i64 %2781, i64* %PC.i263
  %2782 = and i64 %2779, 4294967295
  store i64 %2782, i64* %RDX.i265, align 8
  store %struct.Memory* %loadMem_400e32, %struct.Memory** %MEMORY
  %loadMem_400e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 7
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 15
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2791 to i64*
  %2792 = load i64, i64* %RBP.i262
  %2793 = sub i64 %2792, 112
  %2794 = load i64, i64* %RDX.i261
  %2795 = load i64, i64* %PC.i260
  %2796 = add i64 %2795, 4
  store i64 %2796, i64* %PC.i260
  %2797 = inttoptr i64 %2793 to i64*
  store i64 %2794, i64* %2797
  store %struct.Memory* %loadMem_400e34, %struct.Memory** %MEMORY
  %loadMem_400e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %PC.i259
  %2802 = add i64 %2801, 2
  store i64 %2802, i64* %PC.i259
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2805 = load i64, i64* %2804, align 8
  %2806 = ashr i64 %2805, 63
  store i64 %2806, i64* %2803, align 8
  store %struct.Memory* %loadMem_400e38, %struct.Memory** %MEMORY
  %loadMem_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 9
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RSI.i257 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i258
  %2817 = sub i64 %2816, 112
  %2818 = load i64, i64* %PC.i256
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %PC.i256
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820
  store i64 %2821, i64* %RSI.i257, align 8
  store %struct.Memory* %loadMem_400e3a, %struct.Memory** %MEMORY
  %loadMem_400e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 9
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RSI.i252
  %2829 = load i64, i64* %PC.i251
  %2830 = add i64 %2829, 3
  store i64 %2830, i64* %PC.i251
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2832 = load i64, i64* %2831, align 8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2834 = load i64, i64* %2833, align 8
  %2835 = sext i64 %2828 to i128
  %2836 = and i128 %2835, -18446744073709551616
  %2837 = zext i64 %2834 to i128
  %2838 = shl i128 %2837, 64
  %2839 = zext i64 %2832 to i128
  %2840 = or i128 %2838, %2839
  %2841 = zext i64 %2828 to i128
  %2842 = or i128 %2836, %2841
  %2843 = sdiv i128 %2840, %2842
  %2844 = trunc i128 %2843 to i64
  %2845 = and i128 %2843, 18446744073709551615
  %2846 = sext i64 %2844 to i128
  %2847 = and i128 %2846, -18446744073709551616
  %2848 = or i128 %2847, %2845
  %2849 = icmp eq i128 %2843, %2848
  br i1 %2849, label %2854, label %2850

; <label>:2850:                                   ; preds = %block_.L_400e05
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2852 = load i64, i64* %2851, align 8
  %2853 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2852, %struct.Memory* %loadMem_400e3e)
  br label %routine_idivq__rsi.exit253

; <label>:2854:                                   ; preds = %block_.L_400e05
  %2855 = srem i128 %2840, %2842
  %2856 = trunc i128 %2855 to i64
  store i64 %2844, i64* %2831, align 8
  store i64 %2856, i64* %2833, align 8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2857, align 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2858, align 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2859, align 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2860, align 1
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2861, align 1
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2862, align 1
  br label %routine_idivq__rsi.exit253

routine_idivq__rsi.exit253:                       ; preds = %2850, %2854
  %2863 = phi %struct.Memory* [ %2853, %2850 ], [ %loadMem_400e3e, %2854 ]
  store %struct.Memory* %2863, %struct.Memory** %MEMORY
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 7
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2870, i64 0, i64 1
  %YMM1.i250 = bitcast %union.VectorReg* %2871 to %"class.std::bitset"*
  %2872 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %2873 = load i64, i64* %RDX.i249
  %2874 = load i64, i64* %PC.i248
  %2875 = add i64 %2874, 5
  store i64 %2875, i64* %PC.i248
  %2876 = sitofp i64 %2873 to double
  %2877 = bitcast i8* %2872 to double*
  store double %2876, double* %2877, align 1
  store %struct.Memory* %loadMem_400e41, %struct.Memory** %MEMORY
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2881, i64 0, i64 1
  %YMM1.i246 = bitcast %union.VectorReg* %2882 to %"class.std::bitset"*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2883, i64 0, i64 0
  %XMM0.i247 = bitcast %union.VectorReg* %2884 to %union.vec128_t*
  %2885 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %2886 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %2887 = bitcast %union.vec128_t* %XMM0.i247 to i8*
  %2888 = load i64, i64* %PC.i245
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %PC.i245
  %2890 = bitcast i8* %2886 to double*
  %2891 = load double, double* %2890, align 1
  %2892 = getelementptr inbounds i8, i8* %2886, i64 8
  %2893 = bitcast i8* %2892 to i64*
  %2894 = load i64, i64* %2893, align 1
  %2895 = bitcast i8* %2887 to double*
  %2896 = load double, double* %2895, align 1
  %2897 = fdiv double %2891, %2896
  %2898 = bitcast i8* %2885 to double*
  store double %2897, double* %2898, align 1
  %2899 = getelementptr inbounds i8, i8* %2885, i64 8
  %2900 = bitcast i8* %2899 to i64*
  store i64 %2894, i64* %2900, align 1
  store %struct.Memory* %loadMem_400e46, %struct.Memory** %MEMORY
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 15
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2907, i64 0, i64 1
  %XMM1.i244 = bitcast %union.VectorReg* %2908 to %union.vec128_t*
  %2909 = load i64, i64* %RBP.i243
  %2910 = sub i64 %2909, 88
  %2911 = bitcast %union.vec128_t* %XMM1.i244 to i8*
  %2912 = load i64, i64* %PC.i242
  %2913 = add i64 %2912, 5
  store i64 %2913, i64* %PC.i242
  %2914 = bitcast i8* %2911 to double*
  %2915 = load double, double* %2914, align 1
  %2916 = inttoptr i64 %2910 to double*
  store double %2915, double* %2916
  store %struct.Memory* %loadMem_400e4a, %struct.Memory** %MEMORY
  %loadMem_400e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2923, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %2924 to %"class.std::bitset"*
  %2925 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %2926 = load i64, i64* %RBP.i240
  %2927 = sub i64 %2926, 24
  %2928 = load i64, i64* %PC.i239
  %2929 = add i64 %2928, 5
  store i64 %2929, i64* %PC.i239
  %2930 = inttoptr i64 %2927 to double*
  %2931 = load double, double* %2930
  %2932 = bitcast i8* %2925 to double*
  store double %2931, double* %2932, align 1
  %2933 = getelementptr inbounds i8, i8* %2925, i64 8
  %2934 = bitcast i8* %2933 to double*
  store double 0.000000e+00, double* %2934, align 1
  store %struct.Memory* %loadMem_400e4f, %struct.Memory** %MEMORY
  %loadMem_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2942 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2941, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %2942 to %union.vec128_t*
  %2943 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %2944 = load i64, i64* %RBP.i234
  %2945 = sub i64 %2944, 88
  %2946 = load i64, i64* %PC.i233
  %2947 = add i64 %2946, 5
  store i64 %2947, i64* %PC.i233
  %2948 = bitcast i8* %2943 to double*
  %2949 = load double, double* %2948, align 1
  %2950 = inttoptr i64 %2945 to double*
  %2951 = load double, double* %2950
  %2952 = fcmp uno double %2949, %2951
  br i1 %2952, label %2953, label %2965

; <label>:2953:                                   ; preds = %routine_idivq__rsi.exit253
  %2954 = fadd double %2949, %2951
  %2955 = bitcast double %2954 to i64
  %2956 = and i64 %2955, 9221120237041090560
  %2957 = icmp eq i64 %2956, 9218868437227405312
  %2958 = and i64 %2955, 2251799813685247
  %2959 = icmp ne i64 %2958, 0
  %2960 = and i1 %2957, %2959
  br i1 %2960, label %2961, label %2971

; <label>:2961:                                   ; preds = %2953
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2963 = load i64, i64* %2962, align 8
  %2964 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2963, %struct.Memory* %loadMem_400e54)
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236

; <label>:2965:                                   ; preds = %routine_idivq__rsi.exit253
  %2966 = fcmp ogt double %2949, %2951
  br i1 %2966, label %2971, label %2967

; <label>:2967:                                   ; preds = %2965
  %2968 = fcmp olt double %2949, %2951
  br i1 %2968, label %2971, label %2969

; <label>:2969:                                   ; preds = %2967
  %2970 = fcmp oeq double %2949, %2951
  br i1 %2970, label %2971, label %2978

; <label>:2971:                                   ; preds = %2969, %2967, %2965, %2953
  %2972 = phi i8 [ 0, %2965 ], [ 0, %2967 ], [ 1, %2969 ], [ 1, %2953 ]
  %2973 = phi i8 [ 0, %2965 ], [ 0, %2967 ], [ 0, %2969 ], [ 1, %2953 ]
  %2974 = phi i8 [ 0, %2965 ], [ 1, %2967 ], [ 0, %2969 ], [ 1, %2953 ]
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2972, i8* %2975, align 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2973, i8* %2976, align 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2974, i8* %2977, align 1
  br label %2978

; <label>:2978:                                   ; preds = %2971, %2969
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2979, align 1
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2980, align 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2981, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236

routine_ucomisd_MINUS0x58__rbp____xmm0.exit236:   ; preds = %2961, %2978
  %2982 = phi %struct.Memory* [ %2964, %2961 ], [ %loadMem_400e54, %2978 ]
  store %struct.Memory* %2982, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %PC.i232
  %2987 = add i64 %2986, 18
  %2988 = load i64, i64* %PC.i232
  %2989 = add i64 %2988, 6
  %2990 = load i64, i64* %PC.i232
  %2991 = add i64 %2990, 6
  store i64 %2991, i64* %PC.i232
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2993 = load i8, i8* %2992, align 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2995 = load i8, i8* %2994, align 1
  %2996 = or i8 %2995, %2993
  %2997 = icmp ne i8 %2996, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %BRANCH_TAKEN, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3000 = select i1 %2997, i64 %2987, i64 %2989
  store i64 %3000, i64* %2999, align 8
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadBr_400e59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e59 = icmp eq i8 %loadBr_400e59, 1
  br i1 %cmpBr_400e59, label %block_.L_400e6b, label %block_400e5f

block_400e5f:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236
  %loadMem_400e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 15
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RBP.i231
  %3011 = sub i64 %3010, 80
  %3012 = load i64, i64* %PC.i229
  %3013 = add i64 %3012, 4
  store i64 %3013, i64* %PC.i229
  %3014 = inttoptr i64 %3011 to i64*
  %3015 = load i64, i64* %3014
  store i64 %3015, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_400e5f, %struct.Memory** %MEMORY
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 1
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RAX.i228
  %3023 = load i64, i64* %PC.i227
  %3024 = add i64 %3023, 4
  store i64 %3024, i64* %PC.i227
  %3025 = xor i64 1, %3022
  store i64 %3025, i64* %RAX.i228, align 8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3026, align 1
  %3027 = trunc i64 %3025 to i32
  %3028 = and i32 %3027, 255
  %3029 = call i32 @llvm.ctpop.i32(i32 %3028)
  %3030 = trunc i32 %3029 to i8
  %3031 = and i8 %3030, 1
  %3032 = xor i8 %3031, 1
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3032, i8* %3033, align 1
  %3034 = icmp eq i64 %3025, 0
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3035, i8* %3036, align 1
  %3037 = lshr i64 %3025, 63
  %3038 = trunc i64 %3037 to i8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3038, i8* %3039, align 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3040, align 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3041, align 1
  store %struct.Memory* %loadMem_400e63, %struct.Memory** %MEMORY
  %loadMem_400e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i226
  %3052 = sub i64 %3051, 80
  %3053 = load i64, i64* %RAX.i225
  %3054 = load i64, i64* %PC.i224
  %3055 = add i64 %3054, 4
  store i64 %3055, i64* %PC.i224
  %3056 = inttoptr i64 %3052 to i64*
  store i64 %3053, i64* %3056
  store %struct.Memory* %loadMem_400e67, %struct.Memory** %MEMORY
  br label %block_.L_400e6b

block_.L_400e6b:                                  ; preds = %block_400e5f, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i223
  %3067 = sub i64 %3066, 40
  %3068 = load i64, i64* %PC.i221
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i221
  %3070 = inttoptr i64 %3067 to i64*
  %3071 = load i64, i64* %3070
  store i64 %3071, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadMem_400e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %RAX.i220
  %3079 = add i64 %3078, 8
  %3080 = load i64, i64* %PC.i219
  %3081 = add i64 %3080, 4
  store i64 %3081, i64* %PC.i219
  %3082 = inttoptr i64 %3079 to i64*
  %3083 = load i64, i64* %3082
  store i64 %3083, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_400e6f, %struct.Memory** %MEMORY
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 1
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %RAX.i218
  %3091 = add i64 %3090, 4
  %3092 = load i64, i64* %PC.i217
  %3093 = add i64 %3092, 4
  store i64 %3093, i64* %PC.i217
  %3094 = inttoptr i64 %3091 to i32*
  %3095 = load i32, i32* %3094
  %3096 = sext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_400e73, %struct.Memory** %MEMORY
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 15
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3105 to i64*
  %3106 = load i64, i64* %RAX.i215
  %3107 = load i64, i64* %RBP.i216
  %3108 = sub i64 %3107, 80
  %3109 = load i64, i64* %PC.i214
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %PC.i214
  %3111 = inttoptr i64 %3108 to i64*
  %3112 = load i64, i64* %3111
  %3113 = add i64 %3112, %3106
  store i64 %3113, i64* %RAX.i215, align 8
  %3114 = icmp ult i64 %3113, %3106
  %3115 = icmp ult i64 %3113, %3112
  %3116 = or i1 %3114, %3115
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3117, i8* %3118, align 1
  %3119 = trunc i64 %3113 to i32
  %3120 = and i32 %3119, 255
  %3121 = call i32 @llvm.ctpop.i32(i32 %3120)
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  %3124 = xor i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3124, i8* %3125, align 1
  %3126 = xor i64 %3112, %3106
  %3127 = xor i64 %3126, %3113
  %3128 = lshr i64 %3127, 4
  %3129 = trunc i64 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3130, i8* %3131, align 1
  %3132 = icmp eq i64 %3113, 0
  %3133 = zext i1 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3133, i8* %3134, align 1
  %3135 = lshr i64 %3113, 63
  %3136 = trunc i64 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3136, i8* %3137, align 1
  %3138 = lshr i64 %3106, 63
  %3139 = lshr i64 %3112, 63
  %3140 = xor i64 %3135, %3138
  %3141 = xor i64 %3135, %3139
  %3142 = add i64 %3140, %3141
  %3143 = icmp eq i64 %3142, 2
  %3144 = zext i1 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3144, i8* %3145, align 1
  store %struct.Memory* %loadMem_400e77, %struct.Memory** %MEMORY
  %loadMem_400e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 1
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RAX.i213
  %3153 = load i64, i64* %PC.i212
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %PC.i212
  %3155 = and i64 1, %3152
  store i64 %3155, i64* %RAX.i213, align 8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3156, align 1
  %3157 = trunc i64 %3155 to i32
  %3158 = and i32 %3157, 255
  %3159 = call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3162, i8* %3163, align 1
  %3164 = icmp eq i64 %3155, 0
  %3165 = zext i1 %3164 to i8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3165, i8* %3166, align 1
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3167, align 1
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3168, align 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3169, align 1
  store %struct.Memory* %loadMem_400e7b, %struct.Memory** %MEMORY
  %loadMem_400e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 1
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %EAX.i210 = bitcast %union.anon* %3175 to i32*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 5
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3178 to i64*
  %3179 = load i32, i32* %EAX.i210
  %3180 = zext i32 %3179 to i64
  %3181 = load i64, i64* %PC.i209
  %3182 = add i64 %3181, 2
  store i64 %3182, i64* %PC.i209
  %3183 = and i64 %3180, 4294967295
  store i64 %3183, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_400e7f, %struct.Memory** %MEMORY
  %loadMem_400e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 1
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i208
  %3194 = sub i64 %3193, 40
  %3195 = load i64, i64* %PC.i206
  %3196 = add i64 %3195, 4
  store i64 %3196, i64* %PC.i206
  %3197 = inttoptr i64 %3194 to i64*
  %3198 = load i64, i64* %3197
  store i64 %3198, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_400e81, %struct.Memory** %MEMORY
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 5
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %ECX.i204 = bitcast %union.anon* %3204 to i32*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 1
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RAX.i205
  %3209 = add i64 %3208, 4
  %3210 = load i32, i32* %ECX.i204
  %3211 = zext i32 %3210 to i64
  %3212 = load i64, i64* %PC.i203
  %3213 = add i64 %3212, 3
  store i64 %3213, i64* %PC.i203
  %3214 = inttoptr i64 %3209 to i32*
  store i32 %3210, i32* %3214
  store %struct.Memory* %loadMem_400e85, %struct.Memory** %MEMORY
  %loadMem_400e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 1
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3220 to i64*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %RBP.i202
  %3225 = sub i64 %3224, 40
  %3226 = load i64, i64* %PC.i200
  %3227 = add i64 %3226, 4
  store i64 %3227, i64* %PC.i200
  %3228 = inttoptr i64 %3225 to i64*
  %3229 = load i64, i64* %3228
  store i64 %3229, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_400e88, %struct.Memory** %MEMORY
  %loadMem_400e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RAX.i199
  %3237 = add i64 %3236, 8
  %3238 = load i64, i64* %PC.i198
  %3239 = add i64 %3238, 4
  store i64 %3239, i64* %PC.i198
  %3240 = inttoptr i64 %3237 to i64*
  %3241 = load i64, i64* %3240
  store i64 %3241, i64* %RAX.i199, align 8
  store %struct.Memory* %loadMem_400e8c, %struct.Memory** %MEMORY
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 1
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 15
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3250 to i64*
  %3251 = load i64, i64* %RBP.i197
  %3252 = sub i64 %3251, 40
  %3253 = load i64, i64* %RAX.i196
  %3254 = load i64, i64* %PC.i195
  %3255 = add i64 %3254, 4
  store i64 %3255, i64* %PC.i195
  %3256 = inttoptr i64 %3252 to i64*
  store i64 %3253, i64* %3256
  store %struct.Memory* %loadMem_400e90, %struct.Memory** %MEMORY
  %loadMem_400e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 15
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RBP.i194
  %3267 = sub i64 %3266, 80
  %3268 = load i64, i64* %PC.i192
  %3269 = add i64 %3268, 4
  store i64 %3269, i64* %PC.i192
  %3270 = inttoptr i64 %3267 to i64*
  %3271 = load i64, i64* %3270
  store i64 %3271, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_400e94, %struct.Memory** %MEMORY
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 1
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RAX.i191
  %3279 = load i64, i64* %PC.i190
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC.i190
  %3281 = trunc i64 %3278 to i8
  %3282 = and i8 %3281, 1
  %3283 = ashr i64 %3278, 1
  store i64 %3283, i64* %RAX.i191, align 8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3282, i8* %3284, align 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3286 = trunc i64 %3283 to i32
  %3287 = and i32 %3286, 255
  %3288 = call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %3285, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3292, align 1
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3294 = icmp eq i64 %3283, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %3293, align 1
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3297 = lshr i64 %3283, 63
  %3298 = trunc i64 %3297 to i8
  store i8 %3298, i8* %3296, align 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3299, align 1
  store %struct.Memory* %loadMem_400e98, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 1
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 15
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %RBP.i189
  %3310 = sub i64 %3309, 80
  %3311 = load i64, i64* %RAX.i188
  %3312 = load i64, i64* %PC.i187
  %3313 = add i64 %3312, 4
  store i64 %3313, i64* %PC.i187
  %3314 = inttoptr i64 %3310 to i64*
  store i64 %3311, i64* %3314
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadMem_400ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i186
  %3325 = sub i64 %3324, 72
  %3326 = load i64, i64* %PC.i184
  %3327 = add i64 %3326, 3
  store i64 %3327, i64* %PC.i184
  %3328 = inttoptr i64 %3325 to i32*
  %3329 = load i32, i32* %3328
  %3330 = zext i32 %3329 to i64
  store i64 %3330, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_400ea0, %struct.Memory** %MEMORY
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %RAX.i183
  %3338 = load i64, i64* %PC.i182
  %3339 = add i64 %3338, 3
  store i64 %3339, i64* %PC.i182
  %3340 = trunc i64 %3337 to i32
  %3341 = add i32 1, %3340
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %RAX.i183, align 8
  %3343 = icmp ult i32 %3341, %3340
  %3344 = icmp ult i32 %3341, 1
  %3345 = or i1 %3343, %3344
  %3346 = zext i1 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3346, i8* %3347, align 1
  %3348 = and i32 %3341, 255
  %3349 = call i32 @llvm.ctpop.i32(i32 %3348)
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = xor i8 %3351, 1
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3352, i8* %3353, align 1
  %3354 = xor i64 1, %3337
  %3355 = trunc i64 %3354 to i32
  %3356 = xor i32 %3355, %3341
  %3357 = lshr i32 %3356, 4
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3359, i8* %3360, align 1
  %3361 = icmp eq i32 %3341, 0
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i32 %3341, 31
  %3365 = trunc i32 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3365, i8* %3366, align 1
  %3367 = lshr i32 %3340, 31
  %3368 = xor i32 %3364, %3367
  %3369 = add i32 %3368, %3364
  %3370 = icmp eq i32 %3369, 2
  %3371 = zext i1 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3371, i8* %3372, align 1
  store %struct.Memory* %loadMem_400ea3, %struct.Memory** %MEMORY
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %3378 to i32*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i181
  %3383 = sub i64 %3382, 72
  %3384 = load i32, i32* %EAX.i180
  %3385 = zext i32 %3384 to i64
  %3386 = load i64, i64* %PC.i179
  %3387 = add i64 %3386, 3
  store i64 %3387, i64* %PC.i179
  %3388 = inttoptr i64 %3383 to i32*
  store i32 %3384, i32* %3388
  store %struct.Memory* %loadMem_400ea6, %struct.Memory** %MEMORY
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %PC.i178
  %3393 = add i64 %3392, -228
  %3394 = load i64, i64* %PC.i178
  %3395 = add i64 %3394, 5
  store i64 %3395, i64* %PC.i178
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3393, i64* %3396, align 8
  store %struct.Memory* %loadMem_400ea9, %struct.Memory** %MEMORY
  br label %block_.L_400dc5

block_.L_400eae:                                  ; preds = %block_.L_400dc5
  %loadMem1_400eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3399 to i64*
  %3400 = load i64, i64* %PC.i177
  %3401 = add i64 %3400, -2078
  %3402 = load i64, i64* %PC.i177
  %3403 = add i64 %3402, 5
  %3404 = load i64, i64* %PC.i177
  %3405 = add i64 %3404, 5
  store i64 %3405, i64* %PC.i177
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3407 = load i64, i64* %3406, align 8
  %3408 = add i64 %3407, -8
  %3409 = inttoptr i64 %3408 to i64*
  store i64 %3403, i64* %3409
  store i64 %3408, i64* %3406, align 8
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3401, i64* %3410, align 8
  store %struct.Memory* %loadMem1_400eae, %struct.Memory** %MEMORY
  %loadMem2_400eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eae = load i64, i64* %3
  %call2_400eae = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400eae, %struct.Memory* %loadMem2_400eae)
  store %struct.Memory* %call2_400eae, %struct.Memory** %MEMORY
  %loadMem_400eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 1
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 15
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RBP.i176
  %3421 = sub i64 %3420, 80
  %3422 = load i64, i64* %RAX.i175
  %3423 = load i64, i64* %PC.i174
  %3424 = add i64 %3423, 4
  store i64 %3424, i64* %PC.i174
  %3425 = inttoptr i64 %3421 to i64*
  store i64 %3422, i64* %3425
  store %struct.Memory* %loadMem_400eb3, %struct.Memory** %MEMORY
  %loadMem_400eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 1
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 15
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RBP.i173
  %3436 = sub i64 %3435, 32
  %3437 = load i64, i64* %PC.i171
  %3438 = add i64 %3437, 4
  store i64 %3438, i64* %PC.i171
  %3439 = inttoptr i64 %3436 to i64*
  %3440 = load i64, i64* %3439
  store i64 %3440, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_400eb7, %struct.Memory** %MEMORY
  %loadMem_400ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 5
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3446 to i64*
  %3447 = load i64, i64* %PC.i169
  %3448 = add i64 %3447, 7
  store i64 %3448, i64* %PC.i169
  %3449 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_400ebb, %struct.Memory** %MEMORY
  %loadMem_400ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 5
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RCX.i168
  %3458 = load i64, i64* %PC.i167
  %3459 = add i64 %3458, 3
  store i64 %3459, i64* %PC.i167
  %3460 = trunc i64 %3457 to i32
  %3461 = sub i32 %3460, 1
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RCX.i168, align 8
  %3463 = icmp ult i32 %3460, 1
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3461, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i64 1, %3457
  %3473 = trunc i64 %3472 to i32
  %3474 = xor i32 %3473, %3461
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3461, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3461, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3460, 31
  %3486 = xor i32 %3482, %3485
  %3487 = add i32 %3486, %3485
  %3488 = icmp eq i32 %3487, 2
  %3489 = zext i1 %3488 to i8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3489, i8* %3490, align 1
  store %struct.Memory* %loadMem_400ec2, %struct.Memory** %MEMORY
  %loadMem_400ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 5
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %ECX.i165 = bitcast %union.anon* %3496 to i32*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 7
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %3499 to i64*
  %3500 = load i32, i32* %ECX.i165
  %3501 = zext i32 %3500 to i64
  %3502 = load i64, i64* %PC.i164
  %3503 = add i64 %3502, 3
  store i64 %3503, i64* %PC.i164
  %3504 = shl i64 %3501, 32
  %3505 = ashr exact i64 %3504, 32
  store i64 %3505, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_400ec5, %struct.Memory** %MEMORY
  %loadMem_400ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 7
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RAX.i161
  %3519 = load i64, i64* %RDX.i163
  %3520 = add i64 %3519, %3518
  %3521 = load i64, i64* %PC.i160
  %3522 = add i64 %3521, 4
  store i64 %3522, i64* %PC.i160
  %3523 = inttoptr i64 %3520 to i8*
  %3524 = load i8, i8* %3523
  %3525 = sext i8 %3524 to i64
  %3526 = and i64 %3525, 4294967295
  store i64 %3526, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_400ec8, %struct.Memory** %MEMORY
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 5
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %ECX.i159 = bitcast %union.anon* %3532 to i32*
  %3533 = load i32, i32* %ECX.i159
  %3534 = zext i32 %3533 to i64
  %3535 = load i64, i64* %PC.i158
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC.i158
  %3537 = sub i32 %3533, 49
  %3538 = icmp ult i32 %3533, 49
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3539, i8* %3540, align 1
  %3541 = and i32 %3537, 255
  %3542 = call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3545, i8* %3546, align 1
  %3547 = xor i64 49, %3534
  %3548 = trunc i64 %3547 to i32
  %3549 = xor i32 %3548, %3537
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3552, i8* %3553, align 1
  %3554 = icmp eq i32 %3537, 0
  %3555 = zext i1 %3554 to i8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3555, i8* %3556, align 1
  %3557 = lshr i32 %3537, 31
  %3558 = trunc i32 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3558, i8* %3559, align 1
  %3560 = lshr i32 %3533, 31
  %3561 = xor i32 %3557, %3560
  %3562 = add i32 %3561, %3560
  %3563 = icmp eq i32 %3562, 2
  %3564 = zext i1 %3563 to i8
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3564, i8* %3565, align 1
  store %struct.Memory* %loadMem_400ecc, %struct.Memory** %MEMORY
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %PC.i157
  %3570 = add i64 %3569, 31
  %3571 = load i64, i64* %PC.i157
  %3572 = add i64 %3571, 6
  %3573 = load i64, i64* %PC.i157
  %3574 = add i64 %3573, 6
  store i64 %3574, i64* %PC.i157
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3576 = load i8, i8* %3575, align 1
  %3577 = icmp eq i8 %3576, 0
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %BRANCH_TAKEN, align 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3580 = select i1 %3577, i64 %3570, i64 %3572
  store i64 %3580, i64* %3579, align 8
  store %struct.Memory* %loadMem_400ecf, %struct.Memory** %MEMORY
  %loadBr_400ecf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ecf = icmp eq i8 %loadBr_400ecf, 1
  br i1 %cmpBr_400ecf, label %block_.L_400eee, label %block_400ed5

block_400ed5:                                     ; preds = %block_.L_400eae
  %loadMem_400ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 1
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 15
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %3589 to i64*
  %3590 = load i64, i64* %RBP.i156
  %3591 = sub i64 %3590, 40
  %3592 = load i64, i64* %PC.i154
  %3593 = add i64 %3592, 4
  store i64 %3593, i64* %PC.i154
  %3594 = inttoptr i64 %3591 to i64*
  %3595 = load i64, i64* %3594
  store i64 %3595, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_400ed5, %struct.Memory** %MEMORY
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 1
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 5
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RAX.i152
  %3606 = load i64, i64* %PC.i151
  %3607 = add i64 %3606, 2
  store i64 %3607, i64* %PC.i151
  %3608 = inttoptr i64 %3605 to i32*
  %3609 = load i32, i32* %3608
  %3610 = zext i32 %3609 to i64
  store i64 %3610, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_400ed9, %struct.Memory** %MEMORY
  %loadMem_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 5
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 15
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %RCX.i149
  %3621 = load i64, i64* %RBP.i150
  %3622 = sub i64 %3621, 48
  %3623 = load i64, i64* %PC.i148
  %3624 = add i64 %3623, 3
  store i64 %3624, i64* %PC.i148
  %3625 = trunc i64 %3620 to i32
  %3626 = inttoptr i64 %3622 to i32*
  %3627 = load i32, i32* %3626
  %3628 = add i32 %3627, %3625
  %3629 = zext i32 %3628 to i64
  store i64 %3629, i64* %RCX.i149, align 8
  %3630 = icmp ult i32 %3628, %3625
  %3631 = icmp ult i32 %3628, %3627
  %3632 = or i1 %3630, %3631
  %3633 = zext i1 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3633, i8* %3634, align 1
  %3635 = and i32 %3628, 255
  %3636 = call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3639, i8* %3640, align 1
  %3641 = xor i32 %3627, %3625
  %3642 = xor i32 %3641, %3628
  %3643 = lshr i32 %3642, 4
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3645, i8* %3646, align 1
  %3647 = icmp eq i32 %3628, 0
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3648, i8* %3649, align 1
  %3650 = lshr i32 %3628, 31
  %3651 = trunc i32 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3651, i8* %3652, align 1
  %3653 = lshr i32 %3625, 31
  %3654 = lshr i32 %3627, 31
  %3655 = xor i32 %3650, %3653
  %3656 = xor i32 %3650, %3654
  %3657 = add i32 %3655, %3656
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1
  store %struct.Memory* %loadMem_400edb, %struct.Memory** %MEMORY
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 5
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %ECX.i146 = bitcast %union.anon* %3666 to i32*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i147
  %3671 = sub i64 %3670, 48
  %3672 = load i32, i32* %ECX.i146
  %3673 = zext i32 %3672 to i64
  %3674 = load i64, i64* %PC.i145
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i145
  %3676 = inttoptr i64 %3671 to i32*
  store i32 %3672, i32* %3676
  store %struct.Memory* %loadMem_400ede, %struct.Memory** %MEMORY
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 1
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 15
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %RBP.i144
  %3687 = sub i64 %3686, 40
  %3688 = load i64, i64* %PC.i142
  %3689 = add i64 %3688, 4
  store i64 %3689, i64* %PC.i142
  %3690 = inttoptr i64 %3687 to i64*
  %3691 = load i64, i64* %3690
  store i64 %3691, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_400ee1, %struct.Memory** %MEMORY
  %loadMem_400ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 33
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 1
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 5
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3700 to i64*
  %3701 = load i64, i64* %RAX.i140
  %3702 = add i64 %3701, 4
  %3703 = load i64, i64* %PC.i139
  %3704 = add i64 %3703, 3
  store i64 %3704, i64* %PC.i139
  %3705 = inttoptr i64 %3702 to i32*
  %3706 = load i32, i32* %3705
  %3707 = zext i32 %3706 to i64
  store i64 %3707, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_400ee5, %struct.Memory** %MEMORY
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 5
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 15
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %RCX.i137
  %3718 = load i64, i64* %RBP.i138
  %3719 = sub i64 %3718, 52
  %3720 = load i64, i64* %PC.i136
  %3721 = add i64 %3720, 3
  store i64 %3721, i64* %PC.i136
  %3722 = trunc i64 %3717 to i32
  %3723 = inttoptr i64 %3719 to i32*
  %3724 = load i32, i32* %3723
  %3725 = add i32 %3724, %3722
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RCX.i137, align 8
  %3727 = icmp ult i32 %3725, %3722
  %3728 = icmp ult i32 %3725, %3724
  %3729 = or i1 %3727, %3728
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3730, i8* %3731, align 1
  %3732 = and i32 %3725, 255
  %3733 = call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3736, i8* %3737, align 1
  %3738 = xor i32 %3724, %3722
  %3739 = xor i32 %3738, %3725
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3742, i8* %3743, align 1
  %3744 = icmp eq i32 %3725, 0
  %3745 = zext i1 %3744 to i8
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3745, i8* %3746, align 1
  %3747 = lshr i32 %3725, 31
  %3748 = trunc i32 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3748, i8* %3749, align 1
  %3750 = lshr i32 %3722, 31
  %3751 = lshr i32 %3724, 31
  %3752 = xor i32 %3747, %3750
  %3753 = xor i32 %3747, %3751
  %3754 = add i32 %3752, %3753
  %3755 = icmp eq i32 %3754, 2
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3756, i8* %3757, align 1
  store %struct.Memory* %loadMem_400ee8, %struct.Memory** %MEMORY
  %loadMem_400eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 5
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %ECX.i134 = bitcast %union.anon* %3763 to i32*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 15
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %RBP.i135
  %3768 = sub i64 %3767, 52
  %3769 = load i32, i32* %ECX.i134
  %3770 = zext i32 %3769 to i64
  %3771 = load i64, i64* %PC.i133
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %PC.i133
  %3773 = inttoptr i64 %3768 to i32*
  store i32 %3769, i32* %3773
  store %struct.Memory* %loadMem_400eeb, %struct.Memory** %MEMORY
  br label %block_.L_400eee

block_.L_400eee:                                  ; preds = %block_400ed5, %block_.L_400eae
  %loadMem_400eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 1
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 15
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3782 to i64*
  %3783 = load i64, i64* %RBP.i132
  %3784 = sub i64 %3783, 48
  %3785 = load i64, i64* %PC.i130
  %3786 = add i64 %3785, 4
  store i64 %3786, i64* %PC.i130
  %3787 = inttoptr i64 %3784 to i32*
  %3788 = load i32, i32* %3787
  %3789 = sext i32 %3788 to i64
  store i64 %3789, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_400eee, %struct.Memory** %MEMORY
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 1
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 15
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3798 to i64*
  %3799 = load i64, i64* %RAX.i128
  %3800 = load i64, i64* %RBP.i129
  %3801 = sub i64 %3800, 80
  %3802 = load i64, i64* %PC.i127
  %3803 = add i64 %3802, 4
  store i64 %3803, i64* %PC.i127
  %3804 = inttoptr i64 %3801 to i64*
  %3805 = load i64, i64* %3804
  %3806 = add i64 %3805, %3799
  store i64 %3806, i64* %RAX.i128, align 8
  %3807 = icmp ult i64 %3806, %3799
  %3808 = icmp ult i64 %3806, %3805
  %3809 = or i1 %3807, %3808
  %3810 = zext i1 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3810, i8* %3811, align 1
  %3812 = trunc i64 %3806 to i32
  %3813 = and i32 %3812, 255
  %3814 = call i32 @llvm.ctpop.i32(i32 %3813)
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  %3817 = xor i8 %3816, 1
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3817, i8* %3818, align 1
  %3819 = xor i64 %3805, %3799
  %3820 = xor i64 %3819, %3806
  %3821 = lshr i64 %3820, 4
  %3822 = trunc i64 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3823, i8* %3824, align 1
  %3825 = icmp eq i64 %3806, 0
  %3826 = zext i1 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3826, i8* %3827, align 1
  %3828 = lshr i64 %3806, 63
  %3829 = trunc i64 %3828 to i8
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3829, i8* %3830, align 1
  %3831 = lshr i64 %3799, 63
  %3832 = lshr i64 %3805, 63
  %3833 = xor i64 %3828, %3831
  %3834 = xor i64 %3828, %3832
  %3835 = add i64 %3833, %3834
  %3836 = icmp eq i64 %3835, 2
  %3837 = zext i1 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3837, i8* %3838, align 1
  store %struct.Memory* %loadMem_400ef2, %struct.Memory** %MEMORY
  %loadMem_400ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 1
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RAX.i126
  %3846 = load i64, i64* %PC.i125
  %3847 = add i64 %3846, 4
  store i64 %3847, i64* %PC.i125
  %3848 = and i64 1, %3845
  store i64 %3848, i64* %RAX.i126, align 8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3849, align 1
  %3850 = trunc i64 %3848 to i32
  %3851 = and i32 %3850, 255
  %3852 = call i32 @llvm.ctpop.i32(i32 %3851)
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = xor i8 %3854, 1
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3855, i8* %3856, align 1
  %3857 = icmp eq i64 %3848, 0
  %3858 = zext i1 %3857 to i8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3858, i8* %3859, align 1
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3860, align 1
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3861, align 1
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3862, align 1
  store %struct.Memory* %loadMem_400ef6, %struct.Memory** %MEMORY
  %loadMem_400efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 1
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %3868 to i32*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 5
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %3871 to i64*
  %3872 = load i32, i32* %EAX.i123
  %3873 = zext i32 %3872 to i64
  %3874 = load i64, i64* %PC.i122
  %3875 = add i64 %3874, 2
  store i64 %3875, i64* %PC.i122
  %3876 = and i64 %3873, 4294967295
  store i64 %3876, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_400efa, %struct.Memory** %MEMORY
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 1
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 15
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RBP.i121
  %3887 = sub i64 %3886, 40
  %3888 = load i64, i64* %PC.i119
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %PC.i119
  %3890 = inttoptr i64 %3887 to i64*
  %3891 = load i64, i64* %3890
  store i64 %3891, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_400efc, %struct.Memory** %MEMORY
  %loadMem_400f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 5
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %ECX.i117 = bitcast %union.anon* %3897 to i32*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RAX.i118
  %3902 = load i32, i32* %ECX.i117
  %3903 = zext i32 %3902 to i64
  %3904 = load i64, i64* %PC.i116
  %3905 = add i64 %3904, 2
  store i64 %3905, i64* %PC.i116
  %3906 = inttoptr i64 %3901 to i32*
  store i32 %3902, i32* %3906
  store %struct.Memory* %loadMem_400f00, %struct.Memory** %MEMORY
  %loadMem1_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i115
  %3911 = add i64 %3910, -2162
  %3912 = load i64, i64* %PC.i115
  %3913 = add i64 %3912, 5
  %3914 = load i64, i64* %PC.i115
  %3915 = add i64 %3914, 5
  store i64 %3915, i64* %PC.i115
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3917 = load i64, i64* %3916, align 8
  %3918 = add i64 %3917, -8
  %3919 = inttoptr i64 %3918 to i64*
  store i64 %3913, i64* %3919
  store i64 %3918, i64* %3916, align 8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3911, i64* %3920, align 8
  store %struct.Memory* %loadMem1_400f02, %struct.Memory** %MEMORY
  %loadMem2_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f02 = load i64, i64* %3
  %call2_400f02 = call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* %0, i64 %loadPC_400f02, %struct.Memory* %loadMem2_400f02)
  store %struct.Memory* %call2_400f02, %struct.Memory** %MEMORY
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3924, i64 0, i64 0
  %YMM0.i114 = bitcast %union.VectorReg* %3925 to %"class.std::bitset"*
  %3926 = bitcast %"class.std::bitset"* %YMM0.i114 to i8*
  %3927 = load i64, i64* %PC.i113
  %3928 = add i64 %3927, 433
  %3929 = load i64, i64* %PC.i113
  %3930 = add i64 %3929, 8
  store i64 %3930, i64* %PC.i113
  %3931 = inttoptr i64 %3928 to double*
  %3932 = load double, double* %3931
  %3933 = bitcast i8* %3926 to double*
  store double %3932, double* %3933, align 1
  %3934 = getelementptr inbounds i8, i8* %3926, i64 8
  %3935 = bitcast i8* %3934 to double*
  store double 0.000000e+00, double* %3935, align 1
  store %struct.Memory* %loadMem_400f07, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 33
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 5
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %3941 to i64*
  %3942 = load i64, i64* %PC.i111
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i111
  store i64 10000, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 5
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %ECX.i109 = bitcast %union.anon* %3949 to i32*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 7
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %3952 to i64*
  %3953 = load i32, i32* %ECX.i109
  %3954 = zext i32 %3953 to i64
  %3955 = load i64, i64* %PC.i108
  %3956 = add i64 %3955, 2
  store i64 %3956, i64* %PC.i108
  %3957 = and i64 %3954, 4294967295
  store i64 %3957, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_400f14, %struct.Memory** %MEMORY
  %loadMem_400f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 7
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 15
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RBP.i107
  %3968 = sub i64 %3967, 120
  %3969 = load i64, i64* %RDX.i106
  %3970 = load i64, i64* %PC.i105
  %3971 = add i64 %3970, 4
  store i64 %3971, i64* %PC.i105
  %3972 = inttoptr i64 %3968 to i64*
  store i64 %3969, i64* %3972
  store %struct.Memory* %loadMem_400f16, %struct.Memory** %MEMORY
  %loadMem_400f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 33
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %PC.i104
  %3977 = add i64 %3976, 2
  store i64 %3977, i64* %PC.i104
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3980 = load i64, i64* %3979, align 8
  %3981 = ashr i64 %3980, 63
  store i64 %3981, i64* %3978, align 8
  store %struct.Memory* %loadMem_400f1a, %struct.Memory** %MEMORY
  %loadMem_400f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 9
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RSI.i102 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 15
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RBP.i103
  %3992 = sub i64 %3991, 120
  %3993 = load i64, i64* %PC.i101
  %3994 = add i64 %3993, 4
  store i64 %3994, i64* %PC.i101
  %3995 = inttoptr i64 %3992 to i64*
  %3996 = load i64, i64* %3995
  store i64 %3996, i64* %RSI.i102, align 8
  store %struct.Memory* %loadMem_400f1c, %struct.Memory** %MEMORY
  %loadMem_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 9
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4002 to i64*
  %4003 = load i64, i64* %RSI.i
  %4004 = load i64, i64* %PC.i98
  %4005 = add i64 %4004, 3
  store i64 %4005, i64* %PC.i98
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4007 = load i64, i64* %4006, align 8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4009 = load i64, i64* %4008, align 8
  %4010 = sext i64 %4003 to i128
  %4011 = and i128 %4010, -18446744073709551616
  %4012 = zext i64 %4009 to i128
  %4013 = shl i128 %4012, 64
  %4014 = zext i64 %4007 to i128
  %4015 = or i128 %4013, %4014
  %4016 = zext i64 %4003 to i128
  %4017 = or i128 %4011, %4016
  %4018 = sdiv i128 %4015, %4017
  %4019 = trunc i128 %4018 to i64
  %4020 = and i128 %4018, 18446744073709551615
  %4021 = sext i64 %4019 to i128
  %4022 = and i128 %4021, -18446744073709551616
  %4023 = or i128 %4022, %4020
  %4024 = icmp eq i128 %4018, %4023
  br i1 %4024, label %4029, label %4025

; <label>:4025:                                   ; preds = %block_.L_400eee
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4027 = load i64, i64* %4026, align 8
  %4028 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4027, %struct.Memory* %loadMem_400f20)
  br label %routine_idivq__rsi.exit

; <label>:4029:                                   ; preds = %block_.L_400eee
  %4030 = srem i128 %4015, %4017
  %4031 = trunc i128 %4030 to i64
  store i64 %4019, i64* %4006, align 8
  store i64 %4031, i64* %4008, align 8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4032, align 1
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4033, align 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4034, align 1
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4035, align 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4036, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4037, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %4025, %4029
  %4038 = phi %struct.Memory* [ %4028, %4025 ], [ %loadMem_400f20, %4029 ]
  store %struct.Memory* %4038, %struct.Memory** %MEMORY
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 7
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4045, i64 0, i64 1
  %YMM1.i97 = bitcast %union.VectorReg* %4046 to %"class.std::bitset"*
  %4047 = bitcast %"class.std::bitset"* %YMM1.i97 to i8*
  %4048 = load i64, i64* %RDX.i
  %4049 = load i64, i64* %PC.i96
  %4050 = add i64 %4049, 5
  store i64 %4050, i64* %PC.i96
  %4051 = sitofp i64 %4048 to double
  %4052 = bitcast i8* %4047 to double*
  store double %4051, double* %4052, align 1
  store %struct.Memory* %loadMem_400f23, %struct.Memory** %MEMORY
  %loadMem_400f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4056, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4057 to %"class.std::bitset"*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4058, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %4059 to %union.vec128_t*
  %4060 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4061 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4062 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %4063 = load i64, i64* %PC.i94
  %4064 = add i64 %4063, 4
  store i64 %4064, i64* %PC.i94
  %4065 = bitcast i8* %4061 to double*
  %4066 = load double, double* %4065, align 1
  %4067 = getelementptr inbounds i8, i8* %4061, i64 8
  %4068 = bitcast i8* %4067 to i64*
  %4069 = load i64, i64* %4068, align 1
  %4070 = bitcast i8* %4062 to double*
  %4071 = load double, double* %4070, align 1
  %4072 = fdiv double %4066, %4071
  %4073 = bitcast i8* %4060 to double*
  store double %4072, double* %4073, align 1
  %4074 = getelementptr inbounds i8, i8* %4060, i64 8
  %4075 = bitcast i8* %4074 to i64*
  store i64 %4069, i64* %4075, align 1
  store %struct.Memory* %loadMem_400f28, %struct.Memory** %MEMORY
  %loadMem_400f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 33
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 15
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4082, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4083 to %union.vec128_t*
  %4084 = load i64, i64* %RBP.i93
  %4085 = sub i64 %4084, 88
  %4086 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4087 = load i64, i64* %PC.i92
  %4088 = add i64 %4087, 5
  store i64 %4088, i64* %PC.i92
  %4089 = bitcast i8* %4086 to double*
  %4090 = load double, double* %4089, align 1
  %4091 = inttoptr i64 %4085 to double*
  store double %4090, double* %4091
  store %struct.Memory* %loadMem_400f2c, %struct.Memory** %MEMORY
  %loadMem_400f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 15
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4098, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4099 to %"class.std::bitset"*
  %4100 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4101 = load i64, i64* %RBP.i91
  %4102 = sub i64 %4101, 24
  %4103 = load i64, i64* %PC.i90
  %4104 = add i64 %4103, 5
  store i64 %4104, i64* %PC.i90
  %4105 = inttoptr i64 %4102 to double*
  %4106 = load double, double* %4105
  %4107 = bitcast i8* %4100 to double*
  store double %4106, double* %4107, align 1
  %4108 = getelementptr inbounds i8, i8* %4100, i64 8
  %4109 = bitcast i8* %4108 to double*
  store double 0.000000e+00, double* %4109, align 1
  store %struct.Memory* %loadMem_400f31, %struct.Memory** %MEMORY
  %loadMem_400f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 15
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4116, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4117 to %union.vec128_t*
  %4118 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4119 = load i64, i64* %RBP.i86
  %4120 = sub i64 %4119, 88
  %4121 = load i64, i64* %PC.i85
  %4122 = add i64 %4121, 5
  store i64 %4122, i64* %PC.i85
  %4123 = bitcast i8* %4118 to double*
  %4124 = load double, double* %4123, align 1
  %4125 = inttoptr i64 %4120 to double*
  %4126 = load double, double* %4125
  %4127 = fcmp uno double %4124, %4126
  br i1 %4127, label %4128, label %4140

; <label>:4128:                                   ; preds = %routine_idivq__rsi.exit
  %4129 = fadd double %4124, %4126
  %4130 = bitcast double %4129 to i64
  %4131 = and i64 %4130, 9221120237041090560
  %4132 = icmp eq i64 %4131, 9218868437227405312
  %4133 = and i64 %4130, 2251799813685247
  %4134 = icmp ne i64 %4133, 0
  %4135 = and i1 %4132, %4134
  br i1 %4135, label %4136, label %4146

; <label>:4136:                                   ; preds = %4128
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4138 = load i64, i64* %4137, align 8
  %4139 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4138, %struct.Memory* %loadMem_400f36)
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

; <label>:4140:                                   ; preds = %routine_idivq__rsi.exit
  %4141 = fcmp ogt double %4124, %4126
  br i1 %4141, label %4146, label %4142

; <label>:4142:                                   ; preds = %4140
  %4143 = fcmp olt double %4124, %4126
  br i1 %4143, label %4146, label %4144

; <label>:4144:                                   ; preds = %4142
  %4145 = fcmp oeq double %4124, %4126
  br i1 %4145, label %4146, label %4153

; <label>:4146:                                   ; preds = %4144, %4142, %4140, %4128
  %4147 = phi i8 [ 0, %4140 ], [ 0, %4142 ], [ 1, %4144 ], [ 1, %4128 ]
  %4148 = phi i8 [ 0, %4140 ], [ 0, %4142 ], [ 0, %4144 ], [ 1, %4128 ]
  %4149 = phi i8 [ 0, %4140 ], [ 1, %4142 ], [ 0, %4144 ], [ 1, %4128 ]
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4147, i8* %4150, align 1
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4148, i8* %4151, align 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4149, i8* %4152, align 1
  br label %4153

; <label>:4153:                                   ; preds = %4146, %4144
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4154, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4155, align 1
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4156, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

routine_ucomisd_MINUS0x58__rbp____xmm0.exit:      ; preds = %4136, %4153
  %4157 = phi %struct.Memory* [ %4139, %4136 ], [ %loadMem_400f36, %4153 ]
  store %struct.Memory* %4157, %struct.Memory** %MEMORY
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4160 to i64*
  %4161 = load i64, i64* %PC.i84
  %4162 = add i64 %4161, 18
  %4163 = load i64, i64* %PC.i84
  %4164 = add i64 %4163, 6
  %4165 = load i64, i64* %PC.i84
  %4166 = add i64 %4165, 6
  store i64 %4166, i64* %PC.i84
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4168 = load i8, i8* %4167, align 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4170 = load i8, i8* %4169, align 1
  %4171 = or i8 %4170, %4168
  %4172 = icmp ne i8 %4171, 0
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %BRANCH_TAKEN, align 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4175 = select i1 %4172, i64 %4162, i64 %4164
  store i64 %4175, i64* %4174, align 8
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadBr_400f3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f3b = icmp eq i8 %loadBr_400f3b, 1
  br i1 %cmpBr_400f3b, label %block_.L_400f4d, label %block_400f41

block_400f41:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 1
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 15
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4184 to i64*
  %4185 = load i64, i64* %RBP.i83
  %4186 = sub i64 %4185, 80
  %4187 = load i64, i64* %PC.i81
  %4188 = add i64 %4187, 4
  store i64 %4188, i64* %PC.i81
  %4189 = inttoptr i64 %4186 to i64*
  %4190 = load i64, i64* %4189
  store i64 %4190, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_400f41, %struct.Memory** %MEMORY
  %loadMem_400f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 1
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %RAX.i80
  %4198 = load i64, i64* %PC.i79
  %4199 = add i64 %4198, 4
  store i64 %4199, i64* %PC.i79
  %4200 = xor i64 1, %4197
  store i64 %4200, i64* %RAX.i80, align 8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4201, align 1
  %4202 = trunc i64 %4200 to i32
  %4203 = and i32 %4202, 255
  %4204 = call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4207, i8* %4208, align 1
  %4209 = icmp eq i64 %4200, 0
  %4210 = zext i1 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4210, i8* %4211, align 1
  %4212 = lshr i64 %4200, 63
  %4213 = trunc i64 %4212 to i8
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4213, i8* %4214, align 1
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4215, align 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4216, align 1
  store %struct.Memory* %loadMem_400f45, %struct.Memory** %MEMORY
  %loadMem_400f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 1
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 15
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %RBP.i78
  %4227 = sub i64 %4226, 80
  %4228 = load i64, i64* %RAX.i77
  %4229 = load i64, i64* %PC.i76
  %4230 = add i64 %4229, 4
  store i64 %4230, i64* %PC.i76
  %4231 = inttoptr i64 %4227 to i64*
  store i64 %4228, i64* %4231
  store %struct.Memory* %loadMem_400f49, %struct.Memory** %MEMORY
  br label %block_.L_400f4d

block_.L_400f4d:                                  ; preds = %block_400f41, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %loadMem_400f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 1
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 15
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RBP.i75
  %4242 = sub i64 %4241, 52
  %4243 = load i64, i64* %PC.i73
  %4244 = add i64 %4243, 4
  store i64 %4244, i64* %PC.i73
  %4245 = inttoptr i64 %4242 to i32*
  %4246 = load i32, i32* %4245
  %4247 = sext i32 %4246 to i64
  store i64 %4247, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_400f4d, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 1
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 15
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RAX.i71
  %4258 = load i64, i64* %RBP.i72
  %4259 = sub i64 %4258, 80
  %4260 = load i64, i64* %PC.i70
  %4261 = add i64 %4260, 4
  store i64 %4261, i64* %PC.i70
  %4262 = inttoptr i64 %4259 to i64*
  %4263 = load i64, i64* %4262
  %4264 = add i64 %4263, %4257
  store i64 %4264, i64* %RAX.i71, align 8
  %4265 = icmp ult i64 %4264, %4257
  %4266 = icmp ult i64 %4264, %4263
  %4267 = or i1 %4265, %4266
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4268, i8* %4269, align 1
  %4270 = trunc i64 %4264 to i32
  %4271 = and i32 %4270, 255
  %4272 = call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4275, i8* %4276, align 1
  %4277 = xor i64 %4263, %4257
  %4278 = xor i64 %4277, %4264
  %4279 = lshr i64 %4278, 4
  %4280 = trunc i64 %4279 to i8
  %4281 = and i8 %4280, 1
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4281, i8* %4282, align 1
  %4283 = icmp eq i64 %4264, 0
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4284, i8* %4285, align 1
  %4286 = lshr i64 %4264, 63
  %4287 = trunc i64 %4286 to i8
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4287, i8* %4288, align 1
  %4289 = lshr i64 %4257, 63
  %4290 = lshr i64 %4263, 63
  %4291 = xor i64 %4286, %4289
  %4292 = xor i64 %4286, %4290
  %4293 = add i64 %4291, %4292
  %4294 = icmp eq i64 %4293, 2
  %4295 = zext i1 %4294 to i8
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4295, i8* %4296, align 1
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %RAX.i69
  %4304 = load i64, i64* %PC.i68
  %4305 = add i64 %4304, 4
  store i64 %4305, i64* %PC.i68
  %4306 = and i64 1, %4303
  store i64 %4306, i64* %RAX.i69, align 8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4307, align 1
  %4308 = trunc i64 %4306 to i32
  %4309 = and i32 %4308, 255
  %4310 = call i32 @llvm.ctpop.i32(i32 %4309)
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  %4313 = xor i8 %4312, 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4313, i8* %4314, align 1
  %4315 = icmp eq i64 %4306, 0
  %4316 = zext i1 %4315 to i8
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4316, i8* %4317, align 1
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4318, align 1
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4319, align 1
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4320, align 1
  store %struct.Memory* %loadMem_400f55, %struct.Memory** %MEMORY
  %loadMem_400f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 1
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %4326 to i32*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 5
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4329 to i64*
  %4330 = load i32, i32* %EAX.i66
  %4331 = zext i32 %4330 to i64
  %4332 = load i64, i64* %PC.i65
  %4333 = add i64 %4332, 2
  store i64 %4333, i64* %PC.i65
  %4334 = and i64 %4331, 4294967295
  store i64 %4334, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_400f59, %struct.Memory** %MEMORY
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 1
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 15
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4343 to i64*
  %4344 = load i64, i64* %RBP.i64
  %4345 = sub i64 %4344, 40
  %4346 = load i64, i64* %PC.i62
  %4347 = add i64 %4346, 4
  store i64 %4347, i64* %PC.i62
  %4348 = inttoptr i64 %4345 to i64*
  %4349 = load i64, i64* %4348
  store i64 %4349, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_400f5b, %struct.Memory** %MEMORY
  %loadMem_400f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 5
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %ECX.i60 = bitcast %union.anon* %4355 to i32*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 1
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RAX.i61
  %4360 = add i64 %4359, 4
  %4361 = load i32, i32* %ECX.i60
  %4362 = zext i32 %4361 to i64
  %4363 = load i64, i64* %PC.i59
  %4364 = add i64 %4363, 3
  store i64 %4364, i64* %PC.i59
  %4365 = inttoptr i64 %4360 to i32*
  store i32 %4361, i32* %4365
  store %struct.Memory* %loadMem_400f5f, %struct.Memory** %MEMORY
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 33
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 1
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 15
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RBP.i58
  %4376 = sub i64 %4375, 16
  %4377 = load i64, i64* %PC.i56
  %4378 = add i64 %4377, 4
  store i64 %4378, i64* %PC.i56
  %4379 = inttoptr i64 %4376 to i64*
  %4380 = load i64, i64* %4379
  store i64 %4380, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_400f62, %struct.Memory** %MEMORY
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 33
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4383 to i64*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 1
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 15
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %RBP.i55
  %4391 = sub i64 %4390, 40
  %4392 = load i64, i64* %RAX.i54
  %4393 = load i64, i64* %PC.i53
  %4394 = add i64 %4393, 4
  store i64 %4394, i64* %PC.i53
  %4395 = inttoptr i64 %4391 to i64*
  store i64 %4392, i64* %4395
  store %struct.Memory* %loadMem_400f66, %struct.Memory** %MEMORY
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 1
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 15
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %RBP.i52
  %4406 = sub i64 %4405, 64
  %4407 = load i64, i64* %PC.i50
  %4408 = add i64 %4407, 3
  store i64 %4408, i64* %PC.i50
  %4409 = inttoptr i64 %4406 to i32*
  %4410 = load i32, i32* %4409
  %4411 = zext i32 %4410 to i64
  store i64 %4411, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_400f6a, %struct.Memory** %MEMORY
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 1
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RAX.i49
  %4419 = load i64, i64* %PC.i48
  %4420 = add i64 %4419, 3
  store i64 %4420, i64* %PC.i48
  %4421 = trunc i64 %4418 to i32
  %4422 = add i32 1, %4421
  %4423 = zext i32 %4422 to i64
  store i64 %4423, i64* %RAX.i49, align 8
  %4424 = icmp ult i32 %4422, %4421
  %4425 = icmp ult i32 %4422, 1
  %4426 = or i1 %4424, %4425
  %4427 = zext i1 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4427, i8* %4428, align 1
  %4429 = and i32 %4422, 255
  %4430 = call i32 @llvm.ctpop.i32(i32 %4429)
  %4431 = trunc i32 %4430 to i8
  %4432 = and i8 %4431, 1
  %4433 = xor i8 %4432, 1
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4433, i8* %4434, align 1
  %4435 = xor i64 1, %4418
  %4436 = trunc i64 %4435 to i32
  %4437 = xor i32 %4436, %4422
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4440, i8* %4441, align 1
  %4442 = icmp eq i32 %4422, 0
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4443, i8* %4444, align 1
  %4445 = lshr i32 %4422, 31
  %4446 = trunc i32 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4446, i8* %4447, align 1
  %4448 = lshr i32 %4421, 31
  %4449 = xor i32 %4445, %4448
  %4450 = add i32 %4449, %4445
  %4451 = icmp eq i32 %4450, 2
  %4452 = zext i1 %4451 to i8
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4452, i8* %4453, align 1
  store %struct.Memory* %loadMem_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 1
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %4459 to i32*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 15
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %RBP.i47
  %4464 = sub i64 %4463, 64
  %4465 = load i32, i32* %EAX.i46
  %4466 = zext i32 %4465 to i64
  %4467 = load i64, i64* %PC.i45
  %4468 = add i64 %4467, 3
  store i64 %4468, i64* %PC.i45
  %4469 = inttoptr i64 %4464 to i32*
  store i32 %4465, i32* %4469
  store %struct.Memory* %loadMem_400f70, %struct.Memory** %MEMORY
  %loadMem_400f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %PC.i44
  %4474 = add i64 %4473, -757
  %4475 = load i64, i64* %PC.i44
  %4476 = add i64 %4475, 5
  store i64 %4476, i64* %PC.i44
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4474, i64* %4477, align 8
  store %struct.Memory* %loadMem_400f73, %struct.Memory** %MEMORY
  br label %block_.L_400c7e

block_.L_400f78:                                  ; preds = %block_.L_400c7e
  %loadMem_400f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 33
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 15
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4483 to i64*
  %4484 = load i64, i64* %RBP.i43
  %4485 = sub i64 %4484, 68
  %4486 = load i64, i64* %PC.i42
  %4487 = add i64 %4486, 7
  store i64 %4487, i64* %PC.i42
  %4488 = inttoptr i64 %4485 to i32*
  store i32 0, i32* %4488
  store %struct.Memory* %loadMem_400f78, %struct.Memory** %MEMORY
  br label %block_.L_400f7f

block_.L_400f7f:                                  ; preds = %block_.L_400fa9, %block_.L_400f78
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 1
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 15
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4497 to i64*
  %4498 = load i64, i64* %RBP.i41
  %4499 = sub i64 %4498, 68
  %4500 = load i64, i64* %PC.i39
  %4501 = add i64 %4500, 3
  store i64 %4501, i64* %PC.i39
  %4502 = inttoptr i64 %4499 to i32*
  %4503 = load i32, i32* %4502
  %4504 = zext i32 %4503 to i64
  store i64 %4504, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_400f7f, %struct.Memory** %MEMORY
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 1
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %EAX.i38 = bitcast %union.anon* %4510 to i32*
  %4511 = load i32, i32* %EAX.i38
  %4512 = zext i32 %4511 to i64
  %4513 = load i64, i64* %PC.i37
  %4514 = add i64 %4513, 7
  store i64 %4514, i64* %PC.i37
  %4515 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %4516 = sub i32 %4511, %4515
  %4517 = icmp ult i32 %4511, %4515
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4518, i8* %4519, align 1
  %4520 = and i32 %4516, 255
  %4521 = call i32 @llvm.ctpop.i32(i32 %4520)
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = xor i8 %4523, 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4524, i8* %4525, align 1
  %4526 = xor i32 %4515, %4511
  %4527 = xor i32 %4526, %4516
  %4528 = lshr i32 %4527, 4
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4530, i8* %4531, align 1
  %4532 = icmp eq i32 %4516, 0
  %4533 = zext i1 %4532 to i8
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4533, i8* %4534, align 1
  %4535 = lshr i32 %4516, 31
  %4536 = trunc i32 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4536, i8* %4537, align 1
  %4538 = lshr i32 %4511, 31
  %4539 = lshr i32 %4515, 31
  %4540 = xor i32 %4539, %4538
  %4541 = xor i32 %4535, %4538
  %4542 = add i32 %4541, %4540
  %4543 = icmp eq i32 %4542, 2
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4544, i8* %4545, align 1
  store %struct.Memory* %loadMem_400f82, %struct.Memory** %MEMORY
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %PC.i36
  %4550 = add i64 %4549, 58
  %4551 = load i64, i64* %PC.i36
  %4552 = add i64 %4551, 6
  %4553 = load i64, i64* %PC.i36
  %4554 = add i64 %4553, 6
  store i64 %4554, i64* %PC.i36
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4556 = load i8, i8* %4555, align 1
  %4557 = icmp ne i8 %4556, 0
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4559 = load i8, i8* %4558, align 1
  %4560 = icmp ne i8 %4559, 0
  %4561 = xor i1 %4557, %4560
  %4562 = xor i1 %4561, true
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %BRANCH_TAKEN, align 1
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4565 = select i1 %4561, i64 %4552, i64 %4550
  store i64 %4565, i64* %4564, align 8
  store %struct.Memory* %loadMem_400f89, %struct.Memory** %MEMORY
  %loadBr_400f89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f89 = icmp eq i8 %loadBr_400f89, 1
  br i1 %cmpBr_400f89, label %block_.L_400fc3, label %block_400f8f

block_400f8f:                                     ; preds = %block_.L_400f7f
  %loadMem_400f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 1
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 15
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %RBP.i35
  %4576 = sub i64 %4575, 40
  %4577 = load i64, i64* %PC.i33
  %4578 = add i64 %4577, 4
  store i64 %4578, i64* %PC.i33
  %4579 = inttoptr i64 %4576 to i64*
  %4580 = load i64, i64* %4579
  store i64 %4580, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_400f8f, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 1
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 5
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RAX.i32
  %4591 = load i64, i64* %PC.i31
  %4592 = add i64 %4591, 2
  store i64 %4592, i64* %PC.i31
  %4593 = inttoptr i64 %4590 to i32*
  %4594 = load i32, i32* %4593
  %4595 = zext i32 %4594 to i64
  store i64 %4595, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 33
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4598 to i64*
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 1
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 15
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %RBP.i30
  %4606 = sub i64 %4605, 40
  %4607 = load i64, i64* %PC.i28
  %4608 = add i64 %4607, 4
  store i64 %4608, i64* %PC.i28
  %4609 = inttoptr i64 %4606 to i64*
  %4610 = load i64, i64* %4609
  store i64 %4610, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400f95, %struct.Memory** %MEMORY
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 33
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 5
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4616 to i32*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 1
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4619 to i64*
  %4620 = load i32, i32* %ECX.i
  %4621 = zext i32 %4620 to i64
  %4622 = load i64, i64* %RAX.i27
  %4623 = add i64 %4622, 4
  %4624 = load i64, i64* %PC.i26
  %4625 = add i64 %4624, 3
  store i64 %4625, i64* %PC.i26
  %4626 = inttoptr i64 %4623 to i32*
  %4627 = load i32, i32* %4626
  %4628 = sub i32 %4620, %4627
  %4629 = icmp ult i32 %4620, %4627
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4630, i8* %4631, align 1
  %4632 = and i32 %4628, 255
  %4633 = call i32 @llvm.ctpop.i32(i32 %4632)
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  %4636 = xor i8 %4635, 1
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4636, i8* %4637, align 1
  %4638 = xor i32 %4627, %4620
  %4639 = xor i32 %4638, %4628
  %4640 = lshr i32 %4639, 4
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4642, i8* %4643, align 1
  %4644 = icmp eq i32 %4628, 0
  %4645 = zext i1 %4644 to i8
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4645, i8* %4646, align 1
  %4647 = lshr i32 %4628, 31
  %4648 = trunc i32 %4647 to i8
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4648, i8* %4649, align 1
  %4650 = lshr i32 %4620, 31
  %4651 = lshr i32 %4627, 31
  %4652 = xor i32 %4651, %4650
  %4653 = xor i32 %4647, %4650
  %4654 = add i32 %4653, %4652
  %4655 = icmp eq i32 %4654, 2
  %4656 = zext i1 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4656, i8* %4657, align 1
  store %struct.Memory* %loadMem_400f99, %struct.Memory** %MEMORY
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %PC.i25
  %4662 = add i64 %4661, 13
  %4663 = load i64, i64* %PC.i25
  %4664 = add i64 %4663, 6
  %4665 = load i64, i64* %PC.i25
  %4666 = add i64 %4665, 6
  store i64 %4666, i64* %PC.i25
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4668 = load i8, i8* %4667, align 1
  store i8 %4668, i8* %BRANCH_TAKEN, align 1
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4670 = icmp ne i8 %4668, 0
  %4671 = select i1 %4670, i64 %4662, i64 %4664
  store i64 %4671, i64* %4669, align 8
  store %struct.Memory* %loadMem_400f9c, %struct.Memory** %MEMORY
  %loadBr_400f9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f9c = icmp eq i8 %loadBr_400f9c, 1
  br i1 %cmpBr_400f9c, label %block_.L_400fa9, label %block_400fa2

block_400fa2:                                     ; preds = %block_400f8f
  %loadMem_400fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 15
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %RBP.i24
  %4679 = sub i64 %4678, 44
  %4680 = load i64, i64* %PC.i23
  %4681 = add i64 %4680, 7
  store i64 %4681, i64* %PC.i23
  %4682 = inttoptr i64 %4679 to i32*
  store i32 1, i32* %4682
  store %struct.Memory* %loadMem_400fa2, %struct.Memory** %MEMORY
  br label %block_.L_400fa9

block_.L_400fa9:                                  ; preds = %block_400fa2, %block_400f8f
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 33
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 1
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 15
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RBP.i22
  %4693 = sub i64 %4692, 40
  %4694 = load i64, i64* %PC.i20
  %4695 = add i64 %4694, 4
  store i64 %4695, i64* %PC.i20
  %4696 = inttoptr i64 %4693 to i64*
  %4697 = load i64, i64* %4696
  store i64 %4697, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_400fa9, %struct.Memory** %MEMORY
  %loadMem_400fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 1
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4703 to i64*
  %4704 = load i64, i64* %RAX.i19
  %4705 = add i64 %4704, 8
  %4706 = load i64, i64* %PC.i18
  %4707 = add i64 %4706, 4
  store i64 %4707, i64* %PC.i18
  %4708 = inttoptr i64 %4705 to i64*
  %4709 = load i64, i64* %4708
  store i64 %4709, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400fad, %struct.Memory** %MEMORY
  %loadMem_400fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 33
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 1
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 15
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4718 to i64*
  %4719 = load i64, i64* %RBP.i17
  %4720 = sub i64 %4719, 40
  %4721 = load i64, i64* %RAX.i16
  %4722 = load i64, i64* %PC.i15
  %4723 = add i64 %4722, 4
  store i64 %4723, i64* %PC.i15
  %4724 = inttoptr i64 %4720 to i64*
  store i64 %4721, i64* %4724
  store %struct.Memory* %loadMem_400fb1, %struct.Memory** %MEMORY
  %loadMem_400fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 1
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i14
  %4735 = sub i64 %4734, 68
  %4736 = load i64, i64* %PC.i12
  %4737 = add i64 %4736, 3
  store i64 %4737, i64* %PC.i12
  %4738 = inttoptr i64 %4735 to i32*
  %4739 = load i32, i32* %4738
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_400fb5, %struct.Memory** %MEMORY
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 1
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %4746 to i64*
  %4747 = load i64, i64* %RAX.i11
  %4748 = load i64, i64* %PC.i10
  %4749 = add i64 %4748, 3
  store i64 %4749, i64* %PC.i10
  %4750 = trunc i64 %4747 to i32
  %4751 = add i32 1, %4750
  %4752 = zext i32 %4751 to i64
  store i64 %4752, i64* %RAX.i11, align 8
  %4753 = icmp ult i32 %4751, %4750
  %4754 = icmp ult i32 %4751, 1
  %4755 = or i1 %4753, %4754
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4756, i8* %4757, align 1
  %4758 = and i32 %4751, 255
  %4759 = call i32 @llvm.ctpop.i32(i32 %4758)
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = xor i8 %4761, 1
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4762, i8* %4763, align 1
  %4764 = xor i64 1, %4747
  %4765 = trunc i64 %4764 to i32
  %4766 = xor i32 %4765, %4751
  %4767 = lshr i32 %4766, 4
  %4768 = trunc i32 %4767 to i8
  %4769 = and i8 %4768, 1
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4769, i8* %4770, align 1
  %4771 = icmp eq i32 %4751, 0
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4772, i8* %4773, align 1
  %4774 = lshr i32 %4751, 31
  %4775 = trunc i32 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4775, i8* %4776, align 1
  %4777 = lshr i32 %4750, 31
  %4778 = xor i32 %4774, %4777
  %4779 = add i32 %4778, %4774
  %4780 = icmp eq i32 %4779, 2
  %4781 = zext i1 %4780 to i8
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4781, i8* %4782, align 1
  store %struct.Memory* %loadMem_400fb8, %struct.Memory** %MEMORY
  %loadMem_400fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4788 to i32*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RBP.i9
  %4793 = sub i64 %4792, 68
  %4794 = load i32, i32* %EAX.i
  %4795 = zext i32 %4794 to i64
  %4796 = load i64, i64* %PC.i8
  %4797 = add i64 %4796, 3
  store i64 %4797, i64* %PC.i8
  %4798 = inttoptr i64 %4793 to i32*
  store i32 %4794, i32* %4798
  store %struct.Memory* %loadMem_400fbb, %struct.Memory** %MEMORY
  %loadMem_400fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %PC.i7
  %4803 = add i64 %4802, -63
  %4804 = load i64, i64* %PC.i7
  %4805 = add i64 %4804, 5
  store i64 %4805, i64* %PC.i7
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4803, i64* %4806, align 8
  store %struct.Memory* %loadMem_400fbe, %struct.Memory** %MEMORY
  br label %block_.L_400f7f

block_.L_400fc3:                                  ; preds = %block_.L_400f7f
  %loadMem_400fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 1
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i6
  %4817 = sub i64 %4816, 44
  %4818 = load i64, i64* %PC.i5
  %4819 = add i64 %4818, 3
  store i64 %4819, i64* %PC.i5
  %4820 = inttoptr i64 %4817 to i32*
  %4821 = load i32, i32* %4820
  %4822 = zext i32 %4821 to i64
  store i64 %4822, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400fc3, %struct.Memory** %MEMORY
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 13
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4828 to i64*
  %4829 = load i64, i64* %RSP.i
  %4830 = load i64, i64* %PC.i4
  %4831 = add i64 %4830, 7
  store i64 %4831, i64* %PC.i4
  %4832 = add i64 128, %4829
  store i64 %4832, i64* %RSP.i, align 8
  %4833 = icmp ult i64 %4832, %4829
  %4834 = icmp ult i64 %4832, 128
  %4835 = or i1 %4833, %4834
  %4836 = zext i1 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4836, i8* %4837, align 1
  %4838 = trunc i64 %4832 to i32
  %4839 = and i32 %4838, 255
  %4840 = call i32 @llvm.ctpop.i32(i32 %4839)
  %4841 = trunc i32 %4840 to i8
  %4842 = and i8 %4841, 1
  %4843 = xor i8 %4842, 1
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4843, i8* %4844, align 1
  %4845 = xor i64 128, %4829
  %4846 = xor i64 %4845, %4832
  %4847 = lshr i64 %4846, 4
  %4848 = trunc i64 %4847 to i8
  %4849 = and i8 %4848, 1
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4849, i8* %4850, align 1
  %4851 = icmp eq i64 %4832, 0
  %4852 = zext i1 %4851 to i8
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4852, i8* %4853, align 1
  %4854 = lshr i64 %4832, 63
  %4855 = trunc i64 %4854 to i8
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4855, i8* %4856, align 1
  %4857 = lshr i64 %4829, 63
  %4858 = xor i64 %4854, %4857
  %4859 = add i64 %4858, %4854
  %4860 = icmp eq i64 %4859, 2
  %4861 = zext i1 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4861, i8* %4862, align 1
  store %struct.Memory* %loadMem_400fc6, %struct.Memory** %MEMORY
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 15
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4868 to i64*
  %4869 = load i64, i64* %PC.i2
  %4870 = add i64 %4869, 1
  store i64 %4870, i64* %PC.i2
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4872 = load i64, i64* %4871, align 8
  %4873 = add i64 %4872, 8
  %4874 = inttoptr i64 %4872 to i64*
  %4875 = load i64, i64* %4874
  store i64 %4875, i64* %RBP.i3, align 8
  store i64 %4873, i64* %4871, align 8
  store %struct.Memory* %loadMem_400fcd, %struct.Memory** %MEMORY
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 33
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4878 to i64*
  %4879 = load i64, i64* %PC.i1
  %4880 = add i64 %4879, 1
  store i64 %4880, i64* %PC.i1
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4883 = load i64, i64* %4882, align 8
  %4884 = inttoptr i64 %4883 to i64*
  %4885 = load i64, i64* %4884
  store i64 %4885, i64* %4881, align 8
  %4886 = add i64 %4883, 8
  store i64 %4886, i64* %4882, align 8
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400fce
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movl__0x1f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 31, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_0x602074___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl_0x602074___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_400f78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_400db5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.lrand48_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1f__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 31
  %16 = icmp ult i32 %14, 31
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
  %25 = xor i32 %14, 31
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

define %struct.Memory* @routine_jge_.L_400da2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x1f__MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 31
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x31___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 49
  %14 = icmp ult i32 %9, 49
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 49, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400cf9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = and i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = trunc i64 %12 to i32
  %15 = and i32 %14, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i64 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x39f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 935
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

define %struct.Memory* @routine_movl__0x3e8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = ashr i64 %10, 63
  store i64 %11, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sext i64 %9 to i128
  %17 = and i128 %16, -18446744073709551616
  %18 = zext i64 %15 to i128
  %19 = shl i128 %18, 64
  %20 = zext i64 %13 to i128
  %21 = or i128 %19, %20
  %22 = zext i64 %9 to i128
  %23 = or i128 %17, %22
  %24 = sdiv i128 %21, %23
  %25 = trunc i128 %24 to i64
  %26 = and i128 %24, 18446744073709551615
  %27 = sext i64 %25 to i128
  %28 = and i128 %27, -18446744073709551616
  %29 = or i128 %28, %26
  %30 = icmp eq i128 %24, %29
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %block_400488
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %33, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:35:                                     ; preds = %block_400488
  %36 = srem i128 %21, %23
  %37 = trunc i128 %36 to i64
  store i64 %25, i64* %12, align 8
  store i64 %37, i64* %14, align 8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %43, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %31, %35
  %44 = phi %struct.Memory* [ %34, %31 ], [ %2, %35 ]
  ret %struct.Memory* %44
}

define %struct.Memory* @routine_cvtsi2sdq__rdx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = sitofp i64 %12 to double
  %16 = bitcast i8* %11 to double*
  store double %15, double* %16, align 1
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_ucomisd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %13 to double*
  %19 = load double, double* %18
  %20 = fcmp uno double %17, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd double %17, %19
  %23 = bitcast double %22 to i64
  %24 = and i64 %23, 9221120237041090560
  %25 = icmp eq i64 %24, 9218868437227405312
  %26 = and i64 %23, 2251799813685247
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt double %17, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt double %17, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq double %17, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_400d5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
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

define %struct.Memory* @routine_xorq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = xor i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = trunc i64 %12 to i32
  %15 = and i32 %14, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i64 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i8
  %13 = and i8 %12, 1
  %14 = ashr i64 %9, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %16, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %25 = icmp eq i64 %14, 0
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %24, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %30, align 1
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

define %struct.Memory* @routine_jmpq_.L_400cbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400da7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400eae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x1f__MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 31
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x293__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 667
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

define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400e6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x602074___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_400eee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1a9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 433
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

define %struct.Memory* @routine_movl__0x2710___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 10000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400f4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400c7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x602074___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* inttoptr (i64 6299764 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400fc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_je_.L_400fa9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
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

define %struct.Memory* @routine_jmpq_.L_400f7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
