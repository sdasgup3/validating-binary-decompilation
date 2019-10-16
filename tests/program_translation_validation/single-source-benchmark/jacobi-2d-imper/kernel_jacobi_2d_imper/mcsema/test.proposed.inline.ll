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
define %struct.Memory* @kernel_jacobi_2d_imper(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400b40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400b40, %struct.Memory** %MEMORY
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i286
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i286
  store i64 %26, i64* %RBP.i287, align 8
  store %struct.Memory* %loadMem_400b41, %struct.Memory** %MEMORY
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i285
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i284
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i284
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400b44, %struct.Memory** %MEMORY
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i283
  %55 = sub i64 %54, 8
  %56 = load i32, i32* %ESI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i282
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i282
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_400b47, %struct.Memory** %MEMORY
  %loadMem_400b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %RBP.i281
  %71 = sub i64 %70, 16
  %72 = load i64, i64* %RDX.i280
  %73 = load i64, i64* %PC.i279
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC.i279
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75
  store %struct.Memory* %loadMem_400b4a, %struct.Memory** %MEMORY
  %loadMem_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %81 to i64*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RBP.i278
  %86 = sub i64 %85, 24
  %87 = load i64, i64* %RCX.i277
  %88 = load i64, i64* %PC.i276
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC.i276
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  store %struct.Memory* %loadMem_400b4e, %struct.Memory** %MEMORY
  %loadMem_400b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RBP.i275
  %98 = sub i64 %97, 28
  %99 = load i64, i64* %PC.i274
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC.i274
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101
  store %struct.Memory* %loadMem_400b52, %struct.Memory** %MEMORY
  br label %block_.L_400b59

block_.L_400b59:                                  ; preds = %block_.L_400d04, %entry
  %loadMem_400b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i273
  %112 = sub i64 %111, 28
  %113 = load i64, i64* %PC.i271
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC.i271
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_400b59, %struct.Memory** %MEMORY
  %loadMem_400b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %126 to i64*
  %127 = load i32, i32* %EAX.i269
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %RBP.i270
  %130 = sub i64 %129, 4
  %131 = load i64, i64* %PC.i268
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC.i268
  %133 = inttoptr i64 %130 to i32*
  %134 = load i32, i32* %133
  %135 = sub i32 %127, %134
  %136 = icmp ult i32 %127, %134
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %137, i8* %138, align 1
  %139 = and i32 %135, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1
  %145 = xor i32 %134, %127
  %146 = xor i32 %145, %135
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %149, i8* %150, align 1
  %151 = icmp eq i32 %135, 0
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %152, i8* %153, align 1
  %154 = lshr i32 %135, 31
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %155, i8* %156, align 1
  %157 = lshr i32 %127, 31
  %158 = lshr i32 %134, 31
  %159 = xor i32 %158, %157
  %160 = xor i32 %154, %157
  %161 = add i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %163, i8* %164, align 1
  store %struct.Memory* %loadMem_400b5c, %struct.Memory** %MEMORY
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %PC.i267
  %169 = add i64 %168, 435
  %170 = load i64, i64* %PC.i267
  %171 = add i64 %170, 6
  %172 = load i64, i64* %PC.i267
  %173 = add i64 %172, 6
  store i64 %173, i64* %PC.i267
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = load i8, i8* %174, align 1
  %176 = icmp ne i8 %175, 0
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  %180 = xor i1 %176, %179
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %BRANCH_TAKEN, align 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %184 = select i1 %180, i64 %171, i64 %169
  store i64 %184, i64* %183, align 8
  store %struct.Memory* %loadMem_400b5f, %struct.Memory** %MEMORY
  %loadBr_400b5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b5f = icmp eq i8 %loadBr_400b5f, 1
  br i1 %cmpBr_400b5f, label %block_.L_400d12, label %block_400b65

block_400b65:                                     ; preds = %block_.L_400b59
  %loadMem_400b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 15
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RBP.i266
  %192 = sub i64 %191, 32
  %193 = load i64, i64* %PC.i265
  %194 = add i64 %193, 7
  store i64 %194, i64* %PC.i265
  %195 = inttoptr i64 %192 to i32*
  store i32 1, i32* %195
  store %struct.Memory* %loadMem_400b65, %struct.Memory** %MEMORY
  br label %block_.L_400b6c

block_.L_400b6c:                                  ; preds = %block_.L_400c6a, %block_400b65
  %loadMem_400b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i264
  %206 = sub i64 %205, 32
  %207 = load i64, i64* %PC.i262
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i262
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_400b6c, %struct.Memory** %MEMORY
  %loadMem_400b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i261
  %222 = sub i64 %221, 8
  %223 = load i64, i64* %PC.i259
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC.i259
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_400b6f, %struct.Memory** %MEMORY
  %loadMem_400b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %233 to i64*
  %234 = load i64, i64* %RCX.i258
  %235 = load i64, i64* %PC.i257
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC.i257
  %237 = trunc i64 %234 to i32
  %238 = sub i32 %237, 1
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RCX.i258, align 8
  %240 = icmp ult i32 %237, 1
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %241, i8* %242, align 1
  %243 = and i32 %238, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1
  %249 = xor i64 1, %234
  %250 = trunc i64 %249 to i32
  %251 = xor i32 %250, %238
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %254, i8* %255, align 1
  %256 = icmp eq i32 %238, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %257, i8* %258, align 1
  %259 = lshr i32 %238, 31
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %260, i8* %261, align 1
  %262 = lshr i32 %237, 31
  %263 = xor i32 %259, %262
  %264 = add i32 %263, %262
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %266, i8* %267, align 1
  store %struct.Memory* %loadMem_400b72, %struct.Memory** %MEMORY
  %loadMem_400b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %273 to i32*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %ECX.i256 = bitcast %union.anon* %276 to i32*
  %277 = load i32, i32* %EAX.i255
  %278 = zext i32 %277 to i64
  %279 = load i32, i32* %ECX.i256
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC.i254
  %282 = add i64 %281, 2
  store i64 %282, i64* %PC.i254
  %283 = sub i32 %277, %279
  %284 = icmp ult i32 %277, %279
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %285, i8* %286, align 1
  %287 = and i32 %283, 255
  %288 = call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %291, i8* %292, align 1
  %293 = xor i64 %280, %278
  %294 = trunc i64 %293 to i32
  %295 = xor i32 %294, %283
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %298, i8* %299, align 1
  %300 = icmp eq i32 %283, 0
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %301, i8* %302, align 1
  %303 = lshr i32 %283, 31
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %304, i8* %305, align 1
  %306 = lshr i32 %277, 31
  %307 = lshr i32 %279, 31
  %308 = xor i32 %307, %306
  %309 = xor i32 %303, %306
  %310 = add i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %312, i8* %313, align 1
  store %struct.Memory* %loadMem_400b75, %struct.Memory** %MEMORY
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %PC.i253
  %318 = add i64 %317, 257
  %319 = load i64, i64* %PC.i253
  %320 = add i64 %319, 6
  %321 = load i64, i64* %PC.i253
  %322 = add i64 %321, 6
  store i64 %322, i64* %PC.i253
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %324 = load i8, i8* %323, align 1
  %325 = icmp ne i8 %324, 0
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %327 = load i8, i8* %326, align 1
  %328 = icmp ne i8 %327, 0
  %329 = xor i1 %325, %328
  %330 = xor i1 %329, true
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %BRANCH_TAKEN, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %333 = select i1 %329, i64 %320, i64 %318
  store i64 %333, i64* %332, align 8
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadBr_400b77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b77 = icmp eq i8 %loadBr_400b77, 1
  br i1 %cmpBr_400b77, label %block_.L_400c78, label %block_400b7d

block_400b7d:                                     ; preds = %block_.L_400b6c
  %loadMem_400b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i252
  %341 = sub i64 %340, 36
  %342 = load i64, i64* %PC.i251
  %343 = add i64 %342, 7
  store i64 %343, i64* %PC.i251
  %344 = inttoptr i64 %341 to i32*
  store i32 1, i32* %344
  store %struct.Memory* %loadMem_400b7d, %struct.Memory** %MEMORY
  br label %block_.L_400b84

block_.L_400b84:                                  ; preds = %block_400b95, %block_400b7d
  %loadMem_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i250
  %355 = sub i64 %354, 36
  %356 = load i64, i64* %PC.i248
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC.i248
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_400b84, %struct.Memory** %MEMORY
  %loadMem_400b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i247
  %371 = sub i64 %370, 8
  %372 = load i64, i64* %PC.i245
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC.i245
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_400b87, %struct.Memory** %MEMORY
  %loadMem_400b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RCX.i244
  %384 = load i64, i64* %PC.i243
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC.i243
  %386 = trunc i64 %383 to i32
  %387 = sub i32 %386, 1
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RCX.i244, align 8
  %389 = icmp ult i32 %386, 1
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %390, i8* %391, align 1
  %392 = and i32 %387, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i64 1, %383
  %399 = trunc i64 %398 to i32
  %400 = xor i32 %399, %387
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %403, i8* %404, align 1
  %405 = icmp eq i32 %387, 0
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %406, i8* %407, align 1
  %408 = lshr i32 %387, 31
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %386, 31
  %412 = xor i32 %408, %411
  %413 = add i32 %412, %411
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_400b8a, %struct.Memory** %MEMORY
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %422 to i32*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i242 = bitcast %union.anon* %425 to i32*
  %426 = load i32, i32* %EAX.i241
  %427 = zext i32 %426 to i64
  %428 = load i32, i32* %ECX.i242
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC.i240
  %431 = add i64 %430, 2
  store i64 %431, i64* %PC.i240
  %432 = sub i32 %426, %428
  %433 = icmp ult i32 %426, %428
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %434, i8* %435, align 1
  %436 = and i32 %432, 255
  %437 = call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %440, i8* %441, align 1
  %442 = xor i64 %429, %427
  %443 = trunc i64 %442 to i32
  %444 = xor i32 %443, %432
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %447, i8* %448, align 1
  %449 = icmp eq i32 %432, 0
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %450, i8* %451, align 1
  %452 = lshr i32 %432, 31
  %453 = trunc i32 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %453, i8* %454, align 1
  %455 = lshr i32 %426, 31
  %456 = lshr i32 %428, 31
  %457 = xor i32 %456, %455
  %458 = xor i32 %452, %455
  %459 = add i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %461, i8* %462, align 1
  store %struct.Memory* %loadMem_400b8d, %struct.Memory** %MEMORY
  %loadMem_400b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %PC.i239
  %467 = add i64 %466, 214
  %468 = load i64, i64* %PC.i239
  %469 = add i64 %468, 6
  %470 = load i64, i64* %PC.i239
  %471 = add i64 %470, 6
  store i64 %471, i64* %PC.i239
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
  store %struct.Memory* %loadMem_400b8f, %struct.Memory** %MEMORY
  %loadBr_400b8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b8f = icmp eq i8 %loadBr_400b8f, 1
  br i1 %cmpBr_400b8f, label %block_.L_400c65, label %block_400b95

block_400b95:                                     ; preds = %block_.L_400b84
  %loadMem_400b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %486, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %487 to %"class.std::bitset"*
  %488 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %489 = load i64, i64* %PC.i237
  %490 = add i64 %489, 1971
  %491 = load i64, i64* %PC.i237
  %492 = add i64 %491, 8
  store i64 %492, i64* %PC.i237
  %493 = inttoptr i64 %490 to double*
  %494 = load double, double* %493
  %495 = bitcast i8* %488 to double*
  store double %494, double* %495, align 1
  %496 = getelementptr inbounds i8, i8* %488, i64 8
  %497 = bitcast i8* %496 to double*
  store double 0.000000e+00, double* %497, align 1
  store %struct.Memory* %loadMem_400b95, %struct.Memory** %MEMORY
  %loadMem_400b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i236
  %508 = sub i64 %507, 16
  %509 = load i64, i64* %PC.i234
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i234
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_400b9d, %struct.Memory** %MEMORY
  %loadMem_400ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RBP.i233
  %523 = sub i64 %522, 32
  %524 = load i64, i64* %PC.i231
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC.i231
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526
  %528 = sext i32 %527 to i64
  store i64 %528, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_400ba1, %struct.Memory** %MEMORY
  %loadMem_400ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RCX.i230
  %536 = load i64, i64* %PC.i229
  %537 = add i64 %536, 7
  store i64 %537, i64* %PC.i229
  %538 = sext i64 %535 to i128
  %539 = and i128 %538, -18446744073709551616
  %540 = zext i64 %535 to i128
  %541 = or i128 %539, %540
  %542 = mul i128 8000, %541
  %543 = trunc i128 %542 to i64
  store i64 %543, i64* %RCX.i230, align 8
  %544 = sext i64 %543 to i128
  %545 = icmp ne i128 %544, %542
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %546, i8* %547, align 1
  %548 = trunc i128 %542 to i32
  %549 = and i32 %548, 255
  %550 = call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %553, i8* %554, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %555, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %556, align 1
  %557 = lshr i64 %543, 63
  %558 = trunc i64 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %560, align 1
  store %struct.Memory* %loadMem_400ba5, %struct.Memory** %MEMORY
  %loadMem_400bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RAX.i227
  %571 = load i64, i64* %RCX.i228
  %572 = load i64, i64* %PC.i226
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC.i226
  %574 = add i64 %571, %570
  store i64 %574, i64* %RAX.i227, align 8
  %575 = icmp ult i64 %574, %570
  %576 = icmp ult i64 %574, %571
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %578, i8* %579, align 1
  %580 = trunc i64 %574 to i32
  %581 = and i32 %580, 255
  %582 = call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %585, i8* %586, align 1
  %587 = xor i64 %571, %570
  %588 = xor i64 %587, %574
  %589 = lshr i64 %588, 4
  %590 = trunc i64 %589 to i8
  %591 = and i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %591, i8* %592, align 1
  %593 = icmp eq i64 %574, 0
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %594, i8* %595, align 1
  %596 = lshr i64 %574, 63
  %597 = trunc i64 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %597, i8* %598, align 1
  %599 = lshr i64 %570, 63
  %600 = lshr i64 %571, 63
  %601 = xor i64 %596, %599
  %602 = xor i64 %596, %600
  %603 = add i64 %601, %602
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %606, align 1
  store %struct.Memory* %loadMem_400bac, %struct.Memory** %MEMORY
  %loadMem_400baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 15
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %615 to i64*
  %616 = load i64, i64* %RBP.i225
  %617 = sub i64 %616, 36
  %618 = load i64, i64* %PC.i223
  %619 = add i64 %618, 4
  store i64 %619, i64* %PC.i223
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620
  %622 = sext i32 %621 to i64
  store i64 %622, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_400baf, %struct.Memory** %MEMORY
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %633 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %632, i64 0, i64 1
  %YMM1.i222 = bitcast %union.VectorReg* %633 to %"class.std::bitset"*
  %634 = bitcast %"class.std::bitset"* %YMM1.i222 to i8*
  %635 = load i64, i64* %RAX.i220
  %636 = load i64, i64* %RCX.i221
  %637 = mul i64 %636, 8
  %638 = add i64 %637, %635
  %639 = load i64, i64* %PC.i219
  %640 = add i64 %639, 5
  store i64 %640, i64* %PC.i219
  %641 = inttoptr i64 %638 to double*
  %642 = load double, double* %641
  %643 = bitcast i8* %634 to double*
  store double %642, double* %643, align 1
  %644 = getelementptr inbounds i8, i8* %634, i64 8
  %645 = bitcast i8* %644 to double*
  store double 0.000000e+00, double* %645, align 1
  store %struct.Memory* %loadMem_400bb3, %struct.Memory** %MEMORY
  %loadMem_400bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i218
  %656 = sub i64 %655, 16
  %657 = load i64, i64* %PC.i216
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i216
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659
  store i64 %660, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_400bb8, %struct.Memory** %MEMORY
  %loadMem_400bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 5
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i215
  %671 = sub i64 %670, 32
  %672 = load i64, i64* %PC.i213
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i213
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_400bbc, %struct.Memory** %MEMORY
  %loadMem_400bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 5
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %RCX.i212
  %684 = load i64, i64* %PC.i211
  %685 = add i64 %684, 7
  store i64 %685, i64* %PC.i211
  %686 = sext i64 %683 to i128
  %687 = and i128 %686, -18446744073709551616
  %688 = zext i64 %683 to i128
  %689 = or i128 %687, %688
  %690 = mul i128 8000, %689
  %691 = trunc i128 %690 to i64
  store i64 %691, i64* %RCX.i212, align 8
  %692 = sext i64 %691 to i128
  %693 = icmp ne i128 %692, %690
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %694, i8* %695, align 1
  %696 = trunc i128 %690 to i32
  %697 = and i32 %696, 255
  %698 = call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %701, i8* %702, align 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %703, align 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %704, align 1
  %705 = lshr i64 %691, 63
  %706 = trunc i64 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %706, i8* %707, align 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %694, i8* %708, align 1
  store %struct.Memory* %loadMem_400bc0, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 5
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RAX.i209
  %719 = load i64, i64* %RCX.i210
  %720 = load i64, i64* %PC.i208
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC.i208
  %722 = add i64 %719, %718
  store i64 %722, i64* %RAX.i209, align 8
  %723 = icmp ult i64 %722, %718
  %724 = icmp ult i64 %722, %719
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %726, i8* %727, align 1
  %728 = trunc i64 %722 to i32
  %729 = and i32 %728, 255
  %730 = call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %733, i8* %734, align 1
  %735 = xor i64 %719, %718
  %736 = xor i64 %735, %722
  %737 = lshr i64 %736, 4
  %738 = trunc i64 %737 to i8
  %739 = and i8 %738, 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %739, i8* %740, align 1
  %741 = icmp eq i64 %722, 0
  %742 = zext i1 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %742, i8* %743, align 1
  %744 = lshr i64 %722, 63
  %745 = trunc i64 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %745, i8* %746, align 1
  %747 = lshr i64 %718, 63
  %748 = lshr i64 %719, 63
  %749 = xor i64 %744, %747
  %750 = xor i64 %744, %748
  %751 = add i64 %749, %750
  %752 = icmp eq i64 %751, 2
  %753 = zext i1 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %753, i8* %754, align 1
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  %loadMem_400bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 7
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %763 to i64*
  %764 = load i64, i64* %RBP.i207
  %765 = sub i64 %764, 36
  %766 = load i64, i64* %PC.i205
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC.i205
  %768 = inttoptr i64 %765 to i32*
  %769 = load i32, i32* %768
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_400bca, %struct.Memory** %MEMORY
  %loadMem_400bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 7
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %776 to i64*
  %777 = load i64, i64* %RDX.i204
  %778 = load i64, i64* %PC.i203
  %779 = add i64 %778, 3
  store i64 %779, i64* %PC.i203
  %780 = trunc i64 %777 to i32
  %781 = sub i32 %780, 1
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RDX.i204, align 8
  %783 = icmp ult i32 %780, 1
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %784, i8* %785, align 1
  %786 = and i32 %781, 255
  %787 = call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %790, i8* %791, align 1
  %792 = xor i64 1, %777
  %793 = trunc i64 %792 to i32
  %794 = xor i32 %793, %781
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %797, i8* %798, align 1
  %799 = icmp eq i32 %781, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1
  %802 = lshr i32 %781, 31
  %803 = trunc i32 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1
  %805 = lshr i32 %780, 31
  %806 = xor i32 %802, %805
  %807 = add i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1
  store %struct.Memory* %loadMem_400bcd, %struct.Memory** %MEMORY
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 7
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %EDX.i201 = bitcast %union.anon* %816 to i32*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 5
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %819 to i64*
  %820 = load i32, i32* %EDX.i201
  %821 = zext i32 %820 to i64
  %822 = load i64, i64* %PC.i200
  %823 = add i64 %822, 3
  store i64 %823, i64* %PC.i200
  %824 = shl i64 %821, 32
  %825 = ashr exact i64 %824, 32
  store i64 %825, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_400bd0, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %835, i64 0, i64 1
  %YMM1.i199 = bitcast %union.VectorReg* %836 to %"class.std::bitset"*
  %837 = bitcast %"class.std::bitset"* %YMM1.i199 to i8*
  %838 = bitcast %"class.std::bitset"* %YMM1.i199 to i8*
  %839 = load i64, i64* %RAX.i197
  %840 = load i64, i64* %RCX.i198
  %841 = mul i64 %840, 8
  %842 = add i64 %841, %839
  %843 = load i64, i64* %PC.i196
  %844 = add i64 %843, 5
  store i64 %844, i64* %PC.i196
  %845 = bitcast i8* %838 to double*
  %846 = load double, double* %845, align 1
  %847 = getelementptr inbounds i8, i8* %838, i64 8
  %848 = bitcast i8* %847 to i64*
  %849 = load i64, i64* %848, align 1
  %850 = inttoptr i64 %842 to double*
  %851 = load double, double* %850
  %852 = fadd double %846, %851
  %853 = bitcast i8* %837 to double*
  store double %852, double* %853, align 1
  %854 = getelementptr inbounds i8, i8* %837, i64 8
  %855 = bitcast i8* %854 to i64*
  store i64 %849, i64* %855, align 1
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadMem_400bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RBP.i195
  %866 = sub i64 %865, 16
  %867 = load i64, i64* %PC.i193
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i193
  %869 = inttoptr i64 %866 to i64*
  %870 = load i64, i64* %869
  store i64 %870, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_400bd8, %struct.Memory** %MEMORY
  %loadMem_400bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 5
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i192
  %881 = sub i64 %880, 32
  %882 = load i64, i64* %PC.i190
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i190
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884
  %886 = sext i32 %885 to i64
  store i64 %886, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_400bdc, %struct.Memory** %MEMORY
  %loadMem_400be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 33
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 5
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RCX.i189
  %894 = load i64, i64* %PC.i188
  %895 = add i64 %894, 7
  store i64 %895, i64* %PC.i188
  %896 = sext i64 %893 to i128
  %897 = and i128 %896, -18446744073709551616
  %898 = zext i64 %893 to i128
  %899 = or i128 %897, %898
  %900 = mul i128 8000, %899
  %901 = trunc i128 %900 to i64
  store i64 %901, i64* %RCX.i189, align 8
  %902 = sext i64 %901 to i128
  %903 = icmp ne i128 %902, %900
  %904 = zext i1 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %904, i8* %905, align 1
  %906 = trunc i128 %900 to i32
  %907 = and i32 %906, 255
  %908 = call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %911, i8* %912, align 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %913, align 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %914, align 1
  %915 = lshr i64 %901, 63
  %916 = trunc i64 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %916, i8* %917, align 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %904, i8* %918, align 1
  store %struct.Memory* %loadMem_400be0, %struct.Memory** %MEMORY
  %loadMem_400be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 5
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RAX.i186
  %929 = load i64, i64* %RCX.i187
  %930 = load i64, i64* %PC.i185
  %931 = add i64 %930, 3
  store i64 %931, i64* %PC.i185
  %932 = add i64 %929, %928
  store i64 %932, i64* %RAX.i186, align 8
  %933 = icmp ult i64 %932, %928
  %934 = icmp ult i64 %932, %929
  %935 = or i1 %933, %934
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %936, i8* %937, align 1
  %938 = trunc i64 %932 to i32
  %939 = and i32 %938, 255
  %940 = call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %943, i8* %944, align 1
  %945 = xor i64 %929, %928
  %946 = xor i64 %945, %932
  %947 = lshr i64 %946, 4
  %948 = trunc i64 %947 to i8
  %949 = and i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %949, i8* %950, align 1
  %951 = icmp eq i64 %932, 0
  %952 = zext i1 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %952, i8* %953, align 1
  %954 = lshr i64 %932, 63
  %955 = trunc i64 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %955, i8* %956, align 1
  %957 = lshr i64 %928, 63
  %958 = lshr i64 %929, 63
  %959 = xor i64 %954, %957
  %960 = xor i64 %954, %958
  %961 = add i64 %959, %960
  %962 = icmp eq i64 %961, 2
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %963, i8* %964, align 1
  store %struct.Memory* %loadMem_400be7, %struct.Memory** %MEMORY
  %loadMem_400bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 7
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RBP.i184
  %975 = sub i64 %974, 36
  %976 = load i64, i64* %PC.i182
  %977 = add i64 %976, 3
  store i64 %977, i64* %PC.i182
  %978 = inttoptr i64 %975 to i32*
  %979 = load i32, i32* %978
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_400bea, %struct.Memory** %MEMORY
  %loadMem_400bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 7
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RDX.i181
  %988 = load i64, i64* %PC.i180
  %989 = add i64 %988, 3
  store i64 %989, i64* %PC.i180
  %990 = trunc i64 %987 to i32
  %991 = add i32 1, %990
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RDX.i181, align 8
  %993 = icmp ult i32 %991, %990
  %994 = icmp ult i32 %991, 1
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %996, i8* %997, align 1
  %998 = and i32 %991, 255
  %999 = call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1002, i8* %1003, align 1
  %1004 = xor i64 1, %987
  %1005 = trunc i64 %1004 to i32
  %1006 = xor i32 %1005, %991
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1009, i8* %1010, align 1
  %1011 = icmp eq i32 %991, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1
  %1014 = lshr i32 %991, 31
  %1015 = trunc i32 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1
  %1017 = lshr i32 %990, 31
  %1018 = xor i32 %1014, %1017
  %1019 = add i32 %1018, %1014
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1021, i8* %1022, align 1
  store %struct.Memory* %loadMem_400bed, %struct.Memory** %MEMORY
  %loadMem_400bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 7
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %EDX.i178 = bitcast %union.anon* %1028 to i32*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 5
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %1031 to i64*
  %1032 = load i32, i32* %EDX.i178
  %1033 = zext i32 %1032 to i64
  %1034 = load i64, i64* %PC.i177
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i177
  %1036 = shl i64 %1033, 32
  %1037 = ashr exact i64 %1036, 32
  store i64 %1037, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_400bf0, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 1
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 5
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1047, i64 0, i64 1
  %YMM1.i176 = bitcast %union.VectorReg* %1048 to %"class.std::bitset"*
  %1049 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %1050 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %1051 = load i64, i64* %RAX.i174
  %1052 = load i64, i64* %RCX.i175
  %1053 = mul i64 %1052, 8
  %1054 = add i64 %1053, %1051
  %1055 = load i64, i64* %PC.i173
  %1056 = add i64 %1055, 5
  store i64 %1056, i64* %PC.i173
  %1057 = bitcast i8* %1050 to double*
  %1058 = load double, double* %1057, align 1
  %1059 = getelementptr inbounds i8, i8* %1050, i64 8
  %1060 = bitcast i8* %1059 to i64*
  %1061 = load i64, i64* %1060, align 1
  %1062 = inttoptr i64 %1054 to double*
  %1063 = load double, double* %1062
  %1064 = fadd double %1058, %1063
  %1065 = bitcast i8* %1049 to double*
  store double %1064, double* %1065, align 1
  %1066 = getelementptr inbounds i8, i8* %1049, i64 8
  %1067 = bitcast i8* %1066 to i64*
  store i64 %1061, i64* %1067, align 1
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i172
  %1078 = sub i64 %1077, 16
  %1079 = load i64, i64* %PC.i170
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i170
  %1081 = inttoptr i64 %1078 to i64*
  %1082 = load i64, i64* %1081
  store i64 %1082, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_400bf8, %struct.Memory** %MEMORY
  %loadMem_400bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 7
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RBP.i169
  %1093 = sub i64 %1092, 32
  %1094 = load i64, i64* %PC.i167
  %1095 = add i64 %1094, 3
  store i64 %1095, i64* %PC.i167
  %1096 = inttoptr i64 %1093 to i32*
  %1097 = load i32, i32* %1096
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_400bfc, %struct.Memory** %MEMORY
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 7
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RDX.i166
  %1106 = load i64, i64* %PC.i165
  %1107 = add i64 %1106, 3
  store i64 %1107, i64* %PC.i165
  %1108 = trunc i64 %1105 to i32
  %1109 = add i32 1, %1108
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RDX.i166, align 8
  %1111 = icmp ult i32 %1109, %1108
  %1112 = icmp ult i32 %1109, 1
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
  %1122 = xor i64 1, %1105
  %1123 = trunc i64 %1122 to i32
  %1124 = xor i32 %1123, %1109
  %1125 = lshr i32 %1124, 4
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1127, i8* %1128, align 1
  %1129 = icmp eq i32 %1109, 0
  %1130 = zext i1 %1129 to i8
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1130, i8* %1131, align 1
  %1132 = lshr i32 %1109, 31
  %1133 = trunc i32 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1133, i8* %1134, align 1
  %1135 = lshr i32 %1108, 31
  %1136 = xor i32 %1132, %1135
  %1137 = add i32 %1136, %1132
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1139, i8* %1140, align 1
  store %struct.Memory* %loadMem_400bff, %struct.Memory** %MEMORY
  %loadMem_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 7
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %EDX.i163 = bitcast %union.anon* %1146 to i32*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 5
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %1149 to i64*
  %1150 = load i32, i32* %EDX.i163
  %1151 = zext i32 %1150 to i64
  %1152 = load i64, i64* %PC.i162
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %PC.i162
  %1154 = shl i64 %1151, 32
  %1155 = ashr exact i64 %1154, 32
  store i64 %1155, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_400c02, %struct.Memory** %MEMORY
  %loadMem_400c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 5
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RCX.i161
  %1163 = load i64, i64* %PC.i160
  %1164 = add i64 %1163, 7
  store i64 %1164, i64* %PC.i160
  %1165 = sext i64 %1162 to i128
  %1166 = and i128 %1165, -18446744073709551616
  %1167 = zext i64 %1162 to i128
  %1168 = or i128 %1166, %1167
  %1169 = mul i128 8000, %1168
  %1170 = trunc i128 %1169 to i64
  store i64 %1170, i64* %RCX.i161, align 8
  %1171 = sext i64 %1170 to i128
  %1172 = icmp ne i128 %1171, %1169
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1173, i8* %1174, align 1
  %1175 = trunc i128 %1169 to i32
  %1176 = and i32 %1175, 255
  %1177 = call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1180, i8* %1181, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1182, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1183, align 1
  %1184 = lshr i64 %1170, 63
  %1185 = trunc i64 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1185, i8* %1186, align 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1173, i8* %1187, align 1
  store %struct.Memory* %loadMem_400c05, %struct.Memory** %MEMORY
  %loadMem_400c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 5
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RAX.i158
  %1198 = load i64, i64* %RCX.i159
  %1199 = load i64, i64* %PC.i157
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %PC.i157
  %1201 = add i64 %1198, %1197
  store i64 %1201, i64* %RAX.i158, align 8
  %1202 = icmp ult i64 %1201, %1197
  %1203 = icmp ult i64 %1201, %1198
  %1204 = or i1 %1202, %1203
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1205, i8* %1206, align 1
  %1207 = trunc i64 %1201 to i32
  %1208 = and i32 %1207, 255
  %1209 = call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1212, i8* %1213, align 1
  %1214 = xor i64 %1198, %1197
  %1215 = xor i64 %1214, %1201
  %1216 = lshr i64 %1215, 4
  %1217 = trunc i64 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1218, i8* %1219, align 1
  %1220 = icmp eq i64 %1201, 0
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i64 %1201, 63
  %1224 = trunc i64 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i64 %1197, 63
  %1227 = lshr i64 %1198, 63
  %1228 = xor i64 %1223, %1226
  %1229 = xor i64 %1223, %1227
  %1230 = add i64 %1228, %1229
  %1231 = icmp eq i64 %1230, 2
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1232, i8* %1233, align 1
  store %struct.Memory* %loadMem_400c0c, %struct.Memory** %MEMORY
  %loadMem_400c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 5
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i156
  %1244 = sub i64 %1243, 36
  %1245 = load i64, i64* %PC.i154
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i154
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_400c0f, %struct.Memory** %MEMORY
  %loadMem_400c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 5
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1259, i64 0, i64 1
  %YMM1.i153 = bitcast %union.VectorReg* %1260 to %"class.std::bitset"*
  %1261 = bitcast %"class.std::bitset"* %YMM1.i153 to i8*
  %1262 = bitcast %"class.std::bitset"* %YMM1.i153 to i8*
  %1263 = load i64, i64* %RAX.i151
  %1264 = load i64, i64* %RCX.i152
  %1265 = mul i64 %1264, 8
  %1266 = add i64 %1265, %1263
  %1267 = load i64, i64* %PC.i150
  %1268 = add i64 %1267, 5
  store i64 %1268, i64* %PC.i150
  %1269 = bitcast i8* %1262 to double*
  %1270 = load double, double* %1269, align 1
  %1271 = getelementptr inbounds i8, i8* %1262, i64 8
  %1272 = bitcast i8* %1271 to i64*
  %1273 = load i64, i64* %1272, align 1
  %1274 = inttoptr i64 %1266 to double*
  %1275 = load double, double* %1274
  %1276 = fadd double %1270, %1275
  %1277 = bitcast i8* %1261 to double*
  store double %1276, double* %1277, align 1
  %1278 = getelementptr inbounds i8, i8* %1261, i64 8
  %1279 = bitcast i8* %1278 to i64*
  store i64 %1273, i64* %1279, align 1
  store %struct.Memory* %loadMem_400c13, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 15
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %RBP.i149
  %1290 = sub i64 %1289, 16
  %1291 = load i64, i64* %PC.i147
  %1292 = add i64 %1291, 4
  store i64 %1292, i64* %PC.i147
  %1293 = inttoptr i64 %1290 to i64*
  %1294 = load i64, i64* %1293
  store i64 %1294, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  %loadMem_400c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 33
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 7
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 15
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RBP.i146
  %1305 = sub i64 %1304, 32
  %1306 = load i64, i64* %PC.i144
  %1307 = add i64 %1306, 3
  store i64 %1307, i64* %PC.i144
  %1308 = inttoptr i64 %1305 to i32*
  %1309 = load i32, i32* %1308
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_400c1c, %struct.Memory** %MEMORY
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 7
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RDX.i
  %1318 = load i64, i64* %PC.i143
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i143
  %1320 = trunc i64 %1317 to i32
  %1321 = sub i32 %1320, 1
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RDX.i, align 8
  %1323 = icmp ult i32 %1320, 1
  %1324 = zext i1 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1324, i8* %1325, align 1
  %1326 = and i32 %1321, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1331, align 1
  %1332 = xor i64 1, %1317
  %1333 = trunc i64 %1332 to i32
  %1334 = xor i32 %1333, %1321
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1337, i8* %1338, align 1
  %1339 = icmp eq i32 %1321, 0
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i32 %1321, 31
  %1343 = trunc i32 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1343, i8* %1344, align 1
  %1345 = lshr i32 %1320, 31
  %1346 = xor i32 %1342, %1345
  %1347 = add i32 %1346, %1345
  %1348 = icmp eq i32 %1347, 2
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1349, i8* %1350, align 1
  store %struct.Memory* %loadMem_400c1f, %struct.Memory** %MEMORY
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 7
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1356 to i32*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 5
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %1359 to i64*
  %1360 = load i32, i32* %EDX.i
  %1361 = zext i32 %1360 to i64
  %1362 = load i64, i64* %PC.i141
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC.i141
  %1364 = shl i64 %1361, 32
  %1365 = ashr exact i64 %1364, 32
  store i64 %1365, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_400c22, %struct.Memory** %MEMORY
  %loadMem_400c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 5
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %RCX.i140
  %1373 = load i64, i64* %PC.i139
  %1374 = add i64 %1373, 7
  store i64 %1374, i64* %PC.i139
  %1375 = sext i64 %1372 to i128
  %1376 = and i128 %1375, -18446744073709551616
  %1377 = zext i64 %1372 to i128
  %1378 = or i128 %1376, %1377
  %1379 = mul i128 8000, %1378
  %1380 = trunc i128 %1379 to i64
  store i64 %1380, i64* %RCX.i140, align 8
  %1381 = sext i64 %1380 to i128
  %1382 = icmp ne i128 %1381, %1379
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1383, i8* %1384, align 1
  %1385 = trunc i128 %1379 to i32
  %1386 = and i32 %1385, 255
  %1387 = call i32 @llvm.ctpop.i32(i32 %1386)
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1390, i8* %1391, align 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1392, align 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1393, align 1
  %1394 = lshr i64 %1380, 63
  %1395 = trunc i64 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1395, i8* %1396, align 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1383, i8* %1397, align 1
  store %struct.Memory* %loadMem_400c25, %struct.Memory** %MEMORY
  %loadMem_400c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 1
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 5
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RAX.i137
  %1408 = load i64, i64* %RCX.i138
  %1409 = load i64, i64* %PC.i136
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC.i136
  %1411 = add i64 %1408, %1407
  store i64 %1411, i64* %RAX.i137, align 8
  %1412 = icmp ult i64 %1411, %1407
  %1413 = icmp ult i64 %1411, %1408
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1415, i8* %1416, align 1
  %1417 = trunc i64 %1411 to i32
  %1418 = and i32 %1417, 255
  %1419 = call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1422, i8* %1423, align 1
  %1424 = xor i64 %1408, %1407
  %1425 = xor i64 %1424, %1411
  %1426 = lshr i64 %1425, 4
  %1427 = trunc i64 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1428, i8* %1429, align 1
  %1430 = icmp eq i64 %1411, 0
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1431, i8* %1432, align 1
  %1433 = lshr i64 %1411, 63
  %1434 = trunc i64 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1434, i8* %1435, align 1
  %1436 = lshr i64 %1407, 63
  %1437 = lshr i64 %1408, 63
  %1438 = xor i64 %1433, %1436
  %1439 = xor i64 %1433, %1437
  %1440 = add i64 %1438, %1439
  %1441 = icmp eq i64 %1440, 2
  %1442 = zext i1 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1442, i8* %1443, align 1
  store %struct.Memory* %loadMem_400c2c, %struct.Memory** %MEMORY
  %loadMem_400c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 5
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 15
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RBP.i135
  %1454 = sub i64 %1453, 36
  %1455 = load i64, i64* %PC.i133
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %PC.i133
  %1457 = inttoptr i64 %1454 to i32*
  %1458 = load i32, i32* %1457
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_400c2f, %struct.Memory** %MEMORY
  %loadMem_400c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 1
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 5
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1469, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1470 to %"class.std::bitset"*
  %1471 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1472 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1473 = load i64, i64* %RAX.i131
  %1474 = load i64, i64* %RCX.i132
  %1475 = mul i64 %1474, 8
  %1476 = add i64 %1475, %1473
  %1477 = load i64, i64* %PC.i130
  %1478 = add i64 %1477, 5
  store i64 %1478, i64* %PC.i130
  %1479 = bitcast i8* %1472 to double*
  %1480 = load double, double* %1479, align 1
  %1481 = getelementptr inbounds i8, i8* %1472, i64 8
  %1482 = bitcast i8* %1481 to i64*
  %1483 = load i64, i64* %1482, align 1
  %1484 = inttoptr i64 %1476 to double*
  %1485 = load double, double* %1484
  %1486 = fadd double %1480, %1485
  %1487 = bitcast i8* %1471 to double*
  store double %1486, double* %1487, align 1
  %1488 = getelementptr inbounds i8, i8* %1471, i64 8
  %1489 = bitcast i8* %1488 to i64*
  store i64 %1483, i64* %1489, align 1
  store %struct.Memory* %loadMem_400c33, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1493, i64 0, i64 0
  %YMM0.i129 = bitcast %union.VectorReg* %1494 to %"class.std::bitset"*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1495, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1496 to %union.vec128_t*
  %1497 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %1498 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %1499 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1500 = load i64, i64* %PC.i128
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i128
  %1502 = bitcast i8* %1498 to double*
  %1503 = load double, double* %1502, align 1
  %1504 = getelementptr inbounds i8, i8* %1498, i64 8
  %1505 = bitcast i8* %1504 to i64*
  %1506 = load i64, i64* %1505, align 1
  %1507 = bitcast i8* %1499 to double*
  %1508 = load double, double* %1507, align 1
  %1509 = fmul double %1503, %1508
  %1510 = bitcast i8* %1497 to double*
  store double %1509, double* %1510, align 1
  %1511 = getelementptr inbounds i8, i8* %1497, i64 8
  %1512 = bitcast i8* %1511 to i64*
  store i64 %1506, i64* %1512, align 1
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 15
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %RBP.i127
  %1523 = sub i64 %1522, 24
  %1524 = load i64, i64* %PC.i125
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC.i125
  %1526 = inttoptr i64 %1523 to i64*
  %1527 = load i64, i64* %1526
  store i64 %1527, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 5
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i124
  %1538 = sub i64 %1537, 32
  %1539 = load i64, i64* %PC.i122
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i122
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_400c40, %struct.Memory** %MEMORY
  %loadMem_400c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 5
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RCX.i121
  %1551 = load i64, i64* %PC.i120
  %1552 = add i64 %1551, 7
  store i64 %1552, i64* %PC.i120
  %1553 = sext i64 %1550 to i128
  %1554 = and i128 %1553, -18446744073709551616
  %1555 = zext i64 %1550 to i128
  %1556 = or i128 %1554, %1555
  %1557 = mul i128 8000, %1556
  %1558 = trunc i128 %1557 to i64
  store i64 %1558, i64* %RCX.i121, align 8
  %1559 = sext i64 %1558 to i128
  %1560 = icmp ne i128 %1559, %1557
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1561, i8* %1562, align 1
  %1563 = trunc i128 %1557 to i32
  %1564 = and i32 %1563, 255
  %1565 = call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1568, i8* %1569, align 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1570, align 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1571, align 1
  %1572 = lshr i64 %1558, 63
  %1573 = trunc i64 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1573, i8* %1574, align 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1561, i8* %1575, align 1
  store %struct.Memory* %loadMem_400c44, %struct.Memory** %MEMORY
  %loadMem_400c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %RAX.i118
  %1586 = load i64, i64* %RCX.i119
  %1587 = load i64, i64* %PC.i117
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC.i117
  %1589 = add i64 %1586, %1585
  store i64 %1589, i64* %RAX.i118, align 8
  %1590 = icmp ult i64 %1589, %1585
  %1591 = icmp ult i64 %1589, %1586
  %1592 = or i1 %1590, %1591
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1593, i8* %1594, align 1
  %1595 = trunc i64 %1589 to i32
  %1596 = and i32 %1595, 255
  %1597 = call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1600, i8* %1601, align 1
  %1602 = xor i64 %1586, %1585
  %1603 = xor i64 %1602, %1589
  %1604 = lshr i64 %1603, 4
  %1605 = trunc i64 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1606, i8* %1607, align 1
  %1608 = icmp eq i64 %1589, 0
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i64 %1589, 63
  %1612 = trunc i64 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i64 %1585, 63
  %1615 = lshr i64 %1586, 63
  %1616 = xor i64 %1611, %1614
  %1617 = xor i64 %1611, %1615
  %1618 = add i64 %1616, %1617
  %1619 = icmp eq i64 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_400c4b, %struct.Memory** %MEMORY
  %loadMem_400c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 5
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i116
  %1632 = sub i64 %1631, 36
  %1633 = load i64, i64* %PC.i114
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i114
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = sext i32 %1636 to i64
  store i64 %1637, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_400c4e, %struct.Memory** %MEMORY
  %loadMem_400c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 5
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1647, i64 0, i64 0
  %XMM0.i113 = bitcast %union.VectorReg* %1648 to %union.vec128_t*
  %1649 = load i64, i64* %RAX.i111
  %1650 = load i64, i64* %RCX.i112
  %1651 = mul i64 %1650, 8
  %1652 = add i64 %1651, %1649
  %1653 = bitcast %union.vec128_t* %XMM0.i113 to i8*
  %1654 = load i64, i64* %PC.i110
  %1655 = add i64 %1654, 5
  store i64 %1655, i64* %PC.i110
  %1656 = bitcast i8* %1653 to double*
  %1657 = load double, double* %1656, align 1
  %1658 = inttoptr i64 %1652 to double*
  store double %1657, double* %1658
  store %struct.Memory* %loadMem_400c52, %struct.Memory** %MEMORY
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 1
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RBP.i109
  %1669 = sub i64 %1668, 36
  %1670 = load i64, i64* %PC.i107
  %1671 = add i64 %1670, 3
  store i64 %1671, i64* %PC.i107
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 1
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RAX.i106
  %1682 = load i64, i64* %PC.i105
  %1683 = add i64 %1682, 3
  store i64 %1683, i64* %PC.i105
  %1684 = trunc i64 %1681 to i32
  %1685 = add i32 1, %1684
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RAX.i106, align 8
  %1687 = icmp ult i32 %1685, %1684
  %1688 = icmp ult i32 %1685, 1
  %1689 = or i1 %1687, %1688
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1690, i8* %1691, align 1
  %1692 = and i32 %1685, 255
  %1693 = call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1696, i8* %1697, align 1
  %1698 = xor i64 1, %1681
  %1699 = trunc i64 %1698 to i32
  %1700 = xor i32 %1699, %1685
  %1701 = lshr i32 %1700, 4
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1703, i8* %1704, align 1
  %1705 = icmp eq i32 %1685, 0
  %1706 = zext i1 %1705 to i8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1706, i8* %1707, align 1
  %1708 = lshr i32 %1685, 31
  %1709 = trunc i32 %1708 to i8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1709, i8* %1710, align 1
  %1711 = lshr i32 %1684, 31
  %1712 = xor i32 %1708, %1711
  %1713 = add i32 %1712, %1708
  %1714 = icmp eq i32 %1713, 2
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1715, i8* %1716, align 1
  store %struct.Memory* %loadMem_400c5a, %struct.Memory** %MEMORY
  %loadMem_400c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 1
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %1722 to i32*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RBP.i104
  %1727 = sub i64 %1726, 36
  %1728 = load i32, i32* %EAX.i103
  %1729 = zext i32 %1728 to i64
  %1730 = load i64, i64* %PC.i102
  %1731 = add i64 %1730, 3
  store i64 %1731, i64* %PC.i102
  %1732 = inttoptr i64 %1727 to i32*
  store i32 %1728, i32* %1732
  store %struct.Memory* %loadMem_400c5d, %struct.Memory** %MEMORY
  %loadMem_400c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %PC.i101
  %1737 = add i64 %1736, -220
  %1738 = load i64, i64* %PC.i101
  %1739 = add i64 %1738, 5
  store i64 %1739, i64* %PC.i101
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1737, i64* %1740, align 8
  store %struct.Memory* %loadMem_400c60, %struct.Memory** %MEMORY
  br label %block_.L_400b84

block_.L_400c65:                                  ; preds = %block_.L_400b84
  %loadMem_400c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i100
  %1745 = add i64 %1744, 5
  %1746 = load i64, i64* %PC.i100
  %1747 = add i64 %1746, 5
  store i64 %1747, i64* %PC.i100
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1745, i64* %1748, align 8
  store %struct.Memory* %loadMem_400c65, %struct.Memory** %MEMORY
  br label %block_.L_400c6a

block_.L_400c6a:                                  ; preds = %block_.L_400c65
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RBP.i99
  %1759 = sub i64 %1758, 32
  %1760 = load i64, i64* %PC.i97
  %1761 = add i64 %1760, 3
  store i64 %1761, i64* %PC.i97
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_400c6a, %struct.Memory** %MEMORY
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 1
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RAX.i96
  %1772 = load i64, i64* %PC.i95
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %PC.i95
  %1774 = trunc i64 %1771 to i32
  %1775 = add i32 1, %1774
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RAX.i96, align 8
  %1777 = icmp ult i32 %1775, %1774
  %1778 = icmp ult i32 %1775, 1
  %1779 = or i1 %1777, %1778
  %1780 = zext i1 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1780, i8* %1781, align 1
  %1782 = and i32 %1775, 255
  %1783 = call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1786, i8* %1787, align 1
  %1788 = xor i64 1, %1771
  %1789 = trunc i64 %1788 to i32
  %1790 = xor i32 %1789, %1775
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1793, i8* %1794, align 1
  %1795 = icmp eq i32 %1775, 0
  %1796 = zext i1 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1796, i8* %1797, align 1
  %1798 = lshr i32 %1775, 31
  %1799 = trunc i32 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i32 %1774, 31
  %1802 = xor i32 %1798, %1801
  %1803 = add i32 %1802, %1798
  %1804 = icmp eq i32 %1803, 2
  %1805 = zext i1 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1805, i8* %1806, align 1
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  %loadMem_400c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %1812 to i32*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 15
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RBP.i94
  %1817 = sub i64 %1816, 32
  %1818 = load i32, i32* %EAX.i93
  %1819 = zext i32 %1818 to i64
  %1820 = load i64, i64* %PC.i92
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %PC.i92
  %1822 = inttoptr i64 %1817 to i32*
  store i32 %1818, i32* %1822
  store %struct.Memory* %loadMem_400c70, %struct.Memory** %MEMORY
  %loadMem_400c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %PC.i91
  %1827 = add i64 %1826, -263
  %1828 = load i64, i64* %PC.i91
  %1829 = add i64 %1828, 5
  store i64 %1829, i64* %PC.i91
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1827, i64* %1830, align 8
  store %struct.Memory* %loadMem_400c73, %struct.Memory** %MEMORY
  br label %block_.L_400b6c

block_.L_400c78:                                  ; preds = %block_.L_400b6c
  %loadMem_400c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 15
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RBP.i90
  %1838 = sub i64 %1837, 32
  %1839 = load i64, i64* %PC.i89
  %1840 = add i64 %1839, 7
  store i64 %1840, i64* %PC.i89
  %1841 = inttoptr i64 %1838 to i32*
  store i32 1, i32* %1841
  store %struct.Memory* %loadMem_400c78, %struct.Memory** %MEMORY
  br label %block_.L_400c7f

block_.L_400c7f:                                  ; preds = %block_.L_400cf1, %block_.L_400c78
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 15
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %1850 to i64*
  %1851 = load i64, i64* %RBP.i88
  %1852 = sub i64 %1851, 32
  %1853 = load i64, i64* %PC.i86
  %1854 = add i64 %1853, 3
  store i64 %1854, i64* %PC.i86
  %1855 = inttoptr i64 %1852 to i32*
  %1856 = load i32, i32* %1855
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_400c7f, %struct.Memory** %MEMORY
  %loadMem_400c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 5
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 15
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %1866 to i64*
  %1867 = load i64, i64* %RBP.i85
  %1868 = sub i64 %1867, 8
  %1869 = load i64, i64* %PC.i83
  %1870 = add i64 %1869, 3
  store i64 %1870, i64* %PC.i83
  %1871 = inttoptr i64 %1868 to i32*
  %1872 = load i32, i32* %1871
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_400c82, %struct.Memory** %MEMORY
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 5
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RCX.i82
  %1881 = load i64, i64* %PC.i81
  %1882 = add i64 %1881, 3
  store i64 %1882, i64* %PC.i81
  %1883 = trunc i64 %1880 to i32
  %1884 = sub i32 %1883, 1
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RCX.i82, align 8
  %1886 = icmp ult i32 %1883, 1
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1887, i8* %1888, align 1
  %1889 = and i32 %1884, 255
  %1890 = call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1893, i8* %1894, align 1
  %1895 = xor i64 1, %1880
  %1896 = trunc i64 %1895 to i32
  %1897 = xor i32 %1896, %1884
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1900, i8* %1901, align 1
  %1902 = icmp eq i32 %1884, 0
  %1903 = zext i1 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i32 %1884, 31
  %1906 = trunc i32 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i32 %1883, 31
  %1909 = xor i32 %1905, %1908
  %1910 = add i32 %1909, %1908
  %1911 = icmp eq i32 %1910, 2
  %1912 = zext i1 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1912, i8* %1913, align 1
  store %struct.Memory* %loadMem_400c85, %struct.Memory** %MEMORY
  %loadMem_400c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 1
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %EAX.i79 = bitcast %union.anon* %1919 to i32*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %ECX.i80 = bitcast %union.anon* %1922 to i32*
  %1923 = load i32, i32* %EAX.i79
  %1924 = zext i32 %1923 to i64
  %1925 = load i32, i32* %ECX.i80
  %1926 = zext i32 %1925 to i64
  %1927 = load i64, i64* %PC.i78
  %1928 = add i64 %1927, 2
  store i64 %1928, i64* %PC.i78
  %1929 = sub i32 %1923, %1925
  %1930 = icmp ult i32 %1923, %1925
  %1931 = zext i1 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1931, i8* %1932, align 1
  %1933 = and i32 %1929, 255
  %1934 = call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1937, i8* %1938, align 1
  %1939 = xor i64 %1926, %1924
  %1940 = trunc i64 %1939 to i32
  %1941 = xor i32 %1940, %1929
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1944, i8* %1945, align 1
  %1946 = icmp eq i32 %1929, 0
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i32 %1929, 31
  %1950 = trunc i32 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1923, 31
  %1953 = lshr i32 %1925, 31
  %1954 = xor i32 %1953, %1952
  %1955 = xor i32 %1949, %1952
  %1956 = add i32 %1955, %1954
  %1957 = icmp eq i32 %1956, 2
  %1958 = zext i1 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1958, i8* %1959, align 1
  store %struct.Memory* %loadMem_400c88, %struct.Memory** %MEMORY
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %PC.i77
  %1964 = add i64 %1963, 117
  %1965 = load i64, i64* %PC.i77
  %1966 = add i64 %1965, 6
  %1967 = load i64, i64* %PC.i77
  %1968 = add i64 %1967, 6
  store i64 %1968, i64* %PC.i77
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1970 = load i8, i8* %1969, align 1
  %1971 = icmp ne i8 %1970, 0
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1973 = load i8, i8* %1972, align 1
  %1974 = icmp ne i8 %1973, 0
  %1975 = xor i1 %1971, %1974
  %1976 = xor i1 %1975, true
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %BRANCH_TAKEN, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1979 = select i1 %1975, i64 %1966, i64 %1964
  store i64 %1979, i64* %1978, align 8
  store %struct.Memory* %loadMem_400c8a, %struct.Memory** %MEMORY
  %loadBr_400c8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c8a = icmp eq i8 %loadBr_400c8a, 1
  br i1 %cmpBr_400c8a, label %block_.L_400cff, label %block_400c90

block_400c90:                                     ; preds = %block_.L_400c7f
  %loadMem_400c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 15
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RBP.i76
  %1987 = sub i64 %1986, 36
  %1988 = load i64, i64* %PC.i75
  %1989 = add i64 %1988, 7
  store i64 %1989, i64* %PC.i75
  %1990 = inttoptr i64 %1987 to i32*
  store i32 1, i32* %1990
  store %struct.Memory* %loadMem_400c90, %struct.Memory** %MEMORY
  br label %block_.L_400c97

block_.L_400c97:                                  ; preds = %block_400ca8, %block_400c90
  %loadMem_400c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i74
  %2001 = sub i64 %2000, 36
  %2002 = load i64, i64* %PC.i72
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i72
  %2004 = inttoptr i64 %2001 to i32*
  %2005 = load i32, i32* %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_400c97, %struct.Memory** %MEMORY
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 5
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i71
  %2017 = sub i64 %2016, 8
  %2018 = load i64, i64* %PC.i69
  %2019 = add i64 %2018, 3
  store i64 %2019, i64* %PC.i69
  %2020 = inttoptr i64 %2017 to i32*
  %2021 = load i32, i32* %2020
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_400c9a, %struct.Memory** %MEMORY
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 5
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RCX.i68
  %2030 = load i64, i64* %PC.i67
  %2031 = add i64 %2030, 3
  store i64 %2031, i64* %PC.i67
  %2032 = trunc i64 %2029 to i32
  %2033 = sub i32 %2032, 1
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RCX.i68, align 8
  %2035 = icmp ult i32 %2032, 1
  %2036 = zext i1 %2035 to i8
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2036, i8* %2037, align 1
  %2038 = and i32 %2033, 255
  %2039 = call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2042, i8* %2043, align 1
  %2044 = xor i64 1, %2029
  %2045 = trunc i64 %2044 to i32
  %2046 = xor i32 %2045, %2033
  %2047 = lshr i32 %2046, 4
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2049, i8* %2050, align 1
  %2051 = icmp eq i32 %2033, 0
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2052, i8* %2053, align 1
  %2054 = lshr i32 %2033, 31
  %2055 = trunc i32 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2055, i8* %2056, align 1
  %2057 = lshr i32 %2032, 31
  %2058 = xor i32 %2054, %2057
  %2059 = add i32 %2058, %2057
  %2060 = icmp eq i32 %2059, 2
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2061, i8* %2062, align 1
  store %struct.Memory* %loadMem_400c9d, %struct.Memory** %MEMORY
  %loadMem_400ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %2068 to i32*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 5
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2071 to i32*
  %2072 = load i32, i32* %EAX.i66
  %2073 = zext i32 %2072 to i64
  %2074 = load i32, i32* %ECX.i
  %2075 = zext i32 %2074 to i64
  %2076 = load i64, i64* %PC.i65
  %2077 = add i64 %2076, 2
  store i64 %2077, i64* %PC.i65
  %2078 = sub i32 %2072, %2074
  %2079 = icmp ult i32 %2072, %2074
  %2080 = zext i1 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2080, i8* %2081, align 1
  %2082 = and i32 %2078, 255
  %2083 = call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2086, i8* %2087, align 1
  %2088 = xor i64 %2075, %2073
  %2089 = trunc i64 %2088 to i32
  %2090 = xor i32 %2089, %2078
  %2091 = lshr i32 %2090, 4
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2093, i8* %2094, align 1
  %2095 = icmp eq i32 %2078, 0
  %2096 = zext i1 %2095 to i8
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2096, i8* %2097, align 1
  %2098 = lshr i32 %2078, 31
  %2099 = trunc i32 %2098 to i8
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2099, i8* %2100, align 1
  %2101 = lshr i32 %2072, 31
  %2102 = lshr i32 %2074, 31
  %2103 = xor i32 %2102, %2101
  %2104 = xor i32 %2098, %2101
  %2105 = add i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2107, i8* %2108, align 1
  store %struct.Memory* %loadMem_400ca0, %struct.Memory** %MEMORY
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %PC.i64
  %2113 = add i64 %2112, 74
  %2114 = load i64, i64* %PC.i64
  %2115 = add i64 %2114, 6
  %2116 = load i64, i64* %PC.i64
  %2117 = add i64 %2116, 6
  store i64 %2117, i64* %PC.i64
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2119 = load i8, i8* %2118, align 1
  %2120 = icmp ne i8 %2119, 0
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2122 = load i8, i8* %2121, align 1
  %2123 = icmp ne i8 %2122, 0
  %2124 = xor i1 %2120, %2123
  %2125 = xor i1 %2124, true
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %BRANCH_TAKEN, align 1
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2128 = select i1 %2124, i64 %2115, i64 %2113
  store i64 %2128, i64* %2127, align 8
  store %struct.Memory* %loadMem_400ca2, %struct.Memory** %MEMORY
  %loadBr_400ca2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ca2 = icmp eq i8 %loadBr_400ca2, 1
  br i1 %cmpBr_400ca2, label %block_.L_400cec, label %block_400ca8

block_400ca8:                                     ; preds = %block_.L_400c97
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i63
  %2139 = sub i64 %2138, 24
  %2140 = load i64, i64* %PC.i61
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i61
  %2142 = inttoptr i64 %2139 to i64*
  %2143 = load i64, i64* %2142
  store i64 %2143, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 5
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RBP.i60
  %2154 = sub i64 %2153, 32
  %2155 = load i64, i64* %PC.i58
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %PC.i58
  %2157 = inttoptr i64 %2154 to i32*
  %2158 = load i32, i32* %2157
  %2159 = sext i32 %2158 to i64
  store i64 %2159, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 5
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %RCX.i57
  %2167 = load i64, i64* %PC.i56
  %2168 = add i64 %2167, 7
  store i64 %2168, i64* %PC.i56
  %2169 = sext i64 %2166 to i128
  %2170 = and i128 %2169, -18446744073709551616
  %2171 = zext i64 %2166 to i128
  %2172 = or i128 %2170, %2171
  %2173 = mul i128 8000, %2172
  %2174 = trunc i128 %2173 to i64
  store i64 %2174, i64* %RCX.i57, align 8
  %2175 = sext i64 %2174 to i128
  %2176 = icmp ne i128 %2175, %2173
  %2177 = zext i1 %2176 to i8
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2177, i8* %2178, align 1
  %2179 = trunc i128 %2173 to i32
  %2180 = and i32 %2179, 255
  %2181 = call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2184, i8* %2185, align 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2186, align 1
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2187, align 1
  %2188 = lshr i64 %2174, 63
  %2189 = trunc i64 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2189, i8* %2190, align 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2177, i8* %2191, align 1
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 1
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 5
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RAX.i54
  %2202 = load i64, i64* %RCX.i55
  %2203 = load i64, i64* %PC.i53
  %2204 = add i64 %2203, 3
  store i64 %2204, i64* %PC.i53
  %2205 = add i64 %2202, %2201
  store i64 %2205, i64* %RAX.i54, align 8
  %2206 = icmp ult i64 %2205, %2201
  %2207 = icmp ult i64 %2205, %2202
  %2208 = or i1 %2206, %2207
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2209, i8* %2210, align 1
  %2211 = trunc i64 %2205 to i32
  %2212 = and i32 %2211, 255
  %2213 = call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2216, i8* %2217, align 1
  %2218 = xor i64 %2202, %2201
  %2219 = xor i64 %2218, %2205
  %2220 = lshr i64 %2219, 4
  %2221 = trunc i64 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2222, i8* %2223, align 1
  %2224 = icmp eq i64 %2205, 0
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2225, i8* %2226, align 1
  %2227 = lshr i64 %2205, 63
  %2228 = trunc i64 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i64 %2201, 63
  %2231 = lshr i64 %2202, 63
  %2232 = xor i64 %2227, %2230
  %2233 = xor i64 %2227, %2231
  %2234 = add i64 %2232, %2233
  %2235 = icmp eq i64 %2234, 2
  %2236 = zext i1 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2236, i8* %2237, align 1
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 33
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 5
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 15
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %RBP.i52
  %2248 = sub i64 %2247, 36
  %2249 = load i64, i64* %PC.i50
  %2250 = add i64 %2249, 4
  store i64 %2250, i64* %PC.i50
  %2251 = inttoptr i64 %2248 to i32*
  %2252 = load i32, i32* %2251
  %2253 = sext i32 %2252 to i64
  store i64 %2253, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_400cba, %struct.Memory** %MEMORY
  %loadMem_400cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 1
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 5
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2263, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2264 to %"class.std::bitset"*
  %2265 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2266 = load i64, i64* %RAX.i48
  %2267 = load i64, i64* %RCX.i49
  %2268 = mul i64 %2267, 8
  %2269 = add i64 %2268, %2266
  %2270 = load i64, i64* %PC.i47
  %2271 = add i64 %2270, 5
  store i64 %2271, i64* %PC.i47
  %2272 = inttoptr i64 %2269 to double*
  %2273 = load double, double* %2272
  %2274 = bitcast i8* %2265 to double*
  store double %2273, double* %2274, align 1
  %2275 = getelementptr inbounds i8, i8* %2265, i64 8
  %2276 = bitcast i8* %2275 to double*
  store double 0.000000e+00, double* %2276, align 1
  store %struct.Memory* %loadMem_400cbe, %struct.Memory** %MEMORY
  %loadMem_400cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 1
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 15
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2285 to i64*
  %2286 = load i64, i64* %RBP.i46
  %2287 = sub i64 %2286, 16
  %2288 = load i64, i64* %PC.i44
  %2289 = add i64 %2288, 4
  store i64 %2289, i64* %PC.i44
  %2290 = inttoptr i64 %2287 to i64*
  %2291 = load i64, i64* %2290
  store i64 %2291, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400cc3, %struct.Memory** %MEMORY
  %loadMem_400cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 5
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 15
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %RBP.i43
  %2302 = sub i64 %2301, 32
  %2303 = load i64, i64* %PC.i41
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %PC.i41
  %2305 = inttoptr i64 %2302 to i32*
  %2306 = load i32, i32* %2305
  %2307 = sext i32 %2306 to i64
  store i64 %2307, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_400cc7, %struct.Memory** %MEMORY
  %loadMem_400ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 5
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RCX.i40
  %2315 = load i64, i64* %PC.i39
  %2316 = add i64 %2315, 7
  store i64 %2316, i64* %PC.i39
  %2317 = sext i64 %2314 to i128
  %2318 = and i128 %2317, -18446744073709551616
  %2319 = zext i64 %2314 to i128
  %2320 = or i128 %2318, %2319
  %2321 = mul i128 8000, %2320
  %2322 = trunc i128 %2321 to i64
  store i64 %2322, i64* %RCX.i40, align 8
  %2323 = sext i64 %2322 to i128
  %2324 = icmp ne i128 %2323, %2321
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2325, i8* %2326, align 1
  %2327 = trunc i128 %2321 to i32
  %2328 = and i32 %2327, 255
  %2329 = call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2332, i8* %2333, align 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2334, align 1
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2335, align 1
  %2336 = lshr i64 %2322, 63
  %2337 = trunc i64 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2337, i8* %2338, align 1
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2325, i8* %2339, align 1
  store %struct.Memory* %loadMem_400ccb, %struct.Memory** %MEMORY
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 5
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RAX.i37
  %2350 = load i64, i64* %RCX.i38
  %2351 = load i64, i64* %PC.i36
  %2352 = add i64 %2351, 3
  store i64 %2352, i64* %PC.i36
  %2353 = add i64 %2350, %2349
  store i64 %2353, i64* %RAX.i37, align 8
  %2354 = icmp ult i64 %2353, %2349
  %2355 = icmp ult i64 %2353, %2350
  %2356 = or i1 %2354, %2355
  %2357 = zext i1 %2356 to i8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2357, i8* %2358, align 1
  %2359 = trunc i64 %2353 to i32
  %2360 = and i32 %2359, 255
  %2361 = call i32 @llvm.ctpop.i32(i32 %2360)
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2364, i8* %2365, align 1
  %2366 = xor i64 %2350, %2349
  %2367 = xor i64 %2366, %2353
  %2368 = lshr i64 %2367, 4
  %2369 = trunc i64 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2370, i8* %2371, align 1
  %2372 = icmp eq i64 %2353, 0
  %2373 = zext i1 %2372 to i8
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2373, i8* %2374, align 1
  %2375 = lshr i64 %2353, 63
  %2376 = trunc i64 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2376, i8* %2377, align 1
  %2378 = lshr i64 %2349, 63
  %2379 = lshr i64 %2350, 63
  %2380 = xor i64 %2375, %2378
  %2381 = xor i64 %2375, %2379
  %2382 = add i64 %2380, %2381
  %2383 = icmp eq i64 %2382, 2
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2384, i8* %2385, align 1
  store %struct.Memory* %loadMem_400cd2, %struct.Memory** %MEMORY
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 5
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RBP.i35
  %2396 = sub i64 %2395, 36
  %2397 = load i64, i64* %PC.i33
  %2398 = add i64 %2397, 4
  store i64 %2398, i64* %PC.i33
  %2399 = inttoptr i64 %2396 to i32*
  %2400 = load i32, i32* %2399
  %2401 = sext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_400cd5, %struct.Memory** %MEMORY
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 1
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 5
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2411, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2412 to %union.vec128_t*
  %2413 = load i64, i64* %RAX.i32
  %2414 = load i64, i64* %RCX.i
  %2415 = mul i64 %2414, 8
  %2416 = add i64 %2415, %2413
  %2417 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2418 = load i64, i64* %PC.i31
  %2419 = add i64 %2418, 5
  store i64 %2419, i64* %PC.i31
  %2420 = bitcast i8* %2417 to double*
  %2421 = load double, double* %2420, align 1
  %2422 = inttoptr i64 %2416 to double*
  store double %2421, double* %2422
  store %struct.Memory* %loadMem_400cd9, %struct.Memory** %MEMORY
  %loadMem_400cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 1
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 15
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RBP.i30
  %2433 = sub i64 %2432, 36
  %2434 = load i64, i64* %PC.i28
  %2435 = add i64 %2434, 3
  store i64 %2435, i64* %PC.i28
  %2436 = inttoptr i64 %2433 to i32*
  %2437 = load i32, i32* %2436
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400cde, %struct.Memory** %MEMORY
  %loadMem_400ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 1
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %RAX.i27
  %2446 = load i64, i64* %PC.i26
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i26
  %2448 = trunc i64 %2445 to i32
  %2449 = add i32 1, %2448
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i27, align 8
  %2451 = icmp ult i32 %2449, %2448
  %2452 = icmp ult i32 %2449, 1
  %2453 = or i1 %2451, %2452
  %2454 = zext i1 %2453 to i8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2454, i8* %2455, align 1
  %2456 = and i32 %2449, 255
  %2457 = call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2460, i8* %2461, align 1
  %2462 = xor i64 1, %2445
  %2463 = trunc i64 %2462 to i32
  %2464 = xor i32 %2463, %2449
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2467, i8* %2468, align 1
  %2469 = icmp eq i32 %2449, 0
  %2470 = zext i1 %2469 to i8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2470, i8* %2471, align 1
  %2472 = lshr i32 %2449, 31
  %2473 = trunc i32 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2473, i8* %2474, align 1
  %2475 = lshr i32 %2448, 31
  %2476 = xor i32 %2472, %2475
  %2477 = add i32 %2476, %2472
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2479, i8* %2480, align 1
  store %struct.Memory* %loadMem_400ce1, %struct.Memory** %MEMORY
  %loadMem_400ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %2486 to i32*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RBP.i25
  %2491 = sub i64 %2490, 36
  %2492 = load i32, i32* %EAX.i24
  %2493 = zext i32 %2492 to i64
  %2494 = load i64, i64* %PC.i23
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i23
  %2496 = inttoptr i64 %2491 to i32*
  store i32 %2492, i32* %2496
  store %struct.Memory* %loadMem_400ce4, %struct.Memory** %MEMORY
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %PC.i22
  %2501 = add i64 %2500, -80
  %2502 = load i64, i64* %PC.i22
  %2503 = add i64 %2502, 5
  store i64 %2503, i64* %PC.i22
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2501, i64* %2504, align 8
  store %struct.Memory* %loadMem_400ce7, %struct.Memory** %MEMORY
  br label %block_.L_400c97

block_.L_400cec:                                  ; preds = %block_.L_400c97
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %PC.i21
  %2509 = add i64 %2508, 5
  %2510 = load i64, i64* %PC.i21
  %2511 = add i64 %2510, 5
  store i64 %2511, i64* %PC.i21
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2509, i64* %2512, align 8
  store %struct.Memory* %loadMem_400cec, %struct.Memory** %MEMORY
  br label %block_.L_400cf1

block_.L_400cf1:                                  ; preds = %block_.L_400cec
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 1
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RBP.i20
  %2523 = sub i64 %2522, 32
  %2524 = load i64, i64* %PC.i18
  %2525 = add i64 %2524, 3
  store i64 %2525, i64* %PC.i18
  %2526 = inttoptr i64 %2523 to i32*
  %2527 = load i32, i32* %2526
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400cf1, %struct.Memory** %MEMORY
  %loadMem_400cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 1
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RAX.i17
  %2536 = load i64, i64* %PC.i16
  %2537 = add i64 %2536, 3
  store i64 %2537, i64* %PC.i16
  %2538 = trunc i64 %2535 to i32
  %2539 = add i32 1, %2538
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RAX.i17, align 8
  %2541 = icmp ult i32 %2539, %2538
  %2542 = icmp ult i32 %2539, 1
  %2543 = or i1 %2541, %2542
  %2544 = zext i1 %2543 to i8
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2544, i8* %2545, align 1
  %2546 = and i32 %2539, 255
  %2547 = call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2550, i8* %2551, align 1
  %2552 = xor i64 1, %2535
  %2553 = trunc i64 %2552 to i32
  %2554 = xor i32 %2553, %2539
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2557, i8* %2558, align 1
  %2559 = icmp eq i32 %2539, 0
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2539, 31
  %2563 = trunc i32 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2538, 31
  %2566 = xor i32 %2562, %2565
  %2567 = add i32 %2566, %2562
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2569, i8* %2570, align 1
  store %struct.Memory* %loadMem_400cf4, %struct.Memory** %MEMORY
  %loadMem_400cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 1
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %2576 to i32*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 15
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RBP.i15
  %2581 = sub i64 %2580, 32
  %2582 = load i32, i32* %EAX.i14
  %2583 = zext i32 %2582 to i64
  %2584 = load i64, i64* %PC.i13
  %2585 = add i64 %2584, 3
  store i64 %2585, i64* %PC.i13
  %2586 = inttoptr i64 %2581 to i32*
  store i32 %2582, i32* %2586
  store %struct.Memory* %loadMem_400cf7, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2589 to i64*
  %2590 = load i64, i64* %PC.i12
  %2591 = add i64 %2590, -123
  %2592 = load i64, i64* %PC.i12
  %2593 = add i64 %2592, 5
  store i64 %2593, i64* %PC.i12
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2591, i64* %2594, align 8
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  br label %block_.L_400c7f

block_.L_400cff:                                  ; preds = %block_.L_400c7f
  %loadMem_400cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %PC.i11
  %2599 = add i64 %2598, 5
  %2600 = load i64, i64* %PC.i11
  %2601 = add i64 %2600, 5
  store i64 %2601, i64* %PC.i11
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2599, i64* %2602, align 8
  store %struct.Memory* %loadMem_400cff, %struct.Memory** %MEMORY
  br label %block_.L_400d04

block_.L_400d04:                                  ; preds = %block_.L_400cff
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 1
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 15
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %RBP.i10
  %2613 = sub i64 %2612, 28
  %2614 = load i64, i64* %PC.i8
  %2615 = add i64 %2614, 3
  store i64 %2615, i64* %PC.i8
  %2616 = inttoptr i64 %2613 to i32*
  %2617 = load i32, i32* %2616
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400d04, %struct.Memory** %MEMORY
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RAX.i
  %2626 = load i64, i64* %PC.i7
  %2627 = add i64 %2626, 3
  store i64 %2627, i64* %PC.i7
  %2628 = trunc i64 %2625 to i32
  %2629 = add i32 1, %2628
  %2630 = zext i32 %2629 to i64
  store i64 %2630, i64* %RAX.i, align 8
  %2631 = icmp ult i32 %2629, %2628
  %2632 = icmp ult i32 %2629, 1
  %2633 = or i1 %2631, %2632
  %2634 = zext i1 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2634, i8* %2635, align 1
  %2636 = and i32 %2629, 255
  %2637 = call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2640, i8* %2641, align 1
  %2642 = xor i64 1, %2625
  %2643 = trunc i64 %2642 to i32
  %2644 = xor i32 %2643, %2629
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2647, i8* %2648, align 1
  %2649 = icmp eq i32 %2629, 0
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2650, i8* %2651, align 1
  %2652 = lshr i32 %2629, 31
  %2653 = trunc i32 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2653, i8* %2654, align 1
  %2655 = lshr i32 %2628, 31
  %2656 = xor i32 %2652, %2655
  %2657 = add i32 %2656, %2652
  %2658 = icmp eq i32 %2657, 2
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2659, i8* %2660, align 1
  store %struct.Memory* %loadMem_400d07, %struct.Memory** %MEMORY
  %loadMem_400d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 1
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2666 to i32*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 15
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RBP.i6
  %2671 = sub i64 %2670, 28
  %2672 = load i32, i32* %EAX.i
  %2673 = zext i32 %2672 to i64
  %2674 = load i64, i64* %PC.i5
  %2675 = add i64 %2674, 3
  store i64 %2675, i64* %PC.i5
  %2676 = inttoptr i64 %2671 to i32*
  store i32 %2672, i32* %2676
  store %struct.Memory* %loadMem_400d0a, %struct.Memory** %MEMORY
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %PC.i4
  %2681 = add i64 %2680, -436
  %2682 = load i64, i64* %PC.i4
  %2683 = add i64 %2682, 5
  store i64 %2683, i64* %PC.i4
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2681, i64* %2684, align 8
  store %struct.Memory* %loadMem_400d0d, %struct.Memory** %MEMORY
  br label %block_.L_400b59

block_.L_400d12:                                  ; preds = %block_.L_400b59
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %PC.i2
  %2692 = add i64 %2691, 1
  store i64 %2692, i64* %PC.i2
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2694 = load i64, i64* %2693, align 8
  %2695 = add i64 %2694, 8
  %2696 = inttoptr i64 %2694 to i64*
  %2697 = load i64, i64* %2696
  store i64 %2697, i64* %RBP.i3, align 8
  store i64 %2695, i64* %2693, align 8
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i1
  %2702 = add i64 %2701, 1
  store i64 %2702, i64* %PC.i1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2705 = load i64, i64* %2704, align 8
  %2706 = inttoptr i64 %2705 to i64*
  %2707 = load i64, i64* %2706
  store i64 %2707, i64* %2703, align 8
  %2708 = add i64 %2705, 8
  store i64 %2708, i64* %2704, align 8
  store %struct.Memory* %loadMem_400d13, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400d13
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

define %struct.Memory* @routine_jge_.L_400d12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400c65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x7ab__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1971
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400b84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400b6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400cff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400cec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400c97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400cf1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400b59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
